package com.applovin.impl.mediation;

import android.content.Context;
import com.applovin.impl.mediation.ads.AbstractC1078a;
import com.applovin.impl.mediation.p038a.AbstractC1044a;
import com.applovin.impl.mediation.p039b.C1087b;
import com.applovin.impl.mediation.p039b.C1091c;
import com.applovin.impl.mediation.p040c.C1107c;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.C1479t;
import com.applovin.impl.sdk.network.C1469j;
import com.applovin.impl.sdk.p055c.C1313a;
import com.applovin.impl.sdk.utils.BundleUtils;
import com.applovin.impl.sdk.utils.C1496j;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxError;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
/* renamed from: com.applovin.impl.mediation.d */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/d.class */
public class C1108d {

    /* renamed from: a */
    private final C1408l f3980a;

    /* renamed from: b */
    private final Map<String, C1112b> f3981b = new HashMap(4);

    /* renamed from: c */
    private final Object f3982c = new Object();

    /* renamed from: d */
    private final Map<String, AbstractC1044a> f3983d = new HashMap(4);

    /* renamed from: e */
    private final Object f3984e = new Object();

    /* renamed from: com.applovin.impl.mediation.d$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/d$a.class */
    public static class C1110a implements AbstractC1078a.AbstractC1079a {

        /* renamed from: a */
        private final C1408l f3992a;

        /* renamed from: b */
        private final Context f3993b;

        /* renamed from: c */
        private final C1108d f3994c;

        /* renamed from: d */
        private final C1112b f3995d;

        /* renamed from: e */
        private final MaxAdFormat f3996e;

        /* renamed from: f */
        private C1469j f3997f;

        /* renamed from: g */
        private final Map<String, Object> f3998g;

        /* renamed from: h */
        private final int f3999h;

        private C1110a(Map<String, Object> map, C1469j c1469j, C1112b c1112b, MaxAdFormat maxAdFormat, C1108d c1108d, C1408l c1408l, Context context) {
            this.f3992a = c1408l;
            this.f3993b = context;
            this.f3994c = c1108d;
            this.f3995d = c1112b;
            this.f3996e = maxAdFormat;
            this.f3997f = c1469j;
            this.f3998g = map;
            this.f3999h = (!maxAdFormat.isAdViewAd() || !BundleUtils.getBoolean("auto_refresh_stopped", c1469j.m5166a())) ? ((Integer) c1408l.m5511a(C1313a.f4679N)).intValue() : Math.min(2, ((Integer) c1408l.m5511a(C1313a.f4679N)).intValue());
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdClicked(MaxAd maxAd) {
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdDisplayFailed(MaxAd maxAd, MaxError maxError) {
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdDisplayed(MaxAd maxAd) {
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdHidden(MaxAd maxAd) {
            throw new IllegalStateException("Wrong callback invoked for ad: " + maxAd);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoadFailed(final String str, MaxError maxError) {
            if (this.f3992a.m5510a(C1313a.f4680O, this.f3996e) && this.f3995d.f4005c < this.f3999h) {
                C1112b.m6428e(this.f3995d);
                final int pow = (int) Math.pow(2.0d, this.f3995d.f4005c);
                AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.mediation.d.a.1
                    @Override // java.lang.Runnable
                    public void run() {
                        C1110a c1110a = C1110a.this;
                        c1110a.f3997f = new C1469j.C1471a(c1110a.f3997f).m5161a("retry_delay_sec", String.valueOf(pow)).m5161a("retry_attempt", String.valueOf(C1110a.this.f3995d.f4005c)).m5164a();
                        C1110a.this.f3994c.m6445a(str, C1110a.this.f3996e, C1110a.this.f3998g, C1110a.this.f3997f, C1110a.this.f3993b, C1110a.this);
                    }
                }, TimeUnit.SECONDS.toMillis(pow));
                return;
            }
            this.f3995d.f4005c = 0;
            this.f3995d.f4004b.set(false);
            if (this.f3995d.f4006d == null) {
                return;
            }
            ((MaxErrorImpl) maxError).setLoadTag(this.f3995d.f4003a);
            C1496j.m5027a(this.f3995d.f4006d, str, maxError);
            this.f3995d.f4006d = null;
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoaded(MaxAd maxAd) {
            AbstractC1044a abstractC1044a = (AbstractC1044a) maxAd;
            abstractC1044a.m6717a(this.f3995d.f4003a);
            this.f3995d.f4005c = 0;
            if (this.f3995d.f4006d != null) {
                abstractC1044a.m6710g().m6137e().m6725a(this.f3995d.f4006d);
                this.f3995d.f4006d.onAdLoaded(abstractC1044a);
                if (abstractC1044a.m6713d().endsWith("load")) {
                    this.f3995d.f4006d.onAdRevenuePaid(abstractC1044a);
                }
                this.f3995d.f4006d = null;
                if ((this.f3992a.m5480b(C1313a.f4678M).contains(maxAd.getAdUnitId()) || this.f3992a.m5510a(C1313a.f4677L, maxAd.getFormat())) && !this.f3992a.m5534I().m6192a() && !this.f3992a.m5534I().m6188b()) {
                    this.f3994c.m6445a(maxAd.getAdUnitId(), maxAd.getFormat(), this.f3998g, this.f3997f, this.f3993b, this);
                    return;
                }
            } else {
                this.f3994c.m6450a(abstractC1044a);
            }
            this.f3995d.f4004b.set(false);
        }

        @Override // com.applovin.mediation.MaxAdRevenueListener
        public void onAdRevenuePaid(MaxAd maxAd) {
        }
    }

    /* renamed from: com.applovin.impl.mediation.d$b */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/d$b.class */
    public static class C1112b {

        /* renamed from: a */
        private final String f4003a;

        /* renamed from: b */
        private final AtomicBoolean f4004b;

        /* renamed from: c */
        private int f4005c;

        /* renamed from: d */
        private volatile AbstractC1078a.AbstractC1079a f4006d;

        private C1112b(String str) {
            this.f4004b = new AtomicBoolean();
            this.f4003a = str;
        }

        /* renamed from: e */
        public static /* synthetic */ int m6428e(C1112b c1112b) {
            int i = c1112b.f4005c;
            c1112b.f4005c = i + 1;
            return i;
        }
    }

    public C1108d(C1408l c1408l) {
        this.f3980a = c1408l;
    }

    /* renamed from: a */
    private AbstractC1044a m6446a(String str) {
        AbstractC1044a abstractC1044a;
        synchronized (this.f3984e) {
            abstractC1044a = this.f3983d.get(str);
            this.f3983d.remove(str);
        }
        return abstractC1044a;
    }

    /* renamed from: a */
    private C1112b m6444a(String str, String str2) {
        String str3;
        C1112b c1112b;
        synchronized (this.f3982c) {
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            if (StringUtils.isValidString(str2)) {
                str3 = "-" + str2;
            } else {
                str3 = "";
            }
            sb.append(str3);
            String sb2 = sb.toString();
            C1112b c1112b2 = this.f3981b.get(sb2);
            c1112b = c1112b2;
            if (c1112b2 == null) {
                c1112b = new C1112b(str2);
                this.f3981b.put(sb2, c1112b);
            }
        }
        return c1112b;
    }

    /* renamed from: a */
    public void m6450a(AbstractC1044a abstractC1044a) {
        synchronized (this.f3984e) {
            if (this.f3983d.containsKey(abstractC1044a.getAdUnitId())) {
                C1479t.m5107i("AppLovinSdk", "Ad in cache already: " + abstractC1044a.getAdUnitId());
            }
            this.f3983d.put(abstractC1044a.getAdUnitId(), abstractC1044a);
        }
    }

    /* renamed from: a */
    public void m6445a(final String str, final MaxAdFormat maxAdFormat, final Map<String, Object> map, final C1469j c1469j, final Context context, final AbstractC1078a.AbstractC1079a abstractC1079a) {
        this.f3980a.m5525R().m5653a(new C1087b(maxAdFormat, map, context, this.f3980a, new C1087b.AbstractC1089a() { // from class: com.applovin.impl.mediation.d.1
            @Override // com.applovin.impl.mediation.p039b.C1087b.AbstractC1089a
            /* renamed from: a */
            public void mo6442a(JSONArray jSONArray) {
                C1108d.this.f3980a.m5525R().m5654a(new C1091c(str, maxAdFormat, map, c1469j, jSONArray, context, C1108d.this.f3980a, abstractC1079a));
            }
        }), C1107c.m6456a(maxAdFormat));
    }

    /* renamed from: a */
    public void m6443a(String str, String str2, MaxAdFormat maxAdFormat, Map<String, Object> map, C1469j c1469j, Context context, AbstractC1078a.AbstractC1079a abstractC1079a) {
        MaxAd m6446a = (this.f3980a.m5534I().m6188b() || Utils.isDspDemoApp(this.f3980a.m5532K())) ? null : m6446a(str);
        if (m6446a != null) {
            m6446a.m6717a(str2);
            m6446a.m6710g().m6137e().m6725a(abstractC1079a);
            abstractC1079a.onAdLoaded(m6446a);
            if (m6446a.m6713d().endsWith("load")) {
                abstractC1079a.onAdRevenuePaid(m6446a);
            }
        }
        C1112b m6444a = m6444a(str, str2);
        if (m6444a.f4004b.compareAndSet(false, true)) {
            if (m6446a == null) {
                m6444a.f4006d = abstractC1079a;
            }
            m6445a(str, maxAdFormat, map, c1469j, context, new C1110a(map, c1469j, m6444a, maxAdFormat, this, this.f3980a, context));
            return;
        }
        if (m6444a.f4006d != null && m6444a.f4006d != abstractC1079a) {
            C1479t.m5108h("MediationAdLoadManager", "Attempting to load ad for same ad unit id (" + str + ") while another ad load is already in progress!");
        }
        m6444a.f4006d = abstractC1079a;
    }
}
