package com.google.api.services.drive.model;

import com.google.api.client.a.j;
import com.google.api.client.a.l;
import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/model/Permission.class */
public final class Permission extends GenericJson {
    @q
    private Boolean allowFileDiscovery;
    @q
    private Boolean deleted;
    @q
    private String displayName;
    @q
    private String domain;
    @q
    private String emailAddress;
    @q
    private l expirationTime;
    @q
    private String id;
    @q
    private String kind;
    @q
    private List<PermissionDetails> permissionDetails;
    @q
    private String photoLink;
    @q
    private String role;
    @q
    private List<TeamDrivePermissionDetails> teamDrivePermissionDetails;
    @q
    private String type;

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/model/Permission$PermissionDetails.class */
    public static final class PermissionDetails extends GenericJson {
        @q
        private Boolean inherited;
        @q
        private String inheritedFrom;
        @q
        private String permissionType;
        @q
        private String role;

        @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
        public final PermissionDetails clone() {
            return (PermissionDetails) super.clone();
        }

        public final Boolean getInherited() {
            return this.inherited;
        }

        public final String getInheritedFrom() {
            return this.inheritedFrom;
        }

        public final String getPermissionType() {
            return this.permissionType;
        }

        public final String getRole() {
            return this.role;
        }

        @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
        public final PermissionDetails set(String str, Object obj) {
            return (PermissionDetails) super.set(str, obj);
        }

        public final PermissionDetails setInherited(Boolean bool) {
            this.inherited = bool;
            return this;
        }

        public final PermissionDetails setInheritedFrom(String str) {
            this.inheritedFrom = str;
            return this;
        }

        public final PermissionDetails setPermissionType(String str) {
            this.permissionType = str;
            return this;
        }

        public final PermissionDetails setRole(String str) {
            this.role = str;
            return this;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/model/Permission$TeamDrivePermissionDetails.class */
    public static final class TeamDrivePermissionDetails extends GenericJson {
        @q
        private Boolean inherited;
        @q
        private String inheritedFrom;
        @q
        private String role;
        @q
        private String teamDrivePermissionType;

        @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
        public final TeamDrivePermissionDetails clone() {
            return (TeamDrivePermissionDetails) super.clone();
        }

        public final Boolean getInherited() {
            return this.inherited;
        }

        public final String getInheritedFrom() {
            return this.inheritedFrom;
        }

        public final String getRole() {
            return this.role;
        }

        public final String getTeamDrivePermissionType() {
            return this.teamDrivePermissionType;
        }

        @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
        public final TeamDrivePermissionDetails set(String str, Object obj) {
            return (TeamDrivePermissionDetails) super.set(str, obj);
        }

        public final TeamDrivePermissionDetails setInherited(Boolean bool) {
            this.inherited = bool;
            return this;
        }

        public final TeamDrivePermissionDetails setInheritedFrom(String str) {
            this.inheritedFrom = str;
            return this;
        }

        public final TeamDrivePermissionDetails setRole(String str) {
            this.role = str;
            return this;
        }

        public final TeamDrivePermissionDetails setTeamDrivePermissionType(String str) {
            this.teamDrivePermissionType = str;
            return this;
        }
    }

    static {
        j.a(PermissionDetails.class);
        j.a(TeamDrivePermissionDetails.class);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final Permission clone() {
        return (Permission) super.clone();
    }

    public final Boolean getAllowFileDiscovery() {
        return this.allowFileDiscovery;
    }

    public final Boolean getDeleted() {
        return this.deleted;
    }

    public final String getDisplayName() {
        return this.displayName;
    }

    public final String getDomain() {
        return this.domain;
    }

    public final String getEmailAddress() {
        return this.emailAddress;
    }

    public final l getExpirationTime() {
        return this.expirationTime;
    }

    public final String getId() {
        return this.id;
    }

    public final String getKind() {
        return this.kind;
    }

    public final List<PermissionDetails> getPermissionDetails() {
        return this.permissionDetails;
    }

    public final String getPhotoLink() {
        return this.photoLink;
    }

    public final String getRole() {
        return this.role;
    }

    public final List<TeamDrivePermissionDetails> getTeamDrivePermissionDetails() {
        return this.teamDrivePermissionDetails;
    }

    public final String getType() {
        return this.type;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final Permission set(String str, Object obj) {
        return (Permission) super.set(str, obj);
    }

    public final Permission setAllowFileDiscovery(Boolean bool) {
        this.allowFileDiscovery = bool;
        return this;
    }

    public final Permission setDeleted(Boolean bool) {
        this.deleted = bool;
        return this;
    }

    public final Permission setDisplayName(String str) {
        this.displayName = str;
        return this;
    }

    public final Permission setDomain(String str) {
        this.domain = str;
        return this;
    }

    public final Permission setEmailAddress(String str) {
        this.emailAddress = str;
        return this;
    }

    public final Permission setExpirationTime(l lVar) {
        this.expirationTime = lVar;
        return this;
    }

    public final Permission setId(String str) {
        this.id = str;
        return this;
    }

    public final Permission setKind(String str) {
        this.kind = str;
        return this;
    }

    public final Permission setPermissionDetails(List<PermissionDetails> list) {
        this.permissionDetails = list;
        return this;
    }

    public final Permission setPhotoLink(String str) {
        this.photoLink = str;
        return this;
    }

    public final Permission setRole(String str) {
        this.role = str;
        return this;
    }

    public final Permission setTeamDrivePermissionDetails(List<TeamDrivePermissionDetails> list) {
        this.teamDrivePermissionDetails = list;
        return this;
    }

    public final Permission setType(String str) {
        this.type = str;
        return this;
    }
}
