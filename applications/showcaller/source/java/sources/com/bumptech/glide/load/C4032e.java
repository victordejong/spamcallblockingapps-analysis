package com.bumptech.glide.load;

import com.bumptech.glide.p223p.C4371b;
import java.security.MessageDigest;
import p020b.p036e.C1489a;
/* renamed from: com.bumptech.glide.load.e */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/e.class */
public final class C4032e implements AbstractC3999c {

    /* renamed from: b */
    private final C1489a<C4000d<?>, Object> f12682b = new C4371b();

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: f */
    private static <T> void m23454f(C4000d<T> c4000d, Object obj, MessageDigest messageDigest) {
        c4000d.m23509g(obj, messageDigest);
    }

    @Override // com.bumptech.glide.load.AbstractC3999c
    /* renamed from: a */
    public void mo22754a(MessageDigest messageDigest) {
        for (int i = 0; i < this.f12682b.size(); i++) {
            m23454f(this.f12682b.m29910i(i), this.f12682b.m29909m(i), messageDigest);
        }
    }

    /* renamed from: c */
    public <T> T m23457c(C4000d<T> c4000d) {
        return this.f12682b.containsKey(c4000d) ? this.f12682b.get(c4000d) : c4000d.m23513c();
    }

    /* renamed from: d */
    public void m23456d(C4032e c4032e) {
        this.f12682b.mo22747j(c4032e.f12682b);
    }

    /* renamed from: e */
    public <T> C4032e m23455e(C4000d<T> c4000d, T t) {
        this.f12682b.put(c4000d, t);
        return this;
    }

    @Override // com.bumptech.glide.load.AbstractC3999c
    public boolean equals(Object obj) {
        if (obj instanceof C4032e) {
            return this.f12682b.equals(((C4032e) obj).f12682b);
        }
        return false;
    }

    @Override // com.bumptech.glide.load.AbstractC3999c
    public int hashCode() {
        return this.f12682b.hashCode();
    }

    public String toString() {
        return "Options{values=" + this.f12682b + '}';
    }
}
