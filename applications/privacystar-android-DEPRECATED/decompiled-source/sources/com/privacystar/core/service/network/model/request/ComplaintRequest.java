package com.privacystar.core.service.network.model.request;

import com.google.gson.GsonBuilder;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.privacystar.core.service.network.model.component.BasePayload;
import com.privacystar.core.service.network.model.component.CallLogObject;
import com.privacystar.core.service.network.model.component.ComplaintObject;
import com.privacystar.core.service.network.model.component.UserObject;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/model/request/ComplaintRequest.class */
public class ComplaintRequest implements Serializable {
    @SerializedName("payload")
    @Expose
    private Payload payload;
    @SerializedName("user")
    @Expose
    private UserObject user;

    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/model/request/ComplaintRequest$Payload.class */
    public class Payload extends BasePayload implements Serializable {
        @SerializedName("devid")
        @Expose
        private String deviceId;
        @SerializedName(SettingsJsonConstants.APP_KEY)
        @Expose
        private String packageName;
        @SerializedName("complaint")
        @Expose
        private List<ComplaintObject> complaintQuestions = new ArrayList();
        @SerializedName("calllog")
        @Expose
        private List<CallLogObject> callLogObject = new ArrayList();

        public Payload() {
        }

        public List<CallLogObject> getCallLogObject() {
            return this.callLogObject;
        }

        public List<ComplaintObject> getComplaintQuestions() {
            return this.complaintQuestions;
        }

        public String getDeviceId() {
            return this.deviceId;
        }

        public String getPackageName() {
            return this.packageName;
        }

        public void setCallLogObject(List<CallLogObject> list) {
            this.callLogObject = list;
        }

        public void setComplaintQuestions(List<ComplaintObject> list) {
            this.complaintQuestions = list;
        }

        public void setDeviceId(String str) {
            this.deviceId = str;
        }

        public void setPackageName(String str) {
            this.packageName = str;
        }

        public String toString() {
            return new GsonBuilder().setPrettyPrinting().create().toJson(this);
        }

        public Payload withApplicationId(String str) {
            this.packageName = str;
            return this;
        }

        public Payload withCalllog(List<CallLogObject> list) {
            this.callLogObject = list;
            return this;
        }

        public Payload withComplaint(List<ComplaintObject> list) {
            this.complaintQuestions = list;
            return this;
        }

        public Payload withDevid(String str) {
            this.deviceId = str;
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

    public ComplaintRequest withPayload(Payload payload) {
        this.payload = payload;
        return this;
    }

    public ComplaintRequest withUser(UserObject userObject) {
        this.user = userObject;
        return this;
    }
}
