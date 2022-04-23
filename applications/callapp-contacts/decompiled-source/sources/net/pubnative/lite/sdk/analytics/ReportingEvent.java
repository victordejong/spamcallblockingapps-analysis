package net.pubnative.lite.sdk.analytics;

import android.text.TextUtils;
import net.pubnative.lite.sdk.analytics.Reporting;
import net.pubnative.lite.sdk.utils.Logger;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/analytics/ReportingEvent.class */
public class ReportingEvent {
    private static final String TAG = "ReportingEvent";
    private final JSONObject eventObject;

    public ReportingEvent() {
        this.eventObject = new JSONObject();
    }

    public ReportingEvent(String str) {
        JSONObject jSONObject = new JSONObject();
        this.eventObject = jSONObject;
        try {
            if (!TextUtils.isEmpty(str)) {
                jSONObject.put(Reporting.Key.AD_FORMAT, str);
            }
        } catch (JSONException e) {
            Logger.e(TAG, e.getMessage());
        }
    }

    public ReportingEvent(String str, String str2) {
        JSONObject jSONObject = new JSONObject();
        this.eventObject = jSONObject;
        try {
            if (!TextUtils.isEmpty(str)) {
                jSONObject.put(Reporting.Key.AD_FORMAT, str);
            }
            jSONObject.put(Reporting.Key.AD_SIZE, str2);
        } catch (JSONException e) {
            Logger.e(TAG, e.getMessage());
        }
    }

    public String getAdFormat() {
        try {
            return this.eventObject.getString(Reporting.Key.AD_FORMAT);
        } catch (JSONException e) {
            Logger.e(TAG, e.getMessage());
            return null;
        }
    }

    public String getAdSize() {
        try {
            return this.eventObject.getString(Reporting.Key.AD_SIZE);
        } catch (JSONException e) {
            Logger.e(TAG, e.getMessage());
            return null;
        }
    }

    public String getCampaignId() {
        try {
            return this.eventObject.getString(Reporting.Key.CAMPAIGN_ID);
        } catch (JSONException e) {
            Logger.e(TAG, e.getMessage());
            return null;
        }
    }

    public String getCategoryId() {
        try {
            return this.eventObject.getString(Reporting.Key.CATEGORY_ID);
        } catch (JSONException e) {
            Logger.e(TAG, e.getMessage());
            return null;
        }
    }

    public String getCreativeId() {
        try {
            return this.eventObject.getString(Reporting.Key.CREATIVE_ID);
        } catch (JSONException e) {
            Logger.e(TAG, e.getMessage());
            return null;
        }
    }

    public String getEventType() {
        try {
            return this.eventObject.getString(Reporting.Key.EVENT_TYPE);
        } catch (JSONException e) {
            Logger.e(TAG, e.getMessage());
            return null;
        }
    }

    public String getTimestamp() {
        try {
            return this.eventObject.getString(Reporting.Key.TIMESTAMP);
        } catch (JSONException e) {
            Logger.e(TAG, e.getMessage());
            return null;
        }
    }

    public void setAdFormat(String str) {
        try {
            if (!TextUtils.isEmpty(str)) {
                this.eventObject.put(Reporting.Key.AD_FORMAT, str);
            }
        } catch (JSONException e) {
            Logger.e(TAG, e.getMessage());
        }
    }

    public void setAdSize(String str) {
        try {
            this.eventObject.put(Reporting.Key.AD_SIZE, str);
        } catch (JSONException e) {
            Logger.e(TAG, e.getMessage());
        }
    }

    public void setCampaignId(String str) {
        try {
            if (!TextUtils.isEmpty(str)) {
                this.eventObject.put(Reporting.Key.CAMPAIGN_ID, str);
            }
        } catch (JSONException e) {
            Logger.e(TAG, e.getMessage());
        }
    }

    public void setCategoryId(String str) {
        try {
            if (!TextUtils.isEmpty(str)) {
                this.eventObject.put(Reporting.Key.CATEGORY_ID, str);
            }
        } catch (JSONException e) {
            Logger.e(TAG, e.getMessage());
        }
    }

    public void setCreativeId(String str) {
        try {
            if (!TextUtils.isEmpty(str)) {
                this.eventObject.put(Reporting.Key.CREATIVE_ID, str);
            }
        } catch (JSONException e) {
            Logger.e(TAG, e.getMessage());
        }
    }

    public void setCustomBoolean(String str, boolean z) {
        try {
            this.eventObject.put(str, z);
        } catch (JSONException e) {
            Logger.e(TAG, e.getMessage());
        }
    }

    public void setCustomDecimal(String str, double d2) {
        try {
            this.eventObject.put(str, d2);
        } catch (JSONException e) {
            Logger.e(TAG, e.getMessage());
        }
    }

    public void setCustomInteger(String str, long j) {
        try {
            this.eventObject.put(str, j);
        } catch (JSONException e) {
            Logger.e(TAG, e.getMessage());
        }
    }

    public void setCustomJSONArray(String str, JSONArray jSONArray) {
        try {
            this.eventObject.put(str, jSONArray);
        } catch (JSONException e) {
            Logger.e(TAG, e.getMessage());
        }
    }

    public void setCustomJSONObject(String str, JSONObject jSONObject) {
        try {
            this.eventObject.put(str, jSONObject);
        } catch (JSONException e) {
            Logger.e(TAG, e.getMessage());
        }
    }

    public void setCustomString(String str, String str2) {
        try {
            if (!TextUtils.isEmpty(str2)) {
                this.eventObject.put(str, str2);
            }
        } catch (JSONException e) {
            Logger.e(TAG, e.getMessage());
        }
    }

    public void setEventType(String str) {
        try {
            if (!TextUtils.isEmpty(str)) {
                this.eventObject.put(Reporting.Key.EVENT_TYPE, str);
            }
        } catch (JSONException e) {
            Logger.e(TAG, e.getMessage());
        }
    }

    public void setTimestamp(long j) {
        String valueOf = String.valueOf(j);
        try {
            if (!TextUtils.isEmpty(valueOf)) {
                this.eventObject.put(Reporting.Key.TIMESTAMP, valueOf);
            }
        } catch (JSONException e) {
            Logger.e(TAG, e.getMessage());
        }
    }

    public void setTimestamp(String str) {
        try {
            if (!TextUtils.isEmpty(str)) {
                this.eventObject.put(Reporting.Key.TIMESTAMP, str);
            }
        } catch (JSONException e) {
            Logger.e(TAG, e.getMessage());
        }
    }
}
