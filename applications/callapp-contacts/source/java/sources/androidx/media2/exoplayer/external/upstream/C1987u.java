package androidx.media2.exoplayer.external.upstream;

import android.net.Uri;
import androidx.media2.exoplayer.external.upstream.Loader;
import androidx.media2.exoplayer.external.util.C1993a;
import androidx.media2.exoplayer.external.util.C1996ac;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: androidx.media2.exoplayer.external.upstream.u */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/u.class */
public final class C1987u<T> implements Loader.AbstractC1959d {

    /* renamed from: a */
    public final C1971h f8042a;

    /* renamed from: b */
    public final int f8043b;

    /* renamed from: c */
    public final C1989v f8044c;

    /* renamed from: d */
    public volatile T f8045d;

    /* renamed from: e */
    private final AbstractC1988a<? extends T> f8046e;

    /* renamed from: androidx.media2.exoplayer.external.upstream.u$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/u$a.class */
    public interface AbstractC1988a<T> {
        /* renamed from: a */
        T mo41698a(Uri uri, InputStream inputStream) throws IOException;
    }

    public C1987u(AbstractC1968f abstractC1968f, Uri uri, int i, AbstractC1988a<? extends T> abstractC1988a) {
        this(abstractC1968f, new C1971h(uri, 1), i, abstractC1988a);
    }

    public C1987u(AbstractC1968f abstractC1968f, C1971h c1971h, int i, AbstractC1988a<? extends T> abstractC1988a) {
        this.f8044c = new C1989v(abstractC1968f);
        this.f8042a = c1971h;
        this.f8043b = i;
        this.f8046e = abstractC1988a;
    }

    @Override // androidx.media2.exoplayer.external.upstream.Loader.AbstractC1959d
    /* renamed from: a */
    public final void mo41700a() {
    }

    @Override // androidx.media2.exoplayer.external.upstream.Loader.AbstractC1959d
    /* renamed from: b */
    public final void mo41699b() throws IOException {
        this.f8044c.f8047a = 0L;
        C1970g c1970g = new C1970g(this.f8044c, this.f8042a);
        try {
            c1970g.m41739a();
            this.f8045d = this.f8046e.mo41698a((Uri) C1993a.m41690a(this.f8044c.mo41200a()), c1970g);
        } finally {
            C1996ac.m41660a((Closeable) c1970g);
        }
    }
}
