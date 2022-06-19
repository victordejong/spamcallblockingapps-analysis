package com.google.api.services.drive.model;

import com.google.api.client.json.C8666b;
import com.google.api.client.util.AbstractC8720o;
import com.google.api.client.util.C8712j;
import com.google.api.client.util.DateTime;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/api/services/drive/model/Permission.class */
public final class Permission extends C8666b {
    @AbstractC8720o
    private Boolean allowFileDiscovery;
    @AbstractC8720o
    private Boolean deleted;
    @AbstractC8720o
    private String displayName;
    @AbstractC8720o
    private String domain;
    @AbstractC8720o
    private String emailAddress;
    @AbstractC8720o
    private DateTime expirationTime;
    @AbstractC8720o

    /* renamed from: id */
    private String f38574id;
    @AbstractC8720o
    private String kind;
    @AbstractC8720o
    private String photoLink;
    @AbstractC8720o
    private String role;
    @AbstractC8720o
    private List<TeamDrivePermissionDetails> teamDrivePermissionDetails;
    @AbstractC8720o
    private String type;

    /* loaded from: classes2-dex2jar.jar:com/google/api/services/drive/model/Permission$TeamDrivePermissionDetails.class */
    public static final class TeamDrivePermissionDetails extends C8666b {
        @AbstractC8720o
        private Boolean inherited;
        @AbstractC8720o
        private String inheritedFrom;
        @AbstractC8720o
        private String role;
        @AbstractC8720o
        private String teamDrivePermissionType;

        @Override // com.google.api.client.json.C8666b, com.google.api.client.util.GenericData, java.util.AbstractMap
        public TeamDrivePermissionDetails clone() {
            return (TeamDrivePermissionDetails) super.clone();
        }

        public Boolean getInherited() {
            return this.inherited;
        }

        public String getInheritedFrom() {
            return this.inheritedFrom;
        }

        public String getRole() {
            return this.role;
        }

        public String getTeamDrivePermissionType() {
            return this.teamDrivePermissionType;
        }

        @Override // com.google.api.client.json.C8666b, com.google.api.client.util.GenericData
        public TeamDrivePermissionDetails set(String str, Object obj) {
            return (TeamDrivePermissionDetails) super.set(str, obj);
        }

        public TeamDrivePermissionDetails setInherited(Boolean bool) {
            this.inherited = bool;
            return this;
        }

        public TeamDrivePermissionDetails setInheritedFrom(String str) {
            this.inheritedFrom = str;
            return this;
        }

        public TeamDrivePermissionDetails setRole(String str) {
            this.role = str;
            return this;
        }

        public TeamDrivePermissionDetails setTeamDrivePermissionType(String str) {
            this.teamDrivePermissionType = str;
            return this;
        }
    }

    static {
        C8712j.m2874j(TeamDrivePermissionDetails.class);
    }

    @Override // com.google.api.client.json.C8666b, com.google.api.client.util.GenericData, java.util.AbstractMap
    public Permission clone() {
        return (Permission) super.clone();
    }

    public Boolean getAllowFileDiscovery() {
        return this.allowFileDiscovery;
    }

    public Boolean getDeleted() {
        return this.deleted;
    }

    public String getDisplayName() {
        return this.displayName;
    }

    public String getDomain() {
        return this.domain;
    }

    public String getEmailAddress() {
        return this.emailAddress;
    }

    public DateTime getExpirationTime() {
        return this.expirationTime;
    }

    public String getId() {
        return this.f38574id;
    }

    public String getKind() {
        return this.kind;
    }

    public String getPhotoLink() {
        return this.photoLink;
    }

    public String getRole() {
        return this.role;
    }

    public List<TeamDrivePermissionDetails> getTeamDrivePermissionDetails() {
        return this.teamDrivePermissionDetails;
    }

    public String getType() {
        return this.type;
    }

    @Override // com.google.api.client.json.C8666b, com.google.api.client.util.GenericData
    public Permission set(String str, Object obj) {
        return (Permission) super.set(str, obj);
    }

    public Permission setAllowFileDiscovery(Boolean bool) {
        this.allowFileDiscovery = bool;
        return this;
    }

    public Permission setDeleted(Boolean bool) {
        this.deleted = bool;
        return this;
    }

    public Permission setDisplayName(String str) {
        this.displayName = str;
        return this;
    }

    public Permission setDomain(String str) {
        this.domain = str;
        return this;
    }

    public Permission setEmailAddress(String str) {
        this.emailAddress = str;
        return this;
    }

    public Permission setExpirationTime(DateTime dateTime) {
        this.expirationTime = dateTime;
        return this;
    }

    public Permission setId(String str) {
        this.f38574id = str;
        return this;
    }

    public Permission setKind(String str) {
        this.kind = str;
        return this;
    }

    public Permission setPhotoLink(String str) {
        this.photoLink = str;
        return this;
    }

    public Permission setRole(String str) {
        this.role = str;
        return this;
    }

    public Permission setTeamDrivePermissionDetails(List<TeamDrivePermissionDetails> list) {
        this.teamDrivePermissionDetails = list;
        return this;
    }

    public Permission setType(String str) {
        this.type = str;
        return this;
    }
}
