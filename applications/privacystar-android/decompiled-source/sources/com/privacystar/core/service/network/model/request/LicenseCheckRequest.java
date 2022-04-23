package com.privacystar.core.service.network.model.request;

import com.google.gson.GsonBuilder;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.privacystar.core.service.network.model.component.UserObject;
import java.io.Serializable;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/model/request/LicenseCheckRequest.class */
public class LicenseCheckRequest implements Serializable {
    @SerializedName("payload")
    @Expose
    private Payload payload;
    @SerializedName("user")
    @Expose
    private UserObject user;

    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/model/request/LicenseCheckRequest$Payload.class */
    public class Payload implements Serializable {
        @SerializedName("apk")
        @Expose
        private String apkVersion;
        @SerializedName("mcc")
        @Expose
        private String mcc;
        @SerializedName("mnc")
        @Expose
        private String mnc;
        @SerializedName("token")
        @Expose
        private String token;

        public Payload() {
        }

        public String getApkVersion() {
            return this.apkVersion;
        }

        public String getMcc() {
            return this.mcc;
        }

        public String getMnc() {
            return this.mnc;
        }

        public String getToken() {
            return this.token;
        }

        public void setApkVersion(String str) {
            this.apkVersion = str;
        }

        public void setMcc(String str) {
            this.mcc = str;
        }

        public void setMnc(String str) {
            this.mnc = str;
        }

        public void setToken(String str) {
            this.token = str;
        }

        public String toString() {
            return new GsonBuilder().setPrettyPrinting().create().toJson(this);
        }

        public Payload withApkVersion(String str) {
            this.apkVersion = str;
            return this;
        }

        public Payload withMcc(String str) {
            this.mcc = str;
            return this;
        }

        public Payload withMnc(String str) {
            this.mnc = str;
            return this;
        }

        public Payload withToken(String str) {
            this.token = str;
            return this;
        }
    }

    public Payload getPayload() {
        return this.payload;
    }

    public UserObject getUser() {
        return this.user;
    }

    public Payload instantiatePayload() {
        return new Payload();
    }

    public void setPayload(Payload payload) {
        this.payload = payload;
    }

    public void setUser(UserObject userObject) {
        this.user = userObject;
    }

    public String toString() {
        return new GsonBuilder().setPrettyPrinting().create().toJson(this);
    }

    public LicenseCheckRequest withPayload(Payload payload) {
        this.payload = payload;
        return this;
    }

    public LicenseCheckRequest withUser(UserObject userObject) {
        this.user = userObject;
        return this;
    }
}
