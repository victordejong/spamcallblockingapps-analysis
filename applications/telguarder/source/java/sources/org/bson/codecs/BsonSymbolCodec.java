package org.bson.codecs;

import org.bson.BsonReader;
import org.bson.BsonSymbol;
import org.bson.BsonWriter;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/BsonSymbolCodec.class */
public class BsonSymbolCodec implements Codec<BsonSymbol> {
    @Override // org.bson.codecs.Decoder
    public BsonSymbol decode(BsonReader bsonReader, DecoderContext decoderContext) {
        return new BsonSymbol(bsonReader.readSymbol());
    }

    public void encode(BsonWriter bsonWriter, BsonSymbol bsonSymbol, EncoderContext encoderContext) {
        bsonWriter.writeSymbol(bsonSymbol.getSymbol());
    }

    @Override // org.bson.codecs.Encoder
    public Class<BsonSymbol> getEncoderClass() {
        return BsonSymbol.class;
    }
}
