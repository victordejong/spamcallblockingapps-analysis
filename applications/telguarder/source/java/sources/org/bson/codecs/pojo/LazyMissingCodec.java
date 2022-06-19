package org.bson.codecs.pojo;

import org.bson.BsonReader;
import org.bson.BsonWriter;
import org.bson.codecs.Codec;
import org.bson.codecs.DecoderContext;
import org.bson.codecs.EncoderContext;
import org.bson.codecs.configuration.CodecConfigurationException;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/pojo/LazyMissingCodec.class */
class LazyMissingCodec<S> implements Codec<S> {
    private final Class<S> clazz;
    private final CodecConfigurationException exception;

    public LazyMissingCodec(Class<S> cls, CodecConfigurationException codecConfigurationException) {
        this.clazz = cls;
        this.exception = codecConfigurationException;
    }

    @Override // org.bson.codecs.Decoder
    public S decode(BsonReader bsonReader, DecoderContext decoderContext) {
        throw this.exception;
    }

    @Override // org.bson.codecs.Encoder
    public void encode(BsonWriter bsonWriter, S s, EncoderContext encoderContext) {
        throw this.exception;
    }

    @Override // org.bson.codecs.Encoder
    public Class<S> getEncoderClass() {
        return this.clazz;
    }
}
