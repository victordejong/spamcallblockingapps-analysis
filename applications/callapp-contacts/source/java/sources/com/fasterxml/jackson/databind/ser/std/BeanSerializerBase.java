package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.type.WritableTypeId;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitable;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonObjectFormatVisitor;
import com.fasterxml.jackson.databind.jsonschema.JsonSerializableSchema;
import com.fasterxml.jackson.databind.jsonschema.SchemaAware;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.fasterxml.jackson.databind.ser.AnyGetterWriter;
import com.fasterxml.jackson.databind.ser.BeanPropertyWriter;
import com.fasterxml.jackson.databind.ser.BeanSerializerBuilder;
import com.fasterxml.jackson.databind.ser.ContainerSerializer;
import com.fasterxml.jackson.databind.ser.ContextualSerializer;
import com.fasterxml.jackson.databind.ser.PropertyFilter;
import com.fasterxml.jackson.databind.ser.PropertyWriter;
import com.fasterxml.jackson.databind.ser.ResolvableSerializer;
import com.fasterxml.jackson.databind.ser.impl.ObjectIdWriter;
import com.fasterxml.jackson.databind.ser.impl.WritableObjectId;
import com.fasterxml.jackson.databind.util.ArrayBuilders;
import com.fasterxml.jackson.databind.util.Converter;
import com.fasterxml.jackson.databind.util.IgnorePropertiesUtil;
import com.fasterxml.jackson.databind.util.NameTransformer;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/ser/std/BeanSerializerBase.class */
public abstract class BeanSerializerBase extends StdSerializer<Object> implements JsonFormatVisitable, SchemaAware, ContextualSerializer, ResolvableSerializer {
    protected static final PropertyName NAME_FOR_OBJECT_REF = new PropertyName("#object-ref");
    public static final BeanPropertyWriter[] NO_PROPS = new BeanPropertyWriter[0];
    protected final AnyGetterWriter _anyGetterWriter;
    protected final JavaType _beanType;
    protected final BeanPropertyWriter[] _filteredProps;
    protected final ObjectIdWriter _objectIdWriter;
    protected final Object _propertyFilterId;
    protected final BeanPropertyWriter[] _props;
    protected final JsonFormat.Shape _serializationShape;
    protected final AnnotatedMember _typeId;

    /* renamed from: com.fasterxml.jackson.databind.ser.std.BeanSerializerBase$1 */
    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/ser/std/BeanSerializerBase$1.class */
    static /* synthetic */ class C105591 {
        static final /* synthetic */ int[] $SwitchMap$com$fasterxml$jackson$annotation$JsonFormat$Shape;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[JsonFormat.Shape.values().length];
            $SwitchMap$com$fasterxml$jackson$annotation$JsonFormat$Shape = iArr;
            try {
                iArr[JsonFormat.Shape.STRING.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonFormat$Shape[JsonFormat.Shape.NUMBER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonFormat$Shape[JsonFormat.Shape.NUMBER_INT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    public BeanSerializerBase(JavaType javaType, BeanSerializerBuilder beanSerializerBuilder, BeanPropertyWriter[] beanPropertyWriterArr, BeanPropertyWriter[] beanPropertyWriterArr2) {
        super(javaType);
        this._beanType = javaType;
        this._props = beanPropertyWriterArr;
        this._filteredProps = beanPropertyWriterArr2;
        if (beanSerializerBuilder == null) {
            this._typeId = null;
            this._anyGetterWriter = null;
            this._propertyFilterId = null;
            this._objectIdWriter = null;
            this._serializationShape = null;
            return;
        }
        this._typeId = beanSerializerBuilder.getTypeId();
        this._anyGetterWriter = beanSerializerBuilder.getAnyGetter();
        this._propertyFilterId = beanSerializerBuilder.getFilterId();
        this._objectIdWriter = beanSerializerBuilder.getObjectIdWriter();
        this._serializationShape = beanSerializerBuilder.getBeanDescription().findExpectedFormat(null).getShape();
    }

    public BeanSerializerBase(BeanSerializerBase beanSerializerBase) {
        this(beanSerializerBase, beanSerializerBase._props, beanSerializerBase._filteredProps);
    }

    public BeanSerializerBase(BeanSerializerBase beanSerializerBase, ObjectIdWriter objectIdWriter) {
        this(beanSerializerBase, objectIdWriter, beanSerializerBase._propertyFilterId);
    }

    public BeanSerializerBase(BeanSerializerBase beanSerializerBase, ObjectIdWriter objectIdWriter, Object obj) {
        super(beanSerializerBase._handledType);
        this._beanType = beanSerializerBase._beanType;
        this._props = beanSerializerBase._props;
        this._filteredProps = beanSerializerBase._filteredProps;
        this._typeId = beanSerializerBase._typeId;
        this._anyGetterWriter = beanSerializerBase._anyGetterWriter;
        this._objectIdWriter = objectIdWriter;
        this._propertyFilterId = obj;
        this._serializationShape = beanSerializerBase._serializationShape;
    }

    public BeanSerializerBase(BeanSerializerBase beanSerializerBase, NameTransformer nameTransformer) {
        this(beanSerializerBase, rename(beanSerializerBase._props, nameTransformer), rename(beanSerializerBase._filteredProps, nameTransformer));
    }

    @Deprecated
    protected BeanSerializerBase(BeanSerializerBase beanSerializerBase, Set<String> set) {
        this(beanSerializerBase, set, (Set<String>) null);
    }

    public BeanSerializerBase(BeanSerializerBase beanSerializerBase, Set<String> set, Set<String> set2) {
        super(beanSerializerBase._handledType);
        this._beanType = beanSerializerBase._beanType;
        BeanPropertyWriter[] beanPropertyWriterArr = beanSerializerBase._props;
        BeanPropertyWriter[] beanPropertyWriterArr2 = beanSerializerBase._filteredProps;
        int length = beanPropertyWriterArr.length;
        ArrayList arrayList = new ArrayList(length);
        ArrayList arrayList2 = beanPropertyWriterArr2 == null ? null : new ArrayList(length);
        for (int i = 0; i < length; i++) {
            BeanPropertyWriter beanPropertyWriter = beanPropertyWriterArr[i];
            if (!IgnorePropertiesUtil.shouldIgnore(beanPropertyWriter.getName(), set, set2)) {
                arrayList.add(beanPropertyWriter);
                if (beanPropertyWriterArr2 != null) {
                    arrayList2.add(beanPropertyWriterArr2[i]);
                }
            }
        }
        this._props = (BeanPropertyWriter[]) arrayList.toArray(new BeanPropertyWriter[arrayList.size()]);
        this._filteredProps = arrayList2 == null ? null : (BeanPropertyWriter[]) arrayList2.toArray(new BeanPropertyWriter[arrayList2.size()]);
        this._typeId = beanSerializerBase._typeId;
        this._anyGetterWriter = beanSerializerBase._anyGetterWriter;
        this._objectIdWriter = beanSerializerBase._objectIdWriter;
        this._propertyFilterId = beanSerializerBase._propertyFilterId;
        this._serializationShape = beanSerializerBase._serializationShape;
    }

    public BeanSerializerBase(BeanSerializerBase beanSerializerBase, BeanPropertyWriter[] beanPropertyWriterArr, BeanPropertyWriter[] beanPropertyWriterArr2) {
        super(beanSerializerBase._handledType);
        this._beanType = beanSerializerBase._beanType;
        this._props = beanPropertyWriterArr;
        this._filteredProps = beanPropertyWriterArr2;
        this._typeId = beanSerializerBase._typeId;
        this._anyGetterWriter = beanSerializerBase._anyGetterWriter;
        this._objectIdWriter = beanSerializerBase._objectIdWriter;
        this._propertyFilterId = beanSerializerBase._propertyFilterId;
        this._serializationShape = beanSerializerBase._serializationShape;
    }

    @Deprecated
    protected BeanSerializerBase(BeanSerializerBase beanSerializerBase, String[] strArr) {
        this(beanSerializerBase, ArrayBuilders.arrayToSet(strArr), (Set<String>) null);
    }

    private static final BeanPropertyWriter[] rename(BeanPropertyWriter[] beanPropertyWriterArr, NameTransformer nameTransformer) {
        if (beanPropertyWriterArr == null || beanPropertyWriterArr.length == 0 || nameTransformer == null || nameTransformer == NameTransformer.NOP) {
            return beanPropertyWriterArr;
        }
        int length = beanPropertyWriterArr.length;
        BeanPropertyWriter[] beanPropertyWriterArr2 = new BeanPropertyWriter[length];
        for (int i = 0; i < length; i++) {
            BeanPropertyWriter beanPropertyWriter = beanPropertyWriterArr[i];
            if (beanPropertyWriter != null) {
                beanPropertyWriterArr2[i] = beanPropertyWriter.rename(nameTransformer);
            }
        }
        return beanPropertyWriterArr2;
    }

    @Deprecated
    protected final String _customTypeId(Object obj) {
        Object value = this._typeId.getValue(obj);
        return value == null ? "" : value instanceof String ? (String) value : value.toString();
    }

    protected void _serializeObjectId(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, TypeSerializer typeSerializer, WritableObjectId writableObjectId) throws IOException {
        ObjectIdWriter objectIdWriter = this._objectIdWriter;
        WritableTypeId _typeIdDef = _typeIdDef(typeSerializer, obj, JsonToken.START_OBJECT);
        typeSerializer.writeTypePrefix(jsonGenerator, _typeIdDef);
        writableObjectId.writeAsField(jsonGenerator, serializerProvider, objectIdWriter);
        if (this._propertyFilterId != null) {
            serializeFieldsFiltered(obj, jsonGenerator, serializerProvider);
        } else {
            serializeFields(obj, jsonGenerator, serializerProvider);
        }
        typeSerializer.writeTypeSuffix(jsonGenerator, _typeIdDef);
    }

    public final void _serializeWithObjectId(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, TypeSerializer typeSerializer) throws IOException {
        ObjectIdWriter objectIdWriter = this._objectIdWriter;
        WritableObjectId findObjectId = serializerProvider.findObjectId(obj, objectIdWriter.generator);
        if (findObjectId.writeAsId(jsonGenerator, serializerProvider, objectIdWriter)) {
            return;
        }
        Object generateId = findObjectId.generateId(obj);
        if (objectIdWriter.alwaysAsId) {
            objectIdWriter.serializer.serialize(generateId, jsonGenerator, serializerProvider);
        } else {
            _serializeObjectId(obj, jsonGenerator, serializerProvider, typeSerializer, findObjectId);
        }
    }

    public final void _serializeWithObjectId(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, boolean z) throws IOException {
        ObjectIdWriter objectIdWriter = this._objectIdWriter;
        WritableObjectId findObjectId = serializerProvider.findObjectId(obj, objectIdWriter.generator);
        if (findObjectId.writeAsId(jsonGenerator, serializerProvider, objectIdWriter)) {
            return;
        }
        Object generateId = findObjectId.generateId(obj);
        if (objectIdWriter.alwaysAsId) {
            objectIdWriter.serializer.serialize(generateId, jsonGenerator, serializerProvider);
            return;
        }
        if (z) {
            jsonGenerator.writeStartObject(obj);
        }
        findObjectId.writeAsField(jsonGenerator, serializerProvider, objectIdWriter);
        if (this._propertyFilterId != null) {
            serializeFieldsFiltered(obj, jsonGenerator, serializerProvider);
        } else {
            serializeFields(obj, jsonGenerator, serializerProvider);
        }
        if (!z) {
            return;
        }
        jsonGenerator.writeEndObject();
    }

    public final WritableTypeId _typeIdDef(TypeSerializer typeSerializer, Object obj, JsonToken jsonToken) {
        AnnotatedMember annotatedMember = this._typeId;
        if (annotatedMember == null) {
            return typeSerializer.typeId(obj, jsonToken);
        }
        Object value = annotatedMember.getValue(obj);
        Object obj2 = value;
        if (value == null) {
            obj2 = "";
        }
        return typeSerializer.typeId(obj, jsonToken, obj2);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.JsonSerializer, com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitable
    public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonFormatVisitorWrapper, JavaType javaType) throws JsonMappingException {
        JsonObjectFormatVisitor expectObjectFormat;
        BeanPropertyWriter[] beanPropertyWriterArr;
        if (jsonFormatVisitorWrapper == null || (expectObjectFormat = jsonFormatVisitorWrapper.expectObjectFormat(javaType)) == null) {
            return;
        }
        SerializerProvider provider = jsonFormatVisitorWrapper.getProvider();
        if (this._propertyFilterId != null) {
            PropertyFilter findPropertyFilter = findPropertyFilter(jsonFormatVisitorWrapper.getProvider(), this._propertyFilterId, null);
            int length = this._props.length;
            for (int i = 0; i < length; i++) {
                findPropertyFilter.depositSchemaProperty(this._props[i], expectObjectFormat, provider);
            }
            return;
        }
        Class<?> cls = null;
        if (this._filteredProps != null) {
            cls = provider == null ? null : provider.getActiveView();
        }
        for (BeanPropertyWriter beanPropertyWriter : cls != null ? this._filteredProps : this._props) {
            if (beanPropertyWriter != null) {
                beanPropertyWriter.depositSchemaProperty(expectObjectFormat, provider);
            }
        }
    }

    protected abstract BeanSerializerBase asArraySerializer();

    /* JADX WARN: Code restructure failed: missing block: B:32:0x00d2, code lost:
        if (java.util.Map.class.isAssignableFrom(r10._handledType) == false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0377, code lost:
        if (r16 != null) goto L86;
     */
    /* JADX WARN: Removed duplicated region for block: B:61:0x025a  */
    @Override // com.fasterxml.jackson.databind.ser.ContextualSerializer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.fasterxml.jackson.databind.JsonSerializer<?> createContextual(com.fasterxml.jackson.databind.SerializerProvider r11, com.fasterxml.jackson.databind.BeanProperty r12) throws com.fasterxml.jackson.databind.JsonMappingException {
        /*
            Method dump skipped, instructions count: 940
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.ser.std.BeanSerializerBase.createContextual(com.fasterxml.jackson.databind.SerializerProvider, com.fasterxml.jackson.databind.BeanProperty):com.fasterxml.jackson.databind.JsonSerializer");
    }

    protected JsonSerializer<Object> findConvertingSerializer(SerializerProvider serializerProvider, BeanPropertyWriter beanPropertyWriter) throws JsonMappingException {
        AnnotatedMember member;
        Object findSerializationConverter;
        AnnotationIntrospector annotationIntrospector = serializerProvider.getAnnotationIntrospector();
        if (annotationIntrospector == null || (member = beanPropertyWriter.getMember()) == null || (findSerializationConverter = annotationIntrospector.findSerializationConverter(member)) == null) {
            return null;
        }
        Converter<Object, Object> converterInstance = serializerProvider.converterInstance(beanPropertyWriter.getMember(), findSerializationConverter);
        JavaType outputType = converterInstance.getOutputType(serializerProvider.getTypeFactory());
        return new StdDelegatingSerializer(converterInstance, outputType, outputType.isJavaLangObject() ? null : serializerProvider.findValueSerializer(outputType, beanPropertyWriter));
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.jsonschema.SchemaAware
    @Deprecated
    public JsonNode getSchema(SerializerProvider serializerProvider, Type type) throws JsonMappingException {
        String m22655id;
        ObjectNode createSchemaNode = createSchemaNode("object", true);
        JsonSerializableSchema jsonSerializableSchema = (JsonSerializableSchema) this._handledType.getAnnotation(JsonSerializableSchema.class);
        if (jsonSerializableSchema != null && (m22655id = jsonSerializableSchema.m22655id()) != null && !m22655id.isEmpty()) {
            createSchemaNode.put("id", m22655id);
        }
        ObjectNode objectNode = createSchemaNode.objectNode();
        Object obj = this._propertyFilterId;
        PropertyFilter propertyFilter = null;
        if (obj != null) {
            propertyFilter = findPropertyFilter(serializerProvider, obj, null);
        }
        int i = 0;
        while (true) {
            BeanPropertyWriter[] beanPropertyWriterArr = this._props;
            if (i >= beanPropertyWriterArr.length) {
                createSchemaNode.set("properties", objectNode);
                return createSchemaNode;
            }
            BeanPropertyWriter beanPropertyWriter = beanPropertyWriterArr[i];
            if (propertyFilter == null) {
                beanPropertyWriter.depositSchemaProperty(objectNode, serializerProvider);
            } else {
                propertyFilter.depositSchemaProperty(beanPropertyWriter, objectNode, serializerProvider);
            }
            i++;
        }
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public Iterator<PropertyWriter> properties() {
        return Arrays.asList(this._props).iterator();
    }

    @Override // com.fasterxml.jackson.databind.ser.ResolvableSerializer
    public void resolve(SerializerProvider serializerProvider) throws JsonMappingException {
        BeanPropertyWriter beanPropertyWriter;
        TypeSerializer typeSerializer;
        JsonSerializer<Object> findNullValueSerializer;
        BeanPropertyWriter beanPropertyWriter2;
        BeanPropertyWriter[] beanPropertyWriterArr = this._filteredProps;
        int length = beanPropertyWriterArr == null ? 0 : beanPropertyWriterArr.length;
        int length2 = this._props.length;
        for (int i = 0; i < length2; i++) {
            BeanPropertyWriter beanPropertyWriter3 = this._props[i];
            if (!beanPropertyWriter3.willSuppressNulls() && !beanPropertyWriter3.hasNullSerializer() && (findNullValueSerializer = serializerProvider.findNullValueSerializer(beanPropertyWriter3)) != null) {
                beanPropertyWriter3.assignNullSerializer(findNullValueSerializer);
                if (i < length && (beanPropertyWriter2 = this._filteredProps[i]) != null) {
                    beanPropertyWriter2.assignNullSerializer(findNullValueSerializer);
                }
            }
            if (!beanPropertyWriter3.hasSerializer()) {
                JsonSerializer<Object> findConvertingSerializer = findConvertingSerializer(serializerProvider, beanPropertyWriter3);
                ContainerSerializer<?> containerSerializer = findConvertingSerializer;
                if (findConvertingSerializer == null) {
                    JavaType serializationType = beanPropertyWriter3.getSerializationType();
                    JavaType javaType = serializationType;
                    if (serializationType == null) {
                        JavaType type = beanPropertyWriter3.getType();
                        javaType = type;
                        if (!type.isFinal()) {
                            if (type.isContainerType() || type.containedTypeCount() > 0) {
                                beanPropertyWriter3.setNonTrivialBaseType(type);
                            }
                        }
                    }
                    JsonSerializer<Object> findValueSerializer = serializerProvider.findValueSerializer(javaType, beanPropertyWriter3);
                    containerSerializer = (!javaType.isContainerType() || (typeSerializer = (TypeSerializer) javaType.getContentType().getTypeHandler()) == null || !(findValueSerializer instanceof ContainerSerializer)) ? findValueSerializer : ((ContainerSerializer) findValueSerializer).withValueTypeSerializer(typeSerializer);
                }
                if (i >= length || (beanPropertyWriter = this._filteredProps[i]) == null) {
                    beanPropertyWriter3.assignSerializer(containerSerializer);
                } else {
                    beanPropertyWriter.assignSerializer(containerSerializer);
                }
            }
        }
        AnyGetterWriter anyGetterWriter = this._anyGetterWriter;
        if (anyGetterWriter != null) {
            anyGetterWriter.resolve(serializerProvider);
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.JsonSerializer
    public abstract void serialize(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException;

    public void serializeFields(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        String str = "[anySetter]";
        BeanPropertyWriter[] beanPropertyWriterArr = (this._filteredProps == null || serializerProvider.getActiveView() == null) ? this._props : this._filteredProps;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        try {
            int length = beanPropertyWriterArr.length;
            while (i3 < length) {
                BeanPropertyWriter beanPropertyWriter = beanPropertyWriterArr[i3];
                if (beanPropertyWriter != null) {
                    beanPropertyWriter.serializeAsField(obj, jsonGenerator, serializerProvider);
                }
                i3++;
            }
            AnyGetterWriter anyGetterWriter = this._anyGetterWriter;
            if (anyGetterWriter == null) {
                return;
            }
            i = i3;
            i2 = i3;
            anyGetterWriter.getAndSerialize(obj, jsonGenerator, serializerProvider);
        } catch (Exception e) {
            if (i2 != beanPropertyWriterArr.length) {
                str = beanPropertyWriterArr[i2].getName();
            }
            wrapAndThrow(serializerProvider, e, obj, str);
        } catch (StackOverflowError e2) {
            JsonMappingException jsonMappingException = new JsonMappingException(jsonGenerator, "Infinite recursion (StackOverflowError)", e2);
            if (i != beanPropertyWriterArr.length) {
                str = beanPropertyWriterArr[i].getName();
            }
            jsonMappingException.prependPath(new JsonMappingException.Reference(obj, str));
            throw jsonMappingException;
        }
    }

    public void serializeFieldsFiltered(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException, JsonGenerationException {
        String str = "[anySetter]";
        BeanPropertyWriter[] beanPropertyWriterArr = (this._filteredProps == null || serializerProvider.getActiveView() == null) ? this._props : this._filteredProps;
        PropertyFilter findPropertyFilter = findPropertyFilter(serializerProvider, this._propertyFilterId, obj);
        if (findPropertyFilter == null) {
            serializeFields(obj, jsonGenerator, serializerProvider);
            return;
        }
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        try {
            int length = beanPropertyWriterArr.length;
            while (i3 < length) {
                BeanPropertyWriter beanPropertyWriter = beanPropertyWriterArr[i3];
                if (beanPropertyWriter != null) {
                    findPropertyFilter.serializeAsField(obj, jsonGenerator, serializerProvider, beanPropertyWriter);
                }
                i3++;
            }
            AnyGetterWriter anyGetterWriter = this._anyGetterWriter;
            if (anyGetterWriter == null) {
                return;
            }
            i = i3;
            i2 = i3;
            anyGetterWriter.getAndFilter(obj, jsonGenerator, serializerProvider, findPropertyFilter);
        } catch (Exception e) {
            if (i2 != beanPropertyWriterArr.length) {
                str = beanPropertyWriterArr[i2].getName();
            }
            wrapAndThrow(serializerProvider, e, obj, str);
        } catch (StackOverflowError e2) {
            JsonMappingException jsonMappingException = new JsonMappingException(jsonGenerator, "Infinite recursion (StackOverflowError)", e2);
            if (i != beanPropertyWriterArr.length) {
                str = beanPropertyWriterArr[i].getName();
            }
            jsonMappingException.prependPath(new JsonMappingException.Reference(obj, str));
            throw jsonMappingException;
        }
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public void serializeWithType(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, TypeSerializer typeSerializer) throws IOException {
        if (this._objectIdWriter != null) {
            jsonGenerator.setCurrentValue(obj);
            _serializeWithObjectId(obj, jsonGenerator, serializerProvider, typeSerializer);
            return;
        }
        jsonGenerator.setCurrentValue(obj);
        WritableTypeId _typeIdDef = _typeIdDef(typeSerializer, obj, JsonToken.START_OBJECT);
        typeSerializer.writeTypePrefix(jsonGenerator, _typeIdDef);
        if (this._propertyFilterId != null) {
            serializeFieldsFiltered(obj, jsonGenerator, serializerProvider);
        } else {
            serializeFields(obj, jsonGenerator, serializerProvider);
        }
        typeSerializer.writeTypeSuffix(jsonGenerator, _typeIdDef);
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public boolean usesObjectId() {
        return this._objectIdWriter != null;
    }

    protected abstract BeanSerializerBase withByNameInclusion(Set<String> set, Set<String> set2);

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public abstract BeanSerializerBase withFilterId(Object obj);

    @Deprecated
    protected BeanSerializerBase withIgnorals(Set<String> set) {
        return withByNameInclusion(set, null);
    }

    @Deprecated
    protected BeanSerializerBase withIgnorals(String[] strArr) {
        return withIgnorals(ArrayBuilders.arrayToSet(strArr));
    }

    public abstract BeanSerializerBase withObjectIdWriter(ObjectIdWriter objectIdWriter);

    protected abstract BeanSerializerBase withProperties(BeanPropertyWriter[] beanPropertyWriterArr, BeanPropertyWriter[] beanPropertyWriterArr2);
}
