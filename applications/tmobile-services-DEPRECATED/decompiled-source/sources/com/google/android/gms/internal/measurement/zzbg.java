package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzag;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbg.class */
public final class zzbg extends zzag.zzb {

    /* renamed from: j */
    private final /* synthetic */ zzt f8258j;

    /* renamed from: k */
    private final /* synthetic */ int f8259k;

    /* renamed from: l */
    private final /* synthetic */ zzag f8260l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzbg(zzag zzagVar, zzt zztVar, int i) {
        super(zzagVar);
        this.f8260l = zzagVar;
        this.f8258j = zztVar;
        this.f8259k = i;
    }

    @Override // com.google.android.gms.internal.measurement.zzag.zzb
    /* renamed from: a */
    final void mo13397a() throws RemoteException {
        zzv zzvVar;
        zzvVar = this.f8260l.f8187h;
        zzvVar.getTestFlag(this.f8258j, this.f8259k);
    }

    @Override // com.google.android.gms.internal.measurement.zzag.zzb
    /* renamed from: b */
    protected final void mo13398b() {
        this.f8258j.zza(null);
    }
}
