package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.C1407r;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
@Deprecated
/* renamed from: com.google.android.gms.internal.ads.c4 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/c4.class */
public final class C1678c4 {

    /* renamed from: b */
    private final Map<String, String> f6248b;

    /* renamed from: a */
    private final List<C2061z3> f6247a = new LinkedList();

    /* renamed from: c */
    private final Object f6249c = new Object();

    public C1678c4(boolean z, String str, String str2) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.f6248b = linkedHashMap;
        linkedHashMap.put("action", "make_wv");
        linkedHashMap.put("ad_format", str2);
    }

    /* renamed from: f */
    public static final C2061z3 m7873f() {
        return new C2061z3(C1407r.m8913k().m8245c(), null, null);
    }

    /* renamed from: a */
    public final void m7878a(C1678c4 c1678c4) {
        synchronized (this.f6249c) {
        }
    }

    /* renamed from: b */
    public final boolean m7877b(C2061z3 c2061z3, long j, String... strArr) {
        synchronized (this.f6249c) {
            try {
                for (String str : strArr) {
                    this.f6247a.add(new C2061z3(j, str, c2061z3));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return true;
    }

    /* renamed from: c */
    public final C1660b4 m7876c() {
        C1660b4 c1660b4;
        boolean booleanValue = ((Boolean) C1674c.m7906c().m6878b(C1842m3.f7393d1)).booleanValue();
        StringBuilder sb = new StringBuilder();
        HashMap hashMap = new HashMap();
        synchronized (this.f6249c) {
            try {
                for (C2061z3 c2061z3 : this.f6247a) {
                    long m4664a = c2061z3.m4664a();
                    String m4663b = c2061z3.m4663b();
                    C2061z3 m4662c = c2061z3.m4662c();
                    if (m4662c != null && m4664a > 0) {
                        long m4664a2 = m4662c.m4664a();
                        sb.append(m4663b);
                        sb.append('.');
                        sb.append(m4664a - m4664a2);
                        sb.append(',');
                        if (booleanValue) {
                            if (!hashMap.containsKey(Long.valueOf(m4662c.m4664a()))) {
                                hashMap.put(Long.valueOf(m4662c.m4664a()), new StringBuilder(m4663b));
                            } else {
                                StringBuilder sb2 = (StringBuilder) hashMap.get(Long.valueOf(m4662c.m4664a()));
                                sb2.append('+');
                                sb2.append(m4663b);
                            }
                        }
                    }
                }
                this.f6247a.clear();
                String str = null;
                if (!TextUtils.isEmpty(null)) {
                    sb.append((String) null);
                } else if (sb.length() > 0) {
                    sb.setLength(sb.length() - 1);
                }
                StringBuilder sb3 = new StringBuilder();
                if (booleanValue) {
                    for (Map.Entry entry : hashMap.entrySet()) {
                        sb3.append((CharSequence) entry.getValue());
                        sb3.append('.');
                        sb3.append(C1407r.m8913k().m8247a() + (((Long) entry.getKey()).longValue() - C1407r.m8913k().m8245c()));
                        sb3.append(',');
                    }
                    if (sb3.length() > 0) {
                        sb3.setLength(sb3.length() - 1);
                    }
                    str = sb3.toString();
                }
                c1660b4 = new C1660b4(sb.toString(), str);
            } catch (Throwable th) {
                throw th;
            }
        }
        return c1660b4;
    }

    /* renamed from: d */
    public final void m7875d(String str, String str2) {
        C1917r3 m4596a;
        if (!TextUtils.isEmpty(str2) && (m4596a = C1407r.m8916h().m4596a()) != null) {
            synchronized (this.f6249c) {
                AbstractC2047y3 m5995d = m4596a.m5995d(str);
                Map<String, String> map = this.f6248b;
                map.put(str, m5995d.m4809a(map.get(str), str2));
            }
        }
    }

    /* renamed from: e */
    public final Map<String, String> m7874e() {
        Map<String, String> map;
        synchronized (this.f6249c) {
            C1407r.m8916h().m4596a();
            map = this.f6248b;
        }
        return map;
    }
}
