package org.bson.codecs;

import org.bson.BsonReader;
import org.bson.BsonType;
import org.bson.BsonWriter;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/StringCodec.class */
public class StringCodec implements Codec<String> {
    @Override // org.bson.codecs.Decoder
    public String decode(BsonReader bsonReader, DecoderContext decoderContext) {
        return bsonReader.getCurrentBsonType() == BsonType.SYMBOL ? bsonReader.readSymbol() : bsonReader.readString();
    }

    public void encode(BsonWriter bsonWriter, String str, EncoderContext encoderContext) {
        bsonWriter.writeString(str);
    }

    @Override // org.bson.codecs.Encoder
    public Class<String> getEncoderClass() {
        return String.class;
    }
}
