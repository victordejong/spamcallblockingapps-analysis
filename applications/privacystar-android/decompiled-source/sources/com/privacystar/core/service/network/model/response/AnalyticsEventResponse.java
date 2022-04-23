package com.privacystar.core.service.network.model.response;

import com.google.gson.GsonBuilder;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.privacystar.core.data.model.BlockingOptionFields;
import com.privacystar.core.data.sqlite.p008db.subscription.SubscriptionContract;
import java.io.Serializable;
import java.util.Date;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/model/response/AnalyticsEventResponse.class */
public class AnalyticsEventResponse implements Serializable {
    @SerializedName("licExpireDate")
    @Expose
    private Date licenseExpireDate;
    @SerializedName("licFeatures")
    @Expose
    private String licenseFeatures;
    @SerializedName("licState")
    @Expose
    private LicenseState licenseState;
    @SerializedName("licTrialEnd")
    @Expose
    private Date licenseTrialEnd;
    @SerializedName("token")
    @Expose
    private String token;
    @SerializedName("tokenTTL")
    @Expose
    private Integer tokenTtl;

    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/model/response/AnalyticsEventResponse$LicenseState.class */
    public enum LicenseState {
        ACTIVE(BlockingOptionFields.ACTIVE),
        INACTIVE("inactive"),
        TRIAL(SubscriptionContract.SubscriptionEntry.COLUMN_TRIAL);
        
        private String displayName;

        LicenseState(String str) {
            this.displayName = str;
        }

        public String getDisplayName() {
            return this.displayName;
        }

        @Override // java.lang.Enum
        public String toString() {
            return getDisplayName();
        }
    }

    public Date getLicExpireDate() {
        return this.licenseExpireDate;
    }

    public String getLicFeatures() {
        return this.licenseFeatures;
    }

    public LicenseState getLicState() {
        return this.licenseState;
    }

    public Date getLicTrialEnd() {
        return this.licenseTrialEnd;
    }

    public String getToken() {
        return this.token;
    }

    public Integer getTokenTtl() {
        return this.tokenTtl;
    }

    public void setLicExpireDate(Date date) {
        this.licenseExpireDate = date;
    }

    public void setLicFeatures(String str) {
        this.licenseFeatures = str;
    }

    public void setLicState(LicenseState licenseState) {
        this.licenseState = licenseState;
    }

    public void setLicTrialEnd(Date date) {
        this.licenseTrialEnd = date;
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
}
