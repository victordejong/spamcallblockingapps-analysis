package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzr;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/amf.class */
public final class amf implements dsi<ayi<atb>> {

    /* renamed from: a  reason: collision with root package name */
    private final alx f23570a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Context> f23571b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<zzbar> f23572c;

    /* renamed from: d  reason: collision with root package name */
    private final dsv<cov> f23573d;
    private final dsv<cpo> e;

    public amf(alx alxVar, dsv<Context> dsvVar, dsv<zzbar> dsvVar2, dsv<cov> dsvVar3, dsv<cpo> dsvVar4) {
        this.f23570a = alxVar;
        this.f23571b = dsvVar;
        this.f23572c = dsvVar2;
        this.f23573d = dsvVar3;
        this.e = dsvVar4;
    }

    public static ayi<atb> a(final Context context, final zzbar zzbarVar, final cov covVar, final cpo cpoVar) {
        return (ayi) dso.b(new ayi(new atb(context, zzbarVar, covVar, cpoVar) { // from class: com.google.android.gms.internal.ads.alw

            /* renamed from: a  reason: collision with root package name */
            private final Context f23548a;

            /* renamed from: b  reason: collision with root package name */
            private final zzbar f23549b;

            /* renamed from: c  reason: collision with root package name */
            private final cov f23550c;

            /* renamed from: d  reason: collision with root package name */
            private final cpo f23551d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f23548a = context;
                this.f23549b = zzbarVar;
                this.f23550c = covVar;
                this.f23551d = cpoVar;
            }

            @Override // com.google.android.gms.internal.ads.atb
            public final void a() {
                zzr.zzlf().zzb(this.f23548a, this.f23549b.zzbrz, this.f23550c.B.toString(), this.f23551d.f);
            }
        }, zd.f));
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return a(this.f23571b.a(), this.f23572c.a(), this.f23573d.a(), this.e.a());
    }
}
