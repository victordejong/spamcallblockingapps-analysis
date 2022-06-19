package org.bson.codecs;

import org.bson.BsonReader;
import org.bson.BsonWriter;
import org.bson.types.MinKey;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/MinKeyCodec.class */
public class MinKeyCodec implements Codec<MinKey> {
    @Override // org.bson.codecs.Decoder
    public MinKey decode(BsonReader bsonReader, DecoderContext decoderContext) {
        bsonReader.readMinKey();
        return new MinKey();
    }

    public void encode(BsonWriter bsonWriter, MinKey minKey, EncoderContext encoderContext) {
        bsonWriter.writeMinKey();
    }

    @Override // org.bson.codecs.Encoder
    public Class<MinKey> getEncoderClass() {
        return MinKey.class;
    }
}
