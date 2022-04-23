package com.google.api.services.drive.model;

import com.google.api.client.a.j;
import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/model/PermissionList.class */
public final class PermissionList extends GenericJson {
    @q
    private String kind;
    @q
    private String nextPageToken;
    @q
    private List<Permission> permissions;

    static {
        j.a(Permission.class);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final PermissionList clone() {
        return (PermissionList) super.clone();
    }

    public final String getKind() {
        return this.kind;
    }

    public final String getNextPageToken() {
        return this.nextPageToken;
    }

    public final List<Permission> getPermissions() {
        return this.permissions;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final PermissionList set(String str, Object obj) {
        return (PermissionList) super.set(str, obj);
    }

    public final PermissionList setKind(String str) {
        this.kind = str;
        return this;
    }

    public final PermissionList setNextPageToken(String str) {
        this.nextPageToken = str;
        return this;
    }

    public final PermissionList setPermissions(List<Permission> list) {
        this.permissions = list;
        return this;
    }
}
