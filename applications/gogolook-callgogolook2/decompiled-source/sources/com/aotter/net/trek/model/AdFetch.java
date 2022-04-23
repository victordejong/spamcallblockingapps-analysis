package com.aotter.net.trek.model;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.aotter.net.trek.common.Preconditions;
import com.aotter.net.trek.common.util.Json;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/model/AdFetch.class */
public class AdFetch {
    public static final String AD_ADTYPE_KEY = "adType";
    public static final String AD_BLANK_KEY = "returnBlank";
    public static final String AD_DEVICE_KEY = "device";
    public static final String AD_NUMBER_KEY = "fetchNumber";
    public static final String AD_PAYLOAD_KEY = "payload";
    public static final String AD_SDK_VERSION_KEY = "sdkVersion";
    public static final String AD_USER_KEY = "user";
    @NonNull
    public final Map<String, Object> mFetchDetailsMap;

    /* loaded from: classes-dex2jar.jar:com/aotter/net/trek/model/AdFetch$Builder.class */
    public class Builder {
        @NonNull
        public final Map<String, Object> fetchDetailsMap = new HashMap();

        @NonNull
        public Builder adType(@Nullable String str) {
            if (str != null) {
                this.fetchDetailsMap.put(AdFetch.AD_ADTYPE_KEY, str);
            }
            return this;
        }

        @NonNull
        public AdFetch build() {
            return new AdFetch(this.fetchDetailsMap);
        }

        @NonNull
        public Builder device(@Nullable JSONObject jSONObject) {
            if (jSONObject != null) {
                this.fetchDetailsMap.put("device", jSONObject);
            }
            return this;
        }

        @NonNull
        public Builder fetchNumber(@Nullable int i) {
            this.fetchDetailsMap.put(AdFetch.AD_NUMBER_KEY, Integer.valueOf(i));
            return this;
        }

        @NonNull
        public Builder payload(@Nullable JSONObject jSONObject) {
            if (jSONObject != null) {
                this.fetchDetailsMap.put(AdFetch.AD_PAYLOAD_KEY, jSONObject);
            }
            return this;
        }

        @NonNull
        public Builder returnBlank(@Nullable boolean z) {
            this.fetchDetailsMap.put(AdFetch.AD_BLANK_KEY, Boolean.valueOf(z));
            return this;
        }

        @NonNull
        public Builder sdkVersion(@Nullable String str) {
            if (str != null) {
                this.fetchDetailsMap.put("sdkVersion", str);
            }
            return this;
        }

        @NonNull
        public Builder user(@Nullable JSONObject jSONObject) {
            if (jSONObject != null) {
                this.fetchDetailsMap.put("user", jSONObject);
            }
            return this;
        }
    }

    public AdFetch(@NonNull Map<String, Object> map) {
        Preconditions.checkNotNull(map);
        this.mFetchDetailsMap = map;
    }

    public String toJsonString() {
        return Json.mapToJsonString(this.mFetchDetailsMap);
    }

    public String toString() {
        return toJsonString();
    }
}
