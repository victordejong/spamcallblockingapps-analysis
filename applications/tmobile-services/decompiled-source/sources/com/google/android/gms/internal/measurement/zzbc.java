package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzag;
import com.google.android.gms.measurement.internal.zzgx;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbc.class */
public final class zzbc extends zzag.zzb {

    /* renamed from: j */
    private final /* synthetic */ zzgx f8246j;

    /* renamed from: k */
    private final /* synthetic */ zzag f8247k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzbc(zzag zzagVar, zzgx zzgxVar) {
        super(zzagVar);
        this.f8247k = zzagVar;
        this.f8246j = zzgxVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzag.zzb
    /* renamed from: a */
    final void mo13397a() throws RemoteException {
        zzv zzvVar;
        zzvVar = this.f8247k.f8187h;
        zzvVar.setEventInterceptor(new zzag.zza(this.f8246j));
    }
}
