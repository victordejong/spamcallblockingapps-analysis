package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dti.class */
public final class dti implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ dtg f27197a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dti(dtg dtgVar) {
        this.f27197a = dtgVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        dtg.a(this.f27197a);
    }
}
