package com.mopub.nativeads;

import android.content.Context;
import android.text.TextUtils;
import com.mopub.common.AdFormat;
import com.mopub.common.Constants;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.DeviceUtils;
import com.mopub.common.util.ManifestUtils;
import com.mopub.mobileads.MoPubErrorCode;
import com.mopub.nativeads.CustomEventNative;
import com.mopub.network.AdLoader;
import com.mopub.network.AdResponse;
import com.mopub.network.MoPubNetworkError;
import com.mopub.volley.NetworkResponse;
import com.mopub.volley.Request;
import com.mopub.volley.VolleyError;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.TreeMap;
/* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/MoPubNative.class */
public class MoPubNative {

    /* renamed from: k */
    public static final MoPubNativeNetworkListener f5176k = new C1189a();

    /* renamed from: a */
    public final WeakReference<Context> f5177a;

    /* renamed from: b */
    public final String f5178b;

    /* renamed from: c */
    public MoPubNativeNetworkListener f5179c;

    /* renamed from: d */
    public Map<String, Object> f5180d;

    /* renamed from: e */
    public AdLoader f5181e;

    /* renamed from: f */
    public vh1 f5182f;

    /* renamed from: g */
    public final AdLoader.Listener f5183g;

    /* renamed from: h */
    public Request f5184h;

    /* renamed from: i */
    public AdRendererRegistry f5185i;

    /* renamed from: j */
    public NativeAd f5186j;

    /* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener.class */
    public interface MoPubNativeNetworkListener {
        void onNativeFail(NativeErrorCode nativeErrorCode);

        void onNativeLoad(NativeAd nativeAd);
    }

    /* renamed from: com.mopub.nativeads.MoPubNative$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/MoPubNative$a.class */
    public static final class C1189a implements MoPubNativeNetworkListener {
        @Override // com.mopub.nativeads.MoPubNative.MoPubNativeNetworkListener
        public void onNativeFail(NativeErrorCode nativeErrorCode) {
        }

        @Override // com.mopub.nativeads.MoPubNative.MoPubNativeNetworkListener
        public void onNativeLoad(NativeAd nativeAd) {
            nativeAd.destroy();
        }
    }

    /* renamed from: com.mopub.nativeads.MoPubNative$b */
    /* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/MoPubNative$b.class */
    public class C1190b implements AdLoader.Listener {
        public C1190b() {
            MoPubNative.this = r4;
        }

        @Override // com.mopub.network.AdLoader.Listener, com.mopub.volley.Response.ErrorListener
        public void onErrorResponse(VolleyError volleyError) {
            MoPubNative.this.m3320j(volleyError);
        }

        @Override // com.mopub.network.AdLoader.Listener
        public void onSuccess(AdResponse adResponse) {
            MoPubNative.this.m3319k(adResponse);
        }
    }

    /* renamed from: com.mopub.nativeads.MoPubNative$c */
    /* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/MoPubNative$c.class */
    public class C1191c implements CustomEventNative.CustomEventNativeListener {

        /* renamed from: a */
        public final /* synthetic */ AdResponse f5188a;

        public C1191c(AdResponse adResponse) {
            MoPubNative.this = r4;
            this.f5188a = adResponse;
        }

        @Override // com.mopub.nativeads.CustomEventNative.CustomEventNativeListener
        public void onNativeAdFailed(NativeErrorCode nativeErrorCode) {
            MoPubLog.log(MoPubLog.AdLogEvent.LOAD_FAILED, Integer.valueOf(nativeErrorCode.getIntCode()), nativeErrorCode.toString());
            MoPubNative.this.f5182f = null;
            MoPubNative.this.m3318l("", nativeErrorCode);
        }

        @Override // com.mopub.nativeads.CustomEventNative.CustomEventNativeListener
        public void onNativeAdLoaded(BaseNativeAd baseNativeAd) {
            MoPubLog.log(MoPubLog.AdLogEvent.LOAD_SUCCESS, new Object[0]);
            MoPubNative.this.f5182f = null;
            Context m3322h = MoPubNative.this.m3322h();
            if (m3322h == null) {
                return;
            }
            MoPubAdRenderer rendererForAd = MoPubNative.this.f5185i.getRendererForAd(baseNativeAd);
            if (rendererForAd == null) {
                onNativeAdFailed(NativeErrorCode.NATIVE_RENDERER_CONFIGURATION_ERROR);
                return;
            }
            if (MoPubNative.this.f5181e != null) {
                MoPubNative.this.f5181e.creativeDownloadSuccess();
            }
            MoPubNative moPubNative = MoPubNative.this;
            moPubNative.f5186j = new NativeAd(m3322h, this.f5188a, moPubNative.f5178b, baseNativeAd, rendererForAd);
            MoPubNative.this.f5179c.onNativeLoad(MoPubNative.this.f5186j);
        }
    }

    /* renamed from: com.mopub.nativeads.MoPubNative$d */
    /* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/MoPubNative$d.class */
    public static /* synthetic */ class C1192d {

        /* renamed from: a */
        public static final /* synthetic */ int[] f5190a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x004d -> B:31:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0051 -> B:27:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0055 -> B:25:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0059 -> B:21:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x005d -> B:29:0x0040). Please submit an issue!!! */
        static {
            int[] iArr = new int[MoPubNetworkError.Reason.values().length];
            f5190a = iArr;
            try {
                iArr[MoPubNetworkError.Reason.BAD_BODY.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f5190a[MoPubNetworkError.Reason.BAD_HEADER_DATA.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f5190a[MoPubNetworkError.Reason.WARMING_UP.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f5190a[MoPubNetworkError.Reason.NO_FILL.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f5190a[MoPubNetworkError.Reason.TOO_MANY_REQUESTS.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f5190a[MoPubNetworkError.Reason.UNSPECIFIED.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    @VisibleForTesting
    public MoPubNative(Context context, String str, AdRendererRegistry adRendererRegistry, MoPubNativeNetworkListener moPubNativeNetworkListener) {
        this.f5180d = new TreeMap();
        Preconditions.checkNotNull(context, "context may not be null.");
        Preconditions.checkNotNull(str, "AdUnitId may not be null.");
        Preconditions.checkNotNull(adRendererRegistry, "AdRendererRegistry may not be null.");
        Preconditions.checkNotNull(moPubNativeNetworkListener, "MoPubNativeNetworkListener may not be null.");
        ManifestUtils.checkNativeActivitiesDeclared(context);
        this.f5177a = new WeakReference<>(context);
        this.f5178b = str;
        this.f5179c = moPubNativeNetworkListener;
        this.f5185i = adRendererRegistry;
        this.f5183g = new C1190b();
    }

    public MoPubNative(Context context, String str, MoPubNativeNetworkListener moPubNativeNetworkListener) {
        this(context, str, new AdRendererRegistry(), moPubNativeNetworkListener);
    }

    public void destroy() {
        this.f5177a.clear();
        Request request = this.f5184h;
        if (request != null) {
            request.cancel();
            this.f5184h = null;
        }
        this.f5181e = null;
        NativeAd nativeAd = this.f5186j;
        if (nativeAd != null) {
            nativeAd.destroy();
            this.f5186j = null;
        }
        this.f5179c = f5176k;
    }

    @VisibleForTesting
    /* renamed from: h */
    public Context m3322h() {
        Context context = this.f5177a.get();
        if (context == null) {
            destroy();
            MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Weak reference to Context in MoPubNative became null. This instance of MoPubNative is destroyed and No more requests will be processed.");
        }
        return context;
    }

    /* renamed from: i */
    public final void m3321i(RequestParameters requestParameters, Integer num) {
        Context m3322h = m3322h();
        if (m3322h == null) {
            return;
        }
        MoPubLog.log(MoPubLog.AdLogEvent.LOAD_ATTEMPTED, new Object[0]);
        yh1 withAdUnitId = new yh1(m3322h).withAdUnitId(this.f5178b);
        withAdUnitId.m80P(requestParameters);
        if (num != null) {
            withAdUnitId.m79Q(num.intValue());
        }
        String generateUrlString = withAdUnitId.generateUrlString(Constants.HOST);
        if (generateUrlString != null) {
            MoPubLog.AdLogEvent adLogEvent = MoPubLog.AdLogEvent.CUSTOM;
            MoPubLog.log(adLogEvent, "MoPubNative Loading ad from: " + generateUrlString);
        }
        m3318l(generateUrlString, null);
    }

    @VisibleForTesting
    /* renamed from: j */
    public void m3320j(VolleyError volleyError) {
        MoPubNativeNetworkListener moPubNativeNetworkListener;
        NativeErrorCode nativeErrorCode;
        int i;
        MoPubNativeNetworkListener moPubNativeNetworkListener2;
        NativeErrorCode nativeErrorCode2;
        MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM_WITH_THROWABLE, "Native ad request failed.", volleyError);
        if (!(volleyError instanceof MoPubNetworkError)) {
            NetworkResponse networkResponse = volleyError.networkResponse;
            if (networkResponse != null && (i = networkResponse.statusCode) >= 500 && i < 600) {
                moPubNativeNetworkListener = this.f5179c;
                nativeErrorCode = NativeErrorCode.SERVER_ERROR_RESPONSE_CODE;
            } else if (networkResponse != null || DeviceUtils.isNetworkAvailable(this.f5177a.get())) {
                moPubNativeNetworkListener = this.f5179c;
                nativeErrorCode = NativeErrorCode.UNSPECIFIED;
            } else {
                MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, MoPubErrorCode.NO_CONNECTION);
                moPubNativeNetworkListener = this.f5179c;
                nativeErrorCode = NativeErrorCode.CONNECTION_ERROR;
            }
            moPubNativeNetworkListener.onNativeFail(nativeErrorCode);
            return;
        }
        int i2 = C1192d.f5190a[((MoPubNetworkError) volleyError).getReason().ordinal()];
        if (i2 == 1 || i2 == 2) {
            moPubNativeNetworkListener2 = this.f5179c;
            nativeErrorCode2 = NativeErrorCode.INVALID_RESPONSE;
        } else {
            if (i2 == 3) {
                MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, MoPubErrorCode.WARMUP);
            } else if (i2 != 4) {
                if (i2 != 5) {
                    moPubNativeNetworkListener2 = this.f5179c;
                    nativeErrorCode2 = NativeErrorCode.UNSPECIFIED;
                } else {
                    moPubNativeNetworkListener2 = this.f5179c;
                    nativeErrorCode2 = NativeErrorCode.TOO_MANY_REQUESTS;
                }
            }
            moPubNativeNetworkListener2 = this.f5179c;
            nativeErrorCode2 = NativeErrorCode.EMPTY_AD_RESPONSE;
        }
        moPubNativeNetworkListener2.onNativeFail(nativeErrorCode2);
    }

    /* renamed from: k */
    public final void m3319k(AdResponse adResponse) {
        Context m3322h = m3322h();
        if (m3322h == null) {
            return;
        }
        C1191c c1191c = new C1191c(adResponse);
        if (this.f5182f != null) {
            MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Native adapter is not null.");
            this.f5182f.m319f();
        }
        vh1 vh1Var = new vh1(c1191c);
        this.f5182f = vh1Var;
        vh1Var.loadNativeAd(m3322h, this.f5180d, adResponse);
    }

    /* renamed from: l */
    public void m3318l(String str, NativeErrorCode nativeErrorCode) {
        Context m3322h = m3322h();
        if (m3322h == null) {
            return;
        }
        AdLoader adLoader = this.f5181e;
        if (adLoader == null || !adLoader.hasMoreAds()) {
            if (TextUtils.isEmpty(str)) {
                MoPubNativeNetworkListener moPubNativeNetworkListener = this.f5179c;
                NativeErrorCode nativeErrorCode2 = nativeErrorCode;
                if (nativeErrorCode == null) {
                    nativeErrorCode2 = NativeErrorCode.INVALID_REQUEST_URL;
                }
                moPubNativeNetworkListener.onNativeFail(nativeErrorCode2);
                return;
            }
            this.f5181e = new AdLoader(str, AdFormat.NATIVE, this.f5178b, m3322h, this.f5183g);
        }
        this.f5184h = this.f5181e.loadNextAd(nativeErrorCode);
    }

    public void makeRequest() {
        makeRequest(null);
    }

    public void makeRequest(RequestParameters requestParameters) {
        makeRequest(requestParameters, null);
    }

    public void makeRequest(RequestParameters requestParameters, Integer num) {
        Context m3322h = m3322h();
        if (m3322h == null) {
            return;
        }
        if (!DeviceUtils.isNetworkAvailable(m3322h)) {
            this.f5179c.onNativeFail(NativeErrorCode.CONNECTION_ERROR);
        } else {
            m3321i(requestParameters, num);
        }
    }

    public void registerAdRenderer(MoPubAdRenderer moPubAdRenderer) {
        if (!Preconditions.NoThrow.checkNotNull(moPubAdRenderer, "Can't register a null adRenderer")) {
            return;
        }
        this.f5185i.registerAdRenderer(moPubAdRenderer);
    }

    public void setLocalExtras(Map<String, Object> map) {
        if (map == null) {
            this.f5180d = new TreeMap();
        } else {
            this.f5180d = new TreeMap(map);
        }
    }
}
