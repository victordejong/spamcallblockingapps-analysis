package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzcf;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfu.class */
public final class zzfu implements Callable {

    /* renamed from: a */
    public final zzex f28216a;

    /* renamed from: b */
    public final zzcf.zza.C10493zza f28217b;

    public zzfu(zzex zzexVar, zzcf.zza.C10493zza zzaVar) {
        this.f28216a = zzexVar;
        this.f28217b = zzaVar;
    }

    /* renamed from: a */
    public final Void call() throws Exception {
        if (this.f28216a.m12151n() != null) {
            this.f28216a.m12151n().get();
        }
        zzcf.zza m = this.f28216a.m12152m();
        if (m == null) {
            return null;
        }
        try {
            synchronized (this.f28217b) {
                zzcf.zza.C10493zza zzaVar = this.f28217b;
                byte[] c = m.mo12349c();
                zzaVar.m12384a(c, 0, c.length, zzejm.m12417b());
            }
            return null;
        } catch (zzekj e) {
            return null;
        }
    }
}
