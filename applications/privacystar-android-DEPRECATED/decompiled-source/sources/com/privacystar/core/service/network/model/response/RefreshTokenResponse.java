package com.privacystar.core.service.network.model.response;

import com.google.gson.GsonBuilder;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import java.io.Serializable;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/model/response/RefreshTokenResponse.class */
public class RefreshTokenResponse implements Serializable {
    @SerializedName("token")
    @Expose
    private String token;
    @SerializedName("tokenTTL")
    @Expose
    private Integer tokenTtl;

    public String getToken() {
        return this.token;
    }

    public Integer getTokenTtl() {
        return this.tokenTtl;
    }

    public void setToken(String str) {
        this.token = str;
    }

    public void setTokenTtl(Integer num) {
        this.tokenTtl = num;
    }

    public String toString() {
        return new GsonBuilder().setPrettyPrinting().create().toJson(this);
    }

    public RefreshTokenResponse withToken(String str) {
        this.token = str;
        return this;
    }

    public RefreshTokenResponse withTokenTTL(Integer num) {
        this.tokenTtl = num;
        return this;
    }
}
