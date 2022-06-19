package com.applovin.impl.sdk.p057e;

import com.applovin.impl.p035a.C0883e;
import com.applovin.impl.p035a.C0891l;
import com.applovin.impl.p035a.EnumC0884f;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.p053ad.EnumC1282b;
import com.applovin.impl.sdk.p055c.C1314b;
import com.applovin.impl.sdk.utils.C1539q;
import com.applovin.impl.sdk.utils.C1540r;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinAdLoadListener;
import org.json.JSONObject;
/* renamed from: com.applovin.impl.sdk.e.r */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/e/r.class */
public abstract class AbstractC1371r extends AbstractRunnableC1331a {

    /* renamed from: a */
    private final AppLovinAdLoadListener f5202a;

    /* renamed from: c */
    private final C1372a f5203c;

    /* renamed from: com.applovin.impl.sdk.e.r$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/e/r$a.class */
    public static final class C1372a extends C0883e {
        public C1372a(JSONObject jSONObject, JSONObject jSONObject2, EnumC1282b enumC1282b, C1408l c1408l) {
            super(jSONObject, jSONObject2, enumC1282b, c1408l);
        }

        /* renamed from: a */
        public void m5628a(C1539q c1539q) {
            if (c1539q != null) {
                this.f3305a.add(c1539q);
                return;
            }
            throw new IllegalArgumentException("No aggregated vast response specified");
        }
    }

    /* renamed from: com.applovin.impl.sdk.e.r$b */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/e/r$b.class */
    public static final class C1373b extends AbstractC1371r {

        /* renamed from: a */
        private final String f5204a;

        public C1373b(String str, C0883e c0883e, AppLovinAdLoadListener appLovinAdLoadListener, C1408l c1408l) {
            super(c0883e, appLovinAdLoadListener, c1408l);
            this.f5204a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            m5633a(m5629e(this.f5204a));
        }
    }

    /* renamed from: com.applovin.impl.sdk.e.r$c */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/e/r$c.class */
    public static final class C1374c extends AbstractC1371r {

        /* renamed from: a */
        private final JSONObject f5205a;

        public C1374c(C0883e c0883e, AppLovinAdLoadListener appLovinAdLoadListener, C1408l c1408l) {
            super(c0883e, appLovinAdLoadListener, c1408l);
            this.f5205a = c0883e.m7147c();
        }

        @Override // java.lang.Runnable
        public void run() {
            EnumC0884f enumC0884f;
            m5733a("Processing SDK JSON response...");
            String string = JsonUtils.getString(this.f5205a, "xml", null);
            if (!StringUtils.isValidString(string)) {
                m5728d("No VAST response received.");
                enumC0884f = EnumC0884f.NO_WRAPPER_RESPONSE;
            } else if (string.length() < ((Integer) this.f5113b.m5511a(C1314b.f4954eg)).intValue()) {
                m5633a(m5629e(string));
                return;
            } else {
                m5728d("VAST response is over max length");
                enumC0884f = EnumC0884f.XML_PARSING;
            }
            m5634a(enumC0884f);
        }
    }

    /* renamed from: com.applovin.impl.sdk.e.r$d */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/e/r$d.class */
    public static final class C1375d extends AbstractC1371r {

        /* renamed from: a */
        private final C1539q f5206a;

        public C1375d(C1539q c1539q, C0883e c0883e, AppLovinAdLoadListener appLovinAdLoadListener, C1408l c1408l) {
            super(c0883e, appLovinAdLoadListener, c1408l);
            if (c1539q != null) {
                if (c0883e == null) {
                    throw new IllegalArgumentException("No context specified.");
                }
                if (appLovinAdLoadListener == null) {
                    throw new IllegalArgumentException("No callback specified.");
                }
                this.f5206a = c1539q;
                return;
            }
            throw new IllegalArgumentException("No response specified.");
        }

        @Override // java.lang.Runnable
        public void run() {
            m5733a("Processing VAST Wrapper response...");
            m5633a(this.f5206a);
        }
    }

    public AbstractC1371r(C0883e c0883e, AppLovinAdLoadListener appLovinAdLoadListener, C1408l c1408l) {
        super("TaskProcessVastResponse", c1408l);
        if (c0883e != null) {
            this.f5202a = appLovinAdLoadListener;
            this.f5203c = (C1372a) c0883e;
            return;
        }
        throw new IllegalArgumentException("No context specified.");
    }

    /* renamed from: a */
    public static AbstractC1371r m5632a(C1539q c1539q, C0883e c0883e, AppLovinAdLoadListener appLovinAdLoadListener, C1408l c1408l) {
        return new C1375d(c1539q, c0883e, appLovinAdLoadListener, c1408l);
    }

    /* renamed from: a */
    public static AbstractC1371r m5631a(String str, JSONObject jSONObject, JSONObject jSONObject2, EnumC1282b enumC1282b, AppLovinAdLoadListener appLovinAdLoadListener, C1408l c1408l) {
        return new C1373b(str, new C1372a(jSONObject, jSONObject2, enumC1282b, c1408l), appLovinAdLoadListener, c1408l);
    }

    /* renamed from: a */
    public static AbstractC1371r m5630a(JSONObject jSONObject, JSONObject jSONObject2, EnumC1282b enumC1282b, AppLovinAdLoadListener appLovinAdLoadListener, C1408l c1408l) {
        return new C1374c(new C1372a(jSONObject, jSONObject2, enumC1282b, c1408l), appLovinAdLoadListener, c1408l);
    }

    /* renamed from: a */
    public void m5634a(EnumC0884f enumC0884f) {
        m5728d("Failed to process VAST response due to VAST error code " + enumC0884f);
        C0891l.m7119a(this.f5203c, this.f5202a, enumC0884f, -6, this.f5113b);
    }

    /* renamed from: a */
    public void m5633a(C1539q c1539q) {
        EnumC0884f enumC0884f;
        C1383x c1383x;
        int m7149a = this.f5203c.m7149a();
        m5733a("Finished parsing XML at depth " + m7149a);
        this.f5203c.m5628a(c1539q);
        if (!C0891l.m7118a(c1539q)) {
            if (C0891l.m7107b(c1539q)) {
                m5733a("VAST response is inline. Rendering ad...");
                c1383x = new C1377t(this.f5203c, this.f5202a, this.f5113b);
                this.f5113b.m5525R().m5654a(c1383x);
                return;
            }
            m5728d("VAST response is an error");
            enumC0884f = EnumC0884f.NO_WRAPPER_RESPONSE;
            m5634a(enumC0884f);
        }
        int intValue = ((Integer) this.f5113b.m5511a(C1314b.f4955eh)).intValue();
        if (m7149a < intValue) {
            m5733a("VAST response is wrapper. Resolving...");
            c1383x = new C1383x(this.f5203c, this.f5202a, this.f5113b);
            this.f5113b.m5525R().m5654a(c1383x);
            return;
        }
        m5728d("Reached beyond max wrapper depth of " + intValue);
        enumC0884f = EnumC0884f.WRAPPER_LIMIT_REACHED;
        m5634a(enumC0884f);
    }

    /* renamed from: e */
    public C1539q m5629e(String str) {
        try {
            return C1540r.m4931a(str, this.f5113b);
        } catch (Throwable th) {
            m5732a("Failed to process VAST response", th);
            m5634a(EnumC0884f.XML_PARSING);
            return null;
        }
    }
}
