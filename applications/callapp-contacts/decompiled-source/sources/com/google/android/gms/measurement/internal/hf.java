package com.google.android.gms.measurement.internal;

import android.os.Bundle;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/hf.class */
public final class hf implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ hc f29754a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ hc f29755b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ long f29756c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ boolean f29757d;
    final /* synthetic */ hk e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public hf(hk hkVar, hc hcVar, hc hcVar2, long j, boolean z) {
        this.e = hkVar;
        this.f29754a = hcVar;
        this.f29755b = hcVar2;
        this.f29756c = j;
        this.f29757d = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.e.a(this.f29754a, this.f29755b, this.f29756c, this.f29757d, (Bundle) null);
    }
}
