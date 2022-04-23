package com.mopub.nativeads;

import android.content.Context;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.view.Surface;
import android.view.TextureView;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.trackselection.DefaultTrackSelector;
import com.google.android.exoplayer2.upstream.cache.Cache;
import com.google.android.exoplayer2.video.MediaCodecVideoRenderer;
import com.google.common.collect.MapMakerInternalMap;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibilityTracker;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.RepeatingHandlerRunnable;
import com.mopub.mobileads.VastTracker;
import com.mopub.mobileads.VastVideoConfig;
import com.mopub.network.TrackingRequest;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import p131c.p161d.p170b.p188c.AbstractC2760c0;
import p131c.p161d.p170b.p188c.AbstractC2941j0;
import p131c.p161d.p170b.p188c.AbstractC2953m0;
import p131c.p161d.p170b.p188c.AbstractC3028w;
import p131c.p161d.p170b.p188c.C2910h0;
import p131c.p161d.p170b.p188c.C2949l0;
import p131c.p161d.p170b.p188c.C3009u;
import p131c.p161d.p170b.p188c.C3193x;
import p131c.p161d.p170b.p188c.p190b1.C2730q;
import p131c.p161d.p170b.p188c.p198d1.AbstractC2784h;
import p131c.p161d.p170b.p188c.p198d1.C2783g;
import p131c.p161d.p170b.p188c.p201f1.AbstractC2827j;
import p131c.p161d.p170b.p188c.p201f1.C2830l;
import p131c.p161d.p170b.p188c.p201f1.C2835n;
import p131c.p161d.p170b.p188c.p201f1.p202u.C2844c;
import p131c.p161d.p170b.p188c.p206s0.C2997s;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3042g;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3045j;
import p131c.p161d.p170b.p188c.p210w0.p215v.C3105i;
import p131c.p161d.p170b.p188c.p219x0.AbstractC3199f;
import p131c.p421j.p426d.C6673d;
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/NativeVideoController.class */
public class NativeVideoController extends AbstractC2941j0.AbstractC2942a implements AudioManager.OnAudioFocusChangeListener {
    public static final long RESUME_FINISHED_THRESHOLD = 750;
    public static final int STATE_BUFFERING = 2;
    public static final int STATE_CLEARED = 5;
    public static final int STATE_ENDED = 4;
    public static final int STATE_IDLE = 1;
    public static final int STATE_READY = 3;

    /* renamed from: s */
    public static final Map<Long, NativeVideoController> f34866s = new HashMap(4);

    /* renamed from: a */
    public final Context f34867a;

    /* renamed from: b */
    public final Handler f34868b;

    /* renamed from: c */
    public final C8968c f34869c;

    /* renamed from: d */
    public VastVideoConfig f34870d;

    /* renamed from: e */
    public NativeVideoProgressRunnable f34871e;

    /* renamed from: f */
    public AudioManager f34872f;

    /* renamed from: g */
    public Listener f34873g;

    /* renamed from: h */
    public AudioManager.OnAudioFocusChangeListener f34874h;

    /* renamed from: i */
    public Surface f34875i;

    /* renamed from: j */
    public TextureView f34876j;

    /* renamed from: k */
    public WeakReference<Object> f34877k;

    /* renamed from: l */
    public volatile AbstractC3028w f34878l;

    /* renamed from: m */
    public BitmapDrawable f34879m;

    /* renamed from: n */
    public C2997s f34880n;

    /* renamed from: o */
    public MediaCodecVideoRenderer f34881o;

    /* renamed from: p */
    public boolean f34882p;

    /* renamed from: q */
    public boolean f34883q;

    /* renamed from: r */
    public boolean f34884r;

    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/NativeVideoController$Listener.class */
    public interface Listener {
        void onError(Exception exc);

        void onStateChanged(boolean z, int i);
    }

    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable.class */
    public static class NativeVideoProgressRunnable extends RepeatingHandlerRunnable {

        /* renamed from: d */
        public final Context f34885d;

        /* renamed from: e */
        public final VisibilityTracker.VisibilityChecker f34886e;

        /* renamed from: f */
        public final List<C8969d> f34887f;

        /* renamed from: g */
        public final VastVideoConfig f34888g;

        /* renamed from: h */
        public AbstractC3028w f34889h;

        /* renamed from: i */
        public TextureView f34890i;

        /* renamed from: j */
        public ProgressListener f34891j;

        /* renamed from: k */
        public long f34892k;

        /* renamed from: l */
        public long f34893l;

        /* renamed from: m */
        public boolean f34894m;

        /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable$ProgressListener.class */
        public interface ProgressListener {
            void updateProgress(int i);
        }

        @VisibleForTesting
        public NativeVideoProgressRunnable(Context context, Handler handler, List<C8969d> list, VisibilityTracker.VisibilityChecker visibilityChecker, VastVideoConfig vastVideoConfig) {
            super(handler);
            Preconditions.checkNotNull(context);
            Preconditions.checkNotNull(handler);
            Preconditions.checkNotNull(list);
            Preconditions.checkNotNull(vastVideoConfig);
            this.f34885d = context.getApplicationContext();
            this.f34887f = list;
            this.f34886e = visibilityChecker;
            this.f34888g = vastVideoConfig;
            this.f34893l = -1L;
            this.f34894m = false;
        }

        public NativeVideoProgressRunnable(Context context, Handler handler, List<C8969d> list, VastVideoConfig vastVideoConfig) {
            this(context, handler, list, new VisibilityTracker.VisibilityChecker(), vastVideoConfig);
        }

        /* renamed from: a */
        public long m3893a() {
            return this.f34892k;
        }

        /* renamed from: a */
        public void m3892a(long j) {
            this.f34892k = j;
        }

        /* renamed from: a */
        public void m3891a(TextureView textureView) {
            this.f34890i = textureView;
        }

        /* renamed from: a */
        public void m3890a(AbstractC3028w wVar) {
            this.f34889h = wVar;
        }

        /* renamed from: a */
        public void m3889a(ProgressListener progressListener) {
            this.f34891j = progressListener;
        }

        /* renamed from: a */
        public void m3888a(boolean z) {
            int i = 0;
            for (C8969d dVar : this.f34887f) {
                if (!dVar.f34900e) {
                    if (!z) {
                        VisibilityTracker.VisibilityChecker visibilityChecker = this.f34886e;
                        TextureView textureView = this.f34890i;
                        if (visibilityChecker.isVisible(textureView, textureView, dVar.f34897b, dVar.f34901f)) {
                        }
                    }
                    int i2 = (int) (dVar.f34899d + this.f34196c);
                    dVar.f34899d = i2;
                    if (z || i2 >= dVar.f34898c) {
                        dVar.f34896a.execute();
                        dVar.f34900e = true;
                    }
                }
                i++;
            }
            if (i == this.f34887f.size() && this.f34894m) {
                stop();
            }
        }

        /* renamed from: b */
        public long m3887b() {
            return this.f34893l;
        }

        /* renamed from: c */
        public void m3886c() {
            this.f34894m = true;
        }

        @Override // com.mopub.mobileads.RepeatingHandlerRunnable
        public void doWork() {
            AbstractC3028w wVar = this.f34889h;
            if (wVar != null && wVar.mo27496R()) {
                this.f34892k = this.f34889h.getCurrentPosition();
                this.f34893l = this.f34889h.getDuration();
                m3888a(false);
                ProgressListener progressListener = this.f34891j;
                if (progressListener != null) {
                    progressListener.updateProgress((int) ((((float) this.f34892k) / ((float) this.f34893l)) * 1000.0f));
                }
                List<VastTracker> untriggeredTrackersBefore = this.f34888g.getUntriggeredTrackersBefore((int) this.f34892k, (int) this.f34893l);
                if (!untriggeredTrackersBefore.isEmpty()) {
                    ArrayList arrayList = new ArrayList();
                    for (VastTracker vastTracker : untriggeredTrackersBefore) {
                        if (!vastTracker.isTracked()) {
                            arrayList.add(vastTracker.getContent());
                            vastTracker.setTracked();
                        }
                    }
                    TrackingRequest.makeTrackingHttpRequest(arrayList, this.f34885d);
                }
            }
        }
    }

    /* renamed from: com.mopub.nativeads.NativeVideoController$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/NativeVideoController$a.class */
    public class C8966a implements AbstractC2827j.AbstractC2828a {
        public C8966a() {
        }

        @Override // p131c.p161d.p170b.p188c.p201f1.AbstractC2827j.AbstractC2828a
        public AbstractC2827j createDataSource() {
            C2835n nVar = new C2835n("exo_demo", null);
            Cache a = C6673d.m20100a(NativeVideoController.this.f34867a);
            AbstractC2827j jVar = nVar;
            if (a != null) {
                jVar = new C2844c(a, nVar);
            }
            return jVar;
        }
    }

    /* renamed from: com.mopub.nativeads.NativeVideoController$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/NativeVideoController$b.class */
    public class C8967b implements AbstractC3045j {
        public C8967b(NativeVideoController nativeVideoController) {
        }

        @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3045j
        public AbstractC3042g[] createExtractors() {
            return new AbstractC3042g[]{new C3105i()};
        }
    }

    @VisibleForTesting
    /* renamed from: com.mopub.nativeads.NativeVideoController$c */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/NativeVideoController$c.class */
    public static class C8968c {
        public AbstractC3028w newInstance(Context context, AbstractC2953m0[] m0VarArr, AbstractC2784h hVar, AbstractC2760c0 c0Var) {
            return C3193x.m27532a(context, m0VarArr, hVar, c0Var);
        }
    }

    /* renamed from: com.mopub.nativeads.NativeVideoController$d */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/NativeVideoController$d.class */
    public static class C8969d {

        /* renamed from: a */
        public AbstractC8970a f34896a;

        /* renamed from: b */
        public int f34897b;

        /* renamed from: c */
        public int f34898c;

        /* renamed from: d */
        public int f34899d;

        /* renamed from: e */
        public boolean f34900e;

        /* renamed from: f */
        public Integer f34901f;

        /* renamed from: com.mopub.nativeads.NativeVideoController$d$a */
        /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/NativeVideoController$d$a.class */
        public interface AbstractC8970a {
            void execute();
        }
    }

    public NativeVideoController(Context context, VastVideoConfig vastVideoConfig, NativeVideoProgressRunnable nativeVideoProgressRunnable, C8968c cVar, AudioManager audioManager) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(vastVideoConfig);
        Preconditions.checkNotNull(cVar);
        Preconditions.checkNotNull(audioManager);
        this.f34867a = context.getApplicationContext();
        this.f34868b = new Handler(Looper.getMainLooper());
        this.f34870d = vastVideoConfig;
        this.f34871e = nativeVideoProgressRunnable;
        this.f34869c = cVar;
        this.f34872f = audioManager;
    }

    public NativeVideoController(Context context, List<C8969d> list, VastVideoConfig vastVideoConfig) {
        this(context, vastVideoConfig, new NativeVideoProgressRunnable(context, new Handler(Looper.getMainLooper()), list, vastVideoConfig), new C8968c(), (AudioManager) context.getSystemService("audio"));
    }

    @VisibleForTesting
    public static NativeVideoController createForId(long j, Context context, VastVideoConfig vastVideoConfig, NativeVideoProgressRunnable nativeVideoProgressRunnable, C8968c cVar, AudioManager audioManager) {
        NativeVideoController nativeVideoController = new NativeVideoController(context, vastVideoConfig, nativeVideoProgressRunnable, cVar, audioManager);
        f34866s.put(Long.valueOf(j), nativeVideoController);
        return nativeVideoController;
    }

    public static NativeVideoController createForId(long j, Context context, List<C8969d> list, VastVideoConfig vastVideoConfig) {
        NativeVideoController nativeVideoController = new NativeVideoController(context, list, vastVideoConfig);
        f34866s.put(Long.valueOf(j), nativeVideoController);
        return nativeVideoController;
    }

    public static NativeVideoController getForId(long j) {
        return f34866s.get(Long.valueOf(j));
    }

    public static NativeVideoController remove(long j) {
        return f34866s.remove(Long.valueOf(j));
    }

    @VisibleForTesting
    public static void setForId(long j, NativeVideoController nativeVideoController) {
        f34866s.put(Long.valueOf(j), nativeVideoController);
    }

    /* renamed from: a */
    public final void m3901a(float f) {
        AbstractC3028w wVar = this.f34878l;
        C2997s sVar = this.f34880n;
        if (wVar != null && sVar != null) {
            C2949l0 a = wVar.mo27477a(sVar);
            if (a == null) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "ExoPlayer.createMessage returned null.");
                return;
            }
            a.m28409a(2);
            a.m28408a(Float.valueOf(f));
            a.m28398j();
        }
    }

    /* renamed from: a */
    public final void m3900a(Surface surface) {
        AbstractC3028w wVar = this.f34878l;
        MediaCodecVideoRenderer mediaCodecVideoRenderer = this.f34881o;
        if (wVar != null && mediaCodecVideoRenderer != null) {
            C2949l0 a = wVar.mo27477a(mediaCodecVideoRenderer);
            if (a == null) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "ExoPlayer.createMessage returned null.");
                return;
            }
            a.m28409a(1);
            a.m28408a(surface);
            a.m28398j();
        }
    }

    /* renamed from: b */
    public final void m3898b() {
        if (this.f34878l != null) {
            m3900a((Surface) null);
            this.f34878l.stop();
            this.f34878l.mo27490a();
            this.f34878l = null;
            this.f34871e.stop();
            this.f34871e.m3890a((AbstractC3028w) null);
        }
    }

    /* renamed from: c */
    public final void m3897c() {
        if (this.f34878l == null) {
            this.f34881o = new MediaCodecVideoRenderer(this.f34867a, AbstractC3199f.f11807a, 0L, this.f34868b, null, 10);
            this.f34880n = new C2997s(this.f34867a, AbstractC3199f.f11807a);
            C2830l lVar = new C2830l(true, MapMakerInternalMap.MAX_SEGMENTS, 32);
            C3009u.C3010a aVar = new C3009u.C3010a();
            aVar.m28149a(lVar);
            this.f34878l = this.f34869c.newInstance(this.f34867a, new AbstractC2953m0[]{this.f34881o, this.f34880n}, new DefaultTrackSelector(), aVar.m28150a());
            this.f34871e.m3890a(this.f34878l);
            this.f34878l.mo27478a(this);
            C8966a aVar2 = new C8966a();
            C8967b bVar = new C8967b(this);
            C2730q.C2732b bVar2 = new C2730q.C2732b(aVar2);
            bVar2.m29253a(bVar);
            this.f34878l.mo27484a(bVar2.m29254a(Uri.parse(this.f34870d.getNetworkMediaFileUrl())));
            this.f34871e.startRepeating(50L);
        }
        m3896d();
        m3895e();
    }

    public void clear() {
        setPlayWhenReady(false);
        this.f34875i = null;
        m3898b();
    }

    /* renamed from: d */
    public final void m3896d() {
        m3901a(this.f34883q ? 1.0f : 0.0f);
    }

    /* renamed from: e */
    public final void m3895e() {
        if (this.f34878l != null) {
            this.f34878l.mo27458c(this.f34882p);
        }
    }

    /* renamed from: f */
    public void m3894f() {
        this.f34871e.m3888a(true);
    }

    public long getCurrentPosition() {
        return this.f34871e.m3893a();
    }

    public long getDuration() {
        return this.f34871e.m3887b();
    }

    public Drawable getFinalFrame() {
        return this.f34879m;
    }

    public int getPlaybackState() {
        if (this.f34878l == null) {
            return 5;
        }
        return this.f34878l.mo27498P();
    }

    public void handleCtaClick(Context context) {
        m3894f();
        this.f34870d.handleClickWithoutResult(context, 0);
    }

    public boolean hasFinalFrame() {
        return this.f34879m != null;
    }

    @Override // android.media.AudioManager.OnAudioFocusChangeListener
    public void onAudioFocusChange(int i) {
        AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener = this.f34874h;
        if (onAudioFocusChangeListener != null) {
            onAudioFocusChangeListener.onAudioFocusChange(i);
        }
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2941j0.AbstractC2943b
    public void onLoadingChanged(boolean z) {
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2941j0.AbstractC2943b
    public void onPlaybackParametersChanged(C2910h0 h0Var) {
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2941j0.AbstractC2943b
    public void onPlayerError(ExoPlaybackException exoPlaybackException) {
        Listener listener = this.f34873g;
        if (listener != null) {
            listener.onError(exoPlaybackException);
            this.f34871e.m3886c();
        }
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2941j0.AbstractC2943b
    public void onPlayerStateChanged(boolean z, int i) {
        if (i == 4 && this.f34879m == null) {
            if (this.f34878l == null || this.f34875i == null || this.f34876j == null) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "onPlayerStateChanged called afer view has been recycled.");
                return;
            } else {
                this.f34879m = new BitmapDrawable(this.f34867a.getResources(), this.f34876j.getBitmap());
                this.f34871e.m3886c();
            }
        }
        Listener listener = this.f34873g;
        if (listener != null) {
            listener.onStateChanged(z, i);
        }
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2941j0.AbstractC2943b
    public void onTracksChanged(TrackGroupArray trackGroupArray, C2783g gVar) {
    }

    public void prepare(Object obj) {
        Preconditions.checkNotNull(obj);
        this.f34877k = new WeakReference<>(obj);
        m3898b();
        m3897c();
        m3900a(this.f34875i);
    }

    public void release(Object obj) {
        Preconditions.checkNotNull(obj);
        WeakReference<Object> weakReference = this.f34877k;
        if ((weakReference == null ? null : weakReference.get()) == obj) {
            m3898b();
        }
    }

    public void seekTo(long j) {
        if (this.f34878l != null) {
            this.f34878l.mo28388a(j);
            this.f34871e.m3892a(j);
        }
    }

    public void setAppAudioEnabled(boolean z) {
        if (this.f34884r != z) {
            this.f34884r = z;
            if (z) {
                this.f34872f.requestAudioFocus(this, 3, 1);
            } else {
                this.f34872f.abandonAudioFocus(this);
            }
        }
    }

    public void setAudioEnabled(boolean z) {
        this.f34883q = z;
        m3896d();
    }

    public void setAudioVolume(float f) {
        if (this.f34883q) {
            m3901a(f);
        }
    }

    public void setListener(Listener listener) {
        this.f34873g = listener;
    }

    public void setOnAudioFocusChangeListener(AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener) {
        this.f34874h = onAudioFocusChangeListener;
    }

    public void setPlayWhenReady(boolean z) {
        if (this.f34882p != z) {
            this.f34882p = z;
            m3895e();
        }
    }

    public void setProgressListener(NativeVideoProgressRunnable.ProgressListener progressListener) {
        this.f34871e.m3889a(progressListener);
    }

    public void setTextureView(TextureView textureView) {
        Preconditions.checkNotNull(textureView);
        this.f34875i = new Surface(textureView.getSurfaceTexture());
        this.f34876j = textureView;
        this.f34871e.m3891a(textureView);
        m3900a(this.f34875i);
    }
}
