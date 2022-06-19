package org.bson.internal;

import org.bson.BsonReader;
import org.bson.BsonWriter;
import org.bson.codecs.Codec;
import org.bson.codecs.DecoderContext;
import org.bson.codecs.EncoderContext;
import org.bson.codecs.configuration.CodecRegistry;
/* loaded from: classes-dex2jar.jar:org/bson/internal/LazyCodec.class */
class LazyCodec<T> implements Codec<T> {
    private final Class<T> clazz;
    private final CodecRegistry registry;
    private volatile Codec<T> wrapped;

    public LazyCodec(CodecRegistry codecRegistry, Class<T> cls) {
        this.registry = codecRegistry;
        this.clazz = cls;
    }

    private Codec<T> getWrapped() {
        if (this.wrapped == null) {
            this.wrapped = this.registry.get(this.clazz);
        }
        return this.wrapped;
    }

    @Override // org.bson.codecs.Decoder
    public T decode(BsonReader bsonReader, DecoderContext decoderContext) {
        return getWrapped().decode(bsonReader, decoderContext);
    }

    @Override // org.bson.codecs.Encoder
    public void encode(BsonWriter bsonWriter, T t, EncoderContext encoderContext) {
        getWrapped().encode(bsonWriter, t, encoderContext);
    }

    @Override // org.bson.codecs.Encoder
    public Class<T> getEncoderClass() {
        return this.clazz;
    }
}
