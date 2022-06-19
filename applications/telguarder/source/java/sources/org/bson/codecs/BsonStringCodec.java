package org.bson.codecs;

import org.bson.BsonReader;
import org.bson.BsonString;
import org.bson.BsonWriter;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/BsonStringCodec.class */
public class BsonStringCodec implements Codec<BsonString> {
    @Override // org.bson.codecs.Decoder
    public BsonString decode(BsonReader bsonReader, DecoderContext decoderContext) {
        return new BsonString(bsonReader.readString());
    }

    public void encode(BsonWriter bsonWriter, BsonString bsonString, EncoderContext encoderContext) {
        bsonWriter.writeString(bsonString.getValue());
    }

    @Override // org.bson.codecs.Encoder
    public Class<BsonString> getEncoderClass() {
        return BsonString.class;
    }
}
