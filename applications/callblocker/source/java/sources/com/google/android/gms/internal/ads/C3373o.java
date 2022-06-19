package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.C2341q;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* renamed from: com.google.android.gms.internal.ads.o */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/o.class */
public final class C3373o {

    /* renamed from: e */
    private C3373o f17053e;

    /* renamed from: b */
    private final List<C3319m> f17050b = new LinkedList();

    /* renamed from: c */
    private final Map<String, String> f17051c = new LinkedHashMap();

    /* renamed from: d */
    private final Object f17052d = new Object();

    /* renamed from: a */
    boolean f17049a = true;

    public C3373o(boolean z, String str, String str2) {
        this.f17051c.put("action", str);
        this.f17051c.put("ad_format", str2);
    }

    /* renamed from: a */
    public final C3319m m7382a(long j) {
        C3319m c3319m = null;
        if (this.f17049a) {
            c3319m = new C3319m(j, null, null);
        }
        return c3319m;
    }

    /* renamed from: a */
    public final String m7383a() {
        String sb;
        StringBuilder sb2 = new StringBuilder();
        synchronized (this.f17052d) {
            for (C3319m c3319m : this.f17050b) {
                long m7471a = c3319m.m7471a();
                String m7470b = c3319m.m7470b();
                C3319m m7469c = c3319m.m7469c();
                if (m7469c != null && m7471a > 0) {
                    sb2.append(m7470b).append('.').append(m7471a - m7469c.m7471a()).append(',');
                }
            }
            this.f17050b.clear();
            if (!TextUtils.isEmpty(null)) {
                sb2.append((String) null);
            } else if (sb2.length() > 0) {
                sb2.setLength(sb2.length() - 1);
            }
            sb = sb2.toString();
        }
        return sb;
    }

    /* renamed from: a */
    public final void m7380a(C3373o c3373o) {
        synchronized (this.f17052d) {
            this.f17053e = c3373o;
        }
    }

    /* renamed from: a */
    public final void m7379a(String str, String str2) {
        C3102e m7100a;
        if (!this.f17049a || TextUtils.isEmpty(str2) || (m7100a = C2341q.m14740g().m7100a()) == null) {
            return;
        }
        synchronized (this.f17052d) {
            AbstractC3211i m8108a = m7100a.m8108a(str);
            Map<String, String> map = this.f17051c;
            map.put(str, m8108a.mo7435a(map.get(str), str2));
        }
    }

    /* renamed from: a */
    public final boolean m7381a(C3319m c3319m, long j, String... strArr) {
        synchronized (this.f17052d) {
            for (String str : strArr) {
                this.f17050b.add(new C3319m(j, str, c3319m));
            }
        }
        return true;
    }

    /* renamed from: b */
    public final Map<String, String> m7378b() {
        Map<String, String> m8106a;
        synchronized (this.f17052d) {
            C3102e m7100a = C2341q.m14740g().m7100a();
            m8106a = (m7100a == null || this.f17053e == null) ? this.f17051c : m7100a.m8106a(this.f17051c, this.f17053e.m7378b());
        }
        return m8106a;
    }
}
