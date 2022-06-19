package com.google.android.exoplayer2;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.media.PlaybackParams;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.trackselection.DefaultTrackSelector;
import com.mopub.mobileads.AdData;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicBoolean;
import p1727n3.p1789g0.C26232y;
import p193e.p1577m.p1578a.p1596c.AbstractC24196c0;
import p193e.p1577m.p1578a.p1596c.AbstractC24460i0;
import p193e.p1577m.p1578a.p1596c.AbstractC24760q0;
import p193e.p1577m.p1578a.p1596c.AbstractC24848t;
import p193e.p1577m.p1578a.p1596c.AbstractC24853u0;
import p193e.p1577m.p1578a.p1596c.AbstractC24857w0;
import p193e.p1577m.p1578a.p1596c.AbstractC24861y0;
import p193e.p1577m.p1578a.p1596c.C24186a0;
import p193e.p1577m.p1578a.p1596c.C24187a1;
import p193e.p1577m.p1578a.p1596c.C24189b0;
import p193e.p1577m.p1578a.p1596c.C24246d0;
import p193e.p1577m.p1578a.p1596c.C24253e0;
import p193e.p1577m.p1578a.p1596c.C24652o0;
import p193e.p1577m.p1578a.p1596c.C24808r;
import p193e.p1577m.p1578a.p1596c.C24811r0;
import p193e.p1577m.p1578a.p1596c.C24842s;
import p193e.p1577m.p1578a.p1596c.C24845s0;
import p193e.p1577m.p1578a.p1596c.C24854v;
import p193e.p1577m.p1578a.p1596c.C24859x0;
import p193e.p1577m.p1578a.p1596c.C24860y;
import p193e.p1577m.p1578a.p1596c.C24867z0;
import p193e.p1577m.p1578a.p1596c.p1597b1.AbstractC24193b;
import p193e.p1577m.p1578a.p1596c.p1597b1.C24190a;
import p193e.p1577m.p1578a.p1596c.p1598c1.AbstractC24212k;
import p193e.p1577m.p1578a.p1596c.p1598c1.AbstractC24213l;
import p193e.p1577m.p1578a.p1596c.p1598c1.AbstractC24216m;
import p193e.p1577m.p1578a.p1596c.p1598c1.C24209i;
import p193e.p1577m.p1578a.p1596c.p1598c1.C24211j;
import p193e.p1577m.p1578a.p1596c.p1598c1.C24227q;
import p193e.p1577m.p1578a.p1596c.p1598c1.C24230t;
import p193e.p1577m.p1578a.p1596c.p1598c1.C24239w;
import p193e.p1577m.p1578a.p1596c.p1600e1.C24264d;
import p193e.p1577m.p1578a.p1596c.p1601f1.AbstractC24279e;
import p193e.p1577m.p1578a.p1596c.p1601f1.C24272b;
import p193e.p1577m.p1578a.p1596c.p1601f1.C24283h;
import p193e.p1577m.p1578a.p1596c.p1612h1.AbstractC24449g;
import p193e.p1577m.p1578a.p1596c.p1613i1.AbstractC24466e;
import p193e.p1577m.p1578a.p1596c.p1613i1.C24467f;
import p193e.p1577m.p1578a.p1596c.p1620l1.AbstractC24531p;
import p193e.p1577m.p1578a.p1596c.p1622m1.AbstractC24572k;
import p193e.p1577m.p1578a.p1596c.p1622m1.C24562b;
import p193e.p1577m.p1578a.p1596c.p1622m1.C24573l;
import p193e.p1577m.p1578a.p1596c.p1631n1.AbstractC24649h;
import p193e.p1577m.p1578a.p1596c.p1631n1.C24648g;
import p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24695f;
import p193e.p1577m.p1578a.p1596c.p1634p1.C24743o;
import p193e.p1577m.p1578a.p1596c.p1634p1.C24744p;
import p193e.p1577m.p1578a.p1596c.p1636q1.AbstractC24776f;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24789n;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24800v;
import p193e.p1577m.p1578a.p1596c.p1637r1.AbstractC24826m;
import p193e.p1577m.p1578a.p1596c.p1637r1.AbstractC24828o;
import p193e.p1577m.p1578a.p1596c.p1637r1.AbstractC24833r;
import p193e.p1577m.p1578a.p1596c.p1637r1.AbstractC24834s;
import p193e.p1577m.p1578a.p1596c.p1637r1.C24822k;
import p193e.p1577m.p1578a.p1596c.p1637r1.p1638t.AbstractC24836a;
import p193e.p1577m.p1578a.p1596c.p1637r1.p1638t.C24837b;
/* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/SimpleExoPlayer.class */
public class SimpleExoPlayer extends AbstractC24848t implements AbstractC24196c0, AbstractC24760q0.AbstractC24761a, AbstractC24760q0.AbstractC24765e, AbstractC24760q0.AbstractC24764d, AbstractC24760q0.AbstractC24763c {
    private static final String TAG = "SimpleExoPlayer";
    private final C24190a analyticsCollector;
    private C24209i audioAttributes;
    private final C24808r audioBecomingNoisyManager;
    private final CopyOnWriteArraySet<AbstractC24216m> audioDebugListeners;
    private C24264d audioDecoderCounters;
    private final C24842s audioFocusManager;
    private Format audioFormat;
    private final CopyOnWriteArraySet<AbstractC24212k> audioListeners;
    private int audioSessionId;
    private float audioVolume;
    private final AbstractC24695f bandwidthMeter;
    private AbstractC24836a cameraMotionListener;
    private final SurfaceHolder$CallbackC1965c componentListener;
    private List<C24562b> currentCues;
    private final Handler eventHandler;
    private boolean hasNotifiedFullWrongThreadWarning;
    private boolean isPriorityTaskManagerRegistered;
    private AbstractC24531p mediaSource;
    private final CopyOnWriteArraySet<AbstractC24466e> metadataOutputs;
    private boolean ownsSurface;
    private final C24246d0 player;
    private boolean playerReleased;
    private C24800v priorityTaskManager;
    public final AbstractC24853u0[] renderers;
    private Surface surface;
    private int surfaceHeight;
    private SurfaceHolder surfaceHolder;
    private int surfaceWidth;
    private final CopyOnWriteArraySet<AbstractC24572k> textOutputs;
    private TextureView textureView;
    private final CopyOnWriteArraySet<AbstractC24834s> videoDebugListeners;
    private C24264d videoDecoderCounters;
    private AbstractC24826m videoDecoderOutputBufferRenderer;
    private Format videoFormat;
    private AbstractC24828o videoFrameMetadataListener;
    private final CopyOnWriteArraySet<AbstractC24833r> videoListeners;
    private int videoScalingMode;
    private final C24867z0 wakeLockManager;
    private final C24187a1 wifiLockManager;

    /* renamed from: com.google.android.exoplayer2.SimpleExoPlayer$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/SimpleExoPlayer$b.class */
    public static final class C1964b {

        /* renamed from: a */
        public final Context f4865a;

        /* renamed from: b */
        public final AbstractC24857w0 f4866b;

        /* renamed from: c */
        public AbstractC24776f f4867c;

        /* renamed from: d */
        public AbstractC24649h f4868d;

        /* renamed from: e */
        public AbstractC24460i0 f4869e;

        /* renamed from: f */
        public AbstractC24695f f4870f;

        /* renamed from: g */
        public C24190a f4871g;

        /* renamed from: h */
        public Looper f4872h;

        /* renamed from: i */
        public boolean f4873i;

        public C1964b(Context context) {
            C24744p c24744p;
            C24186a0 c24186a0 = new C24186a0(context);
            DefaultTrackSelector defaultTrackSelector = new DefaultTrackSelector(context);
            C24860y c24860y = new C24860y(new C24743o(true, 65536), 15000, 50000, 50000, 2500, AdData.DEFAULT_DURATION_FOR_REWARDED_IMAGE_CLOSE_BUTTON_MILLIS, -1, true, 0, false);
            Map<String, int[]> map = C24744p.f69344n;
            synchronized (C24744p.class) {
                try {
                    if (C24744p.f69349s == null) {
                        C24744p.f69349s = new C24744p.C24745a(context).m4672a();
                    }
                    c24744p = C24744p.f69349s;
                } catch (Throwable th) {
                    throw th;
                }
            }
            Looper m4614j = C24773d0.m4614j();
            AbstractC24776f abstractC24776f = AbstractC24776f.f69443a;
            C24190a c24190a = new C24190a(abstractC24776f);
            this.f4865a = context;
            this.f4866b = c24186a0;
            this.f4868d = defaultTrackSelector;
            this.f4869e = c24860y;
            this.f4870f = c24744p;
            this.f4872h = m4614j;
            this.f4871g = c24190a;
            this.f4867c = abstractC24776f;
        }

        /* renamed from: a */
        public SimpleExoPlayer m39243a() {
            C26232y.m2286x(!this.f4873i);
            this.f4873i = true;
            return new SimpleExoPlayer(this.f4865a, this.f4866b, this.f4868d, this.f4869e, this.f4870f, this.f4871g, this.f4867c, this.f4872h);
        }
    }

    /* renamed from: com.google.android.exoplayer2.SimpleExoPlayer$c */
    /* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/SimpleExoPlayer$c.class */
    public final class SurfaceHolder$CallbackC1965c implements AbstractC24834s, AbstractC24216m, AbstractC24572k, AbstractC24466e, SurfaceHolder.Callback, TextureView.SurfaceTextureListener, C24842s.AbstractC24844b, C24808r.AbstractC24810b, AbstractC24760q0.AbstractC24762b {
        public SurfaceHolder$CallbackC1965c(C1963a c1963a) {
            SimpleExoPlayer.this = r4;
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: A0 */
        public /* synthetic */ void mo4655A0() {
            C24811r0.m4490i(this);
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: G5 */
        public void mo4654G5(boolean z, int i) {
            SimpleExoPlayer.this.updateWakeAndWifiLock();
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: N7 */
        public /* synthetic */ void mo4653N7(AbstractC24861y0 abstractC24861y0, int i) {
            C24811r0.m4488k(this, abstractC24861y0, i);
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: Pi */
        public /* synthetic */ void mo4652Pi(AbstractC24861y0 abstractC24861y0, Object obj, int i) {
            C24811r0.m4487l(this, abstractC24861y0, obj, i);
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: S8 */
        public /* synthetic */ void mo4651S8(boolean z) {
            C24811r0.m4489j(this, z);
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: Xl */
        public /* synthetic */ void mo4650Xl(boolean z) {
            C24811r0.m4498a(this, z);
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: Zl */
        public /* synthetic */ void mo4649Zl(int i) {
            C24811r0.m4495d(this, i);
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1637r1.AbstractC24834s
        /* renamed from: a */
        public void mo4437a(int i, int i2, int i3, float f) {
            Iterator it = SimpleExoPlayer.this.videoListeners.iterator();
            while (it.hasNext()) {
                AbstractC24833r abstractC24833r = (AbstractC24833r) it.next();
                if (!SimpleExoPlayer.this.videoDebugListeners.contains(abstractC24833r)) {
                    abstractC24833r.mo4440a(i, i2, i3, f);
                }
            }
            Iterator it2 = SimpleExoPlayer.this.videoDebugListeners.iterator();
            while (it2.hasNext()) {
                ((AbstractC24834s) it2.next()).mo4437a(i, i2, i3, f);
            }
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1598c1.AbstractC24216m
        /* renamed from: b */
        public void mo5448b(int i) {
            if (SimpleExoPlayer.this.audioSessionId == i) {
                return;
            }
            SimpleExoPlayer.this.audioSessionId = i;
            Iterator it = SimpleExoPlayer.this.audioListeners.iterator();
            while (it.hasNext()) {
                AbstractC24212k abstractC24212k = (AbstractC24212k) it.next();
                if (!SimpleExoPlayer.this.audioDebugListeners.contains(abstractC24212k)) {
                    abstractC24212k.m5451b(i);
                }
            }
            Iterator it2 = SimpleExoPlayer.this.audioDebugListeners.iterator();
            while (it2.hasNext()) {
                ((AbstractC24216m) it2.next()).mo5448b(i);
            }
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1598c1.AbstractC24216m
        /* renamed from: d */
        public void mo5447d(String str, long j, long j2) {
            Iterator it = SimpleExoPlayer.this.audioDebugListeners.iterator();
            while (it.hasNext()) {
                ((AbstractC24216m) it.next()).mo5447d(str, j, j2);
            }
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1637r1.AbstractC24834s
        /* renamed from: e */
        public void mo4436e(int i, long j) {
            Iterator it = SimpleExoPlayer.this.videoDebugListeners.iterator();
            while (it.hasNext()) {
                ((AbstractC24834s) it.next()).mo4436e(i, j);
            }
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1637r1.AbstractC24834s
        /* renamed from: f */
        public void mo4435f(String str, long j, long j2) {
            Iterator it = SimpleExoPlayer.this.videoDebugListeners.iterator();
            while (it.hasNext()) {
                ((AbstractC24834s) it.next()).mo4435f(str, j, j2);
            }
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: fs */
        public /* synthetic */ void mo4648fs(TrackGroupArray trackGroupArray, C24648g c24648g) {
            C24811r0.m4486m(this, trackGroupArray, c24648g);
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1637r1.AbstractC24834s
        /* renamed from: g */
        public void mo4434g(Surface surface) {
            if (SimpleExoPlayer.this.surface == surface) {
                Iterator it = SimpleExoPlayer.this.videoListeners.iterator();
                while (it.hasNext()) {
                    ((AbstractC24833r) it.next()).mo4439c();
                }
            }
            Iterator it2 = SimpleExoPlayer.this.videoDebugListeners.iterator();
            while (it2.hasNext()) {
                ((AbstractC24834s) it2.next()).mo4434g(surface);
            }
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1598c1.AbstractC24216m
        /* renamed from: h */
        public void mo5446h(int i, long j, long j2) {
            Iterator it = SimpleExoPlayer.this.audioDebugListeners.iterator();
            while (it.hasNext()) {
                ((AbstractC24216m) it.next()).mo5446h(i, j, j2);
            }
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: h5 */
        public /* synthetic */ void mo4647h5(int i) {
            C24811r0.m4492g(this, i);
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: hy */
        public /* synthetic */ void mo4646hy(int i) {
            C24811r0.m4491h(this, i);
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1622m1.AbstractC24572k
        /* renamed from: j */
        public void mo4905j(List<C24562b> list) {
            SimpleExoPlayer.this.currentCues = list;
            Iterator it = SimpleExoPlayer.this.textOutputs.iterator();
            while (it.hasNext()) {
                ((AbstractC24572k) it.next()).mo4905j(list);
            }
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1598c1.AbstractC24216m
        /* renamed from: l */
        public void mo5445l(C24264d c24264d) {
            SimpleExoPlayer.this.audioDecoderCounters = c24264d;
            Iterator it = SimpleExoPlayer.this.audioDebugListeners.iterator();
            while (it.hasNext()) {
                ((AbstractC24216m) it.next()).mo5445l(c24264d);
            }
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1613i1.AbstractC24466e
        /* renamed from: m */
        public void mo5071m(Metadata metadata) {
            Iterator it = SimpleExoPlayer.this.metadataOutputs.iterator();
            while (it.hasNext()) {
                ((AbstractC24466e) it.next()).mo5071m(metadata);
            }
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1637r1.AbstractC24834s
        /* renamed from: n */
        public void mo4433n(Format format) {
            SimpleExoPlayer.this.videoFormat = format;
            Iterator it = SimpleExoPlayer.this.videoDebugListeners.iterator();
            while (it.hasNext()) {
                ((AbstractC24834s) it.next()).mo4433n(format);
            }
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1637r1.AbstractC24834s
        /* renamed from: o */
        public void mo4432o(C24264d c24264d) {
            Iterator it = SimpleExoPlayer.this.videoDebugListeners.iterator();
            while (it.hasNext()) {
                ((AbstractC24834s) it.next()).mo4432o(c24264d);
            }
            SimpleExoPlayer.this.videoFormat = null;
            SimpleExoPlayer.this.videoDecoderCounters = null;
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
            SimpleExoPlayer.this.setVideoSurfaceInternal(new Surface(surfaceTexture), true);
            SimpleExoPlayer.this.maybeNotifySurfaceSizeChanged(i, i2);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
            SimpleExoPlayer.this.setVideoSurfaceInternal(null, true);
            SimpleExoPlayer.this.maybeNotifySurfaceSizeChanged(0, 0);
            return true;
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
            SimpleExoPlayer.this.maybeNotifySurfaceSizeChanged(i, i2);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1598c1.AbstractC24216m
        /* renamed from: p */
        public void mo5444p(C24264d c24264d) {
            Iterator it = SimpleExoPlayer.this.audioDebugListeners.iterator();
            while (it.hasNext()) {
                ((AbstractC24216m) it.next()).mo5444p(c24264d);
            }
            SimpleExoPlayer.this.audioFormat = null;
            SimpleExoPlayer.this.audioDecoderCounters = null;
            SimpleExoPlayer.this.audioSessionId = 0;
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1637r1.AbstractC24834s
        /* renamed from: q */
        public void mo4431q(C24264d c24264d) {
            SimpleExoPlayer.this.videoDecoderCounters = c24264d;
            Iterator it = SimpleExoPlayer.this.videoDebugListeners.iterator();
            while (it.hasNext()) {
                ((AbstractC24834s) it.next()).mo4431q(c24264d);
            }
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1598c1.AbstractC24216m
        /* renamed from: r */
        public void mo5443r(Format format) {
            SimpleExoPlayer.this.audioFormat = format;
            Iterator it = SimpleExoPlayer.this.audioDebugListeners.iterator();
            while (it.hasNext()) {
                ((AbstractC24216m) it.next()).mo5443r(format);
            }
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: rs */
        public /* synthetic */ void mo4645rs(C24652o0 c24652o0) {
            C24811r0.m4496c(this, c24652o0);
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
            SimpleExoPlayer.this.maybeNotifySurfaceSizeChanged(i2, i3);
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceCreated(SurfaceHolder surfaceHolder) {
            SimpleExoPlayer.this.setVideoSurfaceInternal(surfaceHolder.getSurface(), false);
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
            SimpleExoPlayer.this.setVideoSurfaceInternal(null, false);
            SimpleExoPlayer.this.maybeNotifySurfaceSizeChanged(0, 0);
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: tf */
        public /* synthetic */ void mo4644tf(C24189b0 c24189b0) {
            C24811r0.m4494e(this, c24189b0);
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: w1 */
        public void mo4643w1(boolean z) {
            if (SimpleExoPlayer.this.priorityTaskManager != null) {
                if (z && !SimpleExoPlayer.this.isPriorityTaskManagerRegistered) {
                    SimpleExoPlayer.this.priorityTaskManager.m4509a(0);
                    SimpleExoPlayer.this.isPriorityTaskManagerRegistered = true;
                } else if (z || !SimpleExoPlayer.this.isPriorityTaskManagerRegistered) {
                } else {
                    SimpleExoPlayer.this.priorityTaskManager.m4508b(0);
                    SimpleExoPlayer.this.isPriorityTaskManagerRegistered = false;
                }
            }
        }
    }

    @Deprecated
    /* renamed from: com.google.android.exoplayer2.SimpleExoPlayer$d */
    /* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/SimpleExoPlayer$d.class */
    public interface AbstractC1966d extends AbstractC24833r {
    }

    @Deprecated
    public SimpleExoPlayer(Context context, AbstractC24857w0 abstractC24857w0, AbstractC24649h abstractC24649h, AbstractC24460i0 abstractC24460i0, AbstractC24279e<C24283h> abstractC24279e, AbstractC24695f abstractC24695f, C24190a c24190a, AbstractC24776f abstractC24776f, Looper looper) {
        this.bandwidthMeter = abstractC24695f;
        this.analyticsCollector = c24190a;
        SurfaceHolder$CallbackC1965c surfaceHolder$CallbackC1965c = new SurfaceHolder$CallbackC1965c(null);
        this.componentListener = surfaceHolder$CallbackC1965c;
        CopyOnWriteArraySet<AbstractC24833r> copyOnWriteArraySet = new CopyOnWriteArraySet<>();
        this.videoListeners = copyOnWriteArraySet;
        CopyOnWriteArraySet<AbstractC24212k> copyOnWriteArraySet2 = new CopyOnWriteArraySet<>();
        this.audioListeners = copyOnWriteArraySet2;
        this.textOutputs = new CopyOnWriteArraySet<>();
        this.metadataOutputs = new CopyOnWriteArraySet<>();
        CopyOnWriteArraySet<AbstractC24834s> copyOnWriteArraySet3 = new CopyOnWriteArraySet<>();
        this.videoDebugListeners = copyOnWriteArraySet3;
        CopyOnWriteArraySet<AbstractC24216m> copyOnWriteArraySet4 = new CopyOnWriteArraySet<>();
        this.audioDebugListeners = copyOnWriteArraySet4;
        Handler handler = new Handler(looper);
        this.eventHandler = handler;
        C24186a0 c24186a0 = (C24186a0) abstractC24857w0;
        Objects.requireNonNull(c24186a0);
        AbstractC24279e<C24283h> abstractC24279e2 = abstractC24279e == null ? null : abstractC24279e;
        ArrayList arrayList = new ArrayList();
        Context context2 = c24186a0.f66935a;
        AbstractC24449g abstractC24449g = AbstractC24449g.f68282a;
        arrayList.add(new C24822k(context2, abstractC24449g, 5000L, abstractC24279e2, false, false, handler, surfaceHolder$CallbackC1965c, 50));
        Context context3 = c24186a0.f66935a;
        C24211j c24211j = C24211j.f67017c;
        Intent registerReceiver = context3.registerReceiver(null, new IntentFilter("android.media.action.HDMI_AUDIO_PLUG"));
        arrayList.add(new C24239w(context3, abstractC24449g, abstractC24279e2, false, false, handler, surfaceHolder$CallbackC1965c, new C24230t((!(C24773d0.f69427a >= 17 && "Amazon".equals(C24773d0.f69429c)) || Settings.Global.getInt(context3.getContentResolver(), "external_surround_sound_enabled", 0) != 1) ? (registerReceiver == null || registerReceiver.getIntExtra("android.media.extra.AUDIO_PLUG_STATE", 0) == 0) ? C24211j.f67017c : new C24211j(registerReceiver.getIntArrayExtra("android.media.extra.ENCODINGS"), registerReceiver.getIntExtra("android.media.extra.MAX_CHANNEL_COUNT", 8)) : C24211j.f67018d, new AbstractC24213l[0])));
        arrayList.add(new C24573l(surfaceHolder$CallbackC1965c, handler.getLooper()));
        arrayList.add(new C24467f(surfaceHolder$CallbackC1965c, handler.getLooper()));
        arrayList.add(new C24837b());
        AbstractC24853u0[] abstractC24853u0Arr = (AbstractC24853u0[]) arrayList.toArray(new AbstractC24853u0[0]);
        this.renderers = abstractC24853u0Arr;
        this.audioVolume = 1.0f;
        this.audioSessionId = 0;
        this.audioAttributes = C24209i.f67011f;
        this.videoScalingMode = 1;
        this.currentCues = Collections.emptyList();
        C24246d0 c24246d0 = new C24246d0(abstractC24853u0Arr, abstractC24649h, abstractC24460i0, abstractC24695f, abstractC24776f, looper);
        this.player = c24246d0;
        C26232y.m2286x(c24190a.f66950e == null || c24190a.f66949d.f66954a.isEmpty());
        Objects.requireNonNull(c24246d0);
        c24190a.f66950e = c24246d0;
        c24246d0.f67202g.addIfAbsent(new AbstractC24848t.C24849a(c24190a));
        c24246d0.addListener(surfaceHolder$CallbackC1965c);
        copyOnWriteArraySet3.add(c24190a);
        copyOnWriteArraySet.add(c24190a);
        copyOnWriteArraySet4.add(c24190a);
        copyOnWriteArraySet2.add(c24190a);
        addMetadataOutput(c24190a);
        abstractC24695f.mo4678d(handler, c24190a);
        if (abstractC24279e instanceof C24272b) {
            Objects.requireNonNull((C24272b) abstractC24279e);
            throw null;
        }
        this.audioBecomingNoisyManager = new C24808r(context, handler, surfaceHolder$CallbackC1965c);
        this.audioFocusManager = new C24842s(context, handler, surfaceHolder$CallbackC1965c);
        this.wakeLockManager = new C24867z0(context);
        this.wifiLockManager = new C24187a1(context);
    }

    public SimpleExoPlayer(Context context, AbstractC24857w0 abstractC24857w0, AbstractC24649h abstractC24649h, AbstractC24460i0 abstractC24460i0, AbstractC24695f abstractC24695f, C24190a c24190a, AbstractC24776f abstractC24776f, Looper looper) {
        this(context, abstractC24857w0, abstractC24649h, abstractC24460i0, AbstractC24279e.f67328a, abstractC24695f, c24190a, abstractC24776f, looper);
    }

    public void maybeNotifySurfaceSizeChanged(int i, int i2) {
        if (i == this.surfaceWidth && i2 == this.surfaceHeight) {
            return;
        }
        this.surfaceWidth = i;
        this.surfaceHeight = i2;
        Iterator<AbstractC24833r> it = this.videoListeners.iterator();
        while (it.hasNext()) {
            it.next().mo4438i(i, i2);
        }
    }

    private void removeSurfaceCallbacks() {
        TextureView textureView = this.textureView;
        if (textureView != null) {
            if (textureView.getSurfaceTextureListener() == this.componentListener) {
                this.textureView.setSurfaceTextureListener(null);
            }
            this.textureView = null;
        }
        SurfaceHolder surfaceHolder = this.surfaceHolder;
        if (surfaceHolder != null) {
            surfaceHolder.removeCallback(this.componentListener);
            this.surfaceHolder = null;
        }
    }

    public void sendVolumeToRenderers() {
        AbstractC24853u0[] abstractC24853u0Arr;
        float f = this.audioVolume;
        float f2 = this.audioFocusManager.f69674g;
        for (AbstractC24853u0 abstractC24853u0 : this.renderers) {
            if (abstractC24853u0.mo4387p() == 1) {
                C24845s0 createMessage = this.player.createMessage(abstractC24853u0);
                createMessage.m4418e(2);
                createMessage.m4419d(Float.valueOf(f * f2));
                createMessage.m4420c();
            }
        }
    }

    private void setVideoDecoderOutputBufferRendererInternal(AbstractC24826m abstractC24826m) {
        AbstractC24853u0[] abstractC24853u0Arr;
        for (AbstractC24853u0 abstractC24853u0 : this.renderers) {
            if (abstractC24853u0.mo4387p() == 2) {
                C24845s0 createMessage = this.player.createMessage(abstractC24853u0);
                createMessage.m4418e(8);
                C26232y.m2286x(!createMessage.f69685h);
                createMessage.f69682e = abstractC24826m;
                createMessage.m4420c();
            }
        }
        this.videoDecoderOutputBufferRenderer = abstractC24826m;
    }

    public void setVideoSurfaceInternal(Surface surface, boolean z) {
        AbstractC24853u0[] abstractC24853u0Arr;
        ArrayList arrayList = new ArrayList();
        for (AbstractC24853u0 abstractC24853u0 : this.renderers) {
            if (abstractC24853u0.mo4387p() == 2) {
                C24845s0 createMessage = this.player.createMessage(abstractC24853u0);
                createMessage.m4418e(1);
                C26232y.m2286x(true ^ createMessage.f69685h);
                createMessage.f69682e = surface;
                createMessage.m4420c();
                arrayList.add(createMessage);
            }
        }
        Surface surface2 = this.surface;
        if (surface2 != null && surface2 != surface) {
            try {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    C24845s0 c24845s0 = (C24845s0) it.next();
                    synchronized (c24845s0) {
                        C26232y.m2286x(c24845s0.f69685h);
                        C26232y.m2286x(c24845s0.f69683f.getLooper().getThread() != Thread.currentThread());
                        while (!c24845s0.f69687j) {
                            c24845s0.wait();
                        }
                    }
                }
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
            }
            if (this.ownsSurface) {
                this.surface.release();
            }
        }
        this.surface = surface;
        this.ownsSurface = z;
    }

    public void updatePlayWhenReady(boolean z, int i) {
        boolean z2 = z && i != -1;
        int i2 = 0;
        if (z2) {
            i2 = 0;
            if (i != 1) {
                i2 = 1;
            }
        }
        this.player.m5382f(z2, i2);
    }

    public void updateWakeAndWifiLock() {
        int playbackState = getPlaybackState();
        if (playbackState != 1) {
            if (playbackState == 2 || playbackState == 3) {
                C24867z0 c24867z0 = this.wakeLockManager;
                c24867z0.f69752d = getPlayWhenReady();
                c24867z0.m4345b();
                C24187a1 c24187a1 = this.wifiLockManager;
                c24187a1.f66940d = getPlayWhenReady();
                c24187a1.m5500b();
                return;
            } else if (playbackState != 4) {
                throw new IllegalStateException();
            }
        }
        C24867z0 c24867z02 = this.wakeLockManager;
        c24867z02.f69752d = false;
        c24867z02.m4345b();
        C24187a1 c24187a12 = this.wifiLockManager;
        c24187a12.f66940d = false;
        c24187a12.m5500b();
    }

    private void verifyApplicationThread() {
        if (Looper.myLooper() != getApplicationLooper()) {
            C24789n.m4576a("Player is accessed on the wrong thread. See https://exoplayer.dev/issues/player-accessed-on-wrong-thread", this.hasNotifiedFullWrongThreadWarning ? null : new IllegalStateException());
            this.hasNotifiedFullWrongThreadWarning = true;
        }
    }

    public void addAnalyticsListener(AbstractC24193b abstractC24193b) {
        verifyApplicationThread();
        this.analyticsCollector.f66946a.add(abstractC24193b);
    }

    @Deprecated
    public void addAudioDebugListener(AbstractC24216m abstractC24216m) {
        this.audioDebugListeners.add(abstractC24216m);
    }

    public void addAudioListener(AbstractC24212k abstractC24212k) {
        this.audioListeners.add(abstractC24212k);
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0
    public void addListener(AbstractC24760q0.AbstractC24762b abstractC24762b) {
        verifyApplicationThread();
        this.player.f67202g.addIfAbsent(new AbstractC24848t.C24849a(abstractC24762b));
    }

    public void addMetadataOutput(AbstractC24466e abstractC24466e) {
        this.metadataOutputs.add(abstractC24466e);
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24764d
    public void addTextOutput(AbstractC24572k abstractC24572k) {
        if (!this.currentCues.isEmpty()) {
            abstractC24572k.mo4905j(this.currentCues);
        }
        this.textOutputs.add(abstractC24572k);
    }

    @Deprecated
    public void addVideoDebugListener(AbstractC24834s abstractC24834s) {
        this.videoDebugListeners.add(abstractC24834s);
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24765e
    public void addVideoListener(AbstractC24833r abstractC24833r) {
        this.videoListeners.add(abstractC24833r);
    }

    public void clearAuxEffectInfo() {
        setAuxEffectInfo(new C24227q(0, 0.0f));
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24765e
    public void clearCameraMotionListener(AbstractC24836a abstractC24836a) {
        AbstractC24853u0[] abstractC24853u0Arr;
        verifyApplicationThread();
        if (this.cameraMotionListener != abstractC24836a) {
            return;
        }
        for (AbstractC24853u0 abstractC24853u0 : this.renderers) {
            if (abstractC24853u0.mo4387p() == 5) {
                C24845s0 createMessage = this.player.createMessage(abstractC24853u0);
                createMessage.m4418e(7);
                createMessage.m4419d(null);
                createMessage.m4420c();
            }
        }
    }

    @Deprecated
    public void clearMetadataOutput(AbstractC24466e abstractC24466e) {
        removeMetadataOutput(abstractC24466e);
    }

    @Deprecated
    public void clearTextOutput(AbstractC24572k abstractC24572k) {
        removeTextOutput(abstractC24572k);
    }

    public void clearVideoDecoderOutputBufferRenderer() {
        verifyApplicationThread();
        setVideoDecoderOutputBufferRendererInternal(null);
    }

    public void clearVideoDecoderOutputBufferRenderer(AbstractC24826m abstractC24826m) {
        verifyApplicationThread();
        if (abstractC24826m == null || abstractC24826m != this.videoDecoderOutputBufferRenderer) {
            return;
        }
        clearVideoDecoderOutputBufferRenderer();
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24765e
    public void clearVideoFrameMetadataListener(AbstractC24828o abstractC24828o) {
        AbstractC24853u0[] abstractC24853u0Arr;
        verifyApplicationThread();
        if (this.videoFrameMetadataListener != abstractC24828o) {
            return;
        }
        for (AbstractC24853u0 abstractC24853u0 : this.renderers) {
            if (abstractC24853u0.mo4387p() == 2) {
                C24845s0 createMessage = this.player.createMessage(abstractC24853u0);
                createMessage.m4418e(6);
                createMessage.m4419d(null);
                createMessage.m4420c();
            }
        }
    }

    @Deprecated
    public void clearVideoListener(AbstractC1966d abstractC1966d) {
        removeVideoListener(abstractC1966d);
    }

    public void clearVideoSurface() {
        verifyApplicationThread();
        removeSurfaceCallbacks();
        setVideoSurfaceInternal(null, false);
        maybeNotifySurfaceSizeChanged(0, 0);
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24765e
    public void clearVideoSurface(Surface surface) {
        verifyApplicationThread();
        if (surface == null || surface != this.surface) {
            return;
        }
        clearVideoSurface();
    }

    public void clearVideoSurfaceHolder(SurfaceHolder surfaceHolder) {
        verifyApplicationThread();
        if (surfaceHolder == null || surfaceHolder != this.surfaceHolder) {
            return;
        }
        setVideoSurfaceHolder(null);
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24765e
    public void clearVideoSurfaceView(SurfaceView surfaceView) {
        clearVideoSurfaceHolder(surfaceView == null ? null : surfaceView.getHolder());
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24765e
    public void clearVideoTextureView(TextureView textureView) {
        verifyApplicationThread();
        if (textureView == null || textureView != this.textureView) {
            return;
        }
        setVideoTextureView(null);
    }

    public C24845s0 createMessage(C24845s0.AbstractC24847b abstractC24847b) {
        verifyApplicationThread();
        return this.player.createMessage(abstractC24847b);
    }

    public C24190a getAnalyticsCollector() {
        return this.analyticsCollector;
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0
    public Looper getApplicationLooper() {
        return this.player.getApplicationLooper();
    }

    public C24209i getAudioAttributes() {
        return this.audioAttributes;
    }

    public AbstractC24760q0.AbstractC24761a getAudioComponent() {
        return this;
    }

    public C24264d getAudioDecoderCounters() {
        return this.audioDecoderCounters;
    }

    public Format getAudioFormat() {
        return this.audioFormat;
    }

    public int getAudioSessionId() {
        return this.audioSessionId;
    }

    @Deprecated
    public int getAudioStreamType() {
        return C24773d0.m4610n(this.audioAttributes.f67014c);
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0
    public long getBufferedPosition() {
        verifyApplicationThread();
        return this.player.getBufferedPosition();
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0
    public long getContentBufferedPosition() {
        verifyApplicationThread();
        return this.player.getContentBufferedPosition();
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0
    public long getContentPosition() {
        verifyApplicationThread();
        return this.player.getContentPosition();
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0
    public int getCurrentAdGroupIndex() {
        verifyApplicationThread();
        C24246d0 c24246d0 = this.player;
        return c24246d0.isPlayingAd() ? c24246d0.f67217v.f68995b.f68508b : -1;
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0
    public int getCurrentAdIndexInAdGroup() {
        verifyApplicationThread();
        C24246d0 c24246d0 = this.player;
        return c24246d0.isPlayingAd() ? c24246d0.f67217v.f68995b.f68509c : -1;
    }

    public int getCurrentPeriodIndex() {
        verifyApplicationThread();
        return this.player.getCurrentPeriodIndex();
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0
    public long getCurrentPosition() {
        verifyApplicationThread();
        return this.player.getCurrentPosition();
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0
    public AbstractC24861y0 getCurrentTimeline() {
        verifyApplicationThread();
        return this.player.f67217v.f68994a;
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0
    public TrackGroupArray getCurrentTrackGroups() {
        verifyApplicationThread();
        return this.player.f67217v.f69001h;
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0
    public C24648g getCurrentTrackSelections() {
        verifyApplicationThread();
        return this.player.f67217v.f69002i.f69032c;
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0
    public int getCurrentWindowIndex() {
        verifyApplicationThread();
        return this.player.getCurrentWindowIndex();
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0
    public long getDuration() {
        verifyApplicationThread();
        return this.player.getDuration();
    }

    public AbstractC24760q0.AbstractC24763c getMetadataComponent() {
        return this;
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0
    public boolean getPlayWhenReady() {
        verifyApplicationThread();
        return this.player.f67206k;
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0
    public C24189b0 getPlaybackError() {
        verifyApplicationThread();
        return this.player.f67217v.f68999f;
    }

    public Looper getPlaybackLooper() {
        return this.player.f67200e.f67252h.getLooper();
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0
    public C24652o0 getPlaybackParameters() {
        verifyApplicationThread();
        return this.player.f67215t;
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0
    public int getPlaybackState() {
        verifyApplicationThread();
        return this.player.f67217v.f68998e;
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0
    public int getPlaybackSuppressionReason() {
        verifyApplicationThread();
        return this.player.f67207l;
    }

    public int getRendererCount() {
        verifyApplicationThread();
        return this.player.f67197b.length;
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0
    public int getRendererType(int i) {
        verifyApplicationThread();
        return this.player.f67197b[i].mo4387p();
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0
    public int getRepeatMode() {
        verifyApplicationThread();
        return this.player.f67208m;
    }

    public C24859x0 getSeekParameters() {
        verifyApplicationThread();
        return this.player.f67216u;
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0
    public boolean getShuffleModeEnabled() {
        verifyApplicationThread();
        return this.player.f67209n;
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0
    public AbstractC24760q0.AbstractC24764d getTextComponent() {
        return this;
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0
    public long getTotalBufferedDuration() {
        verifyApplicationThread();
        return C24854v.m4382b(this.player.f67217v.f69005l);
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0
    public AbstractC24760q0.AbstractC24765e getVideoComponent() {
        return this;
    }

    public C24264d getVideoDecoderCounters() {
        return this.videoDecoderCounters;
    }

    public Format getVideoFormat() {
        return this.videoFormat;
    }

    public int getVideoScalingMode() {
        return this.videoScalingMode;
    }

    public float getVolume() {
        return this.audioVolume;
    }

    public boolean isLoading() {
        verifyApplicationThread();
        return this.player.f67217v.f69000g;
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0
    public boolean isPlayingAd() {
        verifyApplicationThread();
        return this.player.isPlayingAd();
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24196c0
    public void prepare(AbstractC24531p abstractC24531p) {
        prepare(abstractC24531p, true, true);
    }

    public void prepare(AbstractC24531p abstractC24531p, boolean z, boolean z2) {
        verifyApplicationThread();
        AbstractC24531p abstractC24531p2 = this.mediaSource;
        if (abstractC24531p2 != null) {
            abstractC24531p2.mo4977c(this.analyticsCollector);
            this.analyticsCollector.m5492z();
        }
        this.mediaSource = abstractC24531p;
        abstractC24531p.mo4975f(this.eventHandler, this.analyticsCollector);
        boolean playWhenReady = getPlayWhenReady();
        updatePlayWhenReady(playWhenReady, this.audioFocusManager.m4423d(playWhenReady, 2));
        this.player.prepare(abstractC24531p, z, z2);
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0
    public void release() {
        verifyApplicationThread();
        this.audioBecomingNoisyManager.m4499a(false);
        C24867z0 c24867z0 = this.wakeLockManager;
        c24867z0.f69752d = false;
        c24867z0.m4345b();
        C24187a1 c24187a1 = this.wifiLockManager;
        c24187a1.f66940d = false;
        c24187a1.m5500b();
        C24842s c24842s = this.audioFocusManager;
        c24842s.f69670c = null;
        c24842s.m4426a();
        this.player.release();
        removeSurfaceCallbacks();
        Surface surface = this.surface;
        if (surface != null) {
            if (this.ownsSurface) {
                surface.release();
            }
            this.surface = null;
        }
        AbstractC24531p abstractC24531p = this.mediaSource;
        if (abstractC24531p != null) {
            abstractC24531p.mo4977c(this.analyticsCollector);
            this.mediaSource = null;
        }
        if (this.isPriorityTaskManagerRegistered) {
            C24800v c24800v = this.priorityTaskManager;
            Objects.requireNonNull(c24800v);
            c24800v.m4508b(0);
            this.isPriorityTaskManagerRegistered = false;
        }
        this.bandwidthMeter.mo4676f(this.analyticsCollector);
        this.currentCues = Collections.emptyList();
        this.playerReleased = true;
    }

    public void removeAnalyticsListener(AbstractC24193b abstractC24193b) {
        verifyApplicationThread();
        this.analyticsCollector.f66946a.remove(abstractC24193b);
    }

    @Deprecated
    public void removeAudioDebugListener(AbstractC24216m abstractC24216m) {
        this.audioDebugListeners.remove(abstractC24216m);
    }

    public void removeAudioListener(AbstractC24212k abstractC24212k) {
        this.audioListeners.remove(abstractC24212k);
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0
    public void removeListener(AbstractC24760q0.AbstractC24762b abstractC24762b) {
        verifyApplicationThread();
        this.player.removeListener(abstractC24762b);
    }

    public void removeMetadataOutput(AbstractC24466e abstractC24466e) {
        this.metadataOutputs.remove(abstractC24466e);
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24764d
    public void removeTextOutput(AbstractC24572k abstractC24572k) {
        this.textOutputs.remove(abstractC24572k);
    }

    @Deprecated
    public void removeVideoDebugListener(AbstractC24834s abstractC24834s) {
        this.videoDebugListeners.remove(abstractC24834s);
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24765e
    public void removeVideoListener(AbstractC24833r abstractC24833r) {
        this.videoListeners.remove(abstractC24833r);
    }

    public void retry() {
        verifyApplicationThread();
        if (this.mediaSource != null) {
            if (getPlaybackError() == null && getPlaybackState() != 1) {
                return;
            }
            prepare(this.mediaSource, false, false);
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0
    public void seekTo(int i, long j) {
        verifyApplicationThread();
        C24190a c24190a = this.analyticsCollector;
        if (!c24190a.f66949d.f66961h) {
            c24190a.m5495w();
            c24190a.f66949d.f66961h = true;
            Iterator<AbstractC24193b> it = c24190a.f66946a.iterator();
            while (it.hasNext()) {
                it.next().m5474h();
            }
        }
        this.player.seekTo(i, j);
    }

    public void setAudioAttributes(C24209i c24209i) {
        setAudioAttributes(c24209i, false);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x013a, code lost:
        if (r7.f67012a == 1) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x015e, code lost:
        if (r14 == 0) goto L39;
     */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0159  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setAudioAttributes(p193e.p1577m.p1578a.p1596c.p1598c1.C24209i r7, boolean r8) {
        /*
            Method dump skipped, instructions count: 385
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.SimpleExoPlayer.setAudioAttributes(e.m.a.c.c1.i, boolean):void");
    }

    @Deprecated
    public void setAudioDebugListener(AbstractC24216m abstractC24216m) {
        this.audioDebugListeners.retainAll(Collections.singleton(this.analyticsCollector));
        if (abstractC24216m != null) {
            addAudioDebugListener(abstractC24216m);
        }
    }

    @Deprecated
    public void setAudioStreamType(int i) {
        int i2 = C24773d0.f69427a;
        setAudioAttributes(new C24209i(i != 0 ? (i == 1 || i == 2 || i == 4 || i == 5 || i == 8) ? 4 : 2 : 1, 0, i != 0 ? i != 1 ? i != 2 ? i != 4 ? i != 5 ? i != 8 ? 1 : 3 : 5 : 4 : 6 : 13 : 2, 1, null));
    }

    public void setAuxEffectInfo(C24227q c24227q) {
        AbstractC24853u0[] abstractC24853u0Arr;
        verifyApplicationThread();
        for (AbstractC24853u0 abstractC24853u0 : this.renderers) {
            if (abstractC24853u0.mo4387p() == 1) {
                C24845s0 createMessage = this.player.createMessage(abstractC24853u0);
                createMessage.m4418e(5);
                C26232y.m2286x(!createMessage.f69685h);
                createMessage.f69682e = c24227q;
                createMessage.m4420c();
            }
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24765e
    public void setCameraMotionListener(AbstractC24836a abstractC24836a) {
        AbstractC24853u0[] abstractC24853u0Arr;
        verifyApplicationThread();
        this.cameraMotionListener = abstractC24836a;
        for (AbstractC24853u0 abstractC24853u0 : this.renderers) {
            if (abstractC24853u0.mo4387p() == 5) {
                C24845s0 createMessage = this.player.createMessage(abstractC24853u0);
                createMessage.m4418e(7);
                C26232y.m2286x(!createMessage.f69685h);
                createMessage.f69682e = abstractC24836a;
                createMessage.m4420c();
            }
        }
    }

    public void setForegroundMode(boolean z) {
        C24246d0 c24246d0 = this.player;
        if (c24246d0.f67213r != z) {
            c24246d0.f67213r = z;
            C24253e0 c24253e0 = c24246d0.f67200e;
            synchronized (c24253e0) {
                if (!c24253e0.f67267w && c24253e0.f67252h.isAlive()) {
                    boolean z2 = false;
                    if (z) {
                        c24253e0.f67251g.m4642a(14, 1, 0).sendToTarget();
                    } else {
                        AtomicBoolean atomicBoolean = new AtomicBoolean();
                        c24253e0.f67251g.m4641b(14, 0, 0, atomicBoolean).sendToTarget();
                        while (!atomicBoolean.get()) {
                            try {
                                c24253e0.wait();
                            } catch (InterruptedException e) {
                                z2 = true;
                            }
                        }
                        if (z2) {
                            Thread.currentThread().interrupt();
                        }
                    }
                }
            }
        }
    }

    public void setHandleAudioBecomingNoisy(boolean z) {
        verifyApplicationThread();
        if (this.playerReleased) {
            return;
        }
        this.audioBecomingNoisyManager.m4499a(z);
    }

    @Deprecated
    public void setHandleWakeLock(boolean z) {
        setWakeMode(z ? 1 : 0);
    }

    @Deprecated
    public void setMetadataOutput(AbstractC24466e abstractC24466e) {
        this.metadataOutputs.retainAll(Collections.singleton(this.analyticsCollector));
        if (abstractC24466e != null) {
            addMetadataOutput(abstractC24466e);
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0
    public void setPlayWhenReady(boolean z) {
        verifyApplicationThread();
        updatePlayWhenReady(z, this.audioFocusManager.m4423d(z, getPlaybackState()));
    }

    public void setPlaybackParameters(C24652o0 c24652o0) {
        verifyApplicationThread();
        C24246d0 c24246d0 = this.player;
        Objects.requireNonNull(c24246d0);
        C24652o0 c24652o02 = c24652o0;
        if (c24652o0 == null) {
            c24652o02 = C24652o0.f69035e;
        }
        if (c24246d0.f67215t.equals(c24652o02)) {
            return;
        }
        c24246d0.f67214s++;
        c24246d0.f67215t = c24652o02;
        c24246d0.f67200e.f67251g.m4640c(4, c24652o02).sendToTarget();
        final C24652o0 c24652o03 = c24652o02;
        c24246d0.m5385c(new AbstractC24848t.AbstractC24850b() { // from class: e.m.a.c.n
            @Override // p193e.p1577m.p1578a.p1596c.AbstractC24848t.AbstractC24850b
            /* renamed from: a */
            public final void mo4417a(AbstractC24760q0.AbstractC24762b abstractC24762b) {
                abstractC24762b.mo4645rs(C24652o0.this);
            }
        });
    }

    @Deprecated
    public void setPlaybackParams(PlaybackParams playbackParams) {
        C24652o0 c24652o0;
        if (playbackParams != null) {
            playbackParams.allowDefaults();
            c24652o0 = new C24652o0(playbackParams.getSpeed(), playbackParams.getPitch(), false);
        } else {
            c24652o0 = null;
        }
        setPlaybackParameters(c24652o0);
    }

    public void setPriorityTaskManager(C24800v c24800v) {
        verifyApplicationThread();
        if (C24773d0.m4623a(this.priorityTaskManager, c24800v)) {
            return;
        }
        if (this.isPriorityTaskManagerRegistered) {
            C24800v c24800v2 = this.priorityTaskManager;
            Objects.requireNonNull(c24800v2);
            c24800v2.m4508b(0);
        }
        if (c24800v == null || !isLoading()) {
            this.isPriorityTaskManagerRegistered = false;
        } else {
            c24800v.m4509a(0);
            this.isPriorityTaskManagerRegistered = true;
        }
        this.priorityTaskManager = c24800v;
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0
    public void setRepeatMode(int i) {
        verifyApplicationThread();
        this.player.setRepeatMode(i);
    }

    public void setSeekParameters(C24859x0 c24859x0) {
        verifyApplicationThread();
        C24246d0 c24246d0 = this.player;
        Objects.requireNonNull(c24246d0);
        C24859x0 c24859x02 = c24859x0;
        if (c24859x0 == null) {
            c24859x02 = C24859x0.f69709d;
        }
        if (!c24246d0.f67216u.equals(c24859x02)) {
            c24246d0.f67216u = c24859x02;
            c24246d0.f67200e.f67251g.m4640c(5, c24859x02).sendToTarget();
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0
    public void setShuffleModeEnabled(boolean z) {
        verifyApplicationThread();
        this.player.setShuffleModeEnabled(z);
    }

    @Deprecated
    public void setTextOutput(AbstractC24572k abstractC24572k) {
        this.textOutputs.clear();
        if (abstractC24572k != null) {
            addTextOutput(abstractC24572k);
        }
    }

    @Deprecated
    public void setVideoDebugListener(AbstractC24834s abstractC24834s) {
        this.videoDebugListeners.retainAll(Collections.singleton(this.analyticsCollector));
        if (abstractC24834s != null) {
            addVideoDebugListener(abstractC24834s);
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24765e
    public void setVideoDecoderOutputBufferRenderer(AbstractC24826m abstractC24826m) {
        verifyApplicationThread();
        if (abstractC24826m != null) {
            clearVideoSurface();
        }
        setVideoDecoderOutputBufferRendererInternal(abstractC24826m);
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24765e
    public void setVideoFrameMetadataListener(AbstractC24828o abstractC24828o) {
        AbstractC24853u0[] abstractC24853u0Arr;
        verifyApplicationThread();
        this.videoFrameMetadataListener = abstractC24828o;
        for (AbstractC24853u0 abstractC24853u0 : this.renderers) {
            if (abstractC24853u0.mo4387p() == 2) {
                C24845s0 createMessage = this.player.createMessage(abstractC24853u0);
                createMessage.m4418e(6);
                C26232y.m2286x(!createMessage.f69685h);
                createMessage.f69682e = abstractC24828o;
                createMessage.m4420c();
            }
        }
    }

    @Deprecated
    public void setVideoListener(AbstractC1966d abstractC1966d) {
        this.videoListeners.clear();
        if (abstractC1966d != null) {
            addVideoListener(abstractC1966d);
        }
    }

    public void setVideoScalingMode(int i) {
        AbstractC24853u0[] abstractC24853u0Arr;
        verifyApplicationThread();
        this.videoScalingMode = i;
        for (AbstractC24853u0 abstractC24853u0 : this.renderers) {
            if (abstractC24853u0.mo4387p() == 2) {
                C24845s0 createMessage = this.player.createMessage(abstractC24853u0);
                createMessage.m4418e(4);
                createMessage.m4419d(Integer.valueOf(i));
                createMessage.m4420c();
            }
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24765e
    public void setVideoSurface(Surface surface) {
        verifyApplicationThread();
        removeSurfaceCallbacks();
        if (surface != null) {
            clearVideoDecoderOutputBufferRenderer();
        }
        int i = 0;
        setVideoSurfaceInternal(surface, false);
        if (surface != null) {
            i = -1;
        }
        maybeNotifySurfaceSizeChanged(i, i);
    }

    public void setVideoSurfaceHolder(SurfaceHolder surfaceHolder) {
        verifyApplicationThread();
        removeSurfaceCallbacks();
        if (surfaceHolder != null) {
            clearVideoDecoderOutputBufferRenderer();
        }
        this.surfaceHolder = surfaceHolder;
        if (surfaceHolder == null) {
            setVideoSurfaceInternal(null, false);
            maybeNotifySurfaceSizeChanged(0, 0);
            return;
        }
        surfaceHolder.addCallback(this.componentListener);
        Surface surface = surfaceHolder.getSurface();
        if (surface == null || !surface.isValid()) {
            setVideoSurfaceInternal(null, false);
            maybeNotifySurfaceSizeChanged(0, 0);
            return;
        }
        setVideoSurfaceInternal(surface, false);
        Rect surfaceFrame = surfaceHolder.getSurfaceFrame();
        maybeNotifySurfaceSizeChanged(surfaceFrame.width(), surfaceFrame.height());
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24765e
    public void setVideoSurfaceView(SurfaceView surfaceView) {
        setVideoSurfaceHolder(surfaceView == null ? null : surfaceView.getHolder());
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24765e
    public void setVideoTextureView(TextureView textureView) {
        verifyApplicationThread();
        removeSurfaceCallbacks();
        if (textureView != null) {
            clearVideoDecoderOutputBufferRenderer();
        }
        this.textureView = textureView;
        if (textureView == null) {
            setVideoSurfaceInternal(null, true);
            maybeNotifySurfaceSizeChanged(0, 0);
            return;
        }
        textureView.getSurfaceTextureListener();
        textureView.setSurfaceTextureListener(this.componentListener);
        SurfaceTexture surfaceTexture = textureView.isAvailable() ? textureView.getSurfaceTexture() : null;
        if (surfaceTexture == null) {
            setVideoSurfaceInternal(null, true);
            maybeNotifySurfaceSizeChanged(0, 0);
            return;
        }
        setVideoSurfaceInternal(new Surface(surfaceTexture), true);
        maybeNotifySurfaceSizeChanged(textureView.getWidth(), textureView.getHeight());
    }

    public void setVolume(float f) {
        verifyApplicationThread();
        float m4619e = C24773d0.m4619e(f, 0.0f, 1.0f);
        if (this.audioVolume == m4619e) {
            return;
        }
        this.audioVolume = m4619e;
        sendVolumeToRenderers();
        Iterator<AbstractC24212k> it = this.audioListeners.iterator();
        while (it.hasNext()) {
            it.next().mo5450j(m4619e);
        }
    }

    public void setWakeMode(int i) {
        if (i == 0) {
            this.wakeLockManager.m4346a(false);
            this.wifiLockManager.m5501a(false);
        } else if (i == 1) {
            this.wakeLockManager.m4346a(true);
            this.wifiLockManager.m5501a(false);
        } else if (i != 2) {
        } else {
            this.wakeLockManager.m4346a(true);
            this.wifiLockManager.m5501a(true);
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0
    public void stop(boolean z) {
        verifyApplicationThread();
        this.audioFocusManager.m4423d(getPlayWhenReady(), 1);
        this.player.stop(z);
        AbstractC24531p abstractC24531p = this.mediaSource;
        if (abstractC24531p != null) {
            abstractC24531p.mo4977c(this.analyticsCollector);
            this.analyticsCollector.m5492z();
            if (z) {
                this.mediaSource = null;
            }
        }
        this.currentCues = Collections.emptyList();
    }
}
