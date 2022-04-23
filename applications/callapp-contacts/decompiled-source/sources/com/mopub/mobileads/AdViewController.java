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
import com.mopub.mobileads.base.R;
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
    private static final FrameLayout.LayoutParams h = new FrameLayout.LayoutParams(-2, -2, 17);
    private static final WeakHashMap<View, Boolean> i = new WeakHashMap<>();
    private boolean A;
    private AdAdapter B;
    private String C;
    private long F;

    /* renamed from: a  reason: collision with root package name */
    Context f34022a;

    /* renamed from: b  reason: collision with root package name */
    AdLoader f34023b;
    Point f;
    private MoPubAd l;
    private WebViewAdUrlGenerator m;
    private Request n;
    private AdResponse p;
    private String q;
    private boolean s;
    private boolean t;
    private String w;
    private String x;
    private WindowInsets y;
    private boolean z;
    private AtomicBoolean k = new AtomicBoolean(false);

    /* renamed from: d  reason: collision with root package name */
    int f34025d = 1;
    Map<String, Object> e = new HashMap();
    private boolean u = true;
    private boolean v = true;
    private final long j = Utils.generateUniqueId();
    private final AdLoader.Listener o = new AdLoader.Listener() { // from class: com.mopub.mobileads.AdViewController.1
        @Override // com.mopub.volley.Response.ErrorListener
        public final void onErrorResponse(VolleyError volleyError) {
            MoPubErrorCode moPubErrorCode;
            AdViewController adViewController = AdViewController.this;
            boolean z = volleyError instanceof MoPubNetworkError;
            if (z) {
                MoPubNetworkError moPubNetworkError = (MoPubNetworkError) volleyError;
                if (moPubNetworkError.getRefreshTimeMillis() != null) {
                    adViewController.g = moPubNetworkError.getRefreshTimeMillis();
                }
            }
            Context context = adViewController.f34022a;
            NetworkResponse networkResponse = volleyError.networkResponse;
            if (z) {
                int i2 = AnonymousClass4.f34031a[((MoPubNetworkError) volleyError).getReason().ordinal()];
                moPubErrorCode = i2 != 1 ? i2 != 2 ? i2 != 3 ? MoPubErrorCode.UNSPECIFIED : MoPubErrorCode.TOO_MANY_REQUESTS : MoPubErrorCode.NO_FILL : MoPubErrorCode.WARMUP;
            } else {
                moPubErrorCode = networkResponse == null ? !DeviceUtils.isNetworkAvailable(context) ? MoPubErrorCode.NO_CONNECTION : MoPubErrorCode.UNSPECIFIED : volleyError.networkResponse.statusCode >= 400 ? MoPubErrorCode.SERVER_ERROR : MoPubErrorCode.UNSPECIFIED;
            }
            if (moPubErrorCode == MoPubErrorCode.SERVER_ERROR) {
                adViewController.f34025d++;
            }
            adViewController.b(moPubErrorCode);
        }

        @Override // com.mopub.network.AdLoader.Listener
        public final void onSuccess(AdResponse adResponse) {
            AdViewController.this.a(adResponse);
        }
    };
    private final Runnable r = new Runnable() { // from class: com.mopub.mobileads.AdViewController.2
        @Override // java.lang.Runnable
        public final void run() {
            MoPubAd moPubAd = AdViewController.this.getMoPubAd();
            if (moPubAd != null) {
                AdViewController.this.f = moPubAd.resolveAdSize();
            }
            AdViewController.this.i();
        }
    };
    private long E = 0;
    Integer g = 60000;

    /* renamed from: c  reason: collision with root package name */
    Handler f34024c = new Handler();
    private String D = "";

    /* renamed from: com.mopub.mobileads.AdViewController$4  reason: invalid class name */
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/AdViewController$4.class */
    static final /* synthetic */ class AnonymousClass4 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f34031a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[MoPubNetworkError.Reason.values().length];
            f34031a = iArr;
            try {
                iArr[MoPubNetworkError.Reason.WARMING_UP.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f34031a[MoPubNetworkError.Reason.NO_FILL.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f34031a[MoPubNetworkError.Reason.TOO_MANY_REQUESTS.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    public AdViewController(Context context, MoPubAd moPubAd) {
        this.f34022a = context;
        this.l = moPubAd;
        this.m = new WebViewAdUrlGenerator(this.f34022a.getApplicationContext());
    }

    static /* synthetic */ FrameLayout.LayoutParams a(AdViewController adViewController, View view) {
        Integer num;
        AdResponse adResponse = adViewController.p;
        Integer num2 = null;
        if (adResponse != null) {
            num2 = adResponse.getWidth();
            num = adViewController.p.getHeight();
        } else {
            num = null;
        }
        if (!(num2 == null || num == null)) {
            if ((i.get(view) != null) && num2.intValue() > 0 && num.intValue() > 0 && adViewController.f34022a != null) {
                return new FrameLayout.LayoutParams(Dips.asIntPixels(num2.intValue(), adViewController.f34022a), Dips.asIntPixels(num.intValue(), adViewController.f34022a), 17);
            }
        }
        return h;
    }

    private void a(String str, MoPubError moPubError) {
        if (str == null) {
            b(MoPubErrorCode.NO_FILL);
            return;
        }
        if (!str.startsWith("javascript:")) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Loading url: ".concat(String.valueOf(str)));
        }
        if (this.n == null) {
            b(str, moPubError);
        } else if (!TextUtils.isEmpty(this.C)) {
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent, "Already loading an ad for " + this.C + ", wait to finish.");
        }
    }

    private void b(String str, MoPubError moPubError) {
        MoPubAd moPubAd = getMoPubAd();
        if (moPubAd == null || this.f34022a == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Can't load an ad in this ad view because it was destroyed.");
            j();
            return;
        }
        synchronized (this) {
            AdLoader adLoader = this.f34023b;
            if (adLoader == null || !adLoader.hasMoreAds()) {
                this.f34023b = new AdLoader(str, moPubAd.getAdFormat(), this.C, this.f34022a, this.o);
            }
        }
        this.n = this.f34023b.loadNextAd(moPubError);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        this.A = true;
        if (TextUtils.isEmpty(this.C)) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Can't load an ad in this ad view because the ad unit ID is not set. Did you forget to call setAdUnitId()?");
            b(MoPubErrorCode.MISSING_AD_UNIT_ID);
        } else if (!n()) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Can't load an ad because there is no network connectivity.");
            b(MoPubErrorCode.NO_CONNECTION);
        } else {
            a(k(), (MoPubError) null);
        }
    }

    private void j() {
        Request request = this.n;
        if (request != null) {
            if (!request.isCanceled()) {
                this.n.cancel();
            }
            this.n = null;
        }
        this.f34023b = null;
    }

    private String k() {
        String str = null;
        if (this.m == null) {
            return null;
        }
        boolean canCollectPersonalInformation = MoPub.canCollectPersonalInformation();
        AdUrlGenerator withKeywords = this.m.withAdUnitId(this.C).withKeywords(this.w);
        if (canCollectPersonalInformation) {
            str = this.x;
        }
        withKeywords.withUserDataKeywords(str).withRequestedAdSize(this.f).withWindowInsets(this.y);
        return this.m.generateUrlString(Constants.HOST);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v15, types: [android.os.Handler] */
    /* JADX WARN: Type inference failed for: r11v1, types: [long] */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void l() {
        /*
            r9 = this;
            r0 = r9
            r0.m()
            r0 = r9
            boolean r0 = r0.u
            if (r0 == 0) goto L_0x0059
            r0 = r9
            java.lang.Integer r0 = r0.g
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L_0x0059
            r0 = r10
            int r0 = r0.intValue()
            if (r0 <= 0) goto L_0x0059
            r0 = 600000(0x927c0, double:2.964394E-318)
            r1 = r9
            java.lang.Integer r1 = r1.g
            int r1 = r1.intValue()
            long r1 = (long) r1
            r2 = 4609434218613702656(0x3ff8000000000000, double:1.5)
            r3 = r9
            int r3 = r3.f34025d
            double r3 = (double) r3
            double r2 = java.lang.Math.pow(r2, r3)
            long r2 = (long) r2
            long r1 = r1 * r2
            long r0 = java.lang.Math.min(r0, r1)
            r11 = r0
            r0 = r11
            r1 = r9
            long r1 = r1.E
            long r0 = r0 - r1
            r13 = r0
            r0 = r13
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0049
            goto L_0x004c
        L_0x0049:
            r0 = r13
            r11 = r0
        L_0x004c:
            r0 = r9
            android.os.Handler r0 = r0.f34024c
            r1 = r9
            java.lang.Runnable r1 = r1.r
            r2 = r11
            boolean r0 = r0.postDelayed(r1, r2)
        L_0x0059:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.mobileads.AdViewController.l():void");
    }

    private void m() {
        this.f34024c.removeCallbacks(this.r);
    }

    private boolean n() {
        Context context = this.f34022a;
        if (context == null) {
            return false;
        }
        if (!DeviceUtils.isPermissionGranted(context, "android.permission.ACCESS_NETWORK_STATE")) {
            return true;
        }
        ConnectivityManager connectivityManager = (ConnectivityManager) this.f34022a.getSystemService("connectivity");
        NetworkInfo networkInfo = null;
        if (connectivityManager != null) {
            networkInfo = connectivityManager.getActiveNetworkInfo();
        }
        return networkInfo != null && networkInfo.isConnected();
    }

    public static void setShouldHonorServerDimensions(View view) {
        i.put(view, Boolean.TRUE);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        if (this.v && !this.t) {
            b(true);
        }
    }

    final void a(AdResponse adResponse) {
        this.f34025d = 1;
        this.p = adResponse;
        this.q = adResponse.getBaseAdClassName();
        this.g = this.p.getRefreshTimeMillis();
        this.n = null;
        String baseAdClassName = this.p.getBaseAdClassName();
        Map<String, String> serverExtras = this.p.getServerExtras();
        String adType = this.p.getAdType();
        String fullAdType = this.p.getFullAdType();
        String impressionMinVisibleDips = this.p.getImpressionMinVisibleDips();
        String impressionMinVisibleMs = this.p.getImpressionMinVisibleMs();
        boolean allowCustomClose = this.p.allowCustomClose();
        Set<ViewabilityVendor> viewabilityVendors = this.p.getViewabilityVendors();
        Preconditions.checkNotNull(serverExtras);
        MoPubAd moPubAd = getMoPubAd();
        if (moPubAd == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Can't load an ad in this ad view because it was destroyed.");
            a(MoPubErrorCode.INTERNAL_ERROR);
        } else if (TextUtils.isEmpty(baseAdClassName)) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Couldn't invoke base ad because the server did not specify one.");
            a(MoPubErrorCode.ADAPTER_NOT_FOUND);
        } else {
            g();
            try {
                String str = serverExtras.get(DataKeys.CALLAPP_FLOOR_PRICE_KEY);
                if (str != null) {
                    this.e.put(DataKeys.CALLAPP_FLOOR_PRICE_KEY, Double.valueOf(Double.parseDouble(str)));
                }
            } catch (NumberFormatException e) {
            }
            double publisherRevenue = getPublisherRevenue();
            Object obj = this.e.get(DataKeys.CALLAPP_REQUEST_ID);
            if (CallAppBidderManager.shouldStopLoading(obj instanceof String ? (String) obj : "", publisherRevenue)) {
                b(MoPubErrorCode.MIN_FLOOR_PRICE_REACHED);
            } else {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Loading ad adapter.");
                TreeMap treeMap = new TreeMap(serverExtras);
                for (String str2 : this.e.keySet()) {
                    Object obj2 = this.e.get(str2);
                    if (obj2 != null && !treeMap.containsKey(str2)) {
                        treeMap.put(str2, obj2.toString());
                    }
                }
                String str3 = moPubAd.getAdFormat() == AdFormat.BANNER ? "com.mopub.mobileads.InlineAdAdapter" : "com.mopub.mobileads.FullscreenAdAdapter";
                String remove = serverExtras.remove(DataKeys.HTML_RESPONSE_BODY_KEY);
                AdData.Builder broadcastIdentifier = new AdData.Builder().extras(treeMap).broadcastIdentifier(getBroadcastIdentifier());
                int i2 = moPubAd.getAdFormat() == AdFormat.BANNER ? 10000 : 30000;
                AdResponse adResponse2 = this.p;
                AdData build = broadcastIdentifier.timeoutDelayMillis((adResponse2 == null ? Integer.valueOf(i2) : adResponse2.getAdTimeoutMillis(i2)).intValue()).impressionMinVisibleDips(impressionMinVisibleDips).impressionMinVisibleMs(impressionMinVisibleMs).dspCreativeId(getDspCreativeId()).adPayload(remove != null ? remove : "").adWidth(Integer.valueOf(getAdWidth())).adHeight(Integer.valueOf(getAdHeight())).adType(adType).fullAdType(fullAdType).allowCustomClose(allowCustomClose).viewabilityVendors(viewabilityVendors).build();
                if (Reflection.classFound(str3)) {
                    try {
                        Constructor declaredConstructor = Class.forName(str3).asSubclass(AdAdapter.class).getDeclaredConstructor(Context.class, String.class, AdData.class);
                        declaredConstructor.setAccessible(true);
                        AdAdapter adAdapter = (AdAdapter) declaredConstructor.newInstance(this.f34022a, baseAdClassName, build);
                        this.B = adAdapter;
                        adAdapter.load(this);
                    } catch (Exception e2) {
                        MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, "Error loading ad adapter", e2);
                        a(MoPubErrorCode.ADAPTER_NOT_FOUND);
                    }
                } else {
                    MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM_WITH_THROWABLE, "Could not load adapter", MoPubErrorCode.ADAPTER_NOT_FOUND, Integer.valueOf(MoPubErrorCode.ADAPTER_NOT_FOUND.getIntCode()));
                    a(MoPubErrorCode.ADAPTER_NOT_FOUND);
                }
            }
        }
        l();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(boolean z) {
        this.v = z;
        b(z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(MoPubErrorCode moPubErrorCode) {
        if (moPubErrorCode == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM_WITH_THROWABLE, "Load failed.", Integer.valueOf(MoPubErrorCode.UNSPECIFIED.getIntCode()), MoPubErrorCode.UNSPECIFIED);
        } else {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM_WITH_THROWABLE, "Load failed.", moPubErrorCode, Integer.valueOf(moPubErrorCode.getIntCode()));
        }
        AdLoader adLoader = this.f34023b;
        if (adLoader == null || !adLoader.hasMoreAds()) {
            b(MoPubErrorCode.NO_FILL);
            return false;
        }
        a("", moPubErrorCode);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b() {
        this.t = true;
        b(false);
    }

    final void b(MoPubErrorCode moPubErrorCode) {
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Ad failed to load.");
        j();
        MoPubAd moPubAd = getMoPubAd();
        if (moPubAd != null) {
            if (!TextUtils.isEmpty(this.C)) {
                l();
            }
            moPubAd.onAdLoadFailed(moPubErrorCode);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(boolean z) {
        if (this.A && this.u != z) {
            String str = z ? "enabled" : "disabled";
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Refresh " + str + " for ad unit (" + this.C + ").");
        }
        this.u = z;
        if (this.A && z) {
            this.F = SystemClock.uptimeMillis();
            l();
        } else if (!z) {
            this.E += SystemClock.uptimeMillis() - this.F;
            m();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c() {
        this.t = false;
        a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void d() {
        if (!this.s) {
            j();
            b(false);
            m();
            g();
            this.l = null;
            this.f34022a = null;
            this.m = null;
            this.D = "";
            this.s = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void e() {
        AdResponse adResponse = this.p;
        if (adResponse != null) {
            TrackingRequest.makeTrackingHttpRequest(adResponse.getClickTrackingUrls(), this.f34022a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void f() {
        g();
        j();
        loadAd();
    }

    public void fakeLoadAd(AdResponse adResponse) {
        this.A = true;
        a(adResponse);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void g() {
        AdAdapter adAdapter = getAdAdapter();
        if (adAdapter != null) {
            adAdapter.b();
            this.B = null;
        }
    }

    public AdAdapter getAdAdapter() {
        return this.B;
    }

    public int getAdHeight() {
        AdResponse adResponse = this.p;
        if (adResponse == null || adResponse.getHeight() == null) {
            return 0;
        }
        return this.p.getHeight().intValue();
    }

    public String getAdUnitId() {
        return this.C;
    }

    public int getAdWidth() {
        AdResponse adResponse = this.p;
        if (adResponse == null || adResponse.getWidth() == null) {
            return 0;
        }
        return this.p.getWidth().intValue();
    }

    public boolean getAllowCustomClose() {
        AdResponse adResponse = this.p;
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
        return this.q;
    }

    public long getBroadcastIdentifier() {
        return this.j;
    }

    public Context getContext() {
        return this.f34022a;
    }

    public boolean getCurrentAutoRefreshStatus() {
        return this.u;
    }

    public String getDspCreativeId() {
        AdResponse adResponse;
        return (this.C == null || (adResponse = this.p) == null) ? "" : adResponse.getDspCreativeId();
    }

    public String getFullAdType() {
        AdResponse adResponse = this.p;
        if (adResponse == null) {
            return null;
        }
        return adResponse.getFullAdType();
    }

    public String getKeywords() {
        return this.w;
    }

    public Location getLocation() {
        return LocationService.getLastKnownLocation(this.f34022a);
    }

    public MoPubAd getMoPubAd() {
        return this.l;
    }

    public double getPublisherRevenue() {
        return MoPub.getPublisherRevenue(this.p, this.e, null);
    }

    public boolean getTesting() {
        return this.z;
    }

    public String getUserDataKeywords() {
        if (!MoPub.canCollectPersonalInformation()) {
            return null;
        }
        return this.x;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void h() {
        this.E = 0L;
        this.F = SystemClock.uptimeMillis();
        AdAdapter adAdapter = getAdAdapter();
        if (adAdapter != null) {
            adAdapter.a(this);
            adAdapter.a(getMoPubAd());
        }
    }

    public void loadAd() {
        this.f34025d = 1;
        i();
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.InteractionListener
    public void onAdClicked() {
        AdAdapter adAdapter;
        MoPubAd moPubAd = getMoPubAd();
        if (moPubAd != null) {
            moPubAd.onAdClicked();
        }
        if (moPubAd != null && (adAdapter = this.B) != null && adAdapter.f34013b != null && this.B.f34013b.shouldReportImpressionAndClick() && !this.k.getAndSet(true)) {
            MoPub.analyticsEventsListener.onAdClicked(this.B.f34013b.getProviderTag(), getAdUnitId(), moPubAd.getAdFormat() == AdFormat.INTERSTITIAL ? MoPub.AD_TYPE_AND_SIZE.INTERSTITIAL : moPubAd.getAdHeight() == 50 ? MoPub.AD_TYPE_AND_SIZE.BANNER_320X50 : MoPub.AD_TYPE_AND_SIZE.BANNER_300X250);
        }
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

    @Override // com.mopub.mobileads.AdLifecycleListener.InteractionListener
    public void onAdImpression() {
        AdAdapter adAdapter;
        AdResponse adResponse = this.p;
        if (adResponse != null) {
            String requestId = adResponse.getRequestId();
            if (this.D.equals(requestId)) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Ignoring duplicate impression.");
                return;
            }
            if (requestId != null) {
                this.D = requestId;
            }
            TrackingRequest.makeTrackingHttpRequest(this.p.getImpressionTrackingUrls(), this.f34022a);
            new SingleImpression(this.p.getAdUnitId(), this.p.getImpressionData()).sendImpression();
        }
        MoPubAd moPubAd = getMoPubAd();
        if (moPubAd != null && (adAdapter = this.B) != null && adAdapter.f34013b != null && this.B.f34013b.shouldReportImpressionAndClick()) {
            double d2 = 0.0d;
            AdResponse adResponse2 = this.p;
            if (adResponse2 != null) {
                d2 = MoPub.getPublisherRevenue(adResponse2, this.e, null);
            }
            MoPub.analyticsEventsListener.onAdLoggingImpression(this.B.f34013b.getProviderTag(), getAdUnitId(), d2, moPubAd.getAdFormat() == AdFormat.INTERSTITIAL ? MoPub.AD_TYPE_AND_SIZE.INTERSTITIAL : moPubAd.getAdHeight() == 50 ? MoPub.AD_TYPE_AND_SIZE.BANNER_320X50 : MoPub.AD_TYPE_AND_SIZE.BANNER_300X250);
        }
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.LoadListener
    public void onAdLoadFailed(MoPubErrorCode moPubErrorCode) {
        if (!a(moPubErrorCode)) {
            b(moPubErrorCode);
        }
    }

    @Override // com.mopub.mobileads.AdLifecycleListener.LoadListener
    public void onAdLoaded() {
        Integer num;
        l();
        AdLoader adLoader = this.f34023b;
        if (adLoader != null) {
            adLoader.creativeDownloadSuccess();
            this.f34023b = null;
        } else {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "mAdLoader is not supposed to be null");
        }
        View adView = this.B.f34013b.getAdView();
        if (!(adView == null || (num = (Integer) adView.getTag(R.id.callapp_ad_height_tag)) == null)) {
            adView.setTag(R.id.callapp_ad_height_tag, num);
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
        this.p = adResponse;
    }

    public void setAdUnitId(String str) {
        this.C = str;
    }

    public void setKeywords(String str) {
        this.w = str;
    }

    public void setLocation(Location location) {
    }

    public void setMoPubAd(MoPubAd moPubAd) {
        this.l = moPubAd;
    }

    public void setTesting(boolean z) {
        this.z = z;
    }

    public void setUserDataKeywords(String str) {
        if (!MoPub.canCollectPersonalInformation()) {
            this.x = null;
        } else {
            this.x = str;
        }
    }

    public void setWindowInsets(WindowInsets windowInsets) {
        this.y = windowInsets;
    }
}
