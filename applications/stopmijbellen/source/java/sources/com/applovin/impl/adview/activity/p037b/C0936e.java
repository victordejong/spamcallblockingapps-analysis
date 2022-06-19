package com.applovin.impl.adview.activity.p037b;

import android.app.Activity;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.graphics.PointF;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.StrictMode;
import android.os.SystemClock;
import android.support.p012v4.media.C0082b;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import com.applovin.adview.AppLovinAdView;
import com.applovin.communicator.AppLovinCommunicator;
import com.applovin.communicator.AppLovinCommunicatorMessage;
import com.applovin.communicator.AppLovinCommunicatorSubscriber;
import com.applovin.impl.adview.AppLovinTouchToClickListener;
import com.applovin.impl.adview.C0897a;
import com.applovin.impl.adview.C0998j;
import com.applovin.impl.adview.C1011m;
import com.applovin.impl.adview.C1024s;
import com.applovin.impl.adview.C1025t;
import com.applovin.impl.adview.C1026u;
import com.applovin.impl.adview.activity.p036a.C0908c;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.C1479t;
import com.applovin.impl.sdk.p053ad.AbstractC1286e;
import com.applovin.impl.sdk.p053ad.AbstractC1293g;
import com.applovin.impl.sdk.p055c.C1314b;
import com.applovin.impl.sdk.p057e.C1362o;
import com.applovin.impl.sdk.p057e.C1387z;
import com.applovin.impl.sdk.utils.C1492g;
import com.applovin.impl.sdk.utils.C1496j;
import com.applovin.impl.sdk.utils.C1536p;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.C1583R;
import com.google.ads.mediation.applovin.AppLovinMediationAdapter;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.Player;
import com.google.android.exoplayer2.SimpleExoPlayer;
import com.google.android.exoplayer2.source.ProgressiveMediaSource;
import com.google.android.exoplayer2.ui.PlayerControlView;
import com.google.android.exoplayer2.ui.PlayerView;
import com.google.android.exoplayer2.upstream.DefaultDataSourceFactory;
import com.google.android.exoplayer2.util.Util;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;
import p007a6.C0033h;
/* renamed from: com.applovin.impl.adview.activity.b.e */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/activity/b/e.class */
public class C0936e extends AbstractC0914a implements AppLovinCommunicatorSubscriber {

    /* renamed from: A */
    public final C0998j f3481A;

    /* renamed from: C */
    public long f3483C;

    /* renamed from: D */
    public int f3484D;

    /* renamed from: E */
    public boolean f3485E;

    /* renamed from: F */
    public boolean f3486F;

    /* renamed from: H */
    private final C0946a f3488H;

    /* renamed from: I */
    private final Handler f3489I;

    /* renamed from: J */
    private final boolean f3490J;

    /* renamed from: t */
    public final PlayerView f3496t;

    /* renamed from: u */
    public final SimpleExoPlayer f3497u;

    /* renamed from: v */
    public final C0897a f3498v;

    /* renamed from: w */
    public final C1011m f3499w;

    /* renamed from: x */
    public final ImageView f3500x;

    /* renamed from: y */
    public final C1025t f3501y;

    /* renamed from: z */
    public final ProgressBar f3502z;

    /* renamed from: G */
    private final C0908c f3487G = new C0908c(this.f3425a, this.f3429e, this.f3426b);

    /* renamed from: B */
    public boolean f3482B = Utils.isVideoMutedInitially(this.f3426b);

    /* renamed from: K */
    private long f3491K = -1;

    /* renamed from: L */
    private final AtomicBoolean f3492L = new AtomicBoolean();

    /* renamed from: M */
    private final AtomicBoolean f3493M = new AtomicBoolean();

    /* renamed from: N */
    private long f3494N = -2;

    /* renamed from: O */
    private long f3495O = 0;

    /* renamed from: com.applovin.impl.adview.activity.b.e$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/activity/b/e$a.class */
    public class C0946a implements C1026u.AbstractC1027a {
        private C0946a() {
            C0936e.this = r4;
        }

        @Override // com.applovin.impl.adview.C1026u.AbstractC1027a
        /* renamed from: a */
        public void mo6780a(C1025t c1025t) {
            C0936e.this.f3427c.m5116b("AppLovinFullscreenActivity", "Clicking through from video button...");
            C0936e.this.mo7008a(c1025t.getAndClearLastClickLocation());
        }

        @Override // com.applovin.impl.adview.C1026u.AbstractC1027a
        /* renamed from: b */
        public void mo6779b(C1025t c1025t) {
            C0936e.this.f3427c.m5116b("AppLovinFullscreenActivity", "Closing ad from video button...");
            C0936e.this.mo6958h();
        }

        @Override // com.applovin.impl.adview.C1026u.AbstractC1027a
        /* renamed from: c */
        public void mo6778c(C1025t c1025t) {
            C0936e.this.f3427c.m5116b("AppLovinFullscreenActivity", "Skipping video from video button...");
            C0936e.this.mo7004c();
        }
    }

    /* renamed from: com.applovin.impl.adview.activity.b.e$b */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/activity/b/e$b.class */
    public class C0947b implements AppLovinTouchToClickListener.OnClickListener, Player.EventListener, PlayerControlView.VisibilityListener {
        private C0947b() {
            C0936e.this = r4;
        }

        @Override // com.applovin.impl.adview.AppLovinTouchToClickListener.OnClickListener
        public void onClick(View view, PointF pointF) {
            C0936e.this.mo7008a(pointF);
        }

        public void onPlaybackStateChanged(int i) {
            C1479t c1479t = C0936e.this.f3427c;
            StringBuilder m8751k = C0082b.m8751k("Player state changed to state ", i, " and will play when ready: ");
            m8751k.append(C0936e.this.f3497u.getPlayWhenReady());
            c1479t.m5116b("AppLovinFullscreenActivity", m8751k.toString());
            if (i == 2) {
                C0936e.this.mo7000u();
                C0936e.this.f3428d.m5759g();
            } else if (i != 3) {
                if (i != 4) {
                    return;
                }
                C0936e.this.f3427c.m5116b("AppLovinFullscreenActivity", "Video completed");
                C0936e c0936e = C0936e.this;
                c0936e.f3486F = true;
                c0936e.mo6997x();
            } else {
                C0936e c0936e2 = C0936e.this;
                c0936e2.f3497u.setVolume(!c0936e2.f3482B ? 1 : 0);
                C0936e c0936e3 = C0936e.this;
                c0936e3.mo7003c(c0936e3.f3497u.getDuration());
                C0936e.this.mo6954t();
                C1479t c1479t2 = C0936e.this.f3427c;
                StringBuilder m8752j = C0082b.m8752j("MediaPlayer prepared: ");
                m8752j.append(C0936e.this.f3497u);
                c1479t2.m5116b("AppLovinFullscreenActivity", m8752j.toString());
                C0936e.this.f3481A.m6854a();
                C0936e c0936e4 = C0936e.this;
                if (c0936e4.f3499w != null) {
                    c0936e4.m6995z();
                }
                C0936e.this.mo6999v();
                if (!C0936e.this.f3441q.m5848c()) {
                    return;
                }
                C0936e.this.mo6959e();
            }
        }

        public void onPlayerError(ExoPlaybackException exoPlaybackException) {
            C0936e c0936e = C0936e.this;
            c0936e.mo7002c("Video view error (" + exoPlaybackException + ")");
            C0936e.this.mo6958h();
        }

        public void onVisibilityChange(int i) {
            if (i == 0) {
                C0936e.this.f3496t.hideController();
            }
        }
    }

    /* renamed from: com.applovin.impl.adview.activity.b.e$c */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/activity/b/e$c.class */
    public class View$OnClickListenerC0948c implements View.OnClickListener {
        private View$OnClickListenerC0948c() {
            C0936e.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C0936e c0936e = C0936e.this;
            if (view == c0936e.f3499w) {
                if (!c0936e.mo6955r()) {
                    C0936e.this.mo7004c();
                    return;
                }
                C0936e.this.mo6959e();
                C0936e.this.m7039o();
                C0936e.this.f3441q.m5850b();
            } else if (view == c0936e.f3500x) {
                c0936e.mo6998w();
            } else {
                C1479t c1479t = c0936e.f3427c;
                c1479t.m5111e("AppLovinFullscreenActivity", "Unhandled click on widget: " + view);
            }
        }
    }

    public C0936e(AbstractC1286e abstractC1286e, Activity activity, C1408l c1408l, AppLovinAdClickListener appLovinAdClickListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener) {
        super(abstractC1286e, activity, c1408l, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener);
        C0946a c0946a = new C0946a();
        this.f3488H = c0946a;
        Handler handler = new Handler(Looper.getMainLooper());
        this.f3489I = handler;
        C0998j c0998j = new C0998j(handler, this.f3426b);
        this.f3481A = c0998j;
        boolean mo5911e = this.f3425a.mo5911e();
        this.f3490J = mo5911e;
        if (abstractC1286e.hasVideoUrl()) {
            View$OnClickListenerC0948c view$OnClickListenerC0948c = new View$OnClickListenerC0948c();
            if (abstractC1286e.m5903o() >= 0) {
                C1011m c1011m = new C1011m(abstractC1286e.m5897u(), activity);
                this.f3499w = c1011m;
                c1011m.setVisibility(8);
                c1011m.setOnClickListener(view$OnClickListenerC0948c);
            } else {
                this.f3499w = null;
            }
            if (m7006a(this.f3482B, c1408l)) {
                ImageView imageView = new ImageView(activity);
                this.f3500x = imageView;
                imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
                imageView.setClickable(true);
                imageView.setOnClickListener(view$OnClickListenerC0948c);
                m7001d(this.f3482B);
            } else {
                this.f3500x = null;
            }
            String m5892z = abstractC1286e.m5892z();
            if (StringUtils.isValidString(m5892z)) {
                C1026u c1026u = new C1026u(c1408l);
                c1026u.m6781a(new WeakReference<>(c0946a));
                C1025t c1025t = new C1025t(c1026u, activity);
                this.f3501y = c1025t;
                c1025t.m6783a(m5892z);
            } else {
                this.f3501y = null;
            }
            if (mo5911e) {
                C0897a c0897a = new C0897a(activity, ((Integer) c1408l.m5511a(C1314b.f4825cB)).intValue(), 16842874);
                this.f3498v = c0897a;
                c0897a.setColor(Color.parseColor("#75FFFFFF"));
                c0897a.setBackgroundColor(Color.parseColor("#00000000"));
                c0897a.setVisibility(8);
                AppLovinCommunicator.getInstance(activity).subscribe(this, "video_caching_failed");
            } else {
                this.f3498v = null;
            }
            if (abstractC1286e.m5983J()) {
                ProgressBar progressBar = new ProgressBar(activity, null, 16842872);
                this.f3502z = progressBar;
                progressBar.setMax(10000);
                progressBar.setPadding(0, 0, 0, 0);
                if (C1492g.m5071d()) {
                    progressBar.setProgressTintList(ColorStateList.valueOf(abstractC1286e.m5982K()));
                }
                c0998j.m6850a("PROGRESS_BAR", ((Long) c1408l.m5511a(C1314b.f4874cy)).longValue(), new C0998j.AbstractC1000a() { // from class: com.applovin.impl.adview.activity.b.e.1
                    @Override // com.applovin.impl.adview.C0998j.AbstractC1000a
                    /* renamed from: a */
                    public void mo6846a() {
                        C0936e c0936e = C0936e.this;
                        if (c0936e.f3485E) {
                            c0936e.f3502z.setVisibility(8);
                            return;
                        }
                        float currentPosition = (float) c0936e.f3497u.getCurrentPosition();
                        C0936e c0936e2 = C0936e.this;
                        c0936e2.f3502z.setProgress((int) ((currentPosition / ((float) c0936e2.f3483C)) * 10000.0f));
                    }

                    @Override // com.applovin.impl.adview.C0998j.AbstractC1000a
                    /* renamed from: b */
                    public boolean mo6845b() {
                        return !C0936e.this.f3485E;
                    }
                });
            } else {
                this.f3502z = null;
            }
            SimpleExoPlayer build = new SimpleExoPlayer.Builder(activity).build();
            this.f3497u = build;
            C0947b c0947b = new C0947b();
            build.addListener(c0947b);
            build.setRepeatMode(0);
            PlayerView playerView = new PlayerView(activity);
            this.f3496t = playerView;
            playerView.hideController();
            playerView.setControllerVisibilityListener(c0947b);
            playerView.setPlayer(build);
            playerView.setOnTouchListener(new AppLovinTouchToClickListener(c1408l, C1314b.f4731aM, activity, c0947b));
            m6996y();
            return;
        }
        throw new IllegalStateException("Attempting to use fullscreen video ad presenter for non-video ad");
    }

    /* renamed from: D */
    private void m7009D() {
        C1025t c1025t;
        C1024s m5992A = this.f3425a.m5992A();
        if (m5992A == null || !m5992A.m6789e() || this.f3485E || (c1025t = this.f3501y) == null) {
            return;
        }
        final boolean z = c1025t.getVisibility() == 4;
        final long m6788f = m5992A.m6788f();
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.adview.activity.b.e.5
            @Override // java.lang.Runnable
            public void run() {
                if (z) {
                    C1536p.m4946a(C0936e.this.f3501y, m6788f, (Runnable) null);
                } else {
                    C1536p.m4944b(C0936e.this.f3501y, m6788f, null);
                }
            }
        });
    }

    /* renamed from: a */
    private static boolean m7006a(boolean z, C1408l c1408l) {
        if (!((Boolean) c1408l.m5511a(C1314b.f4866cq)).booleanValue()) {
            return false;
        }
        if (((Boolean) c1408l.m5511a(C1314b.f4867cr)).booleanValue() && !z) {
            return ((Boolean) c1408l.m5511a(C1314b.f4869ct)).booleanValue();
        }
        return true;
    }

    /* renamed from: A */
    public void m7012A() {
        this.f3484D = m7010C();
        this.f3497u.setPlayWhenReady(false);
    }

    /* JADX WARN: Type inference failed for: r0v46, types: [long] */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* renamed from: B */
    public void m7011B() {
        String str;
        C1479t c1479t;
        if (this.f3485E) {
            c1479t = this.f3427c;
            str = "Skip video resume - postitial shown";
        } else if (!this.f3426b.m5493ab().m4918a()) {
            ?? r0 = this.f3491K;
            if (r0 < 0) {
                C1479t c1479t2 = this.f3427c;
                StringBuilder m8752j = C0082b.m8752j("Invalid last video position, isVideoPlaying=");
                m8752j.append(this.f3497u.isPlaying());
                c1479t2.m5116b("AppLovinFullscreenActivity", m8752j.toString());
                return;
            }
            long m5954aF = this.f3425a.m5954aF();
            char c = r0;
            if (m5954aF > 0) {
                c = Math.max(0L, r0 - m5954aF);
                this.f3497u.seekTo(c);
            }
            C1479t c1479t3 = this.f3427c;
            c1479t3.m5116b("AppLovinFullscreenActivity", "Resuming video at position " + ((long) c) + "ms for MediaPlayer: " + this.f3497u);
            this.f3497u.setPlayWhenReady(true);
            this.f3481A.m6854a();
            this.f3491K = -1L;
            if (this.f3497u.isPlaying()) {
                return;
            }
            mo7000u();
            return;
        } else {
            c1479t = this.f3427c;
            str = "Skip video resume - app paused";
        }
        c1479t.m5112d("AppLovinFullscreenActivity", str);
    }

    /* renamed from: C */
    public int m7010C() {
        long currentPosition = this.f3497u.getCurrentPosition();
        if (this.f3486F) {
            return 100;
        }
        return currentPosition > 0 ? (int) ((((float) currentPosition) / ((float) this.f3483C)) * 100.0f) : this.f3484D;
    }

    @Override // com.applovin.impl.sdk.p054b.C1303b.AbstractC1310a
    /* renamed from: a */
    public void mo5845a() {
        this.f3427c.m5116b("AppLovinFullscreenActivity", "Continue video from prompt - will resume in onWindowFocusChanged(true) when alert dismisses");
    }

    @Override // com.applovin.impl.adview.activity.p037b.AbstractC0914a
    /* renamed from: a */
    public void mo6969a(long j) {
        m7055a(new Runnable() { // from class: com.applovin.impl.adview.activity.b.e.6
            @Override // java.lang.Runnable
            public void run() {
                C0936e.this.m7011B();
            }
        }, j);
    }

    /* renamed from: a */
    public void mo7008a(PointF pointF) {
        if (!this.f3425a.mo5991B()) {
            m7009D();
            return;
        }
        this.f3427c.m5116b("AppLovinFullscreenActivity", "Clicking through video");
        Uri mo5905j = this.f3425a.mo5905j();
        if (mo5905j == null) {
            return;
        }
        C1496j.m5019a(this.f3438n, this.f3425a);
        AppLovinAdView appLovinAdView = this.f3430f;
        this.f3426b.m5449u().trackAndLaunchVideoClick(this.f3425a, mo5905j, pointF, appLovinAdView != null ? appLovinAdView.getContext() : this.f3426b.m5532K());
        this.f3428d.m5767b();
        this.f3435k++;
    }

    @Override // com.applovin.impl.adview.activity.p037b.AbstractC0914a
    /* renamed from: a */
    public void mo6968a(ViewGroup viewGroup) {
        this.f3487G.m7069a(this.f3500x, this.f3499w, this.f3501y, this.f3498v, this.f3502z, this.f3496t, this.f3430f, viewGroup);
        this.f3497u.setPlayWhenReady(true);
        if (this.f3425a.m5942ai()) {
            this.f3441q.m5854a(this.f3425a, new Runnable() { // from class: com.applovin.impl.adview.activity.b.e.2
                @Override // java.lang.Runnable
                public void run() {
                    C0936e.this.mo6969a(250L);
                }
            });
        }
        if (this.f3490J) {
            mo7000u();
        }
        this.f3430f.renderAd(this.f3425a);
        this.f3428d.m5766b((this.f3490J ? 1 : null) == 1 ? 1L : 0L);
        if (this.f3499w != null) {
            this.f3426b.m5525R().m5651a(new C1387z(this.f3426b, new Runnable() { // from class: com.applovin.impl.adview.activity.b.e.3
                @Override // java.lang.Runnable
                public void run() {
                    C0936e.this.m6995z();
                }
            }), C1362o.EnumC1364a.MAIN, this.f3425a.m5902p(), true);
        }
        super.m7047b(this.f3482B);
    }

    @Override // com.applovin.impl.sdk.p054b.C1303b.AbstractC1310a
    /* renamed from: b */
    public void mo5844b() {
        this.f3427c.m5116b("AppLovinFullscreenActivity", "Skipping video from prompt");
        mo7004c();
    }

    /* renamed from: c */
    public void mo7004c() {
        this.f3494N = SystemClock.elapsedRealtime() - this.f3495O;
        C1479t c1479t = this.f3427c;
        StringBuilder m8752j = C0082b.m8752j("Skipping video with skip time: ");
        m8752j.append(this.f3494N);
        m8752j.append("ms");
        c1479t.m5116b("AppLovinFullscreenActivity", m8752j.toString());
        this.f3428d.m5760f();
        this.f3434j++;
        if (this.f3425a.m5896v()) {
            mo6958h();
        } else {
            mo6997x();
        }
    }

    /* renamed from: c */
    public void mo7003c(long j) {
        this.f3483C = j;
    }

    /* renamed from: c */
    public void mo7002c(String str) {
        C1479t c1479t = this.f3427c;
        c1479t.m5111e("AppLovinFullscreenActivity", "Encountered media error: " + str + " for ad: " + this.f3425a);
        if (this.f3492L.compareAndSet(false, true)) {
            AppLovinAdDisplayListener appLovinAdDisplayListener = this.f3439o;
            if (appLovinAdDisplayListener instanceof AbstractC1293g) {
                ((AbstractC1293g) appLovinAdDisplayListener).onAdDisplayFailed(str);
            }
            mo6958h();
        }
    }

    @Override // com.applovin.impl.adview.activity.p037b.AbstractC0914a
    /* renamed from: c */
    public void mo6980c(boolean z) {
        super.mo6980c(z);
        if (z) {
            mo6969a((((Boolean) this.f3426b.m5511a(C1314b.f4940eM)).booleanValue() ? null : 250) == 1 ? 1L : 0L);
        } else if (this.f3485E) {
        } else {
            mo6959e();
        }
    }

    @Override // com.applovin.impl.adview.activity.p037b.AbstractC0914a
    /* renamed from: d */
    public void mo6961d() {
        mo6968a((ViewGroup) null);
    }

    /* renamed from: d */
    public void m7001d(boolean z) {
        if (C1492g.m5071d()) {
            AnimatedVectorDrawable animatedVectorDrawable = (AnimatedVectorDrawable) this.f3429e.getDrawable(z ? C1583R.C1585drawable.unmute_to_mute : C1583R.C1585drawable.mute_to_unmute);
            if (animatedVectorDrawable != null) {
                this.f3500x.setScaleType(ImageView.ScaleType.FIT_XY);
                this.f3500x.setImageDrawable(animatedVectorDrawable);
                animatedVectorDrawable.start();
                return;
            }
        }
        Uri m5926ay = z ? this.f3425a.m5926ay() : this.f3425a.m5925az();
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        this.f3500x.setImageURI(m5926ay);
        StrictMode.setThreadPolicy(allowThreadDiskReads);
    }

    @Override // com.applovin.impl.adview.activity.p037b.AbstractC0914a
    /* renamed from: e */
    public void mo6959e() {
        String str;
        C1479t c1479t;
        this.f3427c.m5116b("AppLovinFullscreenActivity", "Pausing video");
        if (this.f3497u.isPlaying()) {
            this.f3491K = this.f3497u.getCurrentPosition();
            this.f3497u.setPlayWhenReady(false);
            this.f3481A.m6847c();
            c1479t = this.f3427c;
            StringBuilder m8752j = C0082b.m8752j("Paused video at position ");
            m8752j.append(this.f3491K);
            m8752j.append("ms");
            str = m8752j.toString();
        } else {
            c1479t = this.f3427c;
            str = "Nothing to pause";
        }
        c1479t.m5116b("AppLovinFullscreenActivity", str);
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorEntity
    public String getCommunicatorId() {
        return "FullscreenVideoAdExoPlayerPresenter";
    }

    @Override // com.applovin.impl.adview.activity.p037b.AbstractC0914a
    /* renamed from: h */
    public void mo6958h() {
        this.f3481A.m6849b();
        this.f3489I.removeCallbacksAndMessages(null);
        mo6957l();
        super.mo6958h();
    }

    @Override // com.applovin.impl.adview.activity.p037b.AbstractC0914a
    /* renamed from: j */
    public void mo6976j() {
        this.f3497u.release();
        if (this.f3490J) {
            AppLovinCommunicator.getInstance(this.f3429e).unsubscribe(this, "video_caching_failed");
        }
        super.mo6976j();
    }

    @Override // com.applovin.impl.adview.activity.p037b.AbstractC0914a
    /* renamed from: l */
    public void mo6957l() {
        super.m7060a(m7010C(), this.f3490J, mo6956q(), this.f3494N);
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorSubscriber
    public void onMessageReceived(AppLovinCommunicatorMessage appLovinCommunicatorMessage) {
        if ("video_caching_failed".equals(appLovinCommunicatorMessage.getTopic())) {
            Bundle messageData = appLovinCommunicatorMessage.getMessageData();
            long j = messageData.getLong("ad_id");
            if (!((Boolean) this.f3426b.m5511a(C1314b.f4941eN)).booleanValue() || j != this.f3425a.getAdIdNumber() || !this.f3490J) {
                return;
            }
            int i = messageData.getInt("load_response_code");
            String string = messageData.getString("load_exception_message");
            if ((string == null && i >= 200 && i < 300) || this.f3486F || this.f3497u.isPlaying()) {
                return;
            }
            mo7002c("Video cache error during stream. ResponseCode=" + i + ", exception=" + string);
        }
    }

    @Override // com.applovin.impl.adview.activity.p037b.AbstractC0914a
    /* renamed from: q */
    public boolean mo6956q() {
        return m7010C() >= this.f3425a.m5981L();
    }

    @Override // com.applovin.impl.adview.activity.p037b.AbstractC0914a
    /* renamed from: r */
    public boolean mo6955r() {
        return m7037s() && !mo6956q();
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0084, code lost:
        if (r12 > 0) goto L16;
     */
    /* JADX WARN: Type inference failed for: r0v31, types: [long] */
    /* JADX WARN: Type inference failed for: r0v44, types: [long] */
    /* JADX WARN: Type inference failed for: r0v46, types: [long] */
    /* JADX WARN: Type inference failed for: r0v48, types: [long] */
    @Override // com.applovin.impl.adview.activity.p037b.AbstractC0914a
    /* renamed from: t */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo6954t() {
        /*
            r6 = this;
            r0 = r6
            com.applovin.impl.sdk.ad.e r0 = r0.f3425a
            long r0 = r0.m5968Y()
            r7 = r0
            r0 = 0
            r9 = r0
            r0 = r7
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L1a
            r0 = r6
            com.applovin.impl.sdk.ad.e r0 = r0.f3425a
            int r0 = r0.m5967Z()
            if (r0 < 0) goto La4
        L1a:
            r0 = r6
            com.applovin.impl.sdk.ad.e r0 = r0.f3425a
            long r0 = r0.m5968Y()
            r7 = r0
            r0 = r6
            com.applovin.impl.sdk.ad.e r0 = r0.f3425a
            r11 = r0
            r0 = r7
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L37
            r0 = r11
            long r0 = r0.m5968Y()
            r9 = r0
            goto L9f
        L37:
            r0 = r11
            com.applovin.impl.sdk.ad.a r0 = (com.applovin.impl.sdk.p053ad.C1281a) r0
            r11 = r0
            r0 = r6
            long r0 = r0.f3483C
            r7 = r0
            r0 = r7
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L4d
            r0 = 0
            r1 = r7
            long r0 = r0 + r1
            r9 = r0
        L4d:
            r0 = r9
            r7 = r0
            r0 = r11
            boolean r0 = r0.m5950aa()
            if (r0 == 0) goto L8a
            r0 = r6
            com.applovin.impl.sdk.ad.e r0 = r0.f3425a
            com.applovin.impl.sdk.ad.a r0 = (com.applovin.impl.sdk.p053ad.C1281a) r0
            float r0 = r0.m6019k()
            int r0 = (int) r0
            r12 = r0
            r0 = r12
            if (r0 <= 0) goto L78
        L69:
            r0 = r9
            java.util.concurrent.TimeUnit r1 = java.util.concurrent.TimeUnit.SECONDS
            r2 = r12
            long r2 = (long) r2
            long r1 = r1.toMillis(r2)
            long r0 = r0 + r1
            r7 = r0
            goto L8a
        L78:
            r0 = r11
            long r0 = r0.m5901q()
            int r0 = (int) r0
            r12 = r0
            r0 = r9
            r7 = r0
            r0 = r12
            if (r0 <= 0) goto L8a
            goto L69
        L8a:
            r0 = r7
            double r0 = (double) r0
            r13 = r0
            r0 = r6
            com.applovin.impl.sdk.ad.e r0 = r0.f3425a
            int r0 = r0.m5967Z()
            double r0 = (double) r0
            r1 = 4636737291354636288(0x4059000000000000, double:100.0)
            double r0 = r0 / r1
            r1 = r13
            double r0 = r0 * r1
            long r0 = (long) r0
            r9 = r0
        L9f:
            r0 = r6
            r1 = r9
            r0.m7050b(r1)
        La4:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.adview.activity.p037b.C0936e.mo6954t():void");
    }

    /* renamed from: u */
    public void mo7000u() {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.adview.activity.b.e.7
            @Override // java.lang.Runnable
            public void run() {
                C0897a c0897a = C0936e.this.f3498v;
                if (c0897a != null) {
                    c0897a.m7084a();
                }
            }
        });
    }

    /* renamed from: v */
    public void mo6999v() {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.adview.activity.b.e.8
            @Override // java.lang.Runnable
            public void run() {
                C0897a c0897a = C0936e.this.f3498v;
                if (c0897a != null) {
                    c0897a.m7083b();
                }
            }
        });
    }

    /* renamed from: w */
    public void mo6998w() {
        boolean z = !this.f3482B ? 1 : 0;
        this.f3482B = z;
        this.f3497u.setVolume(!z ? 1 : 0);
        m7001d(this.f3482B);
        m7051a(this.f3482B, 0L);
    }

    /* renamed from: x */
    public void mo6997x() {
        m7012A();
        this.f3487G.m7068a(this.f3431g, this.f3430f);
        StringBuilder sb = new StringBuilder();
        sb.append("javascript:al_onPoststitialShow(");
        sb.append(this.f3434j);
        sb.append(",");
        m7053a(C0033h.m8885l(sb, this.f3435k, ");"), this.f3425a.m5979N());
        if (this.f3431g != null) {
            long m5901q = this.f3425a.m5901q();
            C1011m c1011m = this.f3431g;
            if (m5901q >= 0) {
                m7057a(c1011m, this.f3425a.m5901q(), new Runnable() { // from class: com.applovin.impl.adview.activity.b.e.9
                    @Override // java.lang.Runnable
                    public void run() {
                        C0936e.this.f3433i = SystemClock.elapsedRealtime();
                    }
                });
            } else {
                c1011m.setVisibility(0);
            }
        }
        this.f3485E = true;
    }

    /* renamed from: y */
    public void m6996y() {
        m7052a(!this.f3490J);
        Activity activity = this.f3429e;
        this.f3497u.setMediaSource(new ProgressiveMediaSource.Factory(new DefaultDataSourceFactory(activity, Util.getUserAgent(activity, AppLovinMediationAdapter.APPLOVIN_SDK_ERROR_DOMAIN))).createMediaSource(MediaItem.fromUri(this.f3425a.mo5908g())));
        this.f3497u.prepare();
        this.f3497u.setPlayWhenReady(false);
    }

    /* renamed from: z */
    public void m6995z() {
        if (this.f3493M.compareAndSet(false, true)) {
            m7057a(this.f3499w, this.f3425a.m5903o(), new Runnable() { // from class: com.applovin.impl.adview.activity.b.e.4
                @Override // java.lang.Runnable
                public void run() {
                    C0936e.this.f3494N = -1L;
                    C0936e.this.f3495O = SystemClock.elapsedRealtime();
                }
            });
        }
    }
}
