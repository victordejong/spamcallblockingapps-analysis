package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.C5667s;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
@Deprecated
/* renamed from: com.google.android.gms.internal.ads.ax */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ax.class */
public final class C6308ax {

    /* renamed from: b */
    private final Map<String, String> f20165b;

    /* renamed from: a */
    private final List<C7123ww> f20164a = new LinkedList();

    /* renamed from: c */
    private final Object f20166c = new Object();

    public C6308ax(boolean z, String str, String str2) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.f20165b = linkedHashMap;
        linkedHashMap.put("action", "make_wv");
        linkedHashMap.put("ad_format", str2);
    }

    /* renamed from: f */
    public static final C7123ww m16470f() {
        return new C7123ww(C5667s.m18153k().mo16806b(), null, null);
    }

    /* renamed from: a */
    public final void m16475a(C6308ax c6308ax) {
        synchronized (this.f20166c) {
        }
    }

    /* renamed from: b */
    public final boolean m16474b(C7123ww c7123ww, long j, String... strArr) {
        synchronized (this.f20166c) {
            for (int i = 0; i <= 0; i++) {
                this.f20164a.add(new C7123ww(j, strArr[i], c7123ww));
            }
        }
        return true;
    }

    /* renamed from: c */
    public final C7197yw m16473c() {
        C7197yw c7197yw;
        boolean booleanValue = ((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25736l1)).booleanValue();
        StringBuilder sb = new StringBuilder();
        HashMap hashMap = new HashMap();
        synchronized (this.f20166c) {
            for (C7123ww c7123ww : this.f20164a) {
                long m9434a = c7123ww.m9434a();
                String m9433b = c7123ww.m9433b();
                C7123ww m9432c = c7123ww.m9432c();
                if (m9432c != null && m9434a > 0) {
                    long m9434a2 = m9432c.m9434a();
                    sb.append(m9433b);
                    sb.append('.');
                    sb.append(m9434a - m9434a2);
                    sb.append(',');
                    if (booleanValue) {
                        if (!hashMap.containsKey(Long.valueOf(m9432c.m9434a()))) {
                            hashMap.put(Long.valueOf(m9432c.m9434a()), new StringBuilder(m9433b));
                        } else {
                            StringBuilder sb2 = (StringBuilder) hashMap.get(Long.valueOf(m9432c.m9434a()));
                            sb2.append('+');
                            sb2.append(m9433b);
                        }
                    }
                }
            }
            this.f20164a.clear();
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
                    sb3.append(C5667s.m18153k().mo16807a() + (((Long) entry.getKey()).longValue() - C5667s.m18153k().mo16806b()));
                    sb3.append(',');
                }
                if (sb3.length() > 0) {
                    sb3.setLength(sb3.length() - 1);
                }
                str = sb3.toString();
            }
            c7197yw = new C7197yw(sb.toString(), str);
        }
        return c7197yw;
    }

    /* renamed from: d */
    public final void m16472d(String str, String str2) {
        C6864pw m12241e;
        if (!TextUtils.isEmpty(str2) && (m12241e = C5667s.m18156h().m12241e()) != null) {
            synchronized (this.f20166c) {
                AbstractC7086vw m12117d = m12241e.m12117d(str);
                Map<String, String> map = this.f20165b;
                map.put(str, m12117d.mo9861a(map.get(str), str2));
            }
        }
    }

    /* renamed from: e */
    public final Map<String, String> m16471e() {
        Map<String, String> map;
        synchronized (this.f20166c) {
            C5667s.m18156h().m12241e();
            map = this.f20165b;
        }
        return map;
    }
}
