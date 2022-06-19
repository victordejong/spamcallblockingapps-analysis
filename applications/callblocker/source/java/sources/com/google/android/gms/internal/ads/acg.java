package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/acg.class */
final class acg {

    /* renamed from: a */
    private final ArrayList<drr> f7816a = new ArrayList<>();

    /* renamed from: b */
    private long f7817b;

    /* renamed from: a */
    public final long m13644a() {
        Iterator<drr> it = this.f7816a.iterator();
        while (it.hasNext()) {
            Map<String, List<String>> m8806c = it.next().m8806c();
            if (m8806c != null) {
                for (Map.Entry<String, List<String>> entry : m8806c.entrySet()) {
                    try {
                        if ("content-length".equalsIgnoreCase(entry.getKey())) {
                            this.f7817b = Math.max(this.f7817b, Long.parseLong(entry.getValue().get(0)));
                        }
                    } catch (RuntimeException e) {
                    }
                }
                it.remove();
            }
        }
        return this.f7817b;
    }

    /* renamed from: a */
    public final void m13643a(drr drrVar) {
        this.f7816a.add(drrVar);
    }
}
