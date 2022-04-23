package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzf;
import com.google.android.gms.ads.internal.zzr;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/blr.class */
public final class blr {
    private String e;
    private bln f;

    /* renamed from: b  reason: collision with root package name */
    private List<Map<String, String>> f24658b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    private boolean f24659c = false;

    /* renamed from: d  reason: collision with root package name */
    private boolean f24660d = false;

    /* renamed from: a  reason: collision with root package name */
    private final zzf f24657a = zzr.zzkz().d();

    public blr(String str, bln blnVar) {
        this.e = str;
        this.f = blnVar;
    }

    private final Map<String, String> c() {
        Map<String, String> a2 = this.f.a();
        a2.put("tms", Long.toString(zzr.zzlc().b(), 10));
        a2.put("tid", this.f24657a.zzzn() ? "" : this.e);
        return a2;
    }

    public final void a() {
        synchronized (this) {
            if (((Boolean) ekb.e().a(aq.bo)).booleanValue()) {
                if (!((Boolean) ekb.e().a(aq.fe)).booleanValue()) {
                    if (!this.f24659c) {
                        Map<String, String> c2 = c();
                        c2.put("action", "init_started");
                        this.f24658b.add(c2);
                        this.f24659c = true;
                    }
                }
            }
        }
    }

    public final void a(String str) {
        synchronized (this) {
            if (((Boolean) ekb.e().a(aq.bo)).booleanValue()) {
                if (!((Boolean) ekb.e().a(aq.fe)).booleanValue()) {
                    Map<String, String> c2 = c();
                    c2.put("action", "adapter_init_started");
                    c2.put("ancn", str);
                    this.f24658b.add(c2);
                }
            }
        }
    }

    public final void a(String str, String str2) {
        synchronized (this) {
            if (((Boolean) ekb.e().a(aq.bo)).booleanValue()) {
                if (!((Boolean) ekb.e().a(aq.fe)).booleanValue()) {
                    Map<String, String> c2 = c();
                    c2.put("action", "adapter_init_finished");
                    c2.put("ancn", str);
                    c2.put("rqe", str2);
                    this.f24658b.add(c2);
                }
            }
        }
    }

    public final void b() {
        synchronized (this) {
            if (((Boolean) ekb.e().a(aq.bo)).booleanValue()) {
                if (!((Boolean) ekb.e().a(aq.fe)).booleanValue()) {
                    if (!this.f24660d) {
                        Map<String, String> c2 = c();
                        c2.put("action", "init_finished");
                        this.f24658b.add(c2);
                        for (Map<String, String> map : this.f24658b) {
                            this.f.a(map);
                        }
                        this.f24660d = true;
                    }
                }
            }
        }
    }

    public final void b(String str) {
        synchronized (this) {
            if (((Boolean) ekb.e().a(aq.bo)).booleanValue()) {
                if (!((Boolean) ekb.e().a(aq.fe)).booleanValue()) {
                    Map<String, String> c2 = c();
                    c2.put("action", "adapter_init_finished");
                    c2.put("ancn", str);
                    this.f24658b.add(c2);
                }
            }
        }
    }
}
