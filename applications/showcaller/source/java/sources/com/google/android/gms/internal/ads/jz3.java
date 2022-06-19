package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/jz3.class */
public final class jz3<T> {

    /* renamed from: a */
    public final T f25035a;

    /* renamed from: b */
    public final oy3 f25036b;

    /* renamed from: c */
    public final zzwl f25037c;

    /* renamed from: d */
    public boolean f25038d;

    private jz3(zzwl zzwlVar) {
        this.f25038d = false;
        this.f25035a = null;
        this.f25036b = null;
        this.f25037c = zzwlVar;
    }

    private jz3(T t, oy3 oy3Var) {
        this.f25038d = false;
        this.f25035a = t;
        this.f25036b = oy3Var;
        this.f25037c = null;
    }

    /* renamed from: a */
    public static <T> jz3<T> m14011a(T t, oy3 oy3Var) {
        return new jz3<>(t, oy3Var);
    }

    /* renamed from: b */
    public static <T> jz3<T> m14010b(zzwl zzwlVar) {
        return new jz3<>(zzwlVar);
    }

    /* renamed from: c */
    public final boolean m14009c() {
        return this.f25037c == null;
    }
}
