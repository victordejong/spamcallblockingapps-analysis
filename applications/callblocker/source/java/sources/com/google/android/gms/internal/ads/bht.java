package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C2341q;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bht.class */
public final class bht {

    /* renamed from: a */
    private List<Map<String, String>> f11281a = new ArrayList();

    /* renamed from: b */
    private boolean f11282b = false;

    /* renamed from: c */
    private boolean f11283c = false;

    /* renamed from: d */
    private String f11284d;

    /* renamed from: e */
    private bho f11285e;

    public bht(String str, bho bhoVar) {
        this.f11284d = str;
        this.f11285e = bhoVar;
    }

    /* renamed from: c */
    private final Map<String, String> m11915c() {
        Map<String, String> m11925a = this.f11285e.m11925a();
        m11925a.put("tms", Long.toString(C2341q.m14737j().mo13861b(), 10));
        m11925a.put("tid", this.f11284d);
        return m11925a;
    }

    /* renamed from: a */
    public final void m11920a() {
        synchronized (this) {
            if (((Boolean) dyx.m8158e().m7876a(edi.f16358aQ)).booleanValue() && !this.f11282b) {
                Map<String, String> m11915c = m11915c();
                m11915c.put("action", "init_started");
                this.f11281a.add(m11915c);
                this.f11282b = true;
            }
        }
    }

    /* renamed from: a */
    public final void m11919a(String str) {
        synchronized (this) {
            if (((Boolean) dyx.m8158e().m7876a(edi.f16358aQ)).booleanValue()) {
                Map<String, String> m11915c = m11915c();
                m11915c.put("action", "adapter_init_started");
                m11915c.put("ancn", str);
                this.f11281a.add(m11915c);
            }
        }
    }

    /* renamed from: a */
    public final void m11918a(String str, String str2) {
        synchronized (this) {
            if (((Boolean) dyx.m8158e().m7876a(edi.f16358aQ)).booleanValue()) {
                Map<String, String> m11915c = m11915c();
                m11915c.put("action", "adapter_init_finished");
                m11915c.put("ancn", str);
                m11915c.put("rqe", str2);
                this.f11281a.add(m11915c);
            }
        }
    }

    /* renamed from: b */
    public final void m11917b() {
        synchronized (this) {
            if (((Boolean) dyx.m8158e().m7876a(edi.f16358aQ)).booleanValue() && !this.f11283c) {
                Map<String, String> m11915c = m11915c();
                m11915c.put("action", "init_finished");
                this.f11281a.add(m11915c);
                for (Map<String, String> map : this.f11281a) {
                    this.f11285e.m11923a(map);
                }
                this.f11283c = true;
            }
        }
    }

    /* renamed from: b */
    public final void m11916b(String str) {
        synchronized (this) {
            if (((Boolean) dyx.m8158e().m7876a(edi.f16358aQ)).booleanValue()) {
                Map<String, String> m11915c = m11915c();
                m11915c.put("action", "adapter_init_finished");
                m11915c.put("ancn", str);
                this.f11281a.add(m11915c);
            }
        }
    }
}
