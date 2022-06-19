package com.google.android.gms.internal.ads;

import android.content.Context;
import java.io.File;
import java.util.regex.Pattern;
/* renamed from: com.google.android.gms.internal.ads.wg */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/wg.class */
public final class C3596wg extends C3236iy {

    /* renamed from: a */
    private final Context f17548a;

    private C3596wg(Context context, AbstractC3158ga abstractC3158ga) {
        super(abstractC3158ga);
        this.f17548a = context;
    }

    /* renamed from: a */
    public static dxq m6884a(Context context) {
        dxq dxqVar = new dxq(new C3263jy(new File(context.getCacheDir(), "admob_volley"), 20971520), new C3596wg(context, new C3469ro()));
        dxqVar.m8204a();
        return dxqVar;
    }

    @Override // com.google.android.gms.internal.ads.C3236iy, com.google.android.gms.internal.ads.dqu
    /* renamed from: a */
    public final drt mo6883a(dts<?> dtsVar) {
        drt mo6883a;
        if (dtsVar.m8592i() && dtsVar.m8599c() == 0) {
            if (Pattern.matches((String) dyx.m8158e().m7876a(edi.f16413bS), dtsVar.m8596e())) {
                dyx.m8162a();
                if (C3634xr.m6783c(this.f17548a, 13400000)) {
                    drt mo6883a2 = new C3151fu(this.f17548a).mo6883a(dtsVar);
                    if (mo6883a2 != null) {
                        String valueOf = String.valueOf(dtsVar.m8596e());
                        C3556uu.m7052a(valueOf.length() != 0 ? "Got gmscore asset response: ".concat(valueOf) : new String("Got gmscore asset response: "));
                        mo6883a = mo6883a2;
                        return mo6883a;
                    }
                    String valueOf2 = String.valueOf(dtsVar.m8596e());
                    C3556uu.m7052a(valueOf2.length() != 0 ? "Failed to get gmscore asset response: ".concat(valueOf2) : new String("Failed to get gmscore asset response: "));
                }
            }
        }
        mo6883a = super.mo6883a(dtsVar);
        return mo6883a;
    }
}
