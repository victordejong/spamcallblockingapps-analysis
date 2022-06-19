package com.millennialmedia.internal.adwrapper;

import android.text.TextUtils;
import com.millennialmedia.MMLog;
import com.millennialmedia.internal.AdMetadata;
import com.millennialmedia.internal.AdPlacement;
import com.millennialmedia.internal.AdPlacementReporter;
import com.millennialmedia.internal.adadapters.AdAdapter;
import com.millennialmedia.internal.adcontrollers.AdController;
import com.millennialmedia.internal.utils.HttpUtils;
import java.security.InvalidParameterException;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/adwrapper/AdWrapper.class */
public abstract class AdWrapper {
    private static final String TAG = "AdWrapper";
    public AdMetadata adMetadata;
    public final String itemId;

    public AdWrapper(String str) {
        this(str, false);
    }

    public AdWrapper(String str, boolean z) {
        if (!TextUtils.isEmpty(str)) {
            this.itemId = str;
            AdMetadata adMetadata = new AdMetadata();
            this.adMetadata = adMetadata;
            adMetadata.put(AdMetadata.ENHANCED_AD_CONTROL_ENABLED, String.valueOf(z));
            return;
        }
        throw new InvalidParameterException("itemId is required");
    }

    public abstract AdAdapter getAdAdapter(AdPlacement adPlacement, AdPlacementReporter.PlayListItemReporter playListItemReporter, AtomicInteger atomicInteger);

    public AdAdapter getAdAdapterForContent(AdPlacement adPlacement, String str) {
        String str2;
        String str3;
        if (MMLog.isDebugEnabled()) {
            MMLog.m4070d(TAG, "Attempting to get ad adapter for ad placement ID: " + adPlacement.placementId);
        }
        if (str == null) {
            str2 = TAG;
            str3 = "Unable to find ad adapter, ad content is null";
        } else {
            Class<?> controllerClassForContent = AdController.getControllerClassForContent(str);
            if (controllerClassForContent != null) {
                AdAdapter adapterInstance = AdAdapter.getAdapterInstance(adPlacement.getClass(), controllerClassForContent);
                if (adapterInstance != null) {
                    if (MMLog.isDebugEnabled()) {
                        MMLog.m4070d(TAG, String.format("Found ad adapter <%s> for placement ID <%s>", adapterInstance.toString(), adPlacement.placementId));
                    }
                    adapterInstance.setContent(str);
                }
                return adapterInstance;
            }
            str2 = TAG;
            str3 = "Unable to determine ad controller type for specified ad content <" + str + ">";
        }
        MMLog.m4068e(str2, str3);
        return null;
    }

    public boolean isEnhancedAdControlEnabled() {
        return this.adMetadata.containsKey(AdMetadata.ENHANCED_AD_CONTROL_ENABLED) ? Boolean.parseBoolean(this.adMetadata.get(AdMetadata.ENHANCED_AD_CONTROL_ENABLED)) : false;
    }

    public int setErrorStatusFromResponseCode(HttpUtils.Response response) {
        int i = response.code;
        return (i == 408 || i == 504) ? -2 : -1;
    }
}
