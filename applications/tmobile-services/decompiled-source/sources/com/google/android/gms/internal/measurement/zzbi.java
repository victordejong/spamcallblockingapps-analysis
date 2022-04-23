package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzag;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbi.class */
public final class zzbi extends zzag.zzb {

    /* renamed from: j */
    private final /* synthetic */ Bundle f8263j;

    /* renamed from: k */
    private final /* synthetic */ zzag f8264k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzbi(zzag zzagVar, Bundle bundle) {
        super(zzagVar);
        this.f8264k = zzagVar;
        this.f8263j = bundle;
    }

    @Override // com.google.android.gms.internal.measurement.zzag.zzb
    /* renamed from: a */
    final void mo13397a() throws RemoteException {
        zzv zzvVar;
        zzvVar = this.f8264k.f8187h;
        zzvVar.setDefaultEventParameters(this.f8263j);
    }
}
