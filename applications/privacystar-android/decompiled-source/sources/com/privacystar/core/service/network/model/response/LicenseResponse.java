package com.privacystar.core.service.network.model.response;

import com.google.gson.GsonBuilder;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.privacystar.core.data.model.BlockingOptionFields;
import com.privacystar.core.data.sqlite.p008db.subscription.SubscriptionContract;
import java.io.Serializable;
import java.util.Date;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/model/response/LicenseResponse.class */
public class LicenseResponse implements Serializable {
    @SerializedName("ads_available")
    @Expose
    private Boolean adsAvailable;
    @SerializedName("ag_alert")
    @Expose
    private Boolean agAlertsEnabled;
    @SerializedName("anchorfree_id")
    @Expose
    private String anchorFreeId;
    @SerializedName("soc")
    @Expose
    private String billingSoc;
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
    @SerializedName("ag_state")
    @Expose
    private String state;
    @SerializedName("token")
    @Expose
    private String token;
    @SerializedName("tokenTTL")
    @Expose
    private Integer tokenTtl;

    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/model/response/LicenseResponse$JsonBoolean.class */
    public enum JsonBoolean {
        TRUE(true),
        FALSE(false);
        
        private final boolean value;

        JsonBoolean(boolean z) {
            this.value = z;
        }

        public boolean getValue() {
            return this.value;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/model/response/LicenseResponse$LicenseState.class */
    public enum LicenseState {
        ACTIVE(BlockingOptionFields.ACTIVE),
        INACTIVE("inactive"),
        TRIAL(SubscriptionContract.SubscriptionEntry.COLUMN_TRIAL),
        FREE("free"),
        CONCLUDED("concluded"),
        CONCLUDED_CAP("Concluded");
        
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

    public Boolean getAdsAvailable() {
        return this.adsAvailable;
    }

    public Boolean getAgAlertsEnabled() {
        return this.agAlertsEnabled;
    }

    public String getAnchorFreeId() {
        return this.anchorFreeId;
    }

    public String getBillingSoc() {
        return this.billingSoc;
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

    public String getState() {
        return this.state;
    }

    public String getToken() {
        return this.token;
    }

    public Integer getTokenTtl() {
        return this.tokenTtl;
    }

    public void setAdsAvailable(Boolean bool) {
        this.adsAvailable = bool;
    }

    public void setAgAlertsEnabled(Boolean bool) {
        this.agAlertsEnabled = bool;
    }

    public void setAnchorFreeId(String str) {
        this.anchorFreeId = str;
    }

    public void setBillingSoc(String str) {
        this.billingSoc = str;
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

    public void setState(String str) {
        this.state = str;
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
