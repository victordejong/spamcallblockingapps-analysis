package com.google.android.gms.ads.internal.util;

import android.content.Context;
import com.google.android.gms.common.util.C1609e;
import com.google.android.gms.internal.ads.C1674c;
import com.google.android.gms.internal.ads.C1695cw;
import com.google.android.gms.internal.ads.C1842m3;
import com.google.android.gms.internal.ads.C1879oo;
import com.google.android.gms.internal.ads.C1894po;
import com.google.android.gms.internal.ads.C2010w3;
import com.google.android.gms.internal.ads.fp;
import com.google.android.gms.internal.ads.rz1;
import com.google.android.gms.internal.ads.yy2;
import com.google.android.gms.internal.ads.zzk;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* renamed from: com.google.android.gms.ads.internal.util.d0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/d0.class */
public final class C1414d0 {

    /* renamed from: a */
    private static C2010w3 f5560a;

    /* renamed from: b */
    private static final Object f5561b = new Object();

    public C1414d0(Context context) {
        C2010w3 c2010w3;
        context = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        synchronized (f5561b) {
            if (f5560a == null) {
                C1842m3.m6600a(context);
                if (!C1609e.m8248a()) {
                    if (((Boolean) C1674c.m7906c().m6878b(C1842m3.f7464n2)).booleanValue()) {
                        c2010w3 = p.b(context);
                        f5560a = c2010w3;
                    }
                }
                c2010w3 = C1695cw.m7771a(context, null);
                f5560a = c2010w3;
            }
        }
    }

    /* renamed from: a */
    public final rz1<yy2> m8845a(String str) {
        fp fpVar = new fp();
        f5560a.m5126b(new c0(str, (Map) null, fpVar));
        return fpVar;
    }

    /* renamed from: b */
    public final rz1<String> m8844b(int i, String str, Map<String, String> map, byte[] bArr) {
        a0 a0Var = new a0((C1455w) null);
        x xVar = new x(this, str, a0Var);
        C1879oo c1879oo = new C1879oo(null);
        y yVar = new y(this, i, str, a0Var, xVar, bArr, map, c1879oo);
        if (C1879oo.m6290j()) {
            try {
                c1879oo.m6298b(str, "GET", yVar.m7888r(), yVar.m7887s());
            } catch (zzk e) {
                C1894po.m6180f(e.getMessage());
            }
        }
        f5560a.m5126b(yVar);
        return a0Var;
    }
}
