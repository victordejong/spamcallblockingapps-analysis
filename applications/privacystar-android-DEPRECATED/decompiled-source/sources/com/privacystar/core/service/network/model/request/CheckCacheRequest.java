package com.privacystar.core.service.network.model.request;

import com.google.gson.GsonBuilder;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import java.io.Serializable;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/model/request/CheckCacheRequest.class */
public class CheckCacheRequest implements Serializable {
    @SerializedName("payload")
    @Expose
    private Payload payload;

    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/model/request/CheckCacheRequest$Payload.class */
    public class Payload implements Serializable {
        @SerializedName("operation")
        @Expose
        private String operation;
        @SerializedName("token")
        @Expose
        private String token;

        public Payload() {
        }

        public String getOperation() {
            return this.operation;
        }

        public String getToken() {
            return this.token;
        }

        public void setOperation(String str) {
            this.operation = str;
        }

        public void setToken(String str) {
            this.token = str;
        }

        public String toString() {
            return new GsonBuilder().setPrettyPrinting().create().toJson(this);
        }

        public Payload withOperation(String str) {
            this.operation = str;
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

    public Payload instantiatePayload() {
        return new Payload();
    }

    public void setPayload(Payload payload) {
        this.payload = payload;
    }

    public String toString() {
        return new GsonBuilder().setPrettyPrinting().create().toJson(this);
    }

    public CheckCacheRequest withPayload(Payload payload) {
        this.payload = payload;
        return this;
    }
}
