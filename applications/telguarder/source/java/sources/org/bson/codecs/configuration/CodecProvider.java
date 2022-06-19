package org.bson.codecs.configuration;

import org.bson.codecs.Codec;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/configuration/CodecProvider.class */
public interface CodecProvider {
    <T> Codec<T> get(Class<T> cls, CodecRegistry codecRegistry);
}
