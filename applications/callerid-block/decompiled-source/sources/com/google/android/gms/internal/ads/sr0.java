package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C1407r;
import com.google.android.gms.ads.internal.util.AbstractC1409a1;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/sr0.class */
public final class sr0 {

    /* renamed from: e */
    private final String f8548e;

    /* renamed from: f */
    private final or0 f8549f;

    /* renamed from: b */
    private final List<Map<String, String>> f8545b = new ArrayList();

    /* renamed from: c */
    private boolean f8546c = false;

    /* renamed from: d */
    private boolean f8547d = false;

    /* renamed from: a */
    private final AbstractC1409a1 f8544a = C1407r.m8916h().m4585l();

    public sr0(String str, or0 or0Var) {
        this.f8548e = str;
        this.f8549f = or0Var;
    }

    /* renamed from: f */
    private final Map<String, String> m5624f() {
        Map<String, String> c = this.f8549f.c();
        c.put("tms", Long.toString(C1407r.m8913k().m8245c(), 10));
        c.put("tid", this.f8544a.m8893K() ? "" : this.f8548e);
        return c;
    }

    /* renamed from: a */
    public final void m5629a(String str) {
        synchronized (this) {
            if (((Boolean) C1674c.m7906c().m6878b(C1842m3.f7414g1)).booleanValue()) {
                if (!((Boolean) C1674c.m7906c().m6878b(C1842m3.f7411f5)).booleanValue()) {
                    Map<String, String> f = m5624f();
                    f.put("action", "adapter_init_started");
                    f.put("ancn", str);
                    this.f8545b.add(f);
                }
            }
        }
    }

    /* renamed from: b */
    public final void m5628b(String str) {
        synchronized (this) {
            if (((Boolean) C1674c.m7906c().m6878b(C1842m3.f7414g1)).booleanValue()) {
                if (!((Boolean) C1674c.m7906c().m6878b(C1842m3.f7411f5)).booleanValue()) {
                    Map<String, String> f = m5624f();
                    f.put("action", "adapter_init_finished");
                    f.put("ancn", str);
                    this.f8545b.add(f);
                }
            }
        }
    }

    /* renamed from: c */
    public final void m5627c(String str, String str2) {
        synchronized (this) {
            if (((Boolean) C1674c.m7906c().m6878b(C1842m3.f7414g1)).booleanValue()) {
                if (!((Boolean) C1674c.m7906c().m6878b(C1842m3.f7411f5)).booleanValue()) {
                    Map<String, String> f = m5624f();
                    f.put("action", "adapter_init_finished");
                    f.put("ancn", str);
                    f.put("rqe", str2);
                    this.f8545b.add(f);
                }
            }
        }
    }

    /* renamed from: d */
    public final void m5626d() {
        synchronized (this) {
            if (((Boolean) C1674c.m7906c().m6878b(C1842m3.f7414g1)).booleanValue()) {
                if (!((Boolean) C1674c.m7906c().m6878b(C1842m3.f7411f5)).booleanValue()) {
                    if (!this.f8546c) {
                        Map<String, String> f = m5624f();
                        f.put("action", "init_started");
                        this.f8545b.add(f);
                        this.f8546c = true;
                    }
                }
            }
        }
    }

    /* renamed from: e */
    public final void m5625e() {
        synchronized (this) {
            if (((Boolean) C1674c.m7906c().m6878b(C1842m3.f7414g1)).booleanValue()) {
                if (!((Boolean) C1674c.m7906c().m6878b(C1842m3.f7411f5)).booleanValue()) {
                    if (!this.f8547d) {
                        Map<String, String> f = m5624f();
                        f.put("action", "init_finished");
                        this.f8545b.add(f);
                        for (Map<String, String> map : this.f8545b) {
                            this.f8549f.m6066a(map);
                        }
                        this.f8547d = true;
                    }
                }
            }
        }
    }
}
