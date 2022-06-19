package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzr;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/azp.class */
public final class azp implements dsi<ayi<atb>> {

    /* renamed from: a */
    private final azj f43362a;

    /* renamed from: b */
    private final dsv<Context> f43363b;

    /* renamed from: c */
    private final dsv<zzbar> f43364c;

    /* renamed from: d */
    private final dsv<cov> f43365d;

    /* renamed from: e */
    private final dsv<cpo> f43366e;

    private azp(azj azjVar, dsv<Context> dsvVar, dsv<zzbar> dsvVar2, dsv<cov> dsvVar3, dsv<cpo> dsvVar4) {
        this.f43362a = azjVar;
        this.f43363b = dsvVar;
        this.f43364c = dsvVar2;
        this.f43365d = dsvVar3;
        this.f43366e = dsvVar4;
    }

    /* renamed from: a */
    public static azp m18301a(azj azjVar, dsv<Context> dsvVar, dsv<zzbar> dsvVar2, dsv<cov> dsvVar3, dsv<cpo> dsvVar4) {
        return new azp(azjVar, dsvVar, dsvVar2, dsvVar3, dsvVar4);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return (ayi) dso.m15764b(new ayi(new atb(this.f43363b.mo14005a(), this.f43364c.mo14005a(), this.f43365d.mo14005a(), this.f43366e.mo14005a()) { // from class: com.google.android.gms.internal.ads.azm

            /* renamed from: a */
            private final Context f43355a;

            /* renamed from: b */
            private final zzbar f43356b;

            /* renamed from: c */
            private final cov f43357c;

            /* renamed from: d */
            private final cpo f43358d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f43355a = mo14005a;
                this.f43356b = mo14005a2;
                this.f43357c = mo14005a3;
                this.f43358d = mo14005a4;
            }

            @Override // com.google.android.gms.internal.ads.atb
            /* renamed from: a */
            public final void mo17408a() {
                zzr.zzlf().zzb(this.f43355a, this.f43356b.zzbrz, this.f43357c.f46222B.toString(), this.f43358d.f46326f);
            }
        }, C13091zd.f50123f));
    }
}
