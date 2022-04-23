package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.internal.measurement.jy;
import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/ho.class */
public final class ho implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AtomicReference f29779a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ zzp f29780b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ ik f29781c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ho(ik ikVar, AtomicReference atomicReference, zzp zzpVar) {
        this.f29781c = ikVar;
        this.f29779a = atomicReference;
        this.f29780b = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AtomicReference atomicReference;
        synchronized (this.f29779a) {
            try {
                jy.b();
            } catch (RemoteException e) {
                this.f29781c.t.c().f29506c.a("Failed to get app instance id", e);
                atomicReference = this.f29779a;
            }
            if (!this.f29781c.t.g.d(null, dc.au) || this.f29781c.t.b().e().c()) {
                df dfVar = this.f29781c.f29842b;
                if (dfVar == null) {
                    this.f29781c.t.c().f29506c.a("Failed to get app instance id");
                    this.f29779a.notify();
                    return;
                }
                o.a(this.f29780b);
                this.f29779a.set(dfVar.c(this.f29780b));
                String str = (String) this.f29779a.get();
                if (str != null) {
                    this.f29781c.t.f().a(str);
                    this.f29781c.t.b().f.a(str);
                }
                this.f29781c.i();
                atomicReference = this.f29779a;
                atomicReference.notify();
                return;
            }
            this.f29781c.t.c().h.a("Analytics storage consent denied; will not get app instance id");
            this.f29781c.t.f().a((String) null);
            this.f29781c.t.b().f.a(null);
            this.f29779a.set(null);
            this.f29779a.notify();
        }
    }
}
