package com.google.android.play.core.assetpacks;

import java.util.HashMap;
import java.util.Map;
/* renamed from: com.google.android.play.core.assetpacks.ap */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/ap.class */
public final class C14915ap {

    /* renamed from: a */
    private final Map<String, Double> f54462a = new HashMap();

    /* renamed from: a */
    public final double m9777a(String str, C14930bd c14930bd) {
        double d;
        synchronized (this) {
            d = (((C14909aj) c14930bd).f54424e + 1.0d) / ((C14909aj) c14930bd).f54425f;
            this.f54462a.put(str, Double.valueOf(d));
        }
        return d;
    }

    /* renamed from: a */
    public final void m9778a(String str) {
        synchronized (this) {
            this.f54462a.put(str, Double.valueOf(0.0d));
        }
    }

    /* renamed from: b */
    public final double m9776b(String str) {
        synchronized (this) {
            Double d = this.f54462a.get(str);
            if (d == null) {
                return 0.0d;
            }
            return d.doubleValue();
        }
    }
}
