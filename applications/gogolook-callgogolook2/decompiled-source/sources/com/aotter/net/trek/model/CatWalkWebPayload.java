package com.aotter.net.trek.model;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.aotter.net.gson.annotations.SerializedName;
import com.aotter.net.trek.common.Preconditions;
import com.aotter.net.trek.common.util.Json;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/model/CatWalkWebPayload.class */
public class CatWalkWebPayload {
    public static final String CATWALK_AD_KEY = "ad";
    public static final String CATWALK_DEVICE_KEY = "device";
    public static final String CATWALK_SDK_VERSION_KEY = "sdkVersion";
    public static final String CATWALK_USER_KEY = "user";
    @NonNull
    public final Map<String, Object> mCatWalkWebPayloadDetailsMap;

    /* renamed from: com.aotter.net.trek.model.CatWalkWebPayload$Ad */
    /* loaded from: classes-dex2jar.jar:com/aotter/net/trek/model/CatWalkWebPayload$Ad.class */
    public class C1753Ad implements Serializable {
        @SerializedName("isOutAppBrowser")
        public boolean isOutAppBrowser;
        @SerializedName("setId")
        public String setId;
        @SerializedName("unitInstanceId")
        public String unitInstanceId;
        @SerializedName("url_original")
        public String urlOriginal;
        @SerializedName("url_session")
        public String urlSession;
        @SerializedName("uuid")
        public String uuid;
        @SerializedName("webViewPayload")
        public Object webViewPayload;

        public C1753Ad(NativeAd nativeAd) {
            this.unitInstanceId = nativeAd.getUnitInstanceId();
            this.uuid = nativeAd.getAdUUID();
            this.setId = nativeAd.getAdSetId();
            this.urlOriginal = nativeAd.getUrlOriginal();
            this.isOutAppBrowser = nativeAd.isOutAppBrowser();
            this.urlSession = nativeAd.getUrlSession();
            this.webViewPayload = nativeAd.getInteractSrc().getWebViewPayload();
        }

        public JSONObject toJsonObject(String str) {
            try {
                return new JSONObject(str);
            } catch (JSONException e) {
                e.printStackTrace();
                return null;
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/aotter/net/trek/model/CatWalkWebPayload$Builder.class */
    public class Builder {
        @NonNull
        public final Map<String, Object> catWalkWebPayloadMap = new HashMap();

        @NonNull
        /* renamed from: ad */
        public Builder m36341ad(@Nullable JSONObject jSONObject) {
            if (jSONObject != null) {
                this.catWalkWebPayloadMap.put(CatWalkWebPayload.CATWALK_AD_KEY, jSONObject);
            }
            return this;
        }

        @NonNull
        public CatWalkWebPayload build() {
            return new CatWalkWebPayload(this.catWalkWebPayloadMap);
        }

        @NonNull
        public Builder device(@Nullable JSONObject jSONObject) {
            if (jSONObject != null) {
                this.catWalkWebPayloadMap.put("device", jSONObject);
            }
            return this;
        }

        @NonNull
        public Builder sdkVersion(@Nullable String str) {
            if (str != null) {
                this.catWalkWebPayloadMap.put("sdkVersion", str);
            }
            return this;
        }

        @NonNull
        public Builder user(@Nullable JSONObject jSONObject) {
            if (jSONObject != null) {
                this.catWalkWebPayloadMap.put("user", jSONObject);
            }
            return this;
        }
    }

    public CatWalkWebPayload(@NonNull Map<String, Object> map) {
        Preconditions.checkNotNull(map);
        this.mCatWalkWebPayloadDetailsMap = map;
    }

    public String toJsonString() {
        return Json.mapToJsonString(this.mCatWalkWebPayloadDetailsMap);
    }

    public String toString() {
        return toJsonString();
    }
}
