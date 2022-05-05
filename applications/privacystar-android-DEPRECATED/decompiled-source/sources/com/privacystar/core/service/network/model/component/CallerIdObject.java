package com.privacystar.core.service.network.model.component;

import com.google.gson.GsonBuilder;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import java.io.Serializable;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/model/component/CallerIdObject.class */
public class CallerIdObject implements Serializable {
    @SerializedName("caller_id")
    @Expose
    private String callerId;

    public String getCallerId() {
        return this.callerId;
    }

    public void setCallerId(String str) {
        this.callerId = str;
    }

    public String toString() {
        return new GsonBuilder().setPrettyPrinting().create().toJson(this);
    }

    public CallerIdObject withCallerId(String str) {
        this.callerId = str;
        return this;
    }
}
