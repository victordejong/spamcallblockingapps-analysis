package com.google.api.services.drive.model;

import com.google.api.client.a.l;
import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/model/TeamDrive.class */
public final class TeamDrive extends GenericJson {
    @q
    private BackgroundImageFile backgroundImageFile;
    @q
    private String backgroundImageLink;
    @q
    private Capabilities capabilities;
    @q
    private String colorRgb;
    @q
    private l createdTime;
    @q
    private String id;
    @q
    private String kind;
    @q
    private String name;
    @q
    private Restrictions restrictions;
    @q
    private String themeId;

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/model/TeamDrive$BackgroundImageFile.class */
    public static final class BackgroundImageFile extends GenericJson {
        @q
        private String id;
        @q
        private Float width;
        @q
        private Float xCoordinate;
        @q
        private Float yCoordinate;

        @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
        public final BackgroundImageFile clone() {
            return (BackgroundImageFile) super.clone();
        }

        public final String getId() {
            return this.id;
        }

        public final Float getWidth() {
            return this.width;
        }

        public final Float getXCoordinate() {
            return this.xCoordinate;
        }

        public final Float getYCoordinate() {
            return this.yCoordinate;
        }

        @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
        public final BackgroundImageFile set(String str, Object obj) {
            return (BackgroundImageFile) super.set(str, obj);
        }

        public final BackgroundImageFile setId(String str) {
            this.id = str;
            return this;
        }

        public final BackgroundImageFile setWidth(Float f) {
            this.width = f;
            return this;
        }

        public final BackgroundImageFile setXCoordinate(Float f) {
            this.xCoordinate = f;
            return this;
        }

        public final BackgroundImageFile setYCoordinate(Float f) {
            this.yCoordinate = f;
            return this;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/model/TeamDrive$Capabilities.class */
    public static final class Capabilities extends GenericJson {
        @q
        private Boolean canAddChildren;
        @q
        private Boolean canChangeCopyRequiresWriterPermissionRestriction;
        @q
        private Boolean canChangeDomainUsersOnlyRestriction;
        @q
        private Boolean canChangeTeamDriveBackground;
        @q
        private Boolean canChangeTeamMembersOnlyRestriction;
        @q
        private Boolean canComment;
        @q
        private Boolean canCopy;
        @q
        private Boolean canDeleteChildren;
        @q
        private Boolean canDeleteTeamDrive;
        @q
        private Boolean canDownload;
        @q
        private Boolean canEdit;
        @q
        private Boolean canListChildren;
        @q
        private Boolean canManageMembers;
        @q
        private Boolean canReadRevisions;
        @q
        private Boolean canRemoveChildren;
        @q
        private Boolean canRename;
        @q
        private Boolean canRenameTeamDrive;
        @q
        private Boolean canShare;
        @q
        private Boolean canTrashChildren;

        @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
        public final Capabilities clone() {
            return (Capabilities) super.clone();
        }

        public final Boolean getCanAddChildren() {
            return this.canAddChildren;
        }

        public final Boolean getCanChangeCopyRequiresWriterPermissionRestriction() {
            return this.canChangeCopyRequiresWriterPermissionRestriction;
        }

        public final Boolean getCanChangeDomainUsersOnlyRestriction() {
            return this.canChangeDomainUsersOnlyRestriction;
        }

        public final Boolean getCanChangeTeamDriveBackground() {
            return this.canChangeTeamDriveBackground;
        }

        public final Boolean getCanChangeTeamMembersOnlyRestriction() {
            return this.canChangeTeamMembersOnlyRestriction;
        }

        public final Boolean getCanComment() {
            return this.canComment;
        }

        public final Boolean getCanCopy() {
            return this.canCopy;
        }

        public final Boolean getCanDeleteChildren() {
            return this.canDeleteChildren;
        }

        public final Boolean getCanDeleteTeamDrive() {
            return this.canDeleteTeamDrive;
        }

        public final Boolean getCanDownload() {
            return this.canDownload;
        }

        public final Boolean getCanEdit() {
            return this.canEdit;
        }

        public final Boolean getCanListChildren() {
            return this.canListChildren;
        }

        public final Boolean getCanManageMembers() {
            return this.canManageMembers;
        }

        public final Boolean getCanReadRevisions() {
            return this.canReadRevisions;
        }

        public final Boolean getCanRemoveChildren() {
            return this.canRemoveChildren;
        }

        public final Boolean getCanRename() {
            return this.canRename;
        }

        public final Boolean getCanRenameTeamDrive() {
            return this.canRenameTeamDrive;
        }

        public final Boolean getCanShare() {
            return this.canShare;
        }

        public final Boolean getCanTrashChildren() {
            return this.canTrashChildren;
        }

        @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
        public final Capabilities set(String str, Object obj) {
            return (Capabilities) super.set(str, obj);
        }

        public final Capabilities setCanAddChildren(Boolean bool) {
            this.canAddChildren = bool;
            return this;
        }

        public final Capabilities setCanChangeCopyRequiresWriterPermissionRestriction(Boolean bool) {
            this.canChangeCopyRequiresWriterPermissionRestriction = bool;
            return this;
        }

        public final Capabilities setCanChangeDomainUsersOnlyRestriction(Boolean bool) {
            this.canChangeDomainUsersOnlyRestriction = bool;
            return this;
        }

        public final Capabilities setCanChangeTeamDriveBackground(Boolean bool) {
            this.canChangeTeamDriveBackground = bool;
            return this;
        }

        public final Capabilities setCanChangeTeamMembersOnlyRestriction(Boolean bool) {
            this.canChangeTeamMembersOnlyRestriction = bool;
            return this;
        }

        public final Capabilities setCanComment(Boolean bool) {
            this.canComment = bool;
            return this;
        }

        public final Capabilities setCanCopy(Boolean bool) {
            this.canCopy = bool;
            return this;
        }

        public final Capabilities setCanDeleteChildren(Boolean bool) {
            this.canDeleteChildren = bool;
            return this;
        }

        public final Capabilities setCanDeleteTeamDrive(Boolean bool) {
            this.canDeleteTeamDrive = bool;
            return this;
        }

        public final Capabilities setCanDownload(Boolean bool) {
            this.canDownload = bool;
            return this;
        }

        public final Capabilities setCanEdit(Boolean bool) {
            this.canEdit = bool;
            return this;
        }

        public final Capabilities setCanListChildren(Boolean bool) {
            this.canListChildren = bool;
            return this;
        }

        public final Capabilities setCanManageMembers(Boolean bool) {
            this.canManageMembers = bool;
            return this;
        }

        public final Capabilities setCanReadRevisions(Boolean bool) {
            this.canReadRevisions = bool;
            return this;
        }

        public final Capabilities setCanRemoveChildren(Boolean bool) {
            this.canRemoveChildren = bool;
            return this;
        }

        public final Capabilities setCanRename(Boolean bool) {
            this.canRename = bool;
            return this;
        }

        public final Capabilities setCanRenameTeamDrive(Boolean bool) {
            this.canRenameTeamDrive = bool;
            return this;
        }

        public final Capabilities setCanShare(Boolean bool) {
            this.canShare = bool;
            return this;
        }

        public final Capabilities setCanTrashChildren(Boolean bool) {
            this.canTrashChildren = bool;
            return this;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/model/TeamDrive$Restrictions.class */
    public static final class Restrictions extends GenericJson {
        @q
        private Boolean adminManagedRestrictions;
        @q
        private Boolean copyRequiresWriterPermission;
        @q
        private Boolean domainUsersOnly;
        @q
        private Boolean teamMembersOnly;

        @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
        public final Restrictions clone() {
            return (Restrictions) super.clone();
        }

        public final Boolean getAdminManagedRestrictions() {
            return this.adminManagedRestrictions;
        }

        public final Boolean getCopyRequiresWriterPermission() {
            return this.copyRequiresWriterPermission;
        }

        public final Boolean getDomainUsersOnly() {
            return this.domainUsersOnly;
        }

        public final Boolean getTeamMembersOnly() {
            return this.teamMembersOnly;
        }

        @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
        public final Restrictions set(String str, Object obj) {
            return (Restrictions) super.set(str, obj);
        }

        public final Restrictions setAdminManagedRestrictions(Boolean bool) {
            this.adminManagedRestrictions = bool;
            return this;
        }

        public final Restrictions setCopyRequiresWriterPermission(Boolean bool) {
            this.copyRequiresWriterPermission = bool;
            return this;
        }

        public final Restrictions setDomainUsersOnly(Boolean bool) {
            this.domainUsersOnly = bool;
            return this;
        }

        public final Restrictions setTeamMembersOnly(Boolean bool) {
            this.teamMembersOnly = bool;
            return this;
        }
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final TeamDrive clone() {
        return (TeamDrive) super.clone();
    }

    public final BackgroundImageFile getBackgroundImageFile() {
        return this.backgroundImageFile;
    }

    public final String getBackgroundImageLink() {
        return this.backgroundImageLink;
    }

    public final Capabilities getCapabilities() {
        return this.capabilities;
    }

    public final String getColorRgb() {
        return this.colorRgb;
    }

    public final l getCreatedTime() {
        return this.createdTime;
    }

    public final String getId() {
        return this.id;
    }

    public final String getKind() {
        return this.kind;
    }

    public final String getName() {
        return this.name;
    }

    public final Restrictions getRestrictions() {
        return this.restrictions;
    }

    public final String getThemeId() {
        return this.themeId;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final TeamDrive set(String str, Object obj) {
        return (TeamDrive) super.set(str, obj);
    }

    public final TeamDrive setBackgroundImageFile(BackgroundImageFile backgroundImageFile) {
        this.backgroundImageFile = backgroundImageFile;
        return this;
    }

    public final TeamDrive setBackgroundImageLink(String str) {
        this.backgroundImageLink = str;
        return this;
    }

    public final TeamDrive setCapabilities(Capabilities capabilities) {
        this.capabilities = capabilities;
        return this;
    }

    public final TeamDrive setColorRgb(String str) {
        this.colorRgb = str;
        return this;
    }

    public final TeamDrive setCreatedTime(l lVar) {
        this.createdTime = lVar;
        return this;
    }

    public final TeamDrive setId(String str) {
        this.id = str;
        return this;
    }

    public final TeamDrive setKind(String str) {
        this.kind = str;
        return this;
    }

    public final TeamDrive setName(String str) {
        this.name = str;
        return this;
    }

    public final TeamDrive setRestrictions(Restrictions restrictions) {
        this.restrictions = restrictions;
        return this;
    }

    public final TeamDrive setThemeId(String str) {
        this.themeId = str;
        return this;
    }
}
