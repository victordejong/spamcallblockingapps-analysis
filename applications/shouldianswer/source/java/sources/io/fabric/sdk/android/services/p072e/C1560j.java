package io.fabric.sdk.android.services.p072e;

import android.content.SharedPreferences;
import io.fabric.sdk.android.AbstractC1459h;
import io.fabric.sdk.android.AbstractC1462k;
import io.fabric.sdk.android.C1449c;
import io.fabric.sdk.android.services.p068b.AbstractC1486k;
import io.fabric.sdk.android.services.p068b.C1480i;
import io.fabric.sdk.android.services.p071d.AbstractC1549c;
import io.fabric.sdk.android.services.p071d.C1550d;
import org.json.JSONObject;
/* renamed from: io.fabric.sdk.android.services.e.j */
/* loaded from: classes-dex2jar.jar:io/fabric/sdk/android/services/e/j.class */
public class C1560j implements AbstractC1571s {

    /* renamed from: a */
    private final C1575w f4241a;

    /* renamed from: b */
    private final AbstractC1574v f4242b;

    /* renamed from: c */
    private final AbstractC1486k f4243c;

    /* renamed from: d */
    private final AbstractC1557g f4244d;

    /* renamed from: e */
    private final AbstractC1576x f4245e;

    /* renamed from: f */
    private final AbstractC1459h f4246f;

    /* renamed from: g */
    private final AbstractC1549c f4247g;

    public C1560j(AbstractC1459h abstractC1459h, C1575w c1575w, AbstractC1486k abstractC1486k, AbstractC1574v abstractC1574v, AbstractC1557g abstractC1557g, AbstractC1576x abstractC1576x) {
        this.f4246f = abstractC1459h;
        this.f4241a = c1575w;
        this.f4243c = abstractC1486k;
        this.f4242b = abstractC1574v;
        this.f4244d = abstractC1557g;
        this.f4245e = abstractC1576x;
        this.f4247g = new C1550d(this.f4246f);
    }

    /* renamed from: a */
    private void m3327a(JSONObject jSONObject, String str) {
        AbstractC1462k m3572g = C1449c.m3572g();
        m3572g.mo3552a("Fabric", str + jSONObject.toString());
    }

    /* renamed from: b */
    private C1572t m3325b(EnumC1570r enumC1570r) {
        Exception e;
        C1572t c1572t = null;
        try {
            if (!EnumC1570r.SKIP_CACHE_LOOKUP.equals(enumC1570r)) {
                JSONObject mo3330a = this.f4244d.mo3330a();
                if (mo3330a != null) {
                    c1572t = this.f4242b.mo3297a(this.f4243c, mo3330a);
                    if (c1572t != null) {
                        m3327a(mo3330a, "Loaded cached settings: ");
                        long mo3399a = this.f4243c.mo3399a();
                        if (!EnumC1570r.IGNORE_CACHE_EXPIRATION.equals(enumC1570r) && c1572t.m3298a(mo3399a)) {
                            C1449c.m3572g().mo3552a("Fabric", "Cached settings have expired.");
                            c1572t = null;
                        }
                        try {
                            C1449c.m3572g().mo3552a("Fabric", "Returning cached settings.");
                        } catch (Exception e2) {
                            e = e2;
                            C1449c.m3572g().mo3545e("Fabric", "Failed to get cached settings", e);
                            return c1572t;
                        }
                    } else {
                        C1449c.m3572g().mo3545e("Fabric", "Failed to transform cached settings data.", null);
                        c1572t = null;
                    }
                } else {
                    C1449c.m3572g().mo3552a("Fabric", "No cached settings data found.");
                    c1572t = null;
                }
            }
        } catch (Exception e3) {
            e = e3;
            c1572t = null;
        }
        return c1572t;
    }

    @Override // io.fabric.sdk.android.services.p072e.AbstractC1571s
    /* renamed from: a */
    public C1572t mo3300a() {
        return mo3299a(EnumC1570r.USE_CACHE);
    }

    @Override // io.fabric.sdk.android.services.p072e.AbstractC1571s
    /* renamed from: a */
    public C1572t mo3299a(EnumC1570r enumC1570r) {
        C1572t c1572t;
        C1572t c1572t2 = null;
        C1572t c1572t3 = null;
        try {
            if (!C1449c.m3571h()) {
                c1572t2 = null;
                if (!m3323d()) {
                    c1572t2 = m3325b(enumC1570r);
                }
            }
            c1572t3 = c1572t2;
            if (c1572t2 == null) {
                JSONObject mo3296a = this.f4245e.mo3296a(this.f4241a);
                c1572t3 = c1572t2;
                if (mo3296a != null) {
                    C1572t mo3297a = this.f4242b.mo3297a(this.f4243c, mo3296a);
                    this.f4244d.mo3329a(mo3297a.f4286g, mo3296a);
                    m3327a(mo3296a, "Loaded settings: ");
                    m3328a(m3326b());
                    c1572t3 = mo3297a;
                }
            }
            c1572t = c1572t3;
            if (c1572t3 == null) {
                c1572t = m3325b(EnumC1570r.IGNORE_CACHE_EXPIRATION);
            }
        } catch (Exception e) {
            C1449c.m3572g().mo3545e("Fabric", "Unknown error while loading Crashlytics settings. Crashes will be cached until settings can be retrieved.", e);
            c1572t = c1572t3;
        }
        return c1572t;
    }

    /* renamed from: a */
    boolean m3328a(String str) {
        SharedPreferences.Editor mo3335b = this.f4247g.mo3335b();
        mo3335b.putString("existing_instance_identifier", str);
        return this.f4247g.mo3336a(mo3335b);
    }

    /* renamed from: b */
    String m3326b() {
        return C1480i.m3485a(C1480i.m3464m(this.f4246f.getContext()));
    }

    /* renamed from: c */
    String m3324c() {
        return this.f4247g.mo3337a().getString("existing_instance_identifier", "");
    }

    /* renamed from: d */
    boolean m3323d() {
        return !m3324c().equals(m3326b());
    }
}
