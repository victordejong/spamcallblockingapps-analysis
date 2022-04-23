package com.privacystar.core.service.network.model.component;

import com.google.gson.GsonBuilder;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import java.io.Serializable;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/model/component/SubscriptionObject.class */
public class SubscriptionObject implements Serializable {
    @SerializedName("accessToken")
    @Expose
    private String accessToken;
    @SerializedName("packageName")
    @Expose
    private String packageName;
    @SerializedName("subscriptionId")
    @Expose
    private String subscriptionId;
    @SerializedName("token")
    @Expose
    private String token;

    public String getAccessToken() {
        return this.accessToken;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public String getSubscriptionId() {
        return this.subscriptionId;
    }

    public String getToken() {
        return this.token;
    }

    public void setAccessToken(String str) {
        this.accessToken = str;
    }

    public void setPackageName(String str) {
        this.packageName = str;
    }

    public void setSubscriptionId(String str) {
        this.subscriptionId = str;
    }

    public void setToken(String str) {
        this.token = str;
    }

    public String toString() {
        return new GsonBuilder().setPrettyPrinting().create().toJson(this);
    }

    public SubscriptionObject withAccessToken(String str) {
        this.accessToken = str;
        return this;
    }

    public SubscriptionObject withPackageName(String str) {
        this.packageName = str;
        return this;
    }

    public SubscriptionObject withSubscriptionId(String str) {
        this.subscriptionId = str;
        return this;
    }

    public SubscriptionObject withToken(String str) {
        this.token = str;
        return this;
    }
}
