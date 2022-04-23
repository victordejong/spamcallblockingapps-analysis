package com.google.api.services.gmail.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/model/SendAs.class */
public final class SendAs extends GenericJson {
    @q
    private String displayName;
    @q
    private Boolean isDefault;
    @q
    private Boolean isPrimary;
    @q
    private String replyToAddress;
    @q
    private String sendAsEmail;
    @q
    private String signature;
    @q
    private SmtpMsa smtpMsa;
    @q
    private Boolean treatAsAlias;
    @q
    private String verificationStatus;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final SendAs clone() {
        return (SendAs) super.clone();
    }

    public final String getDisplayName() {
        return this.displayName;
    }

    public final Boolean getIsDefault() {
        return this.isDefault;
    }

    public final Boolean getIsPrimary() {
        return this.isPrimary;
    }

    public final String getReplyToAddress() {
        return this.replyToAddress;
    }

    public final String getSendAsEmail() {
        return this.sendAsEmail;
    }

    public final String getSignature() {
        return this.signature;
    }

    public final SmtpMsa getSmtpMsa() {
        return this.smtpMsa;
    }

    public final Boolean getTreatAsAlias() {
        return this.treatAsAlias;
    }

    public final String getVerificationStatus() {
        return this.verificationStatus;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final SendAs set(String str, Object obj) {
        return (SendAs) super.set(str, obj);
    }

    public final SendAs setDisplayName(String str) {
        this.displayName = str;
        return this;
    }

    public final SendAs setIsDefault(Boolean bool) {
        this.isDefault = bool;
        return this;
    }

    public final SendAs setIsPrimary(Boolean bool) {
        this.isPrimary = bool;
        return this;
    }

    public final SendAs setReplyToAddress(String str) {
        this.replyToAddress = str;
        return this;
    }

    public final SendAs setSendAsEmail(String str) {
        this.sendAsEmail = str;
        return this;
    }

    public final SendAs setSignature(String str) {
        this.signature = str;
        return this;
    }

    public final SendAs setSmtpMsa(SmtpMsa smtpMsa) {
        this.smtpMsa = smtpMsa;
        return this;
    }

    public final SendAs setTreatAsAlias(Boolean bool) {
        this.treatAsAlias = bool;
        return this;
    }

    public final SendAs setVerificationStatus(String str) {
        this.verificationStatus = str;
        return this;
    }
}
