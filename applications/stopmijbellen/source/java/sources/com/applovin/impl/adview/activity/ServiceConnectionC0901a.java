package com.applovin.impl.adview.activity;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.support.p012v4.media.C0082b;
import com.applovin.adview.AppLovinFullscreenActivity;
import com.applovin.impl.adview.C1013o;
import com.applovin.impl.adview.activity.FullscreenAdService;
import com.applovin.impl.adview.activity.p037b.AbstractC0914a;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.C1479t;
import com.applovin.impl.sdk.p053ad.AbstractC1286e;
import com.applovin.impl.sdk.p053ad.C1285d;
import com.applovin.impl.sdk.p053ad.EnumC1282b;
import com.applovin.impl.sdk.p057e.C1367p;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.mediation.AppLovinUtils;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.applovin.impl.adview.activity.a */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/activity/a.class */
public class ServiceConnectionC0901a implements ServiceConnection {

    /* renamed from: a */
    private final C1408l f3394a;

    /* renamed from: b */
    private final C1479t f3395b;

    /* renamed from: c */
    private final WeakReference<AppLovinFullscreenActivity> f3396c;

    /* renamed from: d */
    private final AtomicBoolean f3397d = new AtomicBoolean();

    /* renamed from: e */
    private Messenger f3398e;

    /* renamed from: com.applovin.impl.adview.activity.a$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/activity/a$a.class */
    public class C0904a implements AppLovinAdClickListener, AppLovinAdDisplayListener, AppLovinAdVideoPlaybackListener {
        private C0904a() {
            ServiceConnectionC0901a.this = r4;
        }

        /* renamed from: a */
        private void m7073a(Bundle bundle, FullscreenAdService.EnumC0900b enumC0900b) {
            Message obtain = Message.obtain((Handler) null, enumC0900b.m7082a());
            if (bundle != null) {
                obtain.setData(bundle);
            }
            try {
                ServiceConnectionC0901a.this.f3398e.send(obtain);
            } catch (RemoteException e) {
                C1479t c1479t = ServiceConnectionC0901a.this.f3395b;
                StringBuilder m8752j = C0082b.m8752j("Failed to forward callback (");
                m8752j.append(enumC0900b.m7082a());
                m8752j.append(")");
                c1479t.m5115b("AppLovinFullscreenActivity", m8752j.toString(), e);
            }
        }

        /* renamed from: a */
        private void m7072a(FullscreenAdService.EnumC0900b enumC0900b) {
            m7073a(null, enumC0900b);
        }

        @Override // com.applovin.sdk.AppLovinAdClickListener
        public void adClicked(AppLovinAd appLovinAd) {
            m7072a(FullscreenAdService.EnumC0900b.AD_CLICKED);
        }

        @Override // com.applovin.sdk.AppLovinAdDisplayListener
        public void adDisplayed(AppLovinAd appLovinAd) {
            m7072a(FullscreenAdService.EnumC0900b.AD_DISPLAYED);
        }

        @Override // com.applovin.sdk.AppLovinAdDisplayListener
        public void adHidden(AppLovinAd appLovinAd) {
            m7072a(FullscreenAdService.EnumC0900b.AD_HIDDEN);
        }

        @Override // com.applovin.sdk.AppLovinAdVideoPlaybackListener
        public void videoPlaybackBegan(AppLovinAd appLovinAd) {
            m7072a(FullscreenAdService.EnumC0900b.AD_VIDEO_STARTED);
        }

        @Override // com.applovin.sdk.AppLovinAdVideoPlaybackListener
        public void videoPlaybackEnded(AppLovinAd appLovinAd, double d, boolean z) {
            Bundle bundle = new Bundle();
            bundle.putDouble("percent_viewed", d);
            bundle.putBoolean("fully_watched", z);
            m7073a(bundle, FullscreenAdService.EnumC0900b.AD_VIDEO_ENDED);
        }
    }

    /* renamed from: com.applovin.impl.adview.activity.a$b */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/activity/a$b.class */
    public static class HandlerC0905b extends Handler {

        /* renamed from: a */
        private final WeakReference<ServiceConnectionC0901a> f3405a;

        private HandlerC0905b(ServiceConnectionC0901a serviceConnectionC0901a) {
            this.f3405a = new WeakReference<>(serviceConnectionC0901a);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            ServiceConnectionC0901a serviceConnectionC0901a;
            if (message.what != FullscreenAdService.EnumC0900b.AD.m7082a() || (serviceConnectionC0901a = this.f3405a.get()) == null) {
                super.handleMessage(message);
            } else {
                serviceConnectionC0901a.m7078a(EnumC1282b.m6015a(message.getData().getInt(FullscreenAdService.DATA_KEY_AD_SOURCE)), message.getData().getString(FullscreenAdService.DATA_KEY_RAW_FULL_AD_RESPONSE));
            }
        }
    }

    public ServiceConnectionC0901a(AppLovinFullscreenActivity appLovinFullscreenActivity, C1408l c1408l) {
        this.f3394a = c1408l;
        this.f3395b = c1408l.m5542A();
        this.f3396c = new WeakReference<>(appLovinFullscreenActivity);
    }

    /* renamed from: a */
    public void m7081a() {
        AppLovinFullscreenActivity appLovinFullscreenActivity = this.f3396c.get();
        if (appLovinFullscreenActivity == null) {
            this.f3395b.m5111e("AppLovinFullscreenActivity", "Unable to dismiss parent Activity");
            return;
        }
        this.f3395b.m5116b("AppLovinFullscreenActivity", "Dismissing...");
        appLovinFullscreenActivity.dismiss();
    }

    /* renamed from: a */
    public void m7078a(EnumC1282b enumC1282b, String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            this.f3394a.m5525R().m5654a(new C1367p(jSONObject, C1285d.m6006a(JsonUtils.getString(jSONObject, AppLovinUtils.ServerParameterKeys.ZONE_ID, "")), enumC1282b, new AppLovinAdLoadListener() { // from class: com.applovin.impl.adview.activity.a.1
                @Override // com.applovin.sdk.AppLovinAdLoadListener
                public void adReceived(final AppLovinAd appLovinAd) {
                    final AppLovinFullscreenActivity appLovinFullscreenActivity = (AppLovinFullscreenActivity) ServiceConnectionC0901a.this.f3396c.get();
                    C1479t c1479t = ServiceConnectionC0901a.this.f3395b;
                    if (appLovinFullscreenActivity != null) {
                        c1479t.m5116b("AppLovinFullscreenActivity", "Presenting ad...");
                        final C0904a c0904a = new C0904a();
                        AbstractC0914a.m7056a((AbstractC1286e) appLovinAd, c0904a, c0904a, c0904a, ServiceConnectionC0901a.this.f3394a, appLovinFullscreenActivity, new AbstractC0914a.AbstractC0926a() { // from class: com.applovin.impl.adview.activity.a.1.1
                            @Override // com.applovin.impl.adview.activity.p037b.AbstractC0914a.AbstractC0926a
                            /* renamed from: a */
                            public void mo6797a(AbstractC0914a abstractC0914a) {
                                appLovinFullscreenActivity.setPresenter(abstractC0914a);
                                abstractC0914a.mo6961d();
                            }

                            @Override // com.applovin.impl.adview.activity.p037b.AbstractC0914a.AbstractC0926a
                            /* renamed from: a */
                            public void mo6796a(String str2, Throwable th) {
                                C1013o.m6813a((AbstractC1286e) appLovinAd, c0904a, str2, th, appLovinFullscreenActivity);
                            }
                        });
                        return;
                    }
                    c1479t.m5111e("AppLovinFullscreenActivity", "Unable to present ad, parent activity has been GC'd - " + appLovinAd);
                }

                @Override // com.applovin.sdk.AppLovinAdLoadListener
                public void failedToReceiveAd(int i) {
                    ServiceConnectionC0901a.this.m7081a();
                }
            }, this.f3394a));
        } catch (JSONException e) {
            C1479t c1479t = this.f3395b;
            c1479t.m5115b("AppLovinFullscreenActivity", "Unable to process ad: " + str, e);
            m7081a();
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        if (this.f3397d.compareAndSet(false, true)) {
            C1479t c1479t = this.f3395b;
            c1479t.m5116b("AppLovinFullscreenActivity", "Fullscreen ad service connected to " + componentName);
            this.f3398e = new Messenger(iBinder);
            Message obtain = Message.obtain((Handler) null, FullscreenAdService.EnumC0900b.AD.m7082a());
            obtain.replyTo = new Messenger(new HandlerC0905b());
            try {
                this.f3395b.m5116b("AppLovinFullscreenActivity", "Requesting ad from FullscreenAdService...");
                this.f3398e.send(obtain);
            } catch (RemoteException e) {
                this.f3395b.m5115b("AppLovinFullscreenActivity", "Failed to send ad request message to FullscreenAdService", e);
                m7081a();
            }
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        if (this.f3397d.compareAndSet(true, false)) {
            C1479t c1479t = this.f3395b;
            c1479t.m5116b("AppLovinFullscreenActivity", "FullscreenAdService disconnected from " + componentName);
        }
    }
}
