package org.bson.codecs;

import org.bson.BsonDocument;
import org.bson.BsonDocumentWrapper;
import org.bson.BsonReader;
import org.bson.BsonWriter;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/BsonDocumentWrapperCodec.class */
public class BsonDocumentWrapperCodec implements Codec<BsonDocumentWrapper> {
    private final Codec<BsonDocument> bsonDocumentCodec;

    public BsonDocumentWrapperCodec(Codec<BsonDocument> codec) {
        this.bsonDocumentCodec = codec;
    }

    @Override // org.bson.codecs.Decoder
    public BsonDocumentWrapper decode(BsonReader bsonReader, DecoderContext decoderContext) {
        throw new UnsupportedOperationException("Decoding into a BsonDocumentWrapper is not allowed");
    }

    public void encode(BsonWriter bsonWriter, BsonDocumentWrapper bsonDocumentWrapper, EncoderContext encoderContext) {
        if (bsonDocumentWrapper.isUnwrapped()) {
            this.bsonDocumentCodec.encode(bsonWriter, bsonDocumentWrapper, encoderContext);
        } else {
            bsonDocumentWrapper.getEncoder().encode(bsonWriter, bsonDocumentWrapper.getWrappedDocument(), encoderContext);
        }
    }

    @Override // org.bson.codecs.Encoder
    public Class<BsonDocumentWrapper> getEncoderClass() {
        return BsonDocumentWrapper.class;
    }
}
