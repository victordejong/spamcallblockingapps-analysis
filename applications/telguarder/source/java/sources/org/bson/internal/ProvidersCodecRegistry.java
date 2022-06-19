package org.bson.internal;

import java.util.ArrayList;
import java.util.List;
import org.bson.assertions.Assertions;
import org.bson.codecs.Codec;
import org.bson.codecs.configuration.CodecProvider;
import org.bson.codecs.configuration.CodecRegistry;
/* loaded from: classes-dex2jar.jar:org/bson/internal/ProvidersCodecRegistry.class */
public final class ProvidersCodecRegistry implements CodecRegistry, CodecProvider, CycleDetectingCodecRegistry {
    private final CodecCache codecCache = new CodecCache();
    private final List<CodecProvider> codecProviders;

    public ProvidersCodecRegistry(List<? extends CodecProvider> list) {
        Assertions.isTrueArgument("codecProviders must not be null or empty", list != null && list.size() > 0);
        this.codecProviders = new ArrayList(list);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ProvidersCodecRegistry providersCodecRegistry = (ProvidersCodecRegistry) obj;
        if (this.codecProviders.size() != providersCodecRegistry.codecProviders.size()) {
            return false;
        }
        for (int i = 0; i < this.codecProviders.size(); i++) {
            if (this.codecProviders.get(i).getClass() != providersCodecRegistry.codecProviders.get(i).getClass()) {
                return false;
            }
        }
        return true;
    }

    @Override // org.bson.codecs.configuration.CodecRegistry
    public <T> Codec<T> get(Class<T> cls) {
        return get(new ChildCodecRegistry<>(this, cls));
    }

    @Override // org.bson.codecs.configuration.CodecProvider
    public <T> Codec<T> get(Class<T> cls, CodecRegistry codecRegistry) {
        for (CodecProvider codecProvider : this.codecProviders) {
            Codec<T> codec = codecProvider.get(cls, codecRegistry);
            if (codec != null) {
                return codec;
            }
        }
        return null;
    }

    @Override // org.bson.internal.CycleDetectingCodecRegistry
    public <T> Codec<T> get(ChildCodecRegistry<T> childCodecRegistry) {
        if (!this.codecCache.containsKey(childCodecRegistry.getCodecClass())) {
            for (CodecProvider codecProvider : this.codecProviders) {
                Codec<T> codec = codecProvider.get(childCodecRegistry.getCodecClass(), childCodecRegistry);
                if (codec != null) {
                    this.codecCache.put(childCodecRegistry.getCodecClass(), codec);
                    return codec;
                }
            }
            this.codecCache.put(childCodecRegistry.getCodecClass(), null);
        }
        return this.codecCache.getOrThrow(childCodecRegistry.getCodecClass());
    }

    public int hashCode() {
        return this.codecProviders.hashCode();
    }
}
