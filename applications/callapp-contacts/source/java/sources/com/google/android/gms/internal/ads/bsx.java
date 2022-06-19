package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzo;
import com.google.android.gms.ads.internal.overlay.zzx;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzk;
import com.google.android.gms.ads.internal.zzr;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bsx.class */
final class bsx implements bap {

    /* renamed from: a */
    private final zzbar f44664a;

    /* renamed from: b */
    private final dbt<ald> f44665b;

    /* renamed from: c */
    private final cov f44666c;

    /* renamed from: d */
    private final adt f44667d;

    /* renamed from: e */
    private final cpo f44668e;

    /* renamed from: f */
    private final C12612hn f44669f;

    /* renamed from: g */
    private final boolean f44670g;

    public bsx(zzbar zzbarVar, dbt<ald> dbtVar, cov covVar, adt adtVar, cpo cpoVar, boolean z, C12612hn c12612hn) {
        this.f44664a = zzbarVar;
        this.f44665b = dbtVar;
        this.f44666c = covVar;
        this.f44667d = adtVar;
        this.f44668e = cpoVar;
        this.f44670g = z;
        this.f44669f = c12612hn;
    }

    @Override // com.google.android.gms.internal.ads.bap
    /* renamed from: a */
    public final void mo17566a(boolean z, Context context) {
        int i;
        ald aldVar = (ald) dbh.m16894b(this.f44665b);
        this.f44667d.mo13756b(true);
        zzk zzkVar = new zzk(this.f44670g ? this.f44669f.m14619b(true) : true, true, this.f44670g ? this.f44669f.m14623a() : false, this.f44670g ? this.f44669f.m14620b() : 0.0f, -1, z, this.f44666c.f46230J, false);
        zzr.zzku();
        bag mo18591j = aldVar.mo18591j();
        adt adtVar = this.f44667d;
        if (this.f44666c.f46232L != -1) {
            i = this.f44666c.f46232L;
        } else {
            if (this.f44668e.f46330j != null) {
                if (this.f44668e.f46330j.orientation == 1) {
                    i = 7;
                } else if (this.f44668e.f46330j.orientation == 2) {
                    i = 6;
                }
            }
            zzd.zzdz("Error setting app open orientation; no targeting orientation available.");
            i = this.f44666c.f46232L;
        }
        zzo.zza(context, new AdOverlayInfoParcel((eir) null, mo18591j, (zzx) null, adtVar, i, this.f44664a, this.f44666c.f46221A, zzkVar, this.f44666c.f46271r.f46302b, this.f44666c.f46271r.f46301a, this.f44668e.f46326f), true);
    }
}
