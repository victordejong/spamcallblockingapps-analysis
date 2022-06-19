package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzr;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/amf.class */
public final class amf implements dsi<ayi<atb>> {

    /* renamed from: a */
    private final alx f42416a;

    /* renamed from: b */
    private final dsv<Context> f42417b;

    /* renamed from: c */
    private final dsv<zzbar> f42418c;

    /* renamed from: d */
    private final dsv<cov> f42419d;

    /* renamed from: e */
    private final dsv<cpo> f42420e;

    public amf(alx alxVar, dsv<Context> dsvVar, dsv<zzbar> dsvVar2, dsv<cov> dsvVar3, dsv<cpo> dsvVar4) {
        this.f42416a = alxVar;
        this.f42417b = dsvVar;
        this.f42418c = dsvVar2;
        this.f42419d = dsvVar3;
        this.f42420e = dsvVar4;
    }

    /* renamed from: a */
    public static ayi<atb> m18563a(Context context, zzbar zzbarVar, cov covVar, cpo cpoVar) {
        return (ayi) dso.m15764b(new ayi(new atb(context, zzbarVar, covVar, cpoVar) { // from class: com.google.android.gms.internal.ads.alw

            /* renamed from: a */
            private final Context f42390a;

            /* renamed from: b */
            private final zzbar f42391b;

            /* renamed from: c */
            private final cov f42392c;

            /* renamed from: d */
            private final cpo f42393d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f42390a = context;
                this.f42391b = zzbarVar;
                this.f42392c = covVar;
                this.f42393d = cpoVar;
            }

            @Override // com.google.android.gms.internal.ads.atb
            /* renamed from: a */
            public final void mo17408a() {
                zzr.zzlf().zzb(this.f42390a, this.f42391b.zzbrz, this.f42392c.f46222B.toString(), this.f42393d.f46326f);
            }
        }, C13091zd.f50123f));
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return m18563a(this.f42417b.mo14005a(), this.f42418c.mo14005a(), this.f42419d.mo14005a(), this.f42420e.mo14005a());
    }
}
