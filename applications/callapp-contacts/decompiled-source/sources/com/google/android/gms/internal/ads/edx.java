package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/edx.class */
final class edx implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ int f27703a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ long f27704b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ edt f27705c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public edx(edt edtVar, int i, long j) {
        this.f27705c = edtVar;
        this.f27703a = i;
        this.f27704b = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f27705c.f27696b.a(this.f27703a);
    }
}
