package com.google.android.exoplayer2;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.media.AudioTrack;
import android.os.Looper;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import com.google.android.exoplayer2.ac;
import com.google.android.exoplayer2.ak;
import com.google.android.exoplayer2.b;
import com.google.android.exoplayer2.c;
import com.google.android.exoplayer2.decoder.e;
import com.google.android.exoplayer2.extractor.f;
import com.google.android.exoplayer2.extractor.l;
import com.google.android.exoplayer2.i;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.d;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.source.r;
import com.google.android.exoplayer2.source.t;
import com.google.android.exoplayer2.text.j;
import com.google.android.exoplayer2.trackselection.DefaultTrackSelector;
import com.google.android.exoplayer2.trackselection.g;
import com.google.android.exoplayer2.trackselection.h;
import com.google.android.exoplayer2.util.PriorityTaskManager;
import com.google.android.exoplayer2.util.af;
import com.google.android.exoplayer2.util.c;
import com.google.android.exoplayer2.util.n;
import com.google.android.exoplayer2.video.VideoDecoderGLSurfaceView;
import com.google.android.exoplayer2.video.i;
import com.google.android.exoplayer2.video.k;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.TimeoutException;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/aj.class */
public final class aj extends d implements ac.c, ac.d, m {
    private final com.google.android.exoplayer2.b A;
    private final am B;
    private final an C;
    private final long D;
    private AudioTrack E;
    private boolean F;
    private int G;
    private SurfaceHolder H;
    private TextureView I;
    private int J;
    private int K;
    private int L;
    private i M;
    private com.google.android.exoplayer2.video.a.a N;
    private boolean O;
    private boolean P;

    /* renamed from: b  reason: collision with root package name */
    protected final af[] f20661b;

    /* renamed from: c  reason: collision with root package name */
    final CopyOnWriteArraySet<k> f20662c;

    /* renamed from: d  reason: collision with root package name */
    public final CopyOnWriteArraySet<Object> f20663d;
    final CopyOnWriteArraySet<j> e;
    final CopyOnWriteArraySet<d> f;
    final CopyOnWriteArraySet<Object> g;
    public final com.google.android.exoplayer2.a.a h;
    public final c i;
    public final ak j;
    Format k;
    Format l;
    Surface m;
    com.google.android.exoplayer2.decoder.d n;
    com.google.android.exoplayer2.decoder.d o;
    public com.google.android.exoplayer2.audio.d p;
    public float q;
    boolean r;
    List<com.google.android.exoplayer2.text.b> s;
    PriorityTaskManager t;
    boolean u;
    public boolean v;
    com.google.android.exoplayer2.b.a w;
    private final Context x;
    private final n y;
    private final b z;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/aj$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        final Context f20664a;

        /* renamed from: b  reason: collision with root package name */
        final ah f20665b;

        /* renamed from: c  reason: collision with root package name */
        c f20666c;

        /* renamed from: d  reason: collision with root package name */
        h f20667d;
        t e;
        s f;
        com.google.android.exoplayer2.upstream.c g;
        com.google.android.exoplayer2.a.a h;
        Looper i;
        PriorityTaskManager j;
        com.google.android.exoplayer2.audio.d k;
        boolean l;
        int m;
        boolean n;
        boolean o;
        int p;
        boolean q;
        ai r;
        r s;
        long t;
        long u;
        boolean v;
        boolean w;

        public a(Context context) {
            this(context, new l(context), new f());
        }

        public a(Context context, ah ahVar) {
            this(context, ahVar, new f());
        }

        public a(Context context, ah ahVar, l lVar) {
            this(context, ahVar, new DefaultTrackSelector(context), new com.google.android.exoplayer2.source.h(context, lVar), new j(), com.google.android.exoplayer2.upstream.l.a(context), new com.google.android.exoplayer2.a.a(c.f22283a));
        }

        public a(Context context, ah ahVar, h hVar, t tVar, s sVar, com.google.android.exoplayer2.upstream.c cVar, com.google.android.exoplayer2.a.a aVar) {
            this.f20664a = context;
            this.f20665b = ahVar;
            this.f20667d = hVar;
            this.e = tVar;
            this.f = sVar;
            this.g = cVar;
            this.h = aVar;
            this.i = af.c();
            this.k = com.google.android.exoplayer2.audio.d.f20742a;
            this.m = 0;
            this.p = 1;
            this.q = true;
            this.r = ai.e;
            i.a aVar2 = new i.a();
            this.s = new i(aVar2.f21370a, aVar2.f21371b, aVar2.f21372c, aVar2.f21373d, aVar2.e, aVar2.f, aVar2.g);
            this.f20666c = c.f22283a;
            this.t = 500L;
            this.u = 2000L;
        }

        public a(Context context, l lVar) {
            this(context, new l(context), lVar);
        }

        public final aj a() {
            com.google.android.exoplayer2.util.a.b(!this.w);
            this.w = true;
            return new aj(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/aj$b.class */
    public final class b implements SurfaceHolder.Callback, TextureView.SurfaceTextureListener, ac.a, ak.a, com.google.android.exoplayer2.audio.f, b.AbstractC0422b, c.b, d, j, com.google.android.exoplayer2.video.l {
        private b() {
        }

        @Override // com.google.android.exoplayer2.b.AbstractC0422b
        public final void a() {
            aj.this.a(false, -1, 3);
        }

        @Override // com.google.android.exoplayer2.c.b
        public final void a(int i) {
            boolean r = aj.this.r();
            aj.this.a(r, i, aj.a(r, i));
        }

        @Override // com.google.android.exoplayer2.video.l
        public final void a(int i, int i2, int i3, float f) {
            aj.this.h.a(i, i2, i3, f);
            Iterator<k> it2 = aj.this.f20662c.iterator();
            while (it2.hasNext()) {
                it2.next().a(i, i2, i3, f);
            }
        }

        @Override // com.google.android.exoplayer2.video.l
        public final void a(int i, long j) {
            aj.this.h.a(i, j);
        }

        @Override // com.google.android.exoplayer2.audio.f
        public final void a(int i, long j, long j2) {
            aj.this.h.a(i, j, j2);
        }

        @Override // com.google.android.exoplayer2.audio.f
        public final void a(long j) {
            aj.this.h.a(j);
        }

        @Override // com.google.android.exoplayer2.video.l
        public final void a(long j, int i) {
            aj.this.h.a(j, i);
        }

        @Override // com.google.android.exoplayer2.video.l
        public final void a(Surface surface) {
            aj.this.h.a(surface);
            if (aj.this.m == surface) {
                Iterator<k> it2 = aj.this.f20662c.iterator();
                while (it2.hasNext()) {
                    it2.next().b();
                }
            }
        }

        @Override // com.google.android.exoplayer2.ac.a
        public /* synthetic */ void a(ExoPlaybackException exoPlaybackException) {
            ac.a._CC.$default$a(this, exoPlaybackException);
        }

        @Override // com.google.android.exoplayer2.video.l
        public final void a(Format format, e eVar) {
            aj.this.k = format;
            aj.this.h.a(format, eVar);
        }

        @Override // com.google.android.exoplayer2.ac.a
        public /* synthetic */ void a(MediaItem mediaItem, int i) {
            ac.a._CC.$default$a(this, mediaItem, i);
        }

        @Override // com.google.android.exoplayer2.ac.a
        public /* synthetic */ void a(aa aaVar) {
            ac.a._CC.$default$a(this, aaVar);
        }

        @Override // com.google.android.exoplayer2.ac.a
        public /* synthetic */ void a(ac.b bVar) {
            ac.a._CC.$default$a(this, bVar);
        }

        @Override // com.google.android.exoplayer2.ac.a
        public /* synthetic */ void a(al alVar, int i) {
            ac.a._CC.$default$a(this, alVar, i);
        }

        @Override // com.google.android.exoplayer2.video.l
        public final void a(com.google.android.exoplayer2.decoder.d dVar) {
            aj.this.n = dVar;
            aj.this.h.a(dVar);
        }

        @Override // com.google.android.exoplayer2.metadata.d
        public final void a(Metadata metadata) {
            aj.this.h.a(metadata);
            Iterator<d> it2 = aj.this.f.iterator();
            while (it2.hasNext()) {
                it2.next().a(metadata);
            }
        }

        @Override // com.google.android.exoplayer2.ac.a
        public /* synthetic */ void a(TrackGroupArray trackGroupArray, g gVar) {
            ac.a._CC.$default$a(this, trackGroupArray, gVar);
        }

        @Override // com.google.android.exoplayer2.audio.f
        public final void a(Exception exc) {
            aj.this.h.a(exc);
        }

        @Override // com.google.android.exoplayer2.video.l
        public final void a(String str) {
            aj.this.h.a(str);
        }

        @Override // com.google.android.exoplayer2.video.l
        public final void a(String str, long j, long j2) {
            aj.this.h.a(str, j, j2);
        }

        @Override // com.google.android.exoplayer2.text.j
        public final void a(List<com.google.android.exoplayer2.text.b> list) {
            aj.this.s = list;
            Iterator<j> it2 = aj.this.e.iterator();
            while (it2.hasNext()) {
                it2.next().a(list);
            }
        }

        @Override // com.google.android.exoplayer2.ac.a
        public /* synthetic */ void a(boolean z) {
            ac.a._CC.$default$a(this, z);
        }

        @Override // com.google.android.exoplayer2.c.b
        public final void b() {
            aj.this.L();
        }

        @Override // com.google.android.exoplayer2.ac.a
        public final void b(int i) {
            aj.b(aj.this);
        }

        @Override // com.google.android.exoplayer2.audio.f
        public final void b(Format format, e eVar) {
            aj.this.l = format;
            aj.this.h.b(format, eVar);
        }

        @Override // com.google.android.exoplayer2.video.l
        public final void b(com.google.android.exoplayer2.decoder.d dVar) {
            aj.this.h.b(dVar);
            aj.this.k = null;
            aj.this.n = null;
        }

        @Override // com.google.android.exoplayer2.audio.f
        public final void b(String str) {
            aj.this.h.b(str);
        }

        @Override // com.google.android.exoplayer2.audio.f
        public final void b(String str, long j, long j2) {
            aj.this.h.b(str, j, j2);
        }

        @Override // com.google.android.exoplayer2.ac.a
        public final void b(boolean z) {
            if (aj.this.t == null) {
                return;
            }
            if (z && !aj.this.u) {
                PriorityTaskManager priorityTaskManager = aj.this.t;
                synchronized (priorityTaskManager.f22263a) {
                    priorityTaskManager.f22264b.add(0);
                    priorityTaskManager.f22265c = Math.max(priorityTaskManager.f22265c, 0);
                }
                aj.this.u = true;
            } else if (!z && aj.this.u) {
                aj.this.t.a();
                aj.this.u = false;
            }
        }

        @Override // com.google.android.exoplayer2.ac.a
        public /* synthetic */ void b(boolean z, int i) {
            ac.a._CC.$default$b(this, z, i);
        }

        @Override // com.google.android.exoplayer2.audio.f
        public final void c(com.google.android.exoplayer2.decoder.d dVar) {
            aj.this.o = dVar;
            aj.this.h.c(dVar);
        }

        @Override // com.google.android.exoplayer2.ac.a
        public /* synthetic */ void c(List list) {
            ac.a._CC.$default$c(this, list);
        }

        @Override // com.google.android.exoplayer2.ac.a
        public /* synthetic */ void c(boolean z) {
            ac.a._CC.$default$c(this, z);
        }

        @Override // com.google.android.exoplayer2.ac.a
        public final void c(boolean z, int i) {
            aj.b(aj.this);
        }

        @Override // com.google.android.exoplayer2.ak.a
        public final void d() {
            com.google.android.exoplayer2.b.a a2 = aj.a(aj.this.j);
            if (!a2.equals(aj.this.w)) {
                aj.this.w = a2;
                Iterator<Object> it2 = aj.this.g.iterator();
                while (it2.hasNext()) {
                    it2.next();
                }
            }
        }

        @Override // com.google.android.exoplayer2.ac.a
        public /* synthetic */ void d(int i) {
            ac.a._CC.$default$d(this, i);
        }

        @Override // com.google.android.exoplayer2.audio.f
        public final void d(com.google.android.exoplayer2.decoder.d dVar) {
            aj.this.h.d(dVar);
            aj.this.l = null;
            aj.this.o = null;
        }

        @Override // com.google.android.exoplayer2.audio.f
        public final void d(boolean z) {
            if (aj.this.r != z) {
                aj.this.r = z;
                aj ajVar = aj.this;
                ajVar.h.d(ajVar.r);
                Iterator<Object> it2 = ajVar.f20663d.iterator();
                while (it2.hasNext()) {
                    it2.next();
                }
            }
        }

        @Override // com.google.android.exoplayer2.ak.a
        public final void e() {
            Iterator<Object> it2 = aj.this.g.iterator();
            while (it2.hasNext()) {
                it2.next();
            }
        }

        @Override // com.google.android.exoplayer2.ac.a
        public /* synthetic */ void e(int i) {
            ac.a._CC.$default$e(this, i);
        }

        @Override // com.google.android.exoplayer2.ac.a
        public /* synthetic */ void f(int i) {
            ac.a._CC.$default$f(this, i);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
            aj.this.a(new Surface(surfaceTexture), true);
            aj.this.a(i, i2);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
            aj.this.a((Surface) null, true);
            aj.this.a(0, 0);
            return true;
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
            aj.this.a(i, i2);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        }

        @Override // com.google.android.exoplayer2.ac.a
        public /* synthetic */ void p_() {
            ac.a._CC.$default$p_(this);
        }

        @Override // com.google.android.exoplayer2.ac.a
        public final void q_() {
            aj.b(aj.this);
        }

        @Override // android.view.SurfaceHolder.Callback
        public final void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
            aj.this.a(i2, i3);
        }

        @Override // android.view.SurfaceHolder.Callback
        public final void surfaceCreated(SurfaceHolder surfaceHolder) {
            aj.this.a(surfaceHolder.getSurface(), false);
        }

        @Override // android.view.SurfaceHolder.Callback
        public final void surfaceDestroyed(SurfaceHolder surfaceHolder) {
            aj.this.a((Surface) null, false);
            aj.this.a(0, 0);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @java.lang.Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected aj(android.content.Context r6, com.google.android.exoplayer2.ah r7, com.google.android.exoplayer2.trackselection.h r8, com.google.android.exoplayer2.source.t r9, com.google.android.exoplayer2.s r10, com.google.android.exoplayer2.upstream.c r11, com.google.android.exoplayer2.a.a r12, boolean r13, com.google.android.exoplayer2.util.c r14, android.os.Looper r15) {
        /*
            r5 = this;
            com.google.android.exoplayer2.aj$a r0 = new com.google.android.exoplayer2.aj$a
            r1 = r0
            r2 = r6
            r3 = r7
            r1.<init>(r2, r3)
            r6 = r0
            r0 = r6
            boolean r0 = r0.w
            r1 = 1
            r0 = r0 ^ r1
            com.google.android.exoplayer2.util.a.b(r0)
            r0 = r6
            r1 = r8
            r0.f20667d = r1
            r0 = r6
            boolean r0 = r0.w
            r1 = 1
            r0 = r0 ^ r1
            com.google.android.exoplayer2.util.a.b(r0)
            r0 = r6
            r1 = r9
            r0.e = r1
            r0 = r6
            boolean r0 = r0.w
            r1 = 1
            r0 = r0 ^ r1
            com.google.android.exoplayer2.util.a.b(r0)
            r0 = r6
            r1 = r10
            r0.f = r1
            r0 = r6
            boolean r0 = r0.w
            r1 = 1
            r0 = r0 ^ r1
            com.google.android.exoplayer2.util.a.b(r0)
            r0 = r6
            r1 = r11
            r0.g = r1
            r0 = r6
            boolean r0 = r0.w
            r1 = 1
            r0 = r0 ^ r1
            com.google.android.exoplayer2.util.a.b(r0)
            r0 = r6
            r1 = r12
            r0.h = r1
            r0 = r6
            boolean r0 = r0.w
            r1 = 1
            r0 = r0 ^ r1
            com.google.android.exoplayer2.util.a.b(r0)
            r0 = r6
            r1 = r13
            r0.q = r1
            r0 = r6
            boolean r0 = r0.w
            r1 = 1
            r0 = r0 ^ r1
            com.google.android.exoplayer2.util.a.b(r0)
            r0 = r6
            r1 = r14
            r0.f20666c = r1
            r0 = r6
            boolean r0 = r0.w
            r1 = 1
            r0 = r0 ^ r1
            com.google.android.exoplayer2.util.a.b(r0)
            r0 = r6
            r1 = r15
            r0.i = r1
            r0 = r5
            r1 = r6
            r0.<init>(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.aj.<init>(android.content.Context, com.google.android.exoplayer2.ah, com.google.android.exoplayer2.trackselection.h, com.google.android.exoplayer2.source.t, com.google.android.exoplayer2.s, com.google.android.exoplayer2.upstream.c, com.google.android.exoplayer2.a.a, boolean, com.google.android.exoplayer2.util.c, android.os.Looper):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0252  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0258  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0270  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x027c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected aj(com.google.android.exoplayer2.aj.a r19) {
        /*
            Method dump skipped, instructions count: 748
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.aj.<init>(com.google.android.exoplayer2.aj$a):void");
    }

    private void N() {
        M();
        O();
        a((Surface) null, false);
        a(0, 0);
    }

    private void O() {
        TextureView textureView = this.I;
        if (textureView != null) {
            if (textureView.getSurfaceTextureListener() != this.z) {
                n.a("SimpleExoPlayer", "SurfaceTextureListener already unset or replaced.");
            } else {
                this.I.setSurfaceTextureListener(null);
            }
            this.I = null;
        }
        SurfaceHolder surfaceHolder = this.H;
        if (surfaceHolder != null) {
            surfaceHolder.removeCallback(this.z);
            this.H = null;
        }
    }

    public static int a(boolean z, int i) {
        return (!z || i == 1) ? 1 : 2;
    }

    static com.google.android.exoplayer2.b.a a(ak akVar) {
        return new com.google.android.exoplayer2.b.a(0, akVar.a(), akVar.b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Surface surface, boolean z) {
        af[] afVarArr;
        ArrayList<ad> arrayList = new ArrayList();
        for (af afVar : this.f20661b) {
            if (afVar.a() == 2) {
                arrayList.add(this.y.a(afVar).a(1).a(surface).a());
            }
        }
        Surface surface2 = this.m;
        if (!(surface2 == null || surface2 == surface)) {
            try {
                for (ad adVar : arrayList) {
                    adVar.a(this.D);
                }
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
            } catch (TimeoutException e2) {
                this.y.a(false, ExoPlaybackException.a(new ExoTimeoutException(3)));
            }
            if (this.F) {
                this.m.release();
            }
        }
        this.m = surface;
        this.F = z;
    }

    private void a(SurfaceHolder surfaceHolder) {
        M();
        O();
        if (surfaceHolder != null) {
            a((com.google.android.exoplayer2.video.h) null);
        }
        this.H = surfaceHolder;
        if (surfaceHolder != null) {
            surfaceHolder.addCallback(this.z);
            Surface surface = surfaceHolder.getSurface();
            if (surface != null && surface.isValid()) {
                a(surface, false);
                Rect surfaceFrame = surfaceHolder.getSurfaceFrame();
                a(surfaceFrame.width(), surfaceFrame.height());
                return;
            }
        }
        a((Surface) null, false);
        a(0, 0);
    }

    private void a(com.google.android.exoplayer2.video.h hVar) {
        a(2, 8, hVar);
    }

    static /* synthetic */ void b(aj ajVar) {
        int n = ajVar.n();
        boolean z = true;
        if (n != 1) {
            if (n == 2 || n == 3) {
                ajVar.M();
                boolean z2 = ajVar.y.g.o;
                am amVar = ajVar.B;
                if (!ajVar.r() || z2) {
                    z = false;
                }
                amVar.a(z);
                ajVar.C.a(ajVar.r());
                return;
            } else if (n != 4) {
                throw new IllegalStateException();
            }
        }
        ajVar.B.a(false);
        ajVar.C.a(false);
    }

    @Override // com.google.android.exoplayer2.ac
    public final long A() {
        M();
        return this.y.A();
    }

    @Override // com.google.android.exoplayer2.ac
    public final long B() {
        M();
        return this.y.B();
    }

    @Override // com.google.android.exoplayer2.ac
    public final boolean C() {
        M();
        return this.y.C();
    }

    @Override // com.google.android.exoplayer2.ac
    public final int D() {
        M();
        return this.y.D();
    }

    @Override // com.google.android.exoplayer2.ac
    public final int E() {
        M();
        return this.y.E();
    }

    @Override // com.google.android.exoplayer2.ac
    public final long F() {
        M();
        return this.y.F();
    }

    @Override // com.google.android.exoplayer2.ac
    public final long G() {
        M();
        return this.y.G();
    }

    @Override // com.google.android.exoplayer2.ac
    public final TrackGroupArray H() {
        M();
        return this.y.g.g;
    }

    @Override // com.google.android.exoplayer2.ac
    public final g I() {
        M();
        return this.y.I();
    }

    @Override // com.google.android.exoplayer2.ac
    public final List<Metadata> J() {
        M();
        return this.y.g.i;
    }

    @Override // com.google.android.exoplayer2.ac
    public final al K() {
        M();
        return this.y.g.f22442a;
    }

    public final void L() {
        a(1, 2, Float.valueOf(this.q * this.i.f20808b));
    }

    public final void M() {
        if (Looper.myLooper() == this.y.f21465d) {
            return;
        }
        if (!this.O) {
            n.a("SimpleExoPlayer", "Player is accessed on the wrong thread. See https://exoplayer.dev/issues/player-accessed-on-wrong-thread", this.P ? null : new IllegalStateException());
            this.P = true;
            return;
        }
        throw new IllegalStateException("Player is accessed on the wrong thread. See https://exoplayer.dev/issues/player-accessed-on-wrong-thread");
    }

    @Override // com.google.android.exoplayer2.ac.c
    public final List<com.google.android.exoplayer2.text.b> a() {
        M();
        return this.s;
    }

    @Override // com.google.android.exoplayer2.ac
    public final void a(int i) {
        M();
        this.y.a(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(int i, int i2) {
        if (i != this.J || i2 != this.K) {
            this.J = i;
            this.K = i2;
            this.h.a(i, i2);
            Iterator<k> it2 = this.f20662c.iterator();
            while (it2.hasNext()) {
                it2.next();
            }
        }
    }

    public final void a(int i, int i2, Object obj) {
        af[] afVarArr;
        for (af afVar : this.f20661b) {
            if (afVar.a() == i) {
                this.y.a(afVar).a(i2).a(obj).a();
            }
        }
    }

    @Override // com.google.android.exoplayer2.ac
    public final void a(int i, long j) {
        M();
        this.h.b();
        this.y.a(i, j);
    }

    @Override // com.google.android.exoplayer2.ac.d
    public final void a(Surface surface) {
        M();
        if (surface != null && surface == this.m) {
            N();
        }
    }

    @Override // com.google.android.exoplayer2.ac.d
    public final void a(SurfaceView surfaceView) {
        M();
        if (surfaceView instanceof VideoDecoderGLSurfaceView) {
            com.google.android.exoplayer2.video.f fVar = ((VideoDecoderGLSurfaceView) surfaceView).f22364a;
            N();
            this.H = surfaceView.getHolder();
            a(fVar);
            return;
        }
        a(surfaceView == null ? null : surfaceView.getHolder());
    }

    @Override // com.google.android.exoplayer2.ac.d
    public final void a(TextureView textureView) {
        M();
        O();
        if (textureView != null) {
            a((com.google.android.exoplayer2.video.h) null);
        }
        this.I = textureView;
        if (textureView == null) {
            a((Surface) null, true);
            a(0, 0);
            return;
        }
        if (textureView.getSurfaceTextureListener() != null) {
            n.a("SimpleExoPlayer", "Replacing existing SurfaceTextureListener.");
        }
        textureView.setSurfaceTextureListener(this.z);
        SurfaceTexture surfaceTexture = textureView.isAvailable() ? textureView.getSurfaceTexture() : null;
        if (surfaceTexture == null) {
            a((Surface) null, true);
            a(0, 0);
            return;
        }
        a(new Surface(surfaceTexture), true);
        a(textureView.getWidth(), textureView.getHeight());
    }

    @Override // com.google.android.exoplayer2.ac
    public final void a(aa aaVar) {
        M();
        this.y.a(aaVar);
    }

    @Override // com.google.android.exoplayer2.ac
    public final void a(ac.a aVar) {
        com.google.android.exoplayer2.util.a.b(aVar);
        this.y.a(aVar);
    }

    @Override // com.google.android.exoplayer2.m
    @Deprecated
    public final void a(r rVar) {
        M();
        List<r> singletonList = Collections.singletonList(rVar);
        M();
        this.y.a(singletonList, 0, -9223372036854775807L, false);
        q();
    }

    @Override // com.google.android.exoplayer2.ac.c
    public final void a(j jVar) {
        com.google.android.exoplayer2.util.a.b(jVar);
        this.e.add(jVar);
    }

    @Override // com.google.android.exoplayer2.ac.d
    public final void a(com.google.android.exoplayer2.video.a.a aVar) {
        M();
        this.N = aVar;
        a(6, 7, aVar);
    }

    @Override // com.google.android.exoplayer2.ac.d
    public final void a(com.google.android.exoplayer2.video.i iVar) {
        M();
        this.M = iVar;
        a(2, 6, iVar);
    }

    @Override // com.google.android.exoplayer2.ac.d
    public final void a(k kVar) {
        com.google.android.exoplayer2.util.a.b(kVar);
        this.f20662c.add(kVar);
    }

    @Override // com.google.android.exoplayer2.ac
    public final void a(boolean z) {
        M();
        int a2 = this.i.a(z, n());
        a(z, a2, a(z, a2));
    }

    public final void a(boolean z, int i, int i2) {
        boolean z2 = z && i != -1;
        int i3 = 0;
        if (z2) {
            i3 = 0;
            if (i != 1) {
                i3 = 1;
            }
        }
        this.y.a(z2, i3, i2);
    }

    @Override // com.google.android.exoplayer2.ac
    public final int b(int i) {
        M();
        return this.y.b(i);
    }

    @Override // com.google.android.exoplayer2.ac.d
    public final void b(Surface surface) {
        M();
        O();
        if (surface != null) {
            a((com.google.android.exoplayer2.video.h) null);
        }
        int i = 0;
        a(surface, false);
        if (surface != null) {
            i = -1;
        }
        a(i, i);
    }

    @Override // com.google.android.exoplayer2.ac.d
    public final void b(SurfaceView surfaceView) {
        M();
        if (!(surfaceView instanceof VideoDecoderGLSurfaceView)) {
            SurfaceHolder holder = surfaceView == null ? null : surfaceView.getHolder();
            M();
            if (holder != null && holder == this.H) {
                a((SurfaceHolder) null);
            }
        } else if (surfaceView.getHolder() == this.H) {
            a((com.google.android.exoplayer2.video.h) null);
            this.H = null;
        }
    }

    @Override // com.google.android.exoplayer2.ac.d
    public final void b(TextureView textureView) {
        M();
        if (textureView != null && textureView == this.I) {
            a((TextureView) null);
        }
    }

    @Override // com.google.android.exoplayer2.ac
    public final void b(ac.a aVar) {
        this.y.b(aVar);
    }

    @Override // com.google.android.exoplayer2.m
    public final void b(r rVar) {
        M();
        this.y.b(rVar);
    }

    @Override // com.google.android.exoplayer2.ac.c
    public final void b(j jVar) {
        this.e.remove(jVar);
    }

    @Override // com.google.android.exoplayer2.ac.d
    public final void b(com.google.android.exoplayer2.video.a.a aVar) {
        M();
        if (this.N == aVar) {
            a(6, 7, (Object) null);
        }
    }

    @Override // com.google.android.exoplayer2.ac.d
    public final void b(com.google.android.exoplayer2.video.i iVar) {
        M();
        if (this.M == iVar) {
            a(2, 6, (Object) null);
        }
    }

    @Override // com.google.android.exoplayer2.ac.d
    public final void b(k kVar) {
        this.f20662c.remove(kVar);
    }

    @Override // com.google.android.exoplayer2.ac
    public final void b(boolean z) {
        M();
        this.y.b(z);
    }

    @Override // com.google.android.exoplayer2.ac
    public final void c(boolean z) {
        M();
        this.i.a(r(), 1);
        this.y.c(z);
        this.s = Collections.emptyList();
    }

    @Override // com.google.android.exoplayer2.m
    @Deprecated
    public final void j() {
        M();
        q();
    }

    @Override // com.google.android.exoplayer2.ac
    public final ac.d k() {
        return this;
    }

    @Override // com.google.android.exoplayer2.ac
    public final ac.c l() {
        return this;
    }

    @Override // com.google.android.exoplayer2.ac
    public final Looper m() {
        return this.y.f21465d;
    }

    @Override // com.google.android.exoplayer2.ac
    public final int n() {
        M();
        return this.y.g.f22445d;
    }

    @Override // com.google.android.exoplayer2.ac
    public final int o() {
        M();
        return this.y.g.l;
    }

    @Override // com.google.android.exoplayer2.ac
    public final ExoPlaybackException p() {
        M();
        return this.y.g.e;
    }

    @Override // com.google.android.exoplayer2.ac
    public final void q() {
        M();
        boolean r = r();
        int a2 = this.i.a(r, 2);
        a(r, a2, a(r, a2));
        this.y.q();
    }

    @Override // com.google.android.exoplayer2.ac
    public final boolean r() {
        M();
        return this.y.g.k;
    }

    @Override // com.google.android.exoplayer2.ac
    public final int s() {
        M();
        return this.y.e;
    }

    @Override // com.google.android.exoplayer2.ac
    public final boolean t() {
        M();
        return this.y.f;
    }

    @Override // com.google.android.exoplayer2.ac
    public final boolean u() {
        M();
        return this.y.g.f;
    }

    @Override // com.google.android.exoplayer2.ac
    public final aa v() {
        M();
        return this.y.g.m;
    }

    @Override // com.google.android.exoplayer2.ac
    public final void w() {
        AudioTrack audioTrack;
        M();
        if (af.f22275a < 21 && (audioTrack = this.E) != null) {
            audioTrack.release();
            this.E = null;
        }
        this.A.a(false);
        ak akVar = this.j;
        if (akVar.f20671c != null) {
            try {
                akVar.f20669a.unregisterReceiver(akVar.f20671c);
            } catch (RuntimeException e) {
                n.a("StreamVolumeManager", "Error unregistering stream volume receiver", e);
            }
            akVar.f20671c = null;
        }
        this.B.a(false);
        this.C.a(false);
        c cVar = this.i;
        cVar.f20807a = null;
        cVar.a();
        this.y.w();
        this.h.a();
        O();
        Surface surface = this.m;
        if (surface != null) {
            if (this.F) {
                surface.release();
            }
            this.m = null;
        }
        if (this.u) {
            ((PriorityTaskManager) com.google.android.exoplayer2.util.a.b(this.t)).a();
            this.u = false;
        }
        this.s = Collections.emptyList();
        this.v = true;
    }

    @Override // com.google.android.exoplayer2.ac
    public final int x() {
        M();
        return this.y.x();
    }

    @Override // com.google.android.exoplayer2.ac
    public final int y() {
        M();
        return this.y.y();
    }

    @Override // com.google.android.exoplayer2.ac
    public final long z() {
        M();
        return this.y.z();
    }

    @Override // com.google.android.exoplayer2.m
    public final h z_() {
        M();
        return this.y.f21464c;
    }
}
