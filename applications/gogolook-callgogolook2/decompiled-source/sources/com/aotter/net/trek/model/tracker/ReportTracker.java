package com.aotter.net.trek.model.tracker;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.aotter.net.trek.common.Preconditions;
import com.aotter.net.trek.common.util.Json;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/model/tracker/ReportTracker.class */
public class ReportTracker {
    public static final String READ_DEVICE_KEY = "device";
    public static final String READ_ENTITY_KEY = "entity";
    public static final String READ_LOCATION_KEY = "location";
    public static final String READ_SDK_VERSION_KEY = "sdkVersion";
    public static final String READ_TIME_KEY = "timespan";
    public static final String READ_TYPE_KEY = "type";
    public static final String READ_USER_KEY = "user";
    @NonNull
    public final Map<String, Object> mReportReadDetailsMap;

    /* loaded from: classes-dex2jar.jar:com/aotter/net/trek/model/tracker/ReportTracker$Builder.class */
    public class Builder {
        @NonNull
        public final Map<String, Object> reportReadDetailsMap = new HashMap();

        @NonNull
        public ReportTracker build() {
            return new ReportTracker(this.reportReadDetailsMap);
        }

        @NonNull
        public Builder device(@Nullable JSONObject jSONObject) {
            if (jSONObject != null) {
                this.reportReadDetailsMap.put("device", jSONObject);
            }
            return this;
        }

        @NonNull
        public Builder entity(@Nullable JSONObject jSONObject) {
            if (jSONObject != null) {
                this.reportReadDetailsMap.put(ReportTracker.READ_ENTITY_KEY, jSONObject);
            }
            return this;
        }

        @NonNull
        public Builder location(@Nullable JSONObject jSONObject) {
            if (jSONObject != null) {
                this.reportReadDetailsMap.put("location", jSONObject);
            }
            return this;
        }

        @NonNull
        public Builder sdkVersion(@Nullable String str) {
            if (str != null) {
                this.reportReadDetailsMap.put("sdkVersion", str);
            }
            return this;
        }

        @NonNull
        public Builder timespan(@Nullable int i) {
            this.reportReadDetailsMap.put(ReportTracker.READ_TIME_KEY, Integer.valueOf(i));
            return this;
        }

        @NonNull
        public Builder type(@Nullable String str) {
            if (str != null) {
                this.reportReadDetailsMap.put("type", str);
            }
            return this;
        }

        @NonNull
        public Builder user(@Nullable JSONObject jSONObject) {
            if (jSONObject != null) {
                this.reportReadDetailsMap.put("user", jSONObject);
            }
            return this;
        }
    }

    public ReportTracker(@NonNull Map<String, Object> map) {
        Preconditions.checkNotNull(map);
        this.mReportReadDetailsMap = map;
    }

    public String toJsonString() {
        return Json.mapToJsonString(this.mReportReadDetailsMap);
    }

    public String toString() {
        return toJsonString();
    }
}
