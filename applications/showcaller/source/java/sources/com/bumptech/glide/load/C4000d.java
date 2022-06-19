package com.bumptech.glide.load;

import com.bumptech.glide.p223p.C4382j;
import java.security.MessageDigest;
/* renamed from: com.bumptech.glide.load.d */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/d.class */
public final class C4000d<T> {

    /* renamed from: a */
    private static final AbstractC4002b<Object> f12634a = new C4001a();

    /* renamed from: b */
    private final T f12635b;

    /* renamed from: c */
    private final AbstractC4002b<T> f12636c;

    /* renamed from: d */
    private final String f12637d;

    /* renamed from: e */
    private volatile byte[] f12638e;

    /* renamed from: com.bumptech.glide.load.d$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/d$a.class */
    class C4001a implements AbstractC4002b<Object> {
        C4001a() {
        }

        @Override // com.bumptech.glide.load.C4000d.AbstractC4002b
        /* renamed from: a */
        public void mo22958a(byte[] bArr, Object obj, MessageDigest messageDigest) {
        }
    }

    /* renamed from: com.bumptech.glide.load.d$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/d$b.class */
    public interface AbstractC4002b<T> {
        /* renamed from: a */
        void mo22958a(byte[] bArr, T t, MessageDigest messageDigest);
    }

    private C4000d(String str, T t, AbstractC4002b<T> abstractC4002b) {
        this.f12637d = C4382j.m22721b(str);
        this.f12635b = t;
        this.f12636c = (AbstractC4002b) C4382j.m22719d(abstractC4002b);
    }

    /* renamed from: a */
    public static <T> C4000d<T> m23515a(String str, T t, AbstractC4002b<T> abstractC4002b) {
        return new C4000d<>(str, t, abstractC4002b);
    }

    /* renamed from: b */
    private static <T> AbstractC4002b<T> m23514b() {
        return (AbstractC4002b<T>) f12634a;
    }

    /* renamed from: d */
    private byte[] m23512d() {
        if (this.f12638e == null) {
            this.f12638e = this.f12637d.getBytes(AbstractC3999c.f12633a);
        }
        return this.f12638e;
    }

    /* renamed from: e */
    public static <T> C4000d<T> m23511e(String str) {
        return new C4000d<>(str, null, m23514b());
    }

    /* renamed from: f */
    public static <T> C4000d<T> m23510f(String str, T t) {
        return new C4000d<>(str, t, m23514b());
    }

    /* renamed from: c */
    public T m23513c() {
        return this.f12635b;
    }

    public boolean equals(Object obj) {
        if (obj instanceof C4000d) {
            return this.f12637d.equals(((C4000d) obj).f12637d);
        }
        return false;
    }

    /* renamed from: g */
    public void m23509g(T t, MessageDigest messageDigest) {
        this.f12636c.mo22958a(m23512d(), t, messageDigest);
    }

    public int hashCode() {
        return this.f12637d.hashCode();
    }

    public String toString() {
        return "Option{key='" + this.f12637d + "'}";
    }
}
