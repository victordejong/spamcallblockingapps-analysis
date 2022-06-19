package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bst.class */
final /* synthetic */ class bst implements Runnable {

    /* renamed from: a */
    private final biv f44654a;

    private bst(biv bivVar) {
        this.f44654a = bivVar;
    }

    /* renamed from: a */
    public static Runnable m17616a(biv bivVar) {
        return new bst(bivVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f44654a.m17822a();
    }
}
