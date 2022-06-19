package org.bson.codecs.configuration;

import org.bson.codecs.Codec;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/configuration/CodecRegistry.class */
public interface CodecRegistry {
    <T> Codec<T> get(Class<T> cls);
}
