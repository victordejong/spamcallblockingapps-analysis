package com.google.android.gms.internal.ads;

import com.google.android.gms.common.internal.C6155o;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/o20.class */
public final class o20 implements n20<Object> {

    /* renamed from: a */
    private final lq1 f27402a;

    public o20(lq1 lq1Var) {
        C6155o.m17017k(lq1Var, "The Inspector Manager must not be null");
        this.f27402a = lq1Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r2v1 */
    @Override // com.google.android.gms.internal.ads.n20
    /* renamed from: a */
    public final void mo8404a(Object obj, Map<String, String> map) {
        if (map == null || !map.containsKey("extras")) {
            return;
        }
        ?? r11 = true;
        if (map.containsKey("expires")) {
            try {
                r11 = Long.parseLong(map.get("expires"));
            } catch (NumberFormatException e) {
                r11 = true;
            }
        }
        this.f27402a.m13447i(map.get("extras"), r11 == true ? 1L : 0L);
    }
}
