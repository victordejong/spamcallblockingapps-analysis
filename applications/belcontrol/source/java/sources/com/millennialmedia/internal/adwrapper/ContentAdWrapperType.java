package com.millennialmedia.internal.adwrapper;

import android.text.TextUtils;
import com.millennialmedia.CreativeInfo;
import com.millennialmedia.MMLog;
import com.millennialmedia.internal.AdMetadata;
import com.millennialmedia.internal.AdPlacement;
import com.millennialmedia.internal.AdPlacementReporter;
import com.millennialmedia.internal.adadapters.AdAdapter;
import java.security.InvalidParameterException;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/adwrapper/ContentAdWrapperType.class */
public class ContentAdWrapperType implements AdWrapperType {
    private static final String TAG = "ContentAdWrapperType";

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/adwrapper/ContentAdWrapperType$ContentAdWrapper.class */
    public static class ContentAdWrapper extends AdWrapper {
        public String adnet;
        public String creativeId;
        public final String value;

        public ContentAdWrapper(String str, String str2, AdMetadata adMetadata) {
            this(str, str2, adMetadata, false);
        }

        public ContentAdWrapper(String str, String str2, AdMetadata adMetadata, boolean z) {
            super(str, z);
            if (!TextUtils.isEmpty(str2)) {
                this.value = str2;
                this.adMetadata.addAll(adMetadata);
                return;
            }
            throw new InvalidParameterException("value is required");
        }

        @Override // com.millennialmedia.internal.adwrapper.AdWrapper
        public AdAdapter getAdAdapter(AdPlacement adPlacement, AdPlacementReporter.PlayListItemReporter playListItemReporter, AtomicInteger atomicInteger) {
            if (MMLog.isDebugEnabled()) {
                String str = ContentAdWrapperType.TAG;
                MMLog.m4070d(str, "Processing ad content playlist item ID: " + this.itemId);
            }
            AdAdapter adAdapterForContent = getAdAdapterForContent(adPlacement, this.value);
            if (adAdapterForContent == null) {
                MMLog.m4068e(ContentAdWrapperType.TAG, String.format("Unable to find adapter for ad content playlist item, placement ID <%s> and content <%s>", adPlacement.placementId, this.value));
                return null;
            }
            adAdapterForContent.setCreativeInfo(new CreativeInfo(this.creativeId, this.adnet));
            adAdapterForContent.setAdMetadata(this.adMetadata);
            return adAdapterForContent;
        }
    }

    @Override // com.millennialmedia.internal.adwrapper.AdWrapperType
    public AdWrapper createAdWrapperFromJSON(JSONObject jSONObject, String str) {
        ContentAdWrapper contentAdWrapper = new ContentAdWrapper(jSONObject.getString(AdWrapperType.ITEM_KEY), jSONObject.getString("value"), null, jSONObject.optBoolean(AdWrapperType.ENHANCED_AD_CONTROL_KEY, false));
        contentAdWrapper.creativeId = jSONObject.optString("creativeid", null);
        contentAdWrapper.adnet = jSONObject.optString("adnet", null);
        return contentAdWrapper;
    }
}
