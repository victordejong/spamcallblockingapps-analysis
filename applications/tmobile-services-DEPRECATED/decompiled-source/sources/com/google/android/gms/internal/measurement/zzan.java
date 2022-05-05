package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzag;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzan.class */
public final class zzan extends zzag.zzb {

    /* renamed from: j */
    private final /* synthetic */ String f8214j;

    /* renamed from: k */
    private final /* synthetic */ zzag f8215k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzan(zzag zzagVar, String str) {
        super(zzagVar);
        this.f8215k = zzagVar;
        this.f8214j = str;
    }

    @Override // com.google.android.gms.internal.measurement.zzag.zzb
    /* renamed from: a */
    final void mo13397a() throws RemoteException {
        zzv zzvVar;
        zzvVar = this.f8215k.f8187h;
        zzvVar.setUserId(this.f8214j, this.f8189f);
    }
}
