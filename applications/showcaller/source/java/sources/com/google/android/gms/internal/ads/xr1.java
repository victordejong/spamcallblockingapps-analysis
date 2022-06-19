package com.google.android.gms.internal.ads;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/xr1.class */
final class xr1 implements f03<rj2> {

    /* renamed from: a */
    final /* synthetic */ yr1 f32269a;

    public xr1(yr1 yr1Var) {
        this.f32269a = yr1Var;
    }

    @Override // com.google.android.gms.internal.ads.f03
    /* renamed from: a */
    public final void mo8126a(Throwable th) {
        Pattern pattern;
        gv1 gv1Var;
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25835x4)).booleanValue()) {
            pattern = yr1.f32622a;
            Matcher matcher = pattern.matcher(th.getMessage());
            if (!matcher.matches()) {
                return;
            }
            String group = matcher.group(1);
            gv1Var = this.f32269a.f32627f;
            gv1Var.m14806a(Integer.parseInt(group));
        }
    }

    @Override // com.google.android.gms.internal.ads.f03
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo8125b(rj2 rj2Var) {
        gv1 gv1Var;
        gv1 gv1Var2;
        rj2 rj2Var2 = rj2Var;
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25835x4)).booleanValue()) {
            gv1Var = this.f32269a.f32627f;
            gv1Var.m14806a(rj2Var2.f28999b.f28519b.f24900e);
            gv1Var2 = this.f32269a.f32627f;
            gv1Var2.m14804c(rj2Var2.f28999b.f28519b.f24901f);
        }
    }
}
