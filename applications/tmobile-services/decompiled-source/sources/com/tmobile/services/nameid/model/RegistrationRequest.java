package com.tmobile.services.nameid.model;

import com.google.gson.GsonBuilder;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import java.io.Serializable;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/model/RegistrationRequest.class */
public class RegistrationRequest implements Serializable {
    @SerializedName("payload")
    @Expose
    private Payload mPayload;
    @SerializedName("user")
    @Expose
    private UserObject user;

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/model/RegistrationRequest$Payload.class */
    public class Payload extends BasePayload implements Serializable {
        @SerializedName("aliased_app_name")
        @Expose
        private String aliasedApp;
        @SerializedName("apk")
        @Expose
        private String apk;
        @SerializedName("app")
        @Expose
        private String app;
        @SerializedName("devmake")
        @Expose
        private String deviceManufacturer;
        @SerializedName("devmodel")
        @Expose
        private String deviceModel;
        @SerializedName("devid")
        @Expose
        private String devid;
        @SerializedName("fcmkey")
        @Expose
        private String fcmkey;
        @SerializedName("imei")
        @Nullable
        @Expose
        private Long imei = null;
        @SerializedName("mdn")
        @Expose
        private String mdn;
        @SerializedName("npanxx")
        @Expose
        private String npanxx;
        @SerializedName("os_level")
        @Expose
        private String osVersion;
        @SerializedName("token")
        @Expose
        private String token;
        @SerializedName("days_left_in_trial")
        @Nullable
        @Expose
        private Integer trialDaysLeft;

        public Payload() {
        }

        public String getAliasedApp() {
            return this.aliasedApp;
        }

        public String getDevid() {
            return this.devid;
        }

        public String getFcmkey() {
            return this.fcmkey;
        }

        @Nullable
        public Long getImei() {
            return this.imei;
        }

        public String getMdn() {
            return this.mdn;
        }

        public String getNpanxx() {
            return this.npanxx;
        }

        public String getToken() {
            return this.token;
        }

        @Nullable
        public Integer getTrialDaysLeft() {
            return this.trialDaysLeft;
        }

        public void setAliasedApp(String str) {
            this.aliasedApp = str;
        }

        public void setApk(String str) {
            this.apk = str;
        }

        public void setApp(String str) {
            this.app = str.replace(".debug", "");
        }

        public void setDeviceManufacturer(String str) {
            this.deviceManufacturer = str;
        }

        public void setDeviceModel(String str) {
            this.deviceModel = str;
        }

        public void setDevid(String str) {
            this.devid = str;
        }

        public void setFcmkey(String str) {
            this.fcmkey = str;
        }

        public void setImei(@Nullable Long l) {
            this.imei = l;
        }

        public void setMdn(String str) {
            this.mdn = str;
        }

        public void setNpanxx(String str) {
            this.npanxx = str;
        }

        public void setOsVersion(String str) {
            this.osVersion = str;
        }

        public void setToken(String str) {
            this.token = str;
        }

        public void setTrialDaysLeft(@Nullable Integer num) {
            this.trialDaysLeft = num;
        }
    }

    public Payload getPayload() {
        return this.mPayload;
    }

    public UserObject getUser() {
        return this.user;
    }

    public Payload instantiatePayload() {
        return new Payload();
    }

    public void setPayload(Payload payload) {
        this.mPayload = payload;
    }

    public void setUser(UserObject userObject) {
        this.user = userObject;
    }

    public String toString() {
        GsonBuilder gsonBuilder = new GsonBuilder();
        gsonBuilder.m8397d();
        return gsonBuilder.m8399b().m8417r(this);
    }
}
