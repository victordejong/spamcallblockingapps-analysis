package org.bson.codecs.pojo;

import org.bson.codecs.configuration.CodecConfigurationException;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/pojo/IdPropertyModelHolder.class */
public final class IdPropertyModelHolder<I> {
    private final IdGenerator<I> idGenerator;
    private final PropertyModel<I> propertyModel;

    private IdPropertyModelHolder(PropertyModel<I> propertyModel, IdGenerator<I> idGenerator) {
        this.propertyModel = propertyModel;
        this.idGenerator = idGenerator;
    }

    public static <T, I, V> IdPropertyModelHolder<I> create(Class<T> cls, PropertyModel<I> propertyModel, IdGenerator<V> idGenerator) {
        if (propertyModel != null || idGenerator == null) {
            if (idGenerator != null && !propertyModel.getTypeData().getType().isAssignableFrom(idGenerator.getType())) {
                throw new CodecConfigurationException(String.format("Invalid IdGenerator. Mismatching types, the IdProperty type is: %s but the IdGenerator type is: %s", propertyModel.getTypeData().getType(), idGenerator.getType()));
            }
            return new IdPropertyModelHolder<>(propertyModel, idGenerator);
        }
        throw new CodecConfigurationException(String.format("Invalid IdGenerator. There is no IdProperty set for: %s", cls));
    }

    public static <T, I> IdPropertyModelHolder<I> create(ClassModel<T> classModel, PropertyModel<I> propertyModel) {
        return create(classModel.getType(), propertyModel, classModel.getIdPropertyModelHolder().getIdGenerator());
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        IdPropertyModelHolder idPropertyModelHolder = (IdPropertyModelHolder) obj;
        PropertyModel<I> propertyModel = this.propertyModel;
        if (propertyModel != null) {
            if (!propertyModel.equals(idPropertyModelHolder.propertyModel)) {
                return false;
            }
        } else if (idPropertyModelHolder.propertyModel != null) {
            return false;
        }
        IdGenerator<I> idGenerator = this.idGenerator;
        IdGenerator<I> idGenerator2 = idPropertyModelHolder.idGenerator;
        if (idGenerator != null) {
            z = idGenerator.equals(idGenerator2);
        } else if (idGenerator2 != null) {
            z = false;
        }
        return z;
    }

    public IdGenerator<I> getIdGenerator() {
        return this.idGenerator;
    }

    public PropertyModel<I> getPropertyModel() {
        return this.propertyModel;
    }

    public int hashCode() {
        PropertyModel<I> propertyModel = this.propertyModel;
        int i = 0;
        int hashCode = propertyModel != null ? propertyModel.hashCode() : 0;
        IdGenerator<I> idGenerator = this.idGenerator;
        if (idGenerator != null) {
            i = idGenerator.hashCode();
        }
        return (hashCode * 31) + i;
    }
}
