package org.bson.codecs;

import org.bson.BsonInvalidOperationException;
import org.bson.BsonReader;
import org.bson.BsonWriter;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/FloatCodec.class */
public class FloatCodec implements Codec<Float> {
    @Override // org.bson.codecs.Decoder
    public Float decode(BsonReader bsonReader, DecoderContext decoderContext) {
        double decodeDouble = NumberCodecHelper.decodeDouble(bsonReader);
        if (decodeDouble < -3.4028234663852886E38d || decodeDouble > 3.4028234663852886E38d) {
            throw new BsonInvalidOperationException(String.format("%s can not be converted into a Float.", Double.valueOf(decodeDouble)));
        }
        return Float.valueOf((float) decodeDouble);
    }

    public void encode(BsonWriter bsonWriter, Float f, EncoderContext encoderContext) {
        bsonWriter.writeDouble(f.floatValue());
    }

    @Override // org.bson.codecs.Encoder
    public Class<Float> getEncoderClass() {
        return Float.class;
    }
}
