package com.privacystar.core.service.network.model.request;

import com.google.gson.GsonBuilder;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.privacystar.core.service.network.model.component.BasePayload;
import com.privacystar.core.service.network.model.component.UserObject;
import java.io.Serializable;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/model/request/RefreshTokenRequest.class */
public class RefreshTokenRequest implements Serializable {
    @SerializedName("payload")
    @Expose
    private Payload payload;
    @SerializedName("user")
    @Expose
    private UserObject user;

    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/model/request/RefreshTokenRequest$Payload.class */
    public class Payload extends BasePayload implements Serializable {
        @SerializedName("apk")
        @Expose
        private String apk;
        @SerializedName("token")
        @Expose
        private String token;

        public Payload() {
        }

        public String getApk() {
            return this.apk;
        }

        public String getToken() {
            return this.token;
        }

        public void setApk(String str) {
            this.apk = str;
        }

        public void setToken(String str) {
            this.token = str;
        }

        public String toString() {
            return new GsonBuilder().setPrettyPrinting().create().toJson(this);
        }

        public Payload withApk(String str) {
            this.apk = str;
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

    public RefreshTokenRequest withPayload(Payload payload) {
        this.payload = payload;
        return this;
    }

    public RefreshTokenRequest withUser(UserObject userObject) {
        this.user = userObject;
        return this;
    }
}
