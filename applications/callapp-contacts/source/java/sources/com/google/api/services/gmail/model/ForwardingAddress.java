package com.google.api.services.gmail.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/model/ForwardingAddress.class */
public final class ForwardingAddress extends GenericJson {
    @AbstractC15247q
    private String forwardingEmail;
    @AbstractC15247q
    private String verificationStatus;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final ForwardingAddress clone() {
        return (ForwardingAddress) super.clone();
    }

    public final String getForwardingEmail() {
        return this.forwardingEmail;
    }

    public final String getVerificationStatus() {
        return this.verificationStatus;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final ForwardingAddress set(String str, Object obj) {
        return (ForwardingAddress) super.set(str, obj);
    }

    public final ForwardingAddress setForwardingEmail(String str) {
        this.forwardingEmail = str;
        return this;
    }

    public final ForwardingAddress setVerificationStatus(String str) {
        this.verificationStatus = str;
        return this;
    }
}
