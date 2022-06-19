package org.bson.codecs;

import org.bson.BsonDouble;
import org.bson.BsonReader;
import org.bson.BsonWriter;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/BsonDoubleCodec.class */
public class BsonDoubleCodec implements Codec<BsonDouble> {
    @Override // org.bson.codecs.Decoder
    public BsonDouble decode(BsonReader bsonReader, DecoderContext decoderContext) {
        return new BsonDouble(bsonReader.readDouble());
    }

    public void encode(BsonWriter bsonWriter, BsonDouble bsonDouble, EncoderContext encoderContext) {
        bsonWriter.writeDouble(bsonDouble.getValue());
    }

    @Override // org.bson.codecs.Encoder
    public Class<BsonDouble> getEncoderClass() {
        return BsonDouble.class;
    }
}
