package com.google.api.services.gmail.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/model/SmtpMsa.class */
public final class SmtpMsa extends GenericJson {
    @AbstractC15247q
    private String host;
    @AbstractC15247q
    private String password;
    @AbstractC15247q
    private Integer port;
    @AbstractC15247q
    private String securityMode;
    @AbstractC15247q
    private String username;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final SmtpMsa clone() {
        return (SmtpMsa) super.clone();
    }

    public final String getHost() {
        return this.host;
    }

    public final String getPassword() {
        return this.password;
    }

    public final Integer getPort() {
        return this.port;
    }

    public final String getSecurityMode() {
        return this.securityMode;
    }

    public final String getUsername() {
        return this.username;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final SmtpMsa set(String str, Object obj) {
        return (SmtpMsa) super.set(str, obj);
    }

    public final SmtpMsa setHost(String str) {
        this.host = str;
        return this;
    }

    public final SmtpMsa setPassword(String str) {
        this.password = str;
        return this;
    }

    public final SmtpMsa setPort(Integer num) {
        this.port = num;
        return this;
    }

    public final SmtpMsa setSecurityMode(String str) {
        this.securityMode = str;
        return this;
    }

    public final SmtpMsa setUsername(String str) {
        this.username = str;
        return this;
    }
}
