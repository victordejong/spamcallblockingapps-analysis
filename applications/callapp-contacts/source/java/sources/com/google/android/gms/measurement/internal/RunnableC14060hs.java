package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.C12045o;
/* renamed from: com.google.android.gms.measurement.internal.hs */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/hs.class */
public final class RunnableC14060hs implements Runnable {

    /* renamed from: a */
    final /* synthetic */ zzp f51824a;

    /* renamed from: b */
    final /* synthetic */ Bundle f51825b;

    /* renamed from: c */
    final /* synthetic */ C14079ik f51826c;

    public RunnableC14060hs(C14079ik c14079ik, zzp zzpVar, Bundle bundle) {
        this.f51826c = c14079ik;
        this.f51824a = zzpVar;
        this.f51825b = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC13938df abstractC13938df = this.f51826c.f51890b;
        if (abstractC13938df == null) {
            this.f51826c.f51637t.mo11661c().f51395c.m12092a("Failed to send default event parameters to service");
            return;
        }
        try {
            C12045o.m19162a(this.f51824a);
            abstractC13938df.mo11906a(this.f51825b, this.f51824a);
        } catch (RemoteException e) {
            this.f51826c.f51637t.mo11661c().f51395c.m12091a("Failed to send default event parameters to service", e);
        }
    }
}
