package com.mopub.nativeads;

import android.content.Context;
import android.text.TextUtils;
import com.mopub.common.AdFormat;
import com.mopub.common.AdUrlGenerator;
import com.mopub.common.Constants;
import com.mopub.common.MoPub;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.DeviceUtils;
import com.mopub.common.util.ManifestUtils;
import com.mopub.network.AdLoader;
import com.mopub.volley.Request;
import e.n.d.b;
import e.n.d.k;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.Objects;
import java.util.TreeMap;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/MoPubNative.class */
public class MoPubNative {

    /* renamed from: k */
    public static final MoPubNativeNetworkListener f9067k = new a();

    /* renamed from: a */
    public final WeakReference<Context> f9068a;

    /* renamed from: b */
    public final String f9069b;

    /* renamed from: c */
    public MoPubNativeNetworkListener f9070c;

    /* renamed from: d */
    public Map<String, Object> f9071d;

    /* renamed from: e */
    public AdLoader f9072e;

    /* renamed from: f */
    public b f9073f;

    /* renamed from: g */
    public final AdLoader.Listener f9074g;

    /* renamed from: h */
    public Request f9075h;

    /* renamed from: i */
    public AdRendererRegistry f9076i;

    /* renamed from: j */
    public NativeAd f9077j;

    /* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener.class */
    public interface MoPubNativeNetworkListener {
        void onNativeFail(NativeErrorCode nativeErrorCode);

        void onNativeLoad(NativeAd nativeAd);
    }

    @VisibleForTesting
    public MoPubNative(Context context, String str, AdRendererRegistry adRendererRegistry, MoPubNativeNetworkListener moPubNativeNetworkListener) {
        this.f9071d = new TreeMap();
        Preconditions.checkNotNull(context, "context may not be null.");
        Preconditions.checkNotNull(str, "AdUnitId may not be null.");
        Preconditions.checkNotNull(adRendererRegistry, "AdRendererRegistry may not be null.");
        Preconditions.checkNotNull(moPubNativeNetworkListener, "MoPubNativeNetworkListener may not be null.");
        ManifestUtils.checkNativeActivitiesDeclared(context);
        this.f9068a = new WeakReference<>(context);
        this.f9069b = str;
        this.f9070c = moPubNativeNetworkListener;
        this.f9076i = adRendererRegistry;
        this.f9074g = new b(this);
    }

    public MoPubNative(Context context, String str, MoPubNativeNetworkListener moPubNativeNetworkListener) {
        this(context, str, new AdRendererRegistry(), moPubNativeNetworkListener);
    }

    @VisibleForTesting
    /* renamed from: a */
    public Context m36187a() {
        Context context = this.f9068a.get();
        if (context == null) {
            destroy();
            MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Weak reference to Context in MoPubNative became null. This instance of MoPubNative is destroyed and No more requests will be processed.");
        }
        return context;
    }

    /* renamed from: b */
    public void m36186b(String str, NativeErrorCode nativeErrorCode) {
        Context m36187a = m36187a();
        if (m36187a == null) {
            return;
        }
        AdLoader adLoader = this.f9072e;
        if (adLoader == null || !adLoader.hasMoreAds()) {
            if (TextUtils.isEmpty(str)) {
                MoPubNativeNetworkListener moPubNativeNetworkListener = this.f9070c;
                NativeErrorCode nativeErrorCode2 = nativeErrorCode;
                if (nativeErrorCode == null) {
                    nativeErrorCode2 = NativeErrorCode.INVALID_REQUEST_URL;
                }
                moPubNativeNetworkListener.onNativeFail(nativeErrorCode2);
                return;
            }
            this.f9072e = new AdLoader(str, AdFormat.NATIVE, this.f9069b, m36187a, this.f9074g);
        }
        this.f9075h = this.f9072e.loadNextAd(nativeErrorCode);
    }

    public void destroy() {
        this.f9068a.clear();
        Request request = this.f9075h;
        if (request != null) {
            request.cancel();
            this.f9075h = null;
        }
        this.f9072e = null;
        NativeAd nativeAd = this.f9077j;
        if (nativeAd != null) {
            nativeAd.destroy();
            this.f9077j = null;
        }
        this.f9070c = f9067k;
    }

    public void makeRequest() {
        makeRequest(null);
    }

    public void makeRequest(RequestParameters requestParameters) {
        makeRequest(requestParameters, null);
    }

    public void makeRequest(RequestParameters requestParameters, Integer num) {
        Context m36187a = m36187a();
        if (m36187a == null) {
            return;
        }
        if (!DeviceUtils.isNetworkAvailable(m36187a)) {
            this.f9070c.onNativeFail(NativeErrorCode.CONNECTION_ERROR);
            return;
        }
        Context m36187a2 = m36187a();
        if (m36187a2 == null) {
            return;
        }
        MoPubLog.log(MoPubLog.AdLogEvent.LOAD_ATTEMPTED, new Object[0]);
        k withAdUnitId = new k(m36187a2).withAdUnitId(this.f9069b);
        Objects.requireNonNull(withAdUnitId);
        if (requestParameters != null) {
            ((AdUrlGenerator) withAdUnitId).h = MoPub.canCollectPersonalInformation() ? requestParameters.getUserDataKeywords() : null;
            ((AdUrlGenerator) withAdUnitId).g = requestParameters.getKeywords();
            withAdUnitId.m = requestParameters.getDesiredAssets();
        }
        if (num != null) {
            withAdUnitId.n = String.valueOf(num.intValue());
        }
        String generateUrlString = withAdUnitId.generateUrlString(Constants.HOST);
        if (generateUrlString != null) {
            MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, C22128a.m8543z2("MoPubNative Loading ad from: ", generateUrlString));
        }
        m36186b(generateUrlString, null);
    }

    public void registerAdRenderer(MoPubAdRenderer moPubAdRenderer) {
        if (!Preconditions.NoThrow.checkNotNull(moPubAdRenderer, "Can't register a null adRenderer")) {
            return;
        }
        this.f9076i.registerAdRenderer(moPubAdRenderer);
    }

    public void setLocalExtras(Map<String, Object> map) {
        if (map == null) {
            this.f9071d = new TreeMap();
        } else {
            this.f9071d = new TreeMap(map);
        }
    }
}
