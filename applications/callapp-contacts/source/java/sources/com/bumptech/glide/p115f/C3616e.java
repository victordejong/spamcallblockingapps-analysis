package com.bumptech.glide.p115f;

import com.bumptech.glide.load.AbstractC3818f;
import com.bumptech.glide.p116g.C3643j;
import java.security.MessageDigest;
/* renamed from: com.bumptech.glide.f.e */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/f/e.class */
public final class C3616e implements AbstractC3818f {

    /* renamed from: b */
    private final Object f13728b;

    public C3616e(Object obj) {
        this.f13728b = C3643j.m37588a(obj, "Argument must not be null");
    }

    @Override // com.bumptech.glide.load.AbstractC3818f
    public final boolean equals(Object obj) {
        if (obj instanceof C3616e) {
            return this.f13728b.equals(((C3616e) obj).f13728b);
        }
        return false;
    }

    @Override // com.bumptech.glide.load.AbstractC3818f
    public final int hashCode() {
        return this.f13728b.hashCode();
    }

    public final String toString() {
        return "ObjectKey{object=" + this.f13728b + '}';
    }

    @Override // com.bumptech.glide.load.AbstractC3818f
    public final void updateDiskCacheKey(MessageDigest messageDigest) {
        messageDigest.update(this.f13728b.toString().getBytes(f14176a));
    }
}
