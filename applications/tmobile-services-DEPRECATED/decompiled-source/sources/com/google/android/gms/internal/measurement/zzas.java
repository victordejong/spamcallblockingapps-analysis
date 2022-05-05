package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzag;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzas.class */
public final class zzas extends zzag.zzb {

    /* renamed from: j */
    private final /* synthetic */ long f8223j;

    /* renamed from: k */
    private final /* synthetic */ zzag f8224k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzas(zzag zzagVar, long j) {
        super(zzagVar);
        this.f8224k = zzagVar;
        this.f8223j = j;
    }

    @Override // com.google.android.gms.internal.measurement.zzag.zzb
    /* renamed from: a */
    final void mo13397a() throws RemoteException {
        zzv zzvVar;
        zzvVar = this.f8224k.f8187h;
        zzvVar.setSessionTimeoutDuration(this.f8223j);
    }
}
