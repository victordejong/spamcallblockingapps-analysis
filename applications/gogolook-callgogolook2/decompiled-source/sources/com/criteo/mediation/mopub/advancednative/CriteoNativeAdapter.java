package com.criteo.mediation.mopub.advancednative;

import android.content.Context;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import com.criteo.mediation.mopub.C1892b;
import com.criteo.publisher.advancednative.CriteoNativeLoader;
import com.criteo.publisher.model.NativeAdUnit;
import com.mopub.common.logging.MoPubLog;
import com.mopub.nativeads.CustomEventNative;
import com.mopub.nativeads.NativeErrorCode;
import java.util.Map;
@Keep
/* loaded from: classes-dex2jar.jar:com/criteo/mediation/mopub/advancednative/CriteoNativeAdapter.class */
public class CriteoNativeAdapter extends CustomEventNative {
    public static final String ADUNIT_ID = "adUnitId";
    public static final String CRITEO_PUBLISHER_ID = "cpId";
    public static final String TAG = "CriteoNativeAdapter";
    @NonNull
    public final C1892b criteoInitializer;

    public CriteoNativeAdapter() {
        this(new C1892b());
    }

    public CriteoNativeAdapter(@NonNull C1892b bVar) {
        this.criteoInitializer = bVar;
    }

    @Override // com.mopub.nativeads.CustomEventNative
    public void loadNativeAd(@NonNull Context context, @NonNull CustomEventNative.CustomEventNativeListener customEventNativeListener, @NonNull Map<String, Object> map, @NonNull Map<String, String> map2) {
        String str = map2.get("cpId");
        String str2 = map2.get("adUnitId");
        if (str == null || str2 == null) {
            MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_FAILED, TAG, "CriteoPublisherId and AdUnit ID should not be null");
            customEventNativeListener.onNativeAdFailed(NativeErrorCode.NATIVE_ADAPTER_CONFIGURATION_ERROR);
            return;
        }
        this.criteoInitializer.m36071b(context, str);
        new CriteoNativeLoader(new NativeAdUnit(str2), new C1890a(customEventNativeListener), new C1891b()).loadAd();
    }
}
