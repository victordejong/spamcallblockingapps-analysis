package org.bson.codecs.pojo;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/pojo/ClassModel.class */
public final class ClassModel<T> {
    private final String discriminator;
    private final boolean discriminatorEnabled;
    private final String discriminatorKey;
    private final boolean hasTypeParameters;
    private final IdPropertyModelHolder<?> idPropertyModelHolder;
    private final InstanceCreatorFactory<T> instanceCreatorFactory;
    private final String name;
    private final List<PropertyModel<?>> propertyModels;
    private final Map<String, TypeParameterMap> propertyNameToTypeParameterMap;
    private final Class<T> type;

    public ClassModel(Class<T> cls, Map<String, TypeParameterMap> map, InstanceCreatorFactory<T> instanceCreatorFactory, Boolean bool, String str, String str2, IdPropertyModelHolder<?> idPropertyModelHolder, List<PropertyModel<?>> list) {
        this.name = cls.getSimpleName();
        this.type = cls;
        this.hasTypeParameters = cls.getTypeParameters().length > 0;
        this.propertyNameToTypeParameterMap = Collections.unmodifiableMap(new HashMap(map));
        this.instanceCreatorFactory = instanceCreatorFactory;
        this.discriminatorEnabled = bool.booleanValue();
        this.discriminatorKey = str;
        this.discriminator = str2;
        this.idPropertyModelHolder = idPropertyModelHolder;
        this.propertyModels = Collections.unmodifiableList(new ArrayList(list));
    }

    public static <S> ClassModelBuilder<S> builder(Class<S> cls) {
        return new ClassModelBuilder<>(cls);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ClassModel classModel = (ClassModel) obj;
        if (this.discriminatorEnabled != classModel.discriminatorEnabled || !getType().equals(classModel.getType()) || !getInstanceCreatorFactory().equals(classModel.getInstanceCreatorFactory())) {
            return false;
        }
        if (getDiscriminatorKey() != null) {
            if (!getDiscriminatorKey().equals(classModel.getDiscriminatorKey())) {
                return false;
            }
        } else if (classModel.getDiscriminatorKey() != null) {
            return false;
        }
        if (getDiscriminator() != null) {
            if (!getDiscriminator().equals(classModel.getDiscriminator())) {
                return false;
            }
        } else if (classModel.getDiscriminator() != null) {
            return false;
        }
        IdPropertyModelHolder<?> idPropertyModelHolder = this.idPropertyModelHolder;
        if (idPropertyModelHolder != null) {
            if (!idPropertyModelHolder.equals(classModel.idPropertyModelHolder)) {
                return false;
            }
        } else if (classModel.idPropertyModelHolder != null) {
            return false;
        }
        return getPropertyModels().equals(classModel.getPropertyModels()) && getPropertyNameToTypeParameterMap().equals(classModel.getPropertyNameToTypeParameterMap());
    }

    public String getDiscriminator() {
        return this.discriminator;
    }

    public String getDiscriminatorKey() {
        return this.discriminatorKey;
    }

    public PropertyModel<?> getIdPropertyModel() {
        IdPropertyModelHolder<?> idPropertyModelHolder = this.idPropertyModelHolder;
        return idPropertyModelHolder != null ? idPropertyModelHolder.getPropertyModel() : null;
    }

    public IdPropertyModelHolder<?> getIdPropertyModelHolder() {
        return this.idPropertyModelHolder;
    }

    public InstanceCreator<T> getInstanceCreator() {
        return this.instanceCreatorFactory.create();
    }

    public InstanceCreatorFactory<T> getInstanceCreatorFactory() {
        return this.instanceCreatorFactory;
    }

    public String getName() {
        return this.name;
    }

    public PropertyModel<?> getPropertyModel(String str) {
        for (PropertyModel<?> propertyModel : this.propertyModels) {
            if (propertyModel.getName().equals(str)) {
                return propertyModel;
            }
        }
        return null;
    }

    public List<PropertyModel<?>> getPropertyModels() {
        return this.propertyModels;
    }

    public Map<String, TypeParameterMap> getPropertyNameToTypeParameterMap() {
        return this.propertyNameToTypeParameterMap;
    }

    public Class<T> getType() {
        return this.type;
    }

    public boolean hasTypeParameters() {
        return this.hasTypeParameters;
    }

    public int hashCode() {
        int hashCode = getType().hashCode();
        int hashCode2 = getInstanceCreatorFactory().hashCode();
        boolean z = this.discriminatorEnabled;
        int i = 0;
        int hashCode3 = getDiscriminatorKey() != null ? getDiscriminatorKey().hashCode() : 0;
        int hashCode4 = getDiscriminator() != null ? getDiscriminator().hashCode() : 0;
        if (getIdPropertyModelHolder() != null) {
            i = getIdPropertyModelHolder().hashCode();
        }
        return (((((((((((((hashCode * 31) + hashCode2) * 31) + (z ? 1 : 0)) * 31) + hashCode3) * 31) + hashCode4) * 31) + i) * 31) + getPropertyModels().hashCode()) * 31) + getPropertyNameToTypeParameterMap().hashCode();
    }

    public String toString() {
        return "ClassModel{type=" + this.type + "}";
    }

    public boolean useDiscriminator() {
        return this.discriminatorEnabled;
    }
}
