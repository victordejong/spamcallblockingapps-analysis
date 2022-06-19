package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.C12045o;
/* renamed from: com.google.android.gms.measurement.internal.hn */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/hn.class */
public final class RunnableC14055hn implements Runnable {

    /* renamed from: a */
    final /* synthetic */ zzp f51812a;

    /* renamed from: b */
    final /* synthetic */ C14079ik f51813b;

    public RunnableC14055hn(C14079ik c14079ik, zzp zzpVar) {
        this.f51813b = c14079ik;
        this.f51812a = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC13938df abstractC13938df = this.f51813b.f51890b;
        if (abstractC13938df == null) {
            this.f51813b.f51637t.mo11661c().f51395c.m12092a("Failed to reset data on the service: not connected to service");
            return;
        }
        try {
            C12045o.m19162a(this.f51812a);
            abstractC13938df.mo11887d(this.f51812a);
        } catch (RemoteException e) {
            this.f51813b.f51637t.mo11661c().f51395c.m12091a("Failed to reset data on the service: remote exception", e);
        }
        this.f51813b.m11736i();
    }
}
