package com.privacystar.core.service.network.model.request;

import com.google.gson.GsonBuilder;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.privacystar.core.service.network.model.component.UserObject;
import java.io.Serializable;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/model/request/BulkLookupStatusRequest.class */
public class BulkLookupStatusRequest implements Serializable {
    @SerializedName("payload")
    @Expose
    private Payload payload;
    @SerializedName("user")
    @Expose
    private UserObject user;

    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/model/request/BulkLookupStatusRequest$Payload.class */
    public class Payload implements Serializable {
        @SerializedName("status_id")
        @Expose
        private String statusId;

        public Payload() {
        }

        public String getStatusId() {
            return this.statusId;
        }

        public void setStatusId(String str) {
            this.statusId = str;
        }

        public String toString() {
            return new GsonBuilder().setPrettyPrinting().create().toJson(this);
        }

        public Payload withStatusId(String str) {
            this.statusId = str;
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

    public BulkLookupStatusRequest withPayload(Payload payload) {
        this.payload = payload;
        return this;
    }

    public BulkLookupStatusRequest withUser(UserObject userObject) {
        this.user = userObject;
        return this;
    }
}
