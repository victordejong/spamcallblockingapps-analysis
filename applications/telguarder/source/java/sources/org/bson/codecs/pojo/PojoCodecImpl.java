package org.bson.codecs.pojo;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import org.bson.BsonInvalidOperationException;
import org.bson.BsonReader;
import org.bson.BsonReaderMark;
import org.bson.BsonType;
import org.bson.BsonWriter;
import org.bson.codecs.Codec;
import org.bson.codecs.DecoderContext;
import org.bson.codecs.EncoderContext;
import org.bson.codecs.configuration.CodecConfigurationException;
import org.bson.codecs.configuration.CodecRegistries;
import org.bson.codecs.configuration.CodecRegistry;
import org.bson.codecs.pojo.TypeData;
import org.bson.diagnostics.Logger;
import org.bson.diagnostics.Loggers;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/pojo/PojoCodecImpl.class */
public final class PojoCodecImpl<T> extends PojoCodec<T> {
    private static final Logger LOGGER = Loggers.getLogger("PojoCodec");
    private final ClassModel<T> classModel;
    private final ConcurrentMap<ClassModel<?>, Codec<?>> codecCache;
    private final DiscriminatorLookup discriminatorLookup;
    private final PropertyCodecRegistry propertyCodecRegistry;
    private final CodecRegistry registry;
    private final boolean specialized;

    public PojoCodecImpl(ClassModel<T> classModel, CodecRegistry codecRegistry, List<PropertyCodecProvider> list, DiscriminatorLookup discriminatorLookup) {
        this.classModel = classModel;
        CodecRegistry fromRegistries = CodecRegistries.fromRegistries(CodecRegistries.fromCodecs(this), codecRegistry);
        this.registry = fromRegistries;
        this.discriminatorLookup = discriminatorLookup;
        this.codecCache = new ConcurrentHashMap();
        this.propertyCodecRegistry = new PropertyCodecRegistryImpl(this, fromRegistries, list);
        this.specialized = shouldSpecialize(classModel);
        specialize();
    }

    public PojoCodecImpl(ClassModel<T> classModel, CodecRegistry codecRegistry, PropertyCodecRegistry propertyCodecRegistry, DiscriminatorLookup discriminatorLookup, ConcurrentMap<ClassModel<?>, Codec<?>> concurrentMap, boolean z) {
        this.classModel = classModel;
        this.registry = CodecRegistries.fromRegistries(CodecRegistries.fromCodecs(this), codecRegistry);
        this.discriminatorLookup = discriminatorLookup;
        this.codecCache = concurrentMap;
        this.propertyCodecRegistry = propertyCodecRegistry;
        this.specialized = z;
        specialize();
    }

    private <S> void addToCache(PropertyModel<S> propertyModel) {
        propertyModel.cachedCodec(propertyModel.getCodec() != null ? propertyModel.getCodec() : specializePojoCodec(propertyModel));
    }

    private <S, V> boolean areEquivalentTypes(Class<S> cls, Class<V> cls2) {
        if (cls.equals(cls2)) {
            return true;
        }
        if (Collection.class.isAssignableFrom(cls) && Collection.class.isAssignableFrom(cls2)) {
            return true;
        }
        return Map.class.isAssignableFrom(cls) && Map.class.isAssignableFrom(cls2);
    }

    private void decodeProperties(BsonReader bsonReader, DecoderContext decoderContext, InstanceCreator<T> instanceCreator) {
        bsonReader.readStartDocument();
        while (bsonReader.readBsonType() != BsonType.END_OF_DOCUMENT) {
            String readName = bsonReader.readName();
            if (!this.classModel.useDiscriminator() || !this.classModel.getDiscriminatorKey().equals(readName)) {
                decodePropertyModel(bsonReader, decoderContext, instanceCreator, readName, getPropertyModelByWriteName(this.classModel, readName));
            } else {
                bsonReader.readString();
            }
        }
        bsonReader.readEndDocument();
    }

    private <S> void decodePropertyModel(BsonReader bsonReader, DecoderContext decoderContext, InstanceCreator<T> instanceCreator, String str, PropertyModel<S> propertyModel) {
        Object obj;
        if (propertyModel == null) {
            Logger logger = LOGGER;
            if (logger.isTraceEnabled()) {
                logger.trace(String.format("Found property not present in the ClassModel: %s", str));
            }
            bsonReader.skipValue();
            return;
        }
        try {
            if (bsonReader.getCurrentBsonType() == BsonType.NULL) {
                bsonReader.readNull();
                obj = null;
            } else {
                obj = decoderContext.decodeWithChildContext(propertyModel.getCachedCodec(), bsonReader);
            }
            if (!propertyModel.isWritable()) {
                return;
            }
            instanceCreator.set(obj, propertyModel);
        } catch (BsonInvalidOperationException e) {
            throw new CodecConfigurationException(String.format("Failed to decode '%s'. Decoding '%s' errored with: %s", this.classModel.getName(), str, e.getMessage()), e);
        } catch (CodecConfigurationException e2) {
            throw new CodecConfigurationException(String.format("Failed to decode '%s'. Decoding '%s' errored with: %s", this.classModel.getName(), str, e2.getMessage()), e2);
        }
    }

    private <S> void encodeIdProperty(BsonWriter bsonWriter, T t, EncoderContext encoderContext, IdPropertyModelHolder<S> idPropertyModelHolder) {
        if (idPropertyModelHolder.getPropertyModel() != null) {
            if (idPropertyModelHolder.getIdGenerator() == null) {
                encodeProperty(bsonWriter, t, encoderContext, idPropertyModelHolder.getPropertyModel());
                return;
            }
            S s = idPropertyModelHolder.getPropertyModel().getPropertyAccessor().get(t);
            S s2 = s;
            if (s == null) {
                s2 = s;
                if (encoderContext.isEncodingCollectibleDocument()) {
                    s2 = idPropertyModelHolder.getIdGenerator().generate();
                    try {
                        idPropertyModelHolder.getPropertyModel().getPropertyAccessor().set(t, s2);
                    } catch (Exception e) {
                    }
                }
            }
            encodeValue(bsonWriter, encoderContext, idPropertyModelHolder.getPropertyModel(), s2);
        }
    }

    private <S> void encodeProperty(BsonWriter bsonWriter, T t, EncoderContext encoderContext, PropertyModel<S> propertyModel) {
        if (propertyModel == null || !propertyModel.isReadable()) {
            return;
        }
        encodeValue(bsonWriter, encoderContext, propertyModel, propertyModel.getPropertyAccessor().get(t));
    }

    private <S> void encodeValue(BsonWriter bsonWriter, EncoderContext encoderContext, PropertyModel<S> propertyModel, S s) {
        if (propertyModel.shouldSerialize(s)) {
            bsonWriter.writeName(propertyModel.getReadName());
            if (s == null) {
                bsonWriter.writeNull();
                return;
            }
            try {
                encoderContext.encodeWithChildContext(propertyModel.getCachedCodec(), bsonWriter, s);
            } catch (CodecConfigurationException e) {
                throw new CodecConfigurationException(String.format("Failed to encode '%s'. Encoding '%s' errored with: %s", this.classModel.getName(), propertyModel.getReadName(), e.getMessage()), e);
            }
        }
    }

    private Codec<T> getCodecFromDocument(BsonReader bsonReader, boolean z, String str, CodecRegistry codecRegistry, DiscriminatorLookup discriminatorLookup, Codec<T> codec) {
        Codec<T> codec2 = codec;
        if (z) {
            BsonReaderMark mark = bsonReader.getMark();
            bsonReader.readStartDocument();
            boolean z2 = false;
            while (!z2 && bsonReader.readBsonType() != BsonType.END_OF_DOCUMENT) {
                if (str.equals(bsonReader.readName())) {
                    try {
                        codec = codecRegistry.get(discriminatorLookup.lookup(bsonReader.readString()));
                        z2 = true;
                    } catch (Exception e) {
                        throw new CodecConfigurationException(String.format("Failed to decode '%s'. Decoding errored with: %s", this.classModel.getName(), e.getMessage()), e);
                    }
                } else {
                    bsonReader.skipValue();
                }
            }
            mark.reset();
            codec2 = codec;
        }
        return codec2;
    }

    private <S> Codec<S> getCodecFromPropertyRegistry(PropertyModel<S> propertyModel) {
        try {
            return this.propertyCodecRegistry.get(propertyModel.getTypeData());
        } catch (CodecConfigurationException e) {
            return new LazyMissingCodec(propertyModel.getTypeData().getType(), e);
        }
    }

    private PropertyModel<?> getPropertyModelByWriteName(ClassModel<T> classModel, String str) {
        for (PropertyModel<?> propertyModel : classModel.getPropertyModels()) {
            if (propertyModel.isWritable() && propertyModel.getWriteName().equals(str)) {
                return propertyModel;
            }
        }
        return null;
    }

    private <S, V> ClassModel<S> getSpecializedClassModel(ClassModel<S> classModel, PropertyModel<V> propertyModel) {
        int i = 0;
        boolean z = (propertyModel.useDiscriminator() == null ? classModel.useDiscriminator() : propertyModel.useDiscriminator().booleanValue()) != classModel.useDiscriminator() && (classModel.getDiscriminatorKey() != null && classModel.getDiscriminator() != null);
        if (!propertyModel.getTypeData().getTypeParameters().isEmpty() || z) {
            ArrayList arrayList = new ArrayList(classModel.getPropertyModels());
            PropertyModel<?> idPropertyModel = classModel.getIdPropertyModel();
            List<TypeData<?>> typeParameters = propertyModel.getTypeData().getTypeParameters();
            while (i < arrayList.size()) {
                PropertyModel<V> propertyModel2 = (PropertyModel) arrayList.get(i);
                String name = propertyModel2.getName();
                TypeParameterMap typeParameterMap = classModel.getPropertyNameToTypeParameterMap().get(name);
                PropertyModel<V> propertyModel3 = idPropertyModel;
                if (typeParameterMap.hasTypeParameters()) {
                    PropertyModel<V> specializedPropertyModel = getSpecializedPropertyModel(propertyModel2, typeParameterMap, typeParameters);
                    arrayList.set(i, specializedPropertyModel);
                    propertyModel3 = idPropertyModel;
                    if (idPropertyModel != null) {
                        propertyModel3 = idPropertyModel;
                        if (idPropertyModel.getName().equals(name)) {
                            propertyModel3 = specializedPropertyModel;
                        }
                    }
                }
                i++;
                idPropertyModel = propertyModel3;
            }
            return new ClassModel<>(classModel.getType(), classModel.getPropertyNameToTypeParameterMap(), classModel.getInstanceCreatorFactory(), Boolean.valueOf(z ? propertyModel.useDiscriminator().booleanValue() : classModel.useDiscriminator()), classModel.getDiscriminatorKey(), classModel.getDiscriminator(), IdPropertyModelHolder.create(classModel, idPropertyModel), arrayList);
        }
        return classModel;
    }

    private <V> PropertyModel<V> getSpecializedPropertyModel(PropertyModel<V> propertyModel, TypeParameterMap typeParameterMap, List<TypeData<?>> list) {
        TypeData<T> typeData;
        Map<Integer, Integer> propertyToClassParamIndexMap = typeParameterMap.getPropertyToClassParamIndexMap();
        Integer num = propertyToClassParamIndexMap.get(-1);
        if (num != null) {
            typeData = list.get(num.intValue());
        } else {
            TypeData.Builder builder = TypeData.builder(propertyModel.getTypeData().getType());
            ArrayList arrayList = new ArrayList(propertyModel.getTypeData().getTypeParameters());
            for (int i = 0; i < arrayList.size(); i++) {
                for (Map.Entry<Integer, Integer> entry : propertyToClassParamIndexMap.entrySet()) {
                    if (entry.getKey().equals(Integer.valueOf(i))) {
                        arrayList.set(i, list.get(entry.getValue().intValue()));
                    }
                }
            }
            builder.addTypeParameters(arrayList);
            typeData = builder.build();
        }
        return propertyModel.getTypeData().equals(typeData) ? propertyModel : new PropertyModel<>(propertyModel.getName(), propertyModel.getReadName(), propertyModel.getWriteName(), typeData, null, propertyModel.getPropertySerialization(), propertyModel.useDiscriminator(), propertyModel.getPropertyAccessor(), propertyModel.getError());
    }

    private static <T> boolean shouldSpecialize(ClassModel<T> classModel) {
        if (!classModel.hasTypeParameters()) {
            return true;
        }
        for (Map.Entry<String, TypeParameterMap> entry : classModel.getPropertyNameToTypeParameterMap().entrySet()) {
            TypeParameterMap value = entry.getValue();
            PropertyModel<?> propertyModel = classModel.getPropertyModel(entry.getKey());
            if (value.hasTypeParameters() && (propertyModel == null || propertyModel.getCodec() == null)) {
                return false;
            }
        }
        return true;
    }

    private void specialize() {
        if (this.specialized) {
            this.codecCache.put(this.classModel, this);
            Iterator<PropertyModel<?>> it = this.classModel.getPropertyModels().iterator();
            while (it.hasNext()) {
                addToCache(it.next());
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <S> Codec<S> specializePojoCodec(PropertyModel<S> propertyModel) {
        Codec<S> codecFromPropertyRegistry = getCodecFromPropertyRegistry(propertyModel);
        Codec<?> codec = codecFromPropertyRegistry;
        if (codecFromPropertyRegistry instanceof PojoCodec) {
            ClassModel<S> specializedClassModel = getSpecializedClassModel(((PojoCodec) codecFromPropertyRegistry).getClassModel(), propertyModel);
            codec = this.codecCache.containsKey(specializedClassModel) ? this.codecCache.get(specializedClassModel) : new LazyPojoCodec(specializedClassModel, this.registry, this.propertyCodecRegistry, this.discriminatorLookup, this.codecCache);
        }
        return codec;
    }

    @Override // org.bson.codecs.Decoder
    public T decode(BsonReader bsonReader, DecoderContext decoderContext) {
        if (decoderContext.hasCheckedDiscriminator()) {
            if (!this.specialized) {
                throw new CodecConfigurationException(String.format("%s contains generic types that have not been specialised.%nTop level classes with generic types are not supported by the PojoCodec.", this.classModel.getName()));
            }
            InstanceCreator<T> instanceCreator = this.classModel.getInstanceCreator();
            decodeProperties(bsonReader, decoderContext, instanceCreator);
            return instanceCreator.getInstance();
        }
        return getCodecFromDocument(bsonReader, this.classModel.useDiscriminator(), this.classModel.getDiscriminatorKey(), this.registry, this.discriminatorLookup, this).decode(bsonReader, DecoderContext.builder().checkedDiscriminator(true).build());
    }

    @Override // org.bson.codecs.Encoder
    public void encode(BsonWriter bsonWriter, T t, EncoderContext encoderContext) {
        if (this.specialized) {
            if (!areEquivalentTypes(t.getClass(), (Class<T>) this.classModel.getType())) {
                this.registry.get(t.getClass()).encode(bsonWriter, t, encoderContext);
                return;
            }
            bsonWriter.writeStartDocument();
            encodeIdProperty(bsonWriter, t, encoderContext, this.classModel.getIdPropertyModelHolder());
            if (this.classModel.useDiscriminator()) {
                bsonWriter.writeString(this.classModel.getDiscriminatorKey(), this.classModel.getDiscriminator());
            }
            for (PropertyModel propertyModel : this.classModel.getPropertyModels()) {
                if (!propertyModel.equals(this.classModel.getIdPropertyModel())) {
                    encodeProperty(bsonWriter, t, encoderContext, propertyModel);
                }
            }
            bsonWriter.writeEndDocument();
            return;
        }
        throw new CodecConfigurationException(String.format("%s contains generic types that have not been specialised.%nTop level classes with generic types are not supported by the PojoCodec.", this.classModel.getName()));
    }

    @Override // org.bson.codecs.pojo.PojoCodec
    public ClassModel<T> getClassModel() {
        return this.classModel;
    }

    @Override // org.bson.codecs.Encoder
    public Class<T> getEncoderClass() {
        return this.classModel.getType();
    }

    public String toString() {
        return String.format("PojoCodec<%s>", this.classModel);
    }
}
