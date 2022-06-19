package org.bson.codecs;

import org.bson.BsonReader;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/DecoderContext.class */
public final class DecoderContext {
    private static final DecoderContext DEFAULT_CONTEXT = builder().build();
    private final boolean checkedDiscriminator;

    /* loaded from: classes-dex2jar.jar:org/bson/codecs/DecoderContext$Builder.class */
    public static final class Builder {
        private boolean checkedDiscriminator;

        private Builder() {
        }

        public DecoderContext build() {
            return new DecoderContext(this);
        }

        public Builder checkedDiscriminator(boolean z) {
            this.checkedDiscriminator = z;
            return this;
        }

        public boolean hasCheckedDiscriminator() {
            return this.checkedDiscriminator;
        }
    }

    private DecoderContext(Builder builder) {
        this.checkedDiscriminator = builder.hasCheckedDiscriminator();
    }

    public static Builder builder() {
        return new Builder();
    }

    public <T> T decodeWithChildContext(Decoder<T> decoder, BsonReader bsonReader) {
        return decoder.decode(bsonReader, DEFAULT_CONTEXT);
    }

    public boolean hasCheckedDiscriminator() {
        return this.checkedDiscriminator;
    }
}
