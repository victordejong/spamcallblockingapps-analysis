package com.applovin.impl.mediation.p039b;

import android.app.Activity;
import android.content.Context;
import android.os.SystemClock;
import android.support.p012v4.media.C0082b;
import com.applovin.impl.mediation.MaxAdWaterfallInfoImpl;
import com.applovin.impl.mediation.MaxErrorImpl;
import com.applovin.impl.mediation.MaxMediatedNetworkInfoImpl;
import com.applovin.impl.mediation.MaxNetworkResponseInfoImpl;
import com.applovin.impl.mediation.ads.AbstractC1078a;
import com.applovin.impl.mediation.p038a.AbstractC1044a;
import com.applovin.impl.mediation.p040c.C1105a;
import com.applovin.impl.mediation.p040c.C1107c;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.p056d.C1328f;
import com.applovin.impl.sdk.p056d.C1329g;
import com.applovin.impl.sdk.p057e.AbstractRunnableC1331a;
import com.applovin.impl.sdk.utils.C1489e;
import com.applovin.impl.sdk.utils.C1496j;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxAdListener;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.MaxNetworkResponseInfo;
import com.applovin.sdk.AppLovinSdkUtils;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.applovin.impl.mediation.b.e */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/b/e.class */
public class C1095e extends AbstractRunnableC1331a {

    /* renamed from: a */
    private static final AtomicBoolean f3948a = new AtomicBoolean();

    /* renamed from: c */
    private final String f3949c;

    /* renamed from: d */
    private final MaxAdFormat f3950d;

    /* renamed from: e */
    private final JSONObject f3951e;

    /* renamed from: f */
    private final List<AbstractC1044a> f3952f;

    /* renamed from: g */
    private final AbstractC1078a.AbstractC1079a f3953g;

    /* renamed from: h */
    private final WeakReference<Context> f3954h;

    /* renamed from: i */
    private long f3955i;

    /* renamed from: j */
    private final List<MaxNetworkResponseInfo> f3956j;

    /* renamed from: com.applovin.impl.mediation.b.e$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/b/e$a.class */
    public class C1098a extends AbstractRunnableC1331a {

        /* renamed from: c */
        private final long f3961c = SystemClock.elapsedRealtime();

        /* renamed from: d */
        private final int f3962d;

        /* renamed from: e */
        private final AbstractC1044a f3963e;

        /* renamed from: f */
        private final List<AbstractC1044a> f3964f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C1098a(int i, List<AbstractC1044a> list) {
            super(r5.m5727e(), r5.f5113b);
            C1095e.this = r5;
            this.f3962d = i;
            this.f3963e = list.get(i);
            this.f3964f = list;
        }

        /* renamed from: a */
        public void m6480a(AbstractC1044a abstractC1044a, MaxNetworkResponseInfo.AdLoadState adLoadState, long j, MaxError maxError) {
            C1095e.this.f3956j.add(new MaxNetworkResponseInfoImpl(adLoadState, abstractC1044a.m6709h(), new MaxMediatedNetworkInfoImpl(C1107c.m6454a(abstractC1044a.m6654N(), this.f5113b)), j, maxError));
        }

        /* renamed from: e */
        public void m6470e(String str) {
        }

        @Override // java.lang.Runnable
        public void run() {
            StringBuilder m8752j = C0082b.m8752j("Loading ad ");
            m8752j.append(this.f3962d + 1);
            m8752j.append(" of ");
            m8752j.append(this.f3964f.size());
            m8752j.append(": ");
            m8752j.append(this.f3963e.m6653O());
            m5733a(m8752j.toString());
            m6470e("started to load ad");
            this.f5113b.m5539D().loadThirdPartyMediatedAd(C1095e.this.f3949c, this.f3963e, C1095e.this.f3954h.get() instanceof Activity ? (Activity) C1095e.this.f3954h.get() : this.f5113b.m5483al(), new C1105a(C1095e.this.f3953g) { // from class: com.applovin.impl.mediation.b.e.a.1
                @Override // com.applovin.impl.mediation.p040c.C1105a, com.applovin.mediation.MaxAdListener
                public void onAdLoadFailed(String str, MaxError maxError) {
                    long elapsedRealtime = SystemClock.elapsedRealtime() - C1098a.this.f3961c;
                    C1098a c1098a = C1098a.this;
                    c1098a.m5733a("Ad failed to load in " + elapsedRealtime + " ms with error: " + maxError);
                    C1098a c1098a2 = C1098a.this;
                    StringBuilder m8752j2 = C0082b.m8752j("failed to load ad: ");
                    m8752j2.append(maxError.getCode());
                    c1098a2.m6470e(m8752j2.toString());
                    C1098a c1098a3 = C1098a.this;
                    c1098a3.m6480a(c1098a3.f3963e, MaxNetworkResponseInfo.AdLoadState.FAILED_TO_LOAD, elapsedRealtime, maxError);
                    if (C1098a.this.f3962d >= C1098a.this.f3964f.size() - 1) {
                        C1095e.this.m6487a(new MaxErrorImpl(-5001, "MAX returned eligible ads from mediated networks, but all ads failed to load. Inspect getWaterfall() for more info."));
                        return;
                    }
                    C1098a c1098a4 = C1098a.this;
                    C1098a.this.f5113b.m5525R().m5653a(new C1098a(c1098a4.f3962d + 1, C1098a.this.f3964f), C1107c.m6456a(C1095e.this.f3950d));
                }

                @Override // com.applovin.impl.mediation.p040c.C1105a, com.applovin.mediation.MaxAdListener
                public void onAdLoaded(MaxAd maxAd) {
                    C1098a.this.m6470e("loaded ad");
                    long elapsedRealtime = SystemClock.elapsedRealtime() - C1098a.this.f3961c;
                    C1098a c1098a = C1098a.this;
                    c1098a.m5733a("Ad loaded in " + elapsedRealtime + "ms");
                    AbstractC1044a abstractC1044a = (AbstractC1044a) maxAd;
                    C1098a.this.m6480a(abstractC1044a, MaxNetworkResponseInfo.AdLoadState.AD_LOADED, elapsedRealtime, null);
                    int i = C1098a.this.f3962d;
                    while (true) {
                        i++;
                        if (i >= C1098a.this.f3964f.size()) {
                            C1095e.this.m6491a(abstractC1044a);
                            return;
                        } else {
                            C1098a c1098a2 = C1098a.this;
                            c1098a2.m6480a((AbstractC1044a) c1098a2.f3964f.get(i), MaxNetworkResponseInfo.AdLoadState.AD_LOAD_NOT_ATTEMPTED, -1L, null);
                        }
                    }
                }
            });
        }
    }

    public C1095e(String str, MaxAdFormat maxAdFormat, Map<String, Object> map, JSONObject jSONObject, Context context, C1408l c1408l, AbstractC1078a.AbstractC1079a abstractC1079a) {
        super("TaskProcessMediationWaterfall:" + str + ":" + maxAdFormat.getLabel(), c1408l);
        this.f3949c = str;
        this.f3950d = maxAdFormat;
        this.f3951e = jSONObject;
        this.f3953g = abstractC1079a;
        this.f3954h = new WeakReference<>(context);
        this.f3952f = new ArrayList(jSONObject.length());
        JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject, "ads", new JSONArray());
        for (int i = 0; i < jSONArray.length(); i++) {
            this.f3952f.add(AbstractC1044a.m6716a(map, JsonUtils.getJSONObject(jSONArray, i, (JSONObject) null), jSONObject, c1408l));
        }
        this.f3956j = new ArrayList(this.f3952f.size());
    }

    /* renamed from: a */
    public void m6491a(AbstractC1044a abstractC1044a) {
        this.f5113b.m5538E().m5105a(abstractC1044a);
        long elapsedRealtime = SystemClock.elapsedRealtime() - this.f3955i;
        m5731b("Waterfall loaded in " + elapsedRealtime + "ms for " + abstractC1044a.m6653O());
        abstractC1044a.m6718a(new MaxAdWaterfallInfoImpl(abstractC1044a, elapsedRealtime, this.f3956j));
        C1496j.m5033a((MaxAdListener) this.f3953g, (MaxAd) abstractC1044a);
    }

    /* renamed from: a */
    public void m6487a(MaxError maxError) {
        C1329g m5524S;
        C1328f c1328f;
        if (maxError.getCode() == 204) {
            m5524S = this.f5113b.m5524S();
            c1328f = C1328f.f5096p;
        } else if (maxError.getCode() == -5001) {
            m5524S = this.f5113b.m5524S();
            c1328f = C1328f.f5097q;
        } else {
            m5524S = this.f5113b.m5524S();
            c1328f = C1328f.f5098r;
        }
        m5524S.m5741a(c1328f);
        ArrayList arrayList = new ArrayList(this.f3956j.size());
        for (MaxNetworkResponseInfo maxNetworkResponseInfo : this.f3956j) {
            if (maxNetworkResponseInfo.getAdLoadState() == MaxNetworkResponseInfo.AdLoadState.FAILED_TO_LOAD) {
                arrayList.add(maxNetworkResponseInfo);
            }
        }
        if (arrayList.size() > 0) {
            StringBuilder sb = new StringBuilder("======FAILED AD LOADS======");
            sb.append("\n");
            int i = 0;
            while (i < arrayList.size()) {
                MaxNetworkResponseInfo maxNetworkResponseInfo2 = (MaxNetworkResponseInfo) arrayList.get(i);
                i++;
                sb.append(i);
                sb.append(") ");
                sb.append(maxNetworkResponseInfo2.getMediatedNetwork().getName());
                sb.append("\n");
                sb.append("..code: ");
                sb.append(maxNetworkResponseInfo2.getError().getCode());
                sb.append("\n");
                sb.append("..message: ");
                sb.append(maxNetworkResponseInfo2.getError().getMessage());
                sb.append("\n");
            }
            ((MaxErrorImpl) maxError).setAdLoadFailureInfo(sb.toString());
        }
        long elapsedRealtime = SystemClock.elapsedRealtime() - this.f3955i;
        m5731b("Waterfall failed in " + elapsedRealtime + "ms with error: " + maxError);
        ((MaxErrorImpl) maxError).setWaterfall(new MaxAdWaterfallInfoImpl(null, JsonUtils.getString(this.f3951e, "waterfall_name", ""), JsonUtils.getString(this.f3951e, "waterfall_test_name", ""), elapsedRealtime, this.f3956j));
        C1496j.m5027a(this.f3953g, this.f3949c, maxError);
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f3955i = SystemClock.elapsedRealtime();
        if (this.f3951e.optBoolean("is_testing", false) && !this.f5113b.m5534I().m6192a() && f3948a.compareAndSet(false, true)) {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.mediation.b.e.1
                @Override // java.lang.Runnable
                public void run() {
                    Utils.showAlert("MAX SDK Not Initialized In Test Mode", "Test ads may not load. Please force close and restart the app if you experience issues.", C1095e.this.f5113b.m5483al());
                }
            });
        }
        if (this.f3952f.size() > 0) {
            StringBuilder m8752j = C0082b.m8752j("Starting waterfall for ");
            m8752j.append(this.f3952f.size());
            m8752j.append(" ad(s)...");
            m5733a(m8752j.toString());
            this.f5113b.m5525R().m5654a(new C1098a(0, this.f3952f));
            return;
        }
        m5730c("No ads were returned from the server");
        Utils.maybeHandleNoFillResponseForPublisher(this.f3949c, this.f3950d, this.f3951e, this.f5113b);
        JSONObject jSONObject = JsonUtils.getJSONObject(this.f3951e, "settings", new JSONObject());
        long j = JsonUtils.getLong(jSONObject, "alfdcs", 0L);
        final MaxErrorImpl maxErrorImpl = new MaxErrorImpl(204, "MAX returned no eligible ads from any mediated networks for this app/device.");
        if (j <= 0) {
            m6487a(maxErrorImpl);
            return;
        }
        long millis = TimeUnit.SECONDS.toMillis(j);
        Runnable runnable = new Runnable() { // from class: com.applovin.impl.mediation.b.e.2
            @Override // java.lang.Runnable
            public void run() {
                C1095e.this.m6487a(maxErrorImpl);
            }
        };
        if (JsonUtils.getBoolean(jSONObject, "alfdcs_iba", Boolean.FALSE).booleanValue()) {
            C1489e.m5079a(millis, this.f5113b, runnable);
        } else {
            AppLovinSdkUtils.runOnUiThreadDelayed(runnable, millis);
        }
    }
}
