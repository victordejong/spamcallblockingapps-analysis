package org.bson.internal;

import org.bson.codecs.Codec;
import org.bson.codecs.configuration.CodecRegistry;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:org/bson/internal/CycleDetectingCodecRegistry.class */
public interface CycleDetectingCodecRegistry extends CodecRegistry {
    <T> Codec<T> get(ChildCodecRegistry<T> childCodecRegistry);
}
