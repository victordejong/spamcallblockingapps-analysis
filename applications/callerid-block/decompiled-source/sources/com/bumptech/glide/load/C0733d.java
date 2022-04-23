package com.bumptech.glide.load;

import com.bumptech.glide.p029o.C0856j;
import java.security.MessageDigest;
/* renamed from: com.bumptech.glide.load.d */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/d.class */
public final class C0733d<T> {

    /* renamed from: e */
    private static final AbstractC0734b<Object> f3506e = new a();

    /* renamed from: a */
    private final T f3507a;

    /* renamed from: b */
    private final AbstractC0734b<T> f3508b;

    /* renamed from: c */
    private final String f3509c;

    /* renamed from: d */
    private volatile byte[] f3510d;

    /* renamed from: com.bumptech.glide.load.d$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/d$b.class */
    public interface AbstractC0734b<T> {
        /* renamed from: a */
        void m11193a(byte[] bArr, T t, MessageDigest messageDigest);
    }

    private C0733d(String str, T t, AbstractC0734b<T> bVar) {
        C0856j.m10761b(str);
        this.f3509c = str;
        this.f3507a = t;
        C0856j.m10759d(bVar);
        this.f3508b = bVar;
    }

    /* renamed from: a */
    public static <T> C0733d<T> m11200a(String str, T t, AbstractC0734b<T> bVar) {
        return new C0733d<>(str, t, bVar);
    }

    /* renamed from: b */
    private static <T> AbstractC0734b<T> m11199b() {
        return (AbstractC0734b<T>) f3506e;
    }

    /* renamed from: d */
    private byte[] m11197d() {
        if (this.f3510d == null) {
            this.f3510d = this.f3509c.getBytes(AbstractC0732c.f3505a);
        }
        return this.f3510d;
    }

    /* renamed from: e */
    public static <T> C0733d<T> m11196e(String str) {
        return new C0733d<>(str, null, m11199b());
    }

    /* renamed from: f */
    public static <T> C0733d<T> m11195f(String str, T t) {
        return new C0733d<>(str, t, m11199b());
    }

    /* renamed from: c */
    public T m11198c() {
        return this.f3507a;
    }

    public boolean equals(Object obj) {
        if (obj instanceof C0733d) {
            return this.f3509c.equals(((C0733d) obj).f3509c);
        }
        return false;
    }

    /* renamed from: g */
    public void m11194g(T t, MessageDigest messageDigest) {
        this.f3508b.m11193a(m11197d(), t, messageDigest);
    }

    public int hashCode() {
        return this.f3509c.hashCode();
    }

    public String toString() {
        return "Option{key='" + this.f3509c + "'}";
    }
}
