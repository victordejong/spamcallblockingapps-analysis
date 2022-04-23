package com.google.api.services.drive.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/model/User.class */
public final class User extends GenericJson {
    @q
    private String displayName;
    @q
    private String emailAddress;
    @q
    private String kind;
    @q
    private Boolean me;
    @q
    private String permissionId;
    @q
    private String photoLink;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final User clone() {
        return (User) super.clone();
    }

    public final String getDisplayName() {
        return this.displayName;
    }

    public final String getEmailAddress() {
        return this.emailAddress;
    }

    public final String getKind() {
        return this.kind;
    }

    public final Boolean getMe() {
        return this.me;
    }

    public final String getPermissionId() {
        return this.permissionId;
    }

    public final String getPhotoLink() {
        return this.photoLink;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final User set(String str, Object obj) {
        return (User) super.set(str, obj);
    }

    public final User setDisplayName(String str) {
        this.displayName = str;
        return this;
    }

    public final User setEmailAddress(String str) {
        this.emailAddress = str;
        return this;
    }

    public final User setKind(String str) {
        this.kind = str;
        return this;
    }

    public final User setMe(Boolean bool) {
        this.me = bool;
        return this;
    }

    public final User setPermissionId(String str) {
        this.permissionId = str;
        return this;
    }

    public final User setPhotoLink(String str) {
        this.photoLink = str;
        return this;
    }
}
