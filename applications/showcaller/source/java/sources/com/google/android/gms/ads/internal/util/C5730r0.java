package com.google.android.gms.ads.internal.util;

import android.content.Context;
import com.google.android.gms.common.util.C6226d;
import com.google.android.gms.internal.ads.C6679kw;
import com.google.android.gms.internal.ads.C7192yr;
import com.google.android.gms.internal.ads.di0;
import com.google.android.gms.internal.ads.ei0;
import com.google.android.gms.internal.ads.gz3;
import com.google.android.gms.internal.ads.i04;
import com.google.android.gms.internal.ads.r03;
import com.google.android.gms.internal.ads.vi0;
import com.google.android.gms.internal.ads.zy3;
import com.google.android.gms.internal.ads.zzvk;
import java.util.Map;
/* renamed from: com.google.android.gms.ads.internal.util.r0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/r0.class */
public final class C5730r0 {

    /* renamed from: a */
    private static gz3 f18532a;

    /* renamed from: b */
    private static final Object f18533b = new Object();
    @Deprecated

    /* renamed from: c */
    public static final AbstractC5715m0<Void> f18534c = new C5705j0();

    public C5730r0(Context context) {
        gz3 gz3Var;
        context = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        synchronized (f18533b) {
            if (f18532a == null) {
                C6679kw.m13770a(context);
                if (!C6226d.m16818a()) {
                    if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25566Q2)).booleanValue()) {
                        gz3Var = C5677c0.m18108b(context);
                        f18532a = gz3Var;
                    }
                }
                gz3Var = i04.m14515a(context, null);
                f18532a = gz3Var;
            }
        }
    }

    /* renamed from: a */
    public final r03<zy3> m17987a(String str) {
        vi0 vi0Var = new vi0();
        f18532a.m14773b(new C5727q0(str, null, vi0Var));
        return vi0Var;
    }

    /* renamed from: b */
    public final r03<String> m17986b(int i, String str, Map<String, String> map, byte[] bArr) {
        C5721o0 c5721o0 = new C5721o0(null);
        C5709k0 c5709k0 = new C5709k0(this, str, c5721o0);
        di0 di0Var = new di0(null);
        C5712l0 c5712l0 = new C5712l0(this, i, str, c5721o0, c5709k0, bArr, map, di0Var);
        if (di0.m15804j()) {
            try {
                di0Var.m15812b(str, "GET", c5712l0.mo15629p(), c5712l0.mo15628q());
            } catch (zzvk e) {
                ei0.m15464f(e.getMessage());
            }
        }
        f18532a.m14773b(c5712l0);
        return c5721o0;
    }
}
