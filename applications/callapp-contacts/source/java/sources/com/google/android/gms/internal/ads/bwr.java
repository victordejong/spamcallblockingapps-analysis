package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bwr.class */
final /* synthetic */ class bwr implements Runnable {

    /* renamed from: a */
    private final biv f44971a;

    private bwr(biv bivVar) {
        this.f44971a = bivVar;
    }

    /* renamed from: a */
    public static Runnable m17594a(biv bivVar) {
        return new bwr(bivVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f44971a.m17822a();
    }
}
