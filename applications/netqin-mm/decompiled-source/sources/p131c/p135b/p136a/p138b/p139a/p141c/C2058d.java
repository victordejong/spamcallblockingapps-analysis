package p131c.p135b.p136a.p138b.p139a.p141c;

import android.content.res.ColorStateList;
import android.graphics.Color;
import android.graphics.PointF;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.StrictMode;
import android.os.SystemClock;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import com.applovin.adview.AppLovinFullscreenActivity;
import com.applovin.impl.adview.AppLovinTouchToClickListener;
import com.applovin.impl.adview.AppLovinVideoViewV2;
import com.applovin.impl.sdk.p489ad.AbstractC7036g;
import com.applovin.impl.sdk.p491d.C7048s;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdType;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.concurrent.atomic.AtomicBoolean;
import p131c.p135b.p136a.p138b.C2068b;
import p131c.p135b.p136a.p138b.C2082h;
import p131c.p135b.p136a.p138b.C2095k;
import p131c.p135b.p136a.p138b.p139a.p140a.C2039c;
import p131c.p135b.p136a.p148e.C2251d;
import p131c.p135b.p136a.p148e.C2270g;
import p131c.p135b.p136a.p148e.C2341l;
import p131c.p135b.p136a.p148e.C2374t;
import p131c.p135b.p136a.p148e.p150c.AbstractC2249e;
import p131c.p135b.p136a.p148e.p153y.C2388g;
import p131c.p135b.p136a.p148e.p153y.C2391j;
import p131c.p135b.p156c.C2450b;
/* renamed from: c.b.a.b.a.c.d */
/* loaded from: classes-dex2jar.jar:c/b/a/b/a/c/d.class */
public class C2058d extends AbstractC2041a {

    /* renamed from: A */
    public final C2068b f7998A;

    /* renamed from: B */
    public final C2095k f7999B;

    /* renamed from: C */
    public final ImageView f8000C;

    /* renamed from: D */
    public final ProgressBar f8001D;

    /* renamed from: F */
    public final Handler f8003F;

    /* renamed from: G */
    public final C2082h f8004G;

    /* renamed from: J */
    public long f8007J;

    /* renamed from: K */
    public int f8008K;

    /* renamed from: M */
    public boolean f8010M;

    /* renamed from: y */
    public MediaPlayer f8016y;

    /* renamed from: z */
    public final AppLovinVideoViewV2 f8017z;

    /* renamed from: x */
    public final C2039c f8015x = new C2039c(this.f7952a, this.f7955d, this.f7953b);

    /* renamed from: E */
    public final C2066g f8002E = new C2066g(this, null);

    /* renamed from: H */
    public final boolean f8005H = this.f7952a.mo18873s0();

    /* renamed from: I */
    public boolean f8006I = m31179p();

    /* renamed from: L */
    public int f8009L = -1;

    /* renamed from: N */
    public AtomicBoolean f8011N = new AtomicBoolean();

    /* renamed from: O */
    public AtomicBoolean f8012O = new AtomicBoolean();

    /* renamed from: P */
    public long f8013P = -2;

    /* renamed from: Q */
    public long f8014Q = 0;

    /* renamed from: c.b.a.b.a.c.d$a */
    /* loaded from: classes-dex2jar.jar:c/b/a/b/a/c/d$a.class */
    public class C2059a implements C2082h.AbstractC2084b {
        public C2059a() {
        }

        @Override // p131c.p135b.p136a.p138b.C2082h.AbstractC2084b
        /* renamed from: a */
        public void mo19212a() {
            C2058d dVar = C2058d.this;
            if (dVar.f8010M) {
                dVar.f8001D.setVisibility(8);
                return;
            }
            float currentPosition = dVar.f8017z.getCurrentPosition();
            C2058d dVar2 = C2058d.this;
            dVar2.f8001D.setProgress((int) ((currentPosition / ((float) dVar2.f8007J)) * 10000.0f));
        }

        @Override // p131c.p135b.p136a.p138b.C2082h.AbstractC2084b
        /* renamed from: b */
        public boolean mo19211b() {
            return !C2058d.this.f8010M;
        }
    }

    /* renamed from: c.b.a.b.a.c.d$b */
    /* loaded from: classes-dex2jar.jar:c/b/a/b/a/c/d$b.class */
    public class RunnableC2060b implements Runnable {
        public RunnableC2060b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C2058d.this.m31165B();
        }
    }

    /* renamed from: c.b.a.b.a.c.d$c */
    /* loaded from: classes-dex2jar.jar:c/b/a/b/a/c/d$c.class */
    public class RunnableC2061c implements Runnable {
        public RunnableC2061c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C2058d.this.f8013P = -1L;
            C2058d.this.f8014Q = SystemClock.elapsedRealtime();
        }
    }

    /* renamed from: c.b.a.b.a.c.d$d */
    /* loaded from: classes-dex2jar.jar:c/b/a/b/a/c/d$d.class */
    public class RunnableC2062d implements Runnable {
        public RunnableC2062d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C2058d.this.m31142r();
        }
    }

    /* renamed from: c.b.a.b.a.c.d$e */
    /* loaded from: classes-dex2jar.jar:c/b/a/b/a/c/d$e.class */
    public class RunnableC2063e implements Runnable {

        /* renamed from: c.b.a.b.a.c.d$e$a */
        /* loaded from: classes-dex2jar.jar:c/b/a/b/a/c/d$e$a.class */
        public class RunnableC2064a implements Runnable {
            public RunnableC2064a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                C2058d.this.f7998A.m31132b();
            }
        }

        public RunnableC2063e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (C2058d.this.f7998A != null) {
                C2058d.this.f7998A.m31133a();
                C2058d.this.m31194a(new RunnableC2064a(), 2000L);
            }
        }
    }

    /* renamed from: c.b.a.b.a.c.d$f */
    /* loaded from: classes-dex2jar.jar:c/b/a/b/a/c/d$f.class */
    public class RunnableC2065f implements Runnable {
        public RunnableC2065f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C2058d.this.f7967p = SystemClock.elapsedRealtime();
        }
    }

    /* renamed from: c.b.a.b.a.c.d$g */
    /* loaded from: classes-dex2jar.jar:c/b/a/b/a/c/d$g.class */
    public class C2066g implements MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnInfoListener, MediaPlayer.OnPreparedListener, AppLovinTouchToClickListener.OnClickListener {
        public C2066g() {
        }

        public /* synthetic */ C2066g(C2058d dVar, C2059a aVar) {
            this();
        }

        @Override // com.applovin.impl.adview.AppLovinTouchToClickListener.OnClickListener
        public void onClick(View view, PointF pointF) {
            C2058d.this.mo31163a(pointF);
        }

        @Override // android.media.MediaPlayer.OnCompletionListener
        public void onCompletion(MediaPlayer mediaPlayer) {
            C2058d.this.f7954c.m30044b("InterActivityV2", "Video completed");
            C2058d.this.mo31136x();
        }

        @Override // android.media.MediaPlayer.OnErrorListener
        public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
            C2058d dVar = C2058d.this;
            dVar.mo31154c("Video view error (" + i + "," + i2 + ")");
            C2058d.this.f8017z.start();
            return true;
        }

        @Override // android.media.MediaPlayer.OnInfoListener
        public boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
            C2374t tVar = C2058d.this.f7954c;
            tVar.m30044b("InterActivityV2", "MediaPlayer Info: (" + i + ", " + i2 + ")");
            if (i == 701) {
                if (C2058d.this.f7998A != null) {
                    C2058d.this.f7998A.m31133a();
                }
                C2058d.this.f7956e.m30545g();
                return false;
            }
            if (i == 3) {
                C2058d.this.f8004G.m31105a();
                if (C2058d.this.f7999B != null) {
                    C2058d.this.m31165B();
                }
                if (C2058d.this.f7998A == null) {
                    return false;
                }
            } else if (i != 702 || C2058d.this.f7998A == null) {
                return false;
            }
            C2058d.this.f7998A.m31132b();
            return false;
        }

        @Override // android.media.MediaPlayer.OnPreparedListener
        public void onPrepared(MediaPlayer mediaPlayer) {
            C2058d.this.f8016y = mediaPlayer;
            mediaPlayer.setOnInfoListener(C2058d.this.f8002E);
            mediaPlayer.setOnErrorListener(C2058d.this.f8002E);
            float f = !C2058d.this.f8006I ? 1 : 0;
            mediaPlayer.setVolume(f, f);
            C2058d.this.f8007J = mediaPlayer.getDuration();
            C2058d.this.mo31140t();
            C2058d.this.f7954c.m30044b("InterActivityV2", "MediaPlayer prepared: " + C2058d.this.f8016y);
        }
    }

    /* renamed from: c.b.a.b.a.c.d$h */
    /* loaded from: classes-dex2jar.jar:c/b/a/b/a/c/d$h.class */
    public class View$OnClickListenerC2067h implements View.OnClickListener {
        public View$OnClickListenerC2067h() {
        }

        public /* synthetic */ View$OnClickListenerC2067h(C2058d dVar, C2059a aVar) {
            this();
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (view == C2058d.this.f7999B) {
                if (C2058d.this.m31141s()) {
                    C2058d.this.mo31139u();
                    C2058d.this.m31181n();
                    C2058d.this.f7973v.m30689b();
                    return;
                }
                C2058d.this.mo31138v();
            } else if (view == C2058d.this.f8000C) {
                C2058d.this.mo31137w();
            } else {
                C2374t tVar = C2058d.this.f7954c;
                tVar.m30039e("InterActivityV2", "Unhandled click on widget: " + view);
            }
        }
    }

    public C2058d(AbstractC7036g gVar, AppLovinFullscreenActivity appLovinFullscreenActivity, C2341l lVar, AppLovinAdClickListener appLovinAdClickListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener) {
        super(gVar, appLovinFullscreenActivity, lVar, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener);
        Handler handler = new Handler(Looper.getMainLooper());
        this.f8003F = handler;
        this.f8004G = new C2082h(handler, this.f7953b);
        if (gVar.hasVideoUrl()) {
            AppLovinVideoViewV2 appLovinVideoViewV2 = new AppLovinVideoViewV2(gVar.m18940Q(), appLovinFullscreenActivity, lVar);
            this.f8017z = appLovinVideoViewV2;
            appLovinVideoViewV2.setOnPreparedListener(this.f8002E);
            this.f8017z.setOnCompletionListener(this.f8002E);
            this.f8017z.setOnErrorListener(this.f8002E);
            this.f8017z.setOnTouchListener(new AppLovinTouchToClickListener(lVar, C2251d.C2256e.f8602T, appLovinFullscreenActivity, this.f8002E));
            View$OnClickListenerC2067h hVar = new View$OnClickListenerC2067h(this, null);
            if (gVar.m18863x0() >= 0) {
                C2095k kVar = new C2095k(gVar.m18962B0(), appLovinFullscreenActivity);
                this.f7999B = kVar;
                kVar.setVisibility(8);
                this.f7999B.setOnClickListener(hVar);
            } else {
                this.f7999B = null;
            }
            if (m31159a(this.f8006I, lVar)) {
                ImageView imageView = new ImageView(appLovinFullscreenActivity);
                this.f8000C = imageView;
                imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
                this.f8000C.setClickable(true);
                this.f8000C.setOnClickListener(hVar);
                m31151d(this.f8006I);
            } else {
                this.f8000C = null;
            }
            if (this.f8005H) {
                C2068b bVar = new C2068b(appLovinFullscreenActivity, ((Integer) lVar.m30291a(C2251d.C2256e.f8702l2)).intValue(), 16842874);
                this.f7998A = bVar;
                bVar.setColor(Color.parseColor("#75FFFFFF"));
                this.f7998A.setBackgroundColor(Color.parseColor("#00000000"));
                this.f7998A.setVisibility(8);
            } else {
                this.f7998A = null;
            }
            if (gVar.m18878q()) {
                ProgressBar progressBar = new ProgressBar(appLovinFullscreenActivity, null, 16842872);
                this.f8001D = progressBar;
                progressBar.setMax(10000);
                this.f8001D.setPadding(0, 0, 0, 0);
                if (C2388g.m29971d()) {
                    this.f8001D.setProgressTintList(ColorStateList.valueOf(gVar.m18876r()));
                }
                this.f8004G.m31101a("PROGRESS_BAR", ((Long) lVar.m30291a(C2251d.C2256e.f8672g2)).longValue(), new C2059a());
                return;
            }
            this.f8001D = null;
            return;
        }
        throw new IllegalStateException("Attempting to use fullscreen video ad presenter for non-video ad");
    }

    /* renamed from: a */
    public static boolean m31159a(boolean z, C2341l lVar) {
        if (!((Boolean) lVar.m30291a(C2251d.C2256e.f8623X1)).booleanValue()) {
            return false;
        }
        if (!((Boolean) lVar.m30291a(C2251d.C2256e.f8627Y1)).booleanValue() || z) {
            return true;
        }
        return ((Boolean) lVar.m30291a(C2251d.C2256e.f8637a2)).booleanValue();
    }

    /* renamed from: A */
    public int m31166A() {
        long currentPosition = this.f8017z.getCurrentPosition();
        return currentPosition > 0 ? (int) ((((float) currentPosition) / ((float) this.f8007J)) * 100.0f) : this.f8008K;
    }

    /* renamed from: B */
    public final void m31165B() {
        if (this.f8012O.compareAndSet(false, true)) {
            m31195a(this.f7999B, this.f7952a.m18863x0(), new RunnableC2061c());
        }
    }

    @Override // p131c.p135b.p136a.p148e.p149a.C2229b.AbstractC2237d
    /* renamed from: a */
    public void mo30683a() {
        this.f7954c.m30044b("InterActivityV2", "Skipping video from prompt");
        mo31138v();
    }

    @Override // p131c.p135b.p136a.p138b.p139a.p141c.AbstractC2041a
    /* renamed from: a */
    public void mo31164a(int i, KeyEvent keyEvent) {
        super.mo31164a(i, keyEvent);
        if ((i == 25 || i == 24) && this.f7952a.m18936U() && this.f8006I) {
            mo31137w();
        }
    }

    /* renamed from: a */
    public void mo31163a(PointF pointF) {
        if (this.f7952a.mo18950H0()) {
            this.f7954c.m30044b("InterActivityV2", "Clicking through video");
            Uri u0 = this.f7952a.mo18869u0();
            if (u0 != null) {
                C2391j.m29900a(this.f7970s, this.f7952a);
                this.f7953b.m30299W().trackAndLaunchVideoClick(this.f7952a, this.f7961j, u0, pointF);
                this.f7956e.m30553b();
            }
        }
    }

    @Override // p131c.p135b.p136a.p148e.p149a.C2229b.AbstractC2237d
    /* renamed from: b */
    public void mo30682b() {
        this.f7954c.m30044b("InterActivityV2", "Continue video from prompt - will resume in onWindowFocusChanged(true) when alert dismisses");
    }

    @Override // p131c.p135b.p136a.p138b.p139a.p141c.AbstractC2041a
    /* renamed from: c */
    public void mo31156c() {
        this.f8015x.m31205a(this.f8000C, this.f7999B, this.f7998A, this.f8001D, this.f8017z, this.f7961j);
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        m31191a(!this.f8005H);
        this.f8017z.setVideoURI(this.f7952a.mo18871t0());
        StrictMode.setThreadPolicy(allowThreadDiskReads);
        this.f8017z.start();
        if (this.f8005H) {
            this.f7998A.m31133a();
        }
        this.f7961j.renderAd(this.f7952a);
        this.f7956e.m30552b(this.f8005H ? 1L : 0L);
        if (this.f7999B != null) {
            this.f7953b.m30249j().m18824a((C2270g.AbstractRunnableC2278c) new C2270g.C2290g(this.f7953b, new RunnableC2060b()), C7048s.EnumC7049a.MAIN, this.f7952a.m18861y0(), true);
        }
        super.m31187b(this.f8006I);
    }

    /* renamed from: c */
    public void mo31154c(String str) {
        C2374t tVar = this.f7954c;
        tVar.m30039e("InterActivityV2", "Encountered media error: " + str + " for ad: " + this.f7952a);
        if (this.f8011N.compareAndSet(false, true) && this.f7952a.m18886m()) {
            AppLovinAdDisplayListener appLovinAdDisplayListener = this.f7971t;
            if (appLovinAdDisplayListener instanceof AbstractC2249e) {
                ((AbstractC2249e) appLovinAdDisplayListener).onAdDisplayFailed(str);
            }
            mo31149f();
        }
    }

    @Override // p131c.p135b.p136a.p138b.p139a.p141c.AbstractC2041a
    /* renamed from: c */
    public void mo31153c(boolean z) {
        super.mo31153c(z);
        if (z) {
            m31135y();
        } else if (!this.f8010M) {
            mo31139u();
        }
    }

    /* renamed from: d */
    public final void m31151d(boolean z) {
        if (C2388g.m29971d()) {
            AnimatedVectorDrawable animatedVectorDrawable = (AnimatedVectorDrawable) this.f7955d.getDrawable(z ? C2450b.unmute_to_mute : C2450b.mute_to_unmute);
            if (animatedVectorDrawable != null) {
                this.f8000C.setScaleType(ImageView.ScaleType.FIT_XY);
                this.f8000C.setImageDrawable(animatedVectorDrawable);
                animatedVectorDrawable.start();
                return;
            }
        }
        Uri L = z ? this.f7952a.m18945L() : this.f7952a.m18944M();
        int dpToPx = AppLovinSdkUtils.dpToPx(this.f7955d, ((Integer) this.f7953b.m30291a(C2251d.C2256e.f8648c2)).intValue());
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        AppLovinSdkUtils.safePopulateImageView(this.f8000C, L, dpToPx);
        StrictMode.setThreadPolicy(allowThreadDiskReads);
    }

    @Override // p131c.p135b.p136a.p138b.p139a.p141c.AbstractC2041a
    /* renamed from: f */
    public void mo31149f() {
        this.f8004G.m31100b();
        this.f8003F.removeCallbacksAndMessages(null);
        mo31144l();
        super.mo31149f();
    }

    @Override // p131c.p135b.p136a.p138b.p139a.p141c.AbstractC2041a
    /* renamed from: h */
    public void mo31146h() {
        this.f7954c.m30042c("InterActivityV2", "Destroying video components");
        try {
            if (this.f8017z != null) {
                this.f8017z.pause();
                this.f8017z.stopPlayback();
            }
            if (this.f8016y != null) {
                this.f8016y.release();
            }
        } catch (Throwable th) {
            Log.e("InterActivityV2", "Unable to destroy presenter", th);
        }
        super.mo31146h();
    }

    @Override // p131c.p135b.p136a.p138b.p139a.p141c.AbstractC2041a
    /* renamed from: l */
    public void mo31144l() {
        super.m31199a(m31166A(), this.f8005H, m31134z(), this.f8013P);
    }

    /* renamed from: q */
    public final void m31143q() {
        this.f8008K = m31166A();
        this.f8017z.stopPlayback();
    }

    /* renamed from: r */
    public final void m31142r() {
        C2374t tVar;
        String str;
        if (this.f8010M) {
            tVar = this.f7954c;
            str = "Skip video resume - postitial shown";
        } else if (this.f7953b.m30236w().m29746a()) {
            tVar = this.f7954c;
            str = "Skip video resume - app paused";
        } else if (this.f8009L > 0) {
            C2374t tVar2 = this.f7954c;
            tVar2.m30044b("InterActivityV2", "Resuming video at position " + this.f8009L + "ms for MediaPlayer: " + this.f8016y);
            this.f8017z.start();
            this.f8004G.m31105a();
            this.f8009L = -1;
            m31194a(new RunnableC2063e(), 250L);
            return;
        } else {
            this.f7954c.m30044b("InterActivityV2", "Invalid last video position");
            return;
        }
        tVar.m30040d("InterActivityV2", str);
    }

    /* renamed from: s */
    public boolean m31141s() {
        return this.f7952a.getType() == AppLovinAdType.INCENTIVIZED && !m31134z();
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0084, code lost:
        if (r12 > 0) goto L_0x0069;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4, types: [long] */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v2, types: [long] */
    /* JADX WARN: Type inference failed for: r9v6 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: t */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo31140t() {
        /*
            r6 = this;
            r0 = r6
            com.applovin.impl.sdk.ad.g r0 = r0.f7952a
            long r0 = r0.m18906d0()
            r7 = r0
            r0 = 0
            r9 = r0
            r0 = r7
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x001a
            r0 = r6
            com.applovin.impl.sdk.ad.g r0 = r0.f7952a
            int r0 = r0.m18903e0()
            if (r0 < 0) goto L_0x00b8
        L_0x001a:
            r0 = r6
            com.applovin.impl.sdk.ad.g r0 = r0.f7952a
            long r0 = r0.m18906d0()
            r7 = r0
            r0 = r6
            com.applovin.impl.sdk.ad.g r0 = r0.f7952a
            r11 = r0
            r0 = r7
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L_0x0037
            r0 = r11
            long r0 = r0.m18906d0()
            r9 = r0
            goto L_0x00b3
        L_0x0037:
            r0 = r11
            c.b.a.e.c.a r0 = (p131c.p135b.p136a.p148e.p150c.C2245a) r0
            r11 = r0
            r0 = r6
            long r0 = r0.f8007J
            r7 = r0
            r0 = r7
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x004d
            r0 = 0
            r1 = r7
            long r0 = r0 + r1
            r9 = r0
        L_0x004d:
            r0 = r9
            r7 = r0
            r0 = r11
            boolean r0 = r0.m18900f0()
            if (r0 == 0) goto L_0x008a
            r0 = r6
            com.applovin.impl.sdk.ad.g r0 = r0.f7952a
            c.b.a.e.c.a r0 = (p131c.p135b.p136a.p148e.p150c.C2245a) r0
            float r0 = r0.m30656N0()
            int r0 = (int) r0
            r12 = r0
            r0 = r12
            if (r0 <= 0) goto L_0x0078
        L_0x0069:
            r0 = r9
            java.util.concurrent.TimeUnit r1 = java.util.concurrent.TimeUnit.SECONDS
            r2 = r12
            long r2 = (long) r2
            long r1 = r1.toMillis(r2)
            long r0 = r0 + r1
            r7 = r0
            goto L_0x008a
        L_0x0078:
            r0 = r11
            long r0 = r0.m18859z0()
            int r0 = (int) r0
            r12 = r0
            r0 = r9
            r7 = r0
            r0 = r12
            if (r0 <= 0) goto L_0x008a
            goto L_0x0069
        L_0x008a:
            r0 = r7
            double r0 = (double) r0
            r13 = r0
            r0 = r6
            com.applovin.impl.sdk.ad.g r0 = r0.f7952a
            int r0 = r0.m18903e0()
            double r0 = (double) r0
            r15 = r0
            r0 = r15
            boolean r0 = java.lang.Double.isNaN(r0)
            r0 = r15
            r1 = 4636737291354636288(0x4059000000000000, double:100.0)
            double r0 = r0 / r1
            r15 = r0
            r0 = r13
            boolean r0 = java.lang.Double.isNaN(r0)
            r0 = r13
            r1 = r15
            double r0 = r0 * r1
            long r0 = (long) r0
            r9 = r0
        L_0x00b3:
            r0 = r6
            r1 = r9
            r0.m31198a(r1)
        L_0x00b8:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p135b.p136a.p138b.p139a.p141c.C2058d.mo31140t():void");
    }

    /* renamed from: u */
    public void mo31139u() {
        String str;
        C2374t tVar;
        this.f7954c.m30044b("InterActivityV2", "Pausing video");
        if (this.f8017z.isPlaying()) {
            this.f8009L = this.f8017z.getCurrentPosition();
            this.f8017z.pause();
            this.f8004G.m31098c();
            tVar = this.f7954c;
            str = "Paused video at position " + this.f8009L + "ms";
        } else {
            tVar = this.f7954c;
            str = "Nothing to pause";
        }
        tVar.m30044b("InterActivityV2", str);
    }

    /* renamed from: v */
    public void mo31138v() {
        this.f8013P = SystemClock.elapsedRealtime() - this.f8014Q;
        C2374t tVar = this.f7954c;
        tVar.m30044b("InterActivityV2", "Skipping video with skip time: " + this.f8013P + "ms");
        this.f7956e.m30546f();
        if (this.f7952a.m18960C0()) {
            mo31149f();
        } else {
            mo31136x();
        }
    }

    /* renamed from: w */
    public void mo31137w() {
        MediaPlayer mediaPlayer = this.f8016y;
        if (mediaPlayer != null) {
            boolean z = !this.f8006I ? 1 : 0;
            this.f8006I = z;
            float f = !z ? 1 : 0;
            mediaPlayer.setVolume(f, f);
            m31151d(this.f8006I);
            m31190a(this.f8006I, 0L);
        }
    }

    /* renamed from: x */
    public void mo31136x() {
        this.f7954c.m30044b("InterActivityV2", "Showing postitial...");
        m31143q();
        this.f8015x.m31204a(this.f7962k, this.f7961j);
        m31192a("javascript:al_onPoststitialShow();", this.f7952a.m18860z());
        if (this.f7962k != null) {
            long z0 = this.f7952a.m18859z0();
            C2095k kVar = this.f7962k;
            if (z0 >= 0) {
                m31195a(kVar, this.f7952a.m18859z0(), new RunnableC2065f());
            } else {
                kVar.setVisibility(0);
            }
        }
        this.f8010M = true;
    }

    /* renamed from: y */
    public void m31135y() {
        m31194a(new RunnableC2062d(), 250L);
    }

    /* renamed from: z */
    public boolean m31134z() {
        return m31166A() >= this.f7952a.m18862y();
    }
}
