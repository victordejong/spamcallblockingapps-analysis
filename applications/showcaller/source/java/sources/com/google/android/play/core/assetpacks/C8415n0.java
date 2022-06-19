package com.google.android.play.core.assetpacks;

import java.util.HashMap;
import java.util.Map;
/* renamed from: com.google.android.play.core.assetpacks.n0 */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/assetpacks/n0.class */
public final class C8415n0 {

    /* renamed from: a */
    private final Map<String, Double> f37862a = new HashMap();

    /* renamed from: a */
    public final void m3717a(String str) {
        synchronized (this) {
            this.f37862a.put(str, Double.valueOf(0.0d));
        }
    }

    /* renamed from: b */
    public final double m3716b(String str) {
        synchronized (this) {
            Double d = this.f37862a.get(str);
            if (d == null) {
                return 0.0d;
            }
            return d.doubleValue();
        }
    }

    /* renamed from: c */
    public final double m3715c(String str, C8367b1 c8367b1) {
        double d;
        synchronized (this) {
            d = (((C8395i0) c8367b1).f37789g + 1.0d) / ((C8395i0) c8367b1).f37790h;
            this.f37862a.put(str, Double.valueOf(d));
        }
        return d;
    }
}
