package org.bson.codecs;

import java.math.BigDecimal;
import org.bson.BsonReader;
import org.bson.BsonWriter;
import org.bson.types.Decimal128;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/BigDecimalCodec.class */
public final class BigDecimalCodec implements Codec<BigDecimal> {
    @Override // org.bson.codecs.Decoder
    public BigDecimal decode(BsonReader bsonReader, DecoderContext decoderContext) {
        return bsonReader.readDecimal128().bigDecimalValue();
    }

    public void encode(BsonWriter bsonWriter, BigDecimal bigDecimal, EncoderContext encoderContext) {
        bsonWriter.writeDecimal128(new Decimal128(bigDecimal));
    }

    @Override // org.bson.codecs.Encoder
    public Class<BigDecimal> getEncoderClass() {
        return BigDecimal.class;
    }
}
