package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzo;
import com.google.android.gms.ads.internal.overlay.zzx;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzk;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/buq.class */
final class buq implements bap {

    /* renamed from: a  reason: collision with root package name */
    private final Context f25148a;

    /* renamed from: b  reason: collision with root package name */
    private final zzbar f25149b;

    /* renamed from: c  reason: collision with root package name */
    private final dbt<azk> f25150c;

    /* renamed from: d  reason: collision with root package name */
    private final cov f25151d;
    private final adt e;
    private final cpo f;
    private final hn g;
    private final boolean h;

    private buq(Context context, zzbar zzbarVar, dbt<azk> dbtVar, cov covVar, adt adtVar, cpo cpoVar, boolean z, hn hnVar) {
        this.f25148a = context;
        this.f25149b = zzbarVar;
        this.f25150c = dbtVar;
        this.f25151d = covVar;
        this.e = adtVar;
        this.f = cpoVar;
        this.g = hnVar;
        this.h = z;
    }

    @Override // com.google.android.gms.internal.ads.bap
    public final void a(boolean z, Context context) {
        azk azkVar = (azk) dbh.b(this.f25150c);
        this.e.b(true);
        boolean b2 = this.h ? this.g.b(false) : false;
        zzr.zzkv();
        zzk zzkVar = new zzk(b2, zzj.zzba(this.f25148a), this.h ? this.g.a() : false, this.h ? this.g.b() : BitmapDescriptorFactory.HUE_RED, -1, z, this.f25151d.J, false);
        zzr.zzku();
        zzo.zza(context, new AdOverlayInfoParcel((eir) null, azkVar.j(), (zzx) null, this.e, this.f25151d.L, this.f25149b, this.f25151d.A, zzkVar, this.f25151d.r.f26205b, this.f25151d.r.f26204a, this.f.f), true);
    }
}
