package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
/* renamed from: com.google.android.gms.measurement.internal.hr */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/hr.class */
public final class RunnableC14059hr implements Runnable {

    /* renamed from: a */
    final /* synthetic */ C14044hc f51822a;

    /* renamed from: b */
    final /* synthetic */ C14079ik f51823b;

    public RunnableC14059hr(C14079ik c14079ik, C14044hc c14044hc) {
        this.f51823b = c14079ik;
        this.f51822a = c14044hc;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC13938df abstractC13938df = this.f51823b.f51890b;
        if (abstractC13938df == null) {
            this.f51823b.f51637t.mo11661c().f51395c.m12092a("Failed to send current screen to service");
            return;
        }
        try {
            C14044hc c14044hc = this.f51822a;
            if (c14044hc == null) {
                abstractC13938df.mo11907a(0L, (String) null, (String) null, this.f51823b.f51637t.f51523a.getPackageName());
            } else {
                abstractC13938df.mo11907a(c14044hc.f51765c, c14044hc.f51763a, c14044hc.f51764b, this.f51823b.f51637t.f51523a.getPackageName());
            }
            this.f51823b.m11736i();
        } catch (RemoteException e) {
            this.f51823b.f51637t.mo11661c().f51395c.m12091a("Failed to send current screen to the service", e);
        }
    }
}
