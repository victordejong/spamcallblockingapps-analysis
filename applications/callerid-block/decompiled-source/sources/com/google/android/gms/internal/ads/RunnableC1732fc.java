package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.fc */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/fc.class */
final /* synthetic */ class RunnableC1732fc implements Runnable {

    /* renamed from: b */
    private final pb f6485b;

    private RunnableC1732fc(pb pbVar) {
        this.f6485b = pbVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static Runnable m7555a(pb pbVar) {
        return new RunnableC1732fc(pbVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f6485b.i();
    }
}
