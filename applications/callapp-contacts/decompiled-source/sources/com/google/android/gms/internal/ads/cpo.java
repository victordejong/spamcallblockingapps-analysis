package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import com.google.android.gms.ads.internal.util.zzj;
import java.util.ArrayList;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cpo.class */
public final class cpo {

    /* renamed from: a  reason: collision with root package name */
    public final elk f26224a;

    /* renamed from: b  reason: collision with root package name */
    public final zzaaz f26225b;

    /* renamed from: c  reason: collision with root package name */
    public final zzajy f26226c;

    /* renamed from: d  reason: collision with root package name */
    public final zzvq f26227d;
    public final zzvt e;
    public final String f;
    public final ArrayList<String> g;
    public final ArrayList<String> h;
    public final zzaei i;
    public final zzwc j;
    public final int k;
    public final AdManagerAdViewOptions l;
    public final PublisherAdViewOptions m;
    public final ele n;
    public final cpa o;
    public final boolean p;

    private cpo(cpq cpqVar) {
        this.e = cpqVar.f26229b;
        this.f = cpqVar.f26231d;
        this.f26224a = cpqVar.f26230c;
        this.f26227d = new zzvq(cpqVar.f26228a.versionCode, cpqVar.f26228a.zzcia, cpqVar.f26228a.extras, cpqVar.f26228a.zzcib, cpqVar.f26228a.zzcic, cpqVar.f26228a.zzcid, cpqVar.f26228a.zzadv, cpqVar.f26228a.zzbns || cpqVar.f, cpqVar.f26228a.zzcie, cpqVar.f26228a.zzcif, cpqVar.f26228a.zzng, cpqVar.f26228a.zzcig, cpqVar.f26228a.zzcih, cpqVar.f26228a.zzcii, cpqVar.f26228a.zzcij, cpqVar.f26228a.zzcik, cpqVar.f26228a.zzcil, cpqVar.f26228a.zzcim, cpqVar.f26228a.zzcip, cpqVar.f26228a.zzadw, cpqVar.f26228a.zzadx, cpqVar.f26228a.zzcin, zzj.zzdl(cpqVar.f26228a.zzcio));
        this.f26225b = cpqVar.e != null ? cpqVar.e : cpqVar.i != null ? cpqVar.i.zzdgy : null;
        this.g = cpqVar.g;
        this.h = cpqVar.h;
        this.i = cpqVar.g == null ? null : cpqVar.i == null ? new zzaei(new NativeAdOptions.Builder().build()) : cpqVar.i;
        this.j = cpqVar.j;
        this.k = cpqVar.n;
        this.l = cpqVar.k;
        this.m = cpqVar.l;
        this.n = cpqVar.m;
        this.f26226c = cpqVar.o;
        this.o = new cpa(cpqVar.p);
        this.p = cpqVar.q;
    }

    public final fn a() {
        PublisherAdViewOptions publisherAdViewOptions = this.m;
        if (publisherAdViewOptions == null && this.l == null) {
            return null;
        }
        return publisherAdViewOptions != null ? publisherAdViewOptions.zzjv() : this.l.zzjv();
    }
}
