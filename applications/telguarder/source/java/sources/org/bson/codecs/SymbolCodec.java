package org.bson.codecs;

import org.bson.BsonReader;
import org.bson.BsonWriter;
import org.bson.types.Symbol;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/SymbolCodec.class */
public class SymbolCodec implements Codec<Symbol> {
    @Override // org.bson.codecs.Decoder
    public Symbol decode(BsonReader bsonReader, DecoderContext decoderContext) {
        return new Symbol(bsonReader.readSymbol());
    }

    public void encode(BsonWriter bsonWriter, Symbol symbol, EncoderContext encoderContext) {
        bsonWriter.writeSymbol(symbol.getSymbol());
    }

    @Override // org.bson.codecs.Encoder
    public Class<Symbol> getEncoderClass() {
        return Symbol.class;
    }
}
