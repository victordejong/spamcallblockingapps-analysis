package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.AbstractC6227e;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/oo2.class */
final class oo2 {

    /* renamed from: a */
    private final AbstractC6227e f27659a;

    /* renamed from: b */
    private final Map<String, List<String>> f27660b = new HashMap();

    /* renamed from: c */
    private final Map<String, Long> f27661c = new HashMap();

    public oo2(AbstractC6227e abstractC6227e) {
        this.f27659a = abstractC6227e;
    }

    /* renamed from: d */
    private final void m12568d(String str, String str2) {
        if (!this.f27660b.containsKey(str)) {
            this.f27660b.put(str, new ArrayList());
        }
        this.f27660b.get(str).add(str2);
    }

    /* renamed from: a */
    public final void m12571a(String str) {
        if (!this.f27661c.containsKey(str)) {
            this.f27661c.put(str, Long.valueOf(this.f27659a.mo16806b()));
            return;
        }
        long mo16806b = this.f27659a.mo16806b();
        long longValue = this.f27661c.remove(str).longValue();
        StringBuilder sb = new StringBuilder(20);
        sb.append(mo16806b - longValue);
        m12568d(str, sb.toString());
    }

    /* renamed from: b */
    public final void m12570b(String str, String str2) {
        if (!this.f27661c.containsKey(str)) {
            this.f27661c.put(str, Long.valueOf(this.f27659a.mo16806b()));
            return;
        }
        long mo16806b = this.f27659a.mo16806b();
        long longValue = this.f27661c.remove(str).longValue();
        StringBuilder sb = new StringBuilder(str2.length() + 20);
        sb.append(str2);
        sb.append(mo16806b - longValue);
        m12568d(str, sb.toString());
    }

    /* renamed from: c */
    public final List<no2> m12569c() {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, List<String>> entry : this.f27660b.entrySet()) {
            int i = 0;
            if (entry.getValue().size() > 1) {
                for (String str : entry.getValue()) {
                    String key = entry.getKey();
                    i++;
                    StringBuilder sb = new StringBuilder(String.valueOf(key).length() + 12);
                    sb.append(key);
                    sb.append(".");
                    sb.append(i);
                    arrayList.add(new no2(sb.toString(), str));
                }
            } else {
                arrayList.add(new no2(entry.getKey(), entry.getValue().get(0)));
            }
        }
        return arrayList;
    }
}
