package com.google.android.gms.measurement.internal;

import android.os.Bundle;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/hd.class */
public final class hd implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Bundle f29746a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ hc f29747b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ hc f29748c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ long f29749d;
    final /* synthetic */ hk e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public hd(hk hkVar, Bundle bundle, hc hcVar, hc hcVar2, long j) {
        this.e = hkVar;
        this.f29746a = bundle;
        this.f29747b = hcVar;
        this.f29748c = hcVar2;
        this.f29749d = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        hk.a(this.e, this.f29746a, this.f29747b, this.f29748c, this.f29749d);
    }
}
