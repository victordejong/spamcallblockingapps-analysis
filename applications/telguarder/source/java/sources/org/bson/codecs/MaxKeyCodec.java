package org.bson.codecs;

import org.bson.BsonReader;
import org.bson.BsonWriter;
import org.bson.types.MaxKey;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/MaxKeyCodec.class */
public class MaxKeyCodec implements Codec<MaxKey> {
    @Override // org.bson.codecs.Decoder
    public MaxKey decode(BsonReader bsonReader, DecoderContext decoderContext) {
        bsonReader.readMaxKey();
        return new MaxKey();
    }

    public void encode(BsonWriter bsonWriter, MaxKey maxKey, EncoderContext encoderContext) {
        bsonWriter.writeMaxKey();
    }

    @Override // org.bson.codecs.Encoder
    public Class<MaxKey> getEncoderClass() {
        return MaxKey.class;
    }
}
