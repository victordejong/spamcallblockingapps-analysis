package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzf;
import com.google.android.gms.ads.internal.zzr;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/blr.class */
public final class blr {

    /* renamed from: e */
    private String f44221e;

    /* renamed from: f */
    private bln f44222f;

    /* renamed from: b */
    private List<Map<String, String>> f44218b = new ArrayList();

    /* renamed from: c */
    private boolean f44219c = false;

    /* renamed from: d */
    private boolean f44220d = false;

    /* renamed from: a */
    private final zzf f44217a = zzr.zzkz().m13975d();

    public blr(String str, bln blnVar) {
        this.f44221e = str;
        this.f44222f = blnVar;
    }

    /* renamed from: c */
    private final Map<String, String> m17753c() {
        Map<String, String> m17763a = this.f44222f.m17763a();
        m17763a.put("tms", Long.toString(zzr.zzlc().mo19038b(), 10));
        m17763a.put("tid", this.f44217a.zzzn() ? "" : this.f44221e);
        return m17763a;
    }

    /* renamed from: a */
    public final void m17758a() {
        synchronized (this) {
            if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42731bo)).booleanValue()) {
                if (!((Boolean) ekb.m14831e().m18571a(C12187aq.f42933fe)).booleanValue()) {
                    if (!this.f44219c) {
                        Map<String, String> m17753c = m17753c();
                        m17753c.put("action", "init_started");
                        this.f44218b.add(m17753c);
                        this.f44219c = true;
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public final void m17757a(String str) {
        synchronized (this) {
            if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42731bo)).booleanValue()) {
                if (!((Boolean) ekb.m14831e().m18571a(C12187aq.f42933fe)).booleanValue()) {
                    Map<String, String> m17753c = m17753c();
                    m17753c.put("action", "adapter_init_started");
                    m17753c.put("ancn", str);
                    this.f44218b.add(m17753c);
                }
            }
        }
    }

    /* renamed from: a */
    public final void m17756a(String str, String str2) {
        synchronized (this) {
            if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42731bo)).booleanValue()) {
                if (!((Boolean) ekb.m14831e().m18571a(C12187aq.f42933fe)).booleanValue()) {
                    Map<String, String> m17753c = m17753c();
                    m17753c.put("action", "adapter_init_finished");
                    m17753c.put("ancn", str);
                    m17753c.put("rqe", str2);
                    this.f44218b.add(m17753c);
                }
            }
        }
    }

    /* renamed from: b */
    public final void m17755b() {
        synchronized (this) {
            if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42731bo)).booleanValue()) {
                if (!((Boolean) ekb.m14831e().m18571a(C12187aq.f42933fe)).booleanValue()) {
                    if (!this.f44220d) {
                        Map<String, String> m17753c = m17753c();
                        m17753c.put("action", "init_finished");
                        this.f44218b.add(m17753c);
                        for (Map<String, String> map : this.f44218b) {
                            this.f44222f.m17761a(map);
                        }
                        this.f44220d = true;
                    }
                }
            }
        }
    }

    /* renamed from: b */
    public final void m17754b(String str) {
        synchronized (this) {
            if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42731bo)).booleanValue()) {
                if (!((Boolean) ekb.m14831e().m18571a(C12187aq.f42933fe)).booleanValue()) {
                    Map<String, String> m17753c = m17753c();
                    m17753c.put("action", "adapter_init_finished");
                    m17753c.put("ancn", str);
                    this.f44218b.add(m17753c);
                }
            }
        }
    }
}
