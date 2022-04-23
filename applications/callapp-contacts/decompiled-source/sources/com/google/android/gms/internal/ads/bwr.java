package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bwr.class */
final /* synthetic */ class bwr implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final biv f25291a;

    private bwr(biv bivVar) {
        this.f25291a = bivVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Runnable a(biv bivVar) {
        return new bwr(bivVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f25291a.a();
    }
}
