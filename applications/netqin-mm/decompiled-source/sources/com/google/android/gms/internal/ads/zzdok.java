package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdok.class */
public final class zzdok {

    /* renamed from: a */
    public final zzxq f27639a;

    /* renamed from: b */
    public final zzaak f27640b;

    /* renamed from: c */
    public final zzajc f27641c;

    /* renamed from: d */
    public final zzvg f27642d;

    /* renamed from: e */
    public final zzvn f27643e;

    /* renamed from: f */
    public final String f27644f;

    /* renamed from: g */
    public final ArrayList<String> f27645g;

    /* renamed from: h */
    public final ArrayList<String> f27646h;

    /* renamed from: i */
    public final zzadu f27647i;

    /* renamed from: j */
    public final zzvs f27648j;

    /* renamed from: k */
    public final int f27649k;

    /* renamed from: l */
    public final PublisherAdViewOptions f27650l;

    /* renamed from: m */
    public final zzxk f27651m;

    /* renamed from: n */
    public final zzdob f27652n;

    /* renamed from: o */
    public final boolean f27653o;

    public zzdok(zzdom zzdomVar) {
        this.f27643e = zzdom.m13434a(zzdomVar);
        this.f27644f = zzdom.m13425b(zzdomVar);
        this.f27639a = zzdom.m13421c(zzdomVar);
        this.f27642d = new zzvg(zzdom.m13408m(zzdomVar).f29001a, zzdom.m13408m(zzdomVar).f29002b, zzdom.m13408m(zzdomVar).f29003c, zzdom.m13408m(zzdomVar).f29004d, zzdom.m13408m(zzdomVar).f29005e, zzdom.m13408m(zzdomVar).f29006f, zzdom.m13408m(zzdomVar).f29007g, zzdom.m13408m(zzdomVar).f29008h || zzdom.m13407n(zzdomVar), zzdom.m13408m(zzdomVar).f29009i, zzdom.m13408m(zzdomVar).f29010j, zzdom.m13408m(zzdomVar).f29011k, zzdom.m13408m(zzdomVar).f29012l, zzdom.m13408m(zzdomVar).f29013m, zzdom.m13408m(zzdomVar).f29014n, zzdom.m13408m(zzdomVar).f29015o, zzdom.m13408m(zzdomVar).f29016p, zzdom.m13408m(zzdomVar).f29017q, zzdom.m13408m(zzdomVar).f29018r, zzdom.m13408m(zzdomVar).f29019s, zzdom.m13408m(zzdomVar).f29020t, zzdom.m13408m(zzdomVar).f29021u, zzdom.m13408m(zzdomVar).f29022v);
        this.f27640b = zzdom.m13406o(zzdomVar) != null ? zzdom.m13406o(zzdomVar) : zzdom.m13405p(zzdomVar) != null ? zzdom.m13405p(zzdomVar).f24044f : null;
        this.f27645g = zzdom.m13419d(zzdomVar);
        this.f27646h = zzdom.m13417e(zzdomVar);
        this.f27647i = zzdom.m13419d(zzdomVar) == null ? null : zzdom.m13405p(zzdomVar) == null ? new zzadu(new NativeAdOptions.Builder().m18063a()) : zzdom.m13405p(zzdomVar);
        this.f27648j = zzdom.m13415f(zzdomVar);
        this.f27649k = zzdom.m13414g(zzdomVar);
        this.f27650l = zzdom.m13413h(zzdomVar);
        this.f27651m = zzdom.m13412i(zzdomVar);
        this.f27641c = zzdom.m13411j(zzdomVar);
        this.f27652n = new zzdob(zzdom.m13410k(zzdomVar));
        this.f27653o = zzdom.m13409l(zzdomVar);
    }

    /* renamed from: a */
    public final zzafy m13442a() {
        PublisherAdViewOptions publisherAdViewOptions = this.f27650l;
        if (publisherAdViewOptions == null) {
            return null;
        }
        return publisherAdViewOptions.m18036u();
    }
}
