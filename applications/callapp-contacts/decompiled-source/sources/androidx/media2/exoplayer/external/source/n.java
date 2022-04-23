package androidx.media2.exoplayer.external.source;

import android.net.Uri;
import android.os.Handler;
import androidx.media2.exoplayer.external.al;
import androidx.media2.exoplayer.external.drm.k;
import androidx.media2.exoplayer.external.extractor.e;
import androidx.media2.exoplayer.external.extractor.j;
import androidx.media2.exoplayer.external.source.t;
import androidx.media2.exoplayer.external.source.u;
import androidx.media2.exoplayer.external.upstream.f;
import androidx.media2.exoplayer.external.upstream.q;
import androidx.media2.exoplayer.external.upstream.w;
import java.io.IOException;
@Deprecated
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/n.class */
public final class n extends d<Void> {

    /* renamed from: a  reason: collision with root package name */
    private final ai f3726a;

    @Deprecated
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/n$a.class */
    public interface a {
    }

    @Deprecated
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/n$b.class */
    static final class b extends l {

        /* renamed from: a  reason: collision with root package name */
        private final a f3727a;

        public b(a aVar) {
            this.f3727a = (a) androidx.media2.exoplayer.external.util.a.a(aVar);
        }

        @Override // androidx.media2.exoplayer.external.source.l, androidx.media2.exoplayer.external.source.u
        public final void a(int i, t.a aVar, u.b bVar, u.c cVar, IOException iOException, boolean z) {
        }
    }

    @Deprecated
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/n$c.class */
    public static final class c implements ad {

        /* renamed from: a  reason: collision with root package name */
        private final f.a f3728a;

        /* renamed from: b  reason: collision with root package name */
        private j f3729b;

        /* renamed from: c  reason: collision with root package name */
        private String f3730c;

        /* renamed from: d  reason: collision with root package name */
        private Object f3731d;
        private androidx.media2.exoplayer.external.upstream.t e = new q();
        private int f = 1048576;
        private boolean g;

        public c(f.a aVar) {
            this.f3728a = aVar;
        }

        public final c a(j jVar) {
            androidx.media2.exoplayer.external.util.a.b(!this.g);
            this.f3729b = jVar;
            return this;
        }

        public final c a(Object obj) {
            androidx.media2.exoplayer.external.util.a.b(!this.g);
            this.f3731d = obj;
            return this;
        }

        /* renamed from: a */
        public final n b(Uri uri) {
            this.g = true;
            if (this.f3729b == null) {
                this.f3729b = new e();
            }
            return new n(uri, this.f3728a, this.f3729b, this.e, this.f3730c, this.f, this.f3731d);
        }
    }

    @Deprecated
    public n(Uri uri, f.a aVar, j jVar, Handler handler, a aVar2) {
        this(uri, aVar, jVar, handler, aVar2, null);
    }

    @Deprecated
    public n(Uri uri, f.a aVar, j jVar, Handler handler, a aVar2, String str) {
        this(uri, aVar, jVar, handler, aVar2, str, 1048576);
    }

    @Deprecated
    public n(Uri uri, f.a aVar, j jVar, Handler handler, a aVar2, String str, int i) {
        this(uri, aVar, jVar, new q(), str, i, (Object) null);
        if (aVar2 != null && handler != null) {
            a(handler, new b(aVar2));
        }
    }

    private n(Uri uri, f.a aVar, j jVar, androidx.media2.exoplayer.external.upstream.t tVar, String str, int i, Object obj) {
        this.f3726a = new ai(uri, aVar, jVar, k.e, tVar, str, i, obj);
    }

    @Override // androidx.media2.exoplayer.external.source.t
    public final s a(t.a aVar, androidx.media2.exoplayer.external.upstream.b bVar, long j) {
        return this.f3726a.a(aVar, bVar, j);
    }

    @Override // androidx.media2.exoplayer.external.source.t
    public final void a(s sVar) {
        this.f3726a.a(sVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.media2.exoplayer.external.source.d, androidx.media2.exoplayer.external.source.b
    public final void a(w wVar) {
        super.a(wVar);
        a((n) null, this.f3726a);
    }

    @Override // androidx.media2.exoplayer.external.source.d
    protected final /* bridge */ /* synthetic */ void a(Void r4, t tVar, al alVar) {
        a(alVar);
    }

    @Override // androidx.media2.exoplayer.external.source.b, androidx.media2.exoplayer.external.source.t
    public final Object e() {
        return this.f3726a.f3563a;
    }
}
