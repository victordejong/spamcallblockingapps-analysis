package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
@Deprecated
/* renamed from: com.google.android.gms.internal.ads.a4 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/a4.class */
public final class C1642a4 {

    /* renamed from: a */
    private final Map<String, C2061z3> f5937a = new HashMap();

    /* renamed from: b */
    private final C1678c4 f5938b;

    public C1642a4(C1678c4 c4Var) {
        this.f5938b = c4Var;
    }

    /* renamed from: a */
    public final void m8164a(String str, C2061z3 z3Var) {
        this.f5937a.put(str, z3Var);
    }

    /* renamed from: b */
    public final void m8163b(String str, String str2, long j) {
        C1678c4 c4Var = this.f5938b;
        C2061z3 z3Var = this.f5937a.get(str2);
        if (z3Var != null) {
            c4Var.m7877b(z3Var, j, str);
        }
        this.f5937a.put(str, new C2061z3(j, null, null));
    }

    /* renamed from: c */
    public final C1678c4 m8162c() {
        return this.f5938b;
    }
}
