package com.aotter.net.trek.model;

import androidx.annotation.NonNull;
import com.aotter.net.trek.common.util.Json;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/model/Location.class */
public class Location {
    public static final String LOCATION_ADDRESS_KEY = "address";
    public static final String LOCATION_CATEGORY_KEY = "categories";
    public static final String LOCATION_ID_KEY = "id";
    public static final String LOCATION_LAT_KEY = "lat";
    public static final String LOCATION_LNG_KEY = "lng";
    public static final String LOCATION_META_KEY = "meta";
    public static final String LOCATION_TITLE_KEY = "title";
    public static final String LOCATION_URL_KEY = "url";
    @NonNull
    public final Map<String, Object> mLocationDetailsMap = new HashMap();

    public String getID() {
        return String.valueOf(this.mLocationDetailsMap.get("id"));
    }

    public void setAddress(String str) {
        if (str != null) {
            this.mLocationDetailsMap.put("address", str);
        }
    }

    public void setCategories(String[] strArr) {
        if (strArr != null) {
            this.mLocationDetailsMap.put("categories", strArr);
        }
    }

    public void setID(String str) {
        if (str != null) {
            this.mLocationDetailsMap.put("id", str);
        }
    }

    public void setLat(Double d) {
        if (d != null) {
            this.mLocationDetailsMap.put(LOCATION_LAT_KEY, d);
        }
    }

    public void setLng(Double d) {
        if (d != null) {
            this.mLocationDetailsMap.put(LOCATION_LNG_KEY, d);
        }
    }

    public void setMeta(JSONObject jSONObject) {
        if (jSONObject != null) {
            this.mLocationDetailsMap.put("meta", jSONObject);
        }
    }

    public void setTitle(String str) {
        if (str != null) {
            this.mLocationDetailsMap.put("title", str);
        }
    }

    public void setUrl(String str) {
        if (str != null) {
            this.mLocationDetailsMap.put("url", str);
        }
    }

    public JSONObject toJsonObject() {
        return new JSONObject(this.mLocationDetailsMap);
    }

    public String toJsonString() {
        return Json.mapToJsonString(this.mLocationDetailsMap);
    }

    public String toString() {
        return toJsonString();
    }
}
