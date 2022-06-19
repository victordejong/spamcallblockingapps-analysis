package com.google.android.gms.ads.internal.util;

import android.content.Context;
import com.google.android.gms.internal.ads.C6679kw;
import com.google.android.gms.internal.ads.C7118wr;
import com.google.android.gms.internal.ads.C7192yr;
import com.google.android.gms.internal.ads.c04;
import com.google.android.gms.internal.ads.dz3;
import com.google.android.gms.internal.ads.gz3;
import com.google.android.gms.internal.ads.oz3;
import com.google.android.gms.internal.ads.pz3;
import com.google.android.gms.internal.ads.w30;
import com.google.android.gms.internal.ads.wz3;
import com.google.android.gms.internal.ads.xh0;
import com.google.android.gms.internal.ads.zy3;
import java.io.File;
import java.util.regex.Pattern;
/* renamed from: com.google.android.gms.ads.internal.util.c0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/c0.class */
public final class C5677c0 extends pz3 {

    /* renamed from: d */
    private final Context f18448d;

    private C5677c0(Context context, oz3 oz3Var) {
        super(oz3Var);
        this.f18448d = context;
    }

    /* renamed from: b */
    public static gz3 m18108b(Context context) {
        gz3 gz3Var = new gz3(new wz3(new File(context.getCacheDir(), "admob_volley"), 20971520), new C5677c0(context, new c04(null, null)), 4);
        gz3Var.m14774a();
        return gz3Var;
    }

    @Override // com.google.android.gms.internal.ads.pz3, com.google.android.gms.internal.ads.xy3
    /* renamed from: a */
    public final zy3 mo9014a(dz3<?> dz3Var) {
        if (dz3Var.m15641d() == 0) {
            if (Pattern.matches((String) C7192yr.m8714c().m14263c(C6679kw.f25574R2), dz3Var.m15634k())) {
                C7118wr.m9485a();
                if (xh0.m9166l(this.f18448d, 13400000)) {
                    zy3 mo9014a = new w30(this.f18448d).mo9014a(dz3Var);
                    if (mo9014a != null) {
                        String valueOf = String.valueOf(dz3Var.m15634k());
                        C5722o1.m17990k(valueOf.length() != 0 ? "Got gmscore asset response: ".concat(valueOf) : new String("Got gmscore asset response: "));
                        return mo9014a;
                    }
                    String valueOf2 = String.valueOf(dz3Var.m15634k());
                    C5722o1.m17990k(valueOf2.length() != 0 ? "Failed to get gmscore asset response: ".concat(valueOf2) : new String("Failed to get gmscore asset response: "));
                }
            }
        }
        return super.mo9014a(dz3Var);
    }
}
