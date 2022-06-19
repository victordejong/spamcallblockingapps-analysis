package com.appsflyer.deeplink;

import android.support.annotation.Nullable;
import com.huawei.updatesdk.service.otaupdate.UpdateKey;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/appsflyer/deeplink/DeepLinkResult.class */
public class DeepLinkResult {
    private final DeepLink deepLink;
    private final Error error;
    private final Status status;

    /* loaded from: classes-dex2jar.jar:com/appsflyer/deeplink/DeepLinkResult$Error.class */
    public enum Error {
        TIMEOUT,
        NETWORK,
        HTTP_STATUS_CODE,
        UNEXPECTED,
        DEVELOPER_ERROR
    }

    /* loaded from: classes-dex2jar.jar:com/appsflyer/deeplink/DeepLinkResult$Status.class */
    public enum Status {
        FOUND,
        NOT_FOUND,
        ERROR
    }

    public DeepLinkResult(@Nullable DeepLink deepLink, @Nullable Error error) {
        this.deepLink = deepLink;
        this.error = error;
        if (error != null) {
            this.status = Status.ERROR;
        } else if (deepLink != null) {
            this.status = Status.FOUND;
        } else {
            this.status = Status.NOT_FOUND;
        }
    }

    public DeepLink getDeepLink() {
        return this.deepLink;
    }

    public Error getError() {
        return this.error;
    }

    public Status getStatus() {
        return this.status;
    }

    public String toString() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("deepLink", this.deepLink);
            jSONObject.put("error", this.error);
            jSONObject.put(UpdateKey.STATUS, this.status);
        } catch (JSONException e) {
        }
        return jSONObject.toString();
    }
}
