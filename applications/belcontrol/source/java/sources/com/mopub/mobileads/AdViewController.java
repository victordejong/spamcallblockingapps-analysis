package com.mopub.mobileads;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Point;
import android.location.Location;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import com.mopub.common.AdFormat;
import com.mopub.common.AdUrlGenerator;
import com.mopub.common.Constants;
import com.mopub.common.DataKeys;
import com.mopub.common.LocationService;
import com.mopub.common.MoPub;
import com.mopub.common.MoPubReward;
import com.mopub.common.Preconditions;
import com.mopub.common.ViewabilityVendor;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.DeviceUtils;
import com.mopub.common.util.Dips;
import com.mopub.common.util.Reflection;
import com.mopub.common.util.Utils;
import com.mopub.mobileads.AdData;
import com.mopub.mobileads.AdLifecycleListener;
import com.mopub.network.AdLoader;
import com.mopub.network.AdResponse;
import com.mopub.network.MoPubNetworkError;
import com.mopub.network.SingleImpression;
import com.mopub.network.TrackingRequest;
import com.mopub.volley.NetworkResponse;
import com.mopub.volley.Request;
import com.mopub.volley.VolleyError;
import java.lang.reflect.Constructor;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.WeakHashMap;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/AdViewController.class */
public class AdViewController implements AdLifecycleListener.LoadListener, AdLifecycleListener.InteractionListener {

    /* renamed from: F */
    public static final FrameLayout.LayoutParams f4597F = new FrameLayout.LayoutParams(-2, -2, 17);

    /* renamed from: G */
    public static final WeakHashMap<View, Boolean> f4598G = new WeakHashMap<>();

    /* renamed from: A */
    public String f4599A;

    /* renamed from: E */
    public long f4603E;

    /* renamed from: b */
    public Context f4605b;

    /* renamed from: c */
    public MoPubAd f4606c;

    /* renamed from: d */
    public WebViewAdUrlGenerator f4607d;

    /* renamed from: f */
    public Request f4608f;

    /* renamed from: g */
    public AdLoader f4609g;

    /* renamed from: j */
    public AdResponse f4611j;

    /* renamed from: k */
    public String f4612k;

    /* renamed from: m */
    public boolean f4614m;

    /* renamed from: o */
    public boolean f4616o;

    /* renamed from: t */
    public String f4621t;

    /* renamed from: u */
    public String f4622u;

    /* renamed from: v */
    public Point f4623v;

    /* renamed from: w */
    public WindowInsets f4624w;

    /* renamed from: x */
    public boolean f4625x;

    /* renamed from: y */
    public boolean f4626y;

    /* renamed from: z */
    public AdAdapter f4627z;
    @VisibleForTesting

    /* renamed from: p */
    public int f4617p = 1;

    /* renamed from: q */
    public Map<String, Object> f4618q = new HashMap();

    /* renamed from: r */
    public boolean f4619r = true;

    /* renamed from: s */
    public boolean f4620s = true;

    /* renamed from: a */
    public final long f4604a = Utils.generateUniqueId();

    /* renamed from: h */
    public final AdLoader.Listener f4610h = new C1068a();

    /* renamed from: l */
    public final Runnable f4613l = new RunnableC1069b();

    /* renamed from: D */
    public long f4602D = 0;

    /* renamed from: B */
    public Integer f4600B = 60000;

    /* renamed from: n */
    public Handler f4615n = new Handler();

    /* renamed from: C */
    public String f4601C = "";

    /* renamed from: com.mopub.mobileads.AdViewController$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/AdViewController$a.class */
    public class C1068a implements AdLoader.Listener {
        public C1068a() {
            AdViewController.this = r4;
        }

        @Override // com.mopub.network.AdLoader.Listener, com.mopub.volley.Response.ErrorListener
        public void onErrorResponse(VolleyError volleyError) {
            AdViewController.this.m3718t(volleyError);
        }

        @Override // com.mopub.network.AdLoader.Listener
        public void onSuccess(AdResponse adResponse) {
            AdViewController.this.m3717u(adResponse);
        }
    }

    /* renamed from: com.mopub.mobileads.AdViewController$b */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/AdViewController$b.class */
    public class RunnableC1069b implements Runnable {
        public RunnableC1069b() {
            AdViewController.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            MoPubAd moPubAd = AdViewController.this.getMoPubAd();
            if (moPubAd != null) {
                AdViewController.this.m3740B(moPubAd.resolveAdSize());
            }
            AdViewController.this.m3723o();
        }
    }

    /* renamed from: com.mopub.mobileads.AdViewController$c */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/AdViewController$c.class */
    public class RunnableC1070c implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ MoPubAd f4630a;

        /* renamed from: b */
        public final /* synthetic */ View f4631b;

        public RunnableC1070c(MoPubAd moPubAd, View view) {
            AdViewController.this = r4;
            this.f4630a = moPubAd;
            this.f4631b = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            ((MoPubView) this.f4630a).removeAllViews();
            MoPubView moPubView = (MoPubView) this.f4630a;
            View view = this.f4631b;
            moPubView.addView(view, AdViewController.this.m3727k(view));
        }
    }

    /* renamed from: com.mopub.mobileads.AdViewController$d */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/AdViewController$d.class */
    public static /* synthetic */ class C1071d {

        /* renamed from: a */
        public static final /* synthetic */ int[] f4633a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[MoPubNetworkError.Reason.values().length];
            f4633a = iArr;
            try {
                iArr[MoPubNetworkError.Reason.WARMING_UP.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f4633a[MoPubNetworkError.Reason.NO_FILL.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f4633a[MoPubNetworkError.Reason.TOO_MANY_REQUESTS.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    public AdViewController(Context context, MoPubAd moPubAd) {
        this.f4605b = context;
        this.f4606c = moPubAd;
        this.f4607d = new WebViewAdUrlGenerator(this.f4605b.getApplicationContext());
    }

    @VisibleForTesting
    /* renamed from: m */
    public static MoPubErrorCode m3725m(VolleyError volleyError, Context context) {
        NetworkResponse networkResponse = volleyError.networkResponse;
        if (!(volleyError instanceof MoPubNetworkError)) {
            return networkResponse == null ? !DeviceUtils.isNetworkAvailable(context) ? MoPubErrorCode.NO_CONNECTION : MoPubErrorCode.UNSPECIFIED : networkResponse.statusCode >= 400 ? MoPubErrorCode.SERVER_ERROR : MoPubErrorCode.UNSPECIFIED;
        }
        int i = C1071d.f4633a[((MoPubNetworkError) volleyError).getReason().ordinal()];
        return i != 1 ? i != 2 ? i != 3 ? MoPubErrorCode.UNSPECIFIED : MoPubErrorCode.TOO_MANY_REQUESTS : MoPubErrorCode.NO_FILL : MoPubErrorCode.WARMUP;
    }

    /* renamed from: n */
    public static boolean m3724n(View view) {
        return f4598G.get(view) != null;
    }

    public static void setShouldHonorServerDimensions(View view) {
        f4598G.put(view, Boolean.TRUE);
    }

    /* renamed from: A */
    public void m3741A() {
        Request request = this.f4608f;
        if (request != null) {
            if (!request.isCanceled()) {
                this.f4608f.cancel();
            }
            this.f4608f = null;
        }
        this.f4609g = null;
    }

    /* renamed from: B */
    public void m3740B(Point point) {
        this.f4623v = point;
    }

    /* renamed from: C */
    public void m3739C(boolean z) {
        this.f4620s = z;
        m3712z(z);
    }

    /* renamed from: D */
    public void m3738D() {
        this.f4602D = 0L;
        this.f4603E = SystemClock.uptimeMillis();
        AdAdapter adAdapter = getAdAdapter();
        if (adAdapter != null) {
            adAdapter.m3770H(this);
            adAdapter.mo3678I(getMoPubAd());
        }
    }

    /* renamed from: c */
    public void m3735c(MoPubErrorCode moPubErrorCode) {
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Ad failed to load.");
        m3741A();
        MoPubAd moPubAd = getMoPubAd();
        if (moPubAd == null) {
            return;
        }
        if (!TextUtils.isEmpty(this.f4599A)) {
            m3713y();
        }
        moPubAd.onAdLoadFailed(moPubErrorCode);
    }

    /* renamed from: d */
    public final void m3734d() {
        this.f4615n.removeCallbacks(this.f4613l);
    }

    /* renamed from: e */
    public void m3733e() {
        if (this.f4614m) {
            return;
        }
        m3741A();
        m3712z(false);
        m3734d();
        m3722p();
        this.f4606c = null;
        this.f4605b = null;
        this.f4607d = null;
        this.f4601C = "";
        this.f4614m = true;
    }

    /* renamed from: f */
    public void m3732f() {
        this.f4616o = false;
        m3714x();
    }

    /* renamed from: g */
    public void m3731g() {
        this.f4616o = true;
        m3716v();
    }

    public AdAdapter getAdAdapter() {
        return this.f4627z;
    }

    public int getAdHeight() {
        AdResponse adResponse = this.f4611j;
        if (adResponse == null || adResponse.getHeight() == null) {
            return 0;
        }
        return this.f4611j.getHeight().intValue();
    }

    public String getAdUnitId() {
        return this.f4599A;
    }

    public int getAdWidth() {
        AdResponse adResponse = this.f4611j;
        if (adResponse == null || adResponse.getWidth() == null) {
            return 0;
        }
        return this.f4611j.getWidth().intValue();
    }

    public boolean getAllowCustomClose() {
        AdResponse adResponse = this.f4611j;
        if (adResponse == null) {
            return false;
        }
        return adResponse.allowCustomClose();
    }

    @Deprecated
    public boolean getAutorefreshEnabled() {
        return getCurrentAutoRefreshStatus();
    }

    public String getBaseAdClassName() {
        return this.f4612k;
    }

    public long getBroadcastIdentifier() {
        return this.f4604a;
    }

    public Context getContext() {
        return this.f4605b;
    }

    public boolean getCurrentAutoRefreshStatus() {
        return this.f4619r;
    }

    public String getDspCreativeId() {
        AdResponse adResponse;
        return (this.f4599A == null || (adResponse = this.f4611j) == null) ? "" : adResponse.getDspCreativeId();
    }

    public String getFullAdType() {
        AdResponse adResponse = this.f4611j;
        if (adResponse == null) {
            return null;
        }
        return adResponse.getFullAdType();
    }

    public String getKeywords() {
        return this.f4621t;
    }

    public Map<String, Object> getLocalExtras() {
        return this.f4618q != null ? new TreeMap(this.f4618q) : new TreeMap();
    }

    public Location getLocation() {
        return LocationService.getLastKnownLocation(this.f4605b);
    }

    public MoPubAd getMoPubAd() {
        return this.f4606c;
    }

    public boolean getTesting() {
        return this.f4625x;
    }

    public String getUserDataKeywords() {
        if (!MoPub.canCollectPersonalInformation()) {
            return null;
        }
        return this.f4622u;
    }

    /* renamed from: h */
    public void m3730h(String str, MoPubError moPubError) {
        MoPubAd moPubAd = getMoPubAd();
        if (moPubAd == null || this.f4605b == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Can't load an ad in this ad view because it was destroyed.");
            m3741A();
            return;
        }
        synchronized (this) {
            AdLoader adLoader = this.f4609g;
            if (adLoader == null || !adLoader.hasMoreAds()) {
                this.f4609g = new AdLoader(str, moPubAd.getAdFormat(), this.f4599A, this.f4605b, this.f4610h);
            }
        }
        this.f4608f = this.f4609g.loadNextAd(moPubError);
    }

    /* renamed from: i */
    public void m3729i() {
        m3722p();
        m3741A();
        loadAd();
    }

    /* renamed from: j */
    public String m3728j() {
        String str = null;
        if (this.f4607d == null) {
            return null;
        }
        boolean canCollectPersonalInformation = MoPub.canCollectPersonalInformation();
        AdUrlGenerator withKeywords = this.f4607d.withAdUnitId(this.f4599A).withKeywords(this.f4621t);
        if (canCollectPersonalInformation) {
            str = this.f4622u;
        }
        withKeywords.withUserDataKeywords(str).withRequestedAdSize(this.f4623v).withWindowInsets(this.f4624w);
        return this.f4607d.generateUrlString(Constants.HOST);
    }

    /* renamed from: k */
    public final FrameLayout.LayoutParams m3727k(View view) {
        Integer num;
        AdResponse adResponse = this.f4611j;
        Integer num2 = null;
        if (adResponse != null) {
            num2 = adResponse.getWidth();
            num = this.f4611j.getHeight();
        } else {
            num = null;
        }
        return (num2 == null || num == null || !m3724n(view) || num2.intValue() <= 0 || num.intValue() <= 0 || this.f4605b == null) ? f4597F : new FrameLayout.LayoutParams(Dips.asIntPixels(num2.intValue(), this.f4605b), Dips.asIntPixels(num.intValue(), this.f4605b), 17);
    }

    /* renamed from: l */
    public Integer m3726l(AdFormat adFormat) {
        int i = adFormat == AdFormat.BANNER ? 10000 : 30000;
        AdResponse adResponse = this.f4611j;
        return adResponse == null ? Integer.valueOf(i) : adResponse.getAdTimeoutMillis(i);
    }

    public void loadAd() {
        this.f4617p = 1;
        m3723o();
    }

    public boolean loadFailUrl(MoPubErrorCode moPubErrorCode) {
        MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM_WITH_THROWABLE;
        Object[] objArr = new Object[3];
        if (moPubErrorCode == null) {
            objArr[0] = "Load failed.";
            MoPubErrorCode moPubErrorCode2 = MoPubErrorCode.UNSPECIFIED;
            objArr[1] = Integer.valueOf(moPubErrorCode2.getIntCode());
            objArr[2] = moPubErrorCode2;
            MoPubLog.log(sdkLogEvent, objArr);
        } else {
            objArr[0] = "Load failed.";
            objArr[1] = moPubErrorCode;
            objArr[2] = Integer.valueOf(moPubErrorCode.getIntCode());
            MoPubLog.log(sdkLogEvent, objArr);
        }
        AdLoader adLoader = this.f4609g;
        if (adLoader == null || !adLoader.hasMoreAds()) {
            m3735c(MoPubErrorCode.NO_FILL);
            return false;
        }
        m3719s("", moPubErrorCode);
        return true;
    }

    /* renamed from: o */
    public final void m3723o() {
        this.f4626y = true;
        if (TextUtils.isEmpty(this.f4599A)) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Can't load an ad in this ad view because the ad unit ID is not set. Did you forget to call setAdUnitId()?");
            m3735c(MoPubErrorCode.MISSING_AD_UNIT_ID);
        } else if (m3721q()) {
            m3719s(m3728j(), null);
        } else {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Can't load an ad because there is no network connectivity.");
            m3735c(MoPubErrorCode.NO_CONNECTION);
        }
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.InteractionListener
    public void onAdClicked() {
        MoPubAd moPubAd = getMoPubAd();
        if (moPubAd != null) {
            moPubAd.onAdClicked();
        }
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.InteractionListener, com.mopub.mobileads.AdLifecycleListener.InlineInteractionListener
    public void onAdCollapsed() {
        MoPubAd moPubAd = getMoPubAd();
        if (moPubAd != null) {
            moPubAd.onAdCollapsed();
        }
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.InteractionListener, com.mopub.mobileads.AdLifecycleListener.FullscreenInteractionListener
    public void onAdComplete(MoPubReward moPubReward) {
        MoPubAd moPubAd = getMoPubAd();
        if (moPubAd != null) {
            moPubAd.onAdComplete(moPubReward);
        }
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.InteractionListener, com.mopub.mobileads.AdLifecycleListener.FullscreenInteractionListener
    public void onAdDismissed() {
        MoPubAd moPubAd = getMoPubAd();
        if (moPubAd != null) {
            moPubAd.onAdDismissed();
        }
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.InteractionListener, com.mopub.mobileads.AdLifecycleListener.InlineInteractionListener
    public void onAdExpanded() {
        MoPubAd moPubAd = getMoPubAd();
        if (moPubAd != null) {
            moPubAd.onAdExpanded();
        }
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.InteractionListener
    public void onAdFailed(MoPubErrorCode moPubErrorCode) {
        MoPubAd moPubAd = getMoPubAd();
        if (moPubAd != null) {
            moPubAd.onAdLoadFailed(moPubErrorCode);
        }
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.InteractionListener
    public void onAdImpression() {
        AdResponse adResponse = this.f4611j;
        if (adResponse != null) {
            String requestId = adResponse.getRequestId();
            if (this.f4601C.equals(requestId)) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Ignoring duplicate impression.");
                return;
            }
            if (requestId != null) {
                this.f4601C = requestId;
            }
            TrackingRequest.makeTrackingHttpRequest(this.f4611j.getImpressionTrackingUrls(), this.f4605b);
            new SingleImpression(this.f4611j.getAdUnitId(), this.f4611j.getImpressionData()).sendImpression();
        }
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.LoadListener
    public void onAdLoadFailed(MoPubErrorCode moPubErrorCode) {
        if (!loadFailUrl(moPubErrorCode)) {
            m3735c(moPubErrorCode);
        }
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.LoadListener
    public void onAdLoaded() {
        m3713y();
        AdLoader adLoader = this.f4609g;
        if (adLoader != null) {
            adLoader.creativeDownloadSuccess();
            this.f4609g = null;
        } else {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "mAdLoader is not supposed to be null");
        }
        MoPubAd moPubAd = getMoPubAd();
        if (moPubAd != null) {
            moPubAd.onAdLoaded();
        }
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.InteractionListener, com.mopub.mobileads.AdLifecycleListener.InlineInteractionListener
    public void onAdPauseAutoRefresh() {
        MoPubAd moPubAd = getMoPubAd();
        if (moPubAd != null) {
            moPubAd.onAdPauseAutoRefresh();
        }
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.InteractionListener, com.mopub.mobileads.AdLifecycleListener.InlineInteractionListener
    public void onAdResumeAutoRefresh() {
        MoPubAd moPubAd = getMoPubAd();
        if (moPubAd != null) {
            moPubAd.onAdResumeAutoRefresh();
        }
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.InteractionListener
    public void onAdShown() {
        MoPubAd moPubAd = getMoPubAd();
        if (moPubAd != null) {
            moPubAd.onAdShown();
        }
    }

    /* renamed from: p */
    public void m3722p() {
        AdAdapter adAdapter = getAdAdapter();
        if (adAdapter != null) {
            adAdapter.m3766e();
            this.f4627z = null;
        }
    }

    @SuppressLint({"MissingPermission"})
    /* renamed from: q */
    public final boolean m3721q() {
        Context context = this.f4605b;
        if (context == null) {
            return false;
        }
        if (!DeviceUtils.isPermissionGranted(context, "android.permission.ACCESS_NETWORK_STATE")) {
            return true;
        }
        ConnectivityManager connectivityManager = (ConnectivityManager) this.f4605b.getSystemService("connectivity");
        NetworkInfo networkInfo = null;
        if (connectivityManager != null) {
            networkInfo = connectivityManager.getActiveNetworkInfo();
        }
        boolean z = false;
        if (networkInfo != null) {
            z = false;
            if (networkInfo.isConnected()) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: r */
    public void m3720r() {
        MoPubErrorCode moPubErrorCode;
        String baseAdClassName = this.f4611j.getBaseAdClassName();
        Map<String, String> serverExtras = this.f4611j.getServerExtras();
        String adType = this.f4611j.getAdType();
        String fullAdType = this.f4611j.getFullAdType();
        String impressionMinVisibleDips = this.f4611j.getImpressionMinVisibleDips();
        String impressionMinVisibleMs = this.f4611j.getImpressionMinVisibleMs();
        boolean allowCustomClose = this.f4611j.allowCustomClose();
        Set<ViewabilityVendor> viewabilityVendors = this.f4611j.getViewabilityVendors();
        Preconditions.checkNotNull(serverExtras);
        MoPubAd moPubAd = getMoPubAd();
        if (moPubAd == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Can't load an ad in this ad view because it was destroyed.");
            moPubErrorCode = MoPubErrorCode.INTERNAL_ERROR;
        } else if (!TextUtils.isEmpty(baseAdClassName)) {
            m3722p();
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Loading ad adapter.");
            TreeMap treeMap = new TreeMap(serverExtras);
            for (String str : this.f4618q.keySet()) {
                Object obj = this.f4618q.get(str);
                if (obj != null && !treeMap.containsKey(str)) {
                    treeMap.put(str, obj.toString());
                }
            }
            String str2 = moPubAd.getAdFormat() == AdFormat.BANNER ? "com.mopub.mobileads.InlineAdAdapter" : "com.mopub.mobileads.FullscreenAdAdapter";
            String remove = serverExtras.remove(DataKeys.HTML_RESPONSE_BODY_KEY);
            AdData.Builder dspCreativeId = new AdData.Builder().extras(treeMap).broadcastIdentifier(getBroadcastIdentifier()).timeoutDelayMillis(m3726l(moPubAd.getAdFormat()).intValue()).impressionMinVisibleDips(impressionMinVisibleDips).impressionMinVisibleMs(impressionMinVisibleMs).dspCreativeId(getDspCreativeId());
            if (remove == null) {
                remove = "";
            }
            AdData build = dspCreativeId.adPayload(remove).adWidth(Integer.valueOf(getAdWidth())).adHeight(Integer.valueOf(getAdHeight())).adType(adType).fullAdType(fullAdType).allowCustomClose(allowCustomClose).viewabilityVendors(viewabilityVendors).build();
            if (!Reflection.classFound(str2)) {
                MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM_WITH_THROWABLE;
                MoPubErrorCode moPubErrorCode2 = MoPubErrorCode.ADAPTER_NOT_FOUND;
                MoPubLog.log(sdkLogEvent, "Could not load adapter", moPubErrorCode2, Integer.valueOf(moPubErrorCode2.getIntCode()));
                loadFailUrl(moPubErrorCode2);
                return;
            }
            try {
                Constructor declaredConstructor = Class.forName(str2).asSubclass(AdAdapter.class).getDeclaredConstructor(Context.class, String.class, AdData.class);
                declaredConstructor.setAccessible(true);
                AdAdapter adAdapter = (AdAdapter) declaredConstructor.newInstance(this.f4605b, baseAdClassName, build);
                this.f4627z = adAdapter;
                adAdapter.load(this);
                return;
            } catch (Exception e) {
                MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, "Error loading ad adapter", e);
                loadFailUrl(MoPubErrorCode.ADAPTER_NOT_FOUND);
                return;
            }
        } else {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Couldn't invoke base ad because the server did not specify one.");
            moPubErrorCode = MoPubErrorCode.ADAPTER_NOT_FOUND;
        }
        loadFailUrl(moPubErrorCode);
    }

    @Deprecated
    public void reload() {
        loadAd();
    }

    /* renamed from: s */
    public void m3719s(String str, MoPubError moPubError) {
        if (str == null) {
            m3735c(MoPubErrorCode.NO_FILL);
            return;
        }
        if (!str.startsWith("javascript:")) {
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent, "Loading url: " + str);
        }
        if (this.f4608f == null) {
            m3730h(str, moPubError);
        } else if (TextUtils.isEmpty(this.f4599A)) {
        } else {
            MoPubLog.SdkLogEvent sdkLogEvent2 = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent2, "Already loading an ad for " + this.f4599A + ", wait to finish.");
        }
    }

    public void setAdContentView(View view) {
        MoPubAd moPubAd = getMoPubAd();
        if (moPubAd instanceof MoPubView) {
            this.f4615n.post(new RunnableC1070c(moPubAd, view));
        }
    }

    @VisibleForTesting
    public void setAdResponse(AdResponse adResponse) {
        this.f4611j = adResponse;
    }

    public void setAdUnitId(String str) {
        this.f4599A = str;
    }

    public void setKeywords(String str) {
        this.f4621t = str;
    }

    public void setLocalExtras(Map<String, Object> map) {
        this.f4618q = map != null ? new TreeMap(map) : new TreeMap();
    }

    public void setLocation(Location location) {
    }

    @VisibleForTesting
    public void setMoPubAd(MoPubAd moPubAd) {
        this.f4606c = moPubAd;
    }

    public void setTesting(boolean z) {
        this.f4625x = z;
    }

    public void setUserDataKeywords(String str) {
        if (!MoPub.canCollectPersonalInformation()) {
            this.f4622u = null;
        } else {
            this.f4622u = str;
        }
    }

    public void setWindowInsets(WindowInsets windowInsets) {
        this.f4624w = windowInsets;
    }

    @VisibleForTesting
    /* renamed from: t */
    public void m3718t(VolleyError volleyError) {
        if (volleyError instanceof MoPubNetworkError) {
            MoPubNetworkError moPubNetworkError = (MoPubNetworkError) volleyError;
            if (moPubNetworkError.getRefreshTimeMillis() != null) {
                this.f4600B = moPubNetworkError.getRefreshTimeMillis();
            }
        }
        MoPubErrorCode m3725m = m3725m(volleyError, this.f4605b);
        if (m3725m == MoPubErrorCode.SERVER_ERROR) {
            this.f4617p++;
        }
        m3735c(m3725m);
    }

    @VisibleForTesting
    /* renamed from: u */
    public void m3717u(AdResponse adResponse) {
        this.f4617p = 1;
        this.f4611j = adResponse;
        this.f4612k = adResponse.getBaseAdClassName();
        this.f4600B = this.f4611j.getRefreshTimeMillis();
        this.f4608f = null;
        m3720r();
        m3713y();
    }

    /* renamed from: v */
    public void m3716v() {
        m3712z(false);
    }

    /* renamed from: w */
    public void m3715w() {
        AdResponse adResponse = this.f4611j;
        if (adResponse != null) {
            TrackingRequest.makeTrackingHttpRequest(adResponse.getClickTrackingUrls(), this.f4605b);
        }
    }

    /* renamed from: x */
    public void m3714x() {
        if (!this.f4620s || this.f4616o) {
            return;
        }
        m3712z(true);
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* renamed from: y */
    public void m3713y() {
        Integer num;
        m3734d();
        if (!this.f4619r || (num = this.f4600B) == null || num.intValue() <= 0) {
            return;
        }
        char min = Math.min(600000L, this.f4600B.intValue() * ((long) Math.pow(1.5d, this.f4617p)));
        ?? r0 = min - this.f4602D;
        if (r0 >= 0) {
            min = r0;
        }
        this.f4615n.postDelayed(this.f4613l, min);
    }

    /* renamed from: z */
    public final void m3712z(boolean z) {
        if (this.f4626y && this.f4619r != z) {
            String str = z ? "enabled" : "disabled";
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Refresh " + str + " for ad unit (" + this.f4599A + ").");
        }
        this.f4619r = z;
        if (this.f4626y && z) {
            this.f4603E = SystemClock.uptimeMillis();
            m3713y();
        } else if (z) {
        } else {
            this.f4602D += SystemClock.uptimeMillis() - this.f4603E;
            m3734d();
        }
    }
}
