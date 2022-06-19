package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.util.AbstractC5728q1;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ao1.class */
public final class ao1 {

    /* renamed from: e */
    private final String f20068e;

    /* renamed from: f */
    private final wn1 f20069f;

    /* renamed from: b */
    private final List<Map<String, String>> f20065b = new ArrayList();

    /* renamed from: c */
    private boolean f20066c = false;

    /* renamed from: d */
    private boolean f20067d = false;

    /* renamed from: a */
    private final AbstractC5728q1 f20064a = C5667s.m18156h().m12230p();

    public ao1(String str, wn1 wn1Var) {
        this.f20068e = str;
        this.f20069f = wn1Var;
    }

    /* renamed from: f */
    private final Map<String, String> m16512f() {
        Map<String, String> m9548c = this.f20069f.m9548c();
        m9548c.put("tms", Long.toString(C5667s.m18153k().mo16806b(), 10));
        m9548c.put("tid", this.f20064a.mo17948t() ? "" : this.f20068e);
        return m9548c;
    }

    /* renamed from: a */
    public final void m16517a(String str) {
        synchronized (this) {
            if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25784r1)).booleanValue()) {
                if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25717i6)).booleanValue()) {
                    Map<String, String> m16512f = m16512f();
                    m16512f.put("action", "adapter_init_started");
                    m16512f.put("ancn", str);
                    this.f20065b.add(m16512f);
                }
            }
        }
    }

    /* renamed from: b */
    public final void m16516b(String str) {
        synchronized (this) {
            if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25784r1)).booleanValue()) {
                if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25717i6)).booleanValue()) {
                    Map<String, String> m16512f = m16512f();
                    m16512f.put("action", "adapter_init_finished");
                    m16512f.put("ancn", str);
                    this.f20065b.add(m16512f);
                }
            }
        }
    }

    /* renamed from: c */
    public final void m16515c(String str, String str2) {
        synchronized (this) {
            if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25784r1)).booleanValue()) {
                if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25717i6)).booleanValue()) {
                    Map<String, String> m16512f = m16512f();
                    m16512f.put("action", "adapter_init_finished");
                    m16512f.put("ancn", str);
                    m16512f.put("rqe", str2);
                    this.f20065b.add(m16512f);
                }
            }
        }
    }

    /* renamed from: d */
    public final void m16514d() {
        synchronized (this) {
            if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25784r1)).booleanValue()) {
                if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25717i6)).booleanValue()) {
                    if (this.f20066c) {
                        return;
                    }
                    Map<String, String> m16512f = m16512f();
                    m16512f.put("action", "init_started");
                    this.f20065b.add(m16512f);
                    this.f20066c = true;
                }
            }
        }
    }

    /* renamed from: e */
    public final void m16513e() {
        synchronized (this) {
            if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25784r1)).booleanValue()) {
                if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25717i6)).booleanValue()) {
                    if (this.f20067d) {
                        return;
                    }
                    Map<String, String> m16512f = m16512f();
                    m16512f.put("action", "init_finished");
                    this.f20065b.add(m16512f);
                    for (Map<String, String> map : this.f20065b) {
                        this.f20069f.m8768a(map);
                    }
                    this.f20067d = true;
                }
            }
        }
    }
}
