package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.common.util.AbstractC1610f;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/l31.class */
public final class l31 {

    /* renamed from: a */
    private final AbstractC1610f f7083a;

    /* renamed from: b */
    private final m31 f7084b;

    /* renamed from: c */
    private final List<String> f7085c = Collections.synchronizedList(new ArrayList());

    /* renamed from: d */
    private final boolean f7086d = ((Boolean) C1674c.m7906c().m6878b(C1842m3.f7487q4)).booleanValue();

    /* renamed from: e */
    private final a01 f7087e;

    public l31(AbstractC1610f fVar, m31 m31Var, a01 a01Var) {
        this.f7083a = fVar;
        this.f7084b = m31Var;
        this.f7087e = a01Var;
    }

    /* renamed from: d */
    static /* synthetic */ void m6724d(l31 l31Var, String str, int i, long j, String str2) {
        StringBuilder sb = new StringBuilder(str.length() + 33);
        sb.append(str);
        sb.append(".");
        sb.append(i);
        sb.append(".");
        sb.append(j);
        String sb2 = sb.toString();
        String str3 = sb2;
        if (!TextUtils.isEmpty(str2)) {
            StringBuilder sb3 = new StringBuilder(String.valueOf(sb2).length() + 1 + String.valueOf(str2).length());
            sb3.append(sb2);
            sb3.append(".");
            sb3.append(str2);
            str3 = sb3.toString();
        }
        l31Var.f7085c.add(str3);
    }

    /* renamed from: a */
    final <T> rz1<T> m6727a(dl1 dl1Var, al1 al1Var, rz1<T> rz1Var) {
        long c = this.f7083a.m8245c();
        String str = al1Var.f6035v;
        if (str != null) {
            kz1.o(rz1Var, new k31(this, c, str, al1Var, dl1Var), C2073zo.f9415f);
        }
        return rz1Var;
    }

    /* renamed from: b */
    public final String m6726b() {
        return TextUtils.join("_", this.f7085c);
    }
}
