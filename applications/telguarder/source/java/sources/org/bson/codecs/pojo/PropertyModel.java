package org.bson.codecs.pojo;

import org.bson.codecs.Codec;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/pojo/PropertyModel.class */
public final class PropertyModel<T> {
    private volatile Codec<T> cachedCodec;
    private final Codec<T> codec;
    private final String error;
    private final String name;
    private final PropertyAccessor<T> propertyAccessor;
    private final PropertySerialization<T> propertySerialization;
    private final String readName;
    private final TypeData<T> typeData;
    private final Boolean useDiscriminator;
    private final String writeName;

    public PropertyModel(String str, String str2, String str3, TypeData<T> typeData, Codec<T> codec, PropertySerialization<T> propertySerialization, Boolean bool, PropertyAccessor<T> propertyAccessor, String str4) {
        this.name = str;
        this.readName = str2;
        this.writeName = str3;
        this.typeData = typeData;
        this.codec = codec;
        this.cachedCodec = codec;
        this.propertySerialization = propertySerialization;
        this.useDiscriminator = bool;
        this.propertyAccessor = propertyAccessor;
        this.error = str4;
    }

    public static <T> PropertyModelBuilder<T> builder() {
        return new PropertyModelBuilder<>();
    }

    public void cachedCodec(Codec<T> codec) {
        this.cachedCodec = codec;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        PropertyModel propertyModel = (PropertyModel) obj;
        if (getName() != null) {
            if (!getName().equals(propertyModel.getName())) {
                return false;
            }
        } else if (propertyModel.getName() != null) {
            return false;
        }
        if (getReadName() != null) {
            if (!getReadName().equals(propertyModel.getReadName())) {
                return false;
            }
        } else if (propertyModel.getReadName() != null) {
            return false;
        }
        if (getWriteName() != null) {
            if (!getWriteName().equals(propertyModel.getWriteName())) {
                return false;
            }
        } else if (propertyModel.getWriteName() != null) {
            return false;
        }
        if (getTypeData() != null) {
            if (!getTypeData().equals(propertyModel.getTypeData())) {
                return false;
            }
        } else if (propertyModel.getTypeData() != null) {
            return false;
        }
        if (getCodec() != null) {
            if (!getCodec().equals(propertyModel.getCodec())) {
                return false;
            }
        } else if (propertyModel.getCodec() != null) {
            return false;
        }
        if (getPropertySerialization() != null) {
            if (!getPropertySerialization().equals(propertyModel.getPropertySerialization())) {
                return false;
            }
        } else if (propertyModel.getPropertySerialization() != null) {
            return false;
        }
        Boolean bool = this.useDiscriminator;
        if (bool != null) {
            if (!bool.equals(propertyModel.useDiscriminator)) {
                return false;
            }
        } else if (propertyModel.useDiscriminator != null) {
            return false;
        }
        if (getPropertyAccessor() != null) {
            if (!getPropertyAccessor().equals(propertyModel.getPropertyAccessor())) {
                return false;
            }
        } else if (propertyModel.getPropertyAccessor() != null) {
            return false;
        }
        if (getError() != null) {
            if (!getError().equals(propertyModel.getError())) {
                return false;
            }
        } else if (propertyModel.getError() != null) {
            return false;
        }
        return getCachedCodec() != null ? getCachedCodec().equals(propertyModel.getCachedCodec()) : propertyModel.getCachedCodec() == null;
    }

    public Codec<T> getCachedCodec() {
        return this.cachedCodec;
    }

    public Codec<T> getCodec() {
        return this.codec;
    }

    public String getError() {
        return this.error;
    }

    public String getName() {
        return this.name;
    }

    public PropertyAccessor<T> getPropertyAccessor() {
        return this.propertyAccessor;
    }

    public PropertySerialization<T> getPropertySerialization() {
        return this.propertySerialization;
    }

    public String getReadName() {
        return this.readName;
    }

    public TypeData<T> getTypeData() {
        return this.typeData;
    }

    public String getWriteName() {
        return this.writeName;
    }

    public boolean hasError() {
        return this.error != null;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = getName() != null ? getName().hashCode() : 0;
        int hashCode2 = getReadName() != null ? getReadName().hashCode() : 0;
        int hashCode3 = getWriteName() != null ? getWriteName().hashCode() : 0;
        int hashCode4 = getTypeData() != null ? getTypeData().hashCode() : 0;
        int hashCode5 = getCodec() != null ? getCodec().hashCode() : 0;
        int hashCode6 = getPropertySerialization() != null ? getPropertySerialization().hashCode() : 0;
        Boolean bool = this.useDiscriminator;
        int hashCode7 = bool != null ? bool.hashCode() : 0;
        int hashCode8 = getPropertyAccessor() != null ? getPropertyAccessor().hashCode() : 0;
        int hashCode9 = getError() != null ? getError().hashCode() : 0;
        if (getCachedCodec() != null) {
            i = getCachedCodec().hashCode();
        }
        return (((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + i;
    }

    public boolean isReadable() {
        return this.readName != null;
    }

    public boolean isWritable() {
        return this.writeName != null;
    }

    public boolean shouldSerialize(T t) {
        return this.propertySerialization.shouldSerialize(t);
    }

    public String toString() {
        return "PropertyModel{propertyName='" + this.name + "', readName='" + this.readName + "', writeName='" + this.writeName + "', typeData=" + this.typeData + "}";
    }

    public Boolean useDiscriminator() {
        return this.useDiscriminator;
    }
}
