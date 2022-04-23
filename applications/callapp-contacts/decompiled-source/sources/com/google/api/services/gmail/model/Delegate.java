package com.google.api.services.gmail.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/model/Delegate.class */
public final class Delegate extends GenericJson {
    @q
    private String delegateEmail;
    @q
    private String verificationStatus;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final Delegate clone() {
        return (Delegate) super.clone();
    }

    public final String getDelegateEmail() {
        return this.delegateEmail;
    }

    public final String getVerificationStatus() {
        return this.verificationStatus;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final Delegate set(String str, Object obj) {
        return (Delegate) super.set(str, obj);
    }

    public final Delegate setDelegateEmail(String str) {
        this.delegateEmail = str;
        return this;
    }

    public final Delegate setVerificationStatus(String str) {
        this.verificationStatus = str;
        return this;
    }
}
