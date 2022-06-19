package org.bson.codecs;

import org.bson.BsonNull;
import org.bson.BsonReader;
import org.bson.BsonWriter;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/BsonNullCodec.class */
public class BsonNullCodec implements Codec<BsonNull> {
    @Override // org.bson.codecs.Decoder
    public BsonNull decode(BsonReader bsonReader, DecoderContext decoderContext) {
        bsonReader.readNull();
        return BsonNull.VALUE;
    }

    public void encode(BsonWriter bsonWriter, BsonNull bsonNull, EncoderContext encoderContext) {
        bsonWriter.writeNull();
    }

    @Override // org.bson.codecs.Encoder
    public Class<BsonNull> getEncoderClass() {
        return BsonNull.class;
    }
}
