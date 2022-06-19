package com.google.api.services.drive.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.json.JsonString;
import com.google.api.client.p379a.AbstractC15247q;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/model/Channel.class */
public final class Channel extends GenericJson {
    @AbstractC15247q
    private String address;
    @AbstractC15247q
    @JsonString
    private Long expiration;
    @AbstractC15247q

    /* renamed from: id */
    private String f55438id;
    @AbstractC15247q
    private String kind;
    @AbstractC15247q
    private Map<String, String> params;
    @AbstractC15247q
    private Boolean payload;
    @AbstractC15247q
    private String resourceId;
    @AbstractC15247q
    private String resourceUri;
    @AbstractC15247q
    private String token;
    @AbstractC15247q
    private String type;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final Channel clone() {
        return (Channel) super.clone();
    }

    public final String getAddress() {
        return this.address;
    }

    public final Long getExpiration() {
        return this.expiration;
    }

    public final String getId() {
        return this.f55438id;
    }

    public final String getKind() {
        return this.kind;
    }

    public final Map<String, String> getParams() {
        return this.params;
    }

    public final Boolean getPayload() {
        return this.payload;
    }

    public final String getResourceId() {
        return this.resourceId;
    }

    public final String getResourceUri() {
        return this.resourceUri;
    }

    public final String getToken() {
        return this.token;
    }

    public final String getType() {
        return this.type;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final Channel set(String str, Object obj) {
        return (Channel) super.set(str, obj);
    }

    public final Channel setAddress(String str) {
        this.address = str;
        return this;
    }

    public final Channel setExpiration(Long l) {
        this.expiration = l;
        return this;
    }

    public final Channel setId(String str) {
        this.f55438id = str;
        return this;
    }

    public final Channel setKind(String str) {
        this.kind = str;
        return this;
    }

    public final Channel setParams(Map<String, String> map) {
        this.params = map;
        return this;
    }

    public final Channel setPayload(Boolean bool) {
        this.payload = bool;
        return this;
    }

    public final Channel setResourceId(String str) {
        this.resourceId = str;
        return this;
    }

    public final Channel setResourceUri(String str) {
        this.resourceUri = str;
        return this;
    }

    public final Channel setToken(String str) {
        this.token = str;
        return this;
    }

    public final Channel setType(String str) {
        this.type = str;
        return this;
    }
}
