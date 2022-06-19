package com.applovin.impl.mediation;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.support.p012v4.media.C0082b;
import android.text.TextUtils;
import android.util.Log;
import android.view.ViewGroup;
import androidx.lifecycle.AbstractC0516f;
import com.applovin.impl.mediation.ads.AbstractC1078a;
import com.applovin.impl.mediation.p038a.AbstractC1044a;
import com.applovin.impl.mediation.p038a.AbstractC1048e;
import com.applovin.impl.mediation.p038a.C1046c;
import com.applovin.impl.mediation.p038a.C1049f;
import com.applovin.impl.mediation.p038a.C1050g;
import com.applovin.impl.mediation.p038a.C1052h;
import com.applovin.impl.mediation.p039b.C1093d;
import com.applovin.impl.mediation.p039b.C1100f;
import com.applovin.impl.mediation.p039b.C1101g;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.C1479t;
import com.applovin.impl.sdk.network.C1469j;
import com.applovin.impl.sdk.p055c.C1313a;
import com.applovin.impl.sdk.p057e.C1362o;
import com.applovin.impl.sdk.utils.C1496j;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxAdListener;
import com.applovin.mediation.MaxAdRevenueListener;
import com.applovin.mediation.MaxAdViewAdListener;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.MaxReward;
import com.applovin.mediation.MaxRewardedAdListener;
import com.applovin.mediation.adapter.MaxAdapter;
import com.applovin.mediation.adapter.MaxAdapterError;
import com.applovin.mediation.adapter.listeners.MaxSignalCollectionListener;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/MediationServiceImpl.class */
public class MediationServiceImpl implements AppLovinBroadcastManager.Receiver {

    /* renamed from: a */
    private final C1408l f3763a;

    /* renamed from: b */
    private final C1479t f3764b;

    /* renamed from: c */
    private final AtomicReference<JSONObject> f3765c = new AtomicReference<>();

    /* renamed from: com.applovin.impl.mediation.MediationServiceImpl$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/MediationServiceImpl$a.class */
    public class C1040a implements AbstractC1078a.AbstractC1079a, MaxAdListener, MaxAdRevenueListener, MaxAdViewAdListener, MaxRewardedAdListener {

        /* renamed from: b */
        private final AbstractC1044a f3787b;

        /* renamed from: c */
        private AbstractC1078a.AbstractC1079a f3788c;

        public C1040a(AbstractC1044a abstractC1044a, AbstractC1078a.AbstractC1079a abstractC1079a) {
            MediationServiceImpl.this = r4;
            this.f3787b = abstractC1044a;
            this.f3788c = abstractC1079a;
        }

        /* renamed from: a */
        public void m6725a(AbstractC1078a.AbstractC1079a abstractC1079a) {
            this.f3788c = abstractC1079a;
        }

        /* renamed from: a */
        public void m6724a(MaxAd maxAd, Bundle bundle) {
            this.f3787b.m6699r();
            this.f3787b.m6719a(bundle);
            MediationServiceImpl.this.m6741a(this.f3787b);
            C1496j.m5033a((MaxAdListener) this.f3788c, maxAd);
        }

        /* renamed from: b */
        public void m6723b(MaxAd maxAd, Bundle bundle) {
            MediationServiceImpl.this.f3764b.m5116b("MediationService", "Scheduling impression for ad via callback...");
            MediationServiceImpl.this.processCallbackAdImpressionPostback(this.f3787b, this.f3788c);
            this.f3787b.m6719a(bundle);
            MediationServiceImpl.this.f3763a.m5490ae().m5587a(this.f3787b, "DID_DISPLAY");
            if (maxAd.getFormat().isFullscreenAd()) {
                MediationServiceImpl.this.f3763a.m5492ac().m5138a(maxAd);
                MediationServiceImpl.this.f3763a.m5486ai().m5434a(maxAd);
            }
            C1496j.m5009b(this.f3788c, maxAd);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdClicked(MaxAd maxAd) {
            MediationServiceImpl.this.m6740a(this.f3787b, this.f3788c);
            C1496j.m5000d(this.f3788c, maxAd);
        }

        @Override // com.applovin.mediation.MaxAdViewAdListener
        public void onAdCollapsed(MaxAd maxAd) {
            C1496j.m4992h(this.f3788c, maxAd);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdDisplayFailed(MaxAd maxAd, MaxError maxError) {
            MediationServiceImpl.this.m6728b(this.f3787b, maxError, this.f3788c);
            if ((maxAd.getFormat() == MaxAdFormat.REWARDED || maxAd.getFormat() == MaxAdFormat.REWARDED_INTERSTITIAL) && (maxAd instanceof C1046c)) {
                ((C1046c) maxAd).m6683E();
            }
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdDisplayed(MaxAd maxAd) {
            m6723b(maxAd, null);
        }

        @Override // com.applovin.mediation.MaxAdViewAdListener
        public void onAdExpanded(MaxAd maxAd) {
            C1496j.m4994g(this.f3788c, maxAd);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v10, types: [long] */
        /* JADX WARN: Type inference failed for: r1v3 */
        /* JADX WARN: Type inference failed for: r7v0 */
        /* JADX WARN: Type inference failed for: r7v1 */
        /* JADX WARN: Type inference failed for: r7v2 */
        @Override // com.applovin.mediation.MaxAdListener
        public void onAdHidden(final MaxAd maxAd) {
            MediationServiceImpl.this.f3763a.m5490ae().m5587a((AbstractC1044a) maxAd, "DID_HIDE");
            AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.mediation.MediationServiceImpl.a.1
                @Override // java.lang.Runnable
                public void run() {
                    if (maxAd.getFormat().isFullscreenAd()) {
                        MediationServiceImpl.this.f3763a.m5492ac().m5134b(maxAd);
                        MediationServiceImpl.this.f3763a.m5486ai().m5442a();
                    }
                    C1496j.m5003c(C1040a.this.f3788c, maxAd);
                }
            }, (maxAd instanceof C1046c ? ((C1046c) maxAd).m6687A() : false) == true ? 1L : 0L);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoadFailed(String str, MaxError maxError) {
            this.f3787b.m6699r();
            MediationServiceImpl.this.m6739a(this.f3787b, maxError, this.f3788c);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoaded(MaxAd maxAd) {
            m6724a(maxAd, null);
        }

        @Override // com.applovin.mediation.MaxAdRevenueListener
        public void onAdRevenuePaid(MaxAd maxAd) {
        }

        @Override // com.applovin.mediation.MaxRewardedAdListener
        public void onRewardedVideoCompleted(MaxAd maxAd) {
            C1496j.m4996f(this.f3788c, maxAd);
        }

        @Override // com.applovin.mediation.MaxRewardedAdListener
        public void onRewardedVideoStarted(MaxAd maxAd) {
            C1496j.m4998e(this.f3788c, maxAd);
        }

        @Override // com.applovin.mediation.MaxRewardedAdListener
        public void onUserRewarded(MaxAd maxAd, MaxReward maxReward) {
            C1496j.m5030a(this.f3788c, maxAd, maxReward);
            MediationServiceImpl.this.f3763a.m5525R().m5653a(new C1100f((C1046c) maxAd, MediationServiceImpl.this.f3763a), C1362o.EnumC1364a.MEDIATION_REWARD);
        }
    }

    public MediationServiceImpl(C1408l c1408l) {
        this.f3763a = c1408l;
        this.f3764b = c1408l.m5542A();
        c1408l.m5487ah().registerReceiver(this, new IntentFilter("com.applovin.render_process_gone"));
    }

    /* renamed from: a */
    private C1191g m6738a(C1046c c1046c) {
        C1191g m6710g = c1046c.m6710g();
        if (m6710g != null) {
            return m6710g;
        }
        this.f3763a.m5492ac().m5137a(false);
        C1479t c1479t = this.f3764b;
        c1479t.m5112d("MediationService", "Failed to show " + c1046c + ": adapter not found");
        C1479t.m5107i("MediationService", "There may be an integration problem with the adapter for ad unit id '" + c1046c.getAdUnitId() + "'. Please check if you have a supported version of that SDK integrated into your project.");
        throw new IllegalStateException("Could not find adapter for provided ad");
    }

    /* renamed from: a */
    public void m6741a(AbstractC1044a abstractC1044a) {
        this.f3763a.m5490ae().m5587a(abstractC1044a, "DID_LOAD");
        if (abstractC1044a.m6713d().endsWith("load")) {
            this.f3763a.m5490ae().m5588a(abstractC1044a);
        }
        long m6702o = abstractC1044a.m6702o();
        HashMap hashMap = new HashMap(1);
        hashMap.put("{LOAD_TIME_MS}", String.valueOf(m6702o));
        m6732a("load", hashMap, abstractC1044a);
    }

    /* renamed from: a */
    public void m6740a(AbstractC1044a abstractC1044a, AbstractC1078a.AbstractC1079a abstractC1079a) {
        this.f3763a.m5490ae().m5587a(abstractC1044a, "DID_CLICKED");
        this.f3763a.m5490ae().m5587a(abstractC1044a, "DID_CLICK");
        if (abstractC1044a.m6713d().endsWith("click")) {
            this.f3763a.m5490ae().m5588a(abstractC1044a);
            C1496j.m5025a((MaxAdRevenueListener) abstractC1079a, (MaxAd) abstractC1044a);
        }
        m6734a("mclick", abstractC1044a);
    }

    /* renamed from: a */
    public void m6739a(AbstractC1044a abstractC1044a, MaxError maxError, MaxAdListener maxAdListener) {
        m6735a(maxError, abstractC1044a);
        destroyAd(abstractC1044a);
        C1496j.m5027a(maxAdListener, abstractC1044a.getAdUnitId(), maxError);
    }

    /* renamed from: a */
    public void m6737a(C1046c c1046c, AbstractC1078a.AbstractC1079a abstractC1079a) {
        this.f3763a.m5492ac().m5137a(false);
        m6736a(c1046c, (MaxAdListener) abstractC1079a);
        this.f3764b.m5116b("MediationService", "Scheduling impression for ad manually...");
        processRawAdImpressionPostback(c1046c, abstractC1079a);
    }

    /* renamed from: a */
    private void m6736a(final C1046c c1046c, final MaxAdListener maxAdListener) {
        final long longValue = ((Long) this.f3763a.m5511a(C1313a.f4670E)).longValue();
        if (longValue <= 0) {
            return;
        }
        AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.mediation.MediationServiceImpl.4
            @Override // java.lang.Runnable
            public void run() {
                if (c1046c.m6698s().get()) {
                    return;
                }
                StringBuilder m8752j = C0082b.m8752j("Ad (");
                m8752j.append(c1046c.m6652P());
                m8752j.append(") has not been displayed after ");
                m8752j.append(longValue);
                m8752j.append("ms. Failing ad display...");
                String sb = m8752j.toString();
                C1479t.m5107i("MediationService", sb);
                MediationServiceImpl.this.m6728b(c1046c, new MaxErrorImpl(-1, sb), maxAdListener);
                MediationServiceImpl.this.f3763a.m5492ac().m5134b(c1046c);
                MediationServiceImpl.this.f3763a.m5486ai().m5442a();
            }
        }, longValue);
    }

    /* renamed from: a */
    private void m6735a(MaxError maxError, AbstractC1044a abstractC1044a) {
        long m6702o = abstractC1044a.m6702o();
        HashMap hashMap = new HashMap(1);
        hashMap.put("{LOAD_TIME_MS}", String.valueOf(m6702o));
        m6731a("mlerr", hashMap, maxError, abstractC1044a);
    }

    /* renamed from: a */
    private void m6734a(String str, C1049f c1049f) {
        m6731a(str, Collections.EMPTY_MAP, (MaxError) null, c1049f);
    }

    /* renamed from: a */
    public void m6733a(String str, C1052h c1052h, C1191g c1191g) {
        HashMap hashMap = new HashMap(2);
        Utils.putObjectForStringIfValid("{ADAPTER_VERSION}", c1191g.m6129i(), hashMap);
        Utils.putObjectForStringIfValid("{SDK_VERSION}", c1191g.m6131h(), hashMap);
        m6731a("serr", hashMap, new MaxErrorImpl(str), c1052h);
    }

    /* renamed from: a */
    private void m6732a(String str, Map<String, String> map, C1049f c1049f) {
        m6731a(str, map, (MaxError) null, c1049f);
    }

    /* renamed from: a */
    private void m6731a(String str, Map<String, String> map, MaxError maxError, C1049f c1049f) {
        HashMap hashMap = new HashMap(map);
        hashMap.put("{PLACEMENT}", StringUtils.emptyIfNull(c1049f.getPlacement()));
        hashMap.put("{CUSTOM_DATA}", StringUtils.emptyIfNull(c1049f.m6632ab()));
        if (c1049f instanceof AbstractC1044a) {
            hashMap.put("{CREATIVE_ID}", StringUtils.emptyIfNull(((AbstractC1044a) c1049f).getCreativeId()));
        }
        this.f3763a.m5525R().m5653a(new C1093d(str, hashMap, maxError, c1049f, this.f3763a), C1362o.EnumC1364a.MEDIATION_POSTBACKS);
    }

    /* renamed from: b */
    public void m6728b(AbstractC1044a abstractC1044a, MaxError maxError, MaxAdListener maxAdListener) {
        this.f3763a.m5490ae().m5587a(abstractC1044a, "DID_FAIL_DISPLAY");
        processAdDisplayErrorPostback(maxError, abstractC1044a);
        if (abstractC1044a.m6698s().compareAndSet(false, true)) {
            C1496j.m5032a(maxAdListener, abstractC1044a, maxError);
        }
    }

    /* renamed from: b */
    public void m6727b(C1046c c1046c) {
        if (c1046c.getFormat() == MaxAdFormat.REWARDED || c1046c.getFormat() == MaxAdFormat.REWARDED_INTERSTITIAL) {
            this.f3763a.m5525R().m5653a(new C1101g(c1046c, this.f3763a), C1362o.EnumC1364a.MEDIATION_REWARD);
        }
    }

    public void collectSignal(MaxAdFormat maxAdFormat, final C1052h c1052h, Context context, final C1050g.AbstractC1051a abstractC1051a) {
        String str;
        StringBuilder sb;
        String str2;
        C1479t c1479t;
        if (c1052h != null) {
            if (context == null) {
                throw new IllegalArgumentException("No context specified");
            }
            if (abstractC1051a == null) {
                throw new IllegalArgumentException("No callback specified");
            }
            final C1191g m6171a = this.f3763a.m5541B().m6171a(c1052h, true);
            if (m6171a != null) {
                Activity m5483al = context instanceof Activity ? (Activity) context : this.f3763a.m5483al();
                MaxAdapterParametersImpl m6749a = MaxAdapterParametersImpl.m6749a(c1052h, maxAdFormat);
                if (((Boolean) this.f3763a.m5511a(C1313a.f4683R)).booleanValue()) {
                    this.f3763a.m5540C().m6180a(c1052h, m5483al);
                }
                MaxSignalCollectionListener maxSignalCollectionListener = new MaxSignalCollectionListener() { // from class: com.applovin.impl.mediation.MediationServiceImpl.3
                    @Override // com.applovin.mediation.adapter.listeners.MaxSignalCollectionListener
                    public void onSignalCollected(String str3) {
                        abstractC1051a.mo6518a(C1050g.m6616a(c1052h, m6171a, str3));
                        m6171a.m6127j();
                    }

                    @Override // com.applovin.mediation.adapter.listeners.MaxSignalCollectionListener
                    public void onSignalCollectionFailed(String str3) {
                        MediationServiceImpl.this.m6733a(str3, c1052h, m6171a);
                        abstractC1051a.mo6518a(C1050g.m6613b(c1052h, m6171a, str3));
                        m6171a.m6127j();
                    }
                };
                if (!c1052h.m6609a()) {
                    c1479t = this.f3764b;
                    sb = new StringBuilder();
                    str2 = "Collecting signal for adapter: ";
                } else if (this.f3763a.m5540C().m6182a(c1052h)) {
                    c1479t = this.f3764b;
                    sb = new StringBuilder();
                    str2 = "Collecting signal for now-initialized adapter: ";
                } else {
                    C1479t c1479t2 = this.f3764b;
                    StringBuilder m8752j = C0082b.m8752j("Skip collecting signal for not-initialized adapter: ");
                    m8752j.append(m6171a.m6139d());
                    c1479t2.m5111e("MediationService", m8752j.toString());
                    str = "Adapter not initialized yet";
                }
                sb.append(str2);
                sb.append(m6171a.m6139d());
                c1479t.m5116b("MediationService", sb.toString());
                m6171a.m6154a(m6749a, c1052h, m5483al, maxSignalCollectionListener);
                return;
            }
            str = "Could not load adapter";
            abstractC1051a.mo6518a(C1050g.m6615a(c1052h, str));
            return;
        }
        throw new IllegalArgumentException("No spec specified");
    }

    public void destroyAd(MaxAd maxAd) {
        if (!(maxAd instanceof AbstractC1044a)) {
            return;
        }
        C1479t c1479t = this.f3764b;
        c1479t.m5114c("MediationService", "Destroying " + maxAd);
        AbstractC1044a abstractC1044a = (AbstractC1044a) maxAd;
        C1191g m6710g = abstractC1044a.m6710g();
        if (m6710g == null) {
            return;
        }
        m6710g.m6127j();
        abstractC1044a.m6697t();
    }

    public JSONObject getAndResetCustomPostBodyData() {
        return this.f3765c.getAndSet(null);
    }

    public void loadAd(String str, String str2, MaxAdFormat maxAdFormat, Map<String, Object> map, C1469j c1469j, Context context, AbstractC1078a.AbstractC1079a abstractC1079a) {
        if (!TextUtils.isEmpty(str)) {
            if (context == null) {
                throw new IllegalArgumentException("No context specified");
            }
            if (abstractC1079a == null) {
                throw new IllegalArgumentException("No listener specified");
            }
            if (TextUtils.isEmpty(this.f3763a.m5450t())) {
                C1479t.m5107i("AppLovinSdk", "Mediation provider is null. Please set AppLovin SDK mediation provider via AppLovinSdk.getInstance(context).setMediationProvider()");
            }
            if (!this.f3763a.m5469d()) {
                C1479t.m5108h("AppLovinSdk", "Attempted to load ad before SDK initialization. Please wait until after the SDK has initialized, e.g. AppLovinSdk.initializeSdk(Context, SdkInitializationListener).");
            }
            this.f3763a.m5516a();
            if (str.length() != 16 && !str.startsWith("test_mode") && !this.f3763a.m5444z().startsWith("05TMD")) {
                C1479t.m5107i("MediationService", "Please double-check the ad unit " + str + " for " + maxAdFormat.getLabel() + " : " + Log.getStackTraceString(new Throwable("")));
            }
            if (!this.f3763a.m5503a(maxAdFormat)) {
                this.f3763a.m5535H().m6443a(str, str2, maxAdFormat, map, c1469j, context, abstractC1079a);
                return;
            }
            StringBuilder m8752j = C0082b.m8752j("Ad load failed due to disabled ad format ");
            m8752j.append(maxAdFormat.getLabel());
            C1479t.m5107i("MediationService", m8752j.toString());
            StringBuilder m8752j2 = C0082b.m8752j("Disabled ad format ");
            m8752j2.append(maxAdFormat.getLabel());
            C1496j.m5027a(abstractC1079a, str, new MaxErrorImpl(-1, m8752j2.toString()));
            return;
        }
        throw new IllegalArgumentException("No ad unit ID specified");
    }

    public void loadThirdPartyMediatedAd(String str, AbstractC1044a abstractC1044a, Activity activity, AbstractC1078a.AbstractC1079a abstractC1079a) {
        if (abstractC1044a != null) {
            if (activity == null) {
                throw new IllegalArgumentException("A valid Activity is required");
            }
            this.f3764b.m5116b("MediationService", "Loading " + abstractC1044a + "...");
            this.f3763a.m5490ae().m5587a(abstractC1044a, "WILL_LOAD");
            C1191g m6173a = this.f3763a.m5541B().m6173a(abstractC1044a);
            if (m6173a != null) {
                MaxAdapterParametersImpl m6751a = MaxAdapterParametersImpl.m6751a(abstractC1044a);
                if (((Boolean) this.f3763a.m5511a(C1313a.f4684S)).booleanValue()) {
                    this.f3763a.m5540C().m6180a(abstractC1044a, activity);
                }
                AbstractC1044a mo6669a = abstractC1044a.mo6669a(m6173a);
                m6173a.m6150a(str, mo6669a);
                mo6669a.m6701p();
                m6173a.m6148a(str, m6751a, mo6669a, activity, new C1040a(mo6669a, abstractC1079a));
                return;
            }
            String str2 = "Failed to load " + abstractC1044a + ": adapter not loaded";
            C1479t.m5107i("MediationService", str2);
            m6739a(abstractC1044a, new MaxErrorImpl(-5001, str2), abstractC1079a);
            return;
        }
        throw new IllegalArgumentException("No mediated ad specified");
    }

    @Override // com.applovin.impl.sdk.AppLovinBroadcastManager.Receiver
    public void onReceive(Context context, Intent intent, Map<String, Object> map) {
        if ("com.applovin.render_process_gone".equals(intent.getAction())) {
            Object m5133c = this.f3763a.m5492ac().m5133c();
            if (!(m5133c instanceof AbstractC1044a)) {
                return;
            }
            processAdDisplayErrorPostback(MaxAdapterError.WEBVIEW_ERROR, (AbstractC1044a) m5133c);
        }
    }

    public void processAdDisplayErrorPostback(MaxError maxError, AbstractC1044a abstractC1044a) {
        m6731a("mierr", Collections.EMPTY_MAP, maxError, abstractC1044a);
    }

    public void processAdLossPostback(AbstractC1044a abstractC1044a, Float f) {
        String f2 = f != null ? f.toString() : "";
        HashMap hashMap = new HashMap(1);
        hashMap.put("{MBR}", f2);
        m6732a("mloss", hashMap, abstractC1044a);
    }

    public void processAdapterInitializationPostback(C1049f c1049f, long j, MaxAdapter.InitializationStatus initializationStatus, String str) {
        HashMap hashMap = new HashMap(3);
        hashMap.put("{INIT_STATUS}", String.valueOf(initializationStatus.getCode()));
        hashMap.put("{INIT_TIME_MS}", String.valueOf(j));
        m6731a("minit", hashMap, new MaxErrorImpl(str), c1049f);
    }

    public void processCallbackAdImpressionPostback(AbstractC1044a abstractC1044a, AbstractC1078a.AbstractC1079a abstractC1079a) {
        if (abstractC1044a.m6713d().endsWith("cimp")) {
            this.f3763a.m5490ae().m5588a(abstractC1044a);
            C1496j.m5025a((MaxAdRevenueListener) abstractC1079a, (MaxAd) abstractC1044a);
        }
        m6734a("mcimp", abstractC1044a);
    }

    public void processRawAdImpressionPostback(AbstractC1044a abstractC1044a, AbstractC1078a.AbstractC1079a abstractC1079a) {
        this.f3763a.m5490ae().m5587a(abstractC1044a, "WILL_DISPLAY");
        if (abstractC1044a.m6713d().endsWith("mimp")) {
            this.f3763a.m5490ae().m5588a(abstractC1044a);
            C1496j.m5025a((MaxAdRevenueListener) abstractC1079a, (MaxAd) abstractC1044a);
        }
        HashMap hashMap = new HashMap(1);
        if (abstractC1044a instanceof C1046c) {
            hashMap.put("{TIME_TO_SHOW_MS}", String.valueOf(((C1046c) abstractC1044a).m6671y()));
        }
        m6732a("mimp", hashMap, abstractC1044a);
    }

    public void processViewabilityAdImpressionPostback(AbstractC1048e abstractC1048e, long j, AbstractC1078a.AbstractC1079a abstractC1079a) {
        if (abstractC1048e.m6713d().endsWith("vimp")) {
            this.f3763a.m5490ae().m5588a(abstractC1048e);
            C1496j.m5025a((MaxAdRevenueListener) abstractC1079a, (MaxAd) abstractC1048e);
        }
        HashMap hashMap = new HashMap(2);
        hashMap.put("{VIEWABILITY_FLAGS}", String.valueOf(j));
        hashMap.put("{USED_VIEWABILITY_TIMER}", String.valueOf(abstractC1048e.m6658G()));
        m6732a("mvimp", hashMap, abstractC1048e);
    }

    public void setCustomPostBodyData(JSONObject jSONObject) {
        this.f3765c.set(jSONObject);
    }

    public void showFullscreenAd(final C1046c c1046c, final Activity activity, final AbstractC1078a.AbstractC1079a abstractC1079a) {
        if (c1046c != null) {
            if (activity == null) {
                throw new IllegalArgumentException("No activity specified");
            }
            this.f3763a.m5492ac().m5137a(true);
            final C1191g m6738a = m6738a(c1046c);
            long m6670z = c1046c.m6670z();
            C1479t c1479t = this.f3764b;
            StringBuilder m8752j = C0082b.m8752j("Showing ad ");
            m8752j.append(c1046c.getAdUnitId());
            m8752j.append(" with delay of ");
            m8752j.append(m6670z);
            m8752j.append("ms...");
            c1479t.m5114c("MediationService", m8752j.toString());
            AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.mediation.MediationServiceImpl.1
                @Override // java.lang.Runnable
                public void run() {
                    MediationServiceImpl.this.m6727b(c1046c);
                    m6738a.m6164a(c1046c, activity);
                    MediationServiceImpl.this.m6737a(c1046c, abstractC1079a);
                }
            }, m6670z);
            return;
        }
        throw new IllegalArgumentException("No ad specified");
    }

    public void showFullscreenAd(final C1046c c1046c, final ViewGroup viewGroup, final AbstractC0516f abstractC0516f, final Activity activity, final AbstractC1078a.AbstractC1079a abstractC1079a) {
        if (c1046c != null) {
            if (activity == null) {
                throw new IllegalArgumentException("No activity specified");
            }
            this.f3763a.m5492ac().m5137a(true);
            final C1191g m6738a = m6738a(c1046c);
            long m6670z = c1046c.m6670z();
            C1479t c1479t = this.f3764b;
            StringBuilder m8752j = C0082b.m8752j("Showing ad ");
            m8752j.append(c1046c.getAdUnitId());
            m8752j.append(" with delay of ");
            m8752j.append(m6670z);
            m8752j.append("ms...");
            c1479t.m5114c("MediationService", m8752j.toString());
            AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.mediation.MediationServiceImpl.2
                @Override // java.lang.Runnable
                public void run() {
                    MediationServiceImpl.this.m6727b(c1046c);
                    m6738a.m6163a(c1046c, viewGroup, abstractC0516f, activity);
                    MediationServiceImpl.this.m6737a(c1046c, abstractC1079a);
                }
            }, m6670z);
            return;
        }
        throw new IllegalArgumentException("No ad specified");
    }
}
