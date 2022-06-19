package org.bson.codecs.pojo;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/pojo/PropertyModelSerializationImpl.class */
class PropertyModelSerializationImpl<T> implements PropertySerialization<T> {
    @Override // org.bson.codecs.pojo.PropertySerialization
    public boolean shouldSerialize(T t) {
        return t != null;
    }
}
