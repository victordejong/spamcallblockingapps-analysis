package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzgc.class */
final class zzgc implements Callable<List<zzkt>> {

    /* renamed from: f */
    private final /* synthetic */ String f9318f;

    /* renamed from: g */
    private final /* synthetic */ String f9319g;

    /* renamed from: h */
    private final /* synthetic */ String f9320h;

    /* renamed from: i */
    private final /* synthetic */ zzfw f9321i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgc(zzfw zzfwVar, String str, String str2, String str3) {
        this.f9321i = zzfwVar;
        this.f9318f = str;
        this.f9319g = str2;
        this.f9320h = str3;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ List<zzkt> call() throws Exception {
        zzki zzkiVar;
        zzki zzkiVar2;
        zzkiVar = this.f9321i.f9302a;
        zzkiVar.m11066j0();
        zzkiVar2 = this.f9321i.f9302a;
        return zzkiVar2.m11084a0().m11787J(this.f9318f, this.f9319g, this.f9320h);
    }
}
