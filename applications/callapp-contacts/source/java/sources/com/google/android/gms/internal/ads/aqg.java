package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzf;
import com.google.android.gms.ads.internal.zzr;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aqg.class */
public final class aqg implements auf {

    /* renamed from: a */
    private final Context f43018a;

    /* renamed from: b */
    private final cpo f43019b;

    /* renamed from: c */
    private final zzbar f43020c;

    /* renamed from: d */
    private final zzf f43021d;

    /* renamed from: e */
    private final bmi f43022e;

    public aqg(Context context, cpo cpoVar, zzbar zzbarVar, zzf zzfVar, bmi bmiVar) {
        this.f43018a = context;
        this.f43019b = cpoVar;
        this.f43020c = zzbarVar;
        this.f43021d = zzfVar;
        this.f43022e = bmiVar;
    }

    @Override // com.google.android.gms.internal.ads.auf
    /* renamed from: a */
    public final void mo17552a(cpk cpkVar) {
    }

    @Override // com.google.android.gms.internal.ads.auf
    /* renamed from: a */
    public final void mo17548a(zzauj zzaujVar) {
        if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42773cd)).booleanValue()) {
            zzr.zzld().zza(this.f43018a, this.f43020c, this.f43019b.f46326f, this.f43021d.zzzg());
        }
        this.f43022e.m17736a();
    }
}
