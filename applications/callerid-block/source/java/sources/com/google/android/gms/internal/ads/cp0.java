package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cp0.class */
public final class cp0 {
    @GuardedBy("this")

    /* renamed from: a */
    private final Map<String, bp0> f6285a = new HashMap();

    cp0() {
    }

    /* renamed from: a */
    public final void m7790a(String str, im1 im1Var) {
        synchronized (this) {
            if (this.f6285a.containsKey(str)) {
                return;
            }
            try {
                this.f6285a.put(str, new bp0(str, im1Var.m7174C(), im1Var.m7173a()));
            } catch (zzdrl e) {
            }
        }
    }

    /* renamed from: b */
    public final void m7789b(String str, AbstractC1752gg abstractC1752gg) {
        synchronized (this) {
            if (this.f6285a.containsKey(str)) {
                return;
            }
            try {
                this.f6285a.put(str, new bp0(str, abstractC1752gg.m7386d(), abstractC1752gg.m7384g()));
            } catch (Throwable th) {
            }
        }
    }

    @Nullable
    /* renamed from: c */
    public final bp0 m7788c(String str) {
        bp0 bp0Var;
        synchronized (this) {
            bp0Var = this.f6285a.get(str);
        }
        return bp0Var;
    }

    @Nullable
    /* renamed from: d */
    public final bp0 m7787d(List<String> list) {
        for (String str : list) {
            bp0 m7788c = m7788c(str);
            if (m7788c != null) {
                return m7788c;
            }
        }
        return null;
    }
}
