package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.AbstractC3818f;
import java.security.MessageDigest;
/* renamed from: com.bumptech.glide.load.engine.d */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/d.class */
final class C3766d implements AbstractC3818f {

    /* renamed from: b */
    private final AbstractC3818f f13984b;

    /* renamed from: c */
    private final AbstractC3818f f13985c;

    public C3766d(AbstractC3818f abstractC3818f, AbstractC3818f abstractC3818f2) {
        this.f13984b = abstractC3818f;
        this.f13985c = abstractC3818f2;
    }

    @Override // com.bumptech.glide.load.AbstractC3818f
    public final boolean equals(Object obj) {
        if (obj instanceof C3766d) {
            C3766d c3766d = (C3766d) obj;
            return this.f13984b.equals(c3766d.f13984b) && this.f13985c.equals(c3766d.f13985c);
        }
        return false;
    }

    @Override // com.bumptech.glide.load.AbstractC3818f
    public final int hashCode() {
        return (this.f13984b.hashCode() * 31) + this.f13985c.hashCode();
    }

    public final String toString() {
        return "DataCacheKey{sourceKey=" + this.f13984b + ", signature=" + this.f13985c + '}';
    }

    @Override // com.bumptech.glide.load.AbstractC3818f
    public final void updateDiskCacheKey(MessageDigest messageDigest) {
        this.f13984b.updateDiskCacheKey(messageDigest);
        this.f13985c.updateDiskCacheKey(messageDigest);
    }
}
