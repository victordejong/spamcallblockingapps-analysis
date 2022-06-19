package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcjk.class */
public class zzcjk extends Exception {

    /* renamed from: a */
    private final int f17735a;

    public zzcjk(int i) {
        this.f17735a = i;
    }

    public zzcjk(String str, int i) {
        super(str);
        this.f17735a = i;
    }

    public zzcjk(String str, Throwable th, int i) {
        super(str, th);
        this.f17735a = 0;
    }

    /* renamed from: a */
    public static int m6639a(Throwable th) {
        return th instanceof zzcjk ? ((zzcjk) th).f17735a : th instanceof zzayd ? ((zzayd) th).m6641a() : 0;
    }

    /* renamed from: a */
    public final int m6640a() {
        return this.f17735a;
    }
}
