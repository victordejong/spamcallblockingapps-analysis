package com.bumptech.glide.load.engine;

import android.support.annotation.NonNull;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.util.Preconditions;
import java.security.MessageDigest;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/EngineKey.class */
class EngineKey implements Key {
    private int hashCode;
    private final int height;
    private final Object model;
    private final Options options;
    private final Class<?> resourceClass;
    private final Key signature;
    private final Class<?> transcodeClass;
    private final Map<Class<?>, Transformation<?>> transformations;
    private final int width;

    /* JADX INFO: Access modifiers changed from: package-private */
    public EngineKey(Object obj, Key key, int i, int i2, Map<Class<?>, Transformation<?>> map, Class<?> cls, Class<?> cls2, Options options) {
        this.model = Preconditions.checkNotNull(obj);
        this.signature = (Key) Preconditions.checkNotNull(key, "Signature must not be null");
        this.width = i;
        this.height = i2;
        this.transformations = (Map) Preconditions.checkNotNull(map);
        this.resourceClass = (Class) Preconditions.checkNotNull(cls, "Resource class must not be null");
        this.transcodeClass = (Class) Preconditions.checkNotNull(cls2, "Transcode class must not be null");
        this.options = (Options) Preconditions.checkNotNull(options);
    }

    @Override // com.bumptech.glide.load.Key
    public boolean equals(Object obj) {
        if (!(obj instanceof EngineKey)) {
            return false;
        }
        EngineKey engineKey = (EngineKey) obj;
        boolean z = false;
        if (this.model.equals(engineKey.model)) {
            z = false;
            if (this.signature.equals(engineKey.signature)) {
                z = false;
                if (this.height == engineKey.height) {
                    z = false;
                    if (this.width == engineKey.width) {
                        z = false;
                        if (this.transformations.equals(engineKey.transformations)) {
                            z = false;
                            if (this.resourceClass.equals(engineKey.resourceClass)) {
                                z = false;
                                if (this.transcodeClass.equals(engineKey.transcodeClass)) {
                                    z = false;
                                    if (this.options.equals(engineKey.options)) {
                                        z = true;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return z;
    }

    @Override // com.bumptech.glide.load.Key
    public int hashCode() {
        if (this.hashCode == 0) {
            this.hashCode = this.model.hashCode();
            this.hashCode = (this.hashCode * 31) + this.signature.hashCode();
            this.hashCode = (this.hashCode * 31) + this.width;
            this.hashCode = (this.hashCode * 31) + this.height;
            this.hashCode = (this.hashCode * 31) + this.transformations.hashCode();
            this.hashCode = (this.hashCode * 31) + this.resourceClass.hashCode();
            this.hashCode = (this.hashCode * 31) + this.transcodeClass.hashCode();
            this.hashCode = (this.hashCode * 31) + this.options.hashCode();
        }
        return this.hashCode;
    }

    public String toString() {
        return "EngineKey{model=" + this.model + ", width=" + this.width + ", height=" + this.height + ", resourceClass=" + this.resourceClass + ", transcodeClass=" + this.transcodeClass + ", signature=" + this.signature + ", hashCode=" + this.hashCode + ", transformations=" + this.transformations + ", options=" + this.options + '}';
    }

    @Override // com.bumptech.glide.load.Key
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        throw new UnsupportedOperationException();
    }
}
