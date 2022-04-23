package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/AccessPolicy.class */
public final class AccessPolicy extends GenericJson {
    @q
    private Boolean allowed;
    @q
    private List<String> exception;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final AccessPolicy clone() {
        return (AccessPolicy) super.clone();
    }

    public final Boolean getAllowed() {
        return this.allowed;
    }

    public final List<String> getException() {
        return this.exception;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final AccessPolicy set(String str, Object obj) {
        return (AccessPolicy) super.set(str, obj);
    }

    public final AccessPolicy setAllowed(Boolean bool) {
        this.allowed = bool;
        return this;
    }

    public final AccessPolicy setException(List<String> list) {
        this.exception = list;
        return this;
    }
}
