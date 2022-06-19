package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bul.class */
final /* synthetic */ class bul implements Runnable {

    /* renamed from: a */
    private final biv f44782a;

    private bul(biv bivVar) {
        this.f44782a = bivVar;
    }

    /* renamed from: a */
    public static Runnable m17605a(biv bivVar) {
        return new bul(bivVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f44782a.m17822a();
    }
}
