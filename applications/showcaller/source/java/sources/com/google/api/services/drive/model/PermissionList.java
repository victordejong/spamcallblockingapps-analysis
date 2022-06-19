package com.google.api.services.drive.model;

import com.google.api.client.json.C8666b;
import com.google.api.client.util.AbstractC8720o;
import com.google.api.client.util.C8712j;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/api/services/drive/model/PermissionList.class */
public final class PermissionList extends C8666b {
    @AbstractC8720o
    private String kind;
    @AbstractC8720o
    private String nextPageToken;
    @AbstractC8720o
    private List<Permission> permissions;

    static {
        C8712j.m2874j(Permission.class);
    }

    @Override // com.google.api.client.json.C8666b, com.google.api.client.util.GenericData, java.util.AbstractMap
    public PermissionList clone() {
        return (PermissionList) super.clone();
    }

    public String getKind() {
        return this.kind;
    }

    public String getNextPageToken() {
        return this.nextPageToken;
    }

    public List<Permission> getPermissions() {
        return this.permissions;
    }

    @Override // com.google.api.client.json.C8666b, com.google.api.client.util.GenericData
    public PermissionList set(String str, Object obj) {
        return (PermissionList) super.set(str, obj);
    }

    public PermissionList setKind(String str) {
        this.kind = str;
        return this;
    }

    public PermissionList setNextPageToken(String str) {
        this.nextPageToken = str;
        return this;
    }

    public PermissionList setPermissions(List<Permission> list) {
        this.permissions = list;
        return this;
    }
}
