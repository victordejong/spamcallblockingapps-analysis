package com.google.api.services.drive.model;

import com.google.api.client.json.C8666b;
import com.google.api.client.util.AbstractC8720o;
/* loaded from: classes2-dex2jar.jar:com/google/api/services/drive/model/User.class */
public final class User extends C8666b {
    @AbstractC8720o
    private String displayName;
    @AbstractC8720o
    private String emailAddress;
    @AbstractC8720o
    private String kind;
    @AbstractC8720o

    /* renamed from: me */
    private Boolean f38579me;
    @AbstractC8720o
    private String permissionId;
    @AbstractC8720o
    private String photoLink;

    @Override // com.google.api.client.json.C8666b, com.google.api.client.util.GenericData, java.util.AbstractMap
    public User clone() {
        return (User) super.clone();
    }

    public String getDisplayName() {
        return this.displayName;
    }

    public String getEmailAddress() {
        return this.emailAddress;
    }

    public String getKind() {
        return this.kind;
    }

    public Boolean getMe() {
        return this.f38579me;
    }

    public String getPermissionId() {
        return this.permissionId;
    }

    public String getPhotoLink() {
        return this.photoLink;
    }

    @Override // com.google.api.client.json.C8666b, com.google.api.client.util.GenericData
    public User set(String str, Object obj) {
        return (User) super.set(str, obj);
    }

    public User setDisplayName(String str) {
        this.displayName = str;
        return this;
    }

    public User setEmailAddress(String str) {
        this.emailAddress = str;
        return this;
    }

    public User setKind(String str) {
        this.kind = str;
        return this;
    }

    public User setMe(Boolean bool) {
        this.f38579me = bool;
        return this;
    }

    public User setPermissionId(String str) {
        this.permissionId = str;
        return this;
    }

    public User setPhotoLink(String str) {
        this.photoLink = str;
        return this;
    }
}
