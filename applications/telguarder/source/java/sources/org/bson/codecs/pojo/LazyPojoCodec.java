package org.bson.codecs.pojo;

import java.util.concurrent.ConcurrentMap;
import org.bson.BsonReader;
import org.bson.BsonWriter;
import org.bson.codecs.Codec;
import org.bson.codecs.DecoderContext;
import org.bson.codecs.EncoderContext;
import org.bson.codecs.configuration.CodecRegistry;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:org/bson/codecs/pojo/LazyPojoCodec.class */
public class LazyPojoCodec<T> extends PojoCodec<T> {
    private final ClassModel<T> classModel;
    private final ConcurrentMap<ClassModel<?>, Codec<?>> codecCache;
    private final DiscriminatorLookup discriminatorLookup;
    private volatile PojoCodecImpl<T> pojoCodec;
    private final PropertyCodecRegistry propertyCodecRegistry;
    private final CodecRegistry registry;

    public LazyPojoCodec(ClassModel<T> classModel, CodecRegistry codecRegistry, PropertyCodecRegistry propertyCodecRegistry, DiscriminatorLookup discriminatorLookup, ConcurrentMap<ClassModel<?>, Codec<?>> concurrentMap) {
        this.classModel = classModel;
        this.registry = codecRegistry;
        this.propertyCodecRegistry = propertyCodecRegistry;
        this.discriminatorLookup = discriminatorLookup;
        this.codecCache = concurrentMap;
    }

    private Codec<T> getPojoCodec() {
        if (this.pojoCodec == null) {
            this.pojoCodec = new PojoCodecImpl<>(this.classModel, this.registry, this.propertyCodecRegistry, this.discriminatorLookup, this.codecCache, true);
        }
        return this.pojoCodec;
    }

    @Override // org.bson.codecs.Decoder
    public T decode(BsonReader bsonReader, DecoderContext decoderContext) {
        return getPojoCodec().decode(bsonReader, decoderContext);
    }

    @Override // org.bson.codecs.Encoder
    public void encode(BsonWriter bsonWriter, T t, EncoderContext encoderContext) {
        getPojoCodec().encode(bsonWriter, t, encoderContext);
    }

    @Override // org.bson.codecs.pojo.PojoCodec
    public ClassModel<T> getClassModel() {
        return this.classModel;
    }

    @Override // org.bson.codecs.Encoder
    public Class<T> getEncoderClass() {
        return this.classModel.getType();
    }
}
