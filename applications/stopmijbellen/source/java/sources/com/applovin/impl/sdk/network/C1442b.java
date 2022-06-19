package com.applovin.impl.sdk.network;

import android.support.p012v4.media.C0082b;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.C1479t;
import com.applovin.impl.sdk.network.C1451e;
import com.applovin.impl.sdk.p056d.C1328f;
import com.applovin.impl.sdk.utils.C1493h;
import com.applovin.impl.sdk.utils.C1531l;
import com.applovin.impl.sdk.utils.C1539q;
import com.applovin.impl.sdk.utils.C1540r;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinErrorCodes;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
import org.xml.sax.SAXException;
import p152l0.AbstractC3426a;
/* renamed from: com.applovin.impl.sdk.network.b */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/network/b.class */
public class C1442b {

    /* renamed from: a */
    private static final List<String> f5418a = Arrays.asList("5.0/i", "4.0/ad", "1.0/mediate");

    /* renamed from: b */
    private final C1408l f5419b;

    /* renamed from: c */
    private final C1479t f5420c;

    /* renamed from: d */
    private final C1451e f5421d;

    /* renamed from: com.applovin.impl.sdk.network.b$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/network/b$a.class */
    public static class C1444a {

        /* renamed from: a */
        private long f5422a;

        /* renamed from: b */
        private long f5423b;

        /* renamed from: a */
        public void m5337a(long j) {
            this.f5422a = j;
        }

        /* renamed from: b */
        public void m5334b(long j) {
            this.f5423b = j;
        }

        /* renamed from: a */
        public long m5338a() {
            return this.f5422a;
        }

        /* renamed from: b */
        public long m5335b() {
            return this.f5423b;
        }
    }

    /* renamed from: com.applovin.impl.sdk.network.b$b */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/network/b$b.class */
    public class C1445b<T> implements AbstractC3426a<C1451e.C1457c> {

        /* renamed from: b */
        private final String f5425b;

        /* renamed from: c */
        private final String f5426c;

        /* renamed from: d */
        private final T f5427d;

        /* renamed from: e */
        private final boolean f5428e;

        /* renamed from: f */
        private final long f5429f;

        /* renamed from: g */
        private final C1444a f5430g;

        /* renamed from: h */
        private final AbstractC1446c<T> f5431h;

        private C1445b(String str, String str2, T t, boolean z, long j, C1444a c1444a, AbstractC1446c<T> abstractC1446c) {
            C1442b.this = r5;
            this.f5425b = str;
            this.f5426c = str2;
            this.f5427d = t;
            this.f5428e = z;
            this.f5429f = j;
            this.f5430g = c1444a;
            this.f5431h = abstractC1446c;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: a */
        public void accept(C1451e.C1457c c1457c) {
            int i;
            MalformedURLException e;
            T t;
            AbstractC1446c<T> abstractC1446c;
            try {
                try {
                    i = c1457c.m5274a();
                    try {
                        if (i > 0) {
                            long currentTimeMillis = System.currentTimeMillis();
                            long j = this.f5429f;
                            if (i >= 200 && i < 400) {
                                C1444a c1444a = this.f5430g;
                                if (c1444a != null) {
                                    c1444a.m5337a(currentTimeMillis - j);
                                }
                                C1442b.this.m5342a(this.f5426c, this.f5425b, i, this.f5429f);
                                String m5273b = c1457c.m5273b();
                                if (m5273b == null) {
                                    this.f5431h.mo5330a(this.f5427d, i);
                                    return;
                                }
                                C1442b.this.f5420c.m5119a("ConnectionManager", m5273b);
                                C1444a c1444a2 = this.f5430g;
                                if (c1444a2 != null) {
                                    c1444a2.m5334b(m5273b.length());
                                }
                                String str = m5273b;
                                if (this.f5428e) {
                                    str = C1531l.m4978a(m5273b, C1442b.this.f5419b.m5444z());
                                    if (str == null) {
                                        HashMap hashMap = new HashMap(2);
                                        hashMap.put("request", StringUtils.getHostAndPath(this.f5425b));
                                        hashMap.put("response", m5273b);
                                        C1442b.this.f5419b.m5447w().trackEvent("rdf", hashMap);
                                    }
                                }
                                try {
                                    this.f5431h.mo5330a(C1442b.this.m5343a(str, (String) this.f5427d), i);
                                    return;
                                } catch (Throwable th) {
                                    StringBuilder sb = new StringBuilder();
                                    sb.append("Unable to parse response from ");
                                    sb.append(C1442b.this.m5344a(this.f5425b));
                                    String sb2 = sb.toString();
                                    C1442b.this.f5420c.m5115b("ConnectionManager", sb2, th);
                                    C1442b.this.f5419b.m5524S().m5741a(C1328f.f5089i);
                                    this.f5431h.mo5331a(AppLovinErrorCodes.INVALID_RESPONSE, sb2, null);
                                    return;
                                }
                            }
                            abstractC1446c = this.f5431h;
                        } else {
                            C1442b.this.m5341a(this.f5426c, this.f5425b, i, this.f5429f, (Throwable) null);
                            abstractC1446c = this.f5431h;
                        }
                        abstractC1446c.mo5331a(i, null, null);
                    } catch (MalformedURLException e2) {
                        e = e2;
                        if (this.f5427d != null) {
                            C1442b.this.m5341a(this.f5426c, this.f5425b, i, this.f5429f, e);
                            this.f5431h.mo5331a(-901, e.getMessage(), null);
                            return;
                        }
                        C1442b.this.m5342a(this.f5426c, this.f5425b, i, this.f5429f);
                        this.f5431h.mo5330a(this.f5427d, -901);
                    }
                } catch (Throwable th2) {
                    int i2 = 0;
                    if (0 == 0) {
                        i2 = C1442b.this.m5340a(th2);
                    }
                    try {
                        String m5272c = c1457c.m5272c();
                        t = null;
                        if (m5272c != null) {
                            String str2 = m5272c;
                            if (this.f5428e) {
                                str2 = C1531l.m4978a(m5272c, C1442b.this.f5419b.m5444z());
                            }
                            t = C1442b.this.m5343a(str2, (String) this.f5427d);
                        }
                    } catch (Throwable th3) {
                        t = null;
                    }
                    C1442b.this.m5341a(this.f5426c, this.f5425b, i2, this.f5429f, th2);
                    this.f5431h.mo5331a(i2, th2.getMessage(), t);
                }
            } catch (MalformedURLException e3) {
                e = e3;
                i = 0;
            }
        }
    }

    /* renamed from: com.applovin.impl.sdk.network.b$c */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/network/b$c.class */
    public interface AbstractC1446c<T> {
        /* renamed from: a */
        void mo5331a(int i, String str, T t);

        /* renamed from: a */
        void mo5330a(T t, int i);
    }

    public C1442b(C1408l c1408l) {
        this.f5419b = c1408l;
        this.f5420c = c1408l.m5542A();
        C1451e c1451e = new C1451e(c1408l);
        this.f5421d = c1451e;
        c1451e.m5303a();
    }

    /* renamed from: a */
    public int m5340a(Throwable th) {
        if (th instanceof UnknownHostException) {
            return -1009;
        }
        if (th instanceof SocketTimeoutException) {
            return -1001;
        }
        if (th instanceof IOException) {
            return -100;
        }
        return th instanceof JSONException ? -104 : -1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public <T> T m5343a(String str, T t) throws JSONException, SAXException, ClassCastException {
        if (t == null) {
            return str;
        }
        if (str != 0 && str.length() >= 3) {
            if (t instanceof JSONObject) {
                return (T) new JSONObject(str);
            }
            if (t instanceof C1539q) {
                return (T) C1540r.m4931a(str, this.f5419b);
            }
            if (t instanceof String) {
                return str;
            }
            C1479t c1479t = this.f5420c;
            StringBuilder m8752j = C0082b.m8752j("Failed to process response of type '");
            m8752j.append(t.getClass().getName());
            m8752j.append("'");
            c1479t.m5111e("ConnectionManager", m8752j.toString());
        }
        return t;
    }

    /* renamed from: a */
    public String m5344a(String str) {
        StringBuilder m8752j = C0082b.m8752j("#");
        m8752j.append(str.hashCode());
        m8752j.append(" \"");
        m8752j.append(StringUtils.getHostAndPath(str));
        m8752j.append("\"");
        return m8752j.toString();
    }

    /* renamed from: a */
    public void m5342a(String str, String str2, int i, long j) {
        C1479t c1479t = this.f5420c;
        c1479t.m5114c("ConnectionManager", "Successful " + str + " returned " + i + " in " + (((float) (System.currentTimeMillis() - j)) / 1000.0f) + " s over " + C1493h.m5049f(this.f5419b) + " to " + m5344a(str2));
    }

    /* renamed from: a */
    public void m5341a(String str, String str2, int i, long j, Throwable th) {
        C1479t c1479t = this.f5420c;
        c1479t.m5115b("ConnectionManager", "Failed " + str + " returned " + i + " in " + (((float) (System.currentTimeMillis() - j)) / 1000.0f) + " s over " + C1493h.m5049f(this.f5419b) + " to " + m5344a(str2), th);
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x00d1, code lost:
        if (r13.m5317i() >= 0) goto L25;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public <T> void m5345a(com.applovin.impl.sdk.network.C1447c<T> r13, com.applovin.impl.sdk.network.C1442b.C1444a r14, com.applovin.impl.sdk.network.C1442b.AbstractC1446c<T> r15) {
        /*
            Method dump skipped, instructions count: 1052
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.sdk.network.C1442b.m5345a(com.applovin.impl.sdk.network.c, com.applovin.impl.sdk.network.b$a, com.applovin.impl.sdk.network.b$c):void");
    }
}
