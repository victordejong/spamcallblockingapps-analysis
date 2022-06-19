package com.applovin.impl.sdk.p057e;

import android.support.p012v4.media.C0082b;
import android.text.TextUtils;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.C1479t;
import com.applovin.impl.sdk.network.C1442b;
import com.applovin.impl.sdk.network.C1447c;
import com.applovin.impl.sdk.p055c.C1314b;
import com.applovin.impl.sdk.p057e.C1362o;
import com.applovin.impl.sdk.utils.StringUtils;
import java.util.concurrent.TimeUnit;
/* renamed from: com.applovin.impl.sdk.e.u */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/e/u.class */
public abstract class AbstractC1378u<T> extends AbstractRunnableC1331a implements C1442b.AbstractC1446c<T> {

    /* renamed from: a */
    private final C1447c<T> f5213a;

    /* renamed from: c */
    private final C1442b.AbstractC1446c<T> f5214c;

    /* renamed from: d */
    public C1442b.C1444a f5215d;

    /* renamed from: e */
    private C1362o.EnumC1364a f5216e;

    /* renamed from: f */
    private C1314b<String> f5217f;

    /* renamed from: g */
    private C1314b<String> f5218g;

    public AbstractC1378u(C1447c<T> c1447c, C1408l c1408l) {
        this(c1447c, c1408l, false);
    }

    public AbstractC1378u(C1447c<T> c1447c, final C1408l c1408l, boolean z) {
        super("TaskRepeatRequest", c1408l, z);
        this.f5216e = C1362o.EnumC1364a.BACKGROUND;
        this.f5217f = null;
        this.f5218g = null;
        if (c1447c != null) {
            this.f5213a = c1447c;
            this.f5215d = new C1442b.C1444a();
            this.f5214c = new C1442b.AbstractC1446c<T>() { // from class: com.applovin.impl.sdk.e.u.1
                /* JADX WARN: Type inference failed for: r0v70, types: [long] */
                /* JADX WARN: Type inference failed for: r0v72, types: [long] */
                @Override // com.applovin.impl.sdk.network.C1442b.AbstractC1446c
                /* renamed from: a */
                public void mo5331a(int i, String str, T t) {
                    AbstractC1378u abstractC1378u;
                    C1314b c1314b;
                    boolean z2 = i < 200 || i >= 500;
                    boolean z3 = i == 429;
                    if ((i != -1009) && (z2 || z3 || AbstractC1378u.this.f5213a.m5313m())) {
                        String m5320f = AbstractC1378u.this.f5213a.m5320f();
                        if (AbstractC1378u.this.f5213a.m5318h() > 0) {
                            AbstractC1378u abstractC1378u2 = AbstractC1378u.this;
                            StringBuilder m8751k = C0082b.m8751k("Unable to send request due to server failure (code ", i, "). ");
                            m8751k.append(AbstractC1378u.this.f5213a.m5318h());
                            m8751k.append(" attempts left, retrying in ");
                            m8751k.append(TimeUnit.MILLISECONDS.toSeconds(AbstractC1378u.this.f5213a.m5315k()));
                            m8751k.append(" seconds...");
                            abstractC1378u2.m5730c(m8751k.toString());
                            int m5318h = AbstractC1378u.this.f5213a.m5318h() - 1;
                            AbstractC1378u.this.f5213a.m5328a(m5318h);
                            boolean z4 = false;
                            if (m5318h == 0) {
                                AbstractC1378u abstractC1378u3 = AbstractC1378u.this;
                                abstractC1378u3.m5621c(abstractC1378u3.f5217f);
                                z4 = false;
                                if (StringUtils.isValidString(m5320f)) {
                                    z4 = false;
                                    if (m5320f.length() >= 4) {
                                        AbstractC1378u.this.m5731b("Switching to backup endpoint " + m5320f);
                                        AbstractC1378u.this.f5213a.m5326a(m5320f);
                                        z4 = true;
                                    }
                                }
                            }
                            char millis = (!((Boolean) c1408l.m5511a(C1314b.f4906de)).booleanValue() || !z4) ? AbstractC1378u.this.f5213a.m5314l() ? TimeUnit.SECONDS.toMillis((long) Math.pow(2.0d, AbstractC1378u.this.f5213a.m5317i())) : AbstractC1378u.this.f5213a.m5315k() : (char) 0;
                            C1362o m5525R = c1408l.m5525R();
                            AbstractC1378u abstractC1378u4 = AbstractC1378u.this;
                            m5525R.m5652a(abstractC1378u4, abstractC1378u4.f5216e, millis);
                            return;
                        }
                        if (m5320f == null || !m5320f.equals(AbstractC1378u.this.f5213a.m5329a())) {
                            abstractC1378u = AbstractC1378u.this;
                            c1314b = abstractC1378u.f5217f;
                        } else {
                            abstractC1378u = AbstractC1378u.this;
                            c1314b = abstractC1378u.f5218g;
                        }
                        abstractC1378u.m5621c(c1314b);
                    }
                    AbstractC1378u.this.mo5331a(i, str, t);
                }

                @Override // com.applovin.impl.sdk.network.C1442b.AbstractC1446c
                /* renamed from: a */
                public void mo5330a(T t, int i) {
                    AbstractC1378u.this.f5213a.m5328a(0);
                    AbstractC1378u.this.mo5330a((AbstractC1378u) t, i);
                }
            };
            return;
        }
        throw new IllegalArgumentException("No request specified");
    }

    /* renamed from: c */
    public <ST> void m5621c(C1314b<ST> c1314b) {
        if (c1314b != null) {
            m5729d().m5533J().m5825a((C1314b<?>) c1314b, (Object) c1314b.m5829b());
        }
    }

    /* renamed from: a */
    public abstract void mo5331a(int i, String str, T t);

    /* renamed from: a */
    public void m5627a(C1314b<String> c1314b) {
        this.f5217f = c1314b;
    }

    /* renamed from: a */
    public void m5626a(C1362o.EnumC1364a enumC1364a) {
        this.f5216e = enumC1364a;
    }

    /* renamed from: a */
    public abstract void mo5330a(T t, int i);

    /* renamed from: b */
    public void m5623b(C1314b<String> c1314b) {
        this.f5218g = c1314b;
    }

    @Override // java.lang.Runnable
    public void run() {
        int i;
        C1442b m5526Q = m5729d().m5526Q();
        if (!m5729d().m5473c() && !m5729d().m5469d()) {
            C1479t.m5107i("AppLovinSdk", "AppLovin SDK is disabled");
            i = -22;
        } else if (StringUtils.isValidString(this.f5213a.m5329a()) && this.f5213a.m5329a().length() >= 4) {
            if (TextUtils.isEmpty(this.f5213a.m5325b())) {
                this.f5213a.m5324b(this.f5213a.m5321e() != null ? "POST" : "GET");
            }
            m5526Q.m5345a(this.f5213a, this.f5215d, this.f5214c);
            return;
        } else {
            m5728d("Task has an invalid or null request endpoint.");
            i = -900;
        }
        mo5331a(i, null, null);
    }
}
