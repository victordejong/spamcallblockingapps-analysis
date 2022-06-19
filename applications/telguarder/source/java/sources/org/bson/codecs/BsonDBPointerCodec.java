package org.bson.codecs;

import org.bson.BsonDbPointer;
import org.bson.BsonReader;
import org.bson.BsonWriter;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/BsonDBPointerCodec.class */
public class BsonDBPointerCodec implements Codec<BsonDbPointer> {
    @Override // org.bson.codecs.Decoder
    public BsonDbPointer decode(BsonReader bsonReader, DecoderContext decoderContext) {
        return bsonReader.readDBPointer();
    }

    public void encode(BsonWriter bsonWriter, BsonDbPointer bsonDbPointer, EncoderContext encoderContext) {
        bsonWriter.writeDBPointer(bsonDbPointer);
    }

    @Override // org.bson.codecs.Encoder
    public Class<BsonDbPointer> getEncoderClass() {
        return BsonDbPointer.class;
    }
}
