package org.bson.codecs;

import org.bson.BsonMinKey;
import org.bson.BsonReader;
import org.bson.BsonWriter;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/BsonMinKeyCodec.class */
public class BsonMinKeyCodec implements Codec<BsonMinKey> {
    @Override // org.bson.codecs.Decoder
    public BsonMinKey decode(BsonReader bsonReader, DecoderContext decoderContext) {
        bsonReader.readMinKey();
        return new BsonMinKey();
    }

    public void encode(BsonWriter bsonWriter, BsonMinKey bsonMinKey, EncoderContext encoderContext) {
        bsonWriter.writeMinKey();
    }

    @Override // org.bson.codecs.Encoder
    public Class<BsonMinKey> getEncoderClass() {
        return BsonMinKey.class;
    }
}
