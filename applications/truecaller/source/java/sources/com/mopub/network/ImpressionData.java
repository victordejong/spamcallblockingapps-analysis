package com.mopub.network;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/mopub/network/ImpressionData.class */
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

    /* renamed from: a */
    public a f9232a;

    public ImpressionData(JSONObject jSONObject) throws JSONException {
        this.f9232a = new a(jSONObject);
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException, JSONException {
        objectInputStream.defaultReadObject();
        this.f9232a = new a(objectInputStream.readUTF());
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeUTF(this.f9232a.toString());
    }

    public String getAdGroupId() {
        return this.f9232a.optString(ADGROUP_ID, null);
    }

    public String getAdGroupName() {
        return this.f9232a.optString(ADGROUP_NAME, null);
    }

    public Integer getAdGroupPriority() {
        try {
            return Integer.valueOf(this.f9232a.getInt(ADGROUP_PRIORITY));
        } catch (Exception e) {
            return null;
        }
    }

    public String getAdGroupType() {
        return this.f9232a.optString(ADGROUP_TYPE, null);
    }

    public String getAdUnitFormat() {
        return this.f9232a.optString("adunit_format", null);
    }

    public String getAdUnitId() {
        return this.f9232a.optString(ADUNIT_ID, null);
    }

    public String getAdUnitName() {
        return this.f9232a.optString(ADUNIT_NAME, null);
    }

    public String getAppVersion() {
        return this.f9232a.optString("app_version", null);
    }

    public String getCountry() {
        return this.f9232a.optString(COUNTRY, null);
    }

    public String getCurrency() {
        return this.f9232a.optString(CURRENCY, null);
    }

    public JSONObject getDemandPartnerData() {
        return this.f9232a.optJSONObject(DEMAND_PARTNER_DATA);
    }

    public String getImpressionId() {
        return this.f9232a.optString("id", null);
    }

    public JSONObject getJsonRepresentation() {
        return this.f9232a;
    }

    public String getNetworkName() {
        return this.f9232a.optString(NETWORK_NAME, null);
    }

    public String getNetworkPlacementId() {
        return this.f9232a.optString(NETWORK_PLACEMENT_ID, null);
    }

    public String getPrecision() {
        return this.f9232a.optString(PRECISION, null);
    }

    public Double getPublisherRevenue() {
        try {
            return Double.valueOf(this.f9232a.getDouble(PUBLISHER_REVENUE));
        } catch (Exception e) {
            return null;
        }
    }
}
