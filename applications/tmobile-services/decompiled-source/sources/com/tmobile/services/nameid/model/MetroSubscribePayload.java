package com.tmobile.services.nameid.model;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/model/MetroSubscribePayload.class */
public class MetroSubscribePayload {
    @SerializedName("act")
    @Expose
    private String act;
    @SerializedName("apk")
    @Expose
    private String apk;
    @SerializedName("app")
    @Expose
    private String app;
    @SerializedName("car")
    @Expose
    private String car;
    @SerializedName("mdn")
    @Expose
    private String mdn;
    @SerializedName("pin")
    @Expose
    private String pin;
    @SerializedName("soc")
    @Expose
    private String soc;
    @SerializedName("token")
    @Expose
    private String token;

    public String getAct() {
        return this.act;
    }

    public String getApk() {
        return this.apk;
    }

    public String getApp() {
        return this.app;
    }

    public String getCar() {
        return this.car;
    }

    public String getMdn() {
        return this.mdn;
    }

    public String getPin() {
        return this.pin;
    }

    public String getSoc() {
        return this.soc;
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

    public void setApp(String str) {
        this.app = str.replace(".debug", "");
    }

    public void setCar(String str) {
        this.car = str;
    }

    public void setMdn(String str) {
        this.mdn = str;
    }

    public void setPin(String str) {
        this.pin = str;
    }

    public void setSoc(String str) {
        this.soc = str;
    }

    public void setToken(String str) {
        this.token = str;
    }
}
