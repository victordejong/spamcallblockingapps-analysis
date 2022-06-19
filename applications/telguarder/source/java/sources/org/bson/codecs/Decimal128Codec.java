package org.bson.codecs;

import org.bson.BsonReader;
import org.bson.BsonWriter;
import org.bson.types.Decimal128;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/Decimal128Codec.class */
public final class Decimal128Codec implements Codec<Decimal128> {
    @Override // org.bson.codecs.Decoder
    public Decimal128 decode(BsonReader bsonReader, DecoderContext decoderContext) {
        return bsonReader.readDecimal128();
    }

    public void encode(BsonWriter bsonWriter, Decimal128 decimal128, EncoderContext encoderContext) {
        bsonWriter.writeDecimal128(decimal128);
    }

    @Override // org.bson.codecs.Encoder
    public Class<Decimal128> getEncoderClass() {
        return Decimal128.class;
    }
}
