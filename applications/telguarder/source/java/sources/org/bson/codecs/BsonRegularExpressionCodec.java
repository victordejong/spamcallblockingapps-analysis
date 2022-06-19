package org.bson.codecs;

import org.bson.BsonReader;
import org.bson.BsonRegularExpression;
import org.bson.BsonWriter;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/BsonRegularExpressionCodec.class */
public class BsonRegularExpressionCodec implements Codec<BsonRegularExpression> {
    @Override // org.bson.codecs.Decoder
    public BsonRegularExpression decode(BsonReader bsonReader, DecoderContext decoderContext) {
        return bsonReader.readRegularExpression();
    }

    public void encode(BsonWriter bsonWriter, BsonRegularExpression bsonRegularExpression, EncoderContext encoderContext) {
        bsonWriter.writeRegularExpression(bsonRegularExpression);
    }

    @Override // org.bson.codecs.Encoder
    public Class<BsonRegularExpression> getEncoderClass() {
        return BsonRegularExpression.class;
    }
}
