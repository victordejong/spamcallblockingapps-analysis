package org.bson.codecs;

import org.bson.BsonBinary;
import org.bson.BsonReader;
import org.bson.BsonWriter;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/BsonBinaryCodec.class */
public class BsonBinaryCodec implements Codec<BsonBinary> {
    @Override // org.bson.codecs.Decoder
    public BsonBinary decode(BsonReader bsonReader, DecoderContext decoderContext) {
        return bsonReader.readBinaryData();
    }

    public void encode(BsonWriter bsonWriter, BsonBinary bsonBinary, EncoderContext encoderContext) {
        bsonWriter.writeBinaryData(bsonBinary);
    }

    @Override // org.bson.codecs.Encoder
    public Class<BsonBinary> getEncoderClass() {
        return BsonBinary.class;
    }
}
