package com.privacystar.core.service.network.model.request;

import com.google.android.gms.analytics.ecommerce.ProductAction;
import com.google.gson.GsonBuilder;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.privacystar.core.service.network.model.component.UserObject;
import java.io.Serializable;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/model/request/CallWatchPaymentRequest.class */
public class CallWatchPaymentRequest implements Serializable {
    @SerializedName("payload")
    @Expose
    private Payload payload;
    @SerializedName("user")
    @Expose
    private UserObject user;

    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/model/request/CallWatchPaymentRequest$CallWatchPaymentActionType.class */
    public enum CallWatchPaymentActionType {
        PURCHASE(ProductAction.ACTION_PURCHASE),
        CONCLUDE("conclude"),
        CANCEL_ADV_PAYMENT("cancel-ap"),
        CHECK_BRAND("check-brand"),
        UNKNOWN("unknown");
        
        private final String value;

        CallWatchPaymentActionType(String str) {
            this.value = str;
        }

        public CallWatchPaymentActionType fromValue(String str) {
            CallWatchPaymentActionType[] values;
            for (CallWatchPaymentActionType callWatchPaymentActionType : values()) {
                if (callWatchPaymentActionType.getValue().equalsIgnoreCase(str)) {
                    return callWatchPaymentActionType;
                }
            }
            return UNKNOWN;
        }

        public String getValue() {
            return this.value;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/model/request/CallWatchPaymentRequest$Payload.class */
    public class Payload implements Serializable {
        @SerializedName("act")
        @Expose
        private CallWatchPaymentActionType action;
        @SerializedName("apk")
        @Expose
        private String apkVersion;
        @SerializedName("devid")
        @Expose
        private String deviceId;
        @SerializedName("mdn")
        @Expose
        private String mdn;
        @SerializedName("token")
        @Expose
        private String token;
        @SerializedName("trans_key")
        @Expose
        private String transactionId;

        public Payload() {
        }

        public CallWatchPaymentActionType getAction() {
            return this.action;
        }

        public String getApkVersion() {
            return this.apkVersion;
        }

        public String getDeviceId() {
            return this.deviceId;
        }

        public String getMdn() {
            return this.mdn;
        }

        public String getToken() {
            return this.token;
        }

        public String getTransactionId() {
            return this.transactionId;
        }

        public void setAction(CallWatchPaymentActionType callWatchPaymentActionType) {
            this.action = callWatchPaymentActionType;
        }

        public void setAction(String str) {
            this.action = CallWatchPaymentActionType.valueOf(str);
        }

        public void setApkVersion(String str) {
            this.apkVersion = str;
        }

        public void setDeviceId(String str) {
            this.deviceId = str;
        }

        public void setMdn(String str) {
            this.mdn = str;
        }

        public void setToken(String str) {
            this.token = str;
        }

        public void setTransactionId(String str) {
            this.transactionId = str;
        }

        public Payload withAction(CallWatchPaymentActionType callWatchPaymentActionType) {
            this.action = callWatchPaymentActionType;
            return this;
        }

        public Payload withAction(String str) {
            this.action = CallWatchPaymentActionType.valueOf(str);
            return this;
        }

        public Payload withApkVersion(String str) {
            this.apkVersion = str;
            return this;
        }

        public Payload withDeviceId(String str) {
            this.deviceId = str;
            return this;
        }

        public Payload withMdn(String str) {
            this.mdn = str;
            return this;
        }

        public Payload withToken(String str) {
            this.token = str;
            return this;
        }

        public Payload withTransactionId(String str) {
            this.transactionId = str;
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

    public CallWatchPaymentRequest withUser(UserObject userObject) {
        this.user = userObject;
        return this;
    }
}
