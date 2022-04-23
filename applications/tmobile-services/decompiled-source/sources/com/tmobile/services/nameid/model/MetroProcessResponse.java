package com.tmobile.services.nameid.model;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.messaging.Constants;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/model/MetroProcessResponse.class */
public class MetroProcessResponse {
    @SerializedName(Constants.IPC_BUNDLE_KEY_SEND_ERROR)
    @Expose
    String error;
    @SerializedName(FirebaseAnalytics.Param.SUCCESS)
    @Expose
    boolean success;

    public String getError() {
        return this.error;
    }

    public boolean isSuccess() {
        return this.success;
    }

    public void setError(String str) {
        this.error = str;
    }

    public void setSuccess(boolean z) {
        this.success = z;
    }
}
