package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/y.class */
public final class y implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f29975a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ long f29976b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ ca f29977c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public y(ca caVar, String str, long j) {
        this.f29977c = caVar;
        this.f29975a = str;
        this.f29976b = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ca.b(this.f29977c, this.f29975a, this.f29976b);
    }
}
