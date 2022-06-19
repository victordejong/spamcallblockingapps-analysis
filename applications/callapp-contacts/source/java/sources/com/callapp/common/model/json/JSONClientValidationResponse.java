package com.callapp.common.model.json;

import com.fasterxml.jackson.annotation.JsonIgnore;
import java.io.Serializable;
import java.util.Calendar;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/json/JSONClientValidationResponse.class */
public class JSONClientValidationResponse implements Serializable {
    public static final transient int CANNOT_RUN = 5;
    public static final transient int DO_NOTHING = 1;
    public static final transient int FORCE_UPDATE = 4;
    public static final transient int SHOW_MESSAGE = 2;
    public static final transient int SUGGEST_UPDATE = 3;
    public static final transient int UPDATE_CONFIGURATION = 6;
    private static final long serialVersionUID = 5847406107223920366L;
    @JsonIgnore
    private Calendar creationTimeStamp;
    private boolean disableContactsUpload;
    private String message;
    private int messageType;
    private String rejectedUrl;
    private RejectionReason rejectionReason;
    private String updatedClientConfiguration;
    private String upgradeUrl;

    /* loaded from: classes-dex2jar.jar:com/callapp/common/model/json/JSONClientValidationResponse$RejectionReason.class */
    public enum RejectionReason {
        NONE(0),
        DEVICE(1),
        RESOLUTION_TOO_SMALL(2),
        RESOLUTION_TOO_LARGE(3),
        NO_TELEPHONY_SUPPORT(4),
        ANDROID_OS_VERSION(5),
        UNSUPPORTED_ROM(6);
        
        public int code;

        RejectionReason(int i) {
            this.code = i;
        }
    }

    public JSONClientValidationResponse() {
        this.disableContactsUpload = false;
        initTimeStamp();
    }

    public JSONClientValidationResponse(int i, String str, String str2, boolean z) {
        this.disableContactsUpload = false;
        initTimeStamp();
        this.messageType = i;
        this.message = str;
        this.upgradeUrl = str2;
        this.rejectionReason = RejectionReason.NONE;
        this.disableContactsUpload = z;
    }

    private void initTimeStamp() {
        this.creationTimeStamp = Calendar.getInstance();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        JSONClientValidationResponse jSONClientValidationResponse = (JSONClientValidationResponse) obj;
        if (this.messageType != jSONClientValidationResponse.messageType) {
            return false;
        }
        Calendar calendar = this.creationTimeStamp;
        if (calendar != null) {
            if (!calendar.equals(jSONClientValidationResponse.creationTimeStamp)) {
                return false;
            }
        } else if (jSONClientValidationResponse.creationTimeStamp != null) {
            return false;
        }
        String str = this.message;
        if (str != null) {
            if (!str.equals(jSONClientValidationResponse.message)) {
                return false;
            }
        } else if (jSONClientValidationResponse.message != null) {
            return false;
        }
        String str2 = this.rejectedUrl;
        if (str2 != null) {
            if (!str2.equals(jSONClientValidationResponse.rejectedUrl)) {
                return false;
            }
        } else if (jSONClientValidationResponse.rejectedUrl != null) {
            return false;
        }
        if (this.rejectionReason != jSONClientValidationResponse.rejectionReason) {
            return false;
        }
        String str3 = this.updatedClientConfiguration;
        if (str3 != null) {
            if (!str3.equals(jSONClientValidationResponse.updatedClientConfiguration)) {
                return false;
            }
        } else if (jSONClientValidationResponse.updatedClientConfiguration != null) {
            return false;
        }
        String str4 = this.upgradeUrl;
        String str5 = jSONClientValidationResponse.upgradeUrl;
        return str4 != null ? str4.equals(str5) : str5 == null;
    }

    public Calendar getCreationTimeStamp() {
        return this.creationTimeStamp;
    }

    public String getMessage() {
        return this.message;
    }

    public int getMessageType() {
        return this.messageType;
    }

    public String getRejectedUrl() {
        return this.rejectedUrl;
    }

    public RejectionReason getRejectionReason() {
        return this.rejectionReason;
    }

    public String getUpdatedClientConfiguration() {
        return this.updatedClientConfiguration;
    }

    public String getUpgradeUrl() {
        return this.upgradeUrl;
    }

    public int hashCode() {
        String str = this.message;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        int i2 = this.messageType;
        String str2 = this.upgradeUrl;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.updatedClientConfiguration;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        RejectionReason rejectionReason = this.rejectionReason;
        int hashCode4 = rejectionReason != null ? rejectionReason.hashCode() : 0;
        String str4 = this.rejectedUrl;
        int hashCode5 = str4 != null ? str4.hashCode() : 0;
        Calendar calendar = this.creationTimeStamp;
        if (calendar != null) {
            i = calendar.hashCode();
        }
        return (((((((((((hashCode * 31) + i2) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + i;
    }

    public boolean isDisableContactsUpload() {
        return this.disableContactsUpload;
    }

    public boolean isExpired() {
        Calendar calendar = Calendar.getInstance();
        calendar.add(12, -1440);
        return this.creationTimeStamp.before(calendar);
    }

    public void setCreationTimeStamp(Calendar calendar) {
        this.creationTimeStamp = calendar;
    }

    public void setDisableContactsUpload(boolean z) {
        this.disableContactsUpload = z;
    }

    public void setMessage(String str) {
        this.message = str;
    }

    public void setMessageType(int i) {
        this.messageType = i;
    }

    public void setRejectedUrl(String str) {
        this.rejectedUrl = str;
    }

    public void setRejectionReason(RejectionReason rejectionReason) {
        this.rejectionReason = rejectionReason;
    }

    public void setUpdatedClientConfiguration(String str) {
        this.updatedClientConfiguration = str;
    }

    public void setUpgradeUrl(String str) {
        this.upgradeUrl = str;
    }

    public String toString() {
        return "JSONClientValidationResponse{message='" + this.message + "', messageType=" + this.messageType + ", upgradeUrl='" + this.upgradeUrl + "', updatedClientConfiguration='" + this.updatedClientConfiguration + "', rejectionReason=" + this.rejectionReason + ", rejectedUrl='" + this.rejectedUrl + "', creationTimeStamp=" + this.creationTimeStamp + '}';
    }
}
