package org.bson.codecs;

import org.bson.BsonDecimal128;
import org.bson.BsonReader;
import org.bson.BsonWriter;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/BsonDecimal128Codec.class */
public class BsonDecimal128Codec implements Codec<BsonDecimal128> {
    @Override // org.bson.codecs.Decoder
    public BsonDecimal128 decode(BsonReader bsonReader, DecoderContext decoderContext) {
        return new BsonDecimal128(bsonReader.readDecimal128());
    }

    public void encode(BsonWriter bsonWriter, BsonDecimal128 bsonDecimal128, EncoderContext encoderContext) {
        bsonWriter.writeDecimal128(bsonDecimal128.getValue());
    }

    @Override // org.bson.codecs.Encoder
    public Class<BsonDecimal128> getEncoderClass() {
        return BsonDecimal128.class;
    }
}
