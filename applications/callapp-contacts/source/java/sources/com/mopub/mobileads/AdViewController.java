package com.mopub.mobileads;

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
import com.mopub.common.CallAppBidderManager;
import com.mopub.common.Constants;
import com.mopub.common.DataKeys;
import com.mopub.common.LocationService;
import com.mopub.common.MoPub;
import com.mopub.common.MoPubReward;
import com.mopub.common.Preconditions;
import com.mopub.common.ViewabilityVendor;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.DeviceUtils;
import com.mopub.common.util.Dips;
import com.mopub.common.util.Reflection;
import com.mopub.common.util.Utils;
import com.mopub.mobileads.AdData;
import com.mopub.mobileads.AdLifecycleListener;
import com.mopub.mobileads.base.C16855R;
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
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/AdViewController.class */
public class AdViewController implements AdLifecycleListener.InteractionListener, AdLifecycleListener.LoadListener {

    /* renamed from: h */
    private static final FrameLayout.LayoutParams f59064h = new FrameLayout.LayoutParams(-2, -2, 17);

    /* renamed from: i */
    private static final WeakHashMap<View, Boolean> f59065i = new WeakHashMap<>();

    /* renamed from: A */
    private boolean f59066A;

    /* renamed from: B */
    private AdAdapter f59067B;

    /* renamed from: C */
    private String f59068C;

    /* renamed from: F */
    private long f59071F;

    /* renamed from: a */
    Context f59072a;

    /* renamed from: b */
    AdLoader f59073b;

    /* renamed from: f */
    Point f59077f;

    /* renamed from: l */
    private MoPubAd f59081l;

    /* renamed from: m */
    private WebViewAdUrlGenerator f59082m;

    /* renamed from: n */
    private Request f59083n;

    /* renamed from: p */
    private AdResponse f59085p;

    /* renamed from: q */
    private String f59086q;

    /* renamed from: s */
    private boolean f59088s;

    /* renamed from: t */
    private boolean f59089t;

    /* renamed from: w */
    private String f59092w;

    /* renamed from: x */
    private String f59093x;

    /* renamed from: y */
    private WindowInsets f59094y;

    /* renamed from: z */
    private boolean f59095z;

    /* renamed from: k */
    private AtomicBoolean f59080k = new AtomicBoolean(false);

    /* renamed from: d */
    int f59075d = 1;

    /* renamed from: e */
    Map<String, Object> f59076e = new HashMap();

    /* renamed from: u */
    private boolean f59090u = true;

    /* renamed from: v */
    private boolean f59091v = true;

    /* renamed from: j */
    private final long f59079j = Utils.generateUniqueId();

    /* renamed from: o */
    private final AdLoader.Listener f59084o = new AdLoader.Listener() { // from class: com.mopub.mobileads.AdViewController.1
        @Override // com.mopub.volley.Response.ErrorListener
        public final void onErrorResponse(VolleyError volleyError) {
            MoPubErrorCode moPubErrorCode;
            AdViewController adViewController = AdViewController.this;
            boolean z = volleyError instanceof MoPubNetworkError;
            if (z) {
                MoPubNetworkError moPubNetworkError = (MoPubNetworkError) volleyError;
                if (moPubNetworkError.getRefreshTimeMillis() != null) {
                    adViewController.f59078g = moPubNetworkError.getRefreshTimeMillis();
                }
            }
            Context context = adViewController.f59072a;
            NetworkResponse networkResponse = volleyError.networkResponse;
            if (z) {
                int i = C167554.f59101a[((MoPubNetworkError) volleyError).getReason().ordinal()];
                moPubErrorCode = i != 1 ? i != 2 ? i != 3 ? MoPubErrorCode.UNSPECIFIED : MoPubErrorCode.TOO_MANY_REQUESTS : MoPubErrorCode.NO_FILL : MoPubErrorCode.WARMUP;
            } else {
                moPubErrorCode = networkResponse == null ? !DeviceUtils.isNetworkAvailable(context) ? MoPubErrorCode.NO_CONNECTION : MoPubErrorCode.UNSPECIFIED : volleyError.networkResponse.statusCode >= 400 ? MoPubErrorCode.SERVER_ERROR : MoPubErrorCode.UNSPECIFIED;
            }
            if (moPubErrorCode == MoPubErrorCode.SERVER_ERROR) {
                adViewController.f59075d++;
            }
            adViewController.m6581b(moPubErrorCode);
        }

        @Override // com.mopub.network.AdLoader.Listener
        public final void onSuccess(AdResponse adResponse) {
            AdViewController.this.m6585a(adResponse);
        }
    };

    /* renamed from: r */
    private final Runnable f59087r = new Runnable() { // from class: com.mopub.mobileads.AdViewController.2
        @Override // java.lang.Runnable
        public final void run() {
            MoPubAd moPubAd = AdViewController.this.getMoPubAd();
            if (moPubAd != null) {
                AdViewController.this.f59077f = moPubAd.resolveAdSize();
            }
            AdViewController.this.m6572i();
        }
    };

    /* renamed from: E */
    private long f59070E = 0;

    /* renamed from: g */
    Integer f59078g = 60000;

    /* renamed from: c */
    Handler f59074c = new Handler();

    /* renamed from: D */
    private String f59069D = "";

    /* renamed from: com.mopub.mobileads.AdViewController$4 */
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/AdViewController$4.class */
    static final /* synthetic */ class C167554 {

        /* renamed from: a */
        static final /* synthetic */ int[] f59101a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[MoPubNetworkError.Reason.values().length];
            f59101a = iArr;
            try {
                iArr[MoPubNetworkError.Reason.WARMING_UP.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f59101a[MoPubNetworkError.Reason.NO_FILL.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f59101a[MoPubNetworkError.Reason.TOO_MANY_REQUESTS.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    public AdViewController(Context context, MoPubAd moPubAd) {
        this.f59072a = context;
        this.f59081l = moPubAd;
        this.f59082m = new WebViewAdUrlGenerator(this.f59072a.getApplicationContext());
    }

    /* renamed from: a */
    static /* synthetic */ FrameLayout.LayoutParams m6587a(AdViewController adViewController, View view) {
        Integer num;
        AdResponse adResponse = adViewController.f59085p;
        Integer num2 = null;
        if (adResponse != null) {
            num2 = adResponse.getWidth();
            num = adViewController.f59085p.getHeight();
        } else {
            num = null;
        }
        if (num2 != null && num != null) {
            if ((f59065i.get(view) != null) && num2.intValue() > 0 && num.intValue() > 0 && adViewController.f59072a != null) {
                return new FrameLayout.LayoutParams(Dips.asIntPixels(num2.intValue(), adViewController.f59072a), Dips.asIntPixels(num.intValue(), adViewController.f59072a), 17);
            }
        }
        return f59064h;
    }

    /* renamed from: a */
    private void m6584a(String str, MoPubError moPubError) {
        if (str == null) {
            m6581b(MoPubErrorCode.NO_FILL);
            return;
        }
        if (!str.startsWith("javascript:")) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Loading url: ".concat(String.valueOf(str)));
        }
        if (this.f59083n == null) {
            m6580b(str, moPubError);
        } else if (TextUtils.isEmpty(this.f59068C)) {
        } else {
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent, "Already loading an ad for " + this.f59068C + ", wait to finish.");
        }
    }

    /* renamed from: b */
    private void m6580b(String str, MoPubError moPubError) {
        MoPubAd moPubAd = getMoPubAd();
        if (moPubAd == null || this.f59072a == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Can't load an ad in this ad view because it was destroyed.");
            m6571j();
            return;
        }
        synchronized (this) {
            AdLoader adLoader = this.f59073b;
            if (adLoader == null || !adLoader.hasMoreAds()) {
                this.f59073b = new AdLoader(str, moPubAd.getAdFormat(), this.f59068C, this.f59072a, this.f59084o);
            }
        }
        this.f59083n = this.f59073b.loadNextAd(moPubError);
    }

    /* renamed from: i */
    public void m6572i() {
        this.f59066A = true;
        if (TextUtils.isEmpty(this.f59068C)) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Can't load an ad in this ad view because the ad unit ID is not set. Did you forget to call setAdUnitId()?");
            m6581b(MoPubErrorCode.MISSING_AD_UNIT_ID);
        } else if (m6567n()) {
            m6584a(m6570k(), (MoPubError) null);
        } else {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Can't load an ad because there is no network connectivity.");
            m6581b(MoPubErrorCode.NO_CONNECTION);
        }
    }

    /* renamed from: j */
    private void m6571j() {
        Request request = this.f59083n;
        if (request != null) {
            if (!request.isCanceled()) {
                this.f59083n.cancel();
            }
            this.f59083n = null;
        }
        this.f59073b = null;
    }

    /* renamed from: k */
    private String m6570k() {
        String str = null;
        if (this.f59082m == null) {
            return null;
        }
        boolean canCollectPersonalInformation = MoPub.canCollectPersonalInformation();
        AdUrlGenerator withKeywords = this.f59082m.withAdUnitId(this.f59068C).withKeywords(this.f59092w);
        if (canCollectPersonalInformation) {
            str = this.f59093x;
        }
        withKeywords.withUserDataKeywords(str).withRequestedAdSize(this.f59077f).withWindowInsets(this.f59094y);
        return this.f59082m.generateUrlString(Constants.HOST);
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* renamed from: l */
    private void m6569l() {
        Integer num;
        m6568m();
        if (!this.f59090u || (num = this.f59078g) == null || num.intValue() <= 0) {
            return;
        }
        char min = Math.min(600000L, this.f59078g.intValue() * ((long) Math.pow(1.5d, this.f59075d)));
        ?? r0 = min - this.f59070E;
        if (r0 >= 0) {
            min = r0;
        }
        this.f59074c.postDelayed(this.f59087r, min);
    }

    /* renamed from: m */
    private void m6568m() {
        this.f59074c.removeCallbacks(this.f59087r);
    }

    /* renamed from: n */
    private boolean m6567n() {
        Context context = this.f59072a;
        if (context == null) {
            return false;
        }
        if (!DeviceUtils.isPermissionGranted(context, "android.permission.ACCESS_NETWORK_STATE")) {
            return true;
        }
        ConnectivityManager connectivityManager = (ConnectivityManager) this.f59072a.getSystemService("connectivity");
        NetworkInfo networkInfo = null;
        if (connectivityManager != null) {
            networkInfo = connectivityManager.getActiveNetworkInfo();
        }
        return networkInfo != null && networkInfo.isConnected();
    }

    public static void setShouldHonorServerDimensions(View view) {
        f59065i.put(view, Boolean.TRUE);
    }

    /* renamed from: a */
    public final void m6589a() {
        if (!this.f59091v || this.f59089t) {
            return;
        }
        m6579b(true);
    }

    /* renamed from: a */
    final void m6585a(AdResponse adResponse) {
        this.f59075d = 1;
        this.f59085p = adResponse;
        this.f59086q = adResponse.getBaseAdClassName();
        this.f59078g = this.f59085p.getRefreshTimeMillis();
        this.f59083n = null;
        String baseAdClassName = this.f59085p.getBaseAdClassName();
        Map<String, String> serverExtras = this.f59085p.getServerExtras();
        String adType = this.f59085p.getAdType();
        String fullAdType = this.f59085p.getFullAdType();
        String impressionMinVisibleDips = this.f59085p.getImpressionMinVisibleDips();
        String impressionMinVisibleMs = this.f59085p.getImpressionMinVisibleMs();
        boolean allowCustomClose = this.f59085p.allowCustomClose();
        Set<ViewabilityVendor> viewabilityVendors = this.f59085p.getViewabilityVendors();
        Preconditions.checkNotNull(serverExtras);
        MoPubAd moPubAd = getMoPubAd();
        if (moPubAd == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Can't load an ad in this ad view because it was destroyed.");
            m6586a(MoPubErrorCode.INTERNAL_ERROR);
        } else if (TextUtils.isEmpty(baseAdClassName)) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Couldn't invoke base ad because the server did not specify one.");
            m6586a(MoPubErrorCode.ADAPTER_NOT_FOUND);
        } else {
            m6574g();
            try {
                String str = serverExtras.get(DataKeys.CALLAPP_FLOOR_PRICE_KEY);
                if (str != null) {
                    this.f59076e.put(DataKeys.CALLAPP_FLOOR_PRICE_KEY, Double.valueOf(Double.parseDouble(str)));
                }
            } catch (NumberFormatException e) {
            }
            double publisherRevenue = getPublisherRevenue();
            Object obj = this.f59076e.get(DataKeys.CALLAPP_REQUEST_ID);
            if (CallAppBidderManager.shouldStopLoading(obj instanceof String ? (String) obj : "", publisherRevenue)) {
                m6581b(MoPubErrorCode.MIN_FLOOR_PRICE_REACHED);
            } else {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Loading ad adapter.");
                TreeMap treeMap = new TreeMap(serverExtras);
                for (String str2 : this.f59076e.keySet()) {
                    Object obj2 = this.f59076e.get(str2);
                    if (obj2 != null && !treeMap.containsKey(str2)) {
                        treeMap.put(str2, obj2.toString());
                    }
                }
                String str3 = moPubAd.getAdFormat() == AdFormat.BANNER ? "com.mopub.mobileads.InlineAdAdapter" : "com.mopub.mobileads.FullscreenAdAdapter";
                String remove = serverExtras.remove(DataKeys.HTML_RESPONSE_BODY_KEY);
                AdData.Builder broadcastIdentifier = new AdData.Builder().extras(treeMap).broadcastIdentifier(getBroadcastIdentifier());
                int i = moPubAd.getAdFormat() == AdFormat.BANNER ? 10000 : 30000;
                AdResponse adResponse2 = this.f59085p;
                AdData build = broadcastIdentifier.timeoutDelayMillis((adResponse2 == null ? Integer.valueOf(i) : adResponse2.getAdTimeoutMillis(i)).intValue()).impressionMinVisibleDips(impressionMinVisibleDips).impressionMinVisibleMs(impressionMinVisibleMs).dspCreativeId(getDspCreativeId()).adPayload(remove != null ? remove : "").adWidth(Integer.valueOf(getAdWidth())).adHeight(Integer.valueOf(getAdHeight())).adType(adType).fullAdType(fullAdType).allowCustomClose(allowCustomClose).viewabilityVendors(viewabilityVendors).build();
                if (Reflection.classFound(str3)) {
                    try {
                        Constructor declaredConstructor = Class.forName(str3).asSubclass(AdAdapter.class).getDeclaredConstructor(Context.class, String.class, AdData.class);
                        declaredConstructor.setAccessible(true);
                        AdAdapter adAdapter = (AdAdapter) declaredConstructor.newInstance(this.f59072a, baseAdClassName, build);
                        this.f59067B = adAdapter;
                        adAdapter.load(this);
                    } catch (Exception e2) {
                        MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, "Error loading ad adapter", e2);
                        m6586a(MoPubErrorCode.ADAPTER_NOT_FOUND);
                    }
                } else {
                    MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM_WITH_THROWABLE, "Could not load adapter", MoPubErrorCode.ADAPTER_NOT_FOUND, Integer.valueOf(MoPubErrorCode.ADAPTER_NOT_FOUND.getIntCode()));
                    m6586a(MoPubErrorCode.ADAPTER_NOT_FOUND);
                }
            }
        }
        m6569l();
    }

    /* renamed from: a */
    public final void m6583a(boolean z) {
        this.f59091v = z;
        m6579b(z);
    }

    /* renamed from: a */
    public final boolean m6586a(MoPubErrorCode moPubErrorCode) {
        if (moPubErrorCode == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM_WITH_THROWABLE, "Load failed.", Integer.valueOf(MoPubErrorCode.UNSPECIFIED.getIntCode()), MoPubErrorCode.UNSPECIFIED);
        } else {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM_WITH_THROWABLE, "Load failed.", moPubErrorCode, Integer.valueOf(moPubErrorCode.getIntCode()));
        }
        AdLoader adLoader = this.f59073b;
        if (adLoader == null || !adLoader.hasMoreAds()) {
            m6581b(MoPubErrorCode.NO_FILL);
            return false;
        }
        m6584a("", moPubErrorCode);
        return true;
    }

    /* renamed from: b */
    public final void m6582b() {
        this.f59089t = true;
        m6579b(false);
    }

    /* renamed from: b */
    final void m6581b(MoPubErrorCode moPubErrorCode) {
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Ad failed to load.");
        m6571j();
        MoPubAd moPubAd = getMoPubAd();
        if (moPubAd == null) {
            return;
        }
        if (!TextUtils.isEmpty(this.f59068C)) {
            m6569l();
        }
        moPubAd.onAdLoadFailed(moPubErrorCode);
    }

    /* renamed from: b */
    public final void m6579b(boolean z) {
        if (this.f59066A && this.f59090u != z) {
            String str = z ? "enabled" : "disabled";
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Refresh " + str + " for ad unit (" + this.f59068C + ").");
        }
        this.f59090u = z;
        if (this.f59066A && z) {
            this.f59071F = SystemClock.uptimeMillis();
            m6569l();
        } else if (z) {
        } else {
            this.f59070E += SystemClock.uptimeMillis() - this.f59071F;
            m6568m();
        }
    }

    /* renamed from: c */
    public final void m6578c() {
        this.f59089t = false;
        m6589a();
    }

    /* renamed from: d */
    public final void m6577d() {
        if (this.f59088s) {
            return;
        }
        m6571j();
        m6579b(false);
        m6568m();
        m6574g();
        this.f59081l = null;
        this.f59072a = null;
        this.f59082m = null;
        this.f59069D = "";
        this.f59088s = true;
    }

    /* renamed from: e */
    public final void m6576e() {
        AdResponse adResponse = this.f59085p;
        if (adResponse != null) {
            TrackingRequest.makeTrackingHttpRequest(adResponse.getClickTrackingUrls(), this.f59072a);
        }
    }

    /* renamed from: f */
    public final void m6575f() {
        m6574g();
        m6571j();
        loadAd();
    }

    public void fakeLoadAd(AdResponse adResponse) {
        this.f59066A = true;
        m6585a(adResponse);
    }

    /* renamed from: g */
    public final void m6574g() {
        AdAdapter adAdapter = getAdAdapter();
        if (adAdapter != null) {
            adAdapter.m6605b();
            this.f59067B = null;
        }
    }

    public AdAdapter getAdAdapter() {
        return this.f59067B;
    }

    public int getAdHeight() {
        AdResponse adResponse = this.f59085p;
        if (adResponse == null || adResponse.getHeight() == null) {
            return 0;
        }
        return this.f59085p.getHeight().intValue();
    }

    public String getAdUnitId() {
        return this.f59068C;
    }

    public int getAdWidth() {
        AdResponse adResponse = this.f59085p;
        if (adResponse == null || adResponse.getWidth() == null) {
            return 0;
        }
        return this.f59085p.getWidth().intValue();
    }

    public boolean getAllowCustomClose() {
        AdResponse adResponse = this.f59085p;
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
        return this.f59086q;
    }

    public long getBroadcastIdentifier() {
        return this.f59079j;
    }

    public Context getContext() {
        return this.f59072a;
    }

    public boolean getCurrentAutoRefreshStatus() {
        return this.f59090u;
    }

    public String getDspCreativeId() {
        AdResponse adResponse;
        return (this.f59068C == null || (adResponse = this.f59085p) == null) ? "" : adResponse.getDspCreativeId();
    }

    public String getFullAdType() {
        AdResponse adResponse = this.f59085p;
        if (adResponse == null) {
            return null;
        }
        return adResponse.getFullAdType();
    }

    public String getKeywords() {
        return this.f59092w;
    }

    public Location getLocation() {
        return LocationService.getLastKnownLocation(this.f59072a);
    }

    public MoPubAd getMoPubAd() {
        return this.f59081l;
    }

    public double getPublisherRevenue() {
        return MoPub.getPublisherRevenue(this.f59085p, this.f59076e, null);
    }

    public boolean getTesting() {
        return this.f59095z;
    }

    public String getUserDataKeywords() {
        if (!MoPub.canCollectPersonalInformation()) {
            return null;
        }
        return this.f59093x;
    }

    /* renamed from: h */
    public final void m6573h() {
        this.f59070E = 0L;
        this.f59071F = SystemClock.uptimeMillis();
        AdAdapter adAdapter = getAdAdapter();
        if (adAdapter != null) {
            adAdapter.m6607a(this);
            adAdapter.mo6494a(getMoPubAd());
        }
    }

    public void loadAd() {
        this.f59075d = 1;
        m6572i();
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.InteractionListener
    public void onAdClicked() {
        AdAdapter adAdapter;
        MoPubAd moPubAd = getMoPubAd();
        if (moPubAd != null) {
            moPubAd.onAdClicked();
        }
        if (moPubAd == null || (adAdapter = this.f59067B) == null || adAdapter.f59033b == null || !this.f59067B.f59033b.shouldReportImpressionAndClick() || this.f59080k.getAndSet(true)) {
            return;
        }
        MoPub.analyticsEventsListener.onAdClicked(this.f59067B.f59033b.getProviderTag(), getAdUnitId(), moPubAd.getAdFormat() == AdFormat.INTERSTITIAL ? MoPub.AD_TYPE_AND_SIZE.INTERSTITIAL : moPubAd.getAdHeight() == 50 ? MoPub.AD_TYPE_AND_SIZE.BANNER_320X50 : MoPub.AD_TYPE_AND_SIZE.BANNER_300X250);
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.InlineInteractionListener
    public void onAdCollapsed() {
        MoPubAd moPubAd = getMoPubAd();
        if (moPubAd != null) {
            moPubAd.onAdCollapsed();
        }
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.FullscreenInteractionListener
    public void onAdComplete(MoPubReward moPubReward) {
        MoPubAd moPubAd = getMoPubAd();
        if (moPubAd != null) {
            moPubAd.onAdComplete(moPubReward);
        }
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.FullscreenInteractionListener
    public void onAdDismissed() {
        MoPubAd moPubAd = getMoPubAd();
        if (moPubAd != null) {
            moPubAd.onAdDismissed();
        }
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.InlineInteractionListener
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

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v28, types: [double] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r3v0 */
    @Override // com.mopub.mobileads.AdLifecycleListener.InteractionListener
    public void onAdImpression() {
        AdAdapter adAdapter;
        AdResponse adResponse = this.f59085p;
        if (adResponse != null) {
            String requestId = adResponse.getRequestId();
            if (this.f59069D.equals(requestId)) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Ignoring duplicate impression.");
                return;
            }
            if (requestId != null) {
                this.f59069D = requestId;
            }
            TrackingRequest.makeTrackingHttpRequest(this.f59085p.getImpressionTrackingUrls(), this.f59072a);
            new SingleImpression(this.f59085p.getAdUnitId(), this.f59085p.getImpressionData()).sendImpression();
        }
        MoPubAd moPubAd = getMoPubAd();
        if (moPubAd == null || (adAdapter = this.f59067B) == null || adAdapter.f59033b == null || !this.f59067B.f59033b.shouldReportImpressionAndClick()) {
            return;
        }
        ?? r10 = false;
        AdResponse adResponse2 = this.f59085p;
        if (adResponse2 != null) {
            r10 = MoPub.getPublisherRevenue(adResponse2, this.f59076e, null);
        }
        MoPub.analyticsEventsListener.onAdLoggingImpression(this.f59067B.f59033b.getProviderTag(), getAdUnitId(), r10 == true ? 1.0d : 0.0d, moPubAd.getAdFormat() == AdFormat.INTERSTITIAL ? MoPub.AD_TYPE_AND_SIZE.INTERSTITIAL : moPubAd.getAdHeight() == 50 ? MoPub.AD_TYPE_AND_SIZE.BANNER_320X50 : MoPub.AD_TYPE_AND_SIZE.BANNER_300X250);
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.LoadListener
    public void onAdLoadFailed(MoPubErrorCode moPubErrorCode) {
        if (!m6586a(moPubErrorCode)) {
            m6581b(moPubErrorCode);
        }
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.LoadListener
    public void onAdLoaded() {
        Integer num;
        m6569l();
        AdLoader adLoader = this.f59073b;
        if (adLoader != null) {
            adLoader.creativeDownloadSuccess();
            this.f59073b = null;
        } else {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "mAdLoader is not supposed to be null");
        }
        View adView = this.f59067B.f59033b.getAdView();
        if (adView != null && (num = (Integer) adView.getTag(C16855R.C16857id.callapp_ad_height_tag)) != null) {
            adView.setTag(C16855R.C16857id.callapp_ad_height_tag, num);
        }
        MoPubAd moPubAd = getMoPubAd();
        if (moPubAd != null) {
            moPubAd.onAdLoaded();
        }
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.InlineInteractionListener
    public void onAdPauseAutoRefresh() {
        MoPubAd moPubAd = getMoPubAd();
        if (moPubAd != null) {
            moPubAd.onAdPauseAutoRefresh();
        }
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.InlineInteractionListener
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

    @Deprecated
    public void reload() {
        loadAd();
    }

    public void setAdResponse(AdResponse adResponse) {
        this.f59085p = adResponse;
    }

    public void setAdUnitId(String str) {
        this.f59068C = str;
    }

    public void setKeywords(String str) {
        this.f59092w = str;
    }

    public void setLocation(Location location) {
    }

    public void setMoPubAd(MoPubAd moPubAd) {
        this.f59081l = moPubAd;
    }

    public void setTesting(boolean z) {
        this.f59095z = z;
    }

    public void setUserDataKeywords(String str) {
        if (!MoPub.canCollectPersonalInformation()) {
            this.f59093x = null;
        } else {
            this.f59093x = str;
        }
    }

    public void setWindowInsets(WindowInsets windowInsets) {
        this.f59094y = windowInsets;
    }
}
