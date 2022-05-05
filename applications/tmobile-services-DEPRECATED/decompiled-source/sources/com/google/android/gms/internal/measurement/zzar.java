package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzag;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzar.class */
public final class zzar extends zzag.zzb {

    /* renamed from: j */
    private final /* synthetic */ zzag f8222j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzar(zzag zzagVar) {
        super(zzagVar);
        this.f8222j = zzagVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzag.zzb
    /* renamed from: a */
    final void mo13397a() throws RemoteException {
        zzv zzvVar;
        zzvVar = this.f8222j.f8187h;
        zzvVar.resetAnalyticsData(this.f8189f);
    }
}
