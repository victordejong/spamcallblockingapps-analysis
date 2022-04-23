package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzf;
import com.google.android.gms.ads.internal.zzr;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aqg.class */
public final class aqg implements auf {

    /* renamed from: a  reason: collision with root package name */
    private final Context f23760a;

    /* renamed from: b  reason: collision with root package name */
    private final cpo f23761b;

    /* renamed from: c  reason: collision with root package name */
    private final zzbar f23762c;

    /* renamed from: d  reason: collision with root package name */
    private final zzf f23763d;
    private final bmi e;

    public aqg(Context context, cpo cpoVar, zzbar zzbarVar, zzf zzfVar, bmi bmiVar) {
        this.f23760a = context;
        this.f23761b = cpoVar;
        this.f23762c = zzbarVar;
        this.f23763d = zzfVar;
        this.e = bmiVar;
    }

    @Override // com.google.android.gms.internal.ads.auf
    public final void a(cpk cpkVar) {
    }

    @Override // com.google.android.gms.internal.ads.auf
    public final void a(zzauj zzaujVar) {
        if (((Boolean) ekb.e().a(aq.cd)).booleanValue()) {
            zzr.zzld().zza(this.f23760a, this.f23762c, this.f23761b.f, this.f23763d.zzzg());
        }
        this.e.a();
    }
}
