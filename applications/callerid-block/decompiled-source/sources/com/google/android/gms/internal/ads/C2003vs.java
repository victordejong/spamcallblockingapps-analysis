package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.ads.vs */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/vs.class */
final class C2003vs {

    /* renamed from: a */
    private final ArrayList<br2> f8945a = new ArrayList<>();

    /* renamed from: b */
    private long f8946b;

    C2003vs() {
    }

    /* renamed from: a */
    final long m5187a() {
        Iterator<br2> it = this.f8945a.iterator();
        while (it.hasNext()) {
            Map a = it.next().a();
            if (a != null) {
                for (Map.Entry entry : a.entrySet()) {
                    try {
                        if ("content-length".equalsIgnoreCase((String) entry.getKey())) {
                            this.f8946b = Math.max(this.f8946b, Long.parseLong((String) ((List) entry.getValue()).get(0)));
                        }
                    } catch (RuntimeException e) {
                    }
                }
                it.remove();
            }
        }
        return this.f8946b;
    }

    /* renamed from: b */
    final void m5186b(br2 br2Var) {
        this.f8945a.add(br2Var);
    }
}
