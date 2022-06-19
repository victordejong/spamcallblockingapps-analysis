package org.bson.codecs.pojo;

import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.bson.assertions.Assertions;
import org.bson.codecs.configuration.CodecConfigurationException;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/pojo/ClassModelBuilder.class */
public class ClassModelBuilder<T> {
    static final String ID_PROPERTY_NAME = "_id";
    private String discriminator;
    private boolean discriminatorEnabled;
    private String discriminatorKey;
    private IdGenerator<?> idGenerator;
    private String idPropertyName;
    private InstanceCreatorFactory<T> instanceCreatorFactory;
    private Class<T> type;
    private final List<PropertyModelBuilder<?>> propertyModelBuilders = new ArrayList();
    private Map<String, TypeParameterMap> propertyNameToTypeParameterMap = Collections.emptyMap();
    private List<Convention> conventions = Conventions.DEFAULT_CONVENTIONS;
    private List<Annotation> annotations = Collections.emptyList();

    public ClassModelBuilder(Class<T> cls) {
        PojoBuilderHelper.configureClassModelBuilder(this, (Class) Assertions.notNull("type", cls));
    }

    private void checkForDuplicates(String str, String str2, Map<String, Integer> map, String str3) {
        if (!map.containsKey(str2)) {
            map.put(str2, 1);
            return;
        }
        throw new CodecConfigurationException(String.format("Duplicate %s named '%s' found in %s.", str, str2, str3));
    }

    private void validatePropertyModels(String str, List<PropertyModel<?>> list) {
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        HashMap hashMap3 = new HashMap();
        for (PropertyModel<?> propertyModel : list) {
            if (propertyModel.hasError()) {
                throw new CodecConfigurationException(propertyModel.getError());
            }
            checkForDuplicates("property", propertyModel.getName(), hashMap, str);
            if (propertyModel.isReadable()) {
                checkForDuplicates("read property", propertyModel.getReadName(), hashMap2, str);
            }
            if (propertyModel.isWritable()) {
                checkForDuplicates("write property", propertyModel.getWriteName(), hashMap3, str);
            }
        }
        String str2 = this.idPropertyName;
        if (str2 == null || hashMap.containsKey(str2)) {
            return;
        }
        throw new CodecConfigurationException(String.format("Invalid id property, property named '%s' can not be found.", this.idPropertyName));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ClassModelBuilder<T> addProperty(PropertyModelBuilder<?> propertyModelBuilder) {
        this.propertyModelBuilders.add(Assertions.notNull("propertyModelBuilder", propertyModelBuilder));
        return this;
    }

    public ClassModelBuilder<T> annotations(List<Annotation> list) {
        this.annotations = (List) Assertions.notNull("annotations", list);
        return this;
    }

    public ClassModel<T> build() {
        ArrayList arrayList = new ArrayList();
        PojoBuilderHelper.stateNotNull("type", this.type);
        for (Convention convention : this.conventions) {
            convention.apply(this);
        }
        PojoBuilderHelper.stateNotNull("instanceCreatorFactory", this.instanceCreatorFactory);
        if (this.discriminatorEnabled) {
            PojoBuilderHelper.stateNotNull("discriminatorKey", this.discriminatorKey);
            PojoBuilderHelper.stateNotNull("discriminator", this.discriminator);
        }
        PropertyModel<?> propertyModel = null;
        for (PropertyModelBuilder<?> propertyModelBuilder : this.propertyModelBuilders) {
            boolean equals = propertyModelBuilder.getName().equals(this.idPropertyName);
            if (equals) {
                propertyModelBuilder.readName("_id").writeName("_id");
            }
            PropertyModel<?> build = propertyModelBuilder.build();
            arrayList.add(build);
            if (equals) {
                propertyModel = build;
            }
        }
        validatePropertyModels(this.type.getSimpleName(), arrayList);
        return new ClassModel<>(this.type, this.propertyNameToTypeParameterMap, this.instanceCreatorFactory, Boolean.valueOf(this.discriminatorEnabled), this.discriminatorKey, this.discriminator, IdPropertyModelHolder.create(this.type, propertyModel, this.idGenerator), Collections.unmodifiableList(arrayList));
    }

    public ClassModelBuilder<T> conventions(List<Convention> list) {
        this.conventions = (List) Assertions.notNull("conventions", list);
        return this;
    }

    public ClassModelBuilder<T> discriminator(String str) {
        this.discriminator = str;
        return this;
    }

    public ClassModelBuilder<T> discriminatorKey(String str) {
        this.discriminatorKey = str;
        return this;
    }

    public ClassModelBuilder<T> enableDiscriminator(boolean z) {
        this.discriminatorEnabled = z;
        return this;
    }

    public List<Annotation> getAnnotations() {
        return this.annotations;
    }

    public List<Convention> getConventions() {
        return this.conventions;
    }

    public String getDiscriminator() {
        return this.discriminator;
    }

    public String getDiscriminatorKey() {
        return this.discriminatorKey;
    }

    public IdGenerator<?> getIdGenerator() {
        return this.idGenerator;
    }

    public String getIdPropertyName() {
        return this.idPropertyName;
    }

    public InstanceCreatorFactory<T> getInstanceCreatorFactory() {
        return this.instanceCreatorFactory;
    }

    public PropertyModelBuilder<?> getProperty(String str) {
        Assertions.notNull("propertyName", str);
        for (PropertyModelBuilder<?> propertyModelBuilder : this.propertyModelBuilders) {
            if (propertyModelBuilder.getName().equals(str)) {
                return propertyModelBuilder;
            }
        }
        return null;
    }

    public List<PropertyModelBuilder<?>> getPropertyModelBuilders() {
        return Collections.unmodifiableList(this.propertyModelBuilders);
    }

    Map<String, TypeParameterMap> getPropertyNameToTypeParameterMap() {
        return this.propertyNameToTypeParameterMap;
    }

    public Class<T> getType() {
        return this.type;
    }

    public ClassModelBuilder<T> idGenerator(IdGenerator<?> idGenerator) {
        this.idGenerator = idGenerator;
        return this;
    }

    public ClassModelBuilder<T> idPropertyName(String str) {
        this.idPropertyName = str;
        return this;
    }

    public ClassModelBuilder<T> instanceCreatorFactory(InstanceCreatorFactory<T> instanceCreatorFactory) {
        this.instanceCreatorFactory = (InstanceCreatorFactory) Assertions.notNull("instanceCreatorFactory", instanceCreatorFactory);
        return this;
    }

    public ClassModelBuilder<T> propertyNameToTypeParameterMap(Map<String, TypeParameterMap> map) {
        this.propertyNameToTypeParameterMap = Collections.unmodifiableMap(new HashMap(map));
        return this;
    }

    public boolean removeProperty(String str) {
        return this.propertyModelBuilders.remove(getProperty((String) Assertions.notNull("propertyName", str)));
    }

    public String toString() {
        return String.format("ClassModelBuilder{type=%s}", this.type);
    }

    public ClassModelBuilder<T> type(Class<T> cls) {
        this.type = (Class) Assertions.notNull("type", cls);
        return this;
    }

    public Boolean useDiscriminator() {
        return Boolean.valueOf(this.discriminatorEnabled);
    }
}
