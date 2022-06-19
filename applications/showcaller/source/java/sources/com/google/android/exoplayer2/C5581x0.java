package com.google.android.exoplayer2;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.os.Handler;
import android.os.Looper;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import com.google.android.exoplayer2.AbstractC5162o0;
import com.google.android.exoplayer2.C5184r;
import com.google.android.exoplayer2.C5188s;
import com.google.android.exoplayer2.audio.AbstractC4829k;
import com.google.android.exoplayer2.audio.AbstractC4830l;
import com.google.android.exoplayer2.audio.C4825i;
import com.google.android.exoplayer2.drm.AbstractC5040k;
import com.google.android.exoplayer2.drm.C5049o;
import com.google.android.exoplayer2.drm.DefaultDrmSessionManager;
import com.google.android.exoplayer2.metadata.AbstractC5125e;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.p241a1.C4799a;
import com.google.android.exoplayer2.p242b1.C4857d;
import com.google.android.exoplayer2.source.AbstractC5294v;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.text.AbstractC5326j;
import com.google.android.exoplayer2.text.C5317b;
import com.google.android.exoplayer2.trackselection.AbstractC5412h;
import com.google.android.exoplayer2.trackselection.C5411g;
import com.google.android.exoplayer2.upstream.AbstractC5473f;
import com.google.android.exoplayer2.util.AbstractC5510f;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5515h0;
import com.google.android.exoplayer2.util.C5526o;
import com.google.android.exoplayer2.util.PriorityTaskManager;
import com.google.android.exoplayer2.video.AbstractC5561k;
import com.google.android.exoplayer2.video.AbstractC5563m;
import com.google.android.exoplayer2.video.AbstractC5568p;
import com.google.android.exoplayer2.video.AbstractC5569q;
import com.google.android.exoplayer2.video.p261r.AbstractC5571a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;
/* renamed from: com.google.android.exoplayer2.x0 */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/x0.class */
public class C5581x0 extends AbstractC5312t implements AbstractC5162o0, AbstractC5162o0.AbstractC5165c, AbstractC5162o0.AbstractC5164b {

    /* renamed from: A */
    private C4857d f18121A;

    /* renamed from: B */
    private C4857d f18122B;

    /* renamed from: F */
    private AbstractC5294v f18126F;

    /* renamed from: H */
    private AbstractC5563m f18128H;

    /* renamed from: I */
    private AbstractC5571a f18129I;

    /* renamed from: J */
    private boolean f18130J;

    /* renamed from: K */
    private PriorityTaskManager f18131K;

    /* renamed from: L */
    private boolean f18132L;

    /* renamed from: M */
    private boolean f18133M;

    /* renamed from: b */
    protected final AbstractC5187r0[] f18134b;

    /* renamed from: c */
    private final C4863c0 f18135c;

    /* renamed from: d */
    private final Handler f18136d;

    /* renamed from: e */
    private final SurfaceHolder$CallbackC5583b f18137e;

    /* renamed from: f */
    private final CopyOnWriteArraySet<AbstractC5568p> f18138f;

    /* renamed from: g */
    private final CopyOnWriteArraySet<AbstractC4829k> f18139g;

    /* renamed from: j */
    private final CopyOnWriteArraySet<AbstractC5569q> f18142j;

    /* renamed from: k */
    private final CopyOnWriteArraySet<AbstractC4830l> f18143k;

    /* renamed from: l */
    private final AbstractC5473f f18144l;

    /* renamed from: m */
    private final C4799a f18145m;

    /* renamed from: n */
    private final C5184r f18146n;

    /* renamed from: o */
    private final C5188s f18147o;

    /* renamed from: p */
    private final C5591z0 f18148p;

    /* renamed from: q */
    private Format f18149q;

    /* renamed from: r */
    private Format f18150r;

    /* renamed from: s */
    private AbstractC5561k f18151s;

    /* renamed from: t */
    private Surface f18152t;

    /* renamed from: u */
    private boolean f18153u;

    /* renamed from: w */
    private SurfaceHolder f18155w;

    /* renamed from: x */
    private TextureView f18156x;

    /* renamed from: y */
    private int f18157y;

    /* renamed from: z */
    private int f18158z;

    /* renamed from: h */
    private final CopyOnWriteArraySet<AbstractC5326j> f18140h = new CopyOnWriteArraySet<>();

    /* renamed from: i */
    private final CopyOnWriteArraySet<AbstractC5125e> f18141i = new CopyOnWriteArraySet<>();

    /* renamed from: E */
    private float f18125E = 1.0f;

    /* renamed from: C */
    private int f18123C = 0;

    /* renamed from: D */
    private C4825i f18124D = C4825i.f14616a;

    /* renamed from: v */
    private int f18154v = 1;

    /* renamed from: G */
    private List<C5317b> f18127G = Collections.emptyList();

    /* renamed from: com.google.android.exoplayer2.x0$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/x0$b.class */
    public final class SurfaceHolder$CallbackC5583b implements AbstractC5569q, AbstractC4830l, AbstractC5326j, AbstractC5125e, SurfaceHolder.Callback, TextureView.SurfaceTextureListener, C5188s.AbstractC5190b, C5184r.AbstractC5186b, AbstractC5162o0.AbstractC5163a {
        private SurfaceHolder$CallbackC5583b() {
            C5581x0.this = r4;
        }

        @Override // com.google.android.exoplayer2.audio.AbstractC4830l, com.google.android.exoplayer2.audio.AbstractC4829k
        /* renamed from: a */
        public void mo18399a(int i) {
            if (C5581x0.this.f18123C == i) {
                return;
            }
            C5581x0.this.f18123C = i;
            Iterator it = C5581x0.this.f18139g.iterator();
            while (it.hasNext()) {
                AbstractC4829k abstractC4829k = (AbstractC4829k) it.next();
                if (!C5581x0.this.f18143k.contains(abstractC4829k)) {
                    abstractC4829k.mo18399a(i);
                }
            }
            Iterator it2 = C5581x0.this.f18143k.iterator();
            while (it2.hasNext()) {
                ((AbstractC4830l) it2.next()).mo18399a(i);
            }
        }

        @Override // com.google.android.exoplayer2.audio.AbstractC4830l
        /* renamed from: b */
        public void mo18398b(C4857d c4857d) {
            Iterator it = C5581x0.this.f18143k.iterator();
            while (it.hasNext()) {
                ((AbstractC4830l) it.next()).mo18398b(c4857d);
            }
            C5581x0.this.f18150r = null;
            C5581x0.this.f18122B = null;
            C5581x0.this.f18123C = 0;
        }

        @Override // com.google.android.exoplayer2.audio.AbstractC4830l
        /* renamed from: c */
        public void mo18397c(C4857d c4857d) {
            C5581x0.this.f18122B = c4857d;
            Iterator it = C5581x0.this.f18143k.iterator();
            while (it.hasNext()) {
                ((AbstractC4830l) it.next()).mo18397c(c4857d);
            }
        }

        @Override // com.google.android.exoplayer2.video.AbstractC5569q
        /* renamed from: d */
        public void mo18396d(String str, long j, long j2) {
            Iterator it = C5581x0.this.f18142j.iterator();
            while (it.hasNext()) {
                ((AbstractC5569q) it.next()).mo18396d(str, j, j2);
            }
        }

        @Override // com.google.android.exoplayer2.C5184r.AbstractC5186b
        /* renamed from: e */
        public void mo18395e() {
            C5581x0.this.mo18406w(false);
        }

        @Override // com.google.android.exoplayer2.C5188s.AbstractC5190b
        /* renamed from: f */
        public void mo18394f(float f) {
            C5581x0.this.m18474D0();
        }

        @Override // com.google.android.exoplayer2.C5188s.AbstractC5190b
        /* renamed from: g */
        public void mo18393g(int i) {
            C5581x0 c5581x0 = C5581x0.this;
            c5581x0.m18463J0(c5581x0.mo18435h(), i);
        }

        @Override // com.google.android.exoplayer2.text.AbstractC5326j
        /* renamed from: h */
        public void mo18392h(List<C5317b> list) {
            C5581x0.this.f18127G = list;
            Iterator it = C5581x0.this.f18140h.iterator();
            while (it.hasNext()) {
                ((AbstractC5326j) it.next()).mo18392h(list);
            }
        }

        @Override // com.google.android.exoplayer2.video.AbstractC5569q
        /* renamed from: k */
        public void mo18391k(Surface surface) {
            if (C5581x0.this.f18152t == surface) {
                Iterator it = C5581x0.this.f18138f.iterator();
                while (it.hasNext()) {
                    ((AbstractC5568p) it.next()).onRenderedFirstFrame();
                }
            }
            Iterator it2 = C5581x0.this.f18142j.iterator();
            while (it2.hasNext()) {
                ((AbstractC5569q) it2.next()).mo18391k(surface);
            }
        }

        @Override // com.google.android.exoplayer2.audio.AbstractC4830l
        /* renamed from: m */
        public void mo18390m(String str, long j, long j2) {
            Iterator it = C5581x0.this.f18143k.iterator();
            while (it.hasNext()) {
                ((AbstractC4830l) it.next()).mo18390m(str, j, j2);
            }
        }

        @Override // com.google.android.exoplayer2.metadata.AbstractC5125e
        /* renamed from: n */
        public void mo18389n(Metadata metadata) {
            Iterator it = C5581x0.this.f18141i.iterator();
            while (it.hasNext()) {
                ((AbstractC5125e) it.next()).mo18389n(metadata);
            }
        }

        @Override // com.google.android.exoplayer2.AbstractC5162o0.AbstractC5163a
        public /* synthetic */ void onIsPlayingChanged(boolean z) {
            C5160n0.m20286a(this, z);
        }

        @Override // com.google.android.exoplayer2.AbstractC5162o0.AbstractC5163a
        public void onLoadingChanged(boolean z) {
            if (C5581x0.this.f18131K != null) {
                if (z && !C5581x0.this.f18132L) {
                    C5581x0.this.f18131K.m18929a(0);
                    C5581x0.this.f18132L = true;
                } else if (z || !C5581x0.this.f18132L) {
                } else {
                    C5581x0.this.f18131K.m18928b(0);
                    C5581x0.this.f18132L = false;
                }
            }
        }

        @Override // com.google.android.exoplayer2.AbstractC5162o0.AbstractC5163a
        public /* synthetic */ void onPlaybackParametersChanged(C5102l0 c5102l0) {
            C5160n0.m20284c(this, c5102l0);
        }

        @Override // com.google.android.exoplayer2.AbstractC5162o0.AbstractC5163a
        public /* synthetic */ void onPlaybackSuppressionReasonChanged(int i) {
            C5160n0.m20283d(this, i);
        }

        @Override // com.google.android.exoplayer2.AbstractC5162o0.AbstractC5163a
        public /* synthetic */ void onPlayerError(ExoPlaybackException exoPlaybackException) {
            C5160n0.m20282e(this, exoPlaybackException);
        }

        @Override // com.google.android.exoplayer2.AbstractC5162o0.AbstractC5163a
        public void onPlayerStateChanged(boolean z, int i) {
            if (i != 1) {
                if (i == 2 || i == 3) {
                    C5581x0.this.f18148p.m18318a(z);
                    return;
                } else if (i != 4) {
                    return;
                }
            }
            C5581x0.this.f18148p.m18318a(false);
        }

        @Override // com.google.android.exoplayer2.AbstractC5162o0.AbstractC5163a
        public /* synthetic */ void onPositionDiscontinuity(int i) {
            C5160n0.m20281f(this, i);
        }

        @Override // com.google.android.exoplayer2.AbstractC5162o0.AbstractC5163a
        public /* synthetic */ void onRepeatModeChanged(int i) {
            C5160n0.m20280g(this, i);
        }

        @Override // com.google.android.exoplayer2.AbstractC5162o0.AbstractC5163a
        public /* synthetic */ void onSeekProcessed() {
            C5160n0.m20279h(this);
        }

        @Override // com.google.android.exoplayer2.AbstractC5162o0.AbstractC5163a
        public /* synthetic */ void onShuffleModeEnabledChanged(boolean z) {
            C5160n0.m20278i(this, z);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
            C5581x0.this.m18467H0(new Surface(surfaceTexture), true);
            C5581x0.this.m18401y0(i, i2);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
            C5581x0.this.m18467H0(null, true);
            C5581x0.this.m18401y0(0, 0);
            return true;
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
            C5581x0.this.m18401y0(i, i2);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        }

        @Override // com.google.android.exoplayer2.AbstractC5162o0.AbstractC5163a
        public /* synthetic */ void onTimelineChanged(AbstractC5585y0 abstractC5585y0, int i) {
            C5160n0.m20277j(this, abstractC5585y0, i);
        }

        @Override // com.google.android.exoplayer2.AbstractC5162o0.AbstractC5163a
        public /* synthetic */ void onTimelineChanged(AbstractC5585y0 abstractC5585y0, Object obj, int i) {
            C5160n0.m20276k(this, abstractC5585y0, obj, i);
        }

        @Override // com.google.android.exoplayer2.AbstractC5162o0.AbstractC5163a
        public /* synthetic */ void onTracksChanged(TrackGroupArray trackGroupArray, C5411g c5411g) {
            C5160n0.m20275l(this, trackGroupArray, c5411g);
        }

        @Override // com.google.android.exoplayer2.video.AbstractC5569q, com.google.android.exoplayer2.video.AbstractC5568p
        public void onVideoSizeChanged(int i, int i2, int i3, float f) {
            Iterator it = C5581x0.this.f18138f.iterator();
            while (it.hasNext()) {
                AbstractC5568p abstractC5568p = (AbstractC5568p) it.next();
                if (!C5581x0.this.f18142j.contains(abstractC5568p)) {
                    abstractC5568p.onVideoSizeChanged(i, i2, i3, f);
                }
            }
            Iterator it2 = C5581x0.this.f18142j.iterator();
            while (it2.hasNext()) {
                ((AbstractC5569q) it2.next()).onVideoSizeChanged(i, i2, i3, f);
            }
        }

        @Override // com.google.android.exoplayer2.video.AbstractC5569q
        /* renamed from: p */
        public void mo18388p(int i, long j) {
            Iterator it = C5581x0.this.f18142j.iterator();
            while (it.hasNext()) {
                ((AbstractC5569q) it.next()).mo18388p(i, j);
            }
        }

        @Override // com.google.android.exoplayer2.video.AbstractC5569q
        /* renamed from: s */
        public void mo18387s(Format format) {
            C5581x0.this.f18149q = format;
            Iterator it = C5581x0.this.f18142j.iterator();
            while (it.hasNext()) {
                ((AbstractC5569q) it.next()).mo18387s(format);
            }
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
            C5581x0.this.m18401y0(i2, i3);
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceCreated(SurfaceHolder surfaceHolder) {
            C5581x0.this.m18467H0(surfaceHolder.getSurface(), false);
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
            C5581x0.this.m18467H0(null, false);
            C5581x0.this.m18401y0(0, 0);
        }

        @Override // com.google.android.exoplayer2.video.AbstractC5569q
        /* renamed from: t */
        public void mo18386t(C4857d c4857d) {
            C5581x0.this.f18121A = c4857d;
            Iterator it = C5581x0.this.f18142j.iterator();
            while (it.hasNext()) {
                ((AbstractC5569q) it.next()).mo18386t(c4857d);
            }
        }

        @Override // com.google.android.exoplayer2.audio.AbstractC4830l
        /* renamed from: v */
        public void mo18385v(Format format) {
            C5581x0.this.f18150r = format;
            Iterator it = C5581x0.this.f18143k.iterator();
            while (it.hasNext()) {
                ((AbstractC4830l) it.next()).mo18385v(format);
            }
        }

        @Override // com.google.android.exoplayer2.audio.AbstractC4830l
        /* renamed from: x */
        public void mo18384x(int i, long j, long j2) {
            Iterator it = C5581x0.this.f18143k.iterator();
            while (it.hasNext()) {
                ((AbstractC4830l) it.next()).mo18384x(i, j, j2);
            }
        }

        @Override // com.google.android.exoplayer2.video.AbstractC5569q
        /* renamed from: y */
        public void mo18383y(C4857d c4857d) {
            Iterator it = C5581x0.this.f18142j.iterator();
            while (it.hasNext()) {
                ((AbstractC5569q) it.next()).mo18383y(c4857d);
            }
            C5581x0.this.f18149q = null;
            C5581x0.this.f18121A = null;
        }
    }

    @Deprecated
    public C5581x0(Context context, AbstractC5544v0 abstractC5544v0, AbstractC5412h abstractC5412h, AbstractC5092g0 abstractC5092g0, AbstractC5040k<C5049o> abstractC5040k, AbstractC5473f abstractC5473f, C4799a c4799a, AbstractC5510f abstractC5510f, Looper looper) {
        this.f18144l = abstractC5473f;
        this.f18145m = c4799a;
        SurfaceHolder$CallbackC5583b surfaceHolder$CallbackC5583b = new SurfaceHolder$CallbackC5583b();
        this.f18137e = surfaceHolder$CallbackC5583b;
        CopyOnWriteArraySet<AbstractC5568p> copyOnWriteArraySet = new CopyOnWriteArraySet<>();
        this.f18138f = copyOnWriteArraySet;
        CopyOnWriteArraySet<AbstractC4829k> copyOnWriteArraySet2 = new CopyOnWriteArraySet<>();
        this.f18139g = copyOnWriteArraySet2;
        CopyOnWriteArraySet<AbstractC5569q> copyOnWriteArraySet3 = new CopyOnWriteArraySet<>();
        this.f18142j = copyOnWriteArraySet3;
        CopyOnWriteArraySet<AbstractC4830l> copyOnWriteArraySet4 = new CopyOnWriteArraySet<>();
        this.f18143k = copyOnWriteArraySet4;
        Handler handler = new Handler(looper);
        this.f18136d = handler;
        AbstractC5187r0[] mo18628a = abstractC5544v0.mo18628a(handler, surfaceHolder$CallbackC5583b, surfaceHolder$CallbackC5583b, surfaceHolder$CallbackC5583b, surfaceHolder$CallbackC5583b, abstractC5040k);
        this.f18134b = mo18628a;
        C4863c0 c4863c0 = new C4863c0(mo18628a, abstractC5412h, abstractC5092g0, abstractC5473f, abstractC5510f, looper);
        this.f18135c = c4863c0;
        c4799a.m21713L(c4863c0);
        mo18422o(c4799a);
        mo18422o(surfaceHolder$CallbackC5583b);
        copyOnWriteArraySet3.add(c4799a);
        copyOnWriteArraySet.add(c4799a);
        copyOnWriteArraySet4.add(c4799a);
        copyOnWriteArraySet2.add(c4799a);
        m18409u0(c4799a);
        abstractC5473f.mo19002g(handler, c4799a);
        if (abstractC5040k instanceof DefaultDrmSessionManager) {
            ((DefaultDrmSessionManager) abstractC5040k).m20808h(handler, c4799a);
        }
        this.f18146n = new C5184r(context, handler, surfaceHolder$CallbackC5583b);
        this.f18147o = new C5188s(context, handler, surfaceHolder$CallbackC5583b);
        this.f18148p = new C5591z0(context);
    }

    /* renamed from: C0 */
    private void m18476C0() {
        TextureView textureView = this.f18156x;
        if (textureView != null) {
            if (textureView.getSurfaceTextureListener() != this.f18137e) {
                C5526o.m18742f("SimpleExoPlayer", "SurfaceTextureListener already unset or replaced.");
            } else {
                this.f18156x.setSurfaceTextureListener(null);
            }
            this.f18156x = null;
        }
        SurfaceHolder surfaceHolder = this.f18155w;
        if (surfaceHolder != null) {
            surfaceHolder.removeCallback(this.f18137e);
            this.f18155w = null;
        }
    }

    /* renamed from: D0 */
    public void m18474D0() {
        AbstractC5187r0[] abstractC5187r0Arr;
        float f = this.f18125E;
        float m20206f = this.f18147o.m20206f();
        for (AbstractC5187r0 abstractC5187r0 : this.f18134b) {
            if (abstractC5187r0.mo19258i() == 1) {
                this.f18135c.m21408Z(abstractC5187r0).m20216n(2).m20217m(Float.valueOf(f * m20206f)).m20218l();
            }
        }
    }

    /* renamed from: F0 */
    private void m18471F0(AbstractC5561k abstractC5561k) {
        AbstractC5187r0[] abstractC5187r0Arr;
        for (AbstractC5187r0 abstractC5187r0 : this.f18134b) {
            if (abstractC5187r0.mo19258i() == 2) {
                this.f18135c.m21408Z(abstractC5187r0).m20216n(8).m20217m(abstractC5561k).m20218l();
            }
        }
        this.f18151s = abstractC5561k;
    }

    /* renamed from: H0 */
    public void m18467H0(Surface surface, boolean z) {
        AbstractC5187r0[] abstractC5187r0Arr;
        ArrayList<C5179p0> arrayList = new ArrayList();
        for (AbstractC5187r0 abstractC5187r0 : this.f18134b) {
            if (abstractC5187r0.mo19258i() == 2) {
                arrayList.add(this.f18135c.m21408Z(abstractC5187r0).m20216n(1).m20217m(surface).m20218l());
            }
        }
        Surface surface2 = this.f18152t;
        if (surface2 != null && surface2 != surface) {
            try {
                for (C5179p0 c5179p0 : arrayList) {
                    c5179p0.m20229a();
                }
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
            }
            if (this.f18153u) {
                this.f18152t.release();
            }
        }
        this.f18152t = surface;
        this.f18153u = z;
    }

    /* renamed from: J0 */
    public void m18463J0(boolean z, int i) {
        boolean z2 = z && i != -1;
        int i2 = 0;
        if (z2) {
            i2 = 0;
            if (i != 1) {
                i2 = 1;
            }
        }
        this.f18135c.m21389s0(z2, i2);
    }

    /* renamed from: K0 */
    private void m18461K0() {
        if (Looper.myLooper() != mo18459M()) {
            C5526o.m18741g("SimpleExoPlayer", "Player is accessed on the wrong thread. See https://exoplayer.dev/issues/player-accessed-on-wrong-thread", this.f18130J ? null : new IllegalStateException());
            this.f18130J = true;
        }
    }

    /* renamed from: y0 */
    public void m18401y0(int i, int i2) {
        if (i == this.f18157y && i2 == this.f18158z) {
            return;
        }
        this.f18157y = i;
        this.f18158z = i2;
        Iterator<AbstractC5568p> it = this.f18138f.iterator();
        while (it.hasNext()) {
            it.next().onSurfaceSizeChanged(i, i2);
        }
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0
    /* renamed from: A */
    public long mo18481A() {
        m18461K0();
        return this.f18135c.mo18481A();
    }

    /* renamed from: A0 */
    public void m18480A0(AbstractC5294v abstractC5294v, boolean z, boolean z2) {
        m18461K0();
        AbstractC5294v abstractC5294v2 = this.f18126F;
        if (abstractC5294v2 != null) {
            abstractC5294v2.mo19846e(this.f18145m);
            this.f18145m.m21714K();
        }
        this.f18126F = abstractC5294v;
        abstractC5294v.mo19847d(this.f18136d, this.f18145m);
        m18463J0(mo18435h(), this.f18147o.m20203i(mo18435h()));
        this.f18135c.m21391q0(abstractC5294v, z, z2);
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0
    /* renamed from: B */
    public int mo18479B() {
        m18461K0();
        return this.f18135c.mo18479B();
    }

    /* renamed from: B0 */
    public void m18478B0() {
        m18461K0();
        this.f18146n.m20212b(false);
        this.f18147o.m20201k();
        this.f18148p.m18318a(false);
        this.f18135c.m21390r0();
        m18476C0();
        Surface surface = this.f18152t;
        if (surface != null) {
            if (this.f18153u) {
                surface.release();
            }
            this.f18152t = null;
        }
        AbstractC5294v abstractC5294v = this.f18126F;
        if (abstractC5294v != null) {
            abstractC5294v.mo19846e(this.f18145m);
            this.f18126F = null;
        }
        if (this.f18132L) {
            ((PriorityTaskManager) C5508e.m18911e(this.f18131K)).m18928b(0);
            this.f18132L = false;
        }
        this.f18144l.mo19004d(this.f18145m);
        this.f18127G = Collections.emptyList();
        this.f18133M = true;
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0.AbstractC5165c
    /* renamed from: C */
    public void mo18477C(AbstractC5563m abstractC5563m) {
        AbstractC5187r0[] abstractC5187r0Arr;
        m18461K0();
        if (this.f18128H != abstractC5563m) {
            return;
        }
        for (AbstractC5187r0 abstractC5187r0 : this.f18134b) {
            if (abstractC5187r0.mo19258i() == 2) {
                this.f18135c.m21408Z(abstractC5187r0).m20216n(6).m20217m(null).m20218l();
            }
        }
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0
    /* renamed from: D */
    public int mo18475D() {
        m18461K0();
        return this.f18135c.mo18475D();
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0
    /* renamed from: E */
    public void mo18473E(int i) {
        m18461K0();
        this.f18135c.mo18473E(i);
    }

    /* renamed from: E0 */
    public void m18472E0(C5102l0 c5102l0) {
        m18461K0();
        this.f18135c.m21388t0(c5102l0);
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0.AbstractC5165c
    /* renamed from: G */
    public void mo18470G(SurfaceView surfaceView) {
        m18403x0(surfaceView == null ? null : surfaceView.getHolder());
    }

    /* renamed from: G0 */
    public void m18469G0(SurfaceHolder surfaceHolder) {
        m18461K0();
        m18476C0();
        if (surfaceHolder != null) {
            m18407v0();
        }
        this.f18155w = surfaceHolder;
        if (surfaceHolder == null) {
            m18467H0(null, false);
            m18401y0(0, 0);
            return;
        }
        surfaceHolder.addCallback(this.f18137e);
        Surface surface = surfaceHolder.getSurface();
        if (surface == null || !surface.isValid()) {
            m18467H0(null, false);
            m18401y0(0, 0);
            return;
        }
        m18467H0(surface, false);
        Rect surfaceFrame = surfaceHolder.getSurfaceFrame();
        m18401y0(surfaceFrame.width(), surfaceFrame.height());
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0.AbstractC5164b
    /* renamed from: H */
    public void mo18468H(AbstractC5326j abstractC5326j) {
        if (!this.f18127G.isEmpty()) {
            abstractC5326j.mo18392h(this.f18127G);
        }
        this.f18140h.add(abstractC5326j);
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0
    /* renamed from: I */
    public int mo18466I() {
        m18461K0();
        return this.f18135c.mo18466I();
    }

    /* renamed from: I0 */
    public void m18465I0(float f) {
        m18461K0();
        float m18821m = C5515h0.m18821m(f, 0.0f, 1.0f);
        if (this.f18125E == m18821m) {
            return;
        }
        this.f18125E = m18821m;
        m18474D0();
        Iterator<AbstractC4829k> it = this.f18139g.iterator();
        while (it.hasNext()) {
            it.next().mo21574g(m18821m);
        }
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0
    /* renamed from: J */
    public TrackGroupArray mo18464J() {
        m18461K0();
        return this.f18135c.mo18464J();
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0
    /* renamed from: K */
    public int mo18462K() {
        m18461K0();
        return this.f18135c.mo18462K();
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0
    /* renamed from: L */
    public AbstractC5585y0 mo18460L() {
        m18461K0();
        return this.f18135c.mo18460L();
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0
    /* renamed from: M */
    public Looper mo18459M() {
        return this.f18135c.mo18459M();
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0
    /* renamed from: N */
    public boolean mo18458N() {
        m18461K0();
        return this.f18135c.mo18458N();
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0
    /* renamed from: O */
    public long mo18457O() {
        m18461K0();
        return this.f18135c.mo18457O();
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0.AbstractC5165c
    /* renamed from: P */
    public void mo18456P(TextureView textureView) {
        m18461K0();
        m18476C0();
        if (textureView != null) {
            m18407v0();
        }
        this.f18156x = textureView;
        if (textureView == null) {
            m18467H0(null, true);
            m18401y0(0, 0);
            return;
        }
        if (textureView.getSurfaceTextureListener() != null) {
            C5526o.m18742f("SimpleExoPlayer", "Replacing existing SurfaceTextureListener.");
        }
        textureView.setSurfaceTextureListener(this.f18137e);
        SurfaceTexture surfaceTexture = textureView.isAvailable() ? textureView.getSurfaceTexture() : null;
        if (surfaceTexture == null) {
            m18467H0(null, true);
            m18401y0(0, 0);
            return;
        }
        m18467H0(new Surface(surfaceTexture), true);
        m18401y0(textureView.getWidth(), textureView.getHeight());
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0
    /* renamed from: Q */
    public C5411g mo18455Q() {
        m18461K0();
        return this.f18135c.mo18455Q();
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0
    /* renamed from: R */
    public int mo18454R(int i) {
        m18461K0();
        return this.f18135c.mo18454R(i);
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0.AbstractC5165c
    /* renamed from: S */
    public void mo18453S(AbstractC5568p abstractC5568p) {
        this.f18138f.remove(abstractC5568p);
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0
    /* renamed from: T */
    public AbstractC5162o0.AbstractC5164b mo18452T() {
        return this;
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0.AbstractC5165c
    /* renamed from: a */
    public void mo18449a(Surface surface) {
        m18461K0();
        m18476C0();
        if (surface != null) {
            m18407v0();
        }
        int i = 0;
        m18467H0(surface, false);
        if (surface != null) {
            i = -1;
        }
        m18401y0(i, i);
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0.AbstractC5165c
    /* renamed from: b */
    public void mo18447b(AbstractC5571a abstractC5571a) {
        AbstractC5187r0[] abstractC5187r0Arr;
        m18461K0();
        this.f18129I = abstractC5571a;
        for (AbstractC5187r0 abstractC5187r0 : this.f18134b) {
            if (abstractC5187r0.mo19258i() == 5) {
                this.f18135c.m21408Z(abstractC5187r0).m20216n(7).m20217m(abstractC5571a).m20218l();
            }
        }
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0.AbstractC5165c
    /* renamed from: c */
    public void mo18445c(AbstractC5563m abstractC5563m) {
        AbstractC5187r0[] abstractC5187r0Arr;
        m18461K0();
        this.f18128H = abstractC5563m;
        for (AbstractC5187r0 abstractC5187r0 : this.f18134b) {
            if (abstractC5187r0.mo19258i() == 2) {
                this.f18135c.m21408Z(abstractC5187r0).m20216n(6).m20217m(abstractC5563m).m20218l();
            }
        }
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0
    /* renamed from: d */
    public C5102l0 mo18443d() {
        m18461K0();
        return this.f18135c.mo18443d();
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0
    /* renamed from: e */
    public boolean mo18441e() {
        m18461K0();
        return this.f18135c.mo18441e();
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0
    /* renamed from: f */
    public long mo18439f() {
        m18461K0();
        return this.f18135c.mo18439f();
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0
    /* renamed from: g */
    public void mo18437g(int i, long j) {
        m18461K0();
        this.f18145m.m21715J();
        this.f18135c.mo18437g(i, j);
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0
    public long getCurrentPosition() {
        m18461K0();
        return this.f18135c.getCurrentPosition();
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0
    public long getDuration() {
        m18461K0();
        return this.f18135c.getDuration();
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0
    /* renamed from: h */
    public boolean mo18435h() {
        m18461K0();
        return this.f18135c.mo18435h();
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0.AbstractC5165c
    /* renamed from: i */
    public void mo18433i(Surface surface) {
        m18461K0();
        if (surface == null || surface != this.f18152t) {
            return;
        }
        m18405w0();
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0
    /* renamed from: j */
    public void mo18431j(boolean z) {
        m18461K0();
        this.f18135c.mo18431j(z);
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0
    /* renamed from: k */
    public ExoPlaybackException mo18429k() {
        m18461K0();
        return this.f18135c.mo18429k();
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0.AbstractC5165c
    /* renamed from: l */
    public void mo18427l(AbstractC5571a abstractC5571a) {
        AbstractC5187r0[] abstractC5187r0Arr;
        m18461K0();
        if (this.f18129I != abstractC5571a) {
            return;
        }
        for (AbstractC5187r0 abstractC5187r0 : this.f18134b) {
            if (abstractC5187r0.mo19258i() == 5) {
                this.f18135c.m21408Z(abstractC5187r0).m20216n(7).m20217m(null).m20218l();
            }
        }
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0.AbstractC5165c
    /* renamed from: n */
    public void mo18424n(TextureView textureView) {
        m18461K0();
        if (textureView == null || textureView != this.f18156x) {
            return;
        }
        mo18456P(null);
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0
    /* renamed from: o */
    public void mo18422o(AbstractC5162o0.AbstractC5163a abstractC5163a) {
        m18461K0();
        this.f18135c.mo18422o(abstractC5163a);
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0.AbstractC5165c
    /* renamed from: p */
    public void mo18420p(AbstractC5561k abstractC5561k) {
        m18461K0();
        if (abstractC5561k != null) {
            m18405w0();
        }
        m18471F0(abstractC5561k);
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0
    /* renamed from: q */
    public int mo18418q() {
        m18461K0();
        return this.f18135c.mo18418q();
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0.AbstractC5165c
    /* renamed from: r */
    public void mo18416r(SurfaceView surfaceView) {
        m18469G0(surfaceView == null ? null : surfaceView.getHolder());
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0.AbstractC5164b
    /* renamed from: s */
    public void mo18414s(AbstractC5326j abstractC5326j) {
        this.f18140h.remove(abstractC5326j);
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0
    /* renamed from: t */
    public void mo18412t(AbstractC5162o0.AbstractC5163a abstractC5163a) {
        m18461K0();
        this.f18135c.mo18412t(abstractC5163a);
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0
    /* renamed from: u */
    public int mo18410u() {
        m18461K0();
        return this.f18135c.mo18410u();
    }

    /* renamed from: u0 */
    public void m18409u0(AbstractC5125e abstractC5125e) {
        this.f18141i.add(abstractC5125e);
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0.AbstractC5165c
    /* renamed from: v */
    public void mo18408v(AbstractC5568p abstractC5568p) {
        this.f18138f.add(abstractC5568p);
    }

    /* renamed from: v0 */
    public void m18407v0() {
        m18461K0();
        m18471F0(null);
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0
    /* renamed from: w */
    public void mo18406w(boolean z) {
        m18461K0();
        m18463J0(z, this.f18147o.m20202j(z, mo18479B()));
    }

    /* renamed from: w0 */
    public void m18405w0() {
        m18461K0();
        m18476C0();
        m18467H0(null, false);
        m18401y0(0, 0);
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0
    /* renamed from: x */
    public AbstractC5162o0.AbstractC5165c mo18404x() {
        return this;
    }

    /* renamed from: x0 */
    public void m18403x0(SurfaceHolder surfaceHolder) {
        m18461K0();
        if (surfaceHolder == null || surfaceHolder != this.f18155w) {
            return;
        }
        m18469G0(null);
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0
    /* renamed from: y */
    public long mo18402y() {
        m18461K0();
        return this.f18135c.mo18402y();
    }

    /* renamed from: z0 */
    public void m18400z0(AbstractC5294v abstractC5294v) {
        m18480A0(abstractC5294v, true, true);
    }
}
