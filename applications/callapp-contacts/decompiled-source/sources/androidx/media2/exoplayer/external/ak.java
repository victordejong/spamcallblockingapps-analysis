package androidx.media2.exoplayer.external;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.os.Handler;
import android.os.Looper;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.TextureView;
import androidx.media2.exoplayer.external.ae;
import androidx.media2.exoplayer.external.al;
import androidx.media2.exoplayer.external.audio.c;
import androidx.media2.exoplayer.external.audio.e;
import androidx.media2.exoplayer.external.drm.DefaultDrmSessionManager;
import androidx.media2.exoplayer.external.drm.k;
import androidx.media2.exoplayer.external.drm.o;
import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.metadata.d;
import androidx.media2.exoplayer.external.source.t;
import androidx.media2.exoplayer.external.text.i;
import androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector;
import androidx.media2.exoplayer.external.upstream.j;
import androidx.media2.exoplayer.external.util.PriorityTaskManager;
import androidx.media2.exoplayer.external.util.ac;
import androidx.media2.exoplayer.external.video.f;
import androidx.media2.exoplayer.external.video.g;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/ak.class */
public final class ak extends androidx.media2.exoplayer.external.a implements g {
    private boolean A;
    private int B;
    private SurfaceHolder C;
    private TextureView D;
    private int E;
    private int F;
    private boolean G;

    /* renamed from: b  reason: collision with root package name */
    protected final ag[] f2821b;

    /* renamed from: c  reason: collision with root package name */
    public final h f2822c;

    /* renamed from: d  reason: collision with root package name */
    public final Handler f2823d;
    final CopyOnWriteArraySet<f> e;
    final CopyOnWriteArraySet<androidx.media2.exoplayer.external.audio.f> f;
    final CopyOnWriteArraySet<i> g;
    final CopyOnWriteArraySet<d> h;
    final CopyOnWriteArraySet<g> i;
    final CopyOnWriteArraySet<androidx.media2.exoplayer.external.audio.g> j;
    public final androidx.media2.exoplayer.external.a.a k;
    public final e l;
    Format m;
    Format n;
    Surface o;
    androidx.media2.exoplayer.external.b.d p;
    androidx.media2.exoplayer.external.b.d q;
    int r;
    public c s;
    public float t;
    public t u;
    List<androidx.media2.exoplayer.external.text.a> v;
    PriorityTaskManager w;
    boolean x;
    private final b y;
    private final androidx.media2.exoplayer.external.upstream.c z;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/ak$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final Context f2824a;

        /* renamed from: b  reason: collision with root package name */
        private final ai f2825b;

        /* renamed from: c  reason: collision with root package name */
        private androidx.media2.exoplayer.external.util.b f2826c;

        /* renamed from: d  reason: collision with root package name */
        private androidx.media2.exoplayer.external.trackselection.g f2827d;
        private y e;
        private androidx.media2.exoplayer.external.upstream.c f;
        private androidx.media2.exoplayer.external.a.a g;
        private Looper h;
        private boolean i;
        private boolean j;

        public a(Context context) {
            this(context, new f(context));
        }

        public a(Context context, ai aiVar) {
            this(context, aiVar, new DefaultTrackSelector(context), new d(), j.a(context), ac.a(), new androidx.media2.exoplayer.external.a.a(androidx.media2.exoplayer.external.util.b.f4124a), true, androidx.media2.exoplayer.external.util.b.f4124a);
        }

        public a(Context context, ai aiVar, androidx.media2.exoplayer.external.trackselection.g gVar, y yVar, androidx.media2.exoplayer.external.upstream.c cVar, Looper looper, androidx.media2.exoplayer.external.a.a aVar, boolean z, androidx.media2.exoplayer.external.util.b bVar) {
            this.f2824a = context;
            this.f2825b = aiVar;
            this.f2827d = gVar;
            this.e = yVar;
            this.f = cVar;
            this.h = looper;
            this.g = aVar;
            this.i = z;
            this.f2826c = bVar;
        }

        public final a a(Looper looper) {
            androidx.media2.exoplayer.external.util.a.b(!this.j);
            this.h = looper;
            return this;
        }

        public final a a(androidx.media2.exoplayer.external.trackselection.g gVar) {
            androidx.media2.exoplayer.external.util.a.b(!this.j);
            this.f2827d = gVar;
            return this;
        }

        public final a a(androidx.media2.exoplayer.external.upstream.c cVar) {
            androidx.media2.exoplayer.external.util.a.b(!this.j);
            this.f = cVar;
            return this;
        }

        public final ak a() {
            androidx.media2.exoplayer.external.util.a.b(!this.j);
            this.j = true;
            return new ak(this.f2824a, this.f2825b, this.f2827d, this.e, this.f, this.g, this.f2826c, this.h);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/ak$b.class */
    public final class b implements SurfaceHolder.Callback, TextureView.SurfaceTextureListener, ae.b, e.b, androidx.media2.exoplayer.external.audio.g, d, i, g {
        private b() {
        }

        @Override // androidx.media2.exoplayer.external.ae.b
        public final void a() {
        }

        @Override // androidx.media2.exoplayer.external.ae.b
        public final void a(int i) {
        }

        @Override // androidx.media2.exoplayer.external.video.g
        public final void a(int i, int i2, int i3, float f) {
            Iterator<f> it2 = ak.this.e.iterator();
            while (it2.hasNext()) {
                f next = it2.next();
                if (!ak.this.i.contains(next)) {
                    next.a(i, i2, i3, f);
                }
            }
            Iterator<g> it3 = ak.this.i.iterator();
            while (it3.hasNext()) {
                it3.next().a(i, i2, i3, f);
            }
        }

        @Override // androidx.media2.exoplayer.external.video.g
        public final void a(int i, long j) {
            Iterator<g> it2 = ak.this.i.iterator();
            while (it2.hasNext()) {
                it2.next().a(i, j);
            }
        }

        @Override // androidx.media2.exoplayer.external.audio.g
        public final void a(int i, long j, long j2) {
            Iterator<androidx.media2.exoplayer.external.audio.g> it2 = ak.this.j.iterator();
            while (it2.hasNext()) {
                it2.next().a(i, j, j2);
            }
        }

        @Override // androidx.media2.exoplayer.external.video.g
        public final void a(Surface surface) {
            if (ak.this.o == surface) {
                Iterator<f> it2 = ak.this.e.iterator();
                while (it2.hasNext()) {
                    it2.next();
                }
            }
            Iterator<g> it3 = ak.this.i.iterator();
            while (it3.hasNext()) {
                it3.next().a(surface);
            }
        }

        @Override // androidx.media2.exoplayer.external.ae.b
        public final void a(ExoPlaybackException exoPlaybackException) {
        }

        @Override // androidx.media2.exoplayer.external.video.g
        public final void a(Format format) {
            ak.this.m = format;
            Iterator<g> it2 = ak.this.i.iterator();
            while (it2.hasNext()) {
                it2.next().a(format);
            }
        }

        @Override // androidx.media2.exoplayer.external.ae.b
        public final void a(al alVar, int i) {
            if (alVar.b() == 1) {
                alVar.a(0, new al.b(), 0L);
            }
        }

        @Override // androidx.media2.exoplayer.external.video.g
        public final void a(androidx.media2.exoplayer.external.b.d dVar) {
            ak.this.p = dVar;
            Iterator<g> it2 = ak.this.i.iterator();
            while (it2.hasNext()) {
                it2.next().a(dVar);
            }
        }

        @Override // androidx.media2.exoplayer.external.metadata.d
        public final void a(Metadata metadata) {
            Iterator<d> it2 = ak.this.h.iterator();
            while (it2.hasNext()) {
                it2.next().a(metadata);
            }
        }

        @Override // androidx.media2.exoplayer.external.ae.b
        public final void a(androidx.media2.exoplayer.external.trackselection.f fVar) {
        }

        @Override // androidx.media2.exoplayer.external.video.g
        public final void a(String str, long j, long j2) {
            Iterator<g> it2 = ak.this.i.iterator();
            while (it2.hasNext()) {
                it2.next().a(str, j, j2);
            }
        }

        @Override // androidx.media2.exoplayer.external.text.i
        public final void a(List<androidx.media2.exoplayer.external.text.a> list) {
            ak.this.v = list;
            Iterator<i> it2 = ak.this.g.iterator();
            while (it2.hasNext()) {
                it2.next().a(list);
            }
        }

        @Override // androidx.media2.exoplayer.external.ae.b
        public final void a(boolean z) {
            if (ak.this.w == null) {
                return;
            }
            if (z && !ak.this.x) {
                PriorityTaskManager priorityTaskManager = ak.this.w;
                synchronized (priorityTaskManager.f4116a) {
                    priorityTaskManager.f4117b.add(0);
                    priorityTaskManager.f4118c = Math.max(priorityTaskManager.f4118c, 0);
                }
                ak.this.x = true;
            } else if (!z && ak.this.x) {
                ak.this.w.a();
                ak.this.x = false;
            }
        }

        @Override // androidx.media2.exoplayer.external.ae.b
        public final void a(boolean z, int i) {
        }

        @Override // androidx.media2.exoplayer.external.ae.b
        public final void b() {
        }

        @Override // androidx.media2.exoplayer.external.audio.g
        public final void b(int i) {
            if (ak.this.r != i) {
                ak.this.r = i;
                Iterator<androidx.media2.exoplayer.external.audio.f> it2 = ak.this.f.iterator();
                while (it2.hasNext()) {
                    androidx.media2.exoplayer.external.audio.f next = it2.next();
                    if (!ak.this.j.contains(next)) {
                        next.b(i);
                    }
                }
                Iterator<androidx.media2.exoplayer.external.audio.g> it3 = ak.this.j.iterator();
                while (it3.hasNext()) {
                    it3.next().b(i);
                }
            }
        }

        @Override // androidx.media2.exoplayer.external.audio.g
        public final void b(Format format) {
            ak.this.n = format;
            Iterator<androidx.media2.exoplayer.external.audio.g> it2 = ak.this.j.iterator();
            while (it2.hasNext()) {
                it2.next().b(format);
            }
        }

        @Override // androidx.media2.exoplayer.external.video.g
        public final void b(androidx.media2.exoplayer.external.b.d dVar) {
            Iterator<g> it2 = ak.this.i.iterator();
            while (it2.hasNext()) {
                it2.next().b(dVar);
            }
            ak.this.m = null;
            ak.this.p = null;
        }

        @Override // androidx.media2.exoplayer.external.audio.g
        public final void b(String str, long j, long j2) {
            Iterator<androidx.media2.exoplayer.external.audio.g> it2 = ak.this.j.iterator();
            while (it2.hasNext()) {
                it2.next().b(str, j, j2);
            }
        }

        @Override // androidx.media2.exoplayer.external.audio.e.b
        public final void c() {
            ak.this.t();
        }

        @Override // androidx.media2.exoplayer.external.audio.e.b
        public final void c(int i) {
            ak akVar = ak.this;
            akVar.a(akVar.n(), i);
        }

        @Override // androidx.media2.exoplayer.external.audio.g
        public final void c(androidx.media2.exoplayer.external.b.d dVar) {
            ak.this.q = dVar;
            Iterator<androidx.media2.exoplayer.external.audio.g> it2 = ak.this.j.iterator();
            while (it2.hasNext()) {
                it2.next().c(dVar);
            }
        }

        @Override // androidx.media2.exoplayer.external.audio.g
        public final void d(androidx.media2.exoplayer.external.b.d dVar) {
            Iterator<androidx.media2.exoplayer.external.audio.g> it2 = ak.this.j.iterator();
            while (it2.hasNext()) {
                it2.next().d(dVar);
            }
            ak.this.n = null;
            ak.this.q = null;
            ak.this.r = 0;
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
            ak.this.a(new Surface(surfaceTexture), true);
            ak.this.a(i, i2);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
            ak.this.a((Surface) null, true);
            ak.this.a(0, 0);
            return true;
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
            ak.this.a(i, i2);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        }

        @Override // android.view.SurfaceHolder.Callback
        public final void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
            ak.this.a(i2, i3);
        }

        @Override // android.view.SurfaceHolder.Callback
        public final void surfaceCreated(SurfaceHolder surfaceHolder) {
            ak.this.a(surfaceHolder.getSurface(), false);
        }

        @Override // android.view.SurfaceHolder.Callback
        public final void surfaceDestroyed(SurfaceHolder surfaceHolder) {
            ak.this.a((Surface) null, false);
            ak.this.a(0, 0);
        }
    }

    @Deprecated
    protected ak(Context context, ai aiVar, androidx.media2.exoplayer.external.trackselection.g gVar, y yVar, k<o> kVar, androidx.media2.exoplayer.external.upstream.c cVar, androidx.media2.exoplayer.external.a.a aVar, androidx.media2.exoplayer.external.util.b bVar, Looper looper) {
        this.z = cVar;
        this.k = aVar;
        b bVar2 = new b();
        this.y = bVar2;
        CopyOnWriteArraySet<f> copyOnWriteArraySet = new CopyOnWriteArraySet<>();
        this.e = copyOnWriteArraySet;
        CopyOnWriteArraySet<androidx.media2.exoplayer.external.audio.f> copyOnWriteArraySet2 = new CopyOnWriteArraySet<>();
        this.f = copyOnWriteArraySet2;
        this.g = new CopyOnWriteArraySet<>();
        this.h = new CopyOnWriteArraySet<>();
        CopyOnWriteArraySet<g> copyOnWriteArraySet3 = new CopyOnWriteArraySet<>();
        this.i = copyOnWriteArraySet3;
        CopyOnWriteArraySet<androidx.media2.exoplayer.external.audio.g> copyOnWriteArraySet4 = new CopyOnWriteArraySet<>();
        this.j = copyOnWriteArraySet4;
        Handler handler = new Handler(looper);
        this.f2823d = handler;
        ag[] a2 = aiVar.a(handler, bVar2, bVar2, bVar2, bVar2, kVar);
        this.f2821b = a2;
        this.t = 1.0f;
        this.r = 0;
        this.s = c.f2868a;
        this.B = 1;
        this.v = Collections.emptyList();
        h hVar = new h(a2, gVar, yVar, cVar, bVar, looper);
        this.f2822c = hVar;
        androidx.media2.exoplayer.external.util.a.b(aVar.f2784c == null || aVar.f2783b.f2789a.isEmpty());
        aVar.f2784c = (ae) androidx.media2.exoplayer.external.util.a.a(hVar);
        a((ae.b) aVar);
        a((ae.b) bVar2);
        copyOnWriteArraySet3.add(aVar);
        copyOnWriteArraySet.add(aVar);
        copyOnWriteArraySet4.add(aVar);
        copyOnWriteArraySet2.add(aVar);
        a((d) aVar);
        cVar.a(handler, aVar);
        if (kVar instanceof DefaultDrmSessionManager) {
            ((DefaultDrmSessionManager) kVar).f2977a.a(handler, aVar);
        }
        this.l = new e(context, bVar2);
    }

    protected ak(Context context, ai aiVar, androidx.media2.exoplayer.external.trackselection.g gVar, y yVar, androidx.media2.exoplayer.external.upstream.c cVar, androidx.media2.exoplayer.external.a.a aVar, androidx.media2.exoplayer.external.util.b bVar, Looper looper) {
        this(context, aiVar, gVar, yVar, k.e, cVar, aVar, bVar, looper);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Surface surface, boolean z) {
        ag[] agVarArr;
        ArrayList<af> arrayList = new ArrayList();
        for (ag agVar : this.f2821b) {
            if (agVar.a() == 2) {
                arrayList.add(this.f2822c.a(agVar).a(1).a(surface).a());
            }
        }
        Surface surface2 = this.o;
        if (!(surface2 == null || surface2 == surface)) {
            try {
                for (af afVar : arrayList) {
                    afVar.c();
                }
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
            }
            if (this.A) {
                this.o.release();
            }
        }
        this.o = surface;
        this.A = z;
    }

    private Looper r() {
        return this.f2822c.f3403c.getLooper();
    }

    private void s() {
        TextureView textureView = this.D;
        if (textureView != null) {
            if (textureView.getSurfaceTextureListener() != this.y) {
                androidx.media2.exoplayer.external.util.j.a("SimpleExoPlayer", "SurfaceTextureListener already unset or replaced.");
            } else {
                this.D.setSurfaceTextureListener(null);
            }
            this.D = null;
        }
        SurfaceHolder surfaceHolder = this.C;
        if (surfaceHolder != null) {
            surfaceHolder.removeCallback(this.y);
            this.C = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t() {
        ag[] agVarArr;
        float f = this.t;
        float f2 = this.l.e;
        for (ag agVar : this.f2821b) {
            if (agVar.a() == 1) {
                this.f2822c.a(agVar).a(2).a(Float.valueOf(f * f2)).a();
            }
        }
    }

    public final void a(float f) {
        q();
        float a2 = ac.a(f, (float) BitmapDescriptorFactory.HUE_RED, 1.0f);
        if (this.t != a2) {
            this.t = a2;
            t();
            Iterator<androidx.media2.exoplayer.external.audio.f> it2 = this.f.iterator();
            while (it2.hasNext()) {
                it2.next().d();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(int i, int i2) {
        if (i != this.E || i2 != this.F) {
            this.E = i;
            this.F = i2;
            Iterator<f> it2 = this.e.iterator();
            while (it2.hasNext()) {
                it2.next().e();
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.ae
    public final void a(int i, long j) {
        q();
        androidx.media2.exoplayer.external.a.a aVar = this.k;
        if (!aVar.f2783b.g) {
            aVar.l();
            aVar.f2783b.g = true;
            Iterator<androidx.media2.exoplayer.external.a.b> it2 = aVar.f2782a.iterator();
            while (it2.hasNext()) {
                it2.next();
            }
        }
        this.f2822c.a(i, j);
    }

    public final void a(Surface surface) {
        q();
        s();
        int i = 0;
        a(surface, false);
        if (surface != null) {
            i = -1;
        }
        a(i, i);
    }

    public final void a(ae.b bVar) {
        q();
        this.f2822c.a(bVar);
    }

    public final void a(c cVar) {
        ag[] agVarArr;
        q();
        boolean z = false;
        int i = 1;
        if (!ac.a(this.s, cVar)) {
            this.s = cVar;
            for (ag agVar : this.f2821b) {
                if (agVar.a() == 1) {
                    this.f2822c.a(agVar).a(3).a(cVar).a();
                }
            }
            Iterator<androidx.media2.exoplayer.external.audio.f> it2 = this.f.iterator();
            while (it2.hasNext()) {
                it2.next().c();
            }
        }
        e eVar = this.l;
        boolean n = n();
        int l = l();
        if (!ac.a(eVar.f2880b, (Object) null)) {
            eVar.f2880b = null;
            eVar.f2882d = 0;
            if (eVar.f2882d == 1 || eVar.f2882d == 0) {
                z = true;
            }
            androidx.media2.exoplayer.external.util.a.a(z, "Automatic handling of audio focus is only available for USAGE_MEDIA and USAGE_GAME.");
            if (n && (l == 2 || l == 3)) {
                i = eVar.a();
                a(n(), i);
            }
        }
        if (l != 1) {
            i = eVar.a(n);
        } else if (!n) {
            i = -1;
        }
        a(n(), i);
    }

    public final void a(d dVar) {
        this.h.add(dVar);
    }

    @Deprecated
    public final void a(g gVar) {
        this.i.retainAll(Collections.singleton(this.k));
        this.i.add(gVar);
    }

    public final void a(boolean z) {
        q();
        e eVar = this.l;
        int l = l();
        int i = -1;
        if (!z) {
            eVar.b(false);
        } else if (l != 1) {
            i = eVar.a();
        } else if (z) {
            i = 1;
        }
        a(z, i);
    }

    public final void a(boolean z, int i) {
        h hVar = this.f2822c;
        boolean z2 = false;
        boolean z3 = z && i != -1;
        if (i != 1) {
            z2 = true;
        }
        hVar.a(z3, z2);
    }

    public final Looper b() {
        return this.f2822c.f3404d.f3993b.getLooper();
    }

    @Override // androidx.media2.exoplayer.external.ae
    public final int c() {
        q();
        return this.f2822c.c();
    }

    @Override // androidx.media2.exoplayer.external.ae
    public final long d() {
        q();
        return this.f2822c.d();
    }

    @Override // androidx.media2.exoplayer.external.ae
    public final long e() {
        q();
        return this.f2822c.e();
    }

    @Override // androidx.media2.exoplayer.external.ae
    public final long f() {
        q();
        return this.f2822c.f();
    }

    @Override // androidx.media2.exoplayer.external.ae
    public final long g() {
        q();
        return this.f2822c.g();
    }

    @Override // androidx.media2.exoplayer.external.ae
    public final int h() {
        q();
        return this.f2822c.h();
    }

    @Override // androidx.media2.exoplayer.external.ae
    public final int i() {
        q();
        return this.f2822c.i();
    }

    @Override // androidx.media2.exoplayer.external.ae
    public final long j() {
        q();
        return this.f2822c.j();
    }

    @Override // androidx.media2.exoplayer.external.ae
    public final al k() {
        q();
        return this.f2822c.m.f2805a;
    }

    public final int l() {
        q();
        return this.f2822c.m.e;
    }

    public final ExoPlaybackException m() {
        q();
        return this.f2822c.m.f;
    }

    public final boolean n() {
        q();
        return this.f2822c.e;
    }

    public final int o() {
        q();
        return this.f2822c.f;
    }

    public final void p() {
        q();
        this.l.b(true);
        this.f2822c.b();
        s();
        Surface surface = this.o;
        if (surface != null) {
            if (this.A) {
                surface.release();
            }
            this.o = null;
        }
        t tVar = this.u;
        if (tVar != null) {
            tVar.a(this.k);
            this.u = null;
        }
        if (this.x) {
            ((PriorityTaskManager) androidx.media2.exoplayer.external.util.a.a(this.w)).a();
            this.x = false;
        }
        this.z.a(this.k);
        this.v = Collections.emptyList();
    }

    public final void q() {
        if (Looper.myLooper() != r()) {
            androidx.media2.exoplayer.external.util.j.a("SimpleExoPlayer", "Player is accessed on the wrong thread. See https://exoplayer.dev/issues/player-accessed-on-wrong-thread", this.G ? null : new IllegalStateException());
            this.G = true;
        }
    }
}
