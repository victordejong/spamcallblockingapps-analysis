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

    public C1642a4(C1678c4 c1678c4) {
        this.f5938b = c1678c4;
    }

    /* renamed from: a */
    public final void m8164a(String str, C2061z3 c2061z3) {
        this.f5937a.put(str, c2061z3);
    }

    /* renamed from: b */
    public final void m8163b(String str, String str2, long j) {
        C1678c4 c1678c4 = this.f5938b;
        C2061z3 c2061z3 = this.f5937a.get(str2);
        if (c2061z3 != null) {
            c1678c4.m7877b(c2061z3, j, str);
        }
        this.f5937a.put(str, new C2061z3(j, null, null));
    }

    /* renamed from: c */
    public final C1678c4 m8162c() {
        return this.f5938b;
    }
}
