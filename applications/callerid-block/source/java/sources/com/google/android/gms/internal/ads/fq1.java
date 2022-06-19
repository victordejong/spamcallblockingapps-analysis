package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.AbstractC1610f;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/fq1.class */
final class fq1 {

    /* renamed from: a */
    private final AbstractC1610f f6571a;

    /* renamed from: b */
    private final Map<String, List<String>> f6572b = new HashMap();

    /* renamed from: c */
    private final Map<String, Long> f6573c = new HashMap();

    public fq1(AbstractC1610f abstractC1610f) {
        this.f6571a = abstractC1610f;
    }

    /* renamed from: d */
    private final void m7462d(String str, String str2) {
        if (!this.f6572b.containsKey(str)) {
            this.f6572b.put(str, new ArrayList());
        }
        this.f6572b.get(str).add(str2);
    }

    /* renamed from: a */
    public final void m7465a(String str) {
        if (!this.f6573c.containsKey(str)) {
            this.f6573c.put(str, Long.valueOf(this.f6571a.m8245c()));
            return;
        }
        long m8245c = this.f6571a.m8245c();
        long longValue = this.f6573c.remove(str).longValue();
        StringBuilder sb = new StringBuilder(20);
        sb.append(m8245c - longValue);
        m7462d(str, sb.toString());
    }

    /* renamed from: b */
    public final void m7464b(String str, String str2) {
        if (!this.f6573c.containsKey(str)) {
            this.f6573c.put(str, Long.valueOf(this.f6571a.m8245c()));
            return;
        }
        long m8245c = this.f6571a.m8245c();
        long longValue = this.f6573c.remove(str).longValue();
        StringBuilder sb = new StringBuilder(str2.length() + 20);
        sb.append(str2);
        sb.append(m8245c - longValue);
        m7462d(str, sb.toString());
    }

    /* renamed from: c */
    public final List<eq1> m7463c() {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, List<String>> entry : this.f6572b.entrySet()) {
            int i = 0;
            if (entry.getValue().size() > 1) {
                for (String str : entry.getValue()) {
                    String key = entry.getKey();
                    i++;
                    StringBuilder sb = new StringBuilder(String.valueOf(key).length() + 12);
                    sb.append(key);
                    sb.append(".");
                    sb.append(i);
                    arrayList.add(new eq1(sb.toString(), str));
                }
            } else {
                arrayList.add(new eq1(entry.getKey(), entry.getValue().get(0)));
            }
        }
        return arrayList;
    }
}
