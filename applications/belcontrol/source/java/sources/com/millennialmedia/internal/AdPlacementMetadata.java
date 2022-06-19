package com.millennialmedia.internal;

import com.millennialmedia.MMLog;
import com.millennialmedia.internal.utils.EnvironmentUtils;
import com.millennialmedia.internal.utils.Utils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/AdPlacementMetadata.class */
public abstract class AdPlacementMetadata<MetadataType> {
    public static final String METADATA_KEY_CUSTOM_TARGETING = "customTargeting";
    public static final String METADATA_KEY_HEIGHT = "height";
    public static final String METADATA_KEY_IMPRESSION_GROUP = "impressionGroup";
    public static final String METADATA_KEY_KEYWORDS = "keywords";
    public static final String METADATA_KEY_NATIVE_TYPES = "nativeTypes";
    public static final String METADATA_KEY_PLACEMENT_ID = "placementId";
    public static final String METADATA_KEY_PLACEMENT_TYPE = "placementType";
    public static final String METADATA_KEY_SUPPORTED_ORIENTATIONS = "supportedOrientations";
    public static final String METADATA_KEY_WIDTH = "width";
    private static final String TAG = "com.millennialmedia.internal.AdPlacementMetadata";
    private static final List<String> validOrientations = Arrays.asList(EnvironmentUtils.ORIENTATION_PORTRAIT, EnvironmentUtils.ORIENTATION_LANDSCAPE);
    private Map<String, String> customTargeting;
    private String impressionGroup;
    private String keywords;
    private final String placementType;
    private List supportedOrientations;

    public AdPlacementMetadata(String str) {
        this.placementType = str;
    }

    public List<String> buildValidatedList(String str, String str2, List<String> list) {
        ArrayList arrayList = null;
        if (str2 != null) {
            arrayList = new ArrayList();
            for (String str3 : str2.split(",")) {
                String trim = str3.trim();
                if (!list.contains(trim)) {
                    MMLog.m4068e(TAG, "Value <" + trim + "> is not a valid " + str);
                } else if (!arrayList.contains(trim)) {
                    arrayList.add(trim);
                }
            }
            if (arrayList.size() == 0) {
                arrayList = null;
            }
        }
        return arrayList;
    }

    public String getCustomTargeting(String str) {
        Map<String, String> map = this.customTargeting;
        if (map == null) {
            return null;
        }
        return map.get(str);
    }

    public String getImpressionGroup() {
        return this.impressionGroup;
    }

    public String getKeywords() {
        return this.keywords;
    }

    public List getSupportedOrientations() {
        return this.supportedOrientations;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public MetadataType setCustomTargeting(String str, String str2) {
        if (Utils.isEmpty(str)) {
            return this;
        }
        if (this.customTargeting == null) {
            this.customTargeting = new HashMap();
        }
        if (Utils.isEmpty(str2)) {
            this.customTargeting.remove(str);
        } else {
            this.customTargeting.put(str, str2);
        }
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public MetadataType setImpressionGroup(String str) {
        this.impressionGroup = str;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public MetadataType setKeywords(String str) {
        this.keywords = str;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public MetadataType setSupportedOrientations(String str) {
        this.supportedOrientations = buildValidatedList("orientation", str, validOrientations);
        return this;
    }

    public Map<String, Object> toMap(AdPlacement adPlacement) {
        return toMap(adPlacement.placementId);
    }

    public Map<String, Object> toMap(String str) {
        HashMap hashMap = new HashMap();
        hashMap.put(METADATA_KEY_PLACEMENT_ID, str);
        hashMap.put(METADATA_KEY_PLACEMENT_TYPE, this.placementType);
        Utils.injectIfNotNull(hashMap, METADATA_KEY_KEYWORDS, this.keywords);
        Utils.injectIfNotNull(hashMap, METADATA_KEY_SUPPORTED_ORIENTATIONS, this.supportedOrientations);
        Utils.injectIfNotNull(hashMap, METADATA_KEY_IMPRESSION_GROUP, this.impressionGroup);
        Utils.injectIfNotNull(hashMap, METADATA_KEY_CUSTOM_TARGETING, this.customTargeting);
        return hashMap;
    }
}
