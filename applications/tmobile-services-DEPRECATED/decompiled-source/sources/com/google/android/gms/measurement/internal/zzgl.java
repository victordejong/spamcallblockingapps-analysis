package com.google.android.gms.measurement.internal;

import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzgl.class */
final class zzgl implements Callable<byte[]> {

    /* renamed from: f */
    private final /* synthetic */ zzar f9347f;

    /* renamed from: g */
    private final /* synthetic */ String f9348g;

    /* renamed from: h */
    private final /* synthetic */ zzfw f9349h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgl(zzfw zzfwVar, zzar zzarVar, String str) {
        this.f9349h = zzfwVar;
        this.f9347f = zzarVar;
        this.f9348g = str;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ byte[] call() throws Exception {
        zzki zzkiVar;
        zzki zzkiVar2;
        zzkiVar = this.f9349h.f9302a;
        zzkiVar.m11066j0();
        zzkiVar2 = this.f9349h.f9302a;
        zzkiVar2.m11078d0().m11235t(this.f9347f, this.f9348g);
        throw null;
    }
}
