package com.aotter.net.trek.model;

import androidx.annotation.NonNull;
import com.aotter.net.trek.common.util.Json;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/model/Payload.class */
public class Payload {
    public static final String PAYLOAD_CATEGORIES_KEY = "categories";
    public static final String PAYLOAD_PLACE_KEY = "place";
    public String categories;
    @NonNull
    public final Map<String, String> mPayloadDetailsMap = new HashMap();
    public String place;

    public String getCategories() {
        return this.categories;
    }

    public String getPlace() {
        return this.place;
    }

    public void setCategories(String str) {
        if (str != null) {
            this.mPayloadDetailsMap.put("categories", str);
        }
    }

    public void setPlace(String str) {
        if (str != null) {
            this.mPayloadDetailsMap.put(PAYLOAD_PLACE_KEY, str);
        }
    }

    public JSONObject toJsonObject() {
        return new JSONObject(this.mPayloadDetailsMap);
    }

    public String toJsonString() {
        return Json.mapToJsonString(this.mPayloadDetailsMap);
    }

    public String toString() {
        return toJsonString();
    }
}
