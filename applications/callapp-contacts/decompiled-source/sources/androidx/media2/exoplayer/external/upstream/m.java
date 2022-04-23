package androidx.media2.exoplayer.external.upstream;

import android.content.Context;
import android.net.Uri;
import androidx.media2.exoplayer.external.util.a;
import androidx.media2.exoplayer.external.util.ac;
import androidx.media2.exoplayer.external.util.j;
import com.mopub.common.Constants;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/m.class */
public final class m implements f {

    /* renamed from: a  reason: collision with root package name */
    private final Context f4088a;

    /* renamed from: b  reason: collision with root package name */
    private final List<w> f4089b;

    /* renamed from: c  reason: collision with root package name */
    private final f f4090c;

    /* renamed from: d  reason: collision with root package name */
    private f f4091d;
    private f e;
    private f f;
    private f g;
    private f h;
    private f i;
    private f j;
    private f k;

    public m(Context context, f fVar) {
        this.f4088a = context.getApplicationContext();
        this.f4090c = (f) a.a(fVar);
        this.f4089b = new ArrayList();
    }

    public m(Context context, String str, int i, int i2, boolean z) {
        this(context, new o(str, null, i, i2, z, null));
    }

    public m(Context context, String str, boolean z) {
        this(context, str, 8000, 8000, z);
    }

    private void a(f fVar) {
        for (int i = 0; i < this.f4089b.size(); i++) {
            fVar.a(this.f4089b.get(i));
        }
    }

    private static void a(f fVar, w wVar) {
        if (fVar != null) {
            fVar.a(wVar);
        }
    }

    private f d() {
        if (this.e == null) {
            AssetDataSource assetDataSource = new AssetDataSource(this.f4088a);
            this.e = assetDataSource;
            a(assetDataSource);
        }
        return this.e;
    }

    private f e() {
        if (this.g == null) {
            try {
                f fVar = (f) Class.forName("androidx.media2.exoplayer.external.ext.rtmp.RtmpDataSource").getConstructor(new Class[0]).newInstance(new Object[0]);
                this.g = fVar;
                a(fVar);
            } catch (ClassNotFoundException e) {
                j.a("DefaultDataSource", "Attempting to play RTMP stream without depending on the RTMP extension");
            } catch (Exception e2) {
                throw new RuntimeException("Error instantiating RTMP extension", e2);
            }
            if (this.g == null) {
                this.g = this.f4090c;
            }
        }
        return this.g;
    }

    @Override // androidx.media2.exoplayer.external.upstream.f
    public final int a(byte[] bArr, int i, int i2) throws IOException {
        return ((f) a.a(this.k)).a(bArr, i, i2);
    }

    @Override // androidx.media2.exoplayer.external.upstream.f
    public final long a(h hVar) throws IOException {
        a.b(this.k == null);
        String scheme = hVar.f4064a.getScheme();
        if (ac.a(hVar.f4064a)) {
            String path = hVar.f4064a.getPath();
            if (path == null || !path.startsWith("/android_asset/")) {
                if (this.f4091d == null) {
                    FileDataSource fileDataSource = new FileDataSource();
                    this.f4091d = fileDataSource;
                    a(fileDataSource);
                }
                this.k = this.f4091d;
            } else {
                this.k = d();
            }
        } else if ("asset".equals(scheme)) {
            this.k = d();
        } else if (Constants.VAST_TRACKER_CONTENT.equals(scheme)) {
            if (this.f == null) {
                ContentDataSource contentDataSource = new ContentDataSource(this.f4088a);
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
                e eVar = new e();
                this.i = eVar;
                a(eVar);
            }
            this.k = this.i;
        } else if ("rawresource".equals(scheme)) {
            if (this.j == null) {
                RawResourceDataSource rawResourceDataSource = new RawResourceDataSource(this.f4088a);
                this.j = rawResourceDataSource;
                a(rawResourceDataSource);
            }
            this.k = this.j;
        } else {
            this.k = this.f4090c;
        }
        return this.k.a(hVar);
    }

    @Override // androidx.media2.exoplayer.external.upstream.f
    public final Uri a() {
        f fVar = this.k;
        if (fVar == null) {
            return null;
        }
        return fVar.a();
    }

    @Override // androidx.media2.exoplayer.external.upstream.f
    public final void a(w wVar) {
        this.f4090c.a(wVar);
        this.f4089b.add(wVar);
        a(this.f4091d, wVar);
        a(this.e, wVar);
        a(this.f, wVar);
        a(this.g, wVar);
        a(this.h, wVar);
        a(this.i, wVar);
        a(this.j, wVar);
    }

    @Override // androidx.media2.exoplayer.external.upstream.f
    public final Map<String, List<String>> b() {
        f fVar = this.k;
        return fVar == null ? Collections.emptyMap() : fVar.b();
    }

    @Override // androidx.media2.exoplayer.external.upstream.f
    public final void c() throws IOException {
        f fVar = this.k;
        if (fVar != null) {
            try {
                fVar.c();
            } finally {
                this.k = null;
            }
        }
    }
}
