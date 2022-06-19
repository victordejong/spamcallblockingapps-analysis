package org.bson.codecs.pojo;

import org.bson.codecs.Codec;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/pojo/PojoCodec.class */
abstract class PojoCodec<T> implements Codec<T> {
    public abstract ClassModel<T> getClassModel();
}
