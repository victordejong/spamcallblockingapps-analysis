package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzag;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbe.class */
public final class zzbe extends zzag.zzb {

    /* renamed from: j */
    private final /* synthetic */ String f8252j;

    /* renamed from: k */
    private final /* synthetic */ zzt f8253k;

    /* renamed from: l */
    private final /* synthetic */ zzag f8254l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzbe(zzag zzagVar, String str, zzt zztVar) {
        super(zzagVar);
        this.f8254l = zzagVar;
        this.f8252j = str;
        this.f8253k = zztVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzag.zzb
    /* renamed from: a */
    final void mo13397a() throws RemoteException {
        zzv zzvVar;
        zzvVar = this.f8254l.f8187h;
        zzvVar.getMaxUserProperties(this.f8252j, this.f8253k);
    }

    @Override // com.google.android.gms.internal.measurement.zzag.zzb
    /* renamed from: b */
    protected final void mo13398b() {
        this.f8253k.zza(null);
    }
}
