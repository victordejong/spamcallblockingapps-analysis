package com.tmobile.services.nameid.model;

import com.google.gson.GsonBuilder;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/model/UserObject.class */
public class UserObject implements Serializable {
    @SerializedName("apk")
    @Expose
    private String apkVersion;
    @SerializedName("devid")
    @Expose
    private String deviceId;
    @SerializedName("app")
    @Expose
    private String packageName;
    @SerializedName("token")
    @Expose
    private String token;

    public String getApkVersion() {
        return this.apkVersion;
    }

    public String getDeviceId() {
        return this.deviceId;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public String getToken() {
        return this.token;
    }

    public void setApkVersion(String str) {
        this.apkVersion = str;
    }

    public void setDeviceId(String str) {
        this.deviceId = str;
    }

    public void setPackageName(String str) {
        this.packageName = str.replace(".debug", "");
    }

    public void setToken(String str) {
        this.token = str;
    }

    public String toString() {
        GsonBuilder gsonBuilder = new GsonBuilder();
        gsonBuilder.m8397d();
        return gsonBuilder.m8399b().m8417r(this);
    }
}
