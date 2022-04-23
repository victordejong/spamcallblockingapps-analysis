package androidx.media2.exoplayer.external.upstream;

import android.net.Uri;
import androidx.media2.exoplayer.external.upstream.Loader;
import androidx.media2.exoplayer.external.util.ac;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/u.class */
public final class u<T> implements Loader.d {

    /* renamed from: a  reason: collision with root package name */
    public final h f4104a;

    /* renamed from: b  reason: collision with root package name */
    public final int f4105b;

    /* renamed from: c  reason: collision with root package name */
    public final v f4106c;

    /* renamed from: d  reason: collision with root package name */
    public volatile T f4107d;
    private final a<? extends T> e;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/u$a.class */
    public interface a<T> {
        T a(Uri uri, InputStream inputStream) throws IOException;
    }

    public u(f fVar, Uri uri, int i, a<? extends T> aVar) {
        this(fVar, new h(uri, 1), i, aVar);
    }

    public u(f fVar, h hVar, int i, a<? extends T> aVar) {
        this.f4106c = new v(fVar);
        this.f4104a = hVar;
        this.f4105b = i;
        this.e = aVar;
    }

    @Override // androidx.media2.exoplayer.external.upstream.Loader.d
    public final void a() {
    }

    @Override // androidx.media2.exoplayer.external.upstream.Loader.d
    public final void b() throws IOException {
        this.f4106c.f4108a = 0L;
        g gVar = new g(this.f4106c, this.f4104a);
        try {
            gVar.a();
            this.f4107d = (T) this.e.a((Uri) androidx.media2.exoplayer.external.util.a.a(this.f4106c.a()), gVar);
        } finally {
            ac.a((Closeable) gVar);
        }
    }
}
