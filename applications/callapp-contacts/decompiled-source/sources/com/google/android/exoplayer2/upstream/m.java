package com.google.android.exoplayer2.upstream;

import android.content.Context;
import android.net.Uri;
import com.google.android.exoplayer2.util.a;
import com.google.android.exoplayer2.util.af;
import com.google.android.exoplayer2.util.n;
import com.mopub.common.Constants;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/m.class */
public final class m implements h {

    /* renamed from: a  reason: collision with root package name */
    private final Context f22227a;

    /* renamed from: b  reason: collision with root package name */
    private final List<v> f22228b;

    /* renamed from: c  reason: collision with root package name */
    private final h f22229c;

    /* renamed from: d  reason: collision with root package name */
    private h f22230d;
    private h e;
    private h f;
    private h g;
    private h h;
    private h i;
    private h j;
    private h k;

    public m(Context context, h hVar) {
        this.f22227a = context.getApplicationContext();
        this.f22229c = (h) a.b(hVar);
        this.f22228b = new ArrayList();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public m(android.content.Context r5, java.lang.String r6, int r7, int r8, boolean r9) {
        /*
            r4 = this;
            com.google.android.exoplayer2.upstream.o$a r0 = new com.google.android.exoplayer2.upstream.o$a
            r1 = r0
            r1.<init>()
            r10 = r0
            r0 = r10
            r1 = r6
            r0.f22237a = r1
            r0 = r10
            r1 = r7
            r0.f22238b = r1
            r0 = r10
            r1 = r8
            r0.f22239c = r1
            r0 = r10
            r1 = r9
            r0.f22240d = r1
            r0 = r4
            r1 = r5
            r2 = r10
            com.google.android.exoplayer2.upstream.o r2 = r2.createDataSource()
            r0.<init>(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.upstream.m.<init>(android.content.Context, java.lang.String, int, int, boolean):void");
    }

    public m(Context context, String str, boolean z) {
        this(context, str, 8000, 8000, z);
    }

    public m(Context context, boolean z) {
        this(context, null, 8000, 8000, z);
    }

    private void a(h hVar) {
        for (int i = 0; i < this.f22228b.size(); i++) {
            hVar.a(this.f22228b.get(i));
        }
    }

    private static void a(h hVar, v vVar) {
        if (hVar != null) {
            hVar.a(vVar);
        }
    }

    private h d() {
        if (this.e == null) {
            AssetDataSource assetDataSource = new AssetDataSource(this.f22227a);
            this.e = assetDataSource;
            a(assetDataSource);
        }
        return this.e;
    }

    private h e() {
        if (this.g == null) {
            try {
                h hVar = (h) Class.forName("com.google.android.exoplayer2.ext.rtmp.RtmpDataSource").getConstructor(new Class[0]).newInstance(new Object[0]);
                this.g = hVar;
                a(hVar);
            } catch (ClassNotFoundException e) {
                n.a("DefaultDataSource", "Attempting to play RTMP stream without depending on the RTMP extension");
            } catch (Exception e2) {
                throw new RuntimeException("Error instantiating RTMP extension", e2);
            }
            if (this.g == null) {
                this.g = this.f22229c;
            }
        }
        return this.g;
    }

    @Override // com.google.android.exoplayer2.upstream.e
    public final int a(byte[] bArr, int i, int i2) throws IOException {
        return ((h) a.b(this.k)).a(bArr, i, i2);
    }

    @Override // com.google.android.exoplayer2.upstream.h
    public final long a(j jVar) throws IOException {
        a.b(this.k == null);
        String scheme = jVar.f22204a.getScheme();
        if (af.a(jVar.f22204a)) {
            String path = jVar.f22204a.getPath();
            if (path == null || !path.startsWith("/android_asset/")) {
                if (this.f22230d == null) {
                    FileDataSource fileDataSource = new FileDataSource();
                    this.f22230d = fileDataSource;
                    a(fileDataSource);
                }
                this.k = this.f22230d;
            } else {
                this.k = d();
            }
        } else if ("asset".equals(scheme)) {
            this.k = d();
        } else if (Constants.VAST_TRACKER_CONTENT.equals(scheme)) {
            if (this.f == null) {
                ContentDataSource contentDataSource = new ContentDataSource(this.f22227a);
                this.f = contentDataSource;
                a(contentDataSource);
            }
            this.k = this.f;
        } else if ("rtmp".equals(scheme)) {
            this.k = e();
        } else if ("udp".equals(scheme)) {
            if (this.h == null) {
                UdpDataSource udpDataSource = new UdpDataSource();
                this.h = udpDataSource;
                a(udpDataSource);
            }
            this.k = this.h;
        } else if ("data".equals(scheme)) {
            if (this.i == null) {
                f fVar = new f();
                this.i = fVar;
                a(fVar);
            }
            this.k = this.i;
        } else if ("rawresource".equals(scheme) || "android.resource".equals(scheme)) {
            if (this.j == null) {
                RawResourceDataSource rawResourceDataSource = new RawResourceDataSource(this.f22227a);
                this.j = rawResourceDataSource;
                a(rawResourceDataSource);
            }
            this.k = this.j;
        } else {
            this.k = this.f22229c;
        }
        return this.k.a(jVar);
    }

    @Override // com.google.android.exoplayer2.upstream.h
    public final Uri a() {
        h hVar = this.k;
        if (hVar == null) {
            return null;
        }
        return hVar.a();
    }

    @Override // com.google.android.exoplayer2.upstream.h
    public final void a(v vVar) {
        a.b(vVar);
        this.f22229c.a(vVar);
        this.f22228b.add(vVar);
        a(this.f22230d, vVar);
        a(this.e, vVar);
        a(this.f, vVar);
        a(this.g, vVar);
        a(this.h, vVar);
        a(this.i, vVar);
        a(this.j, vVar);
    }

    @Override // com.google.android.exoplayer2.upstream.h
    public final Map<String, List<String>> b() {
        h hVar = this.k;
        return hVar == null ? Collections.emptyMap() : hVar.b();
    }

    @Override // com.google.android.exoplayer2.upstream.h
    public final void c() throws IOException {
        h hVar = this.k;
        if (hVar != null) {
            try {
                hVar.c();
            } finally {
                this.k = null;
            }
        }
    }
}
