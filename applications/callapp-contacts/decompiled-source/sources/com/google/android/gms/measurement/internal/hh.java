package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/hh.class */
public final class hh implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ long f29759a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ hk f29760b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public hh(hk hkVar, long j) {
        this.f29760b = hkVar;
        this.f29759a = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f29760b.t.p().a(this.f29759a);
        this.f29760b.f29766b = null;
    }
}
