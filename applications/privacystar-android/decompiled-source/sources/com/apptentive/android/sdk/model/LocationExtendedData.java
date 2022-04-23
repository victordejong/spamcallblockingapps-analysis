package com.apptentive.android.sdk.model;

import com.apptentive.android.sdk.model.ExtendedData;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/model/LocationExtendedData.class */
public class LocationExtendedData extends ExtendedData {
    private static final String KEY_COORDINATES = "coordinates";
    private static final int VERSION = 1;
    private double latitude;
    private double longitude;

    public LocationExtendedData(double d, double d2) {
        setCoordinates(d, d2);
    }

    public LocationExtendedData(String str) throws JSONException {
        super(str);
        JSONArray optJSONArray = new JSONObject(str).optJSONArray(KEY_COORDINATES);
        if (optJSONArray != null) {
            setCoordinates(optJSONArray.optDouble(0, 0.0d), optJSONArray.optDouble(1, 0.0d));
        }
    }

    @Override // com.apptentive.android.sdk.model.ExtendedData
    protected void init() {
        setType(ExtendedData.Type.location);
        setVersion(1);
    }

    public void setCoordinates(double d, double d2) {
        this.longitude = d;
        this.latitude = d2;
    }

    @Override // com.apptentive.android.sdk.model.ExtendedData
    public JSONObject toJsonObject() throws JSONException {
        JSONObject jsonObject = super.toJsonObject();
        JSONArray jSONArray = new JSONArray();
        jsonObject.put(KEY_COORDINATES, jSONArray);
        jSONArray.put(this.longitude);
        jSONArray.put(this.latitude);
        return jsonObject;
    }
}
