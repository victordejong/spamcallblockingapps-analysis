package com.apptentive.android.sdk.network;

import com.apptentive.android.sdk.util.StringUtils;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/network/HttpJsonRequest.class */
public class HttpJsonRequest extends HttpRequest {
    private final JSONObject requestObject;
    private JSONObject responseObject;

    public HttpJsonRequest(String str, JSONObject jSONObject) {
        super(str);
        if (jSONObject == null) {
            throw new IllegalArgumentException("Json object is null");
        }
        this.requestObject = jSONObject;
    }

    @Override // com.apptentive.android.sdk.network.HttpRequest
    protected byte[] createRequestData() throws IOException {
        return this.requestObject.toString().getBytes("UTF-8");
    }

    public JSONObject getResponseObject() {
        return this.responseObject;
    }

    @Override // com.apptentive.android.sdk.network.HttpRequest
    protected void handleResponse(String str) throws IOException {
        try {
            if (!StringUtils.isNullOrEmpty(str)) {
                this.responseObject = new JSONObject(str);
            }
        } catch (JSONException e) {
            throw new IOException(e);
        }
    }
}
