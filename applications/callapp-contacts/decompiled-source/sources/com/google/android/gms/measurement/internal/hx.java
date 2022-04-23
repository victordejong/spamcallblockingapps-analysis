package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.o;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/hx.class */
public final class hx implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ zzp f29800a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ ik f29801b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public hx(ik ikVar, zzp zzpVar) {
        this.f29801b = ikVar;
        this.f29800a = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        df dfVar = this.f29801b.f29842b;
        if (dfVar == null) {
            this.f29801b.t.c().f29506c.a("Failed to send consent settings to service");
            return;
        }
        try {
            o.a(this.f29800a);
            dfVar.e(this.f29800a);
            this.f29801b.i();
        } catch (RemoteException e) {
            this.f29801b.t.c().f29506c.a("Failed to send consent settings to the service", e);
        }
    }
}
