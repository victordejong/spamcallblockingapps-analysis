package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.C12045o;
/* renamed from: com.google.android.gms.measurement.internal.hx */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/hx.class */
public final class RunnableC14065hx implements Runnable {

    /* renamed from: a */
    final /* synthetic */ zzp f51835a;

    /* renamed from: b */
    final /* synthetic */ C14079ik f51836b;

    public RunnableC14065hx(C14079ik c14079ik, zzp zzpVar) {
        this.f51836b = c14079ik;
        this.f51835a = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC13938df abstractC13938df = this.f51836b.f51890b;
        if (abstractC13938df == null) {
            this.f51836b.f51637t.mo11661c().f51395c.m12092a("Failed to send consent settings to service");
            return;
        }
        try {
            C12045o.m19162a(this.f51835a);
            abstractC13938df.mo11886e(this.f51835a);
            this.f51836b.m11736i();
        } catch (RemoteException e) {
            this.f51836b.f51637t.mo11661c().f51395c.m12091a("Failed to send consent settings to the service", e);
        }
    }
}
