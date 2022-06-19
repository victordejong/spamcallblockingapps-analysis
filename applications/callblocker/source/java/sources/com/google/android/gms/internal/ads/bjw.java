package com.google.android.gms.internal.ads;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bjw.class */
final class bjw implements crh<chd> {

    /* renamed from: a */
    private final /* synthetic */ bjr f11404a;

    public bjw(bjr bjrVar) {
        this.f11404a = bjrVar;
    }

    @Override // com.google.android.gms.internal.ads.crh
    /* renamed from: a */
    public final /* synthetic */ void mo6719a(chd chdVar) {
        bmg bmgVar;
        bmg bmgVar2;
        chd chdVar2 = chdVar;
        if (((Boolean) dyx.m8158e().m7876a(edi.f16527da)).booleanValue()) {
            bmgVar = this.f11404a.f11400e;
            bmgVar.m11793a(chdVar2.f13035b.f13025b.f13009e);
            bmgVar2 = this.f11404a.f11400e;
            bmgVar2.m11792a(chdVar2.f13035b.f13025b.f13010f);
        }
    }

    @Override // com.google.android.gms.internal.ads.crh
    /* renamed from: a */
    public final void mo6718a(Throwable th) {
        Pattern pattern;
        bmg bmgVar;
        if (((Boolean) dyx.m8158e().m7876a(edi.f16527da)).booleanValue()) {
            pattern = bjr.f11395f;
            Matcher matcher = pattern.matcher(th.getMessage());
            if (!matcher.matches()) {
                return;
            }
            String group = matcher.group(1);
            bmgVar = this.f11404a.f11400e;
            bmgVar.m11793a(Integer.parseInt(group));
        }
    }
}
