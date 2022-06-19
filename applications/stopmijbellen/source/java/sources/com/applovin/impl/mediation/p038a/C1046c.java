package com.applovin.impl.mediation.p038a;

import android.os.SystemClock;
import com.applovin.impl.mediation.C1191g;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.p054b.C1311c;
import com.applovin.impl.sdk.p055c.C1313a;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONObject;
/* renamed from: com.applovin.impl.mediation.a.c */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/a/c.class */
public class C1046c extends AbstractC1044a {

    /* renamed from: c */
    private final AtomicReference<C1311c> f3801c;

    /* renamed from: d */
    private final AtomicBoolean f3802d;

    /* renamed from: e */
    private final AtomicBoolean f3803e;

    private C1046c(C1046c c1046c, C1191g c1191g) {
        super(c1046c.m6646V(), c1046c.m6655M(), c1046c.m6656L(), c1191g, c1046c.f3806b);
        this.f3803e = new AtomicBoolean();
        this.f3801c = c1046c.f3801c;
        this.f3802d = c1046c.f3802d;
    }

    public C1046c(Map<String, Object> map, JSONObject jSONObject, JSONObject jSONObject2, C1408l c1408l) {
        super(map, jSONObject, jSONObject2, null, c1408l);
        this.f3803e = new AtomicBoolean();
        this.f3801c = new AtomicReference<>();
        this.f3802d = new AtomicBoolean();
    }

    /* renamed from: A */
    public long m6687A() {
        return m6629b("ahdm", ((Long) this.f3806b.m5511a(C1313a.f4710w)).longValue());
    }

    /* renamed from: B */
    public String m6686B() {
        return m6627b("bcode", "");
    }

    /* renamed from: C */
    public String m6685C() {
        return m6636a("mcode", "");
    }

    /* renamed from: D */
    public boolean m6684D() {
        return this.f3802d.get();
    }

    /* renamed from: E */
    public void m6683E() {
        this.f3802d.set(true);
    }

    /* renamed from: F */
    public C1311c m6682F() {
        return this.f3801c.getAndSet(null);
    }

    /* renamed from: G */
    public boolean m6681G() {
        return m6628b("show_nia", m6637a("show_nia", Boolean.FALSE)).booleanValue();
    }

    /* renamed from: H */
    public String m6680H() {
        return m6627b("nia_title", m6636a("nia_title", ""));
    }

    /* renamed from: I */
    public String m6679I() {
        return m6627b("nia_message", m6636a("nia_message", ""));
    }

    /* renamed from: J */
    public String m6678J() {
        return m6627b("nia_button_title", m6636a("nia_button_title", ""));
    }

    /* renamed from: K */
    public AtomicBoolean m6677K() {
        return this.f3803e;
    }

    @Override // com.applovin.impl.mediation.p038a.AbstractC1044a
    /* renamed from: a */
    public AbstractC1044a mo6669a(C1191g c1191g) {
        return new C1046c(this, c1191g);
    }

    /* renamed from: a */
    public void m6676a(C1311c c1311c) {
        this.f3801c.set(c1311c);
    }

    /* renamed from: u */
    public long m6675u() {
        long m6629b = m6629b("ad_expiration_ms", -1L);
        return m6629b >= 0 ? m6629b : m6638a("ad_expiration_ms", ((Long) this.f3806b.m5511a(C1313a.f4668C)).longValue());
    }

    /* renamed from: v */
    public long m6674v() {
        long m6629b = m6629b("ad_hidden_timeout_ms", -1L);
        return m6629b >= 0 ? m6629b : m6638a("ad_hidden_timeout_ms", ((Long) this.f3806b.m5511a(C1313a.f4671F)).longValue());
    }

    /* renamed from: w */
    public boolean m6673w() {
        if (m6628b("schedule_ad_hidden_on_ad_dismiss", Boolean.FALSE).booleanValue()) {
            return true;
        }
        return m6637a("schedule_ad_hidden_on_ad_dismiss", (Boolean) this.f3806b.m5511a(C1313a.f4672G)).booleanValue();
    }

    /* renamed from: x */
    public long m6672x() {
        long m6629b = m6629b("ad_hidden_on_ad_dismiss_callback_delay_ms", -1L);
        return m6629b >= 0 ? m6629b : m6638a("ad_hidden_on_ad_dismiss_callback_delay_ms", ((Long) this.f3806b.m5511a(C1313a.f4673H)).longValue());
    }

    /* renamed from: y */
    public long m6671y() {
        if (m6700q() > 0) {
            return SystemClock.elapsedRealtime() - m6700q();
        }
        return -1L;
    }

    /* renamed from: z */
    public long m6670z() {
        long m6629b = m6629b("fullscreen_display_delay_ms", -1L);
        return m6629b >= 0 ? m6629b : ((Long) this.f3806b.m5511a(C1313a.f4709v)).longValue();
    }
}
