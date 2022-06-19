package com.applovin.impl.sdk.p056d;

import android.annotation.TargetApi;
import android.app.Activity;
import com.applovin.impl.sdk.AppLovinAdBase;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.p053ad.AppLovinAdImpl;
import com.applovin.impl.sdk.p056d.C1324c;
import com.applovin.impl.sdk.utils.C1492g;
import com.applovin.impl.sdk.utils.C1493h;
/* renamed from: com.applovin.impl.sdk.d.d */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/d/d.class */
public class C1326d {

    /* renamed from: a */
    private final C1408l f5066a;

    /* renamed from: b */
    private final C1329g f5067b;

    /* renamed from: c */
    private final C1324c.C1325a f5068c;

    /* renamed from: d */
    private final Object f5069d = new Object();

    /* renamed from: e */
    private final long f5070e;

    /* renamed from: f */
    private long f5071f;

    /* renamed from: g */
    private long f5072g;

    /* renamed from: h */
    private long f5073h;

    public C1326d(AppLovinAdImpl appLovinAdImpl, C1408l c1408l) {
        if (appLovinAdImpl != null) {
            if (c1408l == null) {
                throw new IllegalArgumentException("No sdk specified");
            }
            this.f5066a = c1408l;
            this.f5067b = c1408l.m5524S();
            C1324c.C1325a m5778a = c1408l.m5494aa().m5778a(appLovinAdImpl);
            this.f5068c = m5778a;
            m5778a.m5775a(C1323b.f5034a, appLovinAdImpl.getSource().ordinal()).m5777a();
            this.f5070e = appLovinAdImpl.getCreatedAtMillis();
            return;
        }
        throw new IllegalArgumentException("No ad specified");
    }

    /* renamed from: a */
    public static void m5771a(long j, AppLovinAdBase appLovinAdBase, C1408l c1408l) {
        if (appLovinAdBase == null || c1408l == null) {
            return;
        }
        c1408l.m5494aa().m5778a(appLovinAdBase).m5775a(C1323b.f5035b, j).m5777a();
    }

    /* renamed from: a */
    public static void m5770a(AppLovinAdBase appLovinAdBase, C1408l c1408l) {
        if (appLovinAdBase == null || c1408l == null) {
            return;
        }
        c1408l.m5494aa().m5778a(appLovinAdBase).m5775a(C1323b.f5036c, appLovinAdBase.getFetchLatencyMillis()).m5775a(C1323b.f5037d, appLovinAdBase.getFetchResponseSize()).m5777a();
    }

    /* renamed from: a */
    private void m5769a(C1323b c1323b) {
        synchronized (this.f5069d) {
            if (this.f5071f > 0) {
                this.f5068c.m5775a(c1323b, System.currentTimeMillis() - this.f5071f).m5777a();
            }
        }
    }

    /* renamed from: a */
    public static void m5768a(C1327e c1327e, AppLovinAdBase appLovinAdBase, C1408l c1408l) {
        if (appLovinAdBase == null || c1408l == null || c1327e == null) {
            return;
        }
        c1408l.m5494aa().m5778a(appLovinAdBase).m5775a(C1323b.f5038e, c1327e.m5752c()).m5775a(C1323b.f5039f, c1327e.m5751d()).m5775a(C1323b.f5054u, c1327e.m5748g()).m5775a(C1323b.f5055v, c1327e.m5747h()).m5775a(C1323b.f5056w, (c1327e.m5754b() ? 1 : null) == 1 ? 1L : 0L).m5777a();
    }

    @TargetApi(24)
    /* renamed from: a */
    public void m5773a() {
        this.f5068c.m5775a(C1323b.f5043j, this.f5067b.m5741a(C1328f.f5082b)).m5775a(C1323b.f5042i, this.f5067b.m5741a(C1328f.f5084d));
        synchronized (this.f5069d) {
            if (this.f5070e > 0) {
                long currentTimeMillis = System.currentTimeMillis();
                this.f5071f = currentTimeMillis;
                long m5529N = this.f5066a.m5529N();
                long j = this.f5071f;
                long j2 = this.f5070e;
                Object[] objArr = C1493h.m5062a(this.f5066a.m5532K()) ? 1 : null;
                Activity m6068a = this.f5066a.m5491ad().m6068a();
                Object[] objArr2 = null;
                if (C1492g.m5069f()) {
                    objArr2 = null;
                    if (m6068a != null) {
                        objArr2 = null;
                        if (m6068a.isInMultiWindowMode()) {
                            objArr2 = 1;
                        }
                    }
                }
                this.f5068c.m5775a(C1323b.f5041h, currentTimeMillis - m5529N).m5775a(C1323b.f5040g, j - j2).m5775a(C1323b.f5049p, objArr == 1 ? 1L : 0L).m5775a(C1323b.f5057x, objArr2 == 1 ? 1L : 0L);
            }
        }
        this.f5068c.m5777a();
    }

    /* renamed from: a */
    public void m5772a(long j) {
        this.f5068c.m5775a(C1323b.f5051r, j).m5777a();
    }

    /* renamed from: b */
    public void m5767b() {
        synchronized (this.f5069d) {
            if (this.f5072g < 1) {
                long currentTimeMillis = System.currentTimeMillis();
                this.f5072g = currentTimeMillis;
                long j = this.f5071f;
                if (j > 0) {
                    this.f5068c.m5775a(C1323b.f5046m, currentTimeMillis - j).m5777a();
                }
            }
        }
    }

    /* renamed from: b */
    public void m5766b(long j) {
        this.f5068c.m5775a(C1323b.f5050q, j).m5777a();
    }

    /* renamed from: c */
    public void m5765c() {
        m5769a(C1323b.f5044k);
    }

    /* renamed from: c */
    public void m5764c(long j) {
        this.f5068c.m5775a(C1323b.f5052s, j).m5777a();
    }

    /* renamed from: d */
    public void m5763d() {
        m5769a(C1323b.f5047n);
    }

    /* renamed from: d */
    public void m5762d(long j) {
        synchronized (this.f5069d) {
            if (this.f5073h < 1) {
                this.f5073h = j;
                this.f5068c.m5775a(C1323b.f5053t, j).m5777a();
            }
        }
    }

    /* renamed from: e */
    public void m5761e() {
        m5769a(C1323b.f5048o);
    }

    /* renamed from: f */
    public void m5760f() {
        m5769a(C1323b.f5045l);
    }

    /* renamed from: g */
    public void m5759g() {
        this.f5068c.m5776a(C1323b.f5058y).m5777a();
    }
}
