package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.C12045o;
/* renamed from: com.google.android.gms.measurement.internal.hw */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/hw.class */
public final class RunnableC14064hw implements Runnable {

    /* renamed from: a */
    final /* synthetic */ zzp f51833a;

    /* renamed from: b */
    final /* synthetic */ C14079ik f51834b;

    public RunnableC14064hw(C14079ik c14079ik, zzp zzpVar) {
        this.f51834b = c14079ik;
        this.f51833a = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC13938df abstractC13938df = this.f51834b.f51890b;
        if (abstractC13938df == null) {
            this.f51834b.f51637t.mo11661c().f51395c.m12092a("Failed to send measurementEnabled to service");
            return;
        }
        try {
            C12045o.m19162a(this.f51833a);
            abstractC13938df.mo11889b(this.f51833a);
            this.f51834b.m11736i();
        } catch (RemoteException e) {
            this.f51834b.f51637t.mo11661c().f51395c.m12091a("Failed to send measurementEnabled to the service", e);
        }
    }
}
