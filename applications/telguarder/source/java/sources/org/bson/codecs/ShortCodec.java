package org.bson.codecs;

import org.bson.BsonInvalidOperationException;
import org.bson.BsonReader;
import org.bson.BsonWriter;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/ShortCodec.class */
public class ShortCodec implements Codec<Short> {
    @Override // org.bson.codecs.Decoder
    public Short decode(BsonReader bsonReader, DecoderContext decoderContext) {
        int decodeInt = NumberCodecHelper.decodeInt(bsonReader);
        if (decodeInt < -32768 || decodeInt > 32767) {
            throw new BsonInvalidOperationException(String.format("%s can not be converted into a Short.", Integer.valueOf(decodeInt)));
        }
        return Short.valueOf((short) decodeInt);
    }

    public void encode(BsonWriter bsonWriter, Short sh, EncoderContext encoderContext) {
        bsonWriter.writeInt32(sh.shortValue());
    }

    @Override // org.bson.codecs.Encoder
    public Class<Short> getEncoderClass() {
        return Short.class;
    }
}
