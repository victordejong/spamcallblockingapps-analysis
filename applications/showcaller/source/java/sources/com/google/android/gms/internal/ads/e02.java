package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.common.util.AbstractC6227e;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/e02.class */
public final class e02 {

    /* renamed from: a */
    private final AbstractC6227e f21959a;

    /* renamed from: b */
    private final f02 f21960b;

    /* renamed from: c */
    private final List<String> f21961c = Collections.synchronizedList(new ArrayList());

    /* renamed from: d */
    private final boolean f21962d = ((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25676d5)).booleanValue();

    /* renamed from: e */
    private final uw1 f21963e;

    public e02(AbstractC6227e abstractC6227e, f02 f02Var, uw1 uw1Var) {
        this.f21959a = abstractC6227e;
        this.f21960b = f02Var;
        this.f21963e = uw1Var;
    }

    /* renamed from: f */
    public static /* synthetic */ void m15614f(e02 e02Var, String str, int i, long j, String str2) {
        StringBuilder sb = new StringBuilder(str.length() + 33);
        sb.append(str);
        sb.append(".");
        sb.append(i);
        sb.append(".");
        sb.append(j);
        String sb2 = sb.toString();
        String str3 = sb2;
        if (!TextUtils.isEmpty(str2)) {
            StringBuilder sb3 = new StringBuilder(sb2.length() + 1 + String.valueOf(str2).length());
            sb3.append(sb2);
            sb3.append(".");
            sb3.append(str2);
            str3 = sb3.toString();
        }
        e02Var.f21961c.add(str3);
    }

    /* renamed from: e */
    public final <T> r03<T> m15615e(jj2 jj2Var, ej2 ej2Var, r03<T> r03Var) {
        long mo16806b = this.f21959a.mo16806b();
        String str = ej2Var.f22251w;
        if (str != null) {
            k03.m13988p(r03Var, new d02(this, mo16806b, str, ej2Var, jj2Var), qi0.f28500f);
        }
        return r03Var;
    }

    /* renamed from: g */
    public final String m15613g() {
        return TextUtils.join("_", this.f21961c);
    }
}
