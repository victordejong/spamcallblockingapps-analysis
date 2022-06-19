package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/add.class */
final class add {

    /* renamed from: a */
    final ArrayList<ech> f39965a = new ArrayList<>();

    /* renamed from: b */
    private long f39966b;

    /* renamed from: a */
    public final long m18867a() {
        Iterator<ech> it2 = this.f39965a.iterator();
        while (it2.hasNext()) {
            Map<String, List<String>> mo15277b = it2.next().mo15277b();
            if (mo15277b != null) {
                for (Map.Entry<String, List<String>> entry : mo15277b.entrySet()) {
                    try {
                        if ("content-length".equalsIgnoreCase(entry.getKey())) {
                            this.f39966b = Math.max(this.f39966b, Long.parseLong(entry.getValue().get(0)));
                        }
                    } catch (RuntimeException e) {
                    }
                }
                it2.remove();
            }
        }
        return this.f39966b;
    }
}
