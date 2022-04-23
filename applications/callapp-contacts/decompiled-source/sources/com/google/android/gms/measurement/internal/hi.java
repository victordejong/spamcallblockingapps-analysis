package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/hi.class */
public final class hi implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ hc f29761a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ long f29762b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ hk f29763c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public hi(hk hkVar, hc hcVar, long j) {
        this.f29763c = hkVar;
        this.f29761a = hcVar;
        this.f29762b = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f29763c.a(this.f29761a, false, this.f29762b);
        hk hkVar = this.f29763c;
        hkVar.f29766b = null;
        hkVar.t.m().a((hc) null);
    }
}
