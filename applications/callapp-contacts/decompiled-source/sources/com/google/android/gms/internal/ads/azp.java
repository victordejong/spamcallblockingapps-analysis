package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzr;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/azp.class */
public final class azp implements dsi<ayi<atb>> {

    /* renamed from: a  reason: collision with root package name */
    private final azj f24044a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Context> f24045b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<zzbar> f24046c;

    /* renamed from: d  reason: collision with root package name */
    private final dsv<cov> f24047d;
    private final dsv<cpo> e;

    private azp(azj azjVar, dsv<Context> dsvVar, dsv<zzbar> dsvVar2, dsv<cov> dsvVar3, dsv<cpo> dsvVar4) {
        this.f24044a = azjVar;
        this.f24045b = dsvVar;
        this.f24046c = dsvVar2;
        this.f24047d = dsvVar3;
        this.e = dsvVar4;
    }

    public static azp a(azj azjVar, dsv<Context> dsvVar, dsv<zzbar> dsvVar2, dsv<cov> dsvVar3, dsv<cpo> dsvVar4) {
        return new azp(azjVar, dsvVar, dsvVar2, dsvVar3, dsvVar4);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        final Context a2 = this.f24045b.a();
        final zzbar a3 = this.f24046c.a();
        final cov a4 = this.f24047d.a();
        final cpo a5 = this.e.a();
        return (ayi) dso.b(new ayi(new atb(a2, a3, a4, a5) { // from class: com.google.android.gms.internal.ads.azm

            /* renamed from: a  reason: collision with root package name */
            private final Context f24037a;

            /* renamed from: b  reason: collision with root package name */
            private final zzbar f24038b;

            /* renamed from: c  reason: collision with root package name */
            private final cov f24039c;

            /* renamed from: d  reason: collision with root package name */
            private final cpo f24040d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f24037a = a2;
                this.f24038b = a3;
                this.f24039c = a4;
                this.f24040d = a5;
            }

            @Override // com.google.android.gms.internal.ads.atb
            public final void a() {
                zzr.zzlf().zzb(this.f24037a, this.f24038b.zzbrz, this.f24039c.B.toString(), this.f24040d.f);
            }
        }, zd.f));
    }
}
