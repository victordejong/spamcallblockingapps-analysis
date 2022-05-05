package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzge.class */
final class zzge implements Callable<List<zzw>> {

    /* renamed from: f */
    private final /* synthetic */ String f9326f;

    /* renamed from: g */
    private final /* synthetic */ String f9327g;

    /* renamed from: h */
    private final /* synthetic */ String f9328h;

    /* renamed from: i */
    private final /* synthetic */ zzfw f9329i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzge(zzfw zzfwVar, String str, String str2, String str3) {
        this.f9329i = zzfwVar;
        this.f9326f = str;
        this.f9327g = str2;
        this.f9328h = str3;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ List<zzw> call() throws Exception {
        zzki zzkiVar;
        zzki zzkiVar2;
        zzkiVar = this.f9329i.f9302a;
        zzkiVar.m11066j0();
        zzkiVar2 = this.f9329i.f9302a;
        return zzkiVar2.m11084a0().m11761j0(this.f9326f, this.f9327g, this.f9328h);
    }
}
