package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.o;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/hs.class */
public final class hs implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ zzp f29789a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ Bundle f29790b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ ik f29791c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public hs(ik ikVar, zzp zzpVar, Bundle bundle) {
        this.f29791c = ikVar;
        this.f29789a = zzpVar;
        this.f29790b = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        df dfVar = this.f29791c.f29842b;
        if (dfVar == null) {
            this.f29791c.t.c().f29506c.a("Failed to send default event parameters to service");
            return;
        }
        try {
            o.a(this.f29789a);
            dfVar.a(this.f29790b, this.f29789a);
        } catch (RemoteException e) {
            this.f29791c.t.c().f29506c.a("Failed to send default event parameters to service", e);
        }
    }
}
