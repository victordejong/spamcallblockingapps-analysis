package com.bumptech.glide.load;

import com.bumptech.glide.g.j;
import java.security.MessageDigest;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/g.class */
public final class g<T> {
    private static final a<Object> e = new a<Object>() { // from class: com.bumptech.glide.load.g.1
        @Override // com.bumptech.glide.load.g.a
        public final void a(byte[] bArr, Object obj, MessageDigest messageDigest) {
        }
    };

    /* renamed from: a  reason: collision with root package name */
    final T f7620a;

    /* renamed from: b  reason: collision with root package name */
    final a<T> f7621b;

    /* renamed from: c  reason: collision with root package name */
    final String f7622c;

    /* renamed from: d  reason: collision with root package name */
    volatile byte[] f7623d;

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/g$a.class */
    public interface a<T> {
        void a(byte[] bArr, T t, MessageDigest messageDigest);
    }

    private g(String str, T t, a<T> aVar) {
        this.f7622c = j.a(str);
        this.f7620a = t;
        this.f7621b = (a) j.a(aVar, "Argument must not be null");
    }

    public static <T> g<T> a(String str) {
        return new g<>(str, null, e);
    }

    public static <T> g<T> a(String str, T t) {
        return new g<>(str, t, e);
    }

    public static <T> g<T> a(String str, T t, a<T> aVar) {
        return new g<>(str, t, aVar);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof g) {
            return this.f7622c.equals(((g) obj).f7622c);
        }
        return false;
    }

    public final int hashCode() {
        return this.f7622c.hashCode();
    }

    public final String toString() {
        return "Option{key='" + this.f7622c + "'}";
    }
}
