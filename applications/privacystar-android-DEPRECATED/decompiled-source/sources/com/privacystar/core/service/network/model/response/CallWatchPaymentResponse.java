package com.privacystar.core.service.network.model.response;

import android.support.annotation.NonNull;
import com.google.gson.GsonBuilder;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import java.io.Serializable;
import java.util.Date;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/model/response/CallWatchPaymentResponse.class */
public class CallWatchPaymentResponse implements Serializable {
    @SerializedName("mrc")
    @Expose
    private Date mrcDate;
    @SerializedName("dpi")
    @Expose
    private DPIResultCode resultCode;
    @SerializedName("trans_key")
    @Expose
    private String transactionId;

    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/model/response/CallWatchPaymentResponse$DPIResultCode.class */
    public enum DPIResultCode {
        SUCCESS(0),
        ADV_PAYMENT_FOUND(1),
        USER_ACCT_INTERRUPTED(2),
        USER_ACCT_INELIGIBLE(3),
        USER_ACCT_FUTURE_CHARGE(4),
        USER_ACCT_NOT_SPG(5),
        INTERNAL_ERROR(6),
        PREV_PURCHASE_CONCLUDED_EARLY(7),
        USER_ACCT_HAS_SOC(8),
        PREMIUM_CID_SOC(9),
        CANCEL_TRANS_KEY_NOT_FOUND(10),
        UNKNOWN(-1);
        
        private final int value;

        DPIResultCode(int i) {
            this.value = i;
        }

        @NonNull
        public static DPIResultCode fromValue(int i) {
            DPIResultCode[] values;
            for (DPIResultCode dPIResultCode : values()) {
                if (dPIResultCode.getValue() == i) {
                    return dPIResultCode;
                }
            }
            return UNKNOWN;
        }

        public int getValue() {
            return this.value;
        }
    }

    public Date getMrcDate() {
        return this.mrcDate;
    }

    public DPIResultCode getResultCode() {
        return this.resultCode;
    }

    public String getTransactionId() {
        return this.transactionId;
    }

    public void setMrcDate(Date date) {
        this.mrcDate = date;
    }

    public void setResultCode(DPIResultCode dPIResultCode) {
        this.resultCode = dPIResultCode;
    }

    public void setTransactionId(String str) {
        this.transactionId = str;
    }

    public String toString() {
        return new GsonBuilder().setPrettyPrinting().create().toJson(this);
    }
}
