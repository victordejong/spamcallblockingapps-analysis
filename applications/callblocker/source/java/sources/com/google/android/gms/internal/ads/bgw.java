package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.C2341q;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bgw.class */
public final class bgw implements apu, aqi, aso {

    /* renamed from: a */
    private final Context f11213a;

    /* renamed from: b */
    private final cho f11214b;

    /* renamed from: c */
    private final bhi f11215c;

    /* renamed from: d */
    private final chd f11216d;

    /* renamed from: e */
    private final cgr f11217e;

    /* renamed from: f */
    private Boolean f11218f;

    /* renamed from: g */
    private final boolean f11219g = ((Boolean) dyx.m8158e().m7876a(edi.f16503dC)).booleanValue();

    public bgw(Context context, cho choVar, bhi bhiVar, chd chdVar, cgr cgrVar) {
        this.f11213a = context;
        this.f11214b = choVar;
        this.f11215c = bhiVar;
        this.f11216d = chdVar;
        this.f11217e = cgrVar;
    }

    /* renamed from: a */
    private final bhh m11958a(String str) {
        bhh m11940a = this.f11215c.m11935a().m11939a(this.f11216d.f13035b.f13025b).m11940a(this.f11217e);
        m11940a.m11938a("action", str);
        if (!this.f11217e.f12995q.isEmpty()) {
            m11940a.m11938a("ancn", this.f11217e.f12995q.get(0));
        }
        return m11940a;
    }

    /* renamed from: a */
    private static boolean m11957a(String str, String str2) {
        boolean z = false;
        if (str != null) {
            if (str2 == null) {
                z = false;
            } else {
                try {
                    z = Pattern.matches(str, str2);
                } catch (RuntimeException e) {
                    C2341q.m14740g().m7095a(e, "CsiActionsListener.isPatternMatched");
                    z = false;
                }
            }
        }
        return z;
    }

    /* renamed from: e */
    private final boolean m11954e() {
        if (this.f11218f == null) {
            synchronized (this) {
                if (this.f11218f == null) {
                    ect<String> ectVar = edi.f16353aL;
                    C2341q.m14744c();
                    this.f11218f = Boolean.valueOf(m11957a((String) dyx.m8158e().m7876a(ectVar), C3567ve.m6945n(this.f11213a)));
                }
            }
        }
        return this.f11218f.booleanValue();
    }

    @Override // com.google.android.gms.internal.ads.apu
    /* renamed from: a */
    public final void mo11961a() {
        if (!this.f11219g) {
            return;
        }
        bhh m11958a = m11958a("ifts");
        m11958a.m11938a("reason", "blocked");
        m11958a.m11942a();
    }

    @Override // com.google.android.gms.internal.ads.apu
    /* renamed from: a */
    public final void mo11960a(int i, String str) {
        if (!this.f11219g) {
            return;
        }
        bhh m11958a = m11958a("ifts");
        m11958a.m11938a("reason", "adapter");
        if (i >= 0) {
            m11958a.m11938a("arec", String.valueOf(i));
        }
        String m11300a = this.f11214b.m11300a(str);
        if (m11300a != null) {
            m11958a.m11938a("areec", m11300a);
        }
        m11958a.m11942a();
    }

    @Override // com.google.android.gms.internal.ads.apu
    /* renamed from: a */
    public final void mo11959a(zzbxy zzbxyVar) {
        if (!this.f11219g) {
            return;
        }
        bhh m11958a = m11958a("ifts");
        m11958a.m11938a("reason", "exception");
        if (!TextUtils.isEmpty(zzbxyVar.getMessage())) {
            m11958a.m11938a("msg", zzbxyVar.getMessage());
        }
        m11958a.m11942a();
    }

    @Override // com.google.android.gms.internal.ads.aqi
    /* renamed from: b */
    public final void mo11652b() {
        if (!m11954e()) {
            return;
        }
        m11958a("impression").m11942a();
    }

    @Override // com.google.android.gms.internal.ads.aso
    /* renamed from: c */
    public final void mo11956c() {
        if (!m11954e()) {
            return;
        }
        m11958a("adapter_impression").m11942a();
    }

    @Override // com.google.android.gms.internal.ads.aso
    /* renamed from: d */
    public final void mo11955d() {
        if (!m11954e()) {
            return;
        }
        m11958a("adapter_shown").m11942a();
    }
}
