package com.mopub.network;

import com.mopub.common.logging.MoPubLog;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
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
    public static final String IMPRESSION_ID = "id";
    public static final String NETWORK_NAME = "network_name";
    public static final String NETWORK_PLACEMENT_ID = "network_placement_id";
    public static final String PRECISION = "precision";
    public static final String PUBLISHER_REVENUE = "publisher_revenue";
    private static final long serialVersionUID = 83;

    /* renamed from: a */
    public C1216a f5394a;

    /* renamed from: com.mopub.network.ImpressionData$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/network/ImpressionData$a.class */
    public static class C1216a extends JSONObject implements Serializable {
        public C1216a(String str) {
            super(str);
        }

        public C1216a(JSONObject jSONObject) {
            super(jSONObject.toString());
        }
    }

    public ImpressionData(JSONObject jSONObject) {
        this.f5394a = new C1216a(jSONObject);
    }

    /* renamed from: a */
    public static ImpressionData m3213a(JSONObject jSONObject) {
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

    private void readObject(ObjectInputStream objectInputStream) {
        objectInputStream.defaultReadObject();
        this.f5394a = new C1216a(objectInputStream.readUTF());
    }

    private void writeObject(ObjectOutputStream objectOutputStream) {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeUTF(this.f5394a.toString());
    }

    public String getAdGroupId() {
        return this.f5394a.optString(ADGROUP_ID, null);
    }

    public String getAdGroupName() {
        return this.f5394a.optString(ADGROUP_NAME, null);
    }

    public Integer getAdGroupPriority() {
        try {
            return Integer.valueOf(this.f5394a.getInt(ADGROUP_PRIORITY));
        } catch (Exception e) {
            return null;
        }
    }

    public String getAdGroupType() {
        return this.f5394a.optString(ADGROUP_TYPE, null);
    }

    public String getAdUnitFormat() {
        return this.f5394a.optString("adunit_format", null);
    }

    public String getAdUnitId() {
        return this.f5394a.optString(ADUNIT_ID, null);
    }

    public String getAdUnitName() {
        return this.f5394a.optString(ADUNIT_NAME, null);
    }

    public String getAppVersion() {
        return this.f5394a.optString(APP_VERSION, null);
    }

    public String getCountry() {
        return this.f5394a.optString(COUNTRY, null);
    }

    public String getCurrency() {
        return this.f5394a.optString(CURRENCY, null);
    }

    public String getImpressionId() {
        return this.f5394a.optString("id", null);
    }

    public JSONObject getJsonRepresentation() {
        return this.f5394a;
    }

    public String getNetworkName() {
        return this.f5394a.optString(NETWORK_NAME, null);
    }

    public String getNetworkPlacementId() {
        return this.f5394a.optString(NETWORK_PLACEMENT_ID, null);
    }

    public String getPrecision() {
        return this.f5394a.optString(PRECISION, null);
    }

    public Double getPublisherRevenue() {
        try {
            return Double.valueOf(this.f5394a.getDouble(PUBLISHER_REVENUE));
        } catch (Exception e) {
            return null;
        }
    }
}
