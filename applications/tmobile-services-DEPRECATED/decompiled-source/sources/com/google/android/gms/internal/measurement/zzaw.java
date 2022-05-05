package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzag;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzaw.class */
public final class zzaw extends zzag.zzb {

    /* renamed from: j */
    private final /* synthetic */ zzt f8230j;

    /* renamed from: k */
    private final /* synthetic */ zzag f8231k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzaw(zzag zzagVar, zzt zztVar) {
        super(zzagVar);
        this.f8231k = zzagVar;
        this.f8230j = zztVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzag.zzb
    /* renamed from: a */
    final void mo13397a() throws RemoteException {
        zzv zzvVar;
        zzvVar = this.f8231k.f8187h;
        zzvVar.getCachedAppInstanceId(this.f8230j);
    }

    @Override // com.google.android.gms.internal.measurement.zzag.zzb
    /* renamed from: b */
    protected final void mo13398b() {
        this.f8230j.zza(null);
    }
}
