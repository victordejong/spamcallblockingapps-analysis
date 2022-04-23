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
import p131c.p421j.p426d.C6669b;
import p131c.p421j.p426d.C6678f;
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubNative.class */
public class MoPubNative {

    /* renamed from: j */
    public static final MoPubNativeNetworkListener f34760j = new C8945a();

    /* renamed from: a */
    public final WeakReference<Context> f34761a;

    /* renamed from: b */
    public final String f34762b;

    /* renamed from: c */
    public MoPubNativeNetworkListener f34763c;

    /* renamed from: d */
    public Map<String, Object> f34764d;

    /* renamed from: e */
    public AdLoader f34765e;

    /* renamed from: f */
    public C6669b f34766f;

    /* renamed from: g */
    public final AdLoader.Listener f34767g;

    /* renamed from: h */
    public Request f34768h;

    /* renamed from: i */
    public AdRendererRegistry f34769i;

    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener.class */
    public interface MoPubNativeNetworkListener {
        void onNativeFail(NativeErrorCode nativeErrorCode);

        void onNativeLoad(NativeAd nativeAd);
    }

    /* renamed from: com.mopub.nativeads.MoPubNative$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubNative$a.class */
    public static final class C8945a implements MoPubNativeNetworkListener {
        @Override // com.mopub.nativeads.MoPubNative.MoPubNativeNetworkListener
        public void onNativeFail(NativeErrorCode nativeErrorCode) {
        }

        @Override // com.mopub.nativeads.MoPubNative.MoPubNativeNetworkListener
        public void onNativeLoad(NativeAd nativeAd) {
            nativeAd.destroy();
        }
    }

    /* renamed from: com.mopub.nativeads.MoPubNative$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubNative$b.class */
    public class C8946b implements AdLoader.Listener {
        public C8946b() {
        }

        @Override // com.mopub.volley.Response.ErrorListener
        public void onErrorResponse(VolleyError volleyError) {
            MoPubNative.this.m3947a(volleyError);
        }

        @Override // com.mopub.network.AdLoader.Listener
        public void onSuccess(AdResponse adResponse) {
            MoPubNative.this.m3948a(adResponse);
        }
    }

    /* renamed from: com.mopub.nativeads.MoPubNative$c */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubNative$c.class */
    public class C8947c implements CustomEventNative.CustomEventNativeListener {

        /* renamed from: a */
        public final /* synthetic */ AdResponse f34771a;

        public C8947c(AdResponse adResponse) {
            this.f34771a = adResponse;
        }

        @Override // com.mopub.nativeads.CustomEventNative.CustomEventNativeListener
        public void onNativeAdFailed(NativeErrorCode nativeErrorCode) {
            MoPubLog.log(MoPubLog.AdLogEvent.LOAD_FAILED, Integer.valueOf(nativeErrorCode.getIntCode()), nativeErrorCode.toString());
            MoPubNative.this.f34766f = null;
            MoPubNative.this.m3946a("", nativeErrorCode);
        }

        @Override // com.mopub.nativeads.CustomEventNative.CustomEventNativeListener
        public void onNativeAdLoaded(BaseNativeAd baseNativeAd) {
            MoPubLog.log(MoPubLog.AdLogEvent.LOAD_SUCCESS, new Object[0]);
            MoPubNative.this.f34766f = null;
            Context a = MoPubNative.this.m3953a();
            if (a != null) {
                MoPubAdRenderer rendererForAd = MoPubNative.this.f34769i.getRendererForAd(baseNativeAd);
                if (rendererForAd == null) {
                    onNativeAdFailed(NativeErrorCode.NATIVE_RENDERER_CONFIGURATION_ERROR);
                    return;
                }
                if (MoPubNative.this.f34765e != null) {
                    MoPubNative.this.f34765e.creativeDownloadSuccess();
                }
                MoPubNative.this.f34763c.onNativeLoad(new NativeAd(a, this.f34771a, MoPubNative.this.f34762b, baseNativeAd, rendererForAd));
            }
        }
    }

    /* renamed from: com.mopub.nativeads.MoPubNative$d */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubNative$d.class */
    public static /* synthetic */ class C8948d {

        /* renamed from: a */
        public static final /* synthetic */ int[] f34773a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[MoPubNetworkError.Reason.values().length];
            f34773a = iArr;
            try {
                iArr[MoPubNetworkError.Reason.BAD_BODY.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f34773a[MoPubNetworkError.Reason.BAD_HEADER_DATA.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f34773a[MoPubNetworkError.Reason.WARMING_UP.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f34773a[MoPubNetworkError.Reason.NO_FILL.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f34773a[MoPubNetworkError.Reason.UNSPECIFIED.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    @VisibleForTesting
    public MoPubNative(Context context, String str, AdRendererRegistry adRendererRegistry, MoPubNativeNetworkListener moPubNativeNetworkListener) {
        this.f34764d = new TreeMap();
        Preconditions.checkNotNull(context, "context may not be null.");
        Preconditions.checkNotNull(str, "AdUnitId may not be null.");
        Preconditions.checkNotNull(adRendererRegistry, "AdRendererRegistry may not be null.");
        Preconditions.checkNotNull(moPubNativeNetworkListener, "MoPubNativeNetworkListener may not be null.");
        ManifestUtils.checkNativeActivitiesDeclared(context);
        this.f34761a = new WeakReference<>(context);
        this.f34762b = str;
        this.f34763c = moPubNativeNetworkListener;
        this.f34769i = adRendererRegistry;
        this.f34767g = new C8946b();
    }

    public MoPubNative(Context context, String str, MoPubNativeNetworkListener moPubNativeNetworkListener) {
        this(context, str, new AdRendererRegistry(), moPubNativeNetworkListener);
    }

    @VisibleForTesting
    /* renamed from: a */
    public Context m3953a() {
        Context context = this.f34761a.get();
        if (context == null) {
            destroy();
            MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Weak reference to Context in MoPubNative became null. This instance of MoPubNative is destroyed and No more requests will be processed.");
        }
        return context;
    }

    /* renamed from: a */
    public final void m3949a(RequestParameters requestParameters, Integer num) {
        Context a = m3953a();
        if (a != null) {
            MoPubLog.log(MoPubLog.AdLogEvent.LOAD_ATTEMPTED, new Object[0]);
            C6678f withAdUnitId = new C6678f(a).withAdUnitId(this.f34762b);
            withAdUnitId.m20082a(requestParameters);
            if (num != null) {
                withAdUnitId.m20083a(num.intValue());
            }
            String generateUrlString = withAdUnitId.generateUrlString(Constants.HOST);
            if (generateUrlString != null) {
                MoPubLog.AdLogEvent adLogEvent = MoPubLog.AdLogEvent.CUSTOM;
                MoPubLog.log(adLogEvent, "MoPubNative Loading ad from: " + generateUrlString);
            }
            m3946a(generateUrlString, (NativeErrorCode) null);
        }
    }

    /* renamed from: a */
    public final void m3948a(AdResponse adResponse) {
        Context a = m3953a();
        if (a != null) {
            C8947c cVar = new C8947c(adResponse);
            if (this.f34766f != null) {
                MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Native adapter is not null.");
                this.f34766f.m20103c();
            }
            C6669b bVar = new C6669b(cVar);
            this.f34766f = bVar;
            bVar.loadNativeAd(a, this.f34764d, adResponse);
        }
    }

    @VisibleForTesting
    /* renamed from: a */
    public void m3947a(VolleyError volleyError) {
        int i;
        MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Native ad request failed.", volleyError);
        if (volleyError instanceof MoPubNetworkError) {
            int i2 = C8948d.f34773a[((MoPubNetworkError) volleyError).getReason().ordinal()];
            if (i2 == 1) {
                this.f34763c.onNativeFail(NativeErrorCode.INVALID_RESPONSE);
            } else if (i2 == 2) {
                this.f34763c.onNativeFail(NativeErrorCode.INVALID_RESPONSE);
            } else if (i2 == 3) {
                MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, MoPubErrorCode.WARMUP);
                this.f34763c.onNativeFail(NativeErrorCode.EMPTY_AD_RESPONSE);
            } else if (i2 != 4) {
                this.f34763c.onNativeFail(NativeErrorCode.UNSPECIFIED);
            } else {
                this.f34763c.onNativeFail(NativeErrorCode.EMPTY_AD_RESPONSE);
            }
        } else {
            NetworkResponse networkResponse = volleyError.networkResponse;
            if (networkResponse != null && (i = networkResponse.statusCode) >= 500 && i < 600) {
                this.f34763c.onNativeFail(NativeErrorCode.SERVER_ERROR_RESPONSE_CODE);
            } else if (networkResponse != null || DeviceUtils.isNetworkAvailable(this.f34761a.get())) {
                this.f34763c.onNativeFail(NativeErrorCode.UNSPECIFIED);
            } else {
                MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, MoPubErrorCode.NO_CONNECTION);
                this.f34763c.onNativeFail(NativeErrorCode.CONNECTION_ERROR);
            }
        }
    }

    /* renamed from: a */
    public void m3946a(String str, NativeErrorCode nativeErrorCode) {
        Context a = m3953a();
        if (a != null) {
            AdLoader adLoader = this.f34765e;
            if (adLoader == null || !adLoader.hasMoreAds()) {
                if (TextUtils.isEmpty(str)) {
                    MoPubNativeNetworkListener moPubNativeNetworkListener = this.f34763c;
                    NativeErrorCode nativeErrorCode2 = nativeErrorCode;
                    if (nativeErrorCode == null) {
                        nativeErrorCode2 = NativeErrorCode.INVALID_REQUEST_URL;
                    }
                    moPubNativeNetworkListener.onNativeFail(nativeErrorCode2);
                    return;
                }
                this.f34765e = new AdLoader(str, AdFormat.NATIVE, this.f34762b, a, this.f34767g);
            }
            this.f34768h = this.f34765e.loadNextAd(nativeErrorCode);
        }
    }

    public void destroy() {
        this.f34761a.clear();
        Request request = this.f34768h;
        if (request != null) {
            request.cancel();
            this.f34768h = null;
        }
        this.f34765e = null;
        this.f34763c = f34760j;
    }

    public void makeRequest() {
        makeRequest(null);
    }

    public void makeRequest(RequestParameters requestParameters) {
        makeRequest(requestParameters, null);
    }

    public void makeRequest(RequestParameters requestParameters, Integer num) {
        Context a = m3953a();
        if (a != null) {
            if (!DeviceUtils.isNetworkAvailable(a)) {
                this.f34763c.onNativeFail(NativeErrorCode.CONNECTION_ERROR);
            } else {
                m3949a(requestParameters, num);
            }
        }
    }

    public void registerAdRenderer(MoPubAdRenderer moPubAdRenderer) {
        this.f34769i.registerAdRenderer(moPubAdRenderer);
    }

    public void setLocalExtras(Map<String, Object> map) {
        if (map == null) {
            this.f34764d = new TreeMap();
        } else {
            this.f34764d = new TreeMap(map);
        }
    }
}
