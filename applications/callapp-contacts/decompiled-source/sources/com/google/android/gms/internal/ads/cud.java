package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.f;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cud.class */
final class cud {

    /* renamed from: a  reason: collision with root package name */
    private final f f26404a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, List<String>> f26405b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, Long> f26406c = new HashMap();

    public cud(f fVar) {
        this.f26404a = fVar;
    }

    private final void b(String str, String str2) {
        if (!this.f26405b.containsKey(str)) {
            this.f26405b.put(str, new ArrayList());
        }
        this.f26405b.get(str).add(str2);
    }

    public final List<cug> a() {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, List<String>> entry : this.f26405b.entrySet()) {
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

    public final void a(String str) {
        if (this.f26406c.containsKey(str)) {
            long b2 = this.f26404a.b();
            long longValue = this.f26406c.remove(str).longValue();
            StringBuilder sb = new StringBuilder(20);
            sb.append(b2 - longValue);
            b(str, sb.toString());
            return;
        }
        this.f26406c.put(str, Long.valueOf(this.f26404a.b()));
    }

    public final void a(String str, String str2) {
        if (this.f26406c.containsKey(str)) {
            long b2 = this.f26404a.b();
            long longValue = this.f26406c.remove(str).longValue();
            StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 20);
            sb.append(str2);
            sb.append(b2 - longValue);
            b(str, sb.toString());
            return;
        }
        this.f26406c.put(str, Long.valueOf(this.f26404a.b()));
    }
}
