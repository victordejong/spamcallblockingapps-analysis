package p131c.p135b.p136a.p148e.p153y;

import com.applovin.adview.AppLovinAdView;
import com.applovin.adview.AppLovinAdViewEventListener;
import com.applovin.impl.sdk.AppLovinAdBase;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdListener;
import com.applovin.mediation.MaxAdViewAdListener;
import com.applovin.mediation.MaxReward;
import com.applovin.mediation.MaxRewardedAdListener;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdRewardListener;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.applovin.sdk.AppLovinPostbackListener;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.Map;
import p131c.p135b.p136a.p148e.C2374t;
import p131c.p135b.p136a.p148e.p150c.AbstractC2249e;
/* renamed from: c.b.a.e.y.j */
/* loaded from: classes-dex2jar.jar:c/b/a/e/y/j.class */
public class C2391j {

    /* renamed from: c.b.a.e.y.j$a */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/y/j$a.class */
    public static final class RunnableC2392a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ MaxAdListener f9265a;

        /* renamed from: b */
        public final /* synthetic */ MaxAd f9266b;

        public RunnableC2392a(MaxAdListener maxAdListener, MaxAd maxAd) {
            this.f9265a = maxAdListener;
            this.f9266b = maxAd;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f9265a.onAdClicked(this.f9266b);
            } catch (Throwable th) {
                C2374t.m30041c("ListenerCallbackInvoker", "Unable to notify ad event listener about ad being clicked", th);
            }
        }
    }

    /* renamed from: c.b.a.e.y.j$b */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/y/j$b.class */
    public static final class RunnableC2393b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AppLovinAdDisplayListener f9267a;

        /* renamed from: b */
        public final /* synthetic */ AppLovinAd f9268b;

        public RunnableC2393b(AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAd appLovinAd) {
            this.f9267a = appLovinAdDisplayListener;
            this.f9268b = appLovinAd;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f9267a.adDisplayed(C2391j.m29889b(this.f9268b));
            } catch (Throwable th) {
                C2374t.m30041c("ListenerCallbackInvoker", "Unable to notify ad event listener about ad being displayed", th);
            }
        }
    }

    /* renamed from: c.b.a.e.y.j$c */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/y/j$c.class */
    public static final class RunnableC2394c implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ MaxAdListener f9269a;

        /* renamed from: b */
        public final /* synthetic */ MaxAd f9270b;

        /* renamed from: c */
        public final /* synthetic */ int f9271c;

        public RunnableC2394c(MaxAdListener maxAdListener, MaxAd maxAd, int i) {
            this.f9269a = maxAdListener;
            this.f9270b = maxAd;
            this.f9271c = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f9269a.onAdDisplayFailed(this.f9270b, this.f9271c);
            } catch (Throwable th) {
                C2374t.m30041c("ListenerCallbackInvoker", "Unable to notify ad event listener about ad failing to display", th);
            }
        }
    }

    /* renamed from: c.b.a.e.y.j$d */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/y/j$d.class */
    public static final class RunnableC2395d implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ MaxAdListener f9272a;

        /* renamed from: b */
        public final /* synthetic */ MaxAd f9273b;

        public RunnableC2395d(MaxAdListener maxAdListener, MaxAd maxAd) {
            this.f9272a = maxAdListener;
            this.f9273b = maxAd;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                ((MaxRewardedAdListener) this.f9272a).onRewardedVideoStarted(this.f9273b);
            } catch (Throwable th) {
                C2374t.m30041c("ListenerCallbackInvoker", "Unable to notify ad event listener about rewarded video starting", th);
            }
        }
    }

    /* renamed from: c.b.a.e.y.j$e */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/y/j$e.class */
    public static final class RunnableC2396e implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ MaxAdListener f9274a;

        /* renamed from: b */
        public final /* synthetic */ MaxAd f9275b;

        public RunnableC2396e(MaxAdListener maxAdListener, MaxAd maxAd) {
            this.f9274a = maxAdListener;
            this.f9275b = maxAd;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                ((MaxRewardedAdListener) this.f9274a).onRewardedVideoCompleted(this.f9275b);
            } catch (Throwable th) {
                C2374t.m30041c("ListenerCallbackInvoker", "Unable to notify ad event listener about rewarded video completing", th);
            }
        }
    }

    /* renamed from: c.b.a.e.y.j$f */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/y/j$f.class */
    public static final class RunnableC2397f implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ MaxAdListener f9276a;

        /* renamed from: b */
        public final /* synthetic */ MaxAd f9277b;

        /* renamed from: c */
        public final /* synthetic */ MaxReward f9278c;

        public RunnableC2397f(MaxAdListener maxAdListener, MaxAd maxAd, MaxReward maxReward) {
            this.f9276a = maxAdListener;
            this.f9277b = maxAd;
            this.f9278c = maxReward;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                ((MaxRewardedAdListener) this.f9276a).onUserRewarded(this.f9277b, this.f9278c);
            } catch (Throwable th) {
                C2374t.m30041c("ListenerCallbackInvoker", "Unable to notify ad event listener about user being rewarded", th);
            }
        }
    }

    /* renamed from: c.b.a.e.y.j$g */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/y/j$g.class */
    public static final class RunnableC2398g implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ MaxAdListener f9279a;

        /* renamed from: b */
        public final /* synthetic */ MaxAd f9280b;

        public RunnableC2398g(MaxAdListener maxAdListener, MaxAd maxAd) {
            this.f9279a = maxAdListener;
            this.f9280b = maxAd;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                ((MaxAdViewAdListener) this.f9279a).onAdExpanded(this.f9280b);
            } catch (Throwable th) {
                C2374t.m30041c("ListenerCallbackInvoker", "Unable to notify ad event listener about ad being expanded", th);
            }
        }
    }

    /* renamed from: c.b.a.e.y.j$h */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/y/j$h.class */
    public static final class RunnableC2399h implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ MaxAdListener f9281a;

        /* renamed from: b */
        public final /* synthetic */ MaxAd f9282b;

        public RunnableC2399h(MaxAdListener maxAdListener, MaxAd maxAd) {
            this.f9281a = maxAdListener;
            this.f9282b = maxAd;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                ((MaxAdViewAdListener) this.f9281a).onAdCollapsed(this.f9282b);
            } catch (Throwable th) {
                C2374t.m30041c("ListenerCallbackInvoker", "Unable to notify ad event listener about ad being collapsed", th);
            }
        }
    }

    /* renamed from: c.b.a.e.y.j$i */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/y/j$i.class */
    public static final class RunnableC2400i implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AppLovinPostbackListener f9283a;

        /* renamed from: b */
        public final /* synthetic */ String f9284b;

        public RunnableC2400i(AppLovinPostbackListener appLovinPostbackListener, String str) {
            this.f9283a = appLovinPostbackListener;
            this.f9284b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f9283a.onPostbackSuccess(this.f9284b);
            } catch (Throwable th) {
                C2374t.m30041c("ListenerCallbackInvoker", "Unable to notify AppLovinPostbackListener about postback URL (" + this.f9284b + ") executed", th);
            }
        }
    }

    /* renamed from: c.b.a.e.y.j$j */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/y/j$j.class */
    public static final class RunnableC2401j implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AppLovinPostbackListener f9285a;

        /* renamed from: b */
        public final /* synthetic */ String f9286b;

        /* renamed from: c */
        public final /* synthetic */ int f9287c;

        public RunnableC2401j(AppLovinPostbackListener appLovinPostbackListener, String str, int i) {
            this.f9285a = appLovinPostbackListener;
            this.f9286b = str;
            this.f9287c = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f9285a.onPostbackFailure(this.f9286b, this.f9287c);
            } catch (Throwable th) {
                C2374t.m30041c("ListenerCallbackInvoker", "Unable to notify AppLovinPostbackListener about postback URL (" + this.f9286b + ") failing to execute with error code (" + this.f9287c + "):", th);
            }
        }
    }

    /* renamed from: c.b.a.e.y.j$k */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/y/j$k.class */
    public static final class RunnableC2402k implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AppLovinAdDisplayListener f9288a;

        /* renamed from: b */
        public final /* synthetic */ String f9289b;

        public RunnableC2402k(AppLovinAdDisplayListener appLovinAdDisplayListener, String str) {
            this.f9288a = appLovinAdDisplayListener;
            this.f9289b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            ((AbstractC2249e) this.f9288a).onAdDisplayFailed(this.f9289b);
        }
    }

    /* renamed from: c.b.a.e.y.j$l */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/y/j$l.class */
    public static final class RunnableC2403l implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AppLovinAdDisplayListener f9290a;

        /* renamed from: b */
        public final /* synthetic */ AppLovinAd f9291b;

        public RunnableC2403l(AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAd appLovinAd) {
            this.f9290a = appLovinAdDisplayListener;
            this.f9291b = appLovinAd;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f9290a.adHidden(C2391j.m29889b(this.f9291b));
            } catch (Throwable th) {
                C2374t.m30041c("ListenerCallbackInvoker", "Unable to notify ad event listener about ad being hidden", th);
            }
        }
    }

    /* renamed from: c.b.a.e.y.j$m */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/y/j$m.class */
    public static final class RunnableC2404m implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AppLovinAdClickListener f9292a;

        /* renamed from: b */
        public final /* synthetic */ AppLovinAd f9293b;

        public RunnableC2404m(AppLovinAdClickListener appLovinAdClickListener, AppLovinAd appLovinAd) {
            this.f9292a = appLovinAdClickListener;
            this.f9293b = appLovinAd;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f9292a.adClicked(C2391j.m29889b(this.f9293b));
            } catch (Throwable th) {
                C2374t.m30041c("ListenerCallbackInvoker", "Unable to notify ad event listener about ad being clicked", th);
            }
        }
    }

    /* renamed from: c.b.a.e.y.j$n */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/y/j$n.class */
    public static final class RunnableC2405n implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AppLovinAdVideoPlaybackListener f9294a;

        /* renamed from: b */
        public final /* synthetic */ AppLovinAd f9295b;

        public RunnableC2405n(AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener, AppLovinAd appLovinAd) {
            this.f9294a = appLovinAdVideoPlaybackListener;
            this.f9295b = appLovinAd;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f9294a.videoPlaybackBegan(C2391j.m29889b(this.f9295b));
            } catch (Throwable th) {
                C2374t.m30041c("ListenerCallbackInvoker", "Unable to notify ad event listener about ad playback began", th);
            }
        }
    }

    /* renamed from: c.b.a.e.y.j$o */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/y/j$o.class */
    public static final class RunnableC2406o implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AppLovinAdVideoPlaybackListener f9296a;

        /* renamed from: b */
        public final /* synthetic */ AppLovinAd f9297b;

        /* renamed from: c */
        public final /* synthetic */ double f9298c;

        /* renamed from: d */
        public final /* synthetic */ boolean f9299d;

        public RunnableC2406o(AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener, AppLovinAd appLovinAd, double d, boolean z) {
            this.f9296a = appLovinAdVideoPlaybackListener;
            this.f9297b = appLovinAd;
            this.f9298c = d;
            this.f9299d = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f9296a.videoPlaybackEnded(C2391j.m29889b(this.f9297b), this.f9298c, this.f9299d);
            } catch (Throwable th) {
                C2374t.m30041c("ListenerCallbackInvoker", "Unable to notify ad event listener about ad playback ended", th);
            }
        }
    }

    /* renamed from: c.b.a.e.y.j$p */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/y/j$p.class */
    public static final class RunnableC2407p implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AppLovinAdViewEventListener f9300a;

        /* renamed from: b */
        public final /* synthetic */ AppLovinAd f9301b;

        /* renamed from: c */
        public final /* synthetic */ AppLovinAdView f9302c;

        public RunnableC2407p(AppLovinAdViewEventListener appLovinAdViewEventListener, AppLovinAd appLovinAd, AppLovinAdView appLovinAdView) {
            this.f9300a = appLovinAdViewEventListener;
            this.f9301b = appLovinAd;
            this.f9302c = appLovinAdView;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f9300a.adOpenedFullscreen(C2391j.m29889b(this.f9301b), this.f9302c);
            } catch (Throwable th) {
                C2374t.m30041c("ListenerCallbackInvoker", "Unable to notify ad event listener about fullscreen opened event", th);
            }
        }
    }

    /* renamed from: c.b.a.e.y.j$q */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/y/j$q.class */
    public static final class RunnableC2408q implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AppLovinAdViewEventListener f9303a;

        /* renamed from: b */
        public final /* synthetic */ AppLovinAd f9304b;

        /* renamed from: c */
        public final /* synthetic */ AppLovinAdView f9305c;

        public RunnableC2408q(AppLovinAdViewEventListener appLovinAdViewEventListener, AppLovinAd appLovinAd, AppLovinAdView appLovinAdView) {
            this.f9303a = appLovinAdViewEventListener;
            this.f9304b = appLovinAd;
            this.f9305c = appLovinAdView;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f9303a.adClosedFullscreen(C2391j.m29889b(this.f9304b), this.f9305c);
            } catch (Throwable th) {
                C2374t.m30041c("ListenerCallbackInvoker", "Unable to notify ad event listener about fullscreen closed event", th);
            }
        }
    }

    /* renamed from: c.b.a.e.y.j$r */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/y/j$r.class */
    public static final class RunnableC2409r implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AppLovinAdViewEventListener f9306a;

        /* renamed from: b */
        public final /* synthetic */ AppLovinAd f9307b;

        /* renamed from: c */
        public final /* synthetic */ AppLovinAdView f9308c;

        public RunnableC2409r(AppLovinAdViewEventListener appLovinAdViewEventListener, AppLovinAd appLovinAd, AppLovinAdView appLovinAdView) {
            this.f9306a = appLovinAdViewEventListener;
            this.f9307b = appLovinAd;
            this.f9308c = appLovinAdView;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f9306a.adLeftApplication(C2391j.m29889b(this.f9307b), this.f9308c);
            } catch (Throwable th) {
                C2374t.m30041c("ListenerCallbackInvoker", "Unable to notify ad event listener about application leave event", th);
            }
        }
    }

    /* renamed from: c.b.a.e.y.j$s */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/y/j$s.class */
    public static final class RunnableC2410s implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AppLovinAdRewardListener f9309a;

        /* renamed from: b */
        public final /* synthetic */ AppLovinAd f9310b;

        /* renamed from: c */
        public final /* synthetic */ Map f9311c;

        public RunnableC2410s(AppLovinAdRewardListener appLovinAdRewardListener, AppLovinAd appLovinAd, Map map) {
            this.f9309a = appLovinAdRewardListener;
            this.f9310b = appLovinAd;
            this.f9311c = map;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f9309a.userRewardVerified(C2391j.m29889b(this.f9310b), this.f9311c);
            } catch (Throwable th) {
                C2374t.m30041c("ListenerCallbackInvoker", "Unable to notify ad reward listener about successful reward validation request", th);
            }
        }
    }

    /* renamed from: c.b.a.e.y.j$t */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/y/j$t.class */
    public static final class RunnableC2411t implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AppLovinAdRewardListener f9312a;

        /* renamed from: b */
        public final /* synthetic */ AppLovinAd f9313b;

        /* renamed from: c */
        public final /* synthetic */ Map f9314c;

        public RunnableC2411t(AppLovinAdRewardListener appLovinAdRewardListener, AppLovinAd appLovinAd, Map map) {
            this.f9312a = appLovinAdRewardListener;
            this.f9313b = appLovinAd;
            this.f9314c = map;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f9312a.userOverQuota(C2391j.m29889b(this.f9313b), this.f9314c);
            } catch (Throwable th) {
                C2374t.m30041c("ListenerCallbackInvoker", "Unable to notify ad reward listener about exceeding quota", th);
            }
        }
    }

    /* renamed from: c.b.a.e.y.j$u */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/y/j$u.class */
    public static final class RunnableC2412u implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AppLovinAdRewardListener f9315a;

        /* renamed from: b */
        public final /* synthetic */ AppLovinAd f9316b;

        /* renamed from: c */
        public final /* synthetic */ Map f9317c;

        public RunnableC2412u(AppLovinAdRewardListener appLovinAdRewardListener, AppLovinAd appLovinAd, Map map) {
            this.f9315a = appLovinAdRewardListener;
            this.f9316b = appLovinAd;
            this.f9317c = map;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f9315a.userRewardRejected(C2391j.m29889b(this.f9316b), this.f9317c);
            } catch (Throwable th) {
                C2374t.m30041c("ListenerCallbackInvoker", "Unable to notify ad reward listener about reward validation request being rejected", th);
            }
        }
    }

    /* renamed from: c.b.a.e.y.j$v */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/y/j$v.class */
    public static final class RunnableC2413v implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AppLovinAdRewardListener f9318a;

        /* renamed from: b */
        public final /* synthetic */ AppLovinAd f9319b;

        /* renamed from: c */
        public final /* synthetic */ int f9320c;

        public RunnableC2413v(AppLovinAdRewardListener appLovinAdRewardListener, AppLovinAd appLovinAd, int i) {
            this.f9318a = appLovinAdRewardListener;
            this.f9319b = appLovinAd;
            this.f9320c = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f9318a.validationRequestFailed(C2391j.m29889b(this.f9319b), this.f9320c);
            } catch (Throwable th) {
                C2374t.m30041c("ListenerCallbackInvoker", "Unable to notify ad reward listener about reward validation request failing", th);
            }
        }
    }

    /* renamed from: c.b.a.e.y.j$w */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/y/j$w.class */
    public static final class RunnableC2414w implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ MaxAdListener f9321a;

        /* renamed from: b */
        public final /* synthetic */ MaxAd f9322b;

        public RunnableC2414w(MaxAdListener maxAdListener, MaxAd maxAd) {
            this.f9321a = maxAdListener;
            this.f9322b = maxAd;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f9321a.onAdLoaded(this.f9322b);
            } catch (Throwable th) {
                C2374t.m30041c("ListenerCallbackInvoker", "Unable to notify ad event listener about ad being loaded", th);
            }
        }
    }

    /* renamed from: c.b.a.e.y.j$x */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/y/j$x.class */
    public static final class RunnableC2415x implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ MaxAdListener f9323a;

        /* renamed from: b */
        public final /* synthetic */ String f9324b;

        /* renamed from: c */
        public final /* synthetic */ int f9325c;

        public RunnableC2415x(MaxAdListener maxAdListener, String str, int i) {
            this.f9323a = maxAdListener;
            this.f9324b = str;
            this.f9325c = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f9323a.onAdLoadFailed(this.f9324b, this.f9325c);
            } catch (Throwable th) {
                C2374t.m30041c("ListenerCallbackInvoker", "Unable to notify ad event listener about ad failing to load", th);
            }
        }
    }

    /* renamed from: c.b.a.e.y.j$y */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/y/j$y.class */
    public static final class RunnableC2416y implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ MaxAdListener f9326a;

        /* renamed from: b */
        public final /* synthetic */ MaxAd f9327b;

        public RunnableC2416y(MaxAdListener maxAdListener, MaxAd maxAd) {
            this.f9326a = maxAdListener;
            this.f9327b = maxAd;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f9326a.onAdDisplayed(this.f9327b);
            } catch (Throwable th) {
                C2374t.m30041c("ListenerCallbackInvoker", "Unable to notify ad event listener about ad being displayed", th);
            }
        }
    }

    /* renamed from: c.b.a.e.y.j$z */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/y/j$z.class */
    public static final class RunnableC2417z implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ MaxAdListener f9328a;

        /* renamed from: b */
        public final /* synthetic */ MaxAd f9329b;

        public RunnableC2417z(MaxAdListener maxAdListener, MaxAd maxAd) {
            this.f9328a = maxAdListener;
            this.f9329b = maxAd;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f9328a.onAdHidden(this.f9329b);
            } catch (Throwable th) {
                C2374t.m30041c("ListenerCallbackInvoker", "Unable to notify ad event listener about ad being hidden", th);
            }
        }
    }

    /* renamed from: a */
    public static void m29906a(AppLovinAdViewEventListener appLovinAdViewEventListener, AppLovinAd appLovinAd, AppLovinAdView appLovinAdView) {
        if (appLovinAd != null && appLovinAdViewEventListener != null) {
            AppLovinSdkUtils.runOnUiThread(new RunnableC2407p(appLovinAdViewEventListener, appLovinAd, appLovinAdView));
        }
    }

    /* renamed from: a */
    public static void m29905a(MaxAdListener maxAdListener, MaxAd maxAd) {
        if (maxAd != null && maxAdListener != null) {
            AppLovinSdkUtils.runOnUiThread(new RunnableC2414w(maxAdListener, maxAd));
        }
    }

    /* renamed from: a */
    public static void m29904a(MaxAdListener maxAdListener, MaxAd maxAd, int i) {
        if (maxAd != null && maxAdListener != null) {
            AppLovinSdkUtils.runOnUiThread(new RunnableC2394c(maxAdListener, maxAd, i));
        }
    }

    /* renamed from: a */
    public static void m29903a(MaxAdListener maxAdListener, MaxAd maxAd, MaxReward maxReward) {
        if (maxAd != null && (maxAdListener instanceof MaxRewardedAdListener)) {
            AppLovinSdkUtils.runOnUiThread(new RunnableC2397f(maxAdListener, maxAd, maxReward));
        }
    }

    /* renamed from: a */
    public static void m29902a(MaxAdListener maxAdListener, String str, int i) {
        if (str != null && maxAdListener != null) {
            AppLovinSdkUtils.runOnUiThread(new RunnableC2415x(maxAdListener, str, i));
        }
    }

    /* renamed from: a */
    public static void m29900a(AppLovinAdClickListener appLovinAdClickListener, AppLovinAd appLovinAd) {
        if (appLovinAd != null && appLovinAdClickListener != null) {
            AppLovinSdkUtils.runOnUiThread(new RunnableC2404m(appLovinAdClickListener, appLovinAd));
        }
    }

    /* renamed from: a */
    public static void m29899a(AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAd appLovinAd) {
        if (appLovinAd != null && appLovinAdDisplayListener != null) {
            AppLovinSdkUtils.runOnUiThread(new RunnableC2393b(appLovinAdDisplayListener, appLovinAd));
        }
    }

    /* renamed from: a */
    public static void m29898a(AppLovinAdDisplayListener appLovinAdDisplayListener, String str) {
        if (appLovinAdDisplayListener instanceof AbstractC2249e) {
            AppLovinSdkUtils.runOnUiThread(new RunnableC2402k(appLovinAdDisplayListener, str));
        }
    }

    /* renamed from: a */
    public static void m29897a(AppLovinAdRewardListener appLovinAdRewardListener, AppLovinAd appLovinAd, int i) {
        if (appLovinAd != null && appLovinAdRewardListener != null) {
            AppLovinSdkUtils.runOnUiThread(new RunnableC2413v(appLovinAdRewardListener, appLovinAd, i));
        }
    }

    /* renamed from: a */
    public static void m29896a(AppLovinAdRewardListener appLovinAdRewardListener, AppLovinAd appLovinAd, Map<String, String> map) {
        if (appLovinAd != null && appLovinAdRewardListener != null) {
            AppLovinSdkUtils.runOnUiThread(new RunnableC2410s(appLovinAdRewardListener, appLovinAd, map));
        }
    }

    /* renamed from: a */
    public static void m29895a(AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener, AppLovinAd appLovinAd) {
        if (appLovinAd != null && appLovinAdVideoPlaybackListener != null) {
            AppLovinSdkUtils.runOnUiThread(new RunnableC2405n(appLovinAdVideoPlaybackListener, appLovinAd));
        }
    }

    /* renamed from: a */
    public static void m29894a(AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener, AppLovinAd appLovinAd, double d, boolean z) {
        if (appLovinAd != null && appLovinAdVideoPlaybackListener != null) {
            AppLovinSdkUtils.runOnUiThread(new RunnableC2406o(appLovinAdVideoPlaybackListener, appLovinAd, d, z));
        }
    }

    /* renamed from: a */
    public static void m29893a(AppLovinPostbackListener appLovinPostbackListener, String str) {
        if (appLovinPostbackListener != null) {
            AppLovinSdkUtils.runOnUiThread(new RunnableC2400i(appLovinPostbackListener, str));
        }
    }

    /* renamed from: a */
    public static void m29892a(AppLovinPostbackListener appLovinPostbackListener, String str, int i) {
        if (appLovinPostbackListener != null) {
            AppLovinSdkUtils.runOnUiThread(new RunnableC2401j(appLovinPostbackListener, str, i));
        }
    }

    /* renamed from: b */
    public static AppLovinAd m29889b(AppLovinAd appLovinAd) {
        AppLovinAdBase appLovinAdBase = (AppLovinAdBase) appLovinAd;
        if (appLovinAdBase.getDummyAd() != null) {
            appLovinAd = appLovinAdBase.getDummyAd();
        }
        return appLovinAd;
    }

    /* renamed from: b */
    public static void m29891b(AppLovinAdViewEventListener appLovinAdViewEventListener, AppLovinAd appLovinAd, AppLovinAdView appLovinAdView) {
        if (appLovinAd != null && appLovinAdViewEventListener != null) {
            AppLovinSdkUtils.runOnUiThread(new RunnableC2408q(appLovinAdViewEventListener, appLovinAd, appLovinAdView));
        }
    }

    /* renamed from: b */
    public static void m29890b(MaxAdListener maxAdListener, MaxAd maxAd) {
        if (maxAd != null && maxAdListener != null) {
            AppLovinSdkUtils.runOnUiThread(new RunnableC2416y(maxAdListener, maxAd));
        }
    }

    /* renamed from: b */
    public static void m29888b(AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAd appLovinAd) {
        if (appLovinAd != null && appLovinAdDisplayListener != null) {
            AppLovinSdkUtils.runOnUiThread(new RunnableC2403l(appLovinAdDisplayListener, appLovinAd));
        }
    }

    /* renamed from: b */
    public static void m29887b(AppLovinAdRewardListener appLovinAdRewardListener, AppLovinAd appLovinAd, Map<String, String> map) {
        if (appLovinAd != null && appLovinAdRewardListener != null) {
            AppLovinSdkUtils.runOnUiThread(new RunnableC2411t(appLovinAdRewardListener, appLovinAd, map));
        }
    }

    /* renamed from: c */
    public static void m29886c(AppLovinAdViewEventListener appLovinAdViewEventListener, AppLovinAd appLovinAd, AppLovinAdView appLovinAdView) {
        if (appLovinAd != null && appLovinAdViewEventListener != null) {
            AppLovinSdkUtils.runOnUiThread(new RunnableC2409r(appLovinAdViewEventListener, appLovinAd, appLovinAdView));
        }
    }

    /* renamed from: c */
    public static void m29885c(MaxAdListener maxAdListener, MaxAd maxAd) {
        if (maxAd != null && maxAdListener != null) {
            AppLovinSdkUtils.runOnUiThread(new RunnableC2417z(maxAdListener, maxAd));
        }
    }

    /* renamed from: c */
    public static void m29884c(AppLovinAdRewardListener appLovinAdRewardListener, AppLovinAd appLovinAd, Map<String, String> map) {
        if (appLovinAd != null && appLovinAdRewardListener != null) {
            AppLovinSdkUtils.runOnUiThread(new RunnableC2412u(appLovinAdRewardListener, appLovinAd, map));
        }
    }

    /* renamed from: d */
    public static void m29883d(MaxAdListener maxAdListener, MaxAd maxAd) {
        if (maxAd != null && maxAdListener != null) {
            AppLovinSdkUtils.runOnUiThread(new RunnableC2392a(maxAdListener, maxAd));
        }
    }

    /* renamed from: e */
    public static void m29882e(MaxAdListener maxAdListener, MaxAd maxAd) {
        if (maxAd != null && (maxAdListener instanceof MaxRewardedAdListener)) {
            AppLovinSdkUtils.runOnUiThread(new RunnableC2395d(maxAdListener, maxAd));
        }
    }

    /* renamed from: f */
    public static void m29881f(MaxAdListener maxAdListener, MaxAd maxAd) {
        if (maxAd != null && (maxAdListener instanceof MaxRewardedAdListener)) {
            AppLovinSdkUtils.runOnUiThread(new RunnableC2396e(maxAdListener, maxAd));
        }
    }

    /* renamed from: g */
    public static void m29880g(MaxAdListener maxAdListener, MaxAd maxAd) {
        if (maxAd != null && (maxAdListener instanceof MaxAdViewAdListener)) {
            AppLovinSdkUtils.runOnUiThread(new RunnableC2398g(maxAdListener, maxAd));
        }
    }

    /* renamed from: h */
    public static void m29879h(MaxAdListener maxAdListener, MaxAd maxAd) {
        if (maxAd != null && (maxAdListener instanceof MaxAdViewAdListener)) {
            AppLovinSdkUtils.runOnUiThread(new RunnableC2399h(maxAdListener, maxAd));
        }
    }
}
