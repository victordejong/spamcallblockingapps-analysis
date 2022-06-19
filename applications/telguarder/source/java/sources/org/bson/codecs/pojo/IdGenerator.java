package org.bson.codecs.pojo;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/pojo/IdGenerator.class */
public interface IdGenerator<T> {
    T generate();

    Class<T> getType();
}
