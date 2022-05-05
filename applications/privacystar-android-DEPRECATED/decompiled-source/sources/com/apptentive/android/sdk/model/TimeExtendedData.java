package com.apptentive.android.sdk.model;

import com.apptentive.android.sdk.model.ExtendedData;
import java.util.Date;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/model/TimeExtendedData.class */
public class TimeExtendedData extends ExtendedData {
    private static final String KEY_TIMESTAMP = "timestamp";
    private static final int VERSION = 1;
    private double timestamp;

    public TimeExtendedData() {
        setTimestamp(System.currentTimeMillis());
    }

    public TimeExtendedData(double d) {
        setTimestamp(d);
    }

    public TimeExtendedData(long j) {
        setTimestamp(j);
    }

    public TimeExtendedData(String str) throws JSONException {
        super(str);
        setTimestamp(new JSONObject(str).optDouble("timestamp"));
    }

    public TimeExtendedData(Date date) {
        setTimestamp(date);
    }

    @Override // com.apptentive.android.sdk.model.ExtendedData
    protected void init() {
        setType(ExtendedData.Type.time);
        setVersion(1);
    }

    protected void setTimestamp(double d) {
        this.timestamp = d;
    }

    protected void setTimestamp(long j) {
        setTimestamp(j / 1000.0d);
    }

    protected void setTimestamp(Date date) {
        if (date != null) {
            setTimestamp(date.getTime());
        } else {
            setTimestamp(System.currentTimeMillis());
        }
    }

    @Override // com.apptentive.android.sdk.model.ExtendedData
    public JSONObject toJsonObject() throws JSONException {
        JSONObject jsonObject = super.toJsonObject();
        jsonObject.put("timestamp", this.timestamp);
        return jsonObject;
    }
}
