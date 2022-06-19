package org.bson.internal;

import org.bson.UuidRepresentation;
import org.bson.codecs.configuration.CodecConfigurationException;
import org.bson.codecs.configuration.CodecProvider;
import org.bson.codecs.configuration.CodecRegistry;
/* loaded from: classes-dex2jar.jar:org/bson/internal/CodecRegistryHelper.class */
public final class CodecRegistryHelper {
    private CodecRegistryHelper() {
    }

    public static CodecRegistry createRegistry(CodecRegistry codecRegistry, UuidRepresentation uuidRepresentation) {
        OverridableUuidRepresentationCodecRegistry overridableUuidRepresentationCodecRegistry = codecRegistry;
        if (uuidRepresentation != UuidRepresentation.JAVA_LEGACY) {
            if (!(codecRegistry instanceof CodecProvider)) {
                throw new CodecConfigurationException("Changing the default UuidRepresentation requires a CodecRegistry that also implements the CodecProvider interface");
            }
            overridableUuidRepresentationCodecRegistry = new OverridableUuidRepresentationCodecRegistry((CodecProvider) codecRegistry, uuidRepresentation);
        }
        return overridableUuidRepresentationCodecRegistry;
    }
}
