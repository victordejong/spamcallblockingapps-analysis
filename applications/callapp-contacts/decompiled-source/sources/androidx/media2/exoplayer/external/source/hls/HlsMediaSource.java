package androidx.media2.exoplayer.external.source.hls;

import android.net.Uri;
import androidx.media2.exoplayer.external.drm.k;
import androidx.media2.exoplayer.external.offline.StreamKey;
import androidx.media2.exoplayer.external.source.ad;
import androidx.media2.exoplayer.external.source.ak;
import androidx.media2.exoplayer.external.source.b;
import androidx.media2.exoplayer.external.source.g;
import androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistTracker;
import androidx.media2.exoplayer.external.source.hls.playlist.d;
import androidx.media2.exoplayer.external.source.hls.playlist.i;
import androidx.media2.exoplayer.external.source.j;
import androidx.media2.exoplayer.external.source.s;
import androidx.media2.exoplayer.external.source.t;
import androidx.media2.exoplayer.external.upstream.f;
import androidx.media2.exoplayer.external.upstream.q;
import androidx.media2.exoplayer.external.upstream.t;
import androidx.media2.exoplayer.external.upstream.w;
import androidx.media2.exoplayer.external.util.a;
import java.io.IOException;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/HlsMediaSource.class */
public final class HlsMediaSource extends b implements HlsPlaylistTracker.c {

    /* renamed from: a  reason: collision with root package name */
    private final f f3631a;

    /* renamed from: b  reason: collision with root package name */
    private final Uri f3632b;

    /* renamed from: c  reason: collision with root package name */
    private final e f3633c;

    /* renamed from: d  reason: collision with root package name */
    private final g f3634d;
    private final k<?> e;
    private final t f;
    private final boolean g;
    private final boolean h;
    private final HlsPlaylistTracker i;
    private final Object j;
    private w k;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory.class */
    public static final class Factory implements ad {

        /* renamed from: a  reason: collision with root package name */
        public boolean f3635a;

        /* renamed from: b  reason: collision with root package name */
        public Object f3636b;

        /* renamed from: c  reason: collision with root package name */
        private final e f3637c;

        /* renamed from: d  reason: collision with root package name */
        private f f3638d;
        private i e;
        private List<StreamKey> f;
        private HlsPlaylistTracker.a g;
        private g h;
        private k<?> i;
        private t j;
        private boolean k;
        private boolean l;

        public Factory(e eVar) {
            this.f3637c = (e) a.a(eVar);
            this.e = new androidx.media2.exoplayer.external.source.hls.playlist.a();
            this.g = androidx.media2.exoplayer.external.source.hls.playlist.b.f3683a;
            this.f3638d = f.f3656a;
            this.i = k.e;
            this.j = new q();
            this.h = new androidx.media2.exoplayer.external.source.k();
        }

        public Factory(f.a aVar) {
            this(new b(aVar));
        }

        /* renamed from: a */
        public final HlsMediaSource b(Uri uri) {
            this.f3635a = true;
            List<StreamKey> list = this.f;
            if (list != null) {
                this.e = new d(this.e, list);
            }
            e eVar = this.f3637c;
            f fVar = this.f3638d;
            g gVar = this.h;
            k<?> kVar = this.i;
            t tVar = this.j;
            return new HlsMediaSource(uri, eVar, fVar, gVar, kVar, tVar, this.g.a(eVar, tVar, this.e), this.k, this.l, this.f3636b);
        }
    }

    static {
        androidx.media2.exoplayer.external.w.a("goog.exo.hls");
    }

    private HlsMediaSource(Uri uri, e eVar, f fVar, g gVar, k<?> kVar, t tVar, HlsPlaylistTracker hlsPlaylistTracker, boolean z, boolean z2, Object obj) {
        this.f3632b = uri;
        this.f3633c = eVar;
        this.f3631a = fVar;
        this.f3634d = gVar;
        this.e = kVar;
        this.f = tVar;
        this.i = hlsPlaylistTracker;
        this.g = z;
        this.h = z2;
        this.j = obj;
    }

    @Override // androidx.media2.exoplayer.external.source.t
    public final s a(t.a aVar, androidx.media2.exoplayer.external.upstream.b bVar, long j) {
        return new i(this.f3631a, this.i, this.f3633c, this.k, this.e, this.f, a(aVar), bVar, this.f3634d, this.g, this.h);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r21v0, types: [long] */
    /* JADX WARN: Type inference failed for: r21v1 */
    /* JADX WARN: Type inference failed for: r21v3 */
    /* JADX WARN: Type inference failed for: r23v0, types: [long] */
    /* JADX WARN: Type inference failed for: r23v1 */
    /* JADX WARN: Type inference failed for: r23v2 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistTracker.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(androidx.media2.exoplayer.external.source.hls.playlist.f r20) {
        /*
            Method dump skipped, instructions count: 279
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.source.hls.HlsMediaSource.a(androidx.media2.exoplayer.external.source.hls.playlist.f):void");
    }

    @Override // androidx.media2.exoplayer.external.source.t
    public final void a(s sVar) {
        k[] kVarArr;
        i iVar = (i) sVar;
        iVar.f3662a.b(iVar);
        for (k kVar : iVar.f3665d) {
            if (kVar.m) {
                for (ak akVar : kVar.i) {
                    akVar.c();
                }
                for (j jVar : kVar.j) {
                    jVar.a();
                }
            }
            kVar.f3671c.a(kVar);
            kVar.g.removeCallbacksAndMessages(null);
            kVar.q = true;
            kVar.h.clear();
        }
        iVar.f3664c = null;
        iVar.f3663b.b();
    }

    @Override // androidx.media2.exoplayer.external.source.b
    public final void a(w wVar) {
        this.k = wVar;
        this.i.a(this.f3632b, a((t.a) null), this);
    }

    @Override // androidx.media2.exoplayer.external.source.b
    public final void c() {
        this.i.a();
    }

    @Override // androidx.media2.exoplayer.external.source.b, androidx.media2.exoplayer.external.source.t
    public final Object e() {
        return this.j;
    }

    @Override // androidx.media2.exoplayer.external.source.t
    public final void f() throws IOException {
        this.i.d();
    }
}
