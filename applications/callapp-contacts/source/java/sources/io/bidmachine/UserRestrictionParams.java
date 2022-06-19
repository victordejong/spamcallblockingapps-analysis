package io.bidmachine;

import android.text.TextUtils;
import com.explorestack.protobuf.Any;
import com.explorestack.protobuf.adcom.Context;
import io.bidmachine.core.Utils;
import io.bidmachine.models.DataRestrictions;
import io.bidmachine.models.IUserRestrictionsParams;
import io.bidmachine.models.RequestParams;
import io.bidmachine.protobuf.RegsCcpaExtension;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/UserRestrictionParams.class */
public final class UserRestrictionParams extends RequestParams<UserRestrictionParams> implements DataRestrictions, IUserRestrictionsParams<UserRestrictionParams> {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private String gdprConsentString;
    private Boolean hasConsent;
    private Boolean hasCoppa;
    private Boolean subjectToGDPR;
    private String usPrivacyString;

    private boolean hasConsent() {
        Boolean bool = this.hasConsent;
        return bool != null && bool.booleanValue();
    }

    private boolean hasCoppa() {
        Boolean bool = this.hasCoppa;
        return bool != null && bool.booleanValue();
    }

    private boolean subjectToGDPR() {
        C17857e iabSharedPreference = C17842d.get().getIabSharedPreference();
        Boolean bool = (Boolean) Utils.oneOf(this.subjectToGDPR, iabSharedPreference.getTcfGdprApplies(), iabSharedPreference.getSubjectToGDPR());
        return bool != null && bool.booleanValue();
    }

    public final void build(Context.Regs.Builder builder) {
        builder.setGdpr(subjectToGDPR());
        builder.setCoppa(hasCoppa());
        String uSPrivacyString = getUSPrivacyString();
        if (!TextUtils.isEmpty(uSPrivacyString)) {
            builder.addExtProto(Any.pack(RegsCcpaExtension.newBuilder().setUsPrivacy(uSPrivacyString).build()));
        }
    }

    public final void build(Context.User.Builder builder) {
        builder.setConsent(getIABGDPRString());
    }

    @Override // io.bidmachine.models.DataRestrictions
    public final boolean canSendDeviceInfo() {
        return !hasCoppa();
    }

    @Override // io.bidmachine.models.DataRestrictions
    public final boolean canSendGeoPosition() {
        return !hasCoppa() && !isUserGdprProtected();
    }

    @Override // io.bidmachine.models.DataRestrictions
    public final boolean canSendIfa() {
        return !isUserGdprProtected();
    }

    @Override // io.bidmachine.models.DataRestrictions
    public final boolean canSendUserInfo() {
        return !hasCoppa() && !isUserGdprProtected();
    }

    @Override // io.bidmachine.models.DataRestrictions
    public final String getIABGDPRString() {
        C17857e iabSharedPreference = C17842d.get().getIabSharedPreference();
        String str = (String) Utils.oneOf(this.gdprConsentString, iabSharedPreference.getTcfTcString(), iabSharedPreference.getGDPRConsentString());
        String str2 = str;
        if (TextUtils.isEmpty(str)) {
            str2 = hasConsent() ? "1" : "0";
        }
        return str2;
    }

    @Override // io.bidmachine.models.DataRestrictions
    public final String getUSPrivacyString() {
        return (String) Utils.oneOf(this.usPrivacyString, C17842d.get().getIabSharedPreference().getUSPrivacyString());
    }

    @Override // io.bidmachine.models.DataRestrictions
    public final boolean isUserAgeRestricted() {
        return hasCoppa();
    }

    @Override // io.bidmachine.models.DataRestrictions
    public final boolean isUserGdprProtected() {
        return subjectToGDPR() && !hasConsent();
    }

    @Override // io.bidmachine.models.DataRestrictions
    public final boolean isUserHasCcpaConsent() {
        String uSPrivacyString = getUSPrivacyString();
        if (uSPrivacyString != null && uSPrivacyString.length() == 4 && uSPrivacyString.charAt(0) == '1') {
            return uSPrivacyString.charAt(2) == 'N' || uSPrivacyString.charAt(2) == 'n';
        }
        return false;
    }

    @Override // io.bidmachine.models.DataRestrictions
    public final boolean isUserHasConsent() {
        return hasConsent();
    }

    @Override // io.bidmachine.models.DataRestrictions
    public final boolean isUserInCcpaScope() {
        String uSPrivacyString = getUSPrivacyString();
        return uSPrivacyString != null && uSPrivacyString.length() == 4 && uSPrivacyString.charAt(0) == '1' && !uSPrivacyString.contains("---");
    }

    @Override // io.bidmachine.models.DataRestrictions
    public final boolean isUserInGdprScope() {
        return subjectToGDPR();
    }

    public final void merge(UserRestrictionParams userRestrictionParams) {
        this.gdprConsentString = (String) Utils.oneOf(this.gdprConsentString, userRestrictionParams.gdprConsentString);
        this.subjectToGDPR = (Boolean) Utils.oneOf(this.subjectToGDPR, userRestrictionParams.subjectToGDPR);
        this.hasConsent = (Boolean) Utils.oneOf(this.hasConsent, userRestrictionParams.hasConsent);
        this.hasCoppa = (Boolean) Utils.oneOf(this.hasCoppa, userRestrictionParams.hasCoppa);
        this.usPrivacyString = (String) Utils.oneOf(this.usPrivacyString, userRestrictionParams.usPrivacyString);
    }

    @Override // io.bidmachine.models.IUserRestrictionsParams
    public final UserRestrictionParams setConsentConfig(boolean z, String str) {
        this.gdprConsentString = str;
        this.hasConsent = Boolean.valueOf(z);
        return this;
    }

    @Override // io.bidmachine.models.IUserRestrictionsParams
    public final UserRestrictionParams setCoppa(Boolean bool) {
        this.hasCoppa = bool;
        return this;
    }

    @Override // io.bidmachine.models.IUserRestrictionsParams
    public final UserRestrictionParams setSubjectToGDPR(Boolean bool) {
        this.subjectToGDPR = bool;
        return this;
    }

    @Override // io.bidmachine.models.IUserRestrictionsParams
    public final UserRestrictionParams setUSPrivacyString(String str) {
        this.usPrivacyString = str;
        return this;
    }
}
