package org.bson.codecs;

import org.bson.BsonReader;
import org.bson.BsonWriter;
import org.bson.types.Code;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/CodeCodec.class */
public class CodeCodec implements Codec<Code> {
    @Override // org.bson.codecs.Decoder
    public Code decode(BsonReader bsonReader, DecoderContext decoderContext) {
        return new Code(bsonReader.readJavaScript());
    }

    public void encode(BsonWriter bsonWriter, Code code, EncoderContext encoderContext) {
        bsonWriter.writeJavaScript(code.getCode());
    }

    @Override // org.bson.codecs.Encoder
    public Class<Code> getEncoderClass() {
        return Code.class;
    }
}
