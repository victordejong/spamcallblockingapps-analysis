package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bul.class */
final /* synthetic */ class bul implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final biv f25135a;

    private bul(biv bivVar) {
        this.f25135a = bivVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Runnable a(biv bivVar) {
        return new bul(bivVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f25135a.a();
    }
}
