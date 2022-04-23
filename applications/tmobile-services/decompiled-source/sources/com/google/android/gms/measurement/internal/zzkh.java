package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzkh.class */
public final class zzkh extends zzaj {

    /* renamed from: e */
    private final /* synthetic */ zzki f9653e;

    /* renamed from: f */
    private final /* synthetic */ zzke f9654f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzkh(zzke zzkeVar, zzgq zzgqVar, zzki zzkiVar) {
        super(zzgqVar);
        this.f9654f = zzkeVar;
        this.f9653e = zzkiVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzaj
    /* renamed from: b */
    public final void mo11112b() {
        this.f9654f.m11122u();
        this.f9654f.mo11081c().m11552L().m11540a("Starting upload from DelayedRunnable");
        this.f9653e.m11068i0();
    }
}
