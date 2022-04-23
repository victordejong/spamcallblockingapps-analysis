package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzp;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbsx.class */
public final class zzbsx implements zzbws {

    /* renamed from: a */
    public final Context f25475a;

    /* renamed from: b */
    public final zzdok f25476b;

    /* renamed from: c */
    public final zzbbx f25477c;

    /* renamed from: d */
    public final zzayr f25478d;

    /* renamed from: e */
    public final zzcnu f25479e;

    public zzbsx(Context context, zzdok zzdokVar, zzbbx zzbbxVar, zzayr zzayrVar, zzcnu zzcnuVar) {
        this.f25475a = context;
        this.f25476b = zzdokVar;
        this.f25477c = zzbbxVar;
        this.f25478d = zzayrVar;
        this.f25479e = zzcnuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbws
    /* renamed from: a */
    public final void mo14002a(zzatc zzatcVar) {
        if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23705L1)).booleanValue()) {
            zzp.m17961k().m17994a(this.f25475a, this.f25477c, this.f25476b.f27644f, this.f25478d.mo16075a());
        }
        this.f25479e.m13986b();
    }

    @Override // com.google.android.gms.internal.ads.zzbws
    /* renamed from: a */
    public final void mo14001a(zzdog zzdogVar) {
    }
}
