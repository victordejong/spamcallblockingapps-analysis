package com.bumptech.glide.load;

import com.bumptech.glide.p116g.C3643j;
import java.security.MessageDigest;
/* renamed from: com.bumptech.glide.load.g */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/g.class */
public final class C3819g<T> {

    /* renamed from: e */
    private static final AbstractC3821a<Object> f14177e = new AbstractC3821a<Object>() { // from class: com.bumptech.glide.load.g.1
        @Override // com.bumptech.glide.load.C3819g.AbstractC3821a
        /* renamed from: a */
        public final void mo37287a(byte[] bArr, Object obj, MessageDigest messageDigest) {
        }
    };

    /* renamed from: a */
    final T f14178a;

    /* renamed from: b */
    final AbstractC3821a<T> f14179b;

    /* renamed from: c */
    final String f14180c;

    /* renamed from: d */
    volatile byte[] f14181d;

    /* renamed from: com.bumptech.glide.load.g$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/g$a.class */
    public interface AbstractC3821a<T> {
        /* renamed from: a */
        void mo37287a(byte[] bArr, T t, MessageDigest messageDigest);
    }

    private C3819g(String str, T t, AbstractC3821a<T> abstractC3821a) {
        this.f14180c = C3643j.m37587a(str);
        this.f14178a = t;
        this.f14179b = (AbstractC3821a) C3643j.m37588a(abstractC3821a, "Argument must not be null");
    }

    /* renamed from: a */
    public static <T> C3819g<T> m37325a(String str) {
        return new C3819g<>(str, null, f14177e);
    }

    /* renamed from: a */
    public static <T> C3819g<T> m37324a(String str, T t) {
        return new C3819g<>(str, t, f14177e);
    }

    /* renamed from: a */
    public static <T> C3819g<T> m37323a(String str, T t, AbstractC3821a<T> abstractC3821a) {
        return new C3819g<>(str, t, abstractC3821a);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C3819g) {
            return this.f14180c.equals(((C3819g) obj).f14180c);
        }
        return false;
    }

    public final int hashCode() {
        return this.f14180c.hashCode();
    }

    public final String toString() {
        return "Option{key='" + this.f14180c + "'}";
    }
}
