package org.bson.codecs;

import java.util.concurrent.atomic.AtomicBoolean;
import org.bson.BsonReader;
import org.bson.BsonWriter;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/AtomicBooleanCodec.class */
public class AtomicBooleanCodec implements Codec<AtomicBoolean> {
    @Override // org.bson.codecs.Decoder
    public AtomicBoolean decode(BsonReader bsonReader, DecoderContext decoderContext) {
        return new AtomicBoolean(bsonReader.readBoolean());
    }

    public void encode(BsonWriter bsonWriter, AtomicBoolean atomicBoolean, EncoderContext encoderContext) {
        bsonWriter.writeBoolean(atomicBoolean.get());
    }

    @Override // org.bson.codecs.Encoder
    public Class<AtomicBoolean> getEncoderClass() {
        return AtomicBoolean.class;
    }
}
