package androidx.media2.exoplayer.external.source.hls.playlist;

import android.net.Uri;
import android.os.Handler;
import android.os.SystemClock;
import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.c;
import androidx.media2.exoplayer.external.source.hls.e;
import androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistTracker;
import androidx.media2.exoplayer.external.source.hls.playlist.e;
import androidx.media2.exoplayer.external.source.hls.playlist.f;
import androidx.media2.exoplayer.external.source.u;
import androidx.media2.exoplayer.external.upstream.Loader;
import androidx.media2.exoplayer.external.upstream.t;
import androidx.media2.exoplayer.external.upstream.u;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/playlist/b.class */
public final class b implements HlsPlaylistTracker, Loader.a<u<g>> {

    /* renamed from: a  reason: collision with root package name */
    public static final HlsPlaylistTracker.a f3683a = c.f3691a;

    /* renamed from: b  reason: collision with root package name */
    private final e f3684b;

    /* renamed from: c  reason: collision with root package name */
    private final i f3685c;

    /* renamed from: d  reason: collision with root package name */
    private final t f3686d;
    private final HashMap<Uri, a> e;
    private final List<HlsPlaylistTracker.b> f;
    private final double g;
    private u.a<g> h;
    private u.a i;
    private Loader j;
    private Handler k;
    private HlsPlaylistTracker.c l;
    private e m;
    private Uri n;
    private f o;
    private boolean p;
    private long q;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/playlist/b$a.class */
    public final class a implements Loader.a<androidx.media2.exoplayer.external.upstream.u<g>>, Runnable {

        /* renamed from: a  reason: collision with root package name */
        final Loader f3687a = new Loader("DefaultHlsPlaylistTracker:MediaPlaylist");

        /* renamed from: b  reason: collision with root package name */
        f f3688b;

        /* renamed from: c  reason: collision with root package name */
        long f3689c;
        private final Uri e;
        private final androidx.media2.exoplayer.external.upstream.u<g> f;
        private long g;
        private long h;
        private long i;
        private boolean j;
        private IOException k;

        public a(Uri uri) {
            this.e = uri;
            this.f = new androidx.media2.exoplayer.external.upstream.u<>(b.this.f3684b.a(), uri, 4, b.this.h);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(f fVar) {
            f fVar2 = this.f3688b;
            long elapsedRealtime = SystemClock.elapsedRealtime();
            this.f3689c = elapsedRealtime;
            f a2 = b.a(b.this, fVar2, fVar);
            this.f3688b = a2;
            if (a2 != fVar2) {
                this.k = null;
                this.g = elapsedRealtime;
                b.a(b.this, this.e, a2);
            } else if (!a2.i) {
                if (fVar.f + fVar.l.size() < this.f3688b.f) {
                    this.k = new HlsPlaylistTracker.PlaylistResetException(this.e);
                    b.a(b.this, this.e, -9223372036854775807L);
                } else if (elapsedRealtime - this.g > c.a(this.f3688b.h) * b.this.g) {
                    this.k = new HlsPlaylistTracker.PlaylistStuckException(this.e);
                    long a3 = b.this.f3686d.a(this.k);
                    b.a(b.this, this.e, a3);
                    if (a3 != -9223372036854775807L) {
                        a(a3);
                    }
                }
            }
            f fVar3 = this.f3688b;
            this.h = elapsedRealtime + c.a(fVar3 != fVar2 ? fVar3.h : fVar3.h / 2);
            if (this.e.equals(b.this.n) && !this.f3688b.i) {
                a();
            }
        }

        private boolean a(long j) {
            this.i = SystemClock.elapsedRealtime() + j;
            return this.e.equals(b.this.n) && !b.h(b.this);
        }

        private void c() {
            b.this.i.a(this.f.f4104a, this.f.f4105b, this.f3687a.a(this.f, this, b.this.f3686d.a(this.f.f4105b)));
        }

        @Override // androidx.media2.exoplayer.external.upstream.Loader.a
        public final /* synthetic */ Loader.b a(androidx.media2.exoplayer.external.upstream.u<g> uVar, long j, long j2, IOException iOException, int i) {
            Loader.b bVar;
            androidx.media2.exoplayer.external.upstream.u<g> uVar2 = uVar;
            long a2 = b.this.f3686d.a(iOException);
            boolean z = a2 != -9223372036854775807L;
            boolean z2 = b.a(b.this, this.e, a2) || !z;
            boolean z3 = z2;
            if (z) {
                z3 = z2 | a(a2);
            }
            if (z3) {
                long a3 = b.this.f3686d.a(iOException, i);
                bVar = a3 != -9223372036854775807L ? Loader.a(false, a3) : Loader.f4034d;
            } else {
                bVar = Loader.f4033c;
            }
            b.this.i.a(uVar2.f4104a, uVar2.f4106c.f4109b, uVar2.f4106c.f4110c, 4, j, j2, uVar2.f4106c.f4108a, iOException, !bVar.a());
            return bVar;
        }

        public final void a() {
            this.i = 0L;
            if (!this.j && !this.f3687a.a()) {
                long elapsedRealtime = SystemClock.elapsedRealtime();
                if (elapsedRealtime < this.h) {
                    this.j = true;
                    b.this.k.postDelayed(this, this.h - elapsedRealtime);
                    return;
                }
                c();
            }
        }

        @Override // androidx.media2.exoplayer.external.upstream.Loader.a
        public final /* synthetic */ void a(androidx.media2.exoplayer.external.upstream.u<g> uVar, long j, long j2) {
            androidx.media2.exoplayer.external.upstream.u<g> uVar2 = uVar;
            g gVar = uVar2.f4107d;
            if (gVar instanceof f) {
                a((f) gVar);
                b.this.i.a(uVar2.f4104a, uVar2.f4106c.f4109b, uVar2.f4106c.f4110c, j, j2, uVar2.f4106c.f4108a);
                return;
            }
            this.k = new ParserException("Loaded playlist has unexpected type.");
        }

        @Override // androidx.media2.exoplayer.external.upstream.Loader.a
        public final /* synthetic */ void a(androidx.media2.exoplayer.external.upstream.u<g> uVar, long j, long j2, boolean z) {
            androidx.media2.exoplayer.external.upstream.u<g> uVar2 = uVar;
            b.this.i.b(uVar2.f4104a, uVar2.f4106c.f4109b, uVar2.f4106c.f4110c, j, j2, uVar2.f4106c.f4108a);
        }

        public final void b() throws IOException {
            this.f3687a.a(BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
            IOException iOException = this.k;
            if (iOException != null) {
                throw iOException;
            }
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.j = false;
            c();
        }
    }

    public b(e eVar, t tVar, i iVar) {
        this(eVar, tVar, iVar, 3.5d);
    }

    public b(e eVar, t tVar, i iVar, double d2) {
        this.f3684b = eVar;
        this.f3685c = iVar;
        this.f3686d = tVar;
        this.g = d2;
        this.f = new ArrayList();
        this.e = new HashMap<>();
        this.q = -9223372036854775807L;
    }

    private static f.a a(f fVar, f fVar2) {
        int i = (int) (fVar2.f - fVar.f);
        List<f.a> list = fVar.l;
        if (i < list.size()) {
            return list.get(i);
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r29v0, types: [long] */
    /* JADX WARN: Type inference failed for: r29v1 */
    /* JADX WARN: Type inference failed for: r29v2 */
    /* JADX WARN: Type inference failed for: r29v6 */
    /* JADX WARN: Type inference failed for: r29v7 */
    /* JADX WARN: Type inference failed for: r29v8 */
    /* JADX WARN: Type inference failed for: r32v0 */
    /* JADX WARN: Type inference failed for: r32v1 */
    /* JADX WARN: Type inference failed for: r32v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static /* synthetic */ androidx.media2.exoplayer.external.source.hls.playlist.f a(androidx.media2.exoplayer.external.source.hls.playlist.b r22, androidx.media2.exoplayer.external.source.hls.playlist.f r23, androidx.media2.exoplayer.external.source.hls.playlist.f r24) {
        /*
            Method dump skipped, instructions count: 451
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.source.hls.playlist.b.a(androidx.media2.exoplayer.external.source.hls.playlist.b, androidx.media2.exoplayer.external.source.hls.playlist.f, androidx.media2.exoplayer.external.source.hls.playlist.f):androidx.media2.exoplayer.external.source.hls.playlist.f");
    }

    static /* synthetic */ void a(b bVar, Uri uri, f fVar) {
        if (uri.equals(bVar.n)) {
            if (bVar.o == null) {
                bVar.p = !fVar.i;
                bVar.q = fVar.f3708c;
            }
            bVar.o = fVar;
            bVar.l.a(fVar);
        }
        int size = bVar.f.size();
        for (int i = 0; i < size; i++) {
            bVar.f.get(i).g();
        }
    }

    static /* synthetic */ boolean a(b bVar, Uri uri, long j) {
        int size = bVar.f.size();
        boolean z = false;
        for (int i = 0; i < size; i++) {
            z |= !bVar.f.get(i).a(uri, j);
        }
        return z;
    }

    static /* synthetic */ boolean h(b bVar) {
        List<e.b> list = bVar.m.f3696c;
        int size = list.size();
        long elapsedRealtime = SystemClock.elapsedRealtime();
        for (int i = 0; i < size; i++) {
            a aVar = bVar.e.get(list.get(i).f3702a);
            if (elapsedRealtime > aVar.i) {
                bVar.n = aVar.e;
                aVar.a();
                return true;
            }
        }
        return false;
    }

    @Override // androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistTracker
    public final f a(Uri uri, boolean z) {
        f fVar;
        f fVar2 = this.e.get(uri).f3688b;
        if (fVar2 != null && z && !uri.equals(this.n)) {
            List<e.b> list = this.m.f3696c;
            boolean z2 = false;
            int i = 0;
            while (true) {
                if (i >= list.size()) {
                    break;
                } else if (uri.equals(list.get(i).f3702a)) {
                    z2 = true;
                    break;
                } else {
                    i++;
                }
            }
            if (z2 && ((fVar = this.o) == null || !fVar.i)) {
                this.n = uri;
                this.e.get(uri).a();
            }
        }
        return fVar2;
    }

    @Override // androidx.media2.exoplayer.external.upstream.Loader.a
    public final /* bridge */ /* synthetic */ Loader.b a(androidx.media2.exoplayer.external.upstream.u<g> uVar, long j, long j2, IOException iOException, int i) {
        androidx.media2.exoplayer.external.upstream.u<g> uVar2 = uVar;
        long a2 = this.f3686d.a(iOException, i);
        boolean z = a2 == -9223372036854775807L;
        this.i.a(uVar2.f4104a, uVar2.f4106c.f4109b, uVar2.f4106c.f4110c, 4, j, j2, uVar2.f4106c.f4108a, iOException, z);
        return z ? Loader.f4034d : Loader.a(false, a2);
    }

    @Override // androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistTracker
    public final void a() {
        this.n = null;
        this.o = null;
        this.m = null;
        this.q = -9223372036854775807L;
        this.j.a((Loader.e) null);
        this.j = null;
        for (a aVar : this.e.values()) {
            aVar.f3687a.a((Loader.e) null);
        }
        this.k.removeCallbacksAndMessages(null);
        this.k = null;
        this.e.clear();
    }

    @Override // androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistTracker
    public final void a(Uri uri, u.a aVar, HlsPlaylistTracker.c cVar) {
        this.k = new Handler();
        this.i = aVar;
        this.l = cVar;
        androidx.media2.exoplayer.external.upstream.u uVar = new androidx.media2.exoplayer.external.upstream.u(this.f3684b.a(), uri, 4, this.f3685c.a());
        androidx.media2.exoplayer.external.util.a.b(this.j == null);
        Loader loader = new Loader("DefaultHlsPlaylistTracker:MasterPlaylist");
        this.j = loader;
        aVar.a(uVar.f4104a, uVar.f4105b, loader.a(uVar, this, this.f3686d.a(uVar.f4105b)));
    }

    @Override // androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistTracker
    public final void a(HlsPlaylistTracker.b bVar) {
        this.f.add(bVar);
    }

    @Override // androidx.media2.exoplayer.external.upstream.Loader.a
    public final /* synthetic */ void a(androidx.media2.exoplayer.external.upstream.u<g> uVar, long j, long j2) {
        androidx.media2.exoplayer.external.upstream.u<g> uVar2 = uVar;
        g gVar = uVar2.f4107d;
        boolean z = gVar instanceof f;
        e a2 = z ? e.a(gVar.n) : (e) gVar;
        this.m = a2;
        this.h = this.f3685c.a(a2);
        this.n = a2.f3696c.get(0).f3702a;
        List<Uri> list = a2.f3695b;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Uri uri = list.get(i);
            this.e.put(uri, new a(uri));
        }
        a aVar = this.e.get(this.n);
        if (z) {
            aVar.a((f) gVar);
        } else {
            aVar.a();
        }
        this.i.a(uVar2.f4104a, uVar2.f4106c.f4109b, uVar2.f4106c.f4110c, j, j2, uVar2.f4106c.f4108a);
    }

    @Override // androidx.media2.exoplayer.external.upstream.Loader.a
    public final /* synthetic */ void a(androidx.media2.exoplayer.external.upstream.u<g> uVar, long j, long j2, boolean z) {
        androidx.media2.exoplayer.external.upstream.u<g> uVar2 = uVar;
        this.i.b(uVar2.f4104a, uVar2.f4106c.f4109b, uVar2.f4106c.f4110c, j, j2, uVar2.f4106c.f4108a);
    }

    @Override // androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistTracker
    public final boolean a(Uri uri) {
        a aVar = this.e.get(uri);
        if (aVar.f3688b == null) {
            return false;
        }
        return aVar.f3688b.i || aVar.f3688b.f3706a == 2 || aVar.f3688b.f3706a == 1 || aVar.f3689c + Math.max(30000L, c.a(aVar.f3688b.m)) > SystemClock.elapsedRealtime();
    }

    @Override // androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistTracker
    public final e b() {
        return this.m;
    }

    @Override // androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistTracker
    public final void b(Uri uri) throws IOException {
        this.e.get(uri).b();
    }

    @Override // androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistTracker
    public final void b(HlsPlaylistTracker.b bVar) {
        this.f.remove(bVar);
    }

    @Override // androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistTracker
    public final long c() {
        return this.q;
    }

    @Override // androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistTracker
    public final void c(Uri uri) {
        this.e.get(uri).a();
    }

    @Override // androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistTracker
    public final void d() throws IOException {
        Loader loader = this.j;
        if (loader != null) {
            loader.a(BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
        }
        Uri uri = this.n;
        if (uri != null) {
            b(uri);
        }
    }

    @Override // androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistTracker
    public final boolean e() {
        return this.p;
    }
}
