package com.google.api.services.drive.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/model/User.class */
public final class User extends GenericJson {
    @AbstractC15247q
    private String displayName;
    @AbstractC15247q
    private String emailAddress;
    @AbstractC15247q
    private String kind;
    @AbstractC15247q

    /* renamed from: me */
    private Boolean f55448me;
    @AbstractC15247q
    private String permissionId;
    @AbstractC15247q
    private String photoLink;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
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
        return this.f55448me;
    }

    public final String getPermissionId() {
        return this.permissionId;
    }

    public final String getPhotoLink() {
        return this.photoLink;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
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
        this.f55448me = bool;
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
