package org.bson.codecs;

import org.bson.BsonReader;
import org.bson.BsonWriter;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/BooleanCodec.class */
public class BooleanCodec implements Codec<Boolean> {
    @Override // org.bson.codecs.Decoder
    public Boolean decode(BsonReader bsonReader, DecoderContext decoderContext) {
        return Boolean.valueOf(bsonReader.readBoolean());
    }

    public void encode(BsonWriter bsonWriter, Boolean bool, EncoderContext encoderContext) {
        bsonWriter.writeBoolean(bool.booleanValue());
    }

    @Override // org.bson.codecs.Encoder
    public Class<Boolean> getEncoderClass() {
        return Boolean.class;
    }
}
