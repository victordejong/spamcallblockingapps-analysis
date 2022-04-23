package com.mopub.network;

import com.mopub.common.logging.MoPubLog;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/mopub/network/ImpressionData.class */
public class ImpressionData implements Serializable {
    public static final String ADGROUP_ID = "adgroup_id";
    public static final String ADGROUP_NAME = "adgroup_name";
    public static final String ADGROUP_PRIORITY = "adgroup_priority";
    public static final String ADGROUP_TYPE = "adgroup_type";
    public static final String ADUNIT_FORMAT = "adunit_format";
    public static final String ADUNIT_ID = "adunit_id";
    public static final String ADUNIT_NAME = "adunit_name";
    public static final String APP_VERSION = "app_version";
    public static final String COUNTRY = "country";
    public static final String CURRENCY = "currency";
    public static final String DEMAND_PARTNER_DATA = "demand_partner_data";
    public static final String IMPRESSION_ID = "id";
    public static final String NETWORK_NAME = "network_name";
    public static final String NETWORK_PLACEMENT_ID = "network_placement_id";
    public static final String PRECISION = "precision";
    public static final String PUBLISHER_REVENUE = "publisher_revenue";

    /* renamed from: a  reason: collision with root package name */
    private SerializableJson f34724a;

    /* loaded from: classes4-dex2jar.jar:com/mopub/network/ImpressionData$SerializableJson.class */
    static class SerializableJson extends JSONObject implements Serializable {
        SerializableJson(String str) throws JSONException {
            super(str);
        }

        SerializableJson(JSONObject jSONObject) throws JSONException {
            super(jSONObject.toString());
        }
    }

    private ImpressionData(JSONObject jSONObject) throws JSONException {
        this.f34724a = new SerializableJson(jSONObject);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ImpressionData a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        try {
            return new ImpressionData(jSONObject);
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, e.toString());
            return null;
        }
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException, JSONException {
        objectInputStream.defaultReadObject();
        this.f34724a = new SerializableJson(objectInputStream.readUTF());
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeUTF(this.f34724a.toString());
    }

    public String getAdGroupId() {
        return this.f34724a.optString(ADGROUP_ID, null);
    }

    public String getAdGroupName() {
        return this.f34724a.optString(ADGROUP_NAME, null);
    }

    public Integer getAdGroupPriority() {
        try {
            return Integer.valueOf(this.f34724a.getInt(ADGROUP_PRIORITY));
        } catch (Exception e) {
            return null;
        }
    }

    public String getAdGroupType() {
        return this.f34724a.optString(ADGROUP_TYPE, null);
    }

    public String getAdUnitFormat() {
        return this.f34724a.optString("adunit_format", null);
    }

    public String getAdUnitId() {
        return this.f34724a.optString(ADUNIT_ID, null);
    }

    public String getAdUnitName() {
        return this.f34724a.optString(ADUNIT_NAME, null);
    }

    public String getAppVersion() {
        return this.f34724a.optString(APP_VERSION, null);
    }

    public String getCountry() {
        return this.f34724a.optString("country", null);
    }

    public String getCurrency() {
        return this.f34724a.optString(CURRENCY, null);
    }

    public JSONObject getDemandPartnerData() {
        return this.f34724a.optJSONObject(DEMAND_PARTNER_DATA);
    }

    public String getImpressionId() {
        return this.f34724a.optString("id", null);
    }

    public JSONObject getJsonRepresentation() {
        return this.f34724a;
    }

    public String getNetworkName() {
        return this.f34724a.optString(NETWORK_NAME, null);
    }

    public String getNetworkPlacementId() {
        return this.f34724a.optString(NETWORK_PLACEMENT_ID, null);
    }

    public String getPrecision() {
        return this.f34724a.optString(PRECISION, null);
    }

    public Double getPublisherRevenue() {
        try {
            return Double.valueOf(this.f34724a.getDouble(PUBLISHER_REVENUE));
        } catch (Exception e) {
            return null;
        }
    }
}
