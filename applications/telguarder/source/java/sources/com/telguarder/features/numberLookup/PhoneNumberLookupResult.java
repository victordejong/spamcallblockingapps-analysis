package com.telguarder.features.numberLookup;

import android.text.TextUtils;
import com.telguarder.helpers.contact.Contact;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/numberLookup/PhoneNumberLookupResult.class */
public class PhoneNumberLookupResult {
    private PhoneEvent companyCall;
    private Contact contact;
    private PhoneEvent personCall;
    public String phoneNumber;
    private Boolean mHasData = null;
    private Boolean mHasContact = null;
    private Boolean mHasCompany = null;
    private Boolean mHasPerson = null;
    private Boolean mHasSpam = null;
    private DisplayType mDispplayType = null;
    private String mSecurityLevel = null;

    /* loaded from: classes2-dex2jar.jar:com/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType.class */
    public enum DisplayType {
        NONE,
        CONTACT_ONLY,
        CONTACT_WITH_COMPANY,
        CONTACT_WITH_PERSON,
        COMPANY_ONLY,
        PERSON_WITH_COMPANY,
        PERSON_ONLY
    }

    private void cleanup() {
        this.mHasData = null;
        this.mHasContact = null;
        this.mHasCompany = null;
        this.mHasPerson = null;
        this.mHasSpam = null;
        this.mDispplayType = null;
    }

    public PhoneEvent getCompanyCall() {
        return this.companyCall;
    }

    public Contact getContact() {
        return this.contact;
    }

    public DisplayType getDisplayType() {
        if (this.mDispplayType == null) {
            boolean hasContact = hasContact();
            boolean hasCompany = hasCompany();
            boolean hasPerson = hasPerson();
            if (!hasContact && !hasCompany && !hasPerson) {
                this.mDispplayType = DisplayType.NONE;
            } else if (hasContact && !hasCompany && !hasPerson) {
                this.mDispplayType = DisplayType.CONTACT_ONLY;
            } else if (hasContact && hasCompany && !hasPerson) {
                this.mDispplayType = DisplayType.CONTACT_WITH_COMPANY;
            } else if (hasContact && hasCompany && hasPerson) {
                this.mDispplayType = DisplayType.CONTACT_WITH_COMPANY;
            } else if (hasContact && !hasCompany && hasPerson) {
                this.mDispplayType = DisplayType.CONTACT_WITH_PERSON;
            } else if (!hasContact && hasCompany && !hasPerson) {
                this.mDispplayType = DisplayType.COMPANY_ONLY;
            } else if (!hasContact && hasCompany && hasPerson) {
                this.mDispplayType = DisplayType.PERSON_WITH_COMPANY;
            } else if (hasContact || hasCompany || !hasPerson) {
                this.mDispplayType = DisplayType.NONE;
            } else {
                this.mDispplayType = DisplayType.PERSON_ONLY;
            }
        }
        return this.mDispplayType;
    }

    public PhoneEvent getPersonCall() {
        return this.personCall;
    }

    public PhoneEvent getPhoneEventByNumber(String str) {
        if (hasData()) {
            if (getPersonCall() != null && getPersonCall().isNumberTheSame(str)) {
                return getPersonCall();
            }
            if (getCompanyCall() != null && getCompanyCall().isNumberTheSame(str)) {
                return getCompanyCall();
            }
            return null;
        }
        return null;
    }

    public PhoneEvent getSpamResult(String str) {
        PhoneEvent phoneEventByNumber = getPhoneEventByNumber(str);
        if (phoneEventByNumber == null || !phoneEventByNumber.isSpam()) {
            return null;
        }
        return phoneEventByNumber;
    }

    public boolean hasCompany() {
        if (this.mHasCompany == null) {
            this.mHasCompany = Boolean.valueOf(getCompanyCall() != null && (!TextUtils.isEmpty(getCompanyCall().name) || !TextUtils.isEmpty(getCompanyCall().address)));
        }
        return this.mHasCompany.booleanValue();
    }

    public boolean hasContact() {
        if (this.mHasContact == null) {
            this.mHasContact = Boolean.valueOf(getContact() != null && !TextUtils.isEmpty(getContact().name));
        }
        return this.mHasContact.booleanValue();
    }

    public boolean hasData() {
        if (this.mHasData == null) {
            this.mHasData = Boolean.valueOf(hasPerson() || hasCompany() || hasContact() || hasSpam());
        }
        return this.mHasData.booleanValue();
    }

    public boolean hasPerson() {
        if (this.mHasPerson == null) {
            this.mHasPerson = Boolean.valueOf(getPersonCall() != null && (!TextUtils.isEmpty(getPersonCall().name) || !TextUtils.isEmpty(getPersonCall().address) || !TextUtils.isEmpty(getPersonCall().birthDate)));
        }
        return this.mHasPerson.booleanValue();
    }

    public boolean hasSpam() {
        if (this.mHasSpam == null) {
            this.mHasSpam = Boolean.valueOf((getPersonCall() != null && getPersonCall().isSpam()) || (getCompanyCall() != null && getCompanyCall().isSpam()));
        }
        return this.mHasSpam.booleanValue();
    }

    public String securityLevel() {
        if (this.mSecurityLevel == null) {
            if (hasCompany() && !TextUtils.isEmpty(this.companyCall.securityLevel)) {
                this.mSecurityLevel = this.companyCall.securityLevel;
            } else if (hasPerson() && !TextUtils.isEmpty(this.personCall.securityLevel)) {
                this.mSecurityLevel = this.personCall.securityLevel;
            }
        }
        return this.mSecurityLevel;
    }

    public void setCompanyCall(PhoneEvent phoneEvent) {
        cleanup();
        this.companyCall = phoneEvent;
    }

    public void setContact(Contact contact) {
        cleanup();
        this.contact = contact;
    }

    public void setPersonCall(PhoneEvent phoneEvent) {
        cleanup();
        this.personCall = phoneEvent;
    }
}
