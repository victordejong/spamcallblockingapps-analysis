package androidx.media2.exoplayer.external.upstream;

import android.net.Uri;
import androidx.media2.exoplayer.external.util.a;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/v.class */
public final class v implements f {

    /* renamed from: a  reason: collision with root package name */
    public long f4108a;

    /* renamed from: b  reason: collision with root package name */
    public Uri f4109b = Uri.EMPTY;

    /* renamed from: c  reason: collision with root package name */
    public Map<String, List<String>> f4110c = Collections.emptyMap();

    /* renamed from: d  reason: collision with root package name */
    private final f f4111d;

    public v(f fVar) {
        this.f4111d = (f) a.a(fVar);
    }

    @Override // androidx.media2.exoplayer.external.upstream.f
    public final int a(byte[] bArr, int i, int i2) throws IOException {
        int a2 = this.f4111d.a(bArr, i, i2);
        if (a2 != -1) {
            this.f4108a += a2;
        }
        return a2;
    }

    @Override // androidx.media2.exoplayer.external.upstream.f
    public final long a(h hVar) throws IOException {
        this.f4109b = hVar.f4064a;
        this.f4110c = Collections.emptyMap();
        long a2 = this.f4111d.a(hVar);
        this.f4109b = (Uri) a.a(a());
        this.f4110c = b();
        return a2;
    }

    @Override // androidx.media2.exoplayer.external.upstream.f
    public final Uri a() {
        return this.f4111d.a();
    }

    @Override // androidx.media2.exoplayer.external.upstream.f
    public final void a(w wVar) {
        this.f4111d.a(wVar);
    }

    @Override // androidx.media2.exoplayer.external.upstream.f
    public final Map<String, List<String>> b() {
        return this.f4111d.b();
    }

    @Override // androidx.media2.exoplayer.external.upstream.f
    public final void c() throws IOException {
        this.f4111d.c();
    }
}
