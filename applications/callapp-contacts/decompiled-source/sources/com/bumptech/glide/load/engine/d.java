package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.f;
import java.security.MessageDigest;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/d.class */
final class d implements f {

    /* renamed from: b  reason: collision with root package name */
    private final f f7526b;

    /* renamed from: c  reason: collision with root package name */
    private final f f7527c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(f fVar, f fVar2) {
        this.f7526b = fVar;
        this.f7527c = fVar2;
    }

    @Override // com.bumptech.glide.load.f
    public final boolean equals(Object obj) {
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return this.f7526b.equals(dVar.f7526b) && this.f7527c.equals(dVar.f7527c);
    }

    @Override // com.bumptech.glide.load.f
    public final int hashCode() {
        return (this.f7526b.hashCode() * 31) + this.f7527c.hashCode();
    }

    public final String toString() {
        return "DataCacheKey{sourceKey=" + this.f7526b + ", signature=" + this.f7527c + '}';
    }

    @Override // com.bumptech.glide.load.f
    public final void updateDiskCacheKey(MessageDigest messageDigest) {
        this.f7526b.updateDiskCacheKey(messageDigest);
        this.f7527c.updateDiskCacheKey(messageDigest);
    }
}
