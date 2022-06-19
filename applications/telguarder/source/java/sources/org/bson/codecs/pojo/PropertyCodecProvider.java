package org.bson.codecs.pojo;

import org.bson.codecs.Codec;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/pojo/PropertyCodecProvider.class */
public interface PropertyCodecProvider {
    <T> Codec<T> get(TypeWithTypeParameters<T> typeWithTypeParameters, PropertyCodecRegistry propertyCodecRegistry);
}
