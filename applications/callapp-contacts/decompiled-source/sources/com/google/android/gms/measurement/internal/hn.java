package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.o;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/hn.class */
public final class hn implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ zzp f29777a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ ik f29778b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public hn(ik ikVar, zzp zzpVar) {
        this.f29778b = ikVar;
        this.f29777a = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        df dfVar = this.f29778b.f29842b;
        if (dfVar == null) {
            this.f29778b.t.c().f29506c.a("Failed to reset data on the service: not connected to service");
            return;
        }
        try {
            o.a(this.f29777a);
            dfVar.d(this.f29777a);
        } catch (RemoteException e) {
            this.f29778b.t.c().f29506c.a("Failed to reset data on the service: remote exception", e);
        }
        this.f29778b.i();
    }
}
