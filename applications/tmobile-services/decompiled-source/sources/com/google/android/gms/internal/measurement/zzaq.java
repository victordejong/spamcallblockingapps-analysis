package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzag;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzaq.class */
public final class zzaq extends zzag.zzb {

    /* renamed from: j */
    private final /* synthetic */ long f8220j;

    /* renamed from: k */
    private final /* synthetic */ zzag f8221k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzaq(zzag zzagVar, long j) {
        super(zzagVar);
        this.f8221k = zzagVar;
        this.f8220j = j;
    }

    @Override // com.google.android.gms.internal.measurement.zzag.zzb
    /* renamed from: a */
    final void mo13397a() throws RemoteException {
        zzv zzvVar;
        zzvVar = this.f8221k.f8187h;
        zzvVar.setMinimumSessionDuration(this.f8220j);
    }
}
