package com.google.api.services.drive.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
import com.google.api.client.p379a.C15232j;
import com.google.api.client.p379a.C15237l;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/model/Permission.class */
public final class Permission extends GenericJson {
    @AbstractC15247q
    private Boolean allowFileDiscovery;
    @AbstractC15247q
    private Boolean deleted;
    @AbstractC15247q
    private String displayName;
    @AbstractC15247q
    private String domain;
    @AbstractC15247q
    private String emailAddress;
    @AbstractC15247q
    private C15237l expirationTime;
    @AbstractC15247q

    /* renamed from: id */
    private String f55443id;
    @AbstractC15247q
    private String kind;
    @AbstractC15247q
    private List<PermissionDetails> permissionDetails;
    @AbstractC15247q
    private String photoLink;
    @AbstractC15247q
    private String role;
    @AbstractC15247q
    private List<TeamDrivePermissionDetails> teamDrivePermissionDetails;
    @AbstractC15247q
    private String type;

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/model/Permission$PermissionDetails.class */
    public static final class PermissionDetails extends GenericJson {
        @AbstractC15247q
        private Boolean inherited;
        @AbstractC15247q
        private String inheritedFrom;
        @AbstractC15247q
        private String permissionType;
        @AbstractC15247q
        private String role;

        @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
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

        @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
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
        @AbstractC15247q
        private Boolean inherited;
        @AbstractC15247q
        private String inheritedFrom;
        @AbstractC15247q
        private String role;
        @AbstractC15247q
        private String teamDrivePermissionType;

        @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
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

        @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
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
        C15232j.m9242a(PermissionDetails.class);
        C15232j.m9242a(TeamDrivePermissionDetails.class);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
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

    public final C15237l getExpirationTime() {
        return this.expirationTime;
    }

    public final String getId() {
        return this.f55443id;
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

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
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

    public final Permission setExpirationTime(C15237l c15237l) {
        this.expirationTime = c15237l;
        return this;
    }

    public final Permission setId(String str) {
        this.f55443id = str;
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
