package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzag;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzak.class */
public final class zzak extends zzag.zzb {

    /* renamed from: j */
    private final /* synthetic */ String f8202j;

    /* renamed from: k */
    private final /* synthetic */ String f8203k;

    /* renamed from: l */
    private final /* synthetic */ zzt f8204l;

    /* renamed from: m */
    private final /* synthetic */ zzag f8205m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzak(zzag zzagVar, String str, String str2, zzt zztVar) {
        super(zzagVar);
        this.f8205m = zzagVar;
        this.f8202j = str;
        this.f8203k = str2;
        this.f8204l = zztVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzag.zzb
    /* renamed from: a */
    final void mo13397a() throws RemoteException {
        zzv zzvVar;
        zzvVar = this.f8205m.f8187h;
        zzvVar.getConditionalUserProperties(this.f8202j, this.f8203k, this.f8204l);
    }

    @Override // com.google.android.gms.internal.measurement.zzag.zzb
    /* renamed from: b */
    protected final void mo13398b() {
        this.f8204l.zza(null);
    }
}
