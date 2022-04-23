package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.o;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/hw.class */
public final class hw implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ zzp f29798a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ ik f29799b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public hw(ik ikVar, zzp zzpVar) {
        this.f29799b = ikVar;
        this.f29798a = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        df dfVar = this.f29799b.f29842b;
        if (dfVar == null) {
            this.f29799b.t.c().f29506c.a("Failed to send measurementEnabled to service");
            return;
        }
        try {
            o.a(this.f29798a);
            dfVar.b(this.f29798a);
            this.f29799b.i();
        } catch (RemoteException e) {
            this.f29799b.t.c().f29506c.a("Failed to send measurementEnabled to the service", e);
        }
    }
}
