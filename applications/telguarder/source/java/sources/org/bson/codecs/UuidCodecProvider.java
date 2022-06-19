package org.bson.codecs;

import java.util.UUID;
import org.bson.UuidRepresentation;
import org.bson.codecs.configuration.CodecProvider;
import org.bson.codecs.configuration.CodecRegistry;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/UuidCodecProvider.class */
public class UuidCodecProvider implements CodecProvider {
    private UuidRepresentation uuidRepresentation;

    public UuidCodecProvider(UuidRepresentation uuidRepresentation) {
        this.uuidRepresentation = uuidRepresentation;
    }

    @Override // org.bson.codecs.configuration.CodecProvider
    public <T> Codec<T> get(Class<T> cls, CodecRegistry codecRegistry) {
        if (cls == UUID.class) {
            return new UuidCodec(this.uuidRepresentation);
        }
        return null;
    }
}
