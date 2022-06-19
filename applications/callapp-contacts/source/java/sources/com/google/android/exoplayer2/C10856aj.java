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
import com.google.android.exoplayer2.AbstractC10842ac;
import com.google.android.exoplayer2.C10860ak;
import com.google.android.exoplayer2.C10915b;
import com.google.android.exoplayer2.C10919c;
import com.google.android.exoplayer2.C11161i;
import com.google.android.exoplayer2.audio.AbstractC10893f;
import com.google.android.exoplayer2.audio.C10889d;
import com.google.android.exoplayer2.decoder.C10934d;
import com.google.android.exoplayer2.decoder.C10935e;
import com.google.android.exoplayer2.extractor.AbstractC11133l;
import com.google.android.exoplayer2.extractor.C11020f;
import com.google.android.exoplayer2.metadata.AbstractC11198d;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.p323a.C10835a;
import com.google.android.exoplayer2.p324b.C10918a;
import com.google.android.exoplayer2.source.AbstractC11315r;
import com.google.android.exoplayer2.source.AbstractC11321t;
import com.google.android.exoplayer2.source.C11299h;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.text.AbstractC11420j;
import com.google.android.exoplayer2.text.C11356b;
import com.google.android.exoplayer2.trackselection.AbstractC11444h;
import com.google.android.exoplayer2.trackselection.C11443g;
import com.google.android.exoplayer2.trackselection.DefaultTrackSelector;
import com.google.android.exoplayer2.upstream.AbstractC11534c;
import com.google.android.exoplayer2.upstream.C11574l;
import com.google.android.exoplayer2.util.AbstractC11603c;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.exoplayer2.util.C11617n;
import com.google.android.exoplayer2.util.PriorityTaskManager;
import com.google.android.exoplayer2.video.AbstractC11657h;
import com.google.android.exoplayer2.video.AbstractC11658i;
import com.google.android.exoplayer2.video.AbstractC11662k;
import com.google.android.exoplayer2.video.AbstractC11663l;
import com.google.android.exoplayer2.video.C11655f;
import com.google.android.exoplayer2.video.VideoDecoderGLSurfaceView;
import com.google.android.exoplayer2.video.p347a.AbstractC11641a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.TimeoutException;
/* renamed from: com.google.android.exoplayer2.aj */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/aj.class */
public final class C10856aj extends AbstractC10925d implements AbstractC10842ac.AbstractC10845c, AbstractC10842ac.AbstractC10846d, AbstractC11168m {

    /* renamed from: A */
    private final C10915b f34923A;

    /* renamed from: B */
    private final C10868am f34924B;

    /* renamed from: C */
    private final C10869an f34925C;

    /* renamed from: D */
    private final long f34926D;

    /* renamed from: E */
    private AudioTrack f34927E;

    /* renamed from: F */
    private boolean f34928F;

    /* renamed from: G */
    private int f34929G;

    /* renamed from: H */
    private SurfaceHolder f34930H;

    /* renamed from: I */
    private TextureView f34931I;

    /* renamed from: J */
    private int f34932J;

    /* renamed from: K */
    private int f34933K;

    /* renamed from: L */
    private int f34934L;

    /* renamed from: M */
    private AbstractC11658i f34935M;

    /* renamed from: N */
    private AbstractC11641a f34936N;

    /* renamed from: O */
    private boolean f34937O;

    /* renamed from: P */
    private boolean f34938P;

    /* renamed from: b */
    protected final AbstractC10851af[] f34939b;

    /* renamed from: c */
    final CopyOnWriteArraySet<AbstractC11662k> f34940c;

    /* renamed from: d */
    public final CopyOnWriteArraySet<Object> f34941d;

    /* renamed from: e */
    final CopyOnWriteArraySet<AbstractC11420j> f34942e;

    /* renamed from: f */
    final CopyOnWriteArraySet<AbstractC11198d> f34943f;

    /* renamed from: g */
    final CopyOnWriteArraySet<Object> f34944g;

    /* renamed from: h */
    public final C10835a f34945h;

    /* renamed from: i */
    public final C10919c f34946i;

    /* renamed from: j */
    public final C10860ak f34947j;

    /* renamed from: k */
    Format f34948k;

    /* renamed from: l */
    Format f34949l;

    /* renamed from: m */
    Surface f34950m;

    /* renamed from: n */
    C10934d f34951n;

    /* renamed from: o */
    C10934d f34952o;

    /* renamed from: p */
    public C10889d f34953p;

    /* renamed from: q */
    public float f34954q;

    /* renamed from: r */
    boolean f34955r;

    /* renamed from: s */
    List<C11356b> f34956s;

    /* renamed from: t */
    PriorityTaskManager f34957t;

    /* renamed from: u */
    boolean f34958u;

    /* renamed from: v */
    public boolean f34959v;

    /* renamed from: w */
    C10918a f34960w;

    /* renamed from: x */
    private final Context f34961x;

    /* renamed from: y */
    private final C11239n f34962y;

    /* renamed from: z */
    private final SurfaceHolder$CallbackC10859b f34963z;

    /* renamed from: com.google.android.exoplayer2.aj$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/aj$a.class */
    public static final class C10858a {

        /* renamed from: a */
        final Context f34964a;

        /* renamed from: b */
        final AbstractC10854ah f34965b;

        /* renamed from: c */
        AbstractC11603c f34966c;

        /* renamed from: d */
        AbstractC11444h f34967d;

        /* renamed from: e */
        AbstractC11321t f34968e;

        /* renamed from: f */
        AbstractC11260s f34969f;

        /* renamed from: g */
        AbstractC11534c f34970g;

        /* renamed from: h */
        C10835a f34971h;

        /* renamed from: i */
        Looper f34972i;

        /* renamed from: j */
        PriorityTaskManager f34973j;

        /* renamed from: k */
        C10889d f34974k;

        /* renamed from: l */
        boolean f34975l;

        /* renamed from: m */
        int f34976m;

        /* renamed from: n */
        boolean f34977n;

        /* renamed from: o */
        boolean f34978o;

        /* renamed from: p */
        int f34979p;

        /* renamed from: q */
        boolean f34980q;

        /* renamed from: r */
        C10855ai f34981r;

        /* renamed from: s */
        AbstractC11259r f34982s;

        /* renamed from: t */
        long f34983t;

        /* renamed from: u */
        long f34984u;

        /* renamed from: v */
        boolean f34985v;

        /* renamed from: w */
        boolean f34986w;

        public C10858a(Context context) {
            this(context, new C11167l(context), new C11020f());
        }

        public C10858a(Context context, AbstractC10854ah abstractC10854ah) {
            this(context, abstractC10854ah, new C11020f());
        }

        public C10858a(Context context, AbstractC10854ah abstractC10854ah, AbstractC11133l abstractC11133l) {
            this(context, abstractC10854ah, new DefaultTrackSelector(context), new C11299h(context, abstractC11133l), new C11164j(), C11574l.m20060a(context), new C10835a(AbstractC11603c.f38667a));
        }

        public C10858a(Context context, AbstractC10854ah abstractC10854ah, AbstractC11444h abstractC11444h, AbstractC11321t abstractC11321t, AbstractC11260s abstractC11260s, AbstractC11534c abstractC11534c, C10835a c10835a) {
            this.f34964a = context;
            this.f34965b = abstractC10854ah;
            this.f34967d = abstractC11444h;
            this.f34968e = abstractC11321t;
            this.f34969f = abstractC11260s;
            this.f34970g = abstractC11534c;
            this.f34971h = c10835a;
            this.f34972i = C11599af.m19936c();
            this.f34974k = C10889d.f35137a;
            this.f34976m = 0;
            this.f34979p = 1;
            this.f34980q = true;
            this.f34981r = C10855ai.f34920e;
            C11161i.C11163a c11163a = new C11161i.C11163a();
            this.f34982s = new C11161i(c11163a.f36566a, c11163a.f36567b, c11163a.f36568c, c11163a.f36569d, c11163a.f36570e, c11163a.f36571f, c11163a.f36572g);
            this.f34966c = AbstractC11603c.f38667a;
            this.f34983t = 500L;
            this.f34984u = 2000L;
        }

        public C10858a(Context context, AbstractC11133l abstractC11133l) {
            this(context, new C11167l(context), abstractC11133l);
        }

        /* renamed from: a */
        public final C10856aj m22193a() {
            C11593a.m20019b(!this.f34986w);
            this.f34986w = true;
            return new C10856aj(this);
        }
    }

    /* renamed from: com.google.android.exoplayer2.aj$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/aj$b.class */
    public final class SurfaceHolder$CallbackC10859b implements SurfaceHolder.Callback, TextureView.SurfaceTextureListener, AbstractC10842ac.AbstractC10843a, C10860ak.AbstractC10862a, AbstractC10893f, C10915b.AbstractC10917b, C10919c.AbstractC10921b, AbstractC11198d, AbstractC11420j, AbstractC11663l {
        private SurfaceHolder$CallbackC10859b() {
            C10856aj.this = r4;
        }

        @Override // com.google.android.exoplayer2.C10915b.AbstractC10917b
        /* renamed from: a */
        public final void mo21956a() {
            C10856aj.this.m22202a(false, -1, 3);
        }

        @Override // com.google.android.exoplayer2.C10919c.AbstractC10921b
        /* renamed from: a */
        public final void mo21940a(int i) {
            boolean mo21118r = C10856aj.this.mo21118r();
            C10856aj.this.m22202a(mo21118r, i, C10856aj.m22203a(mo21118r, i));
        }

        @Override // com.google.android.exoplayer2.video.AbstractC11663l
        /* renamed from: a */
        public final void mo19667a(int i, int i2, int i3, float f) {
            C10856aj.this.f34945h.mo19667a(i, i2, i3, f);
            Iterator<AbstractC11662k> it2 = C10856aj.this.f34940c.iterator();
            while (it2.hasNext()) {
                it2.next().mo19669a(i, i2, i3, f);
            }
        }

        @Override // com.google.android.exoplayer2.video.AbstractC11663l
        /* renamed from: a */
        public final void mo19666a(int i, long j) {
            C10856aj.this.f34945h.mo19666a(i, j);
        }

        @Override // com.google.android.exoplayer2.audio.AbstractC10893f
        /* renamed from: a */
        public final void mo22066a(int i, long j, long j2) {
            C10856aj.this.f34945h.mo22066a(i, j, j2);
        }

        @Override // com.google.android.exoplayer2.audio.AbstractC10893f
        /* renamed from: a */
        public final void mo22065a(long j) {
            C10856aj.this.f34945h.mo22065a(j);
        }

        @Override // com.google.android.exoplayer2.video.AbstractC11663l
        /* renamed from: a */
        public final void mo19665a(long j, int i) {
            C10856aj.this.f34945h.mo19665a(j, i);
        }

        @Override // com.google.android.exoplayer2.video.AbstractC11663l
        /* renamed from: a */
        public final void mo19664a(Surface surface) {
            C10856aj.this.f34945h.mo19664a(surface);
            if (C10856aj.this.f34950m == surface) {
                Iterator<AbstractC11662k> it2 = C10856aj.this.f34940c.iterator();
                while (it2.hasNext()) {
                    it2.next().mo19668b();
                }
            }
        }

        @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
        /* renamed from: a */
        public /* synthetic */ void mo20311a(ExoPlaybackException exoPlaybackException) {
            AbstractC10842ac.AbstractC10843a._CC.$default$a(this, exoPlaybackException);
        }

        @Override // com.google.android.exoplayer2.video.AbstractC11663l
        /* renamed from: a */
        public final void mo19663a(Format format, C10935e c10935e) {
            C10856aj.this.f34948k = format;
            C10856aj.this.f34945h.mo19663a(format, c10935e);
        }

        @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
        /* renamed from: a */
        public /* synthetic */ void mo20310a(MediaItem mediaItem, int i) {
            AbstractC10842ac.AbstractC10843a._CC.$default$a(this, mediaItem, i);
        }

        @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
        /* renamed from: a */
        public /* synthetic */ void mo20309a(C10840aa c10840aa) {
            AbstractC10842ac.AbstractC10843a._CC.$default$a(this, c10840aa);
        }

        @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
        /* renamed from: a */
        public /* synthetic */ void mo20308a(AbstractC10842ac.C10844b c10844b) {
            AbstractC10842ac.AbstractC10843a._CC.$default$a(this, c10844b);
        }

        @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
        /* renamed from: a */
        public /* synthetic */ void mo20307a(AbstractC10864al abstractC10864al, int i) {
            AbstractC10842ac.AbstractC10843a._CC.$default$a(this, abstractC10864al, i);
        }

        @Override // com.google.android.exoplayer2.video.AbstractC11663l
        /* renamed from: a */
        public final void mo19662a(C10934d c10934d) {
            C10856aj.this.f34951n = c10934d;
            C10856aj.this.f34945h.mo19662a(c10934d);
        }

        @Override // com.google.android.exoplayer2.metadata.AbstractC11198d
        /* renamed from: a */
        public final void mo21213a(Metadata metadata) {
            C10856aj.this.f34945h.m22275a(metadata);
            Iterator<AbstractC11198d> it2 = C10856aj.this.f34943f.iterator();
            while (it2.hasNext()) {
                it2.next().mo21213a(metadata);
            }
        }

        @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
        /* renamed from: a */
        public /* synthetic */ void mo20306a(TrackGroupArray trackGroupArray, C11443g c11443g) {
            AbstractC10842ac.AbstractC10843a._CC.$default$a(this, trackGroupArray, c11443g);
        }

        @Override // com.google.android.exoplayer2.audio.AbstractC10893f
        /* renamed from: a */
        public final void mo22064a(Exception exc) {
            C10856aj.this.f34945h.mo22064a(exc);
        }

        @Override // com.google.android.exoplayer2.video.AbstractC11663l
        /* renamed from: a */
        public final void mo19661a(String str) {
            C10856aj.this.f34945h.mo19661a(str);
        }

        @Override // com.google.android.exoplayer2.video.AbstractC11663l
        /* renamed from: a */
        public final void mo19660a(String str, long j, long j2) {
            C10856aj.this.f34945h.mo19660a(str, j, j2);
        }

        @Override // com.google.android.exoplayer2.text.AbstractC11420j
        /* renamed from: a */
        public final void mo20289a(List<C11356b> list) {
            C10856aj.this.f34956s = list;
            Iterator<AbstractC11420j> it2 = C10856aj.this.f34942e.iterator();
            while (it2.hasNext()) {
                it2.next().mo20289a(list);
            }
        }

        @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
        /* renamed from: a */
        public /* synthetic */ void mo20305a(boolean z) {
            AbstractC10842ac.AbstractC10843a._CC.$default$a(this, z);
        }

        @Override // com.google.android.exoplayer2.C10919c.AbstractC10921b
        /* renamed from: b */
        public final void mo21939b() {
            C10856aj.this.m22224L();
        }

        @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
        /* renamed from: b */
        public final void mo20304b(int i) {
            C10856aj.m22198b(C10856aj.this);
        }

        @Override // com.google.android.exoplayer2.audio.AbstractC10893f
        /* renamed from: b */
        public final void mo22063b(Format format, C10935e c10935e) {
            C10856aj.this.f34949l = format;
            C10856aj.this.f34945h.mo22063b(format, c10935e);
        }

        @Override // com.google.android.exoplayer2.video.AbstractC11663l
        /* renamed from: b */
        public final void mo19659b(C10934d c10934d) {
            C10856aj.this.f34945h.mo19659b(c10934d);
            C10856aj.this.f34948k = null;
            C10856aj.this.f34951n = null;
        }

        @Override // com.google.android.exoplayer2.audio.AbstractC10893f
        /* renamed from: b */
        public final void mo22062b(String str) {
            C10856aj.this.f34945h.mo22062b(str);
        }

        @Override // com.google.android.exoplayer2.audio.AbstractC10893f
        /* renamed from: b */
        public final void mo22061b(String str, long j, long j2) {
            C10856aj.this.f34945h.mo22061b(str, j, j2);
        }

        @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
        /* renamed from: b */
        public final void mo20303b(boolean z) {
            if (C10856aj.this.f34957t != null) {
                if (!z || C10856aj.this.f34958u) {
                    if (z || !C10856aj.this.f34958u) {
                        return;
                    }
                    C10856aj.this.f34957t.m20027a();
                    C10856aj.this.f34958u = false;
                    return;
                }
                PriorityTaskManager priorityTaskManager = C10856aj.this.f34957t;
                synchronized (priorityTaskManager.f38636a) {
                    priorityTaskManager.f38637b.add(0);
                    priorityTaskManager.f38638c = Math.max(priorityTaskManager.f38638c, 0);
                }
                C10856aj.this.f34958u = true;
            }
        }

        @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
        /* renamed from: b */
        public /* synthetic */ void mo20302b(boolean z, int i) {
            AbstractC10842ac.AbstractC10843a._CC.$default$b(this, z, i);
        }

        @Override // com.google.android.exoplayer2.audio.AbstractC10893f
        /* renamed from: c */
        public final void mo22060c(C10934d c10934d) {
            C10856aj.this.f34952o = c10934d;
            C10856aj.this.f34945h.mo22060c(c10934d);
        }

        @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
        /* renamed from: c */
        public /* synthetic */ void mo20301c(List list) {
            AbstractC10842ac.AbstractC10843a._CC.$default$c(this, list);
        }

        @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
        /* renamed from: c */
        public /* synthetic */ void mo20300c(boolean z) {
            AbstractC10842ac.AbstractC10843a._CC.$default$c(this, z);
        }

        @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
        /* renamed from: c */
        public final void mo20299c(boolean z, int i) {
            C10856aj.m22198b(C10856aj.this);
        }

        @Override // com.google.android.exoplayer2.C10860ak.AbstractC10862a
        /* renamed from: d */
        public final void mo22186d() {
            C10918a m22209a = C10856aj.m22209a(C10856aj.this.f34947j);
            if (!m22209a.equals(C10856aj.this.f34960w)) {
                C10856aj.this.f34960w = m22209a;
                Iterator<Object> it2 = C10856aj.this.f34944g.iterator();
                while (it2.hasNext()) {
                    it2.next();
                }
            }
        }

        @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
        /* renamed from: d */
        public /* synthetic */ void mo20298d(int i) {
            AbstractC10842ac.AbstractC10843a._CC.$default$d(this, i);
        }

        @Override // com.google.android.exoplayer2.audio.AbstractC10893f
        /* renamed from: d */
        public final void mo22059d(C10934d c10934d) {
            C10856aj.this.f34945h.mo22059d(c10934d);
            C10856aj.this.f34949l = null;
            C10856aj.this.f34952o = null;
        }

        @Override // com.google.android.exoplayer2.audio.AbstractC10893f
        /* renamed from: d */
        public final void mo22058d(boolean z) {
            if (C10856aj.this.f34955r == z) {
                return;
            }
            C10856aj.this.f34955r = z;
            C10856aj c10856aj = C10856aj.this;
            c10856aj.f34945h.mo22058d(c10856aj.f34955r);
            Iterator<Object> it2 = c10856aj.f34941d.iterator();
            while (it2.hasNext()) {
                it2.next();
            }
        }

        @Override // com.google.android.exoplayer2.C10860ak.AbstractC10862a
        /* renamed from: e */
        public final void mo22185e() {
            Iterator<Object> it2 = C10856aj.this.f34944g.iterator();
            while (it2.hasNext()) {
                it2.next();
            }
        }

        @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
        /* renamed from: e */
        public /* synthetic */ void mo20297e(int i) {
            AbstractC10842ac.AbstractC10843a._CC.$default$e(this, i);
        }

        @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
        /* renamed from: f */
        public /* synthetic */ void mo20296f(int i) {
            AbstractC10842ac.AbstractC10843a._CC.$default$f(this, i);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
            C10856aj.this.m22216a(new Surface(surfaceTexture), true);
            C10856aj.this.m22219a(i, i2);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
            C10856aj.this.m22216a((Surface) null, true);
            C10856aj.this.m22219a(0, 0);
            return true;
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
            C10856aj.this.m22219a(i, i2);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        }

        @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
        /* renamed from: p_ */
        public /* synthetic */ void mo20295p_() {
            AbstractC10842ac.AbstractC10843a._CC.$default$p_(this);
        }

        @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
        /* renamed from: q_ */
        public final void mo20294q_() {
            C10856aj.m22198b(C10856aj.this);
        }

        @Override // android.view.SurfaceHolder.Callback
        public final void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
            C10856aj.this.m22219a(i2, i3);
        }

        @Override // android.view.SurfaceHolder.Callback
        public final void surfaceCreated(SurfaceHolder surfaceHolder) {
            C10856aj.this.m22216a(surfaceHolder.getSurface(), false);
        }

        @Override // android.view.SurfaceHolder.Callback
        public final void surfaceDestroyed(SurfaceHolder surfaceHolder) {
            C10856aj.this.m22216a((Surface) null, false);
            C10856aj.this.m22219a(0, 0);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @java.lang.Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected C10856aj(android.content.Context r6, com.google.android.exoplayer2.AbstractC10854ah r7, com.google.android.exoplayer2.trackselection.AbstractC11444h r8, com.google.android.exoplayer2.source.AbstractC11321t r9, com.google.android.exoplayer2.AbstractC11260s r10, com.google.android.exoplayer2.upstream.AbstractC11534c r11, com.google.android.exoplayer2.p323a.C10835a r12, boolean r13, com.google.android.exoplayer2.util.AbstractC11603c r14, android.os.Looper r15) {
        /*
            r5 = this;
            com.google.android.exoplayer2.aj$a r0 = new com.google.android.exoplayer2.aj$a
            r1 = r0
            r2 = r6
            r3 = r7
            r1.<init>(r2, r3)
            r6 = r0
            r0 = r6
            boolean r0 = r0.f34986w
            r1 = 1
            r0 = r0 ^ r1
            com.google.android.exoplayer2.util.C11593a.m20019b(r0)
            r0 = r6
            r1 = r8
            r0.f34967d = r1
            r0 = r6
            boolean r0 = r0.f34986w
            r1 = 1
            r0 = r0 ^ r1
            com.google.android.exoplayer2.util.C11593a.m20019b(r0)
            r0 = r6
            r1 = r9
            r0.f34968e = r1
            r0 = r6
            boolean r0 = r0.f34986w
            r1 = 1
            r0 = r0 ^ r1
            com.google.android.exoplayer2.util.C11593a.m20019b(r0)
            r0 = r6
            r1 = r10
            r0.f34969f = r1
            r0 = r6
            boolean r0 = r0.f34986w
            r1 = 1
            r0 = r0 ^ r1
            com.google.android.exoplayer2.util.C11593a.m20019b(r0)
            r0 = r6
            r1 = r11
            r0.f34970g = r1
            r0 = r6
            boolean r0 = r0.f34986w
            r1 = 1
            r0 = r0 ^ r1
            com.google.android.exoplayer2.util.C11593a.m20019b(r0)
            r0 = r6
            r1 = r12
            r0.f34971h = r1
            r0 = r6
            boolean r0 = r0.f34986w
            r1 = 1
            r0 = r0 ^ r1
            com.google.android.exoplayer2.util.C11593a.m20019b(r0)
            r0 = r6
            r1 = r13
            r0.f34980q = r1
            r0 = r6
            boolean r0 = r0.f34986w
            r1 = 1
            r0 = r0 ^ r1
            com.google.android.exoplayer2.util.C11593a.m20019b(r0)
            r0 = r6
            r1 = r14
            r0.f34966c = r1
            r0 = r6
            boolean r0 = r0.f34986w
            r1 = 1
            r0 = r0 ^ r1
            com.google.android.exoplayer2.util.C11593a.m20019b(r0)
            r0 = r6
            r1 = r15
            r0.f34972i = r1
            r0 = r5
            r1 = r6
            r0.<init>(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.C10856aj.<init>(android.content.Context, com.google.android.exoplayer2.ah, com.google.android.exoplayer2.trackselection.h, com.google.android.exoplayer2.source.t, com.google.android.exoplayer2.s, com.google.android.exoplayer2.upstream.c, com.google.android.exoplayer2.a.a, boolean, com.google.android.exoplayer2.util.c, android.os.Looper):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0252  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0258  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0270  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x027c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected C10856aj(com.google.android.exoplayer2.C10856aj.C10858a r19) {
        /*
            Method dump skipped, instructions count: 748
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.C10856aj.<init>(com.google.android.exoplayer2.aj$a):void");
    }

    /* renamed from: N */
    private void m22222N() {
        m22223M();
        m22221O();
        m22216a((Surface) null, false);
        m22219a(0, 0);
    }

    /* renamed from: O */
    private void m22221O() {
        TextureView textureView = this.f34931I;
        if (textureView != null) {
            if (textureView.getSurfaceTextureListener() != this.f34963z) {
                C11617n.m19863a("SimpleExoPlayer", "SurfaceTextureListener already unset or replaced.");
            } else {
                this.f34931I.setSurfaceTextureListener(null);
            }
            this.f34931I = null;
        }
        SurfaceHolder surfaceHolder = this.f34930H;
        if (surfaceHolder != null) {
            surfaceHolder.removeCallback(this.f34963z);
            this.f34930H = null;
        }
    }

    /* renamed from: a */
    public static int m22203a(boolean z, int i) {
        return (!z || i == 1) ? 1 : 2;
    }

    /* renamed from: a */
    static C10918a m22209a(C10860ak c10860ak) {
        return new C10918a(0, c10860ak.m22192a(), c10860ak.m22189b());
    }

    /* renamed from: a */
    public void m22216a(Surface surface, boolean z) {
        AbstractC10851af[] abstractC10851afArr;
        ArrayList<C10847ad> arrayList = new ArrayList();
        for (AbstractC10851af abstractC10851af : this.f34939b) {
            if (abstractC10851af.mo21812a() == 2) {
                arrayList.add(this.f34962y.m21165a(abstractC10851af).m22236a(1).m22234a(surface).m22237a());
            }
        }
        Surface surface2 = this.f34950m;
        if (surface2 != null && surface2 != surface) {
            try {
                for (C10847ad c10847ad : arrayList) {
                    c10847ad.m22235a(this.f34926D);
                }
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
            } catch (TimeoutException e2) {
                this.f34962y.m21148a(false, ExoPlaybackException.m22324a(new ExoTimeoutException(3)));
            }
            if (this.f34928F) {
                this.f34950m.release();
            }
        }
        this.f34950m = surface;
        this.f34928F = z;
    }

    /* renamed from: a */
    private void m22215a(SurfaceHolder surfaceHolder) {
        m22223M();
        m22221O();
        if (surfaceHolder != null) {
            m22206a((AbstractC11657h) null);
        }
        this.f34930H = surfaceHolder;
        if (surfaceHolder != null) {
            surfaceHolder.addCallback(this.f34963z);
            Surface surface = surfaceHolder.getSurface();
            if (surface != null && surface.isValid()) {
                m22216a(surface, false);
                Rect surfaceFrame = surfaceHolder.getSurfaceFrame();
                m22219a(surfaceFrame.width(), surfaceFrame.height());
                return;
            }
        }
        m22216a((Surface) null, false);
        m22219a(0, 0);
    }

    /* renamed from: a */
    private void m22206a(AbstractC11657h abstractC11657h) {
        m22218a(2, 8, abstractC11657h);
    }

    /* renamed from: b */
    static /* synthetic */ void m22198b(C10856aj c10856aj) {
        int mo21122n = c10856aj.mo21122n();
        boolean z = true;
        if (mo21122n != 1) {
            if (mo21122n == 2 || mo21122n == 3) {
                c10856aj.m22223M();
                boolean z2 = c10856aj.f34962y.f36812g.f38963o;
                C10868am c10868am = c10856aj.f34924B;
                if (!c10856aj.mo21118r() || z2) {
                    z = false;
                }
                c10868am.m22164a(z);
                c10856aj.f34925C.m22162a(c10856aj.mo21118r());
                return;
            } else if (mo21122n != 4) {
                throw new IllegalStateException();
            }
        }
        c10856aj.f34924B.m22164a(false);
        c10856aj.f34925C.m22162a(false);
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac
    /* renamed from: A */
    public final long mo21186A() {
        m22223M();
        return this.f34962y.mo21186A();
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac
    /* renamed from: B */
    public final long mo21185B() {
        m22223M();
        return this.f34962y.mo21185B();
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac
    /* renamed from: C */
    public final boolean mo21184C() {
        m22223M();
        return this.f34962y.mo21184C();
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac
    /* renamed from: D */
    public final int mo21183D() {
        m22223M();
        return this.f34962y.mo21183D();
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac
    /* renamed from: E */
    public final int mo21182E() {
        m22223M();
        return this.f34962y.mo21182E();
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac
    /* renamed from: F */
    public final long mo21181F() {
        m22223M();
        return this.f34962y.mo21181F();
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac
    /* renamed from: G */
    public final long mo21180G() {
        m22223M();
        return this.f34962y.mo21180G();
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac
    /* renamed from: H */
    public final TrackGroupArray mo21179H() {
        m22223M();
        return this.f34962y.f36812g.f38955g;
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac
    /* renamed from: I */
    public final C11443g mo21178I() {
        m22223M();
        return this.f34962y.mo21178I();
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac
    /* renamed from: J */
    public final List<Metadata> mo21177J() {
        m22223M();
        return this.f34962y.f36812g.f38957i;
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac
    /* renamed from: K */
    public final AbstractC10864al mo21176K() {
        m22223M();
        return this.f34962y.f36812g.f38949a;
    }

    /* renamed from: L */
    public final void m22224L() {
        m22218a(1, 2, Float.valueOf(this.f34954q * this.f34946i.f35305b));
    }

    /* renamed from: M */
    public final void m22223M() {
        if (Looper.myLooper() != this.f34962y.f36809d) {
            if (this.f34937O) {
                throw new IllegalStateException("Player is accessed on the wrong thread. See https://exoplayer.dev/issues/player-accessed-on-wrong-thread");
            }
            C11617n.m19862a("SimpleExoPlayer", "Player is accessed on the wrong thread. See https://exoplayer.dev/issues/player-accessed-on-wrong-thread", this.f34938P ? null : new IllegalStateException());
            this.f34938P = true;
        }
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10845c
    /* renamed from: a */
    public final List<C11356b> mo22220a() {
        m22223M();
        return this.f34956s;
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac
    /* renamed from: a */
    public final void mo21173a(int i) {
        m22223M();
        this.f34962y.mo21173a(i);
    }

    /* renamed from: a */
    public final void m22219a(int i, int i2) {
        if (i == this.f34932J && i2 == this.f34933K) {
            return;
        }
        this.f34932J = i;
        this.f34933K = i2;
        this.f34945h.m22309a(i, i2);
        Iterator<AbstractC11662k> it2 = this.f34940c.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    /* renamed from: a */
    public final void m22218a(int i, int i2, Object obj) {
        AbstractC10851af[] abstractC10851afArr;
        for (AbstractC10851af abstractC10851af : this.f34939b) {
            if (abstractC10851af.mo21812a() == i) {
                this.f34962y.m21165a(abstractC10851af).m22236a(i2).m22234a(obj).m22237a();
            }
        }
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac
    /* renamed from: a */
    public final void mo21171a(int i, long j) {
        m22223M();
        this.f34945h.m22273b();
        this.f34962y.mo21171a(i, j);
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10846d
    /* renamed from: a */
    public final void mo22217a(Surface surface) {
        m22223M();
        if (surface == null || surface != this.f34950m) {
            return;
        }
        m22222N();
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10846d
    /* renamed from: a */
    public final void mo22214a(SurfaceView surfaceView) {
        m22223M();
        if (!(surfaceView instanceof VideoDecoderGLSurfaceView)) {
            m22215a(surfaceView == null ? null : surfaceView.getHolder());
            return;
        }
        C11655f c11655f = ((VideoDecoderGLSurfaceView) surfaceView).f38773a;
        m22222N();
        this.f34930H = surfaceView.getHolder();
        m22206a(c11655f);
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10846d
    /* renamed from: a */
    public final void mo22213a(TextureView textureView) {
        m22223M();
        m22221O();
        if (textureView != null) {
            m22206a((AbstractC11657h) null);
        }
        this.f34931I = textureView;
        if (textureView == null) {
            m22216a((Surface) null, true);
            m22219a(0, 0);
            return;
        }
        if (textureView.getSurfaceTextureListener() != null) {
            C11617n.m19863a("SimpleExoPlayer", "Replacing existing SurfaceTextureListener.");
        }
        textureView.setSurfaceTextureListener(this.f34963z);
        SurfaceTexture surfaceTexture = textureView.isAvailable() ? textureView.getSurfaceTexture() : null;
        if (surfaceTexture == null) {
            m22216a((Surface) null, true);
            m22219a(0, 0);
            return;
        }
        m22216a(new Surface(surfaceTexture), true);
        m22219a(textureView.getWidth(), textureView.getHeight());
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac
    /* renamed from: a */
    public final void mo21168a(C10840aa c10840aa) {
        m22223M();
        this.f34962y.mo21168a(c10840aa);
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac
    /* renamed from: a */
    public final void mo21167a(AbstractC10842ac.AbstractC10843a abstractC10843a) {
        C11593a.m20020b(abstractC10843a);
        this.f34962y.mo21167a(abstractC10843a);
    }

    @Override // com.google.android.exoplayer2.AbstractC11168m
    @Deprecated
    /* renamed from: a */
    public final void mo21160a(AbstractC11315r abstractC11315r) {
        m22223M();
        List<AbstractC11315r> singletonList = Collections.singletonList(abstractC11315r);
        m22223M();
        this.f34962y.m21151a(singletonList, 0, -9223372036854775807L, false);
        mo21119q();
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10845c
    /* renamed from: a */
    public final void mo22208a(AbstractC11420j abstractC11420j) {
        C11593a.m20020b(abstractC11420j);
        this.f34942e.add(abstractC11420j);
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10846d
    /* renamed from: a */
    public final void mo22207a(AbstractC11641a abstractC11641a) {
        m22223M();
        this.f34936N = abstractC11641a;
        m22218a(6, 7, abstractC11641a);
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10846d
    /* renamed from: a */
    public final void mo22205a(AbstractC11658i abstractC11658i) {
        m22223M();
        this.f34935M = abstractC11658i;
        m22218a(2, 6, abstractC11658i);
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10846d
    /* renamed from: a */
    public final void mo22204a(AbstractC11662k abstractC11662k) {
        C11593a.m20020b(abstractC11662k);
        this.f34940c.add(abstractC11662k);
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac
    /* renamed from: a */
    public final void mo21150a(boolean z) {
        m22223M();
        int m21952a = this.f34946i.m21952a(z, mo21122n());
        m22202a(z, m21952a, m22203a(z, m21952a));
    }

    /* renamed from: a */
    public final void m22202a(boolean z, int i, int i2) {
        boolean z2 = z && i != -1;
        int i3 = 0;
        if (z2) {
            i3 = 0;
            if (i != 1) {
                i3 = 1;
            }
        }
        this.f34962y.m21149a(z2, i3, i2);
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac
    /* renamed from: b */
    public final int mo21146b(int i) {
        m22223M();
        return this.f34962y.mo21146b(i);
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10846d
    /* renamed from: b */
    public final void mo22201b(Surface surface) {
        m22223M();
        m22221O();
        if (surface != null) {
            m22206a((AbstractC11657h) null);
        }
        int i = 0;
        m22216a(surface, false);
        if (surface != null) {
            i = -1;
        }
        m22219a(i, i);
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10846d
    /* renamed from: b */
    public final void mo22200b(SurfaceView surfaceView) {
        m22223M();
        if (surfaceView instanceof VideoDecoderGLSurfaceView) {
            if (surfaceView.getHolder() != this.f34930H) {
                return;
            }
            m22206a((AbstractC11657h) null);
            this.f34930H = null;
            return;
        }
        SurfaceHolder holder = surfaceView == null ? null : surfaceView.getHolder();
        m22223M();
        if (holder == null || holder != this.f34930H) {
            return;
        }
        m22215a((SurfaceHolder) null);
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10846d
    /* renamed from: b */
    public final void mo22199b(TextureView textureView) {
        m22223M();
        if (textureView == null || textureView != this.f34931I) {
            return;
        }
        mo22213a((TextureView) null);
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac
    /* renamed from: b */
    public final void mo21144b(AbstractC10842ac.AbstractC10843a abstractC10843a) {
        this.f34962y.mo21144b(abstractC10843a);
    }

    @Override // com.google.android.exoplayer2.AbstractC11168m
    /* renamed from: b */
    public final void mo21142b(AbstractC11315r abstractC11315r) {
        m22223M();
        this.f34962y.mo21142b(abstractC11315r);
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10845c
    /* renamed from: b */
    public final void mo22197b(AbstractC11420j abstractC11420j) {
        this.f34942e.remove(abstractC11420j);
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10846d
    /* renamed from: b */
    public final void mo22196b(AbstractC11641a abstractC11641a) {
        m22223M();
        if (this.f34936N != abstractC11641a) {
            return;
        }
        m22218a(6, 7, (Object) null);
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10846d
    /* renamed from: b */
    public final void mo22195b(AbstractC11658i abstractC11658i) {
        m22223M();
        if (this.f34935M != abstractC11658i) {
            return;
        }
        m22218a(2, 6, (Object) null);
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10846d
    /* renamed from: b */
    public final void mo22194b(AbstractC11662k abstractC11662k) {
        this.f34940c.remove(abstractC11662k);
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac
    /* renamed from: b */
    public final void mo21138b(boolean z) {
        m22223M();
        this.f34962y.mo21138b(z);
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac
    /* renamed from: c */
    public final void mo21134c(boolean z) {
        m22223M();
        this.f34946i.m21952a(mo21118r(), 1);
        this.f34962y.mo21134c(z);
        this.f34956s = Collections.emptyList();
    }

    @Override // com.google.android.exoplayer2.AbstractC11168m
    @Deprecated
    /* renamed from: j */
    public final void mo21127j() {
        m22223M();
        mo21119q();
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac
    /* renamed from: k */
    public final AbstractC10842ac.AbstractC10846d mo21125k() {
        return this;
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac
    /* renamed from: l */
    public final AbstractC10842ac.AbstractC10845c mo21124l() {
        return this;
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac
    /* renamed from: m */
    public final Looper mo21123m() {
        return this.f34962y.f36809d;
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac
    /* renamed from: n */
    public final int mo21122n() {
        m22223M();
        return this.f34962y.f36812g.f38952d;
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac
    /* renamed from: o */
    public final int mo21121o() {
        m22223M();
        return this.f34962y.f36812g.f38960l;
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac
    /* renamed from: p */
    public final ExoPlaybackException mo21120p() {
        m22223M();
        return this.f34962y.f36812g.f38953e;
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac
    /* renamed from: q */
    public final void mo21119q() {
        m22223M();
        boolean mo21118r = mo21118r();
        int m21952a = this.f34946i.m21952a(mo21118r, 2);
        m22202a(mo21118r, m21952a, m22203a(mo21118r, m21952a));
        this.f34962y.mo21119q();
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac
    /* renamed from: r */
    public final boolean mo21118r() {
        m22223M();
        return this.f34962y.f36812g.f38959k;
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac
    /* renamed from: s */
    public final int mo21117s() {
        m22223M();
        return this.f34962y.f36810e;
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac
    /* renamed from: t */
    public final boolean mo21116t() {
        m22223M();
        return this.f34962y.f36811f;
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac
    /* renamed from: u */
    public final boolean mo21115u() {
        m22223M();
        return this.f34962y.f36812g.f38954f;
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac
    /* renamed from: v */
    public final C10840aa mo21114v() {
        m22223M();
        return this.f34962y.f36812g.f38961m;
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac
    /* renamed from: w */
    public final void mo21113w() {
        AudioTrack audioTrack;
        m22223M();
        if (C11599af.f38648a < 21 && (audioTrack = this.f34927E) != null) {
            audioTrack.release();
            this.f34927E = null;
        }
        this.f34923A.m21957a(false);
        C10860ak c10860ak = this.f34947j;
        if (c10860ak.f34990c != null) {
            try {
                c10860ak.f34988a.unregisterReceiver(c10860ak.f34990c);
            } catch (RuntimeException e) {
                C11617n.m19862a("StreamVolumeManager", "Error unregistering stream volume receiver", e);
            }
            c10860ak.f34990c = null;
        }
        this.f34924B.m22164a(false);
        this.f34925C.m22162a(false);
        C10919c c10919c = this.f34946i;
        c10919c.f35304a = null;
        c10919c.m21955a();
        this.f34962y.mo21113w();
        this.f34945h.m22311a();
        m22221O();
        Surface surface = this.f34950m;
        if (surface != null) {
            if (this.f34928F) {
                surface.release();
            }
            this.f34950m = null;
        }
        if (this.f34958u) {
            ((PriorityTaskManager) C11593a.m20020b(this.f34957t)).m20027a();
            this.f34958u = false;
        }
        this.f34956s = Collections.emptyList();
        this.f34959v = true;
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac
    /* renamed from: x */
    public final int mo21112x() {
        m22223M();
        return this.f34962y.mo21112x();
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac
    /* renamed from: y */
    public final int mo21111y() {
        m22223M();
        return this.f34962y.mo21111y();
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac
    /* renamed from: z */
    public final long mo21110z() {
        m22223M();
        return this.f34962y.mo21110z();
    }

    @Override // com.google.android.exoplayer2.AbstractC11168m
    /* renamed from: z_ */
    public final AbstractC11444h mo21109z_() {
        m22223M();
        return this.f34962y.f36808c;
    }
}
