package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzo;
import com.google.android.gms.ads.internal.overlay.zzx;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzk;
import com.google.android.gms.ads.internal.zzr;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/buq.class */
final class buq implements bap {

    /* renamed from: a */
    private final Context f44798a;

    /* renamed from: b */
    private final zzbar f44799b;

    /* renamed from: c */
    private final dbt<azk> f44800c;

    /* renamed from: d */
    private final cov f44801d;

    /* renamed from: e */
    private final adt f44802e;

    /* renamed from: f */
    private final cpo f44803f;

    /* renamed from: g */
    private final C12612hn f44804g;

    /* renamed from: h */
    private final boolean f44805h;

    /* JADX INFO: Access modifiers changed from: private */
    public buq(Context context, zzbar zzbarVar, dbt<azk> dbtVar, cov covVar, adt adtVar, cpo cpoVar, boolean z, C12612hn c12612hn) {
        this.f44798a = context;
        this.f44799b = zzbarVar;
        this.f44800c = dbtVar;
        this.f44801d = covVar;
        this.f44802e = adtVar;
        this.f44803f = cpoVar;
        this.f44804g = c12612hn;
        this.f44805h = z;
    }

    @Override // com.google.android.gms.internal.ads.bap
    /* renamed from: a */
    public final void mo17566a(boolean z, Context context) {
        azk azkVar = (azk) dbh.m16894b(this.f44800c);
        this.f44802e.mo13756b(true);
        boolean m14619b = this.f44805h ? this.f44804g.m14619b(false) : false;
        zzr.zzkv();
        zzk zzkVar = new zzk(m14619b, zzj.zzba(this.f44798a), this.f44805h ? this.f44804g.m14623a() : false, this.f44805h ? this.f44804g.m14620b() : 0.0f, -1, z, this.f44801d.f46230J, false);
        zzr.zzku();
        zzo.zza(context, new AdOverlayInfoParcel((eir) null, azkVar.mo18306j(), (zzx) null, this.f44802e, this.f44801d.f46232L, this.f44799b, this.f44801d.f46221A, zzkVar, this.f44801d.f46271r.f46302b, this.f44801d.f46271r.f46301a, this.f44803f.f46326f), true);
    }
}
