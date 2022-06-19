package org.bson.codecs;

import org.bson.BsonReader;
import org.bson.BsonWriter;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/DoubleCodec.class */
public class DoubleCodec implements Codec<Double> {
    @Override // org.bson.codecs.Decoder
    public Double decode(BsonReader bsonReader, DecoderContext decoderContext) {
        return Double.valueOf(NumberCodecHelper.decodeDouble(bsonReader));
    }

    public void encode(BsonWriter bsonWriter, Double d, EncoderContext encoderContext) {
        bsonWriter.writeDouble(d.doubleValue());
    }

    @Override // org.bson.codecs.Encoder
    public Class<Double> getEncoderClass() {
        return Double.class;
    }
}
