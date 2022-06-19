package org.bson.codecs;

import org.bson.BsonInt32;
import org.bson.BsonReader;
import org.bson.BsonWriter;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/BsonInt32Codec.class */
public class BsonInt32Codec implements Codec<BsonInt32> {
    @Override // org.bson.codecs.Decoder
    public BsonInt32 decode(BsonReader bsonReader, DecoderContext decoderContext) {
        return new BsonInt32(bsonReader.readInt32());
    }

    public void encode(BsonWriter bsonWriter, BsonInt32 bsonInt32, EncoderContext encoderContext) {
        bsonWriter.writeInt32(bsonInt32.getValue());
    }

    @Override // org.bson.codecs.Encoder
    public Class<BsonInt32> getEncoderClass() {
        return BsonInt32.class;
    }
}
