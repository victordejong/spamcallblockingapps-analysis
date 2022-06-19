package org.bson.codecs.pojo;

import org.bson.codecs.Codec;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/pojo/PropertyCodecRegistry.class */
public interface PropertyCodecRegistry {
    <T> Codec<T> get(TypeWithTypeParameters<T> typeWithTypeParameters);
}
