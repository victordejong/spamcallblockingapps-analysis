package com.tmobile.services.nameid.model;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/model/MetroUser.class */
public class MetroUser {
    @SerializedName("apk")
    @Expose
    private String apk;
    @SerializedName("app")
    @Expose
    private String app;
    @SerializedName("devid")
    @Expose
    private String devid;
    @SerializedName("token")
    @Expose
    private String token;

    public String getApk() {
        return this.apk;
    }

    public String getApp() {
        return this.app;
    }

    public String getDevid() {
        return this.devid;
    }

    public String getToken() {
        return this.token;
    }

    public void setApk(String str) {
        this.apk = str;
    }

    public void setApp(String str) {
        this.app = str.replace(".debug", "");
    }

    public void setDevid(String str) {
        this.devid = str;
    }

    public void setToken(String str) {
        this.token = str;
    }
}
