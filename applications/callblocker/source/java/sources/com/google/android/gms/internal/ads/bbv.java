package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bbv.class */
public final class bbv {

    /* renamed from: a */
    private final chh f10904a;

    /* renamed from: b */
    private final Executor f10905b;

    /* renamed from: c */
    private final bee f10906c;

    public bbv(chh chhVar, Executor executor, bee beeVar) {
        this.f10904a = chhVar;
        this.f10905b = executor;
        this.f10906c = beeVar;
    }

    /* renamed from: a */
    private final void m12115a(act actVar) {
        actVar.mo13462a("/video", C3115em.f16631l);
        actVar.mo13462a("/videoMeta", C3115em.f16632m);
        actVar.mo13462a("/precache", new acc());
        actVar.mo13462a("/delayPageLoaded", C3115em.f16635p);
        actVar.mo13462a("/instrument", C3115em.f16633n);
        actVar.mo13462a("/log", C3115em.f16626g);
        actVar.mo13462a("/videoClicked", C3115em.f16627h);
        actVar.mo13426v().mo13514c(true);
        actVar.mo13462a("/click", C3115em.f16622c);
        if (this.f10904a.f13039c == null) {
            actVar.mo13426v().mo13512d(false);
            return;
        }
        actVar.mo13426v().mo13512d(true);
        actVar.mo13462a("/open", new C3135fe(null, null));
    }

    /* renamed from: a */
    public final /* synthetic */ crt m12113a(Object obj) {
        act m12037a = this.f10906c.m12037a(dyd.m8193a(), false);
        C3659yp m6729a = C3659yp.m6729a(m12037a);
        m12115a(m12037a);
        m12037a.mo13426v().mo13527a(new aeh(m6729a) { // from class: com.google.android.gms.internal.ads.bbz

            /* renamed from: a */
            private final C3659yp f10914a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10914a = m6729a;
            }

            @Override // com.google.android.gms.internal.ads.aeh
            /* renamed from: a */
            public final void mo7771a() {
                this.f10914a.m6730a();
            }
        });
        m12037a.loadUrl((String) dyx.m8158e().m7876a(edi.f16441bu));
        return m6729a;
    }

    /* renamed from: a */
    public final crt<act> m12112a(String str, String str2) {
        return crg.m10782a(crg.m10778a((Object) null), new cqt(this, str, str2) { // from class: com.google.android.gms.internal.ads.bbx

            /* renamed from: a */
            private final bbv f10908a;

            /* renamed from: b */
            private final String f10909b;

            /* renamed from: c */
            private final String f10910c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10908a = this;
                this.f10909b = str;
                this.f10910c = str2;
            }

            @Override // com.google.android.gms.internal.ads.cqt
            /* renamed from: a */
            public final crt mo7012a(Object obj) {
                return this.f10908a.m12111a(this.f10909b, this.f10910c, obj);
            }
        }, this.f10905b);
    }

    /* renamed from: a */
    public final /* synthetic */ crt m12111a(String str, String str2, Object obj) {
        act m12037a = this.f10906c.m12037a(dyd.m8193a(), false);
        C3659yp m6729a = C3659yp.m6729a(m12037a);
        m12115a(m12037a);
        if (this.f10904a.f13039c != null) {
            m12037a.mo13471a(aei.m13551c());
        } else {
            m12037a.mo13471a(aei.m13552b());
        }
        m12037a.mo13426v().mo13528a(new aee(this, m12037a, m6729a) { // from class: com.google.android.gms.internal.ads.bby

            /* renamed from: a */
            private final bbv f10911a;

            /* renamed from: b */
            private final act f10912b;

            /* renamed from: c */
            private final C3659yp f10913c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10911a = this;
                this.f10912b = m12037a;
                this.f10913c = m6729a;
            }

            @Override // com.google.android.gms.internal.ads.aee
            /* renamed from: a */
            public final void mo11712a(boolean z) {
                this.f10911a.m12114a(this.f10912b, this.f10913c, z);
            }
        });
        m12037a.mo13461a(str, str2, (String) null);
        return m6729a;
    }

    /* renamed from: a */
    public final crt<act> m12110a(JSONObject jSONObject) {
        return crg.m10782a(crg.m10782a(crg.m10778a((Object) null), new cqt(this) { // from class: com.google.android.gms.internal.ads.bbw

            /* renamed from: a */
            private final bbv f10907a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10907a = this;
            }

            @Override // com.google.android.gms.internal.ads.cqt
            /* renamed from: a */
            public final crt mo7012a(Object obj) {
                return this.f10907a.m12113a(obj);
            }
        }, this.f10905b), new cqt(this, jSONObject) { // from class: com.google.android.gms.internal.ads.bbu

            /* renamed from: a */
            private final bbv f10902a;

            /* renamed from: b */
            private final JSONObject f10903b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10902a = this;
                this.f10903b = jSONObject;
            }

            @Override // com.google.android.gms.internal.ads.cqt
            /* renamed from: a */
            public final crt mo7012a(Object obj) {
                return this.f10902a.m12109a(this.f10903b, (act) obj);
            }
        }, this.f10905b);
    }

    /* renamed from: a */
    public final /* synthetic */ crt m12109a(JSONObject jSONObject, act actVar) {
        C3659yp m6729a = C3659yp.m6729a(actVar);
        if (this.f10904a.f13039c != null) {
            actVar.mo13471a(aei.m13551c());
        } else {
            actVar.mo13471a(aei.m13552b());
        }
        actVar.mo13426v().mo13528a(new aee(this, actVar, m6729a) { // from class: com.google.android.gms.internal.ads.bcb

            /* renamed from: a */
            private final bbv f10921a;

            /* renamed from: b */
            private final act f10922b;

            /* renamed from: c */
            private final C3659yp f10923c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10921a = this;
                this.f10922b = actVar;
                this.f10923c = m6729a;
            }

            @Override // com.google.android.gms.internal.ads.aee
            /* renamed from: a */
            public final void mo11712a(boolean z) {
                this.f10921a.m12108b(this.f10922b, this.f10923c, z);
            }
        });
        actVar.mo7736a("google.afma.nativeAds.renderVideo", jSONObject);
        return m6729a;
    }

    /* renamed from: a */
    public final /* synthetic */ void m12114a(act actVar, C3659yp c3659yp, boolean z) {
        if (!z) {
            c3659yp.m6733a((Throwable) new zzcqm("Instream video Web View failed to load.", 0));
            return;
        }
        if (this.f10904a.f13038b != null && actVar.mo13448d() != null) {
            actVar.mo13448d().m13567a(this.f10904a.f13038b);
        }
        c3659yp.m6730a();
    }

    /* renamed from: b */
    public final /* synthetic */ void m12108b(act actVar, C3659yp c3659yp, boolean z) {
        if (this.f10904a.f13038b != null && actVar.mo13448d() != null) {
            actVar.mo13448d().m13567a(this.f10904a.f13038b);
        }
        c3659yp.m6730a();
    }
}
