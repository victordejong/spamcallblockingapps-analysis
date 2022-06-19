package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
/* renamed from: com.google.android.gms.measurement.internal.hq */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/hq.class */
public final class RunnableC14058hq implements Runnable {

    /* renamed from: a */
    final /* synthetic */ zzp f51820a;

    /* renamed from: b */
    final /* synthetic */ C14079ik f51821b;

    public RunnableC14058hq(C14079ik c14079ik, zzp zzpVar) {
        this.f51821b = c14079ik;
        this.f51820a = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC13938df abstractC13938df = this.f51821b.f51890b;
        if (abstractC13938df == null) {
            this.f51821b.f51637t.mo11661c().f51395c.m12092a("Discarding data. Failed to send app launch");
            return;
        }
        try {
            C12045o.m19162a(this.f51820a);
            abstractC13938df.mo11899a(this.f51820a);
            this.f51821b.f51637t.m11986i().m12101f();
            this.f51821b.m11752a(abstractC13938df, (AbstractSafeParcelable) null, this.f51820a);
            this.f51821b.m11736i();
        } catch (RemoteException e) {
            this.f51821b.f51637t.mo11661c().f51395c.m12091a("Failed to send app launch to the service", e);
        }
    }
}
