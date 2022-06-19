package org.bson.codecs;

import org.bson.BsonReader;
import org.bson.BsonWriter;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/IntegerCodec.class */
public class IntegerCodec implements Codec<Integer> {
    @Override // org.bson.codecs.Decoder
    public Integer decode(BsonReader bsonReader, DecoderContext decoderContext) {
        return Integer.valueOf(NumberCodecHelper.decodeInt(bsonReader));
    }

    public void encode(BsonWriter bsonWriter, Integer num, EncoderContext encoderContext) {
        bsonWriter.writeInt32(num.intValue());
    }

    @Override // org.bson.codecs.Encoder
    public Class<Integer> getEncoderClass() {
        return Integer.class;
    }
}
