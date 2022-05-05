package com.privacystar.core.service.network.model.request;

import com.google.gson.GsonBuilder;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.privacystar.core.service.network.model.component.BasePayload;
import com.privacystar.core.service.network.model.component.UserObject;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.io.Serializable;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/model/request/LookupRequest.class */
public class LookupRequest implements Serializable {
    @SerializedName("payload")
    @Expose
    private Payload payload;
    @SerializedName("user")
    @Expose
    private UserObject user;

    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/model/request/LookupRequest$LookupType.class */
    public enum LookupType {
        MANUAL("manual"),
        CALLER_ID("caller_id"),
        BULK("bulk");
        
        private String value;

        LookupType(String str) {
            this.value = str;
        }

        public static LookupType fromLabel(String str) {
            LookupType[] values;
            for (LookupType lookupType : values()) {
                if (lookupType.getLabel().equals(str)) {
                    return lookupType;
                }
            }
            return null;
        }

        public String getLabel() {
            return this.value;
        }

        @Override // java.lang.Enum
        public String toString() {
            return getLabel();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/model/request/LookupRequest$Payload.class */
    public class Payload extends BasePayload implements Serializable {
        @SerializedName("caller_id")
        @Expose
        private String mCallerNumber;
        @SerializedName("devid")
        @Expose
        private String mDeviceId;
        @SerializedName("type")
        @Expose
        private LookupType mLookupType;
        @SerializedName(SettingsJsonConstants.APP_KEY)
        @Expose
        private String packageName;

        public Payload() {
        }

        public String getCallerNumber() {
            return this.mCallerNumber;
        }

        public String getDeviceId() {
            return this.mDeviceId;
        }

        public LookupType getLookupType() {
            return this.mLookupType;
        }

        public String getPackageName() {
            return this.packageName;
        }

        public void setCallerNumber(String str) {
            this.mCallerNumber = str;
        }

        public void setDeviceId(String str) {
            this.mDeviceId = str;
        }

        public void setLookupType(LookupType lookupType) {
            this.mLookupType = lookupType;
        }

        public void setPackageName(String str) {
            this.packageName = str;
        }

        public Payload withCallerId(String str) {
            this.mCallerNumber = str;
            return this;
        }

        public Payload withDevid(String str) {
            this.mDeviceId = str;
            return this;
        }

        public Payload withLookupType(LookupType lookupType) {
            this.mLookupType = lookupType;
            return this;
        }

        public Payload withPackageName(String str) {
            this.packageName = str;
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

    public LookupRequest withPayload(Payload payload) {
        this.payload = payload;
        return this;
    }

    public LookupRequest withUser(UserObject userObject) {
        this.user = userObject;
        return this;
    }
}
