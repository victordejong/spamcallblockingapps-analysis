package com.privacystar.core.service.network.model.response;

import com.google.gson.GsonBuilder;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import java.io.Serializable;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/model/response/CheckCacheResponse.class */
public class CheckCacheResponse implements Serializable {
    @SerializedName("cachedData")
    @Expose
    private CachedData cachedData;

    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/model/response/CheckCacheResponse$CachedData.class */
    public class CachedData implements Serializable {
        @SerializedName("access_token")
        @Expose
        private String accessToken;
        @SerializedName("expires_on_utc")
        @Expose
        private Long expiresOnUtc;
        @SerializedName("gp_client_id")
        @Expose
        private String gpClientId;
        @SerializedName("gp_client_secret")
        @Expose
        private String gpClientSecret;
        @SerializedName("locked")
        @Expose
        private Boolean locked;
        @SerializedName("refresh_token")
        @Expose
        private String refreshToken;

        public CachedData() {
        }

        public String getAccessToken() {
            return this.accessToken;
        }

        public Long getExpiresOnUtc() {
            return this.expiresOnUtc;
        }

        public String getGpClientId() {
            return this.gpClientId;
        }

        public String getGpClientSecret() {
            return this.gpClientSecret;
        }

        public Boolean getLocked() {
            return this.locked;
        }

        public String getRefreshToken() {
            return this.refreshToken;
        }

        public void setAccessToken(String str) {
            this.accessToken = str;
        }

        public void setExpiresOnUtc(Long l) {
            this.expiresOnUtc = l;
        }

        public void setGpClientId(String str) {
            this.gpClientId = str;
        }

        public void setGpClientSecret(String str) {
            this.gpClientSecret = str;
        }

        public void setLocked(Boolean bool) {
            this.locked = bool;
        }

        public void setRefreshToken(String str) {
            this.refreshToken = str;
        }

        public String toString() {
            return new GsonBuilder().setPrettyPrinting().create().toJson(this);
        }

        public CachedData withAccessToken(String str) {
            this.accessToken = str;
            return this;
        }

        public CachedData withExpiresOnUtc(Long l) {
            this.expiresOnUtc = l;
            return this;
        }

        public CachedData withGpClientId(String str) {
            this.gpClientId = str;
            return this;
        }

        public CachedData withGpClientSecret(String str) {
            this.gpClientSecret = str;
            return this;
        }

        public CachedData withLocked(Boolean bool) {
            this.locked = bool;
            return this;
        }

        public CachedData withRefreshToken(String str) {
            this.refreshToken = str;
            return this;
        }
    }

    public CachedData getCachedData() {
        return this.cachedData;
    }

    public void setCachedData(CachedData cachedData) {
        this.cachedData = cachedData;
    }

    public String toString() {
        return new GsonBuilder().setPrettyPrinting().create().toJson(this);
    }

    public CheckCacheResponse withCachedData(CachedData cachedData) {
        this.cachedData = cachedData;
        return this;
    }
}
