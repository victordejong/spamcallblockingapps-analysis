package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzag;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbj.class */
public final class zzbj extends zzag.zzb {

    /* renamed from: j */
    private final /* synthetic */ boolean f8265j;

    /* renamed from: k */
    private final /* synthetic */ zzag f8266k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzbj(zzag zzagVar, boolean z) {
        super(zzagVar);
        this.f8266k = zzagVar;
        this.f8265j = z;
    }

    @Override // com.google.android.gms.internal.measurement.zzag.zzb
    /* renamed from: a */
    final void mo13397a() throws RemoteException {
        zzv zzvVar;
        zzvVar = this.f8266k.f8187h;
        zzvVar.setDataCollectionEnabled(this.f8265j);
    }
}
