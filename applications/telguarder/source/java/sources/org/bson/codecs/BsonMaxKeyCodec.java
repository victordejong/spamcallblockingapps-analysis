package org.bson.codecs;

import org.bson.BsonMaxKey;
import org.bson.BsonReader;
import org.bson.BsonWriter;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/BsonMaxKeyCodec.class */
public class BsonMaxKeyCodec implements Codec<BsonMaxKey> {
    @Override // org.bson.codecs.Decoder
    public BsonMaxKey decode(BsonReader bsonReader, DecoderContext decoderContext) {
        bsonReader.readMaxKey();
        return new BsonMaxKey();
    }

    public void encode(BsonWriter bsonWriter, BsonMaxKey bsonMaxKey, EncoderContext encoderContext) {
        bsonWriter.writeMaxKey();
    }

    @Override // org.bson.codecs.Encoder
    public Class<BsonMaxKey> getEncoderClass() {
        return BsonMaxKey.class;
    }
}
