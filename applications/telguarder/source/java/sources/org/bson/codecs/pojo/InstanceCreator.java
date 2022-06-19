package org.bson.codecs.pojo;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/pojo/InstanceCreator.class */
public interface InstanceCreator<T> {
    T getInstance();

    <S> void set(S s, PropertyModel<S> propertyModel);
}
