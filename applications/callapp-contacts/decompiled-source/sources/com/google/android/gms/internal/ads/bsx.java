package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzo;
import com.google.android.gms.ads.internal.overlay.zzx;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzk;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bsx.class */
final class bsx implements bap {

    /* renamed from: a  reason: collision with root package name */
    private final zzbar f25033a;

    /* renamed from: b  reason: collision with root package name */
    private final dbt<ald> f25034b;

    /* renamed from: c  reason: collision with root package name */
    private final cov f25035c;

    /* renamed from: d  reason: collision with root package name */
    private final adt f25036d;
    private final cpo e;
    private final hn f;
    private final boolean g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bsx(zzbar zzbarVar, dbt<ald> dbtVar, cov covVar, adt adtVar, cpo cpoVar, boolean z, hn hnVar) {
        this.f25033a = zzbarVar;
        this.f25034b = dbtVar;
        this.f25035c = covVar;
        this.f25036d = adtVar;
        this.e = cpoVar;
        this.g = z;
        this.f = hnVar;
    }

    @Override // com.google.android.gms.internal.ads.bap
    public final void a(boolean z, Context context) {
        int i;
        ald aldVar = (ald) dbh.b(this.f25034b);
        this.f25036d.b(true);
        zzk zzkVar = new zzk(this.g ? this.f.b(true) : true, true, this.g ? this.f.a() : false, this.g ? this.f.b() : BitmapDescriptorFactory.HUE_RED, -1, z, this.f25035c.J, false);
        zzr.zzku();
        bag j = aldVar.j();
        adt adtVar = this.f25036d;
        if (this.f25035c.L != -1) {
            i = this.f25035c.L;
        } else {
            if (this.e.j != null) {
                if (this.e.j.orientation == 1) {
                    i = 7;
                } else if (this.e.j.orientation == 2) {
                    i = 6;
                }
            }
            zzd.zzdz("Error setting app open orientation; no targeting orientation available.");
            i = this.f25035c.L;
        }
        zzo.zza(context, new AdOverlayInfoParcel((eir) null, j, (zzx) null, adtVar, i, this.f25033a, this.f25035c.A, zzkVar, this.f25035c.r.f26205b, this.f25035c.r.f26204a, this.e.f), true);
    }
}
