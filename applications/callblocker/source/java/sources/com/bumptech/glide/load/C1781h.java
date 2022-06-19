package com.bumptech.glide.load;

import androidx.p013b.C0373a;
import androidx.p013b.C0386g;
import com.bumptech.glide.p077h.C1449b;
import java.security.MessageDigest;
/* renamed from: com.bumptech.glide.load.h */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/h.class */
public final class C1781h implements AbstractC1777f {

    /* renamed from: b */
    private final C0373a<C1778g<?>, Object> f5416b = new C1449b();

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private static <T> void m16322a(C1778g<T> c1778g, Object obj, MessageDigest messageDigest) {
        c1778g.m16331a((C1778g<T>) obj, messageDigest);
    }

    /* renamed from: a */
    public <T> C1781h m16323a(C1778g<T> c1778g, T t) {
        this.f5416b.put(c1778g, t);
        return this;
    }

    /* renamed from: a */
    public <T> T m16324a(C1778g<T> c1778g) {
        return this.f5416b.containsKey(c1778g) ? this.f5416b.get(c1778g) : c1778g.m16332a();
    }

    /* renamed from: a */
    public void m16321a(C1781h c1781h) {
        this.f5416b.mo17010a((C0386g<? extends C1778g<?>, ? extends Object>) c1781h.f5416b);
    }

    @Override // com.bumptech.glide.load.AbstractC1777f
    /* renamed from: a */
    public void mo16320a(MessageDigest messageDigest) {
        for (int i = 0; i < this.f5416b.size(); i++) {
            m16322a(this.f5416b.m21085b(i), this.f5416b.m21083c(i), messageDigest);
        }
    }

    @Override // com.bumptech.glide.load.AbstractC1777f
    public boolean equals(Object obj) {
        return obj instanceof C1781h ? this.f5416b.equals(((C1781h) obj).f5416b) : false;
    }

    @Override // com.bumptech.glide.load.AbstractC1777f
    public int hashCode() {
        return this.f5416b.hashCode();
    }

    public String toString() {
        return "Options{values=" + this.f5416b + '}';
    }
}
