package com.google.api.services.gmail.model;

import com.google.api.client.a.d;
import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
import com.google.api.client.json.JsonString;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/model/SmimeInfo.class */
public final class SmimeInfo extends GenericJson {
    @q
    private String encryptedKeyPassword;
    @q
    @JsonString
    private Long expiration;
    @q
    private String id;
    @q
    private Boolean isDefault;
    @q
    private String issuerCn;
    @q
    private String pem;
    @q
    private String pkcs12;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final SmimeInfo clone() {
        return (SmimeInfo) super.clone();
    }

    public final byte[] decodePkcs12() {
        return d.a(this.pkcs12);
    }

    public final SmimeInfo encodePkcs12(byte[] bArr) {
        this.pkcs12 = d.a(bArr);
        return this;
    }

    public final String getEncryptedKeyPassword() {
        return this.encryptedKeyPassword;
    }

    public final Long getExpiration() {
        return this.expiration;
    }

    public final String getId() {
        return this.id;
    }

    public final Boolean getIsDefault() {
        return this.isDefault;
    }

    public final String getIssuerCn() {
        return this.issuerCn;
    }

    public final String getPem() {
        return this.pem;
    }

    public final String getPkcs12() {
        return this.pkcs12;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final SmimeInfo set(String str, Object obj) {
        return (SmimeInfo) super.set(str, obj);
    }

    public final SmimeInfo setEncryptedKeyPassword(String str) {
        this.encryptedKeyPassword = str;
        return this;
    }

    public final SmimeInfo setExpiration(Long l) {
        this.expiration = l;
        return this;
    }

    public final SmimeInfo setId(String str) {
        this.id = str;
        return this;
    }

    public final SmimeInfo setIsDefault(Boolean bool) {
        this.isDefault = bool;
        return this;
    }

    public final SmimeInfo setIssuerCn(String str) {
        this.issuerCn = str;
        return this;
    }

    public final SmimeInfo setPem(String str) {
        this.pem = str;
        return this;
    }

    public final SmimeInfo setPkcs12(String str) {
        this.pkcs12 = str;
        return this;
    }
}
