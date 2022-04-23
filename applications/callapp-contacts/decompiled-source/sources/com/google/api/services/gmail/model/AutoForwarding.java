package com.google.api.services.gmail.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/model/AutoForwarding.class */
public final class AutoForwarding extends GenericJson {
    @q
    private String disposition;
    @q
    private String emailAddress;
    @q
    private Boolean enabled;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final AutoForwarding clone() {
        return (AutoForwarding) super.clone();
    }

    public final String getDisposition() {
        return this.disposition;
    }

    public final String getEmailAddress() {
        return this.emailAddress;
    }

    public final Boolean getEnabled() {
        return this.enabled;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final AutoForwarding set(String str, Object obj) {
        return (AutoForwarding) super.set(str, obj);
    }

    public final AutoForwarding setDisposition(String str) {
        this.disposition = str;
        return this;
    }

    public final AutoForwarding setEmailAddress(String str) {
        this.emailAddress = str;
        return this;
    }

    public final AutoForwarding setEnabled(Boolean bool) {
        this.enabled = bool;
        return this;
    }
}
