package org.bson.codecs;

import org.bson.BsonInvalidOperationException;
import org.bson.BsonReader;
import org.bson.BsonWriter;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/ByteCodec.class */
public class ByteCodec implements Codec<Byte> {
    @Override // org.bson.codecs.Decoder
    public Byte decode(BsonReader bsonReader, DecoderContext decoderContext) {
        int decodeInt = NumberCodecHelper.decodeInt(bsonReader);
        if (decodeInt < -128 || decodeInt > 127) {
            throw new BsonInvalidOperationException(String.format("%s can not be converted into a Byte.", Integer.valueOf(decodeInt)));
        }
        return Byte.valueOf((byte) decodeInt);
    }

    public void encode(BsonWriter bsonWriter, Byte b, EncoderContext encoderContext) {
        bsonWriter.writeInt32(b.byteValue());
    }

    @Override // org.bson.codecs.Encoder
    public Class<Byte> getEncoderClass() {
        return Byte.class;
    }
}
