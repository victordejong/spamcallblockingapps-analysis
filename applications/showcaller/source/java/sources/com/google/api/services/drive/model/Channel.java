package com.google.api.services.drive.model;

import com.google.api.client.json.AbstractC8675h;
import com.google.api.client.json.C8666b;
import com.google.api.client.util.AbstractC8720o;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/api/services/drive/model/Channel.class */
public final class Channel extends C8666b {
    @AbstractC8720o
    private String address;
    @AbstractC8675h
    @AbstractC8720o
    private Long expiration;
    @AbstractC8720o

    /* renamed from: id */
    private String f38571id;
    @AbstractC8720o
    private String kind;
    @AbstractC8720o
    private Map<String, String> params;
    @AbstractC8720o
    private Boolean payload;
    @AbstractC8720o
    private String resourceId;
    @AbstractC8720o
    private String resourceUri;
    @AbstractC8720o
    private String token;
    @AbstractC8720o
    private String type;

    @Override // com.google.api.client.json.C8666b, com.google.api.client.util.GenericData, java.util.AbstractMap
    public Channel clone() {
        return (Channel) super.clone();
    }

    public String getAddress() {
        return this.address;
    }

    public Long getExpiration() {
        return this.expiration;
    }

    public String getId() {
        return this.f38571id;
    }

    public String getKind() {
        return this.kind;
    }

    public Map<String, String> getParams() {
        return this.params;
    }

    public Boolean getPayload() {
        return this.payload;
    }

    public String getResourceId() {
        return this.resourceId;
    }

    public String getResourceUri() {
        return this.resourceUri;
    }

    public String getToken() {
        return this.token;
    }

    public String getType() {
        return this.type;
    }

    @Override // com.google.api.client.json.C8666b, com.google.api.client.util.GenericData
    public Channel set(String str, Object obj) {
        return (Channel) super.set(str, obj);
    }

    public Channel setAddress(String str) {
        this.address = str;
        return this;
    }

    public Channel setExpiration(Long l) {
        this.expiration = l;
        return this;
    }

    public Channel setId(String str) {
        this.f38571id = str;
        return this;
    }

    public Channel setKind(String str) {
        this.kind = str;
        return this;
    }

    public Channel setParams(Map<String, String> map) {
        this.params = map;
        return this;
    }

    public Channel setPayload(Boolean bool) {
        this.payload = bool;
        return this;
    }

    public Channel setResourceId(String str) {
        this.resourceId = str;
        return this;
    }

    public Channel setResourceUri(String str) {
        this.resourceUri = str;
        return this;
    }

    public Channel setToken(String str) {
        this.token = str;
        return this;
    }

    public Channel setType(String str) {
        this.type = str;
        return this;
    }
}
