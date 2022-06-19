package com.applovin.impl.adview.activity.p037b;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.graphics.PointF;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.media.MediaPlayer;
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
import com.applovin.impl.adview.AppLovinVideoView;
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
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;
import p007a6.C0033h;
/* renamed from: com.applovin.impl.adview.activity.b.f */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/activity/b/f.class */
public class C0949f extends AbstractC0914a implements AppLovinCommunicatorSubscriber {

    /* renamed from: B */
    public long f3518B;

    /* renamed from: C */
    public boolean f3519C;

    /* renamed from: E */
    private MediaPlayer f3521E;

    /* renamed from: F */
    private final C0962b f3522F;

    /* renamed from: G */
    private final C0961a f3523G;

    /* renamed from: H */
    private final Handler f3524H;

    /* renamed from: I */
    private final boolean f3525I;

    /* renamed from: J */
    private int f3526J;

    /* renamed from: L */
    private boolean f3528L;

    /* renamed from: t */
    public final AppLovinVideoView f3533t;

    /* renamed from: u */
    public final C0897a f3534u;

    /* renamed from: v */
    public final C1011m f3535v;

    /* renamed from: w */
    public final ImageView f3536w;

    /* renamed from: x */
    public final C1025t f3537x;

    /* renamed from: y */
    public final ProgressBar f3538y;

    /* renamed from: z */
    public final C0998j f3539z;

    /* renamed from: D */
    private final C0908c f3520D = new C0908c(this.f3425a, this.f3429e, this.f3426b);

    /* renamed from: A */
    public boolean f3517A = Utils.isVideoMutedInitially(this.f3426b);

    /* renamed from: K */
    private int f3527K = -1;

    /* renamed from: M */
    private final AtomicBoolean f3529M = new AtomicBoolean();

    /* renamed from: N */
    private final AtomicBoolean f3530N = new AtomicBoolean();

    /* renamed from: O */
    private long f3531O = -2;

    /* renamed from: P */
    private long f3532P = 0;

    /* renamed from: com.applovin.impl.adview.activity.b.f$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/activity/b/f$a.class */
    public class C0961a implements C1026u.AbstractC1027a {
        private C0961a() {
            C0949f.this = r4;
        }

        @Override // com.applovin.impl.adview.C1026u.AbstractC1027a
        /* renamed from: a */
        public void mo6780a(C1025t c1025t) {
            C0949f.this.f3427c.m5116b("AppLovinFullscreenActivity", "Clicking through from video button...");
            C0949f.this.mo6992a(c1025t.getAndClearLastClickLocation());
        }

        @Override // com.applovin.impl.adview.C1026u.AbstractC1027a
        /* renamed from: b */
        public void mo6779b(C1025t c1025t) {
            C0949f.this.f3427c.m5116b("AppLovinFullscreenActivity", "Closing ad from video button...");
            C0949f.this.mo6958h();
        }

        @Override // com.applovin.impl.adview.C1026u.AbstractC1027a
        /* renamed from: c */
        public void mo6778c(C1025t c1025t) {
            C0949f.this.f3427c.m5116b("AppLovinFullscreenActivity", "Skipping video from video button...");
            C0949f.this.mo6984c();
        }
    }

    /* renamed from: com.applovin.impl.adview.activity.b.f$b */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/activity/b/f$b.class */
    public class C0962b implements MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnInfoListener, MediaPlayer.OnPreparedListener, AppLovinTouchToClickListener.OnClickListener {
        private C0962b() {
            C0949f.this = r4;
        }

        @Override // com.applovin.impl.adview.AppLovinTouchToClickListener.OnClickListener
        public void onClick(View view, PointF pointF) {
            C0949f.this.mo6992a(pointF);
        }

        @Override // android.media.MediaPlayer.OnCompletionListener
        public void onCompletion(MediaPlayer mediaPlayer) {
            C0949f.this.f3427c.m5116b("AppLovinFullscreenActivity", "Video completed");
            C0949f.this.f3528L = true;
            C0949f.this.mo6972x();
        }

        @Override // android.media.MediaPlayer.OnErrorListener
        public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
            C0949f c0949f = C0949f.this;
            c0949f.mo6981c("Video view error (" + i + "," + i2 + ")");
            C0949f.this.f3533t.start();
            return true;
        }

        @Override // android.media.MediaPlayer.OnInfoListener
        public boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
            C1479t c1479t = C0949f.this.f3427c;
            c1479t.m5116b("AppLovinFullscreenActivity", "MediaPlayer Info: (" + i + ", " + i2 + ")");
            if (i == 701) {
                C0949f.this.mo6975u();
                C0949f.this.f3428d.m5759g();
                return false;
            } else if (i != 3) {
                if (i != 702) {
                    return false;
                }
                C0949f.this.mo6974v();
                return false;
            } else {
                C0949f.this.f3539z.m6854a();
                C0949f c0949f = C0949f.this;
                if (c0949f.f3535v != null) {
                    c0949f.m6970z();
                }
                C0949f.this.mo6974v();
                if (!C0949f.this.f3441q.m5848c()) {
                    return false;
                }
                C0949f.this.mo6959e();
                return false;
            }
        }

        @Override // android.media.MediaPlayer.OnPreparedListener
        public void onPrepared(MediaPlayer mediaPlayer) {
            C0949f.this.f3521E = mediaPlayer;
            mediaPlayer.setOnInfoListener(C0949f.this.f3522F);
            mediaPlayer.setOnErrorListener(C0949f.this.f3522F);
            float f = !C0949f.this.f3517A ? 1 : 0;
            mediaPlayer.setVolume(f, f);
            C0949f.this.mo6983c(mediaPlayer.getDuration());
            C0949f.this.mo6954t();
            C1479t c1479t = C0949f.this.f3427c;
            StringBuilder m8752j = C0082b.m8752j("MediaPlayer prepared: ");
            m8752j.append(C0949f.this.f3521E);
            c1479t.m5116b("AppLovinFullscreenActivity", m8752j.toString());
        }
    }

    /* renamed from: com.applovin.impl.adview.activity.b.f$c */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/activity/b/f$c.class */
    public class View$OnClickListenerC0963c implements View.OnClickListener {
        private View$OnClickListenerC0963c() {
            C0949f.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C0949f c0949f = C0949f.this;
            if (view == c0949f.f3535v) {
                if (!c0949f.mo6955r()) {
                    C0949f.this.mo6984c();
                    return;
                }
                C0949f.this.mo6959e();
                C0949f.this.m7039o();
                C0949f.this.f3441q.m5850b();
            } else if (view == c0949f.f3536w) {
                c0949f.mo6973w();
            } else {
                C1479t c1479t = c0949f.f3427c;
                c1479t.m5111e("AppLovinFullscreenActivity", "Unhandled click on widget: " + view);
            }
        }
    }

    public C0949f(AbstractC1286e abstractC1286e, Activity activity, C1408l c1408l, AppLovinAdClickListener appLovinAdClickListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener) {
        super(abstractC1286e, activity, c1408l, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener);
        C0962b c0962b = new C0962b();
        this.f3522F = c0962b;
        C0961a c0961a = new C0961a();
        this.f3523G = c0961a;
        Handler handler = new Handler(Looper.getMainLooper());
        this.f3524H = handler;
        C0998j c0998j = new C0998j(handler, this.f3426b);
        this.f3539z = c0998j;
        boolean mo5911e = this.f3425a.mo5911e();
        this.f3525I = mo5911e;
        if (abstractC1286e.hasVideoUrl()) {
            AppLovinVideoView appLovinVideoView = new AppLovinVideoView(activity, c1408l);
            this.f3533t = appLovinVideoView;
            appLovinVideoView.setOnPreparedListener(c0962b);
            appLovinVideoView.setOnCompletionListener(c0962b);
            appLovinVideoView.setOnErrorListener(c0962b);
            appLovinVideoView.setOnTouchListener(new AppLovinTouchToClickListener(c1408l, C1314b.f4731aM, activity, c0962b));
            View$OnClickListenerC0963c view$OnClickListenerC0963c = new View$OnClickListenerC0963c();
            if (abstractC1286e.m5903o() >= 0) {
                C1011m c1011m = new C1011m(abstractC1286e.m5897u(), activity);
                this.f3535v = c1011m;
                c1011m.setVisibility(8);
                c1011m.setOnClickListener(view$OnClickListenerC0963c);
            } else {
                this.f3535v = null;
            }
            if (m6987a(this.f3517A, c1408l)) {
                ImageView imageView = new ImageView(activity);
                this.f3536w = imageView;
                imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
                imageView.setClickable(true);
                imageView.setOnClickListener(view$OnClickListenerC0963c);
                m6977e(this.f3517A);
            } else {
                this.f3536w = null;
            }
            String m5892z = abstractC1286e.m5892z();
            if (StringUtils.isValidString(m5892z)) {
                C1026u c1026u = new C1026u(c1408l);
                c1026u.m6781a(new WeakReference<>(c0961a));
                C1025t c1025t = new C1025t(c1026u, activity);
                this.f3537x = c1025t;
                c1025t.m6783a(m5892z);
            } else {
                this.f3537x = null;
            }
            if (mo5911e) {
                C0897a c0897a = new C0897a(activity, ((Integer) c1408l.m5511a(C1314b.f4825cB)).intValue(), 16842874);
                this.f3534u = c0897a;
                c0897a.setColor(Color.parseColor("#75FFFFFF"));
                c0897a.setBackgroundColor(Color.parseColor("#00000000"));
                c0897a.setVisibility(8);
                AppLovinCommunicator.getInstance(activity).subscribe(this, "video_caching_failed");
            } else {
                this.f3534u = null;
            }
            if (!abstractC1286e.m5983J()) {
                this.f3538y = null;
                return;
            }
            ProgressBar progressBar = new ProgressBar(activity, null, 16842872);
            this.f3538y = progressBar;
            progressBar.setMax(10000);
            progressBar.setPadding(0, 0, 0, 0);
            if (C1492g.m5071d()) {
                progressBar.setProgressTintList(ColorStateList.valueOf(abstractC1286e.m5982K()));
            }
            c0998j.m6850a("PROGRESS_BAR", ((Long) c1408l.m5511a(C1314b.f4874cy)).longValue(), new C0998j.AbstractC1000a() { // from class: com.applovin.impl.adview.activity.b.f.1
                @Override // com.applovin.impl.adview.C0998j.AbstractC1000a
                /* renamed from: a */
                public void mo6846a() {
                    C0949f c0949f = C0949f.this;
                    if (c0949f.f3519C) {
                        c0949f.f3538y.setVisibility(8);
                        return;
                    }
                    float currentPosition = c0949f.f3533t.getCurrentPosition();
                    C0949f c0949f2 = C0949f.this;
                    c0949f2.f3538y.setProgress((int) ((currentPosition / ((float) c0949f2.f3518B)) * 10000.0f));
                }

                @Override // com.applovin.impl.adview.C0998j.AbstractC1000a
                /* renamed from: b */
                public boolean mo6845b() {
                    return !C0949f.this.f3519C;
                }
            });
            return;
        }
        throw new IllegalStateException("Attempting to use fullscreen video ad presenter for non-video ad");
    }

    /* renamed from: A */
    private void m6994A() {
        C1025t c1025t;
        C1024s m5992A = this.f3425a.m5992A();
        if (m5992A == null || !m5992A.m6789e() || this.f3519C || (c1025t = this.f3537x) == null) {
            return;
        }
        final boolean z = c1025t.getVisibility() == 4;
        final long m6788f = m5992A.m6788f();
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.adview.activity.b.f.6
            @Override // java.lang.Runnable
            public void run() {
                if (z) {
                    C1536p.m4946a(C0949f.this.f3537x, m6788f, (Runnable) null);
                } else {
                    C1536p.m4944b(C0949f.this.f3537x, m6788f, null);
                }
            }
        });
    }

    /* renamed from: B */
    public void m6993B() {
        String str;
        C1479t c1479t;
        if (this.f3519C) {
            c1479t = this.f3427c;
            str = "Skip video resume - postitial shown";
        } else if (!this.f3426b.m5493ab().m4918a()) {
            if (this.f3527K < 0) {
                this.f3427c.m5116b("AppLovinFullscreenActivity", "Invalid last video position");
                return;
            }
            C1479t c1479t2 = this.f3427c;
            StringBuilder m8752j = C0082b.m8752j("Resuming video at position ");
            m8752j.append(this.f3527K);
            m8752j.append("ms for MediaPlayer: ");
            m8752j.append(this.f3521E);
            c1479t2.m5116b("AppLovinFullscreenActivity", m8752j.toString());
            this.f3533t.seekTo(this.f3527K);
            this.f3533t.start();
            this.f3539z.m6854a();
            this.f3527K = -1;
            m7055a(new Runnable() { // from class: com.applovin.impl.adview.activity.b.f.8
                @Override // java.lang.Runnable
                public void run() {
                    C0897a c0897a = C0949f.this.f3534u;
                    if (c0897a != null) {
                        c0897a.m7084a();
                        C0949f.this.m7055a(new Runnable() { // from class: com.applovin.impl.adview.activity.b.f.8.1
                            @Override // java.lang.Runnable
                            public void run() {
                                C0949f.this.f3534u.m7083b();
                            }
                        }, 2000L);
                    }
                }
            }, 250L);
            return;
        } else {
            c1479t = this.f3427c;
            str = "Skip video resume - app paused";
        }
        c1479t.m5112d("AppLovinFullscreenActivity", str);
    }

    /* renamed from: a */
    private static boolean m6987a(boolean z, C1408l c1408l) {
        if (!((Boolean) c1408l.m5511a(C1314b.f4866cq)).booleanValue()) {
            return false;
        }
        if (((Boolean) c1408l.m5511a(C1314b.f4867cr)).booleanValue() && !z) {
            return ((Boolean) c1408l.m5511a(C1314b.f4869ct)).booleanValue();
        }
        return true;
    }

    /* renamed from: d */
    private void m6978d(boolean z) {
        this.f3526J = m6971y();
        if (z) {
            this.f3533t.pause();
        } else {
            this.f3533t.stopPlayback();
        }
    }

    /* renamed from: e */
    private void m6977e(boolean z) {
        if (C1492g.m5071d()) {
            AnimatedVectorDrawable animatedVectorDrawable = (AnimatedVectorDrawable) this.f3429e.getDrawable(z ? C1583R.C1585drawable.unmute_to_mute : C1583R.C1585drawable.mute_to_unmute);
            if (animatedVectorDrawable != null) {
                this.f3536w.setScaleType(ImageView.ScaleType.FIT_XY);
                this.f3536w.setImageDrawable(animatedVectorDrawable);
                animatedVectorDrawable.start();
                return;
            }
        }
        Uri m5926ay = z ? this.f3425a.m5926ay() : this.f3425a.m5925az();
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        this.f3536w.setImageURI(m5926ay);
        StrictMode.setThreadPolicy(allowThreadDiskReads);
    }

    /* renamed from: z */
    public void m6970z() {
        if (this.f3530N.compareAndSet(false, true)) {
            m7057a(this.f3535v, this.f3425a.m5903o(), new Runnable() { // from class: com.applovin.impl.adview.activity.b.f.5
                @Override // java.lang.Runnable
                public void run() {
                    C0949f.this.f3531O = -1L;
                    C0949f.this.f3532P = SystemClock.elapsedRealtime();
                }
            });
        }
    }

    @Override // com.applovin.impl.sdk.p054b.C1303b.AbstractC1310a
    /* renamed from: a */
    public void mo5845a() {
        this.f3427c.m5116b("AppLovinFullscreenActivity", "Continue video from prompt - will resume in onWindowFocusChanged(true) when alert dismisses");
    }

    @Override // com.applovin.impl.adview.activity.p037b.AbstractC0914a
    /* renamed from: a */
    public void mo6969a(long j) {
        m7055a(new Runnable() { // from class: com.applovin.impl.adview.activity.b.f.7
            @Override // java.lang.Runnable
            public void run() {
                C0949f.this.m6993B();
            }
        }, j);
    }

    /* renamed from: a */
    public void mo6992a(PointF pointF) {
        if (!this.f3425a.mo5991B()) {
            m6994A();
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
        this.f3520D.m7069a(this.f3536w, this.f3535v, this.f3537x, this.f3534u, this.f3538y, this.f3533t, this.f3430f, viewGroup);
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        m7052a(!this.f3525I);
        this.f3533t.setVideoURI(this.f3425a.mo5908g());
        StrictMode.setThreadPolicy(allowThreadDiskReads);
        if (this.f3425a.m5942ai()) {
            this.f3441q.m5854a(this.f3425a, new Runnable() { // from class: com.applovin.impl.adview.activity.b.f.3
                @Override // java.lang.Runnable
                public void run() {
                    C0949f.this.mo6969a(250L);
                }
            });
        }
        this.f3533t.start();
        if (this.f3525I) {
            mo6975u();
        }
        this.f3430f.renderAd(this.f3425a);
        this.f3428d.m5766b((this.f3525I ? 1 : null) == 1 ? 1L : 0L);
        if (this.f3535v != null) {
            this.f3426b.m5525R().m5651a(new C1387z(this.f3426b, new Runnable() { // from class: com.applovin.impl.adview.activity.b.f.4
                @Override // java.lang.Runnable
                public void run() {
                    C0949f.this.m6970z();
                }
            }), C1362o.EnumC1364a.MAIN, this.f3425a.m5902p(), true);
        }
        super.m7047b(this.f3517A);
    }

    @Override // com.applovin.impl.sdk.p054b.C1303b.AbstractC1310a
    /* renamed from: b */
    public void mo5844b() {
        this.f3427c.m5116b("AppLovinFullscreenActivity", "Skipping video from prompt");
        mo6984c();
    }

    /* renamed from: c */
    public void mo6984c() {
        this.f3531O = SystemClock.elapsedRealtime() - this.f3532P;
        C1479t c1479t = this.f3427c;
        StringBuilder m8752j = C0082b.m8752j("Skipping video with skip time: ");
        m8752j.append(this.f3531O);
        m8752j.append("ms");
        c1479t.m5116b("AppLovinFullscreenActivity", m8752j.toString());
        this.f3428d.m5760f();
        this.f3434j++;
        if (this.f3425a.m5896v()) {
            mo6958h();
        } else {
            mo6972x();
        }
    }

    /* renamed from: c */
    public void mo6983c(long j) {
        this.f3518B = j;
    }

    /* renamed from: c */
    public void mo6981c(String str) {
        C1479t c1479t = this.f3427c;
        c1479t.m5111e("AppLovinFullscreenActivity", "Encountered media error: " + str + " for ad: " + this.f3425a);
        if (this.f3529M.compareAndSet(false, true)) {
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
        } else if (this.f3519C) {
        } else {
            mo6959e();
        }
    }

    @Override // com.applovin.impl.adview.activity.p037b.AbstractC0914a
    /* renamed from: d */
    public void mo6961d() {
        mo6968a((ViewGroup) null);
    }

    @Override // com.applovin.impl.adview.activity.p037b.AbstractC0914a
    /* renamed from: e */
    public void mo6959e() {
        this.f3427c.m5116b("AppLovinFullscreenActivity", "Pausing video");
        this.f3527K = this.f3533t.getCurrentPosition();
        this.f3533t.pause();
        this.f3539z.m6847c();
        C1479t c1479t = this.f3427c;
        StringBuilder m8752j = C0082b.m8752j("Paused video at position ");
        m8752j.append(this.f3527K);
        m8752j.append("ms");
        c1479t.m5116b("AppLovinFullscreenActivity", m8752j.toString());
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorEntity
    public String getCommunicatorId() {
        return "FullscreenVideoAdPresenter";
    }

    @Override // com.applovin.impl.adview.activity.p037b.AbstractC0914a
    /* renamed from: h */
    public void mo6958h() {
        this.f3539z.m6849b();
        this.f3524H.removeCallbacksAndMessages(null);
        mo6957l();
        super.mo6958h();
    }

    @Override // com.applovin.impl.adview.activity.p037b.AbstractC0914a
    @SuppressLint({"LongLogTag"})
    /* renamed from: j */
    public void mo6976j() {
        this.f3427c.m5114c("AppLovinFullscreenActivity", "Destroying video components");
        try {
            if (this.f3525I) {
                AppLovinCommunicator.getInstance(this.f3429e).unsubscribe(this, "video_caching_failed");
            }
            AppLovinVideoView appLovinVideoView = this.f3533t;
            if (appLovinVideoView != null) {
                appLovinVideoView.pause();
                this.f3533t.stopPlayback();
            }
            MediaPlayer mediaPlayer = this.f3521E;
            if (mediaPlayer != null) {
                mediaPlayer.release();
            }
        } catch (Throwable th) {
        }
        super.mo6976j();
    }

    @Override // com.applovin.impl.adview.activity.p037b.AbstractC0914a
    /* renamed from: l */
    public void mo6957l() {
        super.m7060a(m6971y(), this.f3525I, mo6956q(), this.f3531O);
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorSubscriber
    public void onMessageReceived(AppLovinCommunicatorMessage appLovinCommunicatorMessage) {
        if ("video_caching_failed".equals(appLovinCommunicatorMessage.getTopic())) {
            Bundle messageData = appLovinCommunicatorMessage.getMessageData();
            long j = messageData.getLong("ad_id");
            if (!((Boolean) this.f3426b.m5511a(C1314b.f4941eN)).booleanValue() || j != this.f3425a.getAdIdNumber() || !this.f3525I) {
                return;
            }
            int i = messageData.getInt("load_response_code");
            String string = messageData.getString("load_exception_message");
            if ((string == null && i >= 200 && i < 300) || this.f3528L || this.f3533t.isPlaying()) {
                return;
            }
            mo6981c("Video cache error during stream. ResponseCode=" + i + ", exception=" + string);
        }
    }

    @Override // com.applovin.impl.adview.activity.p037b.AbstractC0914a
    /* renamed from: q */
    public boolean mo6956q() {
        return m6971y() >= this.f3425a.m5981L();
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
            long r0 = r0.f3518B
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
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.adview.activity.p037b.C0949f.mo6954t():void");
    }

    /* renamed from: u */
    public void mo6975u() {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.adview.activity.b.f.9
            @Override // java.lang.Runnable
            public void run() {
                C0897a c0897a = C0949f.this.f3534u;
                if (c0897a != null) {
                    c0897a.m7084a();
                }
            }
        });
    }

    /* renamed from: v */
    public void mo6974v() {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.adview.activity.b.f.10
            @Override // java.lang.Runnable
            public void run() {
                C0897a c0897a = C0949f.this.f3534u;
                if (c0897a != null) {
                    c0897a.m7083b();
                }
            }
        });
    }

    /* renamed from: w */
    public void mo6973w() {
        MediaPlayer mediaPlayer = this.f3521E;
        if (mediaPlayer == null) {
            return;
        }
        try {
            boolean z = false;
            float f = !this.f3517A ? 0 : 1;
            mediaPlayer.setVolume(f, f);
            if (!this.f3517A) {
                z = true;
            }
            this.f3517A = z;
            m6977e(z);
            m7051a(this.f3517A, 0L);
        } catch (Throwable th) {
        }
    }

    /* renamed from: x */
    public void mo6972x() {
        this.f3427c.m5116b("AppLovinFullscreenActivity", "Showing postitial...");
        m6978d(this.f3425a.m5953aG());
        this.f3520D.m7068a(this.f3431g, this.f3430f);
        StringBuilder sb = new StringBuilder();
        sb.append("javascript:al_onPoststitialShow(");
        sb.append(this.f3434j);
        sb.append(",");
        m7053a(C0033h.m8885l(sb, this.f3435k, ");"), this.f3425a.m5979N());
        if (this.f3431g != null) {
            long m5901q = this.f3425a.m5901q();
            C1011m c1011m = this.f3431g;
            if (m5901q >= 0) {
                m7057a(c1011m, this.f3425a.m5901q(), new Runnable() { // from class: com.applovin.impl.adview.activity.b.f.2
                    @Override // java.lang.Runnable
                    public void run() {
                        C0949f.this.f3433i = SystemClock.elapsedRealtime();
                    }
                });
            } else {
                c1011m.setVisibility(0);
            }
        }
        this.f3519C = true;
    }

    /* renamed from: y */
    public int m6971y() {
        long currentPosition = this.f3533t.getCurrentPosition();
        if (this.f3528L) {
            return 100;
        }
        return currentPosition > 0 ? (int) ((((float) currentPosition) / ((float) this.f3518B)) * 100.0f) : this.f3526J;
    }
}
