package com.applovin.impl.mediation;

import android.app.Activity;
import android.text.TextUtils;
import com.applovin.impl.sdk.p491d.C7048s;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxAdListener;
import com.applovin.mediation.MaxAdViewAdListener;
import com.applovin.mediation.MaxErrorCodes;
import com.applovin.mediation.MaxReward;
import com.applovin.mediation.MaxRewardedAdListener;
import com.applovin.mediation.adapter.MaxAdapter;
import com.applovin.mediation.adapter.listeners.MaxSignalCollectionListener;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import p131c.p135b.p136a.p143d.AbstractC2171f;
import p131c.p135b.p136a.p143d.C2135c;
import p131c.p135b.p136a.p143d.C2145d;
import p131c.p135b.p136a.p143d.C2172g;
import p131c.p135b.p136a.p143d.C2173h;
import p131c.p135b.p136a.p143d.C2178k;
import p131c.p135b.p136a.p143d.p147e.C2168c;
import p131c.p135b.p136a.p148e.C2341l;
import p131c.p135b.p136a.p148e.C2374t;
import p131c.p135b.p136a.p148e.p153y.C2391j;
/* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/MediationServiceImpl.class */
public class MediationServiceImpl {

    /* renamed from: a */
    public final C2341l f21396a;

    /* renamed from: b */
    public final C2374t f21397b;

    /* renamed from: com.applovin.impl.mediation.MediationServiceImpl$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/MediationServiceImpl$a.class */
    public class RunnableC6969a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ MaxAdListener f21398a;

        /* renamed from: b */
        public final /* synthetic */ C2135c.C2139d f21399b;

        public RunnableC6969a(MediationServiceImpl mediationServiceImpl, MaxAdListener maxAdListener, C2135c.C2139d dVar) {
            this.f21398a = maxAdListener;
            this.f21399b = dVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f21398a.onAdLoaded(this.f21399b);
        }
    }

    /* renamed from: com.applovin.impl.mediation.MediationServiceImpl$b */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/MediationServiceImpl$b.class */
    public class C6970b implements C2145d.C2150d.AbstractC2154c {

        /* renamed from: a */
        public final /* synthetic */ C2173h f21400a;

        /* renamed from: b */
        public final /* synthetic */ String f21401b;

        /* renamed from: c */
        public final /* synthetic */ MaxAdFormat f21402c;

        /* renamed from: d */
        public final /* synthetic */ Activity f21403d;

        /* renamed from: e */
        public final /* synthetic */ MaxAdListener f21404e;

        public C6970b(C2173h hVar, String str, MaxAdFormat maxAdFormat, Activity activity, MaxAdListener maxAdListener) {
            this.f21400a = hVar;
            this.f21401b = str;
            this.f21402c = maxAdFormat;
            this.f21403d = activity;
            this.f21404e = maxAdListener;
        }

        @Override // p131c.p135b.p136a.p143d.C2145d.C2150d.AbstractC2154c
        /* renamed from: a */
        public void mo19185a(JSONArray jSONArray) {
            C2173h hVar = this.f21400a;
            if (hVar == null) {
                hVar = new C2173h.C2175b().m30800a();
            }
            MediationServiceImpl.this.f21396a.m30249j().m18827a(new C2145d.C2155e(this.f21401b, this.f21402c, hVar, jSONArray, this.f21403d, MediationServiceImpl.this.f21396a, this.f21404e));
        }
    }

    /* renamed from: com.applovin.impl.mediation.MediationServiceImpl$c */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/MediationServiceImpl$c.class */
    public class RunnableC6971c implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ C2135c.C2139d f21406a;

        /* renamed from: b */
        public final /* synthetic */ C2178k f21407b;

        /* renamed from: c */
        public final /* synthetic */ Activity f21408c;

        public RunnableC6971c(C2135c.C2139d dVar, C2178k kVar, Activity activity) {
            this.f21406a = dVar;
            this.f21407b = kVar;
            this.f21408c = activity;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f21406a.getFormat() == MaxAdFormat.REWARDED) {
                MediationServiceImpl.this.f21396a.m30249j().m18826a(new C2145d.C2165j(this.f21406a, MediationServiceImpl.this.f21396a), C7048s.EnumC7049a.MEDIATION_REWARD);
            }
            this.f21407b.m30783a(this.f21406a, this.f21408c);
            MediationServiceImpl.this.f21396a.m30235x().m30057a(false);
            MediationServiceImpl.this.f21397b.m30044b("MediationService", "Scheduling impression for ad manually...");
            MediationServiceImpl.this.maybeScheduleRawAdImpressionPostback(this.f21406a);
        }
    }

    /* renamed from: com.applovin.impl.mediation.MediationServiceImpl$d */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/MediationServiceImpl$d.class */
    public class C6972d implements MaxSignalCollectionListener {

        /* renamed from: a */
        public final /* synthetic */ C2135c.C2142g.AbstractC2143a f21410a;

        /* renamed from: b */
        public final /* synthetic */ C2135c.C2144h f21411b;

        /* renamed from: c */
        public final /* synthetic */ C2178k f21412c;

        public C6972d(C2135c.C2142g.AbstractC2143a aVar, C2135c.C2144h hVar, C2178k kVar) {
            this.f21410a = aVar;
            this.f21411b = hVar;
            this.f21412c = kVar;
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxSignalCollectionListener
        public void onSignalCollected(String str) {
            this.f21410a.mo30860a(C2135c.C2142g.m30889a(this.f21411b, this.f21412c, str));
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxSignalCollectionListener
        public void onSignalCollectionFailed(String str) {
            MediationServiceImpl.this.m19194a(str, this.f21411b);
            this.f21410a.mo30860a(C2135c.C2142g.m30886b(this.f21411b, this.f21412c, str));
        }
    }

    /* renamed from: com.applovin.impl.mediation.MediationServiceImpl$e */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/MediationServiceImpl$e.class */
    public class C6973e implements AbstractC2171f, MaxAdViewAdListener, MaxRewardedAdListener {

        /* renamed from: a */
        public final C2135c.AbstractC2137b f21414a;

        /* renamed from: b */
        public final MaxAdListener f21415b;

        /* renamed from: com.applovin.impl.mediation.MediationServiceImpl$e$a */
        /* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/MediationServiceImpl$e$a.class */
        public class RunnableC6974a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ MaxAd f21417a;

            public RunnableC6974a(MaxAd maxAd) {
                this.f21417a = maxAd;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (this.f21417a.getFormat() == MaxAdFormat.INTERSTITIAL || this.f21417a.getFormat() == MaxAdFormat.REWARDED) {
                    MediationServiceImpl.this.f21396a.m30235x().m30054b(this.f21417a);
                }
                C2391j.m29885c(C6973e.this.f21415b, this.f21417a);
            }
        }

        public C6973e(C2135c.AbstractC2137b bVar, MaxAdListener maxAdListener) {
            this.f21414a = bVar;
            this.f21415b = maxAdListener;
        }

        public /* synthetic */ C6973e(MediationServiceImpl mediationServiceImpl, C2135c.AbstractC2137b bVar, MaxAdListener maxAdListener, RunnableC6969a aVar) {
            this(bVar, maxAdListener);
        }

        @Override // p131c.p135b.p136a.p143d.AbstractC2171f
        /* renamed from: a */
        public void mo19183a(MaxAd maxAd, C2172g gVar) {
            MediationServiceImpl.this.m19190b(this.f21414a, gVar, this.f21415b);
            if (maxAd.getFormat() == MaxAdFormat.REWARDED && (maxAd instanceof C2135c.C2139d)) {
                ((C2135c.C2139d) maxAd).m30933P();
            }
        }

        @Override // p131c.p135b.p136a.p143d.AbstractC2171f
        /* renamed from: a */
        public void mo19182a(String str, C2172g gVar) {
            this.f21414a.m30964t();
            MediationServiceImpl.this.m19201a(this.f21414a, gVar, this.f21415b);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdClicked(MaxAd maxAd) {
            MediationServiceImpl.this.f21396a.m30320B().m30357a((C2135c.AbstractC2137b) maxAd, "DID_CLICKED");
            MediationServiceImpl.this.m19186c(this.f21414a);
            C2391j.m29883d(this.f21415b, maxAd);
        }

        @Override // com.applovin.mediation.MaxAdViewAdListener
        public void onAdCollapsed(MaxAd maxAd) {
            C2391j.m29879h(this.f21415b, maxAd);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdDisplayFailed(MaxAd maxAd, int i) {
            MediationServiceImpl.this.m19190b(this.f21414a, new C2172g(i), this.f21415b);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdDisplayed(MaxAd maxAd) {
            MediationServiceImpl.this.f21397b.m30044b("MediationService", "Scheduling impression for ad via callback...");
            MediationServiceImpl.this.maybeScheduleCallbackAdImpressionPostback(this.f21414a);
            if (maxAd.getFormat() == MaxAdFormat.INTERSTITIAL || maxAd.getFormat() == MaxAdFormat.REWARDED) {
                MediationServiceImpl.this.f21396a.m30235x().m30058a(maxAd);
            }
            C2391j.m29890b(this.f21415b, maxAd);
        }

        @Override // com.applovin.mediation.MaxAdViewAdListener
        public void onAdExpanded(MaxAd maxAd) {
            C2391j.m29880g(this.f21415b, maxAd);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdHidden(MaxAd maxAd) {
            MediationServiceImpl.this.f21396a.m30320B().m30357a((C2135c.AbstractC2137b) maxAd, "DID_HIDE");
            AppLovinSdkUtils.runOnUiThreadDelayed(new RunnableC6974a(maxAd), maxAd instanceof C2135c.C2139d ? ((C2135c.C2139d) maxAd).m30937L() : 0L);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoadFailed(String str, int i) {
            this.f21414a.m30964t();
            MediationServiceImpl.this.m19201a(this.f21414a, new C2172g(i), this.f21415b);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoaded(MaxAd maxAd) {
            this.f21414a.m30964t();
            MediationServiceImpl.this.m19191b(this.f21414a);
            C2391j.m29905a(this.f21415b, maxAd);
        }

        @Override // com.applovin.mediation.MaxRewardedAdListener
        public void onRewardedVideoCompleted(MaxAd maxAd) {
            C2391j.m29881f(this.f21415b, maxAd);
        }

        @Override // com.applovin.mediation.MaxRewardedAdListener
        public void onRewardedVideoStarted(MaxAd maxAd) {
            C2391j.m29882e(this.f21415b, maxAd);
        }

        @Override // com.applovin.mediation.MaxRewardedAdListener
        public void onUserRewarded(MaxAd maxAd, MaxReward maxReward) {
            C2391j.m29903a(this.f21415b, maxAd, maxReward);
            MediationServiceImpl.this.f21396a.m30249j().m18826a(new C2145d.C2164i((C2135c.C2139d) maxAd, MediationServiceImpl.this.f21396a), C7048s.EnumC7049a.MEDIATION_REWARD);
        }
    }

    public MediationServiceImpl(C2341l lVar) {
        this.f21396a = lVar;
        this.f21397b = lVar.m30262d0();
    }

    /* renamed from: a */
    public final void m19202a(C2135c.AbstractC2137b bVar) {
        C2374t tVar = this.f21397b;
        tVar.m30044b("MediationService", "Firing ad preload postback for " + bVar.m30902d());
        m19195a("mpreload", bVar);
    }

    /* renamed from: a */
    public final void m19201a(C2135c.AbstractC2137b bVar, C2172g gVar, MaxAdListener maxAdListener) {
        m19200a(gVar, bVar);
        destroyAd(bVar);
        C2391j.m29902a(maxAdListener, bVar.getAdUnitId(), gVar.getErrorCode());
    }

    /* renamed from: a */
    public final void m19200a(C2172g gVar, C2135c.AbstractC2137b bVar) {
        long q = bVar.m30967q();
        C2374t tVar = this.f21397b;
        tVar.m30044b("MediationService", "Firing ad load failure postback with load time: " + q);
        HashMap hashMap = new HashMap(1);
        hashMap.put("{LOAD_TIME_MS}", String.valueOf(q));
        m19192a("mlerr", hashMap, gVar, bVar);
    }

    /* renamed from: a */
    public final void m19195a(String str, C2135c.C2141f fVar) {
        m19192a(str, Collections.EMPTY_MAP, (C2172g) null, fVar);
    }

    /* renamed from: a */
    public final void m19194a(String str, C2135c.C2144h hVar) {
        m19192a("serr", Collections.EMPTY_MAP, new C2172g(str), hVar);
    }

    /* renamed from: a */
    public final void m19193a(String str, Map<String, String> map, C2135c.C2141f fVar) {
        m19192a(str, map, (C2172g) null, fVar);
    }

    /* renamed from: a */
    public final void m19192a(String str, Map<String, String> map, C2172g gVar, C2135c.C2141f fVar) {
        HashMap hashMap = new HashMap(map);
        String str2 = "";
        hashMap.put("{PLACEMENT}", fVar.m30892k() != null ? fVar.m30892k() : "");
        if (fVar instanceof C2135c.C2139d) {
            C2135c.C2139d dVar = (C2135c.C2139d) fVar;
            if (dVar.m30944E() != null) {
                str2 = dVar.m30944E();
            }
            hashMap.put("{PUBLISHER_AD_UNIT_ID}", str2);
        }
        this.f21396a.m30249j().m18826a(new C2145d.C2157f(str, hashMap, gVar, fVar, this.f21396a), C7048s.EnumC7049a.MEDIATION_POSTBACKS);
    }

    /* renamed from: b */
    public final void m19191b(C2135c.AbstractC2137b bVar) {
        long q = bVar.m30967q();
        C2374t tVar = this.f21397b;
        tVar.m30044b("MediationService", "Firing ad load success postback with load time: " + q);
        HashMap hashMap = new HashMap(1);
        hashMap.put("{LOAD_TIME_MS}", String.valueOf(q));
        m19193a("load", hashMap, bVar);
    }

    /* renamed from: b */
    public final void m19190b(C2135c.AbstractC2137b bVar, C2172g gVar, MaxAdListener maxAdListener) {
        this.f21396a.m30320B().m30357a(bVar, "DID_FAIL_DISPLAY");
        maybeScheduleAdDisplayErrorPostback(gVar, bVar);
        if (bVar.m30963u().compareAndSet(false, true)) {
            C2391j.m29904a(maxAdListener, bVar, gVar.getErrorCode());
        }
    }

    /* renamed from: c */
    public final void m19186c(C2135c.AbstractC2137b bVar) {
        m19195a("mclick", bVar);
    }

    public void collectSignal(MaxAdFormat maxAdFormat, C2135c.C2144h hVar, Activity activity, C2135c.C2142g.AbstractC2143a aVar) {
        String str;
        StringBuilder sb;
        C2374t tVar;
        String str2;
        if (hVar == null) {
            throw new IllegalArgumentException("No spec specified");
        } else if (activity == null) {
            throw new IllegalArgumentException("No activity specified");
        } else if (aVar != null) {
            C2178k a = this.f21396a.m30259e0().m30788a(hVar);
            if (a != null) {
                MaxAdapterParametersImpl a2 = MaxAdapterParametersImpl.m19203a(hVar, maxAdFormat, activity.getApplicationContext());
                a.m30777a(a2, activity);
                C6972d dVar = new C6972d(aVar, hVar, a);
                if (!hVar.mo30882l()) {
                    tVar = this.f21397b;
                    sb = new StringBuilder();
                    str2 = "Collecting signal for adapter: ";
                } else if (this.f21396a.m30256f0().m30794a(hVar)) {
                    tVar = this.f21397b;
                    sb = new StringBuilder();
                    str2 = "Collecting signal for now-initialized adapter: ";
                } else {
                    C2374t tVar2 = this.f21397b;
                    tVar2.m30039e("MediationService", "Skip collecting signal for not-initialized adapter: " + a.m30770b());
                    str = "Adapter not initialized yet";
                }
                sb.append(str2);
                sb.append(a.m30770b());
                tVar.m30044b("MediationService", sb.toString());
                a.m30776a(a2, hVar, activity, dVar);
                return;
            }
            str = "Could not load adapter";
            aVar.mo30860a(C2135c.C2142g.m30888a(hVar, str));
        } else {
            throw new IllegalArgumentException("No callback specified");
        }
    }

    public void destroyAd(MaxAd maxAd) {
        if (maxAd instanceof C2135c.AbstractC2137b) {
            C2374t tVar = this.f21397b;
            tVar.m30042c("MediationService", "Destroying " + maxAd);
            C2135c.AbstractC2137b bVar = (C2135c.AbstractC2137b) maxAd;
            C2178k n = bVar.m30970n();
            if (n != null) {
                n.m30758g();
                bVar.m30962v();
            }
        }
    }

    public void loadAd(String str, MaxAdFormat maxAdFormat, C2173h hVar, boolean z, Activity activity, MaxAdListener maxAdListener) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("No ad unit ID specified");
        } else if (activity == null) {
            throw new IllegalArgumentException("No activity specified");
        } else if (maxAdListener != null) {
            if (!this.f21396a.m30310L()) {
                C2374t.m30035i(AppLovinSdk.TAG, "Attempted to load ad before SDK initialization. Please wait until after the SDK has initialized, e.g. AppLovinSdk.initializeSdk(Context, SdkInitializationListener).");
            }
            this.f21396a.m30233z();
            C2135c.C2139d a = this.f21396a.m30276b().m30733a(maxAdFormat);
            if (a != null) {
                AppLovinSdkUtils.runOnUiThreadDelayed(new RunnableC6969a(this, maxAdListener, a), a.m30946C());
            }
            this.f21396a.m30249j().m18826a(new C2145d.C2150d(maxAdFormat, z, activity, this.f21396a, new C6970b(hVar, str, maxAdFormat, activity, maxAdListener)), C2168c.m30808a(maxAdFormat));
        } else {
            throw new IllegalArgumentException("No listener specified");
        }
    }

    public void loadThirdPartyMediatedAd(String str, C2135c.AbstractC2137b bVar, Activity activity, MaxAdListener maxAdListener) {
        if (bVar == null) {
            throw new IllegalArgumentException("No mediated ad specified");
        } else if (activity != null) {
            C2374t tVar = this.f21397b;
            tVar.m30044b("MediationService", "Loading " + bVar + "...");
            this.f21396a.m30320B().m30357a(bVar, "WILL_LOAD");
            m19202a(bVar);
            C2178k a = this.f21396a.m30259e0().m30788a(bVar);
            if (a != null) {
                MaxAdapterParametersImpl a2 = MaxAdapterParametersImpl.m19205a(bVar, activity.getApplicationContext());
                a.m30777a(a2, activity);
                C2135c.AbstractC2137b a3 = bVar.mo30927a(a);
                a.m30774a(str, a3);
                a3.m30966r();
                a.m30772a(str, a2, a3, activity, new C6973e(this, a3, maxAdListener, null));
                return;
            }
            C2374t tVar2 = this.f21397b;
            tVar2.m30040d("MediationService", "Failed to load " + bVar + ": adapter not loaded");
            m19201a(bVar, new C2172g((int) MaxErrorCodes.MEDIATION_ADAPTER_LOAD_FAILED), maxAdListener);
        } else {
            throw new IllegalArgumentException("A valid Activity is required");
        }
    }

    public void maybeScheduleAdDisplayErrorPostback(C2172g gVar, C2135c.AbstractC2137b bVar) {
        m19192a("mierr", Collections.EMPTY_MAP, gVar, bVar);
    }

    public void maybeScheduleAdapterInitializationPostback(C2135c.C2141f fVar, long j, MaxAdapter.InitializationStatus initializationStatus, String str) {
        HashMap hashMap = new HashMap(3);
        hashMap.put("{INIT_STATUS}", String.valueOf(initializationStatus.getCode()));
        hashMap.put("{INIT_TIME_MS}", String.valueOf(j));
        m19192a("minit", hashMap, new C2172g(str), fVar);
    }

    public void maybeScheduleCallbackAdImpressionPostback(C2135c.AbstractC2137b bVar) {
        m19195a("mcimp", bVar);
    }

    public void maybeScheduleRawAdImpressionPostback(C2135c.AbstractC2137b bVar) {
        this.f21396a.m30320B().m30357a(bVar, "WILL_DISPLAY");
        HashMap hashMap = new HashMap(1);
        if (bVar instanceof C2135c.C2139d) {
            hashMap.put("{TIME_TO_SHOW_MS}", String.valueOf(((C2135c.C2139d) bVar).m30939J()));
        }
        m19193a("mimp", hashMap, bVar);
    }

    public void maybeScheduleViewabilityAdImpressionPostback(C2135c.C2138c cVar, long j) {
        HashMap hashMap = new HashMap(1);
        hashMap.put("{VIEWABILITY_FLAGS}", String.valueOf(j));
        hashMap.put("{USED_VIEWABILITY_TIMER}", String.valueOf(cVar.m30957E()));
        m19193a("mvimp", hashMap, cVar);
    }

    public void showFullscreenAd(MaxAd maxAd, String str, Activity activity) {
        if (maxAd == null) {
            throw new IllegalArgumentException("No ad specified");
        } else if (activity == null) {
            throw new IllegalArgumentException("No activity specified");
        } else if (maxAd instanceof C2135c.C2139d) {
            this.f21396a.m30235x().m30057a(true);
            C2135c.C2139d dVar = (C2135c.C2139d) maxAd;
            C2178k n = dVar.m30970n();
            if (n != null) {
                dVar.m30901d(str);
                long K = dVar.m30938K();
                C2374t tVar = this.f21397b;
                tVar.m30042c("MediationService", "Showing ad " + maxAd.getAdUnitId() + " with delay of " + K + "ms...");
                AppLovinSdkUtils.runOnUiThreadDelayed(new RunnableC6971c(dVar, n, activity), K);
                return;
            }
            this.f21396a.m30235x().m30057a(false);
            C2374t tVar2 = this.f21397b;
            tVar2.m30040d("MediationService", "Failed to show " + maxAd + ": adapter not found");
            C2374t.m30034j("MediationService", "There may be an integration problem with the adapter for ad unit id '" + dVar.getAdUnitId() + "'. Please check if you have a supported version of that SDK integrated into your project.");
            throw new IllegalStateException("Could not find adapter for provided ad");
        } else {
            C2374t.m30034j("MediationService", "Unable to show ad for '" + maxAd.getAdUnitId() + "': only REWARDED or INTERSTITIAL ads are eligible for showFullscreenAd(). " + maxAd.getFormat() + " ad was provided.");
            throw new IllegalArgumentException("Provided ad is not a MediatedFullscreenAd");
        }
    }
}
