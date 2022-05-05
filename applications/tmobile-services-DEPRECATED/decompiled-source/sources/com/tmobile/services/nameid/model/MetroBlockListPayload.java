package com.tmobile.services.nameid.model;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/model/MetroBlockListPayload.class */
public class MetroBlockListPayload {
    @SerializedName("act")
    @Expose
    private String act;
    @SerializedName("apk")
    @Expose
    private String apk;
    @SerializedName("token")
    @Expose
    private String token;

    public String getAct() {
        return this.act;
    }

    public String getApk() {
        return this.apk;
    }

    public String getToken() {
        return this.token;
    }

    public void setAct(String str) {
        this.act = str;
    }

    public void setApk(String str) {
        this.apk = str;
    }

    public void setToken(String str) {
        this.token = str;
    }
}
