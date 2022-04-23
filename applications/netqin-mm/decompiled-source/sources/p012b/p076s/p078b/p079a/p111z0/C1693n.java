package p012b.p076s.p078b.p079a.p111z0;

import android.content.Context;
import android.net.Uri;
import androidx.media2.exoplayer.external.upstream.AssetDataSource;
import androidx.media2.exoplayer.external.upstream.ContentDataSource;
import androidx.media2.exoplayer.external.upstream.FileDataSource;
import androidx.media2.exoplayer.external.upstream.RawResourceDataSource;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
import p012b.p076s.p078b.p079a.p080a1.C1175j;
/* renamed from: b.s.b.a.z0.n */
/* loaded from: classes-dex2jar.jar:b/s/b/a/z0/n.class */
public final class C1693n implements AbstractC1684g {

    /* renamed from: a */
    public final Context f6922a;

    /* renamed from: b */
    public final List<AbstractC1704x> f6923b = new ArrayList();

    /* renamed from: c */
    public final AbstractC1684g f6924c;

    /* renamed from: d */
    public AbstractC1684g f6925d;

    /* renamed from: e */
    public AbstractC1684g f6926e;

    /* renamed from: f */
    public AbstractC1684g f6927f;

    /* renamed from: g */
    public AbstractC1684g f6928g;

    /* renamed from: h */
    public AbstractC1684g f6929h;

    /* renamed from: i */
    public AbstractC1684g f6930i;

    /* renamed from: j */
    public AbstractC1684g f6931j;

    public C1693n(Context context, AbstractC1684g gVar) {
        this.f6922a = context.getApplicationContext();
        C1160a.m34522a(gVar);
        this.f6924c = gVar;
    }

    @Override // p012b.p076s.p078b.p079a.p111z0.AbstractC1684g
    /* renamed from: a */
    public long mo32144a(C1687i iVar) throws IOException {
        C1160a.m34518b(this.f6931j == null);
        String scheme = iVar.f6883a.getScheme();
        if (C1167d0.m34453b(iVar.f6883a)) {
            String path = iVar.f6883a.getPath();
            if (path == null || !path.startsWith("/android_asset/")) {
                this.f6931j = m32352d();
            } else {
                this.f6931j = m32357a();
            }
        } else if ("asset".equals(scheme)) {
            this.f6931j = m32357a();
        } else if ("content".equals(scheme)) {
            this.f6931j = m32354b();
        } else if ("rtmp".equals(scheme)) {
            this.f6931j = m32350f();
        } else if ("data".equals(scheme)) {
            this.f6931j = m32353c();
        } else if ("rawresource".equals(scheme)) {
            this.f6931j = m32351e();
        } else {
            this.f6931j = this.f6924c;
        }
        return this.f6931j.mo32144a(iVar);
    }

    /* renamed from: a */
    public final AbstractC1684g m32357a() {
        if (this.f6926e == null) {
            AssetDataSource assetDataSource = new AssetDataSource(this.f6922a);
            this.f6926e = assetDataSource;
            m32356a(assetDataSource);
        }
        return this.f6926e;
    }

    /* renamed from: a */
    public final void m32356a(AbstractC1684g gVar) {
        for (int i = 0; i < this.f6923b.size(); i++) {
            gVar.mo32326a(this.f6923b.get(i));
        }
    }

    /* renamed from: a */
    public final void m32355a(AbstractC1684g gVar, AbstractC1704x xVar) {
        if (gVar != null) {
            gVar.mo32326a(xVar);
        }
    }

    @Override // p012b.p076s.p078b.p079a.p111z0.AbstractC1684g
    /* renamed from: a */
    public void mo32326a(AbstractC1704x xVar) {
        this.f6924c.mo32326a(xVar);
        this.f6923b.add(xVar);
        m32355a(this.f6925d, xVar);
        m32355a(this.f6926e, xVar);
        m32355a(this.f6927f, xVar);
        m32355a(this.f6928g, xVar);
        m32355a(this.f6929h, xVar);
        m32355a(this.f6930i, xVar);
    }

    /* renamed from: b */
    public final AbstractC1684g m32354b() {
        if (this.f6927f == null) {
            ContentDataSource contentDataSource = new ContentDataSource(this.f6922a);
            this.f6927f = contentDataSource;
            m32356a(contentDataSource);
        }
        return this.f6927f;
    }

    /* renamed from: c */
    public final AbstractC1684g m32353c() {
        if (this.f6929h == null) {
            C1682e eVar = new C1682e();
            this.f6929h = eVar;
            m32356a(eVar);
        }
        return this.f6929h;
    }

    @Override // p012b.p076s.p078b.p079a.p111z0.AbstractC1684g
    public void close() throws IOException {
        AbstractC1684g gVar = this.f6931j;
        if (gVar != null) {
            try {
                gVar.close();
            } finally {
                this.f6931j = null;
            }
        }
    }

    /* renamed from: d */
    public final AbstractC1684g m32352d() {
        if (this.f6925d == null) {
            FileDataSource fileDataSource = new FileDataSource();
            this.f6925d = fileDataSource;
            m32356a(fileDataSource);
        }
        return this.f6925d;
    }

    /* renamed from: e */
    public final AbstractC1684g m32351e() {
        if (this.f6930i == null) {
            RawResourceDataSource rawResourceDataSource = new RawResourceDataSource(this.f6922a);
            this.f6930i = rawResourceDataSource;
            m32356a(rawResourceDataSource);
        }
        return this.f6930i;
    }

    /* renamed from: f */
    public final AbstractC1684g m32350f() {
        if (this.f6928g == null) {
            try {
                AbstractC1684g gVar = (AbstractC1684g) Class.forName("androidx.media2.exoplayer.external.ext.rtmp.RtmpDataSource").getConstructor(new Class[0]).newInstance(new Object[0]);
                this.f6928g = gVar;
                m32356a(gVar);
            } catch (ClassNotFoundException e) {
                C1175j.m34414d("DefaultDataSource", "Attempting to play RTMP stream without depending on the RTMP extension");
            } catch (Exception e2) {
                throw new RuntimeException("Error instantiating RTMP extension", e2);
            }
            if (this.f6928g == null) {
                this.f6928g = this.f6924c;
            }
        }
        return this.f6928g;
    }

    @Override // p012b.p076s.p078b.p079a.p111z0.AbstractC1684g
    /* renamed from: o */
    public Uri mo32142o() {
        AbstractC1684g gVar = this.f6931j;
        return gVar == null ? null : gVar.mo32142o();
    }

    @Override // p012b.p076s.p078b.p079a.p111z0.AbstractC1684g
    /* renamed from: p */
    public Map<String, List<String>> mo32322p() {
        AbstractC1684g gVar = this.f6931j;
        return gVar == null ? Collections.emptyMap() : gVar.mo32322p();
    }

    @Override // p012b.p076s.p078b.p079a.p111z0.AbstractC1684g
    public int read(byte[] bArr, int i, int i2) throws IOException {
        AbstractC1684g gVar = this.f6931j;
        C1160a.m34522a(gVar);
        return gVar.read(bArr, i, i2);
    }
}
