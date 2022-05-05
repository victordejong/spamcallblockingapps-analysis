package com.privacystar.core.service.network.model.request;

import com.google.gson.GsonBuilder;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.privacystar.core.service.network.model.component.BasePayload;
import com.privacystar.core.service.network.model.component.CallLogObject;
import com.privacystar.core.service.network.model.component.UserObject;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/model/request/CallLogUpdateRequest.class */
public class CallLogUpdateRequest implements Serializable {
    @SerializedName("payload")
    @Expose
    private Payload payload;
    @SerializedName("user")
    @Expose
    private UserObject user;

    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/model/request/CallLogUpdateRequest$Payload.class */
    public class Payload extends BasePayload {
        @SerializedName("calllog")
        @Expose
        private List<CallLogObject> mCallLogList = new ArrayList();
        @SerializedName("form_transaction_id")
        @Expose
        private String mFormTransactionId;

        public Payload() {
        }

        public List<CallLogObject> getCallLogList() {
            return this.mCallLogList;
        }

        public String getFormTransactionId() {
            return this.mFormTransactionId;
        }

        public void setCallLogList(List<CallLogObject> list) {
            this.mCallLogList = list;
        }

        public void setFormTransactionId(String str) {
            this.mFormTransactionId = str;
        }

        public Payload withCalllog(List<CallLogObject> list) {
            this.mCallLogList = list;
            return this;
        }

        public Payload withComplaint(String str) {
            this.mFormTransactionId = str;
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

    public CallLogUpdateRequest withPayload(Payload payload) {
        this.payload = payload;
        return this;
    }

    public CallLogUpdateRequest withUser(UserObject userObject) {
        this.user = userObject;
        return this;
    }
}
