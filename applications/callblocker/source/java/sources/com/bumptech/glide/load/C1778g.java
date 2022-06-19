package com.bumptech.glide.load;

import com.bumptech.glide.p077h.C1456i;
import java.security.MessageDigest;
/* renamed from: com.bumptech.glide.load.g */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/g.class */
public final class C1778g<T> {

    /* renamed from: a */
    private static final AbstractC1780a<Object> f5411a = new AbstractC1780a<Object>() { // from class: com.bumptech.glide.load.g.1
        @Override // com.bumptech.glide.load.C1778g.AbstractC1780a
        /* renamed from: a */
        public void mo16325a(byte[] bArr, Object obj, MessageDigest messageDigest) {
        }
    };

    /* renamed from: b */
    private final T f5412b;

    /* renamed from: c */
    private final AbstractC1780a<T> f5413c;

    /* renamed from: d */
    private final String f5414d;

    /* renamed from: e */
    private volatile byte[] f5415e;

    /* renamed from: com.bumptech.glide.load.g$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/g$a.class */
    public interface AbstractC1780a<T> {
        /* renamed from: a */
        void mo16325a(byte[] bArr, T t, MessageDigest messageDigest);
    }

    private C1778g(String str, T t, AbstractC1780a<T> abstractC1780a) {
        this.f5414d = C1456i.m16987a(str);
        this.f5412b = t;
        this.f5413c = (AbstractC1780a) C1456i.m16989a(abstractC1780a);
    }

    /* renamed from: a */
    public static <T> C1778g<T> m16330a(String str) {
        return new C1778g<>(str, null, m16326c());
    }

    /* renamed from: a */
    public static <T> C1778g<T> m16329a(String str, T t) {
        return new C1778g<>(str, t, m16326c());
    }

    /* renamed from: a */
    public static <T> C1778g<T> m16328a(String str, T t, AbstractC1780a<T> abstractC1780a) {
        return new C1778g<>(str, t, abstractC1780a);
    }

    /* renamed from: b */
    private byte[] m16327b() {
        if (this.f5415e == null) {
            this.f5415e = this.f5414d.getBytes(AbstractC1777f.f5410a);
        }
        return this.f5415e;
    }

    /* renamed from: c */
    private static <T> AbstractC1780a<T> m16326c() {
        return (AbstractC1780a<T>) f5411a;
    }

    /* renamed from: a */
    public T m16332a() {
        return this.f5412b;
    }

    /* renamed from: a */
    public void m16331a(T t, MessageDigest messageDigest) {
        this.f5413c.mo16325a(m16327b(), t, messageDigest);
    }

    public boolean equals(Object obj) {
        return obj instanceof C1778g ? this.f5414d.equals(((C1778g) obj).f5414d) : false;
    }

    public int hashCode() {
        return this.f5414d.hashCode();
    }

    public String toString() {
        return "Option{key='" + this.f5414d + "'}";
    }
}
