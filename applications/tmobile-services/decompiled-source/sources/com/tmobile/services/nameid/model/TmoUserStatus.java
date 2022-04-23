package com.tmobile.services.nameid.model;

import androidx.annotation.StringRes;
import com.tmobile.services.C1517R;
import com.tmobile.services.nameid.utility.LogUtil;
import io.realm.AbstractC2164x6fb2031c;
import io.realm.RealmObject;
import io.realm.internal.RealmObjectProxy;
import java.util.Date;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/model/TmoUserStatus.class */
public class TmoUserStatus extends RealmObject implements AbstractC2164x6fb2031c {
    public static final String CUSTOMER_TYPE_METRO = "3";
    public static final String CUSTOMER_TYPE_POSTPAID = "1";
    public static final String CUSTOMER_TYPE_PREPAID = "2";
    public static final String CUSTOMER_TYPE_SPRINT_XP = "1100";
    private boolean CNAMEligible;
    private boolean CNAMON;
    private boolean VMTTOFF;
    private boolean bundled;
    @Nullable
    private String customerType;
    private int daysLeft;
    private boolean eligible;
    @Nullable
    private String errorText;
    private boolean novm;
    private boolean pending;
    private boolean pendingCheckError;
    @Nullable
    private String pnb;
    @Nullable
    private Boolean scamBlock;
    @Nullable
    private Boolean scamId;
    @Nullable
    private String statusText;
    @Nullable
    private String typeLetter;
    private Date updatedAt;
    @Nullable
    private String vmtt;

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/model/TmoUserStatus$SubscriptionStatus.class */
    public enum SubscriptionStatus {
        ACTIVE("ACTIVE"),
        NOT_FOUND("USER_NOT_EXIST"),
        FREE_TRIAL_EXPIRED("FREE_TRIAL_EXPIRED"),
        INACTIVE("INACTIVE"),
        MULTILINE("MULTILINE"),
        MULTILINE_NON_PRIMARY_ACCT("NON_PAH"),
        UNKNOWN("???");
        
        private final String statusText;

        SubscriptionStatus(String str) {
            this.statusText = str;
        }

        @Nonnull
        public static SubscriptionStatus fromStatusText(@Nullable String str) {
            SubscriptionStatus[] values;
            if (str == null) {
                return UNKNOWN;
            }
            for (SubscriptionStatus subscriptionStatus : values()) {
                if (subscriptionStatus.getTypeString().equals(str)) {
                    return subscriptionStatus;
                }
            }
            return UNKNOWN;
        }

        @Nonnull
        public String getTypeString() {
            return this.statusText;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/model/TmoUserStatus$SubscriptionType.class */
    public enum SubscriptionType {
        FREE("F"),
        PREMIUM_STANDALONE("P"),
        PREMIUM_BUNDLED("B"),
        REDUCED_STANDALONE("C-unused"),
        REDUCED_BUNDLED("D-unused"),
        UNKNOWN("???");
        
        private final String typeLetter;

        SubscriptionType(String str) {
            this.typeLetter = str;
        }

        @Nonnull
        public static SubscriptionType fromTypeLetter(@Nullable String str) {
            SubscriptionType[] values;
            if (str == null) {
                return UNKNOWN;
            }
            for (SubscriptionType subscriptionType : values()) {
                if (subscriptionType.getTypeLetter().equals(str)) {
                    return subscriptionType;
                }
            }
            return UNKNOWN;
        }

        @Nonnull
        public String getTypeLetter() {
            return this.typeLetter;
        }
    }

    public TmoUserStatus() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
        realmSet$pending(false);
        realmSet$pendingCheckError(false);
        realmSet$bundled(false);
        realmSet$novm(false);
        realmSet$CNAMON(false);
        realmSet$CNAMEligible(false);
        realmSet$VMTTOFF(false);
    }

    @StringRes
    public static int getSubscriptionDescription(SubscriptionStatus subscriptionStatus, SubscriptionType subscriptionType, boolean z, boolean z2) {
        return (!z && subscriptionStatus == SubscriptionStatus.ACTIVE) ? z2 ? C1517R.string.account_pending : (subscriptionType == SubscriptionType.PREMIUM_BUNDLED || subscriptionType == SubscriptionType.PREMIUM_STANDALONE) ? C1517R.string.account_premium : (subscriptionType == SubscriptionType.REDUCED_BUNDLED || subscriptionType == SubscriptionType.REDUCED_STANDALONE) ? C1517R.string.account_screenit : subscriptionType == SubscriptionType.FREE ? C1517R.string.subscription_status_trial : C1517R.string.general_empty_string : C1517R.string.account_basic;
    }

    public TmoUserStatus copy() {
        TmoUserStatus tmoUserStatus = new TmoUserStatus();
        tmoUserStatus.realmSet$scamId(realmGet$scamId());
        tmoUserStatus.realmSet$typeLetter(realmGet$typeLetter());
        tmoUserStatus.realmSet$statusText(realmGet$statusText());
        tmoUserStatus.realmSet$eligible(realmGet$eligible());
        tmoUserStatus.realmSet$daysLeft(realmGet$daysLeft());
        tmoUserStatus.realmSet$updatedAt(realmGet$updatedAt());
        tmoUserStatus.realmSet$errorText(realmGet$errorText());
        tmoUserStatus.realmSet$scamBlock(realmGet$scamBlock());
        tmoUserStatus.realmSet$pending(realmGet$pending());
        tmoUserStatus.realmSet$pendingCheckError(realmGet$pendingCheckError());
        tmoUserStatus.realmSet$bundled(realmGet$bundled());
        tmoUserStatus.realmSet$novm(realmGet$novm());
        tmoUserStatus.realmSet$CNAMON(realmGet$CNAMON());
        tmoUserStatus.realmSet$CNAMEligible(realmGet$CNAMEligible());
        tmoUserStatus.realmSet$VMTTOFF(realmGet$VMTTOFF());
        tmoUserStatus.realmSet$customerType(realmGet$customerType());
        tmoUserStatus.realmSet$pnb(realmGet$pnb());
        tmoUserStatus.realmSet$vmtt(realmGet$vmtt());
        return tmoUserStatus;
    }

    @Nullable
    public String getCustomerType() {
        return realmGet$customerType();
    }

    public int getDaysLeft() {
        return realmGet$daysLeft();
    }

    @Nullable
    public String getErrorText() {
        return realmGet$errorText();
    }

    public boolean getNovm() {
        return realmGet$novm();
    }

    @Nullable
    public String getPnb() {
        return realmGet$pnb();
    }

    @Nullable
    public Boolean getScamBlock() {
        return realmGet$scamBlock();
    }

    @Nullable
    public Boolean getScamId() {
        return realmGet$scamId();
    }

    @Nullable
    public String getStatusText() {
        return realmGet$statusText();
    }

    @Nullable
    public String getTypeLetter() {
        return realmGet$typeLetter();
    }

    public Date getUpdatedAt() {
        return realmGet$updatedAt();
    }

    public boolean getVMTTOFF() {
        return realmGet$VMTTOFF();
    }

    @Nullable
    public String getVmtt() {
        return realmGet$vmtt();
    }

    public boolean isBundled() {
        return realmGet$bundled();
    }

    public boolean isCNAMEligible() {
        return realmGet$CNAMEligible();
    }

    public boolean isCNAMON() {
        return realmGet$CNAMON();
    }

    public boolean isEligible() {
        return realmGet$eligible();
    }

    public boolean isPending() {
        return realmGet$pending();
    }

    public boolean isPendingCheckError() {
        return realmGet$pendingCheckError();
    }

    @Override // io.realm.AbstractC2164x6fb2031c
    public boolean realmGet$CNAMEligible() {
        return this.CNAMEligible;
    }

    @Override // io.realm.AbstractC2164x6fb2031c
    public boolean realmGet$CNAMON() {
        return this.CNAMON;
    }

    @Override // io.realm.AbstractC2164x6fb2031c
    public boolean realmGet$VMTTOFF() {
        return this.VMTTOFF;
    }

    @Override // io.realm.AbstractC2164x6fb2031c
    public boolean realmGet$bundled() {
        return this.bundled;
    }

    @Override // io.realm.AbstractC2164x6fb2031c
    public String realmGet$customerType() {
        return this.customerType;
    }

    @Override // io.realm.AbstractC2164x6fb2031c
    public int realmGet$daysLeft() {
        return this.daysLeft;
    }

    @Override // io.realm.AbstractC2164x6fb2031c
    public boolean realmGet$eligible() {
        return this.eligible;
    }

    @Override // io.realm.AbstractC2164x6fb2031c
    public String realmGet$errorText() {
        return this.errorText;
    }

    @Override // io.realm.AbstractC2164x6fb2031c
    public boolean realmGet$novm() {
        return this.novm;
    }

    @Override // io.realm.AbstractC2164x6fb2031c
    public boolean realmGet$pending() {
        return this.pending;
    }

    @Override // io.realm.AbstractC2164x6fb2031c
    public boolean realmGet$pendingCheckError() {
        return this.pendingCheckError;
    }

    @Override // io.realm.AbstractC2164x6fb2031c
    public String realmGet$pnb() {
        return this.pnb;
    }

    @Override // io.realm.AbstractC2164x6fb2031c
    public Boolean realmGet$scamBlock() {
        return this.scamBlock;
    }

    @Override // io.realm.AbstractC2164x6fb2031c
    public Boolean realmGet$scamId() {
        return this.scamId;
    }

    @Override // io.realm.AbstractC2164x6fb2031c
    public String realmGet$statusText() {
        return this.statusText;
    }

    @Override // io.realm.AbstractC2164x6fb2031c
    public String realmGet$typeLetter() {
        return this.typeLetter;
    }

    @Override // io.realm.AbstractC2164x6fb2031c
    public Date realmGet$updatedAt() {
        return this.updatedAt;
    }

    @Override // io.realm.AbstractC2164x6fb2031c
    public String realmGet$vmtt() {
        return this.vmtt;
    }

    @Override // io.realm.AbstractC2164x6fb2031c
    public void realmSet$CNAMEligible(boolean z) {
        this.CNAMEligible = z;
    }

    @Override // io.realm.AbstractC2164x6fb2031c
    public void realmSet$CNAMON(boolean z) {
        this.CNAMON = z;
    }

    @Override // io.realm.AbstractC2164x6fb2031c
    public void realmSet$VMTTOFF(boolean z) {
        this.VMTTOFF = z;
    }

    @Override // io.realm.AbstractC2164x6fb2031c
    public void realmSet$bundled(boolean z) {
        this.bundled = z;
    }

    @Override // io.realm.AbstractC2164x6fb2031c
    public void realmSet$customerType(String str) {
        this.customerType = str;
    }

    @Override // io.realm.AbstractC2164x6fb2031c
    public void realmSet$daysLeft(int i) {
        this.daysLeft = i;
    }

    @Override // io.realm.AbstractC2164x6fb2031c
    public void realmSet$eligible(boolean z) {
        this.eligible = z;
    }

    @Override // io.realm.AbstractC2164x6fb2031c
    public void realmSet$errorText(String str) {
        this.errorText = str;
    }

    @Override // io.realm.AbstractC2164x6fb2031c
    public void realmSet$novm(boolean z) {
        this.novm = z;
    }

    @Override // io.realm.AbstractC2164x6fb2031c
    public void realmSet$pending(boolean z) {
        this.pending = z;
    }

    @Override // io.realm.AbstractC2164x6fb2031c
    public void realmSet$pendingCheckError(boolean z) {
        this.pendingCheckError = z;
    }

    @Override // io.realm.AbstractC2164x6fb2031c
    public void realmSet$pnb(String str) {
        this.pnb = str;
    }

    @Override // io.realm.AbstractC2164x6fb2031c
    public void realmSet$scamBlock(Boolean bool) {
        this.scamBlock = bool;
    }

    @Override // io.realm.AbstractC2164x6fb2031c
    public void realmSet$scamId(Boolean bool) {
        this.scamId = bool;
    }

    @Override // io.realm.AbstractC2164x6fb2031c
    public void realmSet$statusText(String str) {
        this.statusText = str;
    }

    @Override // io.realm.AbstractC2164x6fb2031c
    public void realmSet$typeLetter(String str) {
        this.typeLetter = str;
    }

    @Override // io.realm.AbstractC2164x6fb2031c
    public void realmSet$updatedAt(Date date) {
        this.updatedAt = date;
    }

    @Override // io.realm.AbstractC2164x6fb2031c
    public void realmSet$vmtt(String str) {
        this.vmtt = str;
    }

    public void setBundled(boolean z) {
        realmSet$bundled(z);
    }

    public void setCNAMEligible(boolean z) {
        realmSet$CNAMEligible(z);
    }

    public void setCNAMON(boolean z) {
        realmSet$CNAMON(z);
    }

    public void setCustomerType(@Nullable String str) {
        realmSet$customerType(str);
    }

    public void setDaysLeft(int i) {
        realmSet$daysLeft(i);
    }

    public void setEligible(boolean z) {
        realmSet$eligible(z);
    }

    public void setErrorText(@Nullable String str) {
        realmSet$errorText(str);
    }

    public void setNovm(boolean z) {
        realmSet$novm(z);
    }

    public void setPending(boolean z) {
        realmSet$pending(z);
    }

    public void setPendingCheckError(boolean z) {
        realmSet$pendingCheckError(z);
    }

    public void setPnb(@Nullable String str) {
        realmSet$pnb(str);
    }

    public void setScamBlock(@Nullable Boolean bool) {
        realmSet$scamBlock(bool);
    }

    public void setScamId(@Nullable Boolean bool) {
        realmSet$scamId(bool);
    }

    public void setStatusText(@Nullable String str) {
        realmSet$statusText(str);
    }

    public void setTypeLetter(@Nullable String str) {
        LogUtil.m5643d("TmoUserStatus#", "Setting Type Letter: " + str);
        realmSet$typeLetter(str);
    }

    public void setUpdatedAt(Date date) {
        realmSet$updatedAt(date);
    }

    public void setVMTTOFF(boolean z) {
        realmSet$VMTTOFF(z);
    }

    public void setVmtt(@Nullable String str) {
        realmSet$vmtt(str);
    }

    public String toString() {
        return "TmoUserStatus{scamId=" + realmGet$scamId() + ", typeLetter='" + realmGet$typeLetter() + "', statusText='" + realmGet$statusText() + "', eligible=" + realmGet$eligible() + ", daysLeft=" + realmGet$daysLeft() + ", updatedAt=" + realmGet$updatedAt() + ", errorText='" + realmGet$errorText() + "', scamBlock=" + realmGet$scamBlock() + ", pending=" + realmGet$pending() + ", pendingCheckError=" + realmGet$pendingCheckError() + ", bundled=" + realmGet$bundled() + ", novm=" + realmGet$novm() + ", CNAMON=" + realmGet$CNAMON() + ", CNAMEligible=" + realmGet$CNAMEligible() + ", VMTTOFF=" + realmGet$VMTTOFF() + ", customerType='" + realmGet$customerType() + "', pnb='" + realmGet$pnb() + "', vmtt='" + realmGet$vmtt() + "'}";
    }
}
