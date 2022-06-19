package org.bson.codecs;

import org.bson.BsonBoolean;
import org.bson.BsonReader;
import org.bson.BsonWriter;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/BsonBooleanCodec.class */
public class BsonBooleanCodec implements Codec<BsonBoolean> {
    @Override // org.bson.codecs.Decoder
    public BsonBoolean decode(BsonReader bsonReader, DecoderContext decoderContext) {
        return BsonBoolean.valueOf(bsonReader.readBoolean());
    }

    public void encode(BsonWriter bsonWriter, BsonBoolean bsonBoolean, EncoderContext encoderContext) {
        bsonWriter.writeBoolean(bsonBoolean.getValue());
    }

    @Override // org.bson.codecs.Encoder
    public Class<BsonBoolean> getEncoderClass() {
        return BsonBoolean.class;
    }
}
