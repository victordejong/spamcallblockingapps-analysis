package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.AbstractC12102f;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cud.class */
final class cud {

    /* renamed from: a */
    private final AbstractC12102f f46553a;

    /* renamed from: b */
    private final Map<String, List<String>> f46554b = new HashMap();

    /* renamed from: c */
    private final Map<String, Long> f46555c = new HashMap();

    public cud(AbstractC12102f abstractC12102f) {
        this.f46553a = abstractC12102f;
    }

    /* renamed from: b */
    private final void m17219b(String str, String str2) {
        if (!this.f46554b.containsKey(str)) {
            this.f46554b.put(str, new ArrayList());
        }
        this.f46554b.get(str).add(str2);
    }

    /* renamed from: a */
    public final List<cug> m17222a() {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, List<String>> entry : this.f46554b.entrySet()) {
            int i = 0;
            if (entry.getValue().size() > 1) {
                for (String str : entry.getValue()) {
                    String key = entry.getKey();
                    i++;
                    StringBuilder sb = new StringBuilder(String.valueOf(key).length() + 12);
                    sb.append(key);
                    sb.append(".");
                    sb.append(i);
                    arrayList.add(new cug(sb.toString(), str));
                }
            } else {
                arrayList.add(new cug(entry.getKey(), entry.getValue().get(0)));
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public final void m17221a(String str) {
        if (!this.f46555c.containsKey(str)) {
            this.f46555c.put(str, Long.valueOf(this.f46553a.mo19038b()));
            return;
        }
        long mo19038b = this.f46553a.mo19038b();
        long longValue = this.f46555c.remove(str).longValue();
        StringBuilder sb = new StringBuilder(20);
        sb.append(mo19038b - longValue);
        m17219b(str, sb.toString());
    }

    /* renamed from: a */
    public final void m17220a(String str, String str2) {
        if (!this.f46555c.containsKey(str)) {
            this.f46555c.put(str, Long.valueOf(this.f46553a.mo19038b()));
            return;
        }
        long mo19038b = this.f46553a.mo19038b();
        long longValue = this.f46555c.remove(str).longValue();
        StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 20);
        sb.append(str2);
        sb.append(mo19038b - longValue);
        m17219b(str, sb.toString());
    }
}
