package com.bumptech.glide.load;

import androidx.p023b.C0428a;
import androidx.p023b.C0441g;
import com.bumptech.glide.load.C3819g;
import com.bumptech.glide.p116g.C3632b;
import java.security.MessageDigest;
/* renamed from: com.bumptech.glide.load.h */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/h.class */
public final class C3822h implements AbstractC3818f {

    /* renamed from: b */
    private final C0428a<C3819g<?>, Object> f14182b = new C3632b();

    /* renamed from: a */
    public final <T> C3822h m37321a(C3819g<T> c3819g, T t) {
        this.f14182b.put(c3819g, t);
        return this;
    }

    /* renamed from: a */
    public final <T> T m37322a(C3819g<T> c3819g) {
        return this.f14182b.containsKey(c3819g) ? (T) this.f14182b.get(c3819g) : c3819g.f14178a;
    }

    /* renamed from: a */
    public final void m37320a(C3822h c3822h) {
        this.f14182b.mo37601a((C0441g<? extends C3819g<?>, ? extends Object>) c3822h.f14182b);
    }

    @Override // com.bumptech.glide.load.AbstractC3818f
    public final boolean equals(Object obj) {
        if (obj instanceof C3822h) {
            return this.f14182b.equals(((C3822h) obj).f14182b);
        }
        return false;
    }

    @Override // com.bumptech.glide.load.AbstractC3818f
    public final int hashCode() {
        return this.f14182b.hashCode();
    }

    public final String toString() {
        return "Options{values=" + this.f14182b + '}';
    }

    @Override // com.bumptech.glide.load.AbstractC3818f
    public final void updateDiskCacheKey(MessageDigest messageDigest) {
        for (int i = 0; i < this.f14182b.size(); i++) {
            C3819g<?> b = this.f14182b.m45517b(i);
            Object c = this.f14182b.m45515c(i);
            C3819g.AbstractC3821a<?> abstractC3821a = b.f14179b;
            if (b.f14181d == null) {
                b.f14181d = b.f14180c.getBytes(AbstractC3818f.f14176a);
            }
            abstractC3821a.mo37287a(b.f14181d, c, messageDigest);
        }
    }
}
