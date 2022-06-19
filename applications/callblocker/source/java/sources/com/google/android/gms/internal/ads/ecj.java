package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ecj.class */
public final class ecj<T> {

    /* renamed from: a */
    public final T f16283a;

    /* renamed from: b */
    public final bzv f16284b;

    /* renamed from: c */
    public final zzae f16285c;

    /* renamed from: d */
    public boolean f16286d;

    private ecj(zzae zzaeVar) {
        this.f16286d = false;
        this.f16283a = null;
        this.f16284b = null;
        this.f16285c = zzaeVar;
    }

    private ecj(T t, bzv bzvVar) {
        this.f16286d = false;
        this.f16283a = t;
        this.f16284b = bzvVar;
        this.f16285c = null;
    }

    /* renamed from: a */
    public static <T> ecj<T> m7911a(zzae zzaeVar) {
        return new ecj<>(zzaeVar);
    }

    /* renamed from: a */
    public static <T> ecj<T> m7910a(T t, bzv bzvVar) {
        return new ecj<>(t, bzvVar);
    }
}
