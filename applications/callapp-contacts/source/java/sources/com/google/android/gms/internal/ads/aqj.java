package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzad;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aqj.class */
public final class aqj implements dsi<cxu<cov, zzad>> {

    /* renamed from: a */
    private final dsv<Context> f43025a;

    /* renamed from: b */
    private final dsv<zzbar> f43026b;

    /* renamed from: c */
    private final dsv<cpo> f43027c;

    public aqj(dsv<Context> dsvVar, dsv<zzbar> dsvVar2, dsv<cpo> dsvVar3) {
        this.f43025a = dsvVar;
        this.f43026b = dsvVar2;
        this.f43027c = dsvVar3;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return (cxu) dso.m15764b(new cxu(this.f43025a.mo14005a(), this.f43026b.mo14005a(), this.f43027c.mo14005a()) { // from class: com.google.android.gms.internal.ads.aqk

            /* renamed from: a */
            private final Context f43028a;

            /* renamed from: b */
            private final zzbar f43029b;

            /* renamed from: c */
            private final cpo f43030c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f43028a = mo14005a;
                this.f43029b = mo14005a2;
                this.f43030c = mo14005a3;
            }

            @Override // com.google.android.gms.internal.ads.cxu
            /* renamed from: a */
            public final Object mo14064a(Object obj) {
                Context context = this.f43028a;
                zzbar zzbarVar = this.f43029b;
                cpo cpoVar = this.f43030c;
                cov covVar = (cov) obj;
                zzad zzadVar = new zzad(context);
                zzadVar.zzeo(covVar.f46221A);
                zzadVar.zzep(covVar.f46222B.toString());
                zzadVar.zzu(zzbarVar.zzbrz);
                zzadVar.setAdUnitId(cpoVar.f46326f);
                return zzadVar;
            }
        });
    }
}
