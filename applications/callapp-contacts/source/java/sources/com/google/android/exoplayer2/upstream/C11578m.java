package com.google.android.exoplayer2.upstream;

import android.content.Context;
import android.net.Uri;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.exoplayer2.util.C11617n;
import com.mopub.common.Constants;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.android.exoplayer2.upstream.m */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/m.class */
public final class C11578m implements AbstractC11567h {

    /* renamed from: a */
    private final Context f38571a;

    /* renamed from: b */
    private final List<AbstractC11590v> f38572b;

    /* renamed from: c */
    private final AbstractC11567h f38573c;

    /* renamed from: d */
    private AbstractC11567h f38574d;

    /* renamed from: e */
    private AbstractC11567h f38575e;

    /* renamed from: f */
    private AbstractC11567h f38576f;

    /* renamed from: g */
    private AbstractC11567h f38577g;

    /* renamed from: h */
    private AbstractC11567h f38578h;

    /* renamed from: i */
    private AbstractC11567h f38579i;

    /* renamed from: j */
    private AbstractC11567h f38580j;

    /* renamed from: k */
    private AbstractC11567h f38581k;

    public C11578m(Context context, AbstractC11567h abstractC11567h) {
        this.f38571a = context.getApplicationContext();
        this.f38573c = (AbstractC11567h) C11593a.m20020b(abstractC11567h);
        this.f38572b = new ArrayList();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C11578m(android.content.Context r5, java.lang.String r6, int r7, int r8, boolean r9) {
        /*
            r4 = this;
            com.google.android.exoplayer2.upstream.o$a r0 = new com.google.android.exoplayer2.upstream.o$a
            r1 = r0
            r1.<init>()
            r10 = r0
            r0 = r10
            r1 = r6
            r0.f38603a = r1
            r0 = r10
            r1 = r7
            r0.f38604b = r1
            r0 = r10
            r1 = r8
            r0.f38605c = r1
            r0 = r10
            r1 = r9
            r0.f38606d = r1
            r0 = r4
            r1 = r5
            r2 = r10
            com.google.android.exoplayer2.upstream.o r2 = r2.createDataSource()
            r0.<init>(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.upstream.C11578m.<init>(android.content.Context, java.lang.String, int, int, boolean):void");
    }

    public C11578m(Context context, String str, boolean z) {
        this(context, str, 8000, 8000, z);
    }

    public C11578m(Context context, boolean z) {
        this(context, null, 8000, 8000, z);
    }

    /* renamed from: a */
    private void m20049a(AbstractC11567h abstractC11567h) {
        for (int i = 0; i < this.f38572b.size(); i++) {
            abstractC11567h.mo20034a(this.f38572b.get(i));
        }
    }

    /* renamed from: a */
    private static void m20048a(AbstractC11567h abstractC11567h, AbstractC11590v abstractC11590v) {
        if (abstractC11567h != null) {
            abstractC11567h.mo20034a(abstractC11590v);
        }
    }

    /* renamed from: d */
    private AbstractC11567h m20047d() {
        if (this.f38575e == null) {
            AssetDataSource assetDataSource = new AssetDataSource(this.f38571a);
            this.f38575e = assetDataSource;
            m20049a(assetDataSource);
        }
        return this.f38575e;
    }

    /* renamed from: e */
    private AbstractC11567h m20046e() {
        if (this.f38577g == null) {
            try {
                AbstractC11567h abstractC11567h = (AbstractC11567h) Class.forName("com.google.android.exoplayer2.ext.rtmp.RtmpDataSource").getConstructor(new Class[0]).newInstance(new Object[0]);
                this.f38577g = abstractC11567h;
                m20049a(abstractC11567h);
            } catch (ClassNotFoundException e) {
                C11617n.m19863a("DefaultDataSource", "Attempting to play RTMP stream without depending on the RTMP extension");
            } catch (Exception e2) {
                throw new RuntimeException("Error instantiating RTMP extension", e2);
            }
            if (this.f38577g == null) {
                this.f38577g = this.f38573c;
            }
        }
        return this.f38577g;
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11563e
    /* renamed from: a */
    public final int mo20033a(byte[] bArr, int i, int i2) throws IOException {
        return ((AbstractC11567h) C11593a.m20020b(this.f38581k)).mo20033a(bArr, i, i2);
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11567h
    /* renamed from: a */
    public final long mo20035a(C11570j c11570j) throws IOException {
        C11593a.m20019b(this.f38581k == null);
        String scheme = c11570j.f38512a.getScheme();
        if (C11599af.m19987a(c11570j.f38512a)) {
            String path = c11570j.f38512a.getPath();
            if (path == null || !path.startsWith("/android_asset/")) {
                if (this.f38574d == null) {
                    FileDataSource fileDataSource = new FileDataSource();
                    this.f38574d = fileDataSource;
                    m20049a(fileDataSource);
                }
                this.f38581k = this.f38574d;
            } else {
                this.f38581k = m20047d();
            }
        } else if ("asset".equals(scheme)) {
            this.f38581k = m20047d();
        } else if (Constants.VAST_TRACKER_CONTENT.equals(scheme)) {
            if (this.f38576f == null) {
                ContentDataSource contentDataSource = new ContentDataSource(this.f38571a);
                this.f38576f = contentDataSource;
                m20049a(contentDataSource);
            }
            this.f38581k = this.f38576f;
        } else if ("rtmp".equals(scheme)) {
            this.f38581k = m20046e();
        } else if ("udp".equals(scheme)) {
            if (this.f38578h == null) {
                UdpDataSource udpDataSource = new UdpDataSource();
                this.f38578h = udpDataSource;
                m20049a(udpDataSource);
            }
            this.f38581k = this.f38578h;
        } else if ("data".equals(scheme)) {
            if (this.f38579i == null) {
                C11564f c11564f = new C11564f();
                this.f38579i = c11564f;
                m20049a(c11564f);
            }
            this.f38581k = this.f38579i;
        } else if ("rawresource".equals(scheme) || "android.resource".equals(scheme)) {
            if (this.f38580j == null) {
                RawResourceDataSource rawResourceDataSource = new RawResourceDataSource(this.f38571a);
                this.f38580j = rawResourceDataSource;
                m20049a(rawResourceDataSource);
            }
            this.f38581k = this.f38580j;
        } else {
            this.f38581k = this.f38573c;
        }
        return this.f38581k.mo20035a(c11570j);
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11567h
    /* renamed from: a */
    public final Uri mo20036a() {
        AbstractC11567h abstractC11567h = this.f38581k;
        if (abstractC11567h == null) {
            return null;
        }
        return abstractC11567h.mo20036a();
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11567h
    /* renamed from: a */
    public final void mo20034a(AbstractC11590v abstractC11590v) {
        C11593a.m20020b(abstractC11590v);
        this.f38573c.mo20034a(abstractC11590v);
        this.f38572b.add(abstractC11590v);
        m20048a(this.f38574d, abstractC11590v);
        m20048a(this.f38575e, abstractC11590v);
        m20048a(this.f38576f, abstractC11590v);
        m20048a(this.f38577g, abstractC11590v);
        m20048a(this.f38578h, abstractC11590v);
        m20048a(this.f38579i, abstractC11590v);
        m20048a(this.f38580j, abstractC11590v);
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11567h
    /* renamed from: b */
    public final Map<String, List<String>> mo20032b() {
        AbstractC11567h abstractC11567h = this.f38581k;
        return abstractC11567h == null ? Collections.emptyMap() : abstractC11567h.mo20032b();
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11567h
    /* renamed from: c */
    public final void mo20031c() throws IOException {
        AbstractC11567h abstractC11567h = this.f38581k;
        if (abstractC11567h != null) {
            try {
                abstractC11567h.mo20031c();
            } finally {
                this.f38581k = null;
            }
        }
    }
}
