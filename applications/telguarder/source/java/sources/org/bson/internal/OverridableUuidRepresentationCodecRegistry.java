package org.bson.internal;

import org.bson.UuidRepresentation;
import org.bson.assertions.Assertions;
import org.bson.codecs.Codec;
import org.bson.codecs.OverridableUuidRepresentationCodec;
import org.bson.codecs.configuration.CodecProvider;
/* loaded from: classes-dex2jar.jar:org/bson/internal/OverridableUuidRepresentationCodecRegistry.class */
public class OverridableUuidRepresentationCodecRegistry implements CycleDetectingCodecRegistry {
    private final CodecCache codecCache = new CodecCache();
    private final UuidRepresentation uuidRepresentation;
    private final CodecProvider wrapped;

    public OverridableUuidRepresentationCodecRegistry(CodecProvider codecProvider, UuidRepresentation uuidRepresentation) {
        this.uuidRepresentation = (UuidRepresentation) Assertions.notNull("uuidRepresentation", uuidRepresentation);
        this.wrapped = (CodecProvider) Assertions.notNull("wrapped", codecProvider);
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        OverridableUuidRepresentationCodecRegistry overridableUuidRepresentationCodecRegistry = (OverridableUuidRepresentationCodecRegistry) obj;
        if (!this.wrapped.equals(overridableUuidRepresentationCodecRegistry.wrapped)) {
            return false;
        }
        if (this.uuidRepresentation != overridableUuidRepresentationCodecRegistry.uuidRepresentation) {
            z = false;
        }
        return z;
    }

    @Override // org.bson.codecs.configuration.CodecRegistry
    public <T> Codec<T> get(Class<T> cls) {
        return get(new ChildCodecRegistry<>(this, cls));
    }

    @Override // org.bson.internal.CycleDetectingCodecRegistry
    public <T> Codec<T> get(ChildCodecRegistry<T> childCodecRegistry) {
        if (!this.codecCache.containsKey(childCodecRegistry.getCodecClass())) {
            Codec<?> codec = this.wrapped.get(childCodecRegistry.getCodecClass(), childCodecRegistry);
            Codec<T> codec2 = codec;
            if (codec instanceof OverridableUuidRepresentationCodec) {
                codec2 = ((OverridableUuidRepresentationCodec) codec).withUuidRepresentation(this.uuidRepresentation);
            }
            this.codecCache.put(childCodecRegistry.getCodecClass(), codec2);
        }
        return this.codecCache.getOrThrow(childCodecRegistry.getCodecClass());
    }

    public UuidRepresentation getUuidRepresentation() {
        return this.uuidRepresentation;
    }

    public CodecProvider getWrapped() {
        return this.wrapped;
    }

    public int hashCode() {
        return (this.wrapped.hashCode() * 31) + this.uuidRepresentation.hashCode();
    }
}
