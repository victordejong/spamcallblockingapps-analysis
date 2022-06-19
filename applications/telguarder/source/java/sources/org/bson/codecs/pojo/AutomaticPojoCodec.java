package org.bson.codecs.pojo;

import org.bson.BsonReader;
import org.bson.BsonWriter;
import org.bson.codecs.DecoderContext;
import org.bson.codecs.EncoderContext;
import org.bson.codecs.configuration.CodecConfigurationException;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/pojo/AutomaticPojoCodec.class */
final class AutomaticPojoCodec<T> extends PojoCodec<T> {
    private final PojoCodec<T> pojoCodec;

    public AutomaticPojoCodec(PojoCodec<T> pojoCodec) {
        this.pojoCodec = pojoCodec;
    }

    @Override // org.bson.codecs.Decoder
    public T decode(BsonReader bsonReader, DecoderContext decoderContext) {
        try {
            return this.pojoCodec.decode(bsonReader, decoderContext);
        } catch (CodecConfigurationException e) {
            throw new CodecConfigurationException(String.format("An exception occurred when decoding using the AutomaticPojoCodec.%nDecoding into a '%s' failed with the following exception:%n%n%s%n%nA custom Codec or PojoCodec may need to be explicitly configured and registered to handle this type.", this.pojoCodec.getEncoderClass().getSimpleName(), e.getMessage()), e);
        }
    }

    @Override // org.bson.codecs.Encoder
    public void encode(BsonWriter bsonWriter, T t, EncoderContext encoderContext) {
        try {
            this.pojoCodec.encode(bsonWriter, t, encoderContext);
        } catch (CodecConfigurationException e) {
            throw new CodecConfigurationException(String.format("An exception occurred when encoding using the AutomaticPojoCodec.%nEncoding a %s: '%s' failed with the following exception:%n%n%s%n%nA custom Codec or PojoCodec may need to be explicitly configured and registered to handle this type.", getEncoderClass().getSimpleName(), t, e.getMessage()), e);
        }
    }

    @Override // org.bson.codecs.pojo.PojoCodec
    public ClassModel<T> getClassModel() {
        return this.pojoCodec.getClassModel();
    }

    @Override // org.bson.codecs.Encoder
    public Class<T> getEncoderClass() {
        return this.pojoCodec.getEncoderClass();
    }
}
