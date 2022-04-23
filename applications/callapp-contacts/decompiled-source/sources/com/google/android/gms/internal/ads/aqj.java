package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzad;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aqj.class */
public final class aqj implements dsi<cxu<cov, zzad>> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Context> f23766a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<zzbar> f23767b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<cpo> f23768c;

    public aqj(dsv<Context> dsvVar, dsv<zzbar> dsvVar2, dsv<cpo> dsvVar3) {
        this.f23766a = dsvVar;
        this.f23767b = dsvVar2;
        this.f23768c = dsvVar3;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        final Context a2 = this.f23766a.a();
        final zzbar a3 = this.f23767b.a();
        final cpo a4 = this.f23768c.a();
        return (cxu) dso.b(new cxu(a2, a3, a4) { // from class: com.google.android.gms.internal.ads.aqk

            /* renamed from: a  reason: collision with root package name */
            private final Context f23769a;

            /* renamed from: b  reason: collision with root package name */
            private final zzbar f23770b;

            /* renamed from: c  reason: collision with root package name */
            private final cpo f23771c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f23769a = a2;
                this.f23770b = a3;
                this.f23771c = a4;
            }

            @Override // com.google.android.gms.internal.ads.cxu
            public final Object a(Object obj) {
                Context context = this.f23769a;
                zzbar zzbarVar = this.f23770b;
                cpo cpoVar = this.f23771c;
                cov covVar = (cov) obj;
                zzad zzadVar = new zzad(context);
                zzadVar.zzeo(covVar.A);
                zzadVar.zzep(covVar.B.toString());
                zzadVar.zzu(zzbarVar.zzbrz);
                zzadVar.setAdUnitId(cpoVar.f);
                return zzadVar;
            }
        });
    }
}
