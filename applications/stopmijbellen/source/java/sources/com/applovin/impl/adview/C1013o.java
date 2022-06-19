package com.applovin.impl.adview;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Handler;
import android.os.StrictMode;
import android.support.p012v4.media.C0082b;
import android.text.TextUtils;
import android.view.ViewGroup;
import androidx.lifecycle.AbstractC0516f;
import com.applovin.adview.AppLovinFullscreenActivity;
import com.applovin.adview.AppLovinFullscreenAdViewObserver;
import com.applovin.adview.AppLovinInterstitialAdDialog;
import com.applovin.impl.adview.activity.p037b.AbstractC0914a;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.C1479t;
import com.applovin.impl.sdk.p053ad.AbstractC1286e;
import com.applovin.impl.sdk.p053ad.AbstractC1293g;
import com.applovin.impl.sdk.p053ad.AppLovinAdImpl;
import com.applovin.impl.sdk.p055c.C1314b;
import com.applovin.impl.sdk.p056d.C1328f;
import com.applovin.impl.sdk.utils.C1493h;
import com.applovin.impl.sdk.utils.C1496j;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import java.lang.ref.WeakReference;
/* renamed from: com.applovin.impl.adview.o */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/o.class */
public class C1013o implements AppLovinInterstitialAdDialog {

    /* renamed from: a */
    public final C1408l f3675a;

    /* renamed from: b */
    private final WeakReference<Context> f3676b;

    /* renamed from: c */
    private volatile AppLovinAdLoadListener f3677c;

    /* renamed from: d */
    private volatile AppLovinAdDisplayListener f3678d;

    /* renamed from: e */
    private volatile AppLovinAdVideoPlaybackListener f3679e;

    /* renamed from: f */
    private volatile AppLovinAdClickListener f3680f;

    /* renamed from: g */
    private volatile AbstractC1286e f3681g;

    /* renamed from: h */
    private volatile AbstractC1286e.EnumC1289b f3682h;

    /* renamed from: i */
    private ViewGroup f3683i;

    /* renamed from: j */
    private AppLovinFullscreenAdViewObserver f3684j;

    /* renamed from: k */
    private AbstractC0914a f3685k;

    /* renamed from: com.applovin.impl.adview.o$2 */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/o$2.class */
    public class RunnableC10152 implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Context f3687a;

        /* renamed from: b */
        public final /* synthetic */ long f3688b;

        public RunnableC10152(Context context, long j) {
            C1013o.this = r5;
            this.f3687a = context;
            this.f3688b = j;
        }

        @Override // java.lang.Runnable
        public void run() {
            new Handler(this.f3687a.getMainLooper()).postDelayed(new Runnable() { // from class: com.applovin.impl.adview.o.2.1
                @Override // java.lang.Runnable
                public void run() {
                    if (C1013o.this.f3683i == null || C1013o.this.f3684j == null) {
                        C1013o.this.f3675a.m5542A().m5116b("InterstitialAdDialogWrapper", "Presenting ad in a fullscreen activity");
                        RunnableC10152 runnableC10152 = RunnableC10152.this;
                        C1013o.this.m6821a(runnableC10152.f3687a);
                        return;
                    }
                    C1479t m5542A = C1013o.this.f3675a.m5542A();
                    StringBuilder m8752j = C0082b.m8752j("Presenting ad in a containerView(");
                    m8752j.append(C1013o.this.f3683i);
                    m8752j.append(")");
                    m5542A.m5116b("InterstitialAdDialogWrapper", m8752j.toString());
                    C1013o.this.f3683i.setBackgroundColor(-16777216);
                    AbstractC1286e abstractC1286e = C1013o.this.f3681g;
                    AppLovinAdClickListener appLovinAdClickListener = C1013o.this.f3680f;
                    AppLovinAdDisplayListener appLovinAdDisplayListener = C1013o.this.f3678d;
                    AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener = C1013o.this.f3679e;
                    C1013o c1013o = C1013o.this;
                    AbstractC0914a.m7056a(abstractC1286e, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener, c1013o.f3675a, (Activity) c1013o.m6801f(), new AbstractC0914a.AbstractC0926a() { // from class: com.applovin.impl.adview.o.2.1.1
                        @Override // com.applovin.impl.adview.activity.p037b.AbstractC0914a.AbstractC0926a
                        /* renamed from: a */
                        public void mo6797a(AbstractC0914a abstractC0914a) {
                            C1013o.this.f3685k = abstractC0914a;
                            C1013o.this.f3684j.setPresenter(abstractC0914a);
                            abstractC0914a.mo6968a(C1013o.this.f3683i);
                        }

                        @Override // com.applovin.impl.adview.activity.p037b.AbstractC0914a.AbstractC0926a
                        /* renamed from: a */
                        public void mo6796a(String str, Throwable th) {
                            C1013o.m6813a(C1013o.this.f3681g, C1013o.this.f3678d, str, th, null);
                        }
                    });
                }
            }, this.f3688b);
        }
    }

    public C1013o(AppLovinSdk appLovinSdk, Context context) {
        if (appLovinSdk != null) {
            if (context == null) {
                throw new IllegalArgumentException("No context specified");
            }
            this.f3675a = appLovinSdk.coreSdk;
            this.f3676b = new WeakReference<>(context);
            return;
        }
        throw new IllegalArgumentException("No sdk specified");
    }

    /* renamed from: a */
    public void m6822a(final int i) {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.adview.o.5
            @Override // java.lang.Runnable
            public void run() {
                if (C1013o.this.f3677c != null) {
                    C1013o.this.f3677c.failedToReceiveAd(i);
                }
            }
        });
    }

    /* renamed from: a */
    public void m6821a(Context context) {
        Intent intent = new Intent(context, AppLovinFullscreenActivity.class);
        intent.putExtra("com.applovin.interstitial.sdk_key", this.f3675a.m5444z());
        AppLovinFullscreenActivity.parentInterstitialWrapper = this;
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        if (context instanceof Activity) {
            context.startActivity(intent);
            ((Activity) context).overridePendingTransition(0, 0);
        } else {
            intent.setFlags(268435456);
            context.startActivity(intent);
        }
        StrictMode.setThreadPolicy(allowThreadDiskReads);
    }

    /* renamed from: a */
    private void m6815a(AbstractC1286e abstractC1286e, Context context) {
        if (this.f3675a.m5491ad().m6066b() == null) {
            abstractC1286e.m5920b(true);
            this.f3675a.m5524S().m5741a(C1328f.f5093m);
        }
        this.f3681g = abstractC1286e;
        this.f3682h = this.f3681g.m5904n();
        long max = Math.max(0L, ((Long) this.f3675a.m5511a(C1314b.f4861cl)).longValue());
        C1479t m5542A = this.f3675a.m5542A();
        m5542A.m5116b("InterstitialAdDialogWrapper", "Presenting ad with delay of " + max);
        m6814a(abstractC1286e, context, new RunnableC10152(context, max));
    }

    /* renamed from: a */
    private void m6814a(AbstractC1286e abstractC1286e, Context context, final Runnable runnable) {
        if (!TextUtils.isEmpty(abstractC1286e.m5984I()) || !abstractC1286e.m5948ac() || C1493h.m5062a(context) || !(context instanceof Activity)) {
            runnable.run();
            return;
        }
        AlertDialog create = new AlertDialog.Builder(context).setTitle(abstractC1286e.m5947ad()).setMessage(abstractC1286e.m5946ae()).setPositiveButton(abstractC1286e.m5945af(), (DialogInterface.OnClickListener) null).create();
        create.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.applovin.impl.adview.o.3
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                runnable.run();
            }
        });
        create.show();
    }

    /* renamed from: a */
    public static void m6813a(AbstractC1286e abstractC1286e, AppLovinAdDisplayListener appLovinAdDisplayListener, String str, Throwable th, AppLovinFullscreenActivity appLovinFullscreenActivity) {
        C1479t.m5113c("InterstitialAdDialogWrapper", str, th);
        if (appLovinAdDisplayListener instanceof AbstractC1293g) {
            C1496j.m5017a(appLovinAdDisplayListener, str);
        } else {
            C1496j.m5006b(appLovinAdDisplayListener, abstractC1286e);
        }
        if (appLovinFullscreenActivity != null) {
            appLovinFullscreenActivity.dismiss();
        }
    }

    /* renamed from: a */
    private void m6812a(AppLovinAd appLovinAd) {
        if (this.f3678d != null) {
            this.f3678d.adHidden(appLovinAd);
        }
    }

    /* renamed from: b */
    public void m6808b(final AppLovinAd appLovinAd) {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.adview.o.4
            @Override // java.lang.Runnable
            public void run() {
                if (C1013o.this.f3677c != null) {
                    C1013o.this.f3677c.adReceived(appLovinAd);
                }
            }
        });
    }

    /* renamed from: f */
    public Context m6801f() {
        return this.f3676b.get();
    }

    /* renamed from: a */
    public AbstractC1286e m6823a() {
        return this.f3681g;
    }

    /* renamed from: a */
    public void m6811a(AppLovinAdLoadListener appLovinAdLoadListener) {
        this.f3675a.m5449u().loadNextAd(AppLovinAdSize.INTERSTITIAL, appLovinAdLoadListener);
    }

    /* renamed from: b */
    public AppLovinAdVideoPlaybackListener m6810b() {
        return this.f3679e;
    }

    /* renamed from: c */
    public AppLovinAdDisplayListener m6807c() {
        return this.f3678d;
    }

    /* renamed from: d */
    public AppLovinAdClickListener m6805d() {
        return this.f3680f;
    }

    /* renamed from: e */
    public void m6803e() {
        this.f3683i = null;
        this.f3684j = null;
        this.f3680f = null;
        this.f3677c = null;
        this.f3679e = null;
        this.f3678d = null;
    }

    @Override // com.applovin.adview.AppLovinInterstitialAdDialog
    public void setAdClickListener(AppLovinAdClickListener appLovinAdClickListener) {
        this.f3680f = appLovinAdClickListener;
    }

    @Override // com.applovin.adview.AppLovinInterstitialAdDialog
    public void setAdDisplayListener(AppLovinAdDisplayListener appLovinAdDisplayListener) {
        this.f3678d = appLovinAdDisplayListener;
    }

    @Override // com.applovin.adview.AppLovinInterstitialAdDialog
    public void setAdLoadListener(AppLovinAdLoadListener appLovinAdLoadListener) {
        this.f3677c = appLovinAdLoadListener;
    }

    @Override // com.applovin.adview.AppLovinInterstitialAdDialog
    public void setAdVideoPlaybackListener(AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener) {
        this.f3679e = appLovinAdVideoPlaybackListener;
    }

    @Override // com.applovin.adview.AppLovinInterstitialAdDialog
    public void show() {
        m6811a(new AppLovinAdLoadListener() { // from class: com.applovin.impl.adview.o.1
            @Override // com.applovin.sdk.AppLovinAdLoadListener
            public void adReceived(AppLovinAd appLovinAd) {
                C1013o.this.m6808b(appLovinAd);
                C1013o.this.showAndRender(appLovinAd);
            }

            @Override // com.applovin.sdk.AppLovinAdLoadListener
            public void failedToReceiveAd(int i) {
                C1013o.this.m6822a(i);
            }
        });
    }

    @Override // com.applovin.adview.AppLovinInterstitialAdDialog
    public void showAndRender(AppLovinAd appLovinAd) {
        String str;
        Context m6801f = m6801f();
        if (m6801f == null) {
            str = "Failed to show interstitial: stale activity reference provided";
        } else {
            AppLovinAd maybeRetrieveNonDummyAd = Utils.maybeRetrieveNonDummyAd(appLovinAd, this.f3675a);
            if (maybeRetrieveNonDummyAd != null) {
                if (((AppLovinAdImpl) maybeRetrieveNonDummyAd).hasShown() && ((Boolean) this.f3675a.m5511a(C1314b.f4797bZ)).booleanValue()) {
                    throw new IllegalStateException("Failed to display ad - ad can only be displayed once. Load the next ad.");
                }
                if (maybeRetrieveNonDummyAd instanceof AbstractC1286e) {
                    m6815a((AbstractC1286e) maybeRetrieveNonDummyAd, m6801f);
                    return;
                }
                this.f3675a.m5542A().m5111e("InterstitialAdDialogWrapper", "Failed to show interstitial: unknown ad type provided: '" + maybeRetrieveNonDummyAd + "'");
                m6812a(maybeRetrieveNonDummyAd);
                return;
            }
            str = "Failed to show ad: " + appLovinAd;
        }
        C1479t.m5107i("InterstitialAdDialogWrapper", str);
        m6812a(appLovinAd);
    }

    @Override // com.applovin.adview.AppLovinInterstitialAdDialog
    public void showAndRender(AppLovinAd appLovinAd, ViewGroup viewGroup, AbstractC0516f abstractC0516f) {
        if (viewGroup == null || abstractC0516f == null) {
            C1479t.m5107i("InterstitialAdDialogWrapper", "Failed to show interstitial: attempting to show ad with null containerView or lifecycle");
            m6812a(appLovinAd);
            return;
        }
        this.f3683i = viewGroup;
        AppLovinFullscreenAdViewObserver appLovinFullscreenAdViewObserver = new AppLovinFullscreenAdViewObserver(abstractC0516f, this, this.f3675a);
        this.f3684j = appLovinFullscreenAdViewObserver;
        abstractC0516f.mo7992a(appLovinFullscreenAdViewObserver);
        showAndRender(appLovinAd);
    }

    public String toString() {
        return "AppLovinInterstitialAdDialog{}";
    }
}
