package org.bson.internal;

import org.bson.codecs.Codec;
import org.bson.codecs.configuration.CodecRegistry;
/* loaded from: classes-dex2jar.jar:org/bson/internal/ChildCodecRegistry.class */
class ChildCodecRegistry<T> implements CodecRegistry {
    private final Class<T> codecClass;
    private final ChildCodecRegistry<?> parent;
    private final CycleDetectingCodecRegistry registry;

    private ChildCodecRegistry(ChildCodecRegistry<?> childCodecRegistry, Class<T> cls) {
        this.parent = childCodecRegistry;
        this.codecClass = cls;
        this.registry = childCodecRegistry.registry;
    }

    public ChildCodecRegistry(CycleDetectingCodecRegistry cycleDetectingCodecRegistry, Class<T> cls) {
        this.codecClass = cls;
        this.parent = null;
        this.registry = cycleDetectingCodecRegistry;
    }

    private <U> Boolean hasCycles(Class<U> cls) {
        ChildCodecRegistry childCodecRegistry = this;
        while (true) {
            ChildCodecRegistry childCodecRegistry2 = childCodecRegistry;
            if (childCodecRegistry2 != null) {
                if (childCodecRegistry2.codecClass.equals(cls)) {
                    return true;
                }
                childCodecRegistry = childCodecRegistry2.parent;
            } else {
                return false;
            }
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ChildCodecRegistry childCodecRegistry = (ChildCodecRegistry) obj;
        if (!this.codecClass.equals(childCodecRegistry.codecClass)) {
            return false;
        }
        ChildCodecRegistry<?> childCodecRegistry2 = this.parent;
        if (childCodecRegistry2 != null) {
            if (!childCodecRegistry2.equals(childCodecRegistry.parent)) {
                return false;
            }
        } else if (childCodecRegistry.parent != null) {
            return false;
        }
        return this.registry.equals(childCodecRegistry.registry);
    }

    @Override // org.bson.codecs.configuration.CodecRegistry
    public <U> Codec<U> get(Class<U> cls) {
        return hasCycles(cls).booleanValue() ? new LazyCodec(this.registry, cls) : this.registry.get(new ChildCodecRegistry<>((ChildCodecRegistry<?>) this, (Class) cls));
    }

    public Class<T> getCodecClass() {
        return this.codecClass;
    }

    public int hashCode() {
        ChildCodecRegistry<?> childCodecRegistry = this.parent;
        return ((((childCodecRegistry != null ? childCodecRegistry.hashCode() : 0) * 31) + this.registry.hashCode()) * 31) + this.codecClass.hashCode();
    }
}
