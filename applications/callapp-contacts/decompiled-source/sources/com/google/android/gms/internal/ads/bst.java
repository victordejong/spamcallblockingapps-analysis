package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bst.class */
final /* synthetic */ class bst implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final biv f25023a;

    private bst(biv bivVar) {
        this.f25023a = bivVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Runnable a(biv bivVar) {
        return new bst(bivVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f25023a.a();
    }
}
