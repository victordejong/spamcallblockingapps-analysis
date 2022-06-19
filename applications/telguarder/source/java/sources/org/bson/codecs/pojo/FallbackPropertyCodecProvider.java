package org.bson.codecs.pojo;

import org.bson.codecs.Codec;
import org.bson.codecs.configuration.CodecRegistry;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/pojo/FallbackPropertyCodecProvider.class */
final class FallbackPropertyCodecProvider implements PropertyCodecProvider {
    private final CodecRegistry codecRegistry;
    private final PojoCodec<?> pojoCodec;

    public FallbackPropertyCodecProvider(PojoCodec<?> pojoCodec, CodecRegistry codecRegistry) {
        this.pojoCodec = pojoCodec;
        this.codecRegistry = codecRegistry;
    }

    @Override // org.bson.codecs.pojo.PropertyCodecProvider
    public <S> Codec<S> get(TypeWithTypeParameters<S> typeWithTypeParameters, PropertyCodecRegistry propertyCodecRegistry) {
        return typeWithTypeParameters.getType() == this.pojoCodec.getEncoderClass() ? this.pojoCodec : this.codecRegistry.get(typeWithTypeParameters.getType());
    }
}
