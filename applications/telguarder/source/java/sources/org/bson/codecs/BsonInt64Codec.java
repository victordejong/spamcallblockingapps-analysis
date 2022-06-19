package org.bson.codecs;

import org.bson.BsonInt64;
import org.bson.BsonReader;
import org.bson.BsonWriter;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/BsonInt64Codec.class */
public class BsonInt64Codec implements Codec<BsonInt64> {
    @Override // org.bson.codecs.Decoder
    public BsonInt64 decode(BsonReader bsonReader, DecoderContext decoderContext) {
        return new BsonInt64(bsonReader.readInt64());
    }

    public void encode(BsonWriter bsonWriter, BsonInt64 bsonInt64, EncoderContext encoderContext) {
        bsonWriter.writeInt64(bsonInt64.getValue());
    }

    @Override // org.bson.codecs.Encoder
    public Class<BsonInt64> getEncoderClass() {
        return BsonInt64.class;
    }
}
