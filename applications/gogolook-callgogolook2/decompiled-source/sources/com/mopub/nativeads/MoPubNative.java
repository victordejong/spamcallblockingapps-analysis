package com.mopub.nativeads;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
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
import p081h.p430l.p435d.C10726b;
import p081h.p430l.p435d.C10735e;
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubNative.class */
public class MoPubNative {

    /* renamed from: j */
    public static final MoPubNativeNetworkListener f9140j = new C3969a();
    @NonNull

    /* renamed from: a */
    public final WeakReference<Context> f9141a;
    @NonNull

    /* renamed from: b */
    public final String f9142b;
    @NonNull

    /* renamed from: c */
    public MoPubNativeNetworkListener f9143c;
    @NonNull

    /* renamed from: d */
    public Map<String, Object> f9144d;
    @Nullable

    /* renamed from: e */
    public AdLoader f9145e;
    @Nullable

    /* renamed from: f */
    public C10726b f9146f;
    @NonNull

    /* renamed from: g */
    public final AdLoader.Listener f9147g;
    @Nullable

    /* renamed from: h */
    public Request f9148h;
    @NonNull

    /* renamed from: i */
    public AdRendererRegistry f9149i;

    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener.class */
    public interface MoPubNativeNetworkListener {
        void onNativeFail(NativeErrorCode nativeErrorCode);

        void onNativeLoad(NativeAd nativeAd);
    }

    /* renamed from: com.mopub.nativeads.MoPubNative$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubNative$a.class */
    public static final class C3969a implements MoPubNativeNetworkListener {
        @Override // com.mopub.nativeads.MoPubNative.MoPubNativeNetworkListener
        public void onNativeFail(NativeErrorCode nativeErrorCode) {
        }

        @Override // com.mopub.nativeads.MoPubNative.MoPubNativeNetworkListener
        public void onNativeLoad(@NonNull NativeAd nativeAd) {
            nativeAd.destroy();
        }
    }

    /* renamed from: com.mopub.nativeads.MoPubNative$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubNative$b.class */
    public class C3970b implements AdLoader.Listener {
        public C3970b() {
        }

        @Override // com.mopub.volley.Response.ErrorListener
        public void onErrorResponse(@NonNull VolleyError volleyError) {
            MoPubNative.this.m30137a(volleyError);
        }

        @Override // com.mopub.network.AdLoader.Listener
        public void onSuccess(@NonNull AdResponse adResponse) {
            MoPubNative.this.m30138a(adResponse);
        }
    }

    /* renamed from: com.mopub.nativeads.MoPubNative$c */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubNative$c.class */
    public class C3971c implements CustomEventNative.CustomEventNativeListener {

        /* renamed from: a */
        public final /* synthetic */ AdResponse f9151a;

        public C3971c(AdResponse adResponse) {
            this.f9151a = adResponse;
        }

        @Override // com.mopub.nativeads.CustomEventNative.CustomEventNativeListener
        public void onNativeAdFailed(NativeErrorCode nativeErrorCode) {
            MoPubLog.log(MoPubLog.AdLogEvent.LOAD_FAILED, Integer.valueOf(nativeErrorCode.getIntCode()), nativeErrorCode.toString());
            MoPubNative.this.f9146f = null;
            MoPubNative.this.m30136a("", nativeErrorCode);
        }

        @Override // com.mopub.nativeads.CustomEventNative.CustomEventNativeListener
        public void onNativeAdLoaded(@NonNull BaseNativeAd baseNativeAd) {
            MoPubLog.log(MoPubLog.AdLogEvent.LOAD_SUCCESS, new Object[0]);
            MoPubNative.this.f9146f = null;
            Context a = MoPubNative.this.m30143a();
            if (a != null) {
                MoPubAdRenderer rendererForAd = MoPubNative.this.f9149i.getRendererForAd(baseNativeAd);
                if (rendererForAd == null) {
                    onNativeAdFailed(NativeErrorCode.NATIVE_RENDERER_CONFIGURATION_ERROR);
                    return;
                }
                if (MoPubNative.this.f9145e != null) {
                    MoPubNative.this.f9145e.creativeDownloadSuccess();
                }
                MoPubNative.this.f9143c.onNativeLoad(new NativeAd(a, this.f9151a, MoPubNative.this.f9142b, baseNativeAd, rendererForAd));
            }
        }
    }

    /* renamed from: com.mopub.nativeads.MoPubNative$d */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubNative$d.class */
    public static /* synthetic */ class C3972d {

        /* renamed from: a */
        public static final /* synthetic */ int[] f9153a = new int[MoPubNetworkError.Reason.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            try {
                f9153a[MoPubNetworkError.Reason.BAD_BODY.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f9153a[MoPubNetworkError.Reason.BAD_HEADER_DATA.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f9153a[MoPubNetworkError.Reason.WARMING_UP.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f9153a[MoPubNetworkError.Reason.NO_FILL.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f9153a[MoPubNetworkError.Reason.UNSPECIFIED.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    @VisibleForTesting
    public MoPubNative(@NonNull Context context, @NonNull String str, @NonNull AdRendererRegistry adRendererRegistry, @NonNull MoPubNativeNetworkListener moPubNativeNetworkListener) {
        this.f9144d = new TreeMap();
        Preconditions.checkNotNull(context, "context may not be null.");
        Preconditions.checkNotNull(str, "AdUnitId may not be null.");
        Preconditions.checkNotNull(adRendererRegistry, "AdRendererRegistry may not be null.");
        Preconditions.checkNotNull(moPubNativeNetworkListener, "MoPubNativeNetworkListener may not be null.");
        ManifestUtils.checkNativeActivitiesDeclared(context);
        this.f9141a = new WeakReference<>(context);
        this.f9142b = str;
        this.f9143c = moPubNativeNetworkListener;
        this.f9149i = adRendererRegistry;
        this.f9147g = new C3970b();
    }

    public MoPubNative(@NonNull Context context, @NonNull String str, @NonNull MoPubNativeNetworkListener moPubNativeNetworkListener) {
        this(context, str, new AdRendererRegistry(), moPubNativeNetworkListener);
    }

    @Nullable
    @VisibleForTesting
    /* renamed from: a */
    public Context m30143a() {
        Context context = this.f9141a.get();
        if (context == null) {
            destroy();
            MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Weak reference to Context in MoPubNative became null. This instance of MoPubNative is destroyed and No more requests will be processed.");
        }
        return context;
    }

    /* renamed from: a */
    public final void m30139a(@Nullable RequestParameters requestParameters, @Nullable Integer num) {
        Context a = m30143a();
        if (a != null) {
            MoPubLog.log(MoPubLog.AdLogEvent.LOAD_ATTEMPTED, new Object[0]);
            C10735e a2 = new C10735e(a).withAdUnitId(this.f9142b).m10781a(requestParameters);
            if (num != null) {
                a2.m10782a(num.intValue());
            }
            String generateUrlString = a2.generateUrlString(Constants.HOST);
            if (generateUrlString != null) {
                MoPubLog.AdLogEvent adLogEvent = MoPubLog.AdLogEvent.CUSTOM;
                MoPubLog.log(adLogEvent, "MoPubNative Loading ad from: " + generateUrlString);
            }
            m30136a(generateUrlString, (NativeErrorCode) null);
        }
    }

    /* renamed from: a */
    public final void m30138a(@NonNull AdResponse adResponse) {
        Context a = m30143a();
        if (a != null) {
            C3971c cVar = new C3971c(adResponse);
            if (this.f9146f != null) {
                MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Native adapter is not null.");
                this.f9146f.m10803c();
            }
            this.f9146f = new C10726b(cVar);
            this.f9146f.loadNativeAd(a, this.f9144d, adResponse);
        }
    }

    @VisibleForTesting
    /* renamed from: a */
    public void m30137a(@NonNull VolleyError volleyError) {
        int i;
        MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Native ad request failed.", volleyError);
        if (volleyError instanceof MoPubNetworkError) {
            int i2 = C3972d.f9153a[((MoPubNetworkError) volleyError).getReason().ordinal()];
            if (i2 == 1) {
                this.f9143c.onNativeFail(NativeErrorCode.INVALID_RESPONSE);
            } else if (i2 == 2) {
                this.f9143c.onNativeFail(NativeErrorCode.INVALID_RESPONSE);
            } else if (i2 == 3) {
                MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, MoPubErrorCode.WARMUP);
                this.f9143c.onNativeFail(NativeErrorCode.EMPTY_AD_RESPONSE);
            } else if (i2 != 4) {
                this.f9143c.onNativeFail(NativeErrorCode.UNSPECIFIED);
            } else {
                this.f9143c.onNativeFail(NativeErrorCode.EMPTY_AD_RESPONSE);
            }
        } else {
            NetworkResponse networkResponse = volleyError.networkResponse;
            if (networkResponse != null && (i = networkResponse.statusCode) >= 500 && i < 600) {
                this.f9143c.onNativeFail(NativeErrorCode.SERVER_ERROR_RESPONSE_CODE);
            } else if (networkResponse != null || DeviceUtils.isNetworkAvailable(this.f9141a.get())) {
                this.f9143c.onNativeFail(NativeErrorCode.UNSPECIFIED);
            } else {
                MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, MoPubErrorCode.NO_CONNECTION);
                this.f9143c.onNativeFail(NativeErrorCode.CONNECTION_ERROR);
            }
        }
    }

    /* renamed from: a */
    public void m30136a(@Nullable String str, @Nullable NativeErrorCode nativeErrorCode) {
        Context a = m30143a();
        if (a != null) {
            AdLoader adLoader = this.f9145e;
            if (adLoader == null || !adLoader.hasMoreAds()) {
                if (TextUtils.isEmpty(str)) {
                    MoPubNativeNetworkListener moPubNativeNetworkListener = this.f9143c;
                    NativeErrorCode nativeErrorCode2 = nativeErrorCode;
                    if (nativeErrorCode == null) {
                        nativeErrorCode2 = NativeErrorCode.INVALID_REQUEST_URL;
                    }
                    moPubNativeNetworkListener.onNativeFail(nativeErrorCode2);
                    return;
                }
                this.f9145e = new AdLoader(str, AdFormat.NATIVE, this.f9142b, a, this.f9147g);
            }
            this.f9148h = this.f9145e.loadNextAd(nativeErrorCode);
        }
    }

    @NonNull
    @Deprecated
    @VisibleForTesting
    /* renamed from: b */
    public MoPubNativeNetworkListener m30135b() {
        return this.f9143c;
    }

    public void destroy() {
        this.f9141a.clear();
        Request request = this.f9148h;
        if (request != null) {
            request.cancel();
            this.f9148h = null;
        }
        this.f9145e = null;
        this.f9143c = f9140j;
    }

    public void makeRequest() {
        makeRequest(null);
    }

    public void makeRequest(@Nullable RequestParameters requestParameters) {
        makeRequest(requestParameters, null);
    }

    public void makeRequest(@Nullable RequestParameters requestParameters, @Nullable Integer num) {
        Context a = m30143a();
        if (a != null) {
            if (!DeviceUtils.isNetworkAvailable(a)) {
                this.f9143c.onNativeFail(NativeErrorCode.CONNECTION_ERROR);
            } else {
                m30139a(requestParameters, num);
            }
        }
    }

    public void registerAdRenderer(MoPubAdRenderer moPubAdRenderer) {
        this.f9149i.registerAdRenderer(moPubAdRenderer);
    }

    public void setLocalExtras(@Nullable Map<String, Object> map) {
        if (map == null) {
            this.f9144d = new TreeMap();
        } else {
            this.f9144d = new TreeMap(map);
        }
    }
}
