package com.tmobile.services.nameid.model;

import androidx.annotation.NonNull;
import com.google.gson.GsonBuilder;
import javax.annotation.Nullable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;
@Root(name = "UserStatus", strict = false)
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/model/TmoUserStatusResponse.class */
public class TmoUserStatusResponse {
    @Element(name = "CNAMEligible", required = false)
    private Boolean CNAMEligible;
    @Element(name = "CNAMON", required = false)
    private Boolean CNAMON;
    @Element(name = "VMTTOFF", required = false)
    private Boolean VMTTOFF;
    @Element(name = "customerType", required = false)
    private String customerType;
    @Element(name = "errorCode", required = false)
    private String errorCode;
    @Element(name = "errorMsg", required = false)
    private String errorMsg;
    @Element(name = "imei", required = false)
    private String imei;
    @Element(name = "msisdn", required = false)
    private String msisdn;
    @Element(name = "novm", required = false)
    private Boolean novm;
    @Element(name = "pnb", required = false)
    private String pnb;
    @Element(name = "result", required = false)
    private String result;
    @Element(name = "scamblock", required = false)
    private Boolean scamBlock;
    @Element(name = "scamBlock", required = false)
    private Boolean scamBlockTst;
    @Element(name = "scamid", required = false)
    private Boolean scamId;
    @Element(name = "scamId", required = false)
    private Boolean scamIdTst;
    @Element(name = "serviceType", required = false)
    private String serviceType;
    @Element(name = "status", required = false)
    private String status;
    @Element(name = "subscriptionType", required = false)
    private String subscriptionType;
    @Element(name = "trialDaysLeft", required = false)
    private int trialDaysLeft = -1;
    @Element(name = "upgradeEligible", required = false)
    private String upgradeEligible;
    @Element(name = "vmtt", required = false)
    private String vmtt;

    public String getCustomerType() {
        return this.customerType;
    }

    public String getErrorCode() {
        return this.errorCode;
    }

    public String getErrorMsg() {
        return this.errorMsg;
    }

    public String getImei() {
        return this.imei;
    }

    public Boolean getNovm() {
        return this.novm;
    }

    public String getPnb() {
        return this.pnb;
    }

    public String getResult() {
        return this.result;
    }

    @Nullable
    public Boolean getScamBlock() {
        Boolean bool = this.scamBlock;
        return bool != null ? bool : this.scamBlockTst;
    }

    @Nullable
    public Boolean getScamId() {
        Boolean bool = this.scamId;
        return bool != null ? bool : this.scamIdTst;
    }

    @Nullable
    public String getStatus() {
        return this.status;
    }

    @Nullable
    public String getSubscriptionType() {
        return this.subscriptionType;
    }

    public int getTrialDaysLeft() {
        return this.trialDaysLeft;
    }

    public String getUpgradeEligible() {
        return this.upgradeEligible;
    }

    public Boolean getVMTTOFF() {
        return this.VMTTOFF;
    }

    public String getVmtt() {
        return this.vmtt;
    }

    public Boolean isCNAMEligible() {
        return this.CNAMEligible;
    }

    public Boolean isCNAMON() {
        return this.CNAMON;
    }

    public void setCNAMEligible(Boolean bool) {
        this.CNAMEligible = bool;
    }

    public void setCNAMON(Boolean bool) {
        this.CNAMON = bool;
    }

    public void setCustomerType(String str) {
        this.customerType = str;
    }

    public void setErrorCode(String str) {
        this.errorCode = str;
    }

    public void setErrorMsg(String str) {
        this.errorMsg = str;
    }

    public void setNovm(Boolean bool) {
        this.novm = bool;
    }

    public void setPnb(String str) {
        this.pnb = str;
    }

    public void setResult(String str) {
        this.result = str;
    }

    public void setScamBlock(Boolean bool) {
        this.scamBlock = bool;
    }

    public void setScamBlockTst(Boolean bool) {
        this.scamBlockTst = bool;
    }

    public void setScamId(Boolean bool) {
        this.scamId = bool;
    }

    public void setScamIdTst(Boolean bool) {
        this.scamIdTst = bool;
    }

    public void setServiceType(String str) {
        this.serviceType = str;
    }

    public void setStatus(String str) {
        this.status = str;
    }

    public void setSubscriptionType(String str) {
        this.subscriptionType = str;
    }

    public void setTrialDaysLeft(int i) {
        this.trialDaysLeft = i;
    }

    public void setUpgradeEligible(String str) {
        this.upgradeEligible = str;
    }

    public void setVMTTOFF(Boolean bool) {
        this.VMTTOFF = bool;
    }

    public void setVmtt(String str) {
        this.vmtt = str;
    }

    @NonNull
    public String toString() {
        GsonBuilder gsonBuilder = new GsonBuilder();
        gsonBuilder.m8397d();
        return gsonBuilder.m8399b().m8417r(this);
    }
}
