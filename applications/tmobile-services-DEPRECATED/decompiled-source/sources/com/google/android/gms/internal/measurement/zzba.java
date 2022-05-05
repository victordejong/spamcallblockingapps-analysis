package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzag;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzba.class */
public final class zzba extends zzag.zzb {

    /* renamed from: j */
    private final /* synthetic */ String f8239j;

    /* renamed from: k */
    private final /* synthetic */ String f8240k;

    /* renamed from: l */
    private final /* synthetic */ boolean f8241l;

    /* renamed from: m */
    private final /* synthetic */ zzt f8242m;

    /* renamed from: n */
    private final /* synthetic */ zzag f8243n;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzba(zzag zzagVar, String str, String str2, boolean z, zzt zztVar) {
        super(zzagVar);
        this.f8243n = zzagVar;
        this.f8239j = str;
        this.f8240k = str2;
        this.f8241l = z;
        this.f8242m = zztVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzag.zzb
    /* renamed from: a */
    final void mo13397a() throws RemoteException {
        zzv zzvVar;
        zzvVar = this.f8243n.f8187h;
        zzvVar.getUserProperties(this.f8239j, this.f8240k, this.f8241l, this.f8242m);
    }

    @Override // com.google.android.gms.internal.measurement.zzag.zzb
    /* renamed from: b */
    protected final void mo13398b() {
        this.f8242m.zza(null);
    }
}
