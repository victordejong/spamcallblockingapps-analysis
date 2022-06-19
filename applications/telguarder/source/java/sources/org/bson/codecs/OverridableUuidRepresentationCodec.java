package org.bson.codecs;

import org.bson.UuidRepresentation;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/OverridableUuidRepresentationCodec.class */
public interface OverridableUuidRepresentationCodec<T> {
    Codec<T> withUuidRepresentation(UuidRepresentation uuidRepresentation);
}
