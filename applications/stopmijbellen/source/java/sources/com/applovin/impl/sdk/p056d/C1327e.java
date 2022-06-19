package com.applovin.impl.sdk.p056d;

import android.support.p012v4.media.C0082b;
/* renamed from: com.applovin.impl.sdk.d.e */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/d/e.class */
public final class C1327e {

    /* renamed from: a */
    private long f5074a;

    /* renamed from: b */
    private long f5075b;

    /* renamed from: c */
    private boolean f5076c;

    /* renamed from: d */
    private long f5077d;

    /* renamed from: e */
    private long f5078e;

    /* renamed from: f */
    private int f5079f;

    /* renamed from: g */
    private Exception f5080g;

    /* renamed from: a */
    public void m5758a() {
        this.f5076c = true;
    }

    /* renamed from: a */
    public void m5757a(int i) {
        this.f5079f = i;
    }

    /* renamed from: a */
    public void m5756a(long j) {
        this.f5074a += j;
    }

    /* renamed from: a */
    public void m5755a(Exception exc) {
        this.f5080g = exc;
    }

    /* renamed from: b */
    public void m5753b(long j) {
        this.f5075b += j;
    }

    /* renamed from: b */
    public boolean m5754b() {
        return this.f5076c;
    }

    /* renamed from: c */
    public long m5752c() {
        return this.f5074a;
    }

    /* renamed from: d */
    public long m5751d() {
        return this.f5075b;
    }

    /* renamed from: e */
    public void m5750e() {
        this.f5077d++;
    }

    /* renamed from: f */
    public void m5749f() {
        this.f5078e++;
    }

    /* renamed from: g */
    public long m5748g() {
        return this.f5077d;
    }

    /* renamed from: h */
    public long m5747h() {
        return this.f5078e;
    }

    /* renamed from: i */
    public Exception m5746i() {
        return this.f5080g;
    }

    /* renamed from: j */
    public int m5745j() {
        return this.f5079f;
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("CacheStatsTracker{totalDownloadedBytes=");
        m8752j.append(this.f5074a);
        m8752j.append(", totalCachedBytes=");
        m8752j.append(this.f5075b);
        m8752j.append(", isHTMLCachingCancelled=");
        m8752j.append(this.f5076c);
        m8752j.append(", htmlResourceCacheSuccessCount=");
        m8752j.append(this.f5077d);
        m8752j.append(", htmlResourceCacheFailureCount=");
        m8752j.append(this.f5078e);
        m8752j.append('}');
        return m8752j.toString();
    }
}
