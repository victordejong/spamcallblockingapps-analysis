package androidx.media2.exoplayer.external.upstream;

import android.content.Context;
import android.net.Uri;
import androidx.media2.exoplayer.external.util.C1993a;
import androidx.media2.exoplayer.external.util.C1996ac;
import androidx.media2.exoplayer.external.util.C2009j;
import com.mopub.common.Constants;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* renamed from: androidx.media2.exoplayer.external.upstream.m */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/m.class */
public final class C1979m implements AbstractC1968f {

    /* renamed from: a */
    private final Context f8003a;

    /* renamed from: b */
    private final List<AbstractC1990w> f8004b;

    /* renamed from: c */
    private final AbstractC1968f f8005c;

    /* renamed from: d */
    private AbstractC1968f f8006d;

    /* renamed from: e */
    private AbstractC1968f f8007e;

    /* renamed from: f */
    private AbstractC1968f f8008f;

    /* renamed from: g */
    private AbstractC1968f f8009g;

    /* renamed from: h */
    private AbstractC1968f f8010h;

    /* renamed from: i */
    private AbstractC1968f f8011i;

    /* renamed from: j */
    private AbstractC1968f f8012j;

    /* renamed from: k */
    private AbstractC1968f f8013k;

    public C1979m(Context context, AbstractC1968f abstractC1968f) {
        this.f8003a = context.getApplicationContext();
        this.f8005c = (AbstractC1968f) C1993a.m41690a(abstractC1968f);
        this.f8004b = new ArrayList();
    }

    public C1979m(Context context, String str, int i, int i2, boolean z) {
        this(context, new C1981o(str, null, i, i2, z, null));
    }

    public C1979m(Context context, String str, boolean z) {
        this(context, str, 8000, 8000, z);
    }

    /* renamed from: a */
    private void m41712a(AbstractC1968f abstractC1968f) {
        for (int i = 0; i < this.f8004b.size(); i++) {
            abstractC1968f.mo41697a(this.f8004b.get(i));
        }
    }

    /* renamed from: a */
    private static void m41711a(AbstractC1968f abstractC1968f, AbstractC1990w abstractC1990w) {
        if (abstractC1968f != null) {
            abstractC1968f.mo41697a(abstractC1990w);
        }
    }

    /* renamed from: d */
    private AbstractC1968f m41710d() {
        if (this.f8007e == null) {
            AssetDataSource assetDataSource = new AssetDataSource(this.f8003a);
            this.f8007e = assetDataSource;
            m41712a(assetDataSource);
        }
        return this.f8007e;
    }

    /* renamed from: e */
    private AbstractC1968f m41709e() {
        if (this.f8009g == null) {
            try {
                AbstractC1968f abstractC1968f = (AbstractC1968f) Class.forName("androidx.media2.exoplayer.external.ext.rtmp.RtmpDataSource").getConstructor(new Class[0]).newInstance(new Object[0]);
                this.f8009g = abstractC1968f;
                m41712a(abstractC1968f);
            } catch (ClassNotFoundException e) {
                C2009j.m41584a("DefaultDataSource", "Attempting to play RTMP stream without depending on the RTMP extension");
            } catch (Exception e2) {
                throw new RuntimeException("Error instantiating RTMP extension", e2);
            }
            if (this.f8009g == null) {
                this.f8009g = this.f8005c;
            }
        }
        return this.f8009g;
    }

    @Override // androidx.media2.exoplayer.external.upstream.AbstractC1968f
    /* renamed from: a */
    public final int mo41197a(byte[] bArr, int i, int i2) throws IOException {
        return ((AbstractC1968f) C1993a.m41690a(this.f8013k)).mo41197a(bArr, i, i2);
    }

    @Override // androidx.media2.exoplayer.external.upstream.AbstractC1968f
    /* renamed from: a */
    public final long mo41199a(C1971h c1971h) throws IOException {
        C1993a.m41686b(this.f8013k == null);
        String scheme = c1971h.f7952a.getScheme();
        if (C1996ac.m41666a(c1971h.f7952a)) {
            String path = c1971h.f7952a.getPath();
            if (path == null || !path.startsWith("/android_asset/")) {
                if (this.f8006d == null) {
                    FileDataSource fileDataSource = new FileDataSource();
                    this.f8006d = fileDataSource;
                    m41712a(fileDataSource);
                }
                this.f8013k = this.f8006d;
            } else {
                this.f8013k = m41710d();
            }
        } else if ("asset".equals(scheme)) {
            this.f8013k = m41710d();
        } else if (Constants.VAST_TRACKER_CONTENT.equals(scheme)) {
            if (this.f8008f == null) {
                ContentDataSource contentDataSource = new ContentDataSource(this.f8003a);
                this.f8008f = contentDataSource;
                m41712a(contentDataSource);
            }
            this.f8013k = this.f8008f;
        } else if ("rtmp".equals(scheme)) {
            this.f8013k = m41709e();
        } else if ("udp".equals(scheme)) {
            if (this.f8010h == null) {
                UdpDataSource udpDataSource = new UdpDataSource();
                this.f8010h = udpDataSource;
                m41712a(udpDataSource);
            }
            this.f8013k = this.f8010h;
        } else if ("data".equals(scheme)) {
            if (this.f8011i == null) {
                C1967e c1967e = new C1967e();
                this.f8011i = c1967e;
                m41712a(c1967e);
            }
            this.f8013k = this.f8011i;
        } else if ("rawresource".equals(scheme)) {
            if (this.f8012j == null) {
                RawResourceDataSource rawResourceDataSource = new RawResourceDataSource(this.f8003a);
                this.f8012j = rawResourceDataSource;
                m41712a(rawResourceDataSource);
            }
            this.f8013k = this.f8012j;
        } else {
            this.f8013k = this.f8005c;
        }
        return this.f8013k.mo41199a(c1971h);
    }

    @Override // androidx.media2.exoplayer.external.upstream.AbstractC1968f
    /* renamed from: a */
    public final Uri mo41200a() {
        AbstractC1968f abstractC1968f = this.f8013k;
        if (abstractC1968f == null) {
            return null;
        }
        return abstractC1968f.mo41200a();
    }

    @Override // androidx.media2.exoplayer.external.upstream.AbstractC1968f
    /* renamed from: a */
    public final void mo41697a(AbstractC1990w abstractC1990w) {
        this.f8005c.mo41697a(abstractC1990w);
        this.f8004b.add(abstractC1990w);
        m41711a(this.f8006d, abstractC1990w);
        m41711a(this.f8007e, abstractC1990w);
        m41711a(this.f8008f, abstractC1990w);
        m41711a(this.f8009g, abstractC1990w);
        m41711a(this.f8010h, abstractC1990w);
        m41711a(this.f8011i, abstractC1990w);
        m41711a(this.f8012j, abstractC1990w);
    }

    @Override // androidx.media2.exoplayer.external.upstream.AbstractC1968f
    /* renamed from: b */
    public final Map<String, List<String>> mo41696b() {
        AbstractC1968f abstractC1968f = this.f8013k;
        return abstractC1968f == null ? Collections.emptyMap() : abstractC1968f.mo41696b();
    }

    @Override // androidx.media2.exoplayer.external.upstream.AbstractC1968f
    /* renamed from: c */
    public final void mo41196c() throws IOException {
        AbstractC1968f abstractC1968f = this.f8013k;
        if (abstractC1968f != null) {
            try {
                abstractC1968f.mo41196c();
            } finally {
                this.f8013k = null;
            }
        }
    }
}
