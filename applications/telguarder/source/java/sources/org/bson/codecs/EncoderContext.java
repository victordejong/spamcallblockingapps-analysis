package org.bson.codecs;

import org.bson.BsonWriter;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/EncoderContext.class */
public final class EncoderContext {
    private static final EncoderContext DEFAULT_CONTEXT = builder().build();
    private final boolean encodingCollectibleDocument;

    /* loaded from: classes-dex2jar.jar:org/bson/codecs/EncoderContext$Builder.class */
    public static final class Builder {
        private boolean encodingCollectibleDocument;

        private Builder() {
        }

        public EncoderContext build() {
            return new EncoderContext(this);
        }

        public Builder isEncodingCollectibleDocument(boolean z) {
            this.encodingCollectibleDocument = z;
            return this;
        }
    }

    private EncoderContext(Builder builder) {
        this.encodingCollectibleDocument = builder.encodingCollectibleDocument;
    }

    public static Builder builder() {
        return new Builder();
    }

    public <T> void encodeWithChildContext(Encoder<T> encoder, BsonWriter bsonWriter, T t) {
        encoder.encode(bsonWriter, t, DEFAULT_CONTEXT);
    }

    public EncoderContext getChildContext() {
        return DEFAULT_CONTEXT;
    }

    public boolean isEncodingCollectibleDocument() {
        return this.encodingCollectibleDocument;
    }
}
