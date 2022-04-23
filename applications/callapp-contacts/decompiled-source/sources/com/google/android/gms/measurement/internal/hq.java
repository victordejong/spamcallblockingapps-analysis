package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/hq.class */
public final class hq implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ zzp f29785a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ ik f29786b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public hq(ik ikVar, zzp zzpVar) {
        this.f29786b = ikVar;
        this.f29785a = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        df dfVar = this.f29786b.f29842b;
        if (dfVar == null) {
            this.f29786b.t.c().f29506c.a("Discarding data. Failed to send app launch");
            return;
        }
        try {
            o.a(this.f29785a);
            dfVar.a(this.f29785a);
            this.f29786b.t.i().f();
            this.f29786b.a(dfVar, (AbstractSafeParcelable) null, this.f29785a);
            this.f29786b.i();
        } catch (RemoteException e) {
            this.f29786b.t.c().f29506c.a("Failed to send app launch to the service", e);
        }
    }
}
