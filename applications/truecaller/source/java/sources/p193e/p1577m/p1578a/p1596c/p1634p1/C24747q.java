package p193e.p1577m.p1578a.p1596c.p1634p1;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.exoplayer2.upstream.RawResourceDataSource;
import com.huawei.hms.push.constant.RemoteMessageConst;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import p1727n3.p1789g0.C26232y;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
/* renamed from: e.m.a.c.p1.q */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/p1/q.class */
public final class C24747q implements AbstractC24739l {

    /* renamed from: a */
    public final Context f69371a;

    /* renamed from: b */
    public final List<AbstractC24697f0> f69372b = new ArrayList();

    /* renamed from: c */
    public final AbstractC24739l f69373c;

    /* renamed from: d */
    public AbstractC24739l f69374d;

    /* renamed from: e */
    public AbstractC24739l f69375e;

    /* renamed from: f */
    public AbstractC24739l f69376f;

    /* renamed from: g */
    public AbstractC24739l f69377g;

    /* renamed from: h */
    public AbstractC24739l f69378h;

    /* renamed from: i */
    public AbstractC24739l f69379i;

    /* renamed from: j */
    public AbstractC24739l f69380j;

    /* renamed from: k */
    public AbstractC24739l f69381k;

    public C24747q(Context context, AbstractC24739l abstractC24739l) {
        this.f69371a = context.getApplicationContext();
        Objects.requireNonNull(abstractC24739l);
        this.f69373c = abstractC24739l;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24739l
    /* renamed from: a */
    public Map<String, List<String>> mo4667a() {
        AbstractC24739l abstractC24739l = this.f69381k;
        return abstractC24739l == null ? Collections.emptyMap() : abstractC24739l.mo4667a();
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24739l
    /* renamed from: b */
    public long mo4658b(C24742n c24742n) throws IOException {
        C26232y.m2286x(this.f69381k == null);
        String scheme = c24742n.f69328a.getScheme();
        Uri uri = c24742n.f69328a;
        int i = C24773d0.f69427a;
        String scheme2 = uri.getScheme();
        boolean z = true;
        if (!TextUtils.isEmpty(scheme2)) {
            z = "file".equals(scheme2);
        }
        if (z) {
            String path = c24742n.f69328a.getPath();
            if (path == null || !path.startsWith("/android_asset/")) {
                if (this.f69374d == null) {
                    C24753w c24753w = new C24753w();
                    this.f69374d = c24753w;
                    m4668d(c24753w);
                }
                this.f69381k = this.f69374d;
            } else {
                if (this.f69375e == null) {
                    C24692e c24692e = new C24692e(this.f69371a);
                    this.f69375e = c24692e;
                    m4668d(c24692e);
                }
                this.f69381k = this.f69375e;
            }
        } else if ("asset".equals(scheme)) {
            if (this.f69375e == null) {
                C24692e c24692e2 = new C24692e(this.f69371a);
                this.f69375e = c24692e2;
                m4668d(c24692e2);
            }
            this.f69381k = this.f69375e;
        } else if ("content".equals(scheme)) {
            if (this.f69376f == null) {
                C24701h c24701h = new C24701h(this.f69371a);
                this.f69376f = c24701h;
                m4668d(c24701h);
            }
            this.f69381k = this.f69376f;
        } else if ("rtmp".equals(scheme)) {
            if (this.f69377g == null) {
                try {
                    AbstractC24739l abstractC24739l = (AbstractC24739l) Class.forName("com.google.android.exoplayer2.ext.rtmp.RtmpDataSource").getConstructor(new Class[0]).newInstance(new Object[0]);
                    this.f69377g = abstractC24739l;
                    m4668d(abstractC24739l);
                } catch (ClassNotFoundException e) {
                } catch (Exception e2) {
                    throw new RuntimeException("Error instantiating RTMP extension", e2);
                }
                if (this.f69377g == null) {
                    this.f69377g = this.f69373c;
                }
            }
            this.f69381k = this.f69377g;
        } else if ("udp".equals(scheme)) {
            if (this.f69378h == null) {
                C24699g0 c24699g0 = new C24699g0();
                this.f69378h = c24699g0;
                m4668d(c24699g0);
            }
            this.f69381k = this.f69378h;
        } else if (RemoteMessageConst.DATA.equals(scheme)) {
            if (this.f69379i == null) {
                C24735i c24735i = new C24735i();
                this.f69379i = c24735i;
                m4668d(c24735i);
            }
            this.f69381k = this.f69379i;
        } else if ("rawresource".equals(scheme)) {
            if (this.f69380j == null) {
                RawResourceDataSource rawResourceDataSource = new RawResourceDataSource(this.f69371a);
                this.f69380j = rawResourceDataSource;
                m4668d(rawResourceDataSource);
            }
            this.f69381k = this.f69380j;
        } else {
            this.f69381k = this.f69373c;
        }
        return this.f69381k.mo4658b(c24742n);
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24739l
    /* renamed from: c */
    public void mo4669c(AbstractC24697f0 abstractC24697f0) {
        this.f69373c.mo4669c(abstractC24697f0);
        this.f69372b.add(abstractC24697f0);
        AbstractC24739l abstractC24739l = this.f69374d;
        if (abstractC24739l != null) {
            abstractC24739l.mo4669c(abstractC24697f0);
        }
        AbstractC24739l abstractC24739l2 = this.f69375e;
        if (abstractC24739l2 != null) {
            abstractC24739l2.mo4669c(abstractC24697f0);
        }
        AbstractC24739l abstractC24739l3 = this.f69376f;
        if (abstractC24739l3 != null) {
            abstractC24739l3.mo4669c(abstractC24697f0);
        }
        AbstractC24739l abstractC24739l4 = this.f69377g;
        if (abstractC24739l4 != null) {
            abstractC24739l4.mo4669c(abstractC24697f0);
        }
        AbstractC24739l abstractC24739l5 = this.f69378h;
        if (abstractC24739l5 != null) {
            abstractC24739l5.mo4669c(abstractC24697f0);
        }
        AbstractC24739l abstractC24739l6 = this.f69379i;
        if (abstractC24739l6 != null) {
            abstractC24739l6.mo4669c(abstractC24697f0);
        }
        AbstractC24739l abstractC24739l7 = this.f69380j;
        if (abstractC24739l7 != null) {
            abstractC24739l7.mo4669c(abstractC24697f0);
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24739l
    public void close() throws IOException {
        AbstractC24739l abstractC24739l = this.f69381k;
        if (abstractC24739l != null) {
            try {
                abstractC24739l.close();
            } finally {
                this.f69381k = null;
            }
        }
    }

    /* renamed from: d */
    public final void m4668d(AbstractC24739l abstractC24739l) {
        for (int i = 0; i < this.f69372b.size(); i++) {
            abstractC24739l.mo4669c(this.f69372b.get(i));
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24739l
    public Uri getUri() {
        AbstractC24739l abstractC24739l = this.f69381k;
        return abstractC24739l == null ? null : abstractC24739l.getUri();
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24739l
    public int read(byte[] bArr, int i, int i2) throws IOException {
        AbstractC24739l abstractC24739l = this.f69381k;
        Objects.requireNonNull(abstractC24739l);
        return abstractC24739l.read(bArr, i, i2);
    }
}
