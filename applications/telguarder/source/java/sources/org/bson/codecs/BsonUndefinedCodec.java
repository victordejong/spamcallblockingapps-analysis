package org.bson.codecs;

import org.bson.BsonReader;
import org.bson.BsonUndefined;
import org.bson.BsonWriter;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/BsonUndefinedCodec.class */
public class BsonUndefinedCodec implements Codec<BsonUndefined> {
    @Override // org.bson.codecs.Decoder
    public BsonUndefined decode(BsonReader bsonReader, DecoderContext decoderContext) {
        bsonReader.readUndefined();
        return new BsonUndefined();
    }

    public void encode(BsonWriter bsonWriter, BsonUndefined bsonUndefined, EncoderContext encoderContext) {
        bsonWriter.writeUndefined();
    }

    @Override // org.bson.codecs.Encoder
    public Class<BsonUndefined> getEncoderClass() {
        return BsonUndefined.class;
    }
}
