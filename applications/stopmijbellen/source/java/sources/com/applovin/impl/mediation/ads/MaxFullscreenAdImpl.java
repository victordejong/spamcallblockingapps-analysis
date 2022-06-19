package com.applovin.impl.mediation.ads;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.SystemClock;
import android.support.p012v4.media.C0082b;
import android.view.ViewGroup;
import androidx.lifecycle.AbstractC0516f;
import com.applovin.impl.mediation.C1081b;
import com.applovin.impl.mediation.MaxErrorImpl;
import com.applovin.impl.mediation.MediationServiceImpl;
import com.applovin.impl.mediation.ads.AbstractC1078a;
import com.applovin.impl.mediation.p038a.AbstractC1044a;
import com.applovin.impl.mediation.p038a.C1046c;
import com.applovin.impl.sdk.C1294b;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.C1479t;
import com.applovin.impl.sdk.p055c.C1313a;
import com.applovin.impl.sdk.utils.C1493h;
import com.applovin.impl.sdk.utils.C1496j;
import com.applovin.impl.sdk.utils.C1533n;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxAdListener;
import com.applovin.mediation.MaxAdRevenueListener;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.MaxReward;
import com.applovin.mediation.MaxRewardedAdListener;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import p007a6.C0033h;
/* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/ads/MaxFullscreenAdImpl.class */
public class MaxFullscreenAdImpl extends AbstractC1078a implements C1294b.AbstractC1296a {

    /* renamed from: a */
    private final AbstractC1068a f3849a;

    /* renamed from: b */
    private final C1294b f3850b;

    /* renamed from: c */
    private final C1081b f3851c;

    /* renamed from: d */
    private C1533n f3852d;

    /* renamed from: e */
    private final Object f3853e = new Object();

    /* renamed from: f */
    private C1046c f3854f = null;

    /* renamed from: g */
    private EnumC1074c f3855g = EnumC1074c.IDLE;

    /* renamed from: h */
    private final AtomicBoolean f3856h = new AtomicBoolean();
    public final C1069b listenerWrapper;

    /* renamed from: com.applovin.impl.mediation.ads.MaxFullscreenAdImpl$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/ads/MaxFullscreenAdImpl$a.class */
    public interface AbstractC1068a {
        Activity getActivity();
    }

    /* renamed from: com.applovin.impl.mediation.ads.MaxFullscreenAdImpl$b */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b.class */
    public class C1069b implements AbstractC1078a.AbstractC1079a, MaxAdListener, MaxAdRevenueListener, MaxRewardedAdListener {
        private C1069b() {
            MaxFullscreenAdImpl.this = r4;
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdClicked(MaxAd maxAd) {
            C1496j.m4999d(MaxFullscreenAdImpl.this.adListener, maxAd, true);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdDisplayFailed(final MaxAd maxAd, final MaxError maxError) {
            MaxFullscreenAdImpl.this.m6565a(EnumC1074c.IDLE, new Runnable() { // from class: com.applovin.impl.mediation.ads.MaxFullscreenAdImpl.b.4
                @Override // java.lang.Runnable
                public void run() {
                    MaxFullscreenAdImpl.this.f3850b.m5886a();
                    MaxFullscreenAdImpl.this.m6569a();
                    MaxFullscreenAdImpl.this.sdk.m5538E().m5103b((AbstractC1044a) maxAd);
                    MaxFullscreenAdImpl.this.m6556b("ad failed to display");
                    C1496j.m5031a(MaxFullscreenAdImpl.this.adListener, maxAd, maxError, true);
                }
            });
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdDisplayed(MaxAd maxAd) {
            MaxFullscreenAdImpl.this.f3850b.m5886a();
            C1496j.m5008b(MaxFullscreenAdImpl.this.adListener, maxAd, true);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdHidden(final MaxAd maxAd) {
            MaxFullscreenAdImpl.this.f3851c.m6538a(maxAd);
            MaxFullscreenAdImpl.this.m6565a(EnumC1074c.IDLE, new Runnable() { // from class: com.applovin.impl.mediation.ads.MaxFullscreenAdImpl.b.3
                @Override // java.lang.Runnable
                public void run() {
                    MaxFullscreenAdImpl.this.m6569a();
                    MaxFullscreenAdImpl.this.sdk.m5538E().m5103b((AbstractC1044a) maxAd);
                    MaxFullscreenAdImpl.this.m6556b("ad was hidden");
                    C1496j.m5002c(MaxFullscreenAdImpl.this.adListener, maxAd, true);
                }
            });
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoadFailed(final String str, final MaxError maxError) {
            MaxFullscreenAdImpl.this.m6559b();
            MaxFullscreenAdImpl.this.m6565a(EnumC1074c.IDLE, new Runnable() { // from class: com.applovin.impl.mediation.ads.MaxFullscreenAdImpl.b.2
                @Override // java.lang.Runnable
                public void run() {
                    C1496j.m5026a(MaxFullscreenAdImpl.this.adListener, str, maxError, true);
                }
            });
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoaded(final MaxAd maxAd) {
            MaxFullscreenAdImpl.this.m6567a((C1046c) maxAd);
            if (MaxFullscreenAdImpl.this.f3856h.compareAndSet(true, false)) {
                MaxFullscreenAdImpl.this.loadRequestBuilder.m5159b("expired_ad_ad_unit_id");
            } else {
                MaxFullscreenAdImpl.this.m6565a(EnumC1074c.READY, new Runnable() { // from class: com.applovin.impl.mediation.ads.MaxFullscreenAdImpl.b.1
                    @Override // java.lang.Runnable
                    public void run() {
                        C1496j.m5028a(MaxFullscreenAdImpl.this.adListener, maxAd, true);
                    }
                });
            }
        }

        @Override // com.applovin.mediation.MaxAdRevenueListener
        public void onAdRevenuePaid(MaxAd maxAd) {
            C1496j.m5025a(MaxFullscreenAdImpl.this.revenueListener, maxAd);
        }

        @Override // com.applovin.mediation.MaxRewardedAdListener
        public void onRewardedVideoCompleted(MaxAd maxAd) {
            C1496j.m4995f(MaxFullscreenAdImpl.this.adListener, maxAd, true);
        }

        @Override // com.applovin.mediation.MaxRewardedAdListener
        public void onRewardedVideoStarted(MaxAd maxAd) {
            C1496j.m4997e(MaxFullscreenAdImpl.this.adListener, maxAd, true);
        }

        @Override // com.applovin.mediation.MaxRewardedAdListener
        public void onUserRewarded(MaxAd maxAd, MaxReward maxReward) {
            C1496j.m5029a(MaxFullscreenAdImpl.this.adListener, maxAd, maxReward, true);
        }
    }

    /* renamed from: com.applovin.impl.mediation.ads.MaxFullscreenAdImpl$c */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/ads/MaxFullscreenAdImpl$c.class */
    public enum EnumC1074c {
        IDLE,
        LOADING,
        READY,
        SHOWING,
        DESTROYED
    }

    public MaxFullscreenAdImpl(String str, MaxAdFormat maxAdFormat, AbstractC1068a abstractC1068a, String str2, C1408l c1408l) {
        super(str, maxAdFormat, str2, c1408l);
        this.f3849a = abstractC1068a;
        C1069b c1069b = new C1069b();
        this.listenerWrapper = c1069b;
        this.f3850b = new C1294b(c1408l, this);
        this.f3851c = new C1081b(c1408l, c1069b);
        C1479t.m5110f(str2, "Created new " + str2 + " (" + this + ")");
    }

    /* renamed from: a */
    public void m6569a() {
        C1046c c1046c;
        synchronized (this.f3853e) {
            c1046c = this.f3854f;
            this.f3854f = null;
        }
        this.sdk.m5539D().destroyAd(c1046c);
    }

    /* renamed from: a */
    public void m6567a(C1046c c1046c) {
        long m6675u = c1046c.m6675u() - (SystemClock.elapsedRealtime() - c1046c.m6700q());
        if (m6675u <= TimeUnit.SECONDS.toMillis(2L)) {
            this.logger.m5116b(this.tag, "Loaded an expired ad, running expire logic...");
            onAdExpired();
            return;
        }
        this.f3854f = c1046c;
        C1479t c1479t = this.logger;
        String str = this.tag;
        c1479t.m5116b(str, "Handle ad loaded for regular ad: " + c1046c);
        C1479t c1479t2 = this.logger;
        String str2 = this.tag;
        StringBuilder m8752j = C0082b.m8752j("Scheduling ad expiration ");
        m8752j.append(TimeUnit.MILLISECONDS.toSeconds(m6675u));
        m8752j.append(" seconds from now for ");
        m8752j.append(getAdUnitId());
        m8752j.append("...");
        c1479t2.m5116b(str2, m8752j.toString());
        this.f3850b.m5885a(m6675u);
    }

    /* renamed from: a */
    private void m6566a(C1046c c1046c, Context context, final Runnable runnable) {
        if (!c1046c.m6681G() || C1493h.m5062a(context) || !(context instanceof Activity)) {
            runnable.run();
            return;
        }
        AlertDialog create = new AlertDialog.Builder(context).setTitle(c1046c.m6680H()).setMessage(c1046c.m6679I()).setPositiveButton(c1046c.m6678J(), (DialogInterface.OnClickListener) null).create();
        create.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.applovin.impl.mediation.ads.MaxFullscreenAdImpl.5
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                runnable.run();
            }
        });
        create.show();
    }

    /* renamed from: a */
    public void m6565a(EnumC1074c enumC1074c, Runnable runnable) {
        boolean z;
        String str;
        String str2;
        C1479t c1479t;
        String str3;
        String str4;
        EnumC1074c enumC1074c2 = this.f3855g;
        synchronized (this.f3853e) {
            EnumC1074c enumC1074c3 = EnumC1074c.IDLE;
            z = true;
            if (enumC1074c2 != enumC1074c3) {
                EnumC1074c enumC1074c4 = EnumC1074c.LOADING;
                if (enumC1074c2 != enumC1074c4) {
                    EnumC1074c enumC1074c5 = EnumC1074c.READY;
                    if (enumC1074c2 != enumC1074c5) {
                        EnumC1074c enumC1074c6 = EnumC1074c.SHOWING;
                        if (enumC1074c2 == enumC1074c6) {
                            if (enumC1074c != enumC1074c3) {
                                if (enumC1074c == enumC1074c4) {
                                    str = this.tag;
                                    str2 = "Can not load another ad while the ad is showing";
                                } else {
                                    if (enumC1074c == enumC1074c5) {
                                        c1479t = this.logger;
                                        str3 = this.tag;
                                        str4 = "An ad is already showing, ignoring";
                                    } else if (enumC1074c == enumC1074c6) {
                                        str = this.tag;
                                        str2 = "The ad is already showing, not showing another one";
                                    } else if (enumC1074c != EnumC1074c.DESTROYED) {
                                        c1479t = this.logger;
                                        str3 = this.tag;
                                        str4 = "Unable to transition to: " + enumC1074c;
                                    }
                                    c1479t.m5111e(str3, str4);
                                }
                                C1479t.m5107i(str, str2);
                            }
                        } else if (enumC1074c2 == EnumC1074c.DESTROYED) {
                            str = this.tag;
                            str2 = "No operations are allowed on a destroyed instance";
                            C1479t.m5107i(str, str2);
                        } else {
                            c1479t = this.logger;
                            str3 = this.tag;
                            str4 = "Unknown state: " + this.f3855g;
                            c1479t.m5111e(str3, str4);
                        }
                        z = false;
                    } else if (enumC1074c != enumC1074c3) {
                        if (enumC1074c == enumC1074c4) {
                            str = this.tag;
                            str2 = "An ad is already loaded";
                            C1479t.m5107i(str, str2);
                            z = false;
                        } else {
                            if (enumC1074c == enumC1074c5) {
                                c1479t = this.logger;
                                str3 = this.tag;
                                str4 = "An ad is already marked as ready";
                            } else if (enumC1074c != EnumC1074c.SHOWING && enumC1074c != EnumC1074c.DESTROYED) {
                                c1479t = this.logger;
                                str3 = this.tag;
                                str4 = "Unable to transition to: " + enumC1074c;
                            }
                            c1479t.m5111e(str3, str4);
                            z = false;
                        }
                    }
                } else if (enumC1074c != enumC1074c3) {
                    if (enumC1074c == enumC1074c4) {
                        str = this.tag;
                        str2 = "An ad is already loading";
                    } else if (enumC1074c != EnumC1074c.READY) {
                        if (enumC1074c == EnumC1074c.SHOWING) {
                            str = this.tag;
                            str2 = "An ad is not ready to be shown yet";
                        } else if (enumC1074c != EnumC1074c.DESTROYED) {
                            c1479t = this.logger;
                            str3 = this.tag;
                            str4 = "Unable to transition to: " + enumC1074c;
                            c1479t.m5111e(str3, str4);
                            z = false;
                        }
                    }
                    C1479t.m5107i(str, str2);
                    z = false;
                }
            } else if (enumC1074c != EnumC1074c.LOADING && enumC1074c != EnumC1074c.DESTROYED) {
                if (enumC1074c == EnumC1074c.SHOWING) {
                    str = this.tag;
                    str2 = "No ad is loading or loaded";
                    C1479t.m5107i(str, str2);
                    z = false;
                } else {
                    c1479t = this.logger;
                    str3 = this.tag;
                    str4 = "Unable to transition to: " + enumC1074c;
                    c1479t.m5111e(str3, str4);
                    z = false;
                }
            }
            if (z) {
                this.logger.m5116b(this.tag, "Transitioning from " + this.f3855g + " to " + enumC1074c + "...");
                this.f3855g = enumC1074c;
            } else {
                this.logger.m5112d(this.tag, "Not allowed transition from " + this.f3855g + " to " + enumC1074c);
            }
        }
        if (!z || runnable == null) {
            return;
        }
        runnable.run();
    }

    /* renamed from: a */
    public void m6560a(String str) {
        this.f3851c.m6537b(this.f3854f);
        this.f3854f.m6621d(str);
        this.f3854f.m6620e(this.customPostbackData);
        C1479t c1479t = this.logger;
        String str2 = this.tag;
        StringBuilder m8752j = C0082b.m8752j("Showing ad for '");
        m8752j.append(this.adUnitId);
        m8752j.append("'; loaded ad: ");
        m8752j.append(this.f3854f);
        m8752j.append("...");
        c1479t.m5116b(str2, m8752j.toString());
        m6544a((AbstractC1044a) this.f3854f);
    }

    /* renamed from: a */
    private boolean m6568a(Activity activity) {
        if (activity != null) {
            if (!isReady()) {
                String m8754h = C0082b.m8754h(C0082b.m8752j("Attempting to show ad before it is ready - please check ad readiness using "), this.tag, "#isReady()");
                C1479t.m5107i(this.tag, m8754h);
                C1496j.m5031a(this.adListener, (MaxAd) this.f3854f, (MaxError) new MaxErrorImpl(-24, m8754h), true);
                return false;
            }
            if (Utils.getAlwaysFinishActivitiesSetting(activity) != 0) {
                if (Utils.isPubInDebugMode(activity) && this.sdk.m5454p().shouldFailAdDisplayIfDontKeepActivitiesIsEnabled()) {
                    throw new IllegalStateException("Ad failed to display! Please disable the \"Don't Keep Activities\" setting in your developer settings!");
                }
                if (((Boolean) this.sdk.m5511a(C1313a.f4685T)).booleanValue()) {
                    C1479t.m5107i(this.tag, "Ad failed to display! Please disable the \"Don't Keep Activities\" setting in your developer settings!");
                    C1496j.m5031a(this.adListener, (MaxAd) this.f3854f, (MaxError) new MaxErrorImpl(-5602, "Ad failed to display! Please disable the \"Don't Keep Activities\" setting in your developer settings!"), true);
                    return false;
                }
            }
            if (((Boolean) this.sdk.m5511a(C1313a.f4666A)).booleanValue() && (this.sdk.m5492ac().m5140a() || this.sdk.m5492ac().m5136b())) {
                C1479t.m5107i(this.tag, "Attempting to show ad when another fullscreen ad is already showing");
                C1496j.m5031a(this.adListener, (MaxAd) this.f3854f, (MaxError) new MaxErrorImpl(-23, "Attempting to show ad when another fullscreen ad is already showing"), true);
                return false;
            } else if (!((Boolean) this.sdk.m5511a(C1313a.f4667B)).booleanValue() || C1493h.m5062a(activity)) {
                return true;
            } else {
                C1479t.m5107i(this.tag, "Attempting to show ad with no internet connection");
                C1496j.m5031a(this.adListener, (MaxAd) this.f3854f, (MaxError) new MaxErrorImpl(-1009), true);
                return false;
            }
        }
        throw new IllegalArgumentException("Attempting to show ad without a valid activity.");
    }

    /* renamed from: b */
    public void m6559b() {
        C1046c c1046c;
        if (this.f3856h.compareAndSet(true, false)) {
            synchronized (this.f3853e) {
                c1046c = this.f3854f;
                this.f3854f = null;
            }
            this.sdk.m5539D().destroyAd(c1046c);
            this.loadRequestBuilder.m5159b("expired_ad_ad_unit_id");
        }
    }

    /* renamed from: b */
    public void m6556b(final String str) {
        final long intValue = ((Integer) this.sdk.m5511a(C1313a.f4711x)).intValue();
        if (intValue > 0) {
            this.f3852d = C1533n.m4965a(TimeUnit.SECONDS.toMillis(intValue), this.sdk, new Runnable() { // from class: com.applovin.impl.mediation.ads.MaxFullscreenAdImpl.6
                @Override // java.lang.Runnable
                public void run() {
                    String str2 = MaxFullscreenAdImpl.this.tag;
                    C1479t.m5108h(str2, intValue + " second(s) elapsed without an ad load attempt after " + MaxFullscreenAdImpl.this.adFormat.getDisplayName().toLowerCase() + " " + str + ". Please ensure that you are re-loading ads correctly! (Ad Unit ID: " + MaxFullscreenAdImpl.this.adUnitId + ")");
                }
            });
        }
    }

    @Override // com.applovin.impl.mediation.ads.AbstractC1078a
    public void destroy() {
        m6565a(EnumC1074c.DESTROYED, new Runnable() { // from class: com.applovin.impl.mediation.ads.MaxFullscreenAdImpl.1
            @Override // java.lang.Runnable
            public void run() {
                synchronized (MaxFullscreenAdImpl.this.f3853e) {
                    if (MaxFullscreenAdImpl.this.f3854f != null) {
                        MaxFullscreenAdImpl maxFullscreenAdImpl = MaxFullscreenAdImpl.this;
                        C1479t c1479t = maxFullscreenAdImpl.logger;
                        String str = maxFullscreenAdImpl.tag;
                        c1479t.m5116b(str, "Destroying ad for '" + MaxFullscreenAdImpl.this.adUnitId + "'; current ad: " + MaxFullscreenAdImpl.this.f3854f + "...");
                        MaxFullscreenAdImpl.this.sdk.m5539D().destroyAd(MaxFullscreenAdImpl.this.f3854f);
                    }
                }
                MaxFullscreenAdImpl.super.destroy();
            }
        });
    }

    public boolean isReady() {
        boolean z;
        synchronized (this.f3853e) {
            C1046c c1046c = this.f3854f;
            z = c1046c != null && c1046c.m6712e() && this.f3855g == EnumC1074c.READY;
        }
        return z;
    }

    public void loadAd(final Activity activity) {
        C1479t c1479t = this.logger;
        String str = this.tag;
        StringBuilder m8752j = C0082b.m8752j("Loading ad for '");
        m8752j.append(this.adUnitId);
        m8752j.append("'...");
        c1479t.m5116b(str, m8752j.toString());
        C1533n c1533n = this.f3852d;
        if (c1533n != null) {
            c1533n.m4958d();
        }
        if (!isReady()) {
            m6565a(EnumC1074c.LOADING, new Runnable() { // from class: com.applovin.impl.mediation.ads.MaxFullscreenAdImpl.2
                @Override // java.lang.Runnable
                public void run() {
                    Activity activity2 = activity;
                    if (activity2 == null) {
                        activity2 = MaxFullscreenAdImpl.this.sdk.m5483al();
                    }
                    MediationServiceImpl m5539D = MaxFullscreenAdImpl.this.sdk.m5539D();
                    MaxFullscreenAdImpl maxFullscreenAdImpl = MaxFullscreenAdImpl.this;
                    m5539D.loadAd(maxFullscreenAdImpl.adUnitId, null, maxFullscreenAdImpl.adFormat, maxFullscreenAdImpl.localExtraParameters, maxFullscreenAdImpl.loadRequestBuilder.m5164a(), activity2, MaxFullscreenAdImpl.this.listenerWrapper);
                }
            });
            return;
        }
        C1479t c1479t2 = this.logger;
        String str2 = this.tag;
        StringBuilder m8752j2 = C0082b.m8752j("An ad is already loaded for '");
        m8752j2.append(this.adUnitId);
        m8752j2.append("'");
        c1479t2.m5116b(str2, m8752j2.toString());
        C1496j.m5028a(this.adListener, (MaxAd) this.f3854f, true);
    }

    @Override // com.applovin.impl.sdk.C1294b.AbstractC1296a
    public void onAdExpired() {
        C1479t c1479t = this.logger;
        String str = this.tag;
        StringBuilder m8752j = C0082b.m8752j("Ad expired ");
        m8752j.append(getAdUnitId());
        c1479t.m5116b(str, m8752j.toString());
        this.f3856h.set(true);
        Activity activity = this.f3849a.getActivity();
        Activity activity2 = activity;
        if (activity == null) {
            Activity m6068a = this.sdk.m5491ad().m6068a();
            activity2 = m6068a;
            if (m6068a == null) {
                m6559b();
                this.listenerWrapper.onAdLoadFailed(this.adUnitId, new MaxErrorImpl(-5601, "No Activity found"));
                return;
            }
        }
        this.loadRequestBuilder.m5161a("expired_ad_ad_unit_id", getAdUnitId());
        this.sdk.m5539D().loadAd(this.adUnitId, null, this.adFormat, this.localExtraParameters, this.loadRequestBuilder.m5164a(), activity2, this.listenerWrapper);
    }

    public void showAd(final String str, Activity activity) {
        if (activity == null) {
            activity = this.sdk.m5483al();
        }
        if (m6568a(activity)) {
            final Activity activity2 = activity;
            m6566a(this.f3854f, activity, new Runnable() { // from class: com.applovin.impl.mediation.ads.MaxFullscreenAdImpl.3
                @Override // java.lang.Runnable
                public void run() {
                    MaxFullscreenAdImpl.this.m6565a(EnumC1074c.SHOWING, new Runnable() { // from class: com.applovin.impl.mediation.ads.MaxFullscreenAdImpl.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            RunnableC10623 runnableC10623 = RunnableC10623.this;
                            MaxFullscreenAdImpl.this.m6560a(str);
                            MediationServiceImpl m5539D = MaxFullscreenAdImpl.this.sdk.m5539D();
                            C1046c c1046c = MaxFullscreenAdImpl.this.f3854f;
                            RunnableC10623 runnableC106232 = RunnableC10623.this;
                            m5539D.showFullscreenAd(c1046c, activity2, MaxFullscreenAdImpl.this.listenerWrapper);
                        }
                    });
                }
            });
        }
    }

    public void showAd(final String str, final ViewGroup viewGroup, final AbstractC0516f abstractC0516f, Activity activity) {
        if (viewGroup == null || abstractC0516f == null) {
            C1479t.m5107i(this.tag, "Attempting to show ad with null containerView or lifecycle.");
            C1496j.m5031a(this.adListener, (MaxAd) this.f3854f, (MaxError) new MaxErrorImpl(-1, "Attempting to show ad with null containerView or lifecycle."), true);
            return;
        }
        if (activity == null) {
            activity = this.sdk.m5483al();
        }
        if (!m6568a(activity)) {
            return;
        }
        final Activity activity2 = activity;
        m6566a(this.f3854f, activity, new Runnable() { // from class: com.applovin.impl.mediation.ads.MaxFullscreenAdImpl.4
            @Override // java.lang.Runnable
            public void run() {
                MaxFullscreenAdImpl.this.m6565a(EnumC1074c.SHOWING, new Runnable() { // from class: com.applovin.impl.mediation.ads.MaxFullscreenAdImpl.4.1
                    @Override // java.lang.Runnable
                    public void run() {
                        RunnableC10644 runnableC10644 = RunnableC10644.this;
                        MaxFullscreenAdImpl.this.m6560a(str);
                        MediationServiceImpl m5539D = MaxFullscreenAdImpl.this.sdk.m5539D();
                        C1046c c1046c = MaxFullscreenAdImpl.this.f3854f;
                        RunnableC10644 runnableC106442 = RunnableC10644.this;
                        m5539D.showFullscreenAd(c1046c, viewGroup, abstractC0516f, activity2, MaxFullscreenAdImpl.this.listenerWrapper);
                    }
                });
            }
        });
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.tag);
        sb.append("{adUnitId='");
        C0033h.m8882o(sb, this.adUnitId, '\'', ", adListener=");
        sb.append(this.adListener);
        sb.append(", revenueListener=");
        sb.append(this.revenueListener);
        sb.append(", isReady=");
        sb.append(isReady());
        sb.append('}');
        return sb.toString();
    }
}
