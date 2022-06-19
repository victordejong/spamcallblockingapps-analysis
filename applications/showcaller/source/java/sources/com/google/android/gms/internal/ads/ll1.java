package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ll1.class */
public final class ll1 {

    /* renamed from: a */
    private final Map<String, kl1> f26171a = new HashMap();

    /* renamed from: a */
    public final void m13487a(String str, ok2 ok2Var) {
        synchronized (this) {
            if (this.f26171a.containsKey(str)) {
                return;
            }
            try {
                this.f26171a.put(str, new kl1(str, ok2Var.m12634C(), ok2Var.m12633a()));
            } catch (zzfaw e) {
            }
        }
    }

    /* renamed from: b */
    public final void m13486b(String str, r90 r90Var) {
        synchronized (this) {
            if (this.f26171a.containsKey(str)) {
                return;
            }
            try {
                this.f26171a.put(str, new kl1(str, r90Var.mo11645d(), r90Var.zzg()));
            } catch (Throwable th) {
            }
        }
    }

    /* renamed from: c */
    public final kl1 m13485c(String str) {
        kl1 kl1Var;
        synchronized (this) {
            kl1Var = this.f26171a.get(str);
        }
        return kl1Var;
    }

    /* renamed from: d */
    public final kl1 m13484d(List<String> list) {
        for (String str : list) {
            kl1 m13485c = m13485c(str);
            if (m13485c != null) {
                return m13485c;
            }
        }
        return null;
    }
}
