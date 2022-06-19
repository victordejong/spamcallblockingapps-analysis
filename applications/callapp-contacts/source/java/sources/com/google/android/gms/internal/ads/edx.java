package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/edx.class */
public final class edx implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ int f48825a;

    /* renamed from: b */
    private final /* synthetic */ long f48826b;

    /* renamed from: c */
    private final /* synthetic */ edt f48827c;

    public edx(edt edtVar, int i, long j) {
        this.f48827c = edtVar;
        this.f48825a = i;
        this.f48826b = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f48827c.f48818b.mo15137a(this.f48825a);
    }
}
