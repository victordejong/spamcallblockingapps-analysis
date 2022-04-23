package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzmj;
import java.util.concurrent.Callable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzkm.class */
public final class zzkm implements Callable<String> {

    /* renamed from: f */
    private final /* synthetic */ zzn f9691f;

    /* renamed from: g */
    private final /* synthetic */ zzki f9692g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzkm(zzki zzkiVar, zzn zznVar) {
        this.f9692g = zzkiVar;
        this.f9691f = zznVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ String call() throws Exception {
        if (!zzmj.m11898a() || !this.f9692g.m11099M().m10880r(zzat.f8906J0) || (this.f9692g.m11077e(this.f9691f.f9725f).m11721q() && zzad.m11736b(this.f9691f.f9724B).m11721q())) {
            zzf V = this.f9692g.m11090V(this.f9691f);
            if (V != null) {
                return V.m11468x();
            }
            this.f9692g.mo11081c().m11557G().m11540a("App info was null when attempting to get app instance id");
            return null;
        }
        this.f9692g.mo11081c().m11552L().m11540a("Analytics storage consent denied. Returning null app instance id");
        return null;
    }
}
