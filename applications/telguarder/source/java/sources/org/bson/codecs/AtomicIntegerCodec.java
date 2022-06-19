package org.bson.codecs;

import java.util.concurrent.atomic.AtomicInteger;
import org.bson.BsonReader;
import org.bson.BsonWriter;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/AtomicIntegerCodec.class */
public class AtomicIntegerCodec implements Codec<AtomicInteger> {
    @Override // org.bson.codecs.Decoder
    public AtomicInteger decode(BsonReader bsonReader, DecoderContext decoderContext) {
        return new AtomicInteger(NumberCodecHelper.decodeInt(bsonReader));
    }

    public void encode(BsonWriter bsonWriter, AtomicInteger atomicInteger, EncoderContext encoderContext) {
        bsonWriter.writeInt32(atomicInteger.intValue());
    }

    @Override // org.bson.codecs.Encoder
    public Class<AtomicInteger> getEncoderClass() {
        return AtomicInteger.class;
    }
}
