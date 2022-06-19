package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.nonagon.signalgeneration.AbstractC5828o;
import com.google.android.gms.ads.nonagon.signalgeneration.C5818g0;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/da2.class */
public final class da2 implements wa2<ea2> {

    /* renamed from: a */
    private final String f21560a;

    /* renamed from: b */
    private final s03 f21561b;

    /* renamed from: c */
    private final ScheduledExecutorService f21562c;

    /* renamed from: d */
    private final Context f21563d;

    /* renamed from: e */
    private final xj2 f21564e;

    /* renamed from: f */
    private final sp0 f21565f;

    public da2(s03 s03Var, ScheduledExecutorService scheduledExecutorService, String str, Context context, xj2 xj2Var, sp0 sp0Var) {
        this.f21561b = s03Var;
        this.f21562c = scheduledExecutorService;
        this.f21560a = str;
        this.f21563d = context;
        this.f21564e = xj2Var;
        this.f21565f = sp0Var;
    }

    /* renamed from: a */
    public final /* bridge */ /* synthetic */ r03 m15849a() {
        String str = this.f21560a;
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25756n5)).booleanValue()) {
            str = AdFormat.UNKNOWN.name();
        }
        AbstractC5828o mo10942x = this.f21565f.mo10942x();
        h21 h21Var = new h21();
        h21Var.m14759e(this.f21563d);
        vj2 vj2Var = new vj2();
        vj2Var.m9984L("adUnitId");
        vj2Var.m9989G(this.f21564e.f32077d);
        vj2Var.m9987I(new zzbdl());
        h21Var.m14758f(vj2Var.m9969l());
        mo10942x.mo15998a(h21Var.m14756h());
        C5818g0 c5818g0 = new C5818g0();
        c5818g0.m17796b(str);
        mo10942x.mo15997b(c5818g0.m17795c());
        new n81();
        return k03.m13998f(k03.m13994j((a03) k03.m13996h(a03.m16718E(mo10942x.zza().mo15704a()), ((Long) C7192yr.m8714c().m14263c(C6679kw.f25764o5)).longValue(), TimeUnit.MILLISECONDS, this.f21562c), ba2.f20328a, this.f21561b), Exception.class, ca2.f21136a, this.f21561b);
    }

    @Override // com.google.android.gms.internal.ads.wa2
    public final r03<ea2> zza() {
        return (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25748m5)).booleanValue() || "adUnitId".equals(this.f21564e.f32079f)) ? this.f21561b.mo11185a(z92.f32849a) : k03.m13999e(new tz2(this) { // from class: com.google.android.gms.internal.ads.aa2

            /* renamed from: a */
            private final da2 f19867a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f19867a = this;
            }

            @Override // com.google.android.gms.internal.ads.tz2
            public final r03 zza() {
                return this.f19867a.m15849a();
            }
        }, this.f21561b);
    }
}
