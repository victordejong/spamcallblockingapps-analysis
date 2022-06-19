package com.google.android.exoplayer2.upstream;

import android.content.Context;
import android.net.Uri;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5515h0;
import com.google.android.exoplayer2.util.C5526o;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.android.exoplayer2.upstream.o */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/o.class */
public final class C5487o implements AbstractC5478j {

    /* renamed from: b */
    private final Context f17792b;

    /* renamed from: c */
    private final List<AbstractC5497x> f17793c = new ArrayList();

    /* renamed from: d */
    private final AbstractC5478j f17794d;

    /* renamed from: e */
    private AbstractC5478j f17795e;

    /* renamed from: f */
    private AbstractC5478j f17796f;

    /* renamed from: g */
    private AbstractC5478j f17797g;

    /* renamed from: h */
    private AbstractC5478j f17798h;

    /* renamed from: i */
    private AbstractC5478j f17799i;

    /* renamed from: j */
    private AbstractC5478j f17800j;

    /* renamed from: k */
    private AbstractC5478j f17801k;

    /* renamed from: l */
    private AbstractC5478j f17802l;

    public C5487o(Context context, AbstractC5478j abstractC5478j) {
        this.f17792b = context.getApplicationContext();
        this.f17794d = (AbstractC5478j) C5508e.m18911e(abstractC5478j);
    }

    /* renamed from: d */
    private void m18985d(AbstractC5478j abstractC5478j) {
        for (int i = 0; i < this.f17793c.size(); i++) {
            abstractC5478j.mo18950a(this.f17793c.get(i));
        }
    }

    /* renamed from: e */
    private AbstractC5478j m18984e() {
        if (this.f17796f == null) {
            AssetDataSource assetDataSource = new AssetDataSource(this.f17792b);
            this.f17796f = assetDataSource;
            m18985d(assetDataSource);
        }
        return this.f17796f;
    }

    /* renamed from: f */
    private AbstractC5478j m18983f() {
        if (this.f17797g == null) {
            ContentDataSource contentDataSource = new ContentDataSource(this.f17792b);
            this.f17797g = contentDataSource;
            m18985d(contentDataSource);
        }
        return this.f17797g;
    }

    /* renamed from: g */
    private AbstractC5478j m18982g() {
        if (this.f17800j == null) {
            C5476h c5476h = new C5476h();
            this.f17800j = c5476h;
            m18985d(c5476h);
        }
        return this.f17800j;
    }

    /* renamed from: h */
    private AbstractC5478j m18981h() {
        if (this.f17795e == null) {
            FileDataSource fileDataSource = new FileDataSource();
            this.f17795e = fileDataSource;
            m18985d(fileDataSource);
        }
        return this.f17795e;
    }

    /* renamed from: i */
    private AbstractC5478j m18980i() {
        if (this.f17801k == null) {
            RawResourceDataSource rawResourceDataSource = new RawResourceDataSource(this.f17792b);
            this.f17801k = rawResourceDataSource;
            m18985d(rawResourceDataSource);
        }
        return this.f17801k;
    }

    /* renamed from: j */
    private AbstractC5478j m18979j() {
        if (this.f17798h == null) {
            try {
                AbstractC5478j abstractC5478j = (AbstractC5478j) Class.forName("com.google.android.exoplayer2.ext.rtmp.RtmpDataSource").getConstructor(new Class[0]).newInstance(new Object[0]);
                this.f17798h = abstractC5478j;
                m18985d(abstractC5478j);
            } catch (ClassNotFoundException e) {
                C5526o.m18742f("DefaultDataSource", "Attempting to play RTMP stream without depending on the RTMP extension");
            } catch (Exception e2) {
                throw new RuntimeException("Error instantiating RTMP extension", e2);
            }
            if (this.f17798h == null) {
                this.f17798h = this.f17794d;
            }
        }
        return this.f17798h;
    }

    /* renamed from: k */
    private AbstractC5478j m18978k() {
        if (this.f17799i == null) {
            UdpDataSource udpDataSource = new UdpDataSource();
            this.f17799i = udpDataSource;
            m18985d(udpDataSource);
        }
        return this.f17799i;
    }

    /* renamed from: l */
    private void m18977l(AbstractC5478j abstractC5478j, AbstractC5497x abstractC5497x) {
        if (abstractC5478j != null) {
            abstractC5478j.mo18950a(abstractC5497x);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC5478j
    /* renamed from: a */
    public void mo18950a(AbstractC5497x abstractC5497x) {
        this.f17794d.mo18950a(abstractC5497x);
        this.f17793c.add(abstractC5497x);
        m18977l(this.f17795e, abstractC5497x);
        m18977l(this.f17796f, abstractC5497x);
        m18977l(this.f17797g, abstractC5497x);
        m18977l(this.f17798h, abstractC5497x);
        m18977l(this.f17799i, abstractC5497x);
        m18977l(this.f17800j, abstractC5497x);
        m18977l(this.f17801k, abstractC5497x);
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC5478j
    /* renamed from: b */
    public long mo18949b(C5481l c5481l) {
        C5508e.m18910f(this.f17802l == null);
        String scheme = c5481l.f17746a.getScheme();
        if (C5515h0.m18849W(c5481l.f17746a)) {
            String path = c5481l.f17746a.getPath();
            if (path == null || !path.startsWith("/android_asset/")) {
                this.f17802l = m18981h();
            } else {
                this.f17802l = m18984e();
            }
        } else if ("asset".equals(scheme)) {
            this.f17802l = m18984e();
        } else if ("content".equals(scheme)) {
            this.f17802l = m18983f();
        } else if ("rtmp".equals(scheme)) {
            this.f17802l = m18979j();
        } else if ("udp".equals(scheme)) {
            this.f17802l = m18978k();
        } else if ("data".equals(scheme)) {
            this.f17802l = m18982g();
        } else if ("rawresource".equals(scheme)) {
            this.f17802l = m18980i();
        } else {
            this.f17802l = this.f17794d;
        }
        return this.f17802l.mo18949b(c5481l);
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC5478j
    /* renamed from: c */
    public Uri mo18948c() {
        AbstractC5478j abstractC5478j = this.f17802l;
        return abstractC5478j == null ? null : abstractC5478j.mo18948c();
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC5478j
    public void close() {
        AbstractC5478j abstractC5478j = this.f17802l;
        if (abstractC5478j != null) {
            try {
                abstractC5478j.close();
            } finally {
                this.f17802l = null;
            }
        }
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC5478j
    public Map<String, List<String>> getResponseHeaders() {
        AbstractC5478j abstractC5478j = this.f17802l;
        return abstractC5478j == null ? Collections.emptyMap() : abstractC5478j.getResponseHeaders();
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC5478j
    public int read(byte[] bArr, int i, int i2) {
        return ((AbstractC5478j) C5508e.m18911e(this.f17802l)).read(bArr, i, i2);
    }
}
