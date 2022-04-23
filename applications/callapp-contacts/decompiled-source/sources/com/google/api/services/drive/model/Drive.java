package com.google.api.services.drive.model;

import com.google.api.client.a.l;
import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/model/Drive.class */
public final class Drive extends GenericJson {
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
    private Boolean hidden;
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

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/model/Drive$BackgroundImageFile.class */
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

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/model/Drive$Capabilities.class */
    public static final class Capabilities extends GenericJson {
        @q
        private Boolean canAddChildren;
        @q
        private Boolean canChangeCopyRequiresWriterPermissionRestriction;
        @q
        private Boolean canChangeDomainUsersOnlyRestriction;
        @q
        private Boolean canChangeDriveBackground;
        @q
        private Boolean canChangeDriveMembersOnlyRestriction;
        @q
        private Boolean canComment;
        @q
        private Boolean canCopy;
        @q
        private Boolean canDeleteChildren;
        @q
        private Boolean canDeleteDrive;
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
        private Boolean canRename;
        @q
        private Boolean canRenameDrive;
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

        public final Boolean getCanChangeDriveBackground() {
            return this.canChangeDriveBackground;
        }

        public final Boolean getCanChangeDriveMembersOnlyRestriction() {
            return this.canChangeDriveMembersOnlyRestriction;
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

        public final Boolean getCanDeleteDrive() {
            return this.canDeleteDrive;
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

        public final Boolean getCanRename() {
            return this.canRename;
        }

        public final Boolean getCanRenameDrive() {
            return this.canRenameDrive;
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

        public final Capabilities setCanChangeDriveBackground(Boolean bool) {
            this.canChangeDriveBackground = bool;
            return this;
        }

        public final Capabilities setCanChangeDriveMembersOnlyRestriction(Boolean bool) {
            this.canChangeDriveMembersOnlyRestriction = bool;
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

        public final Capabilities setCanDeleteDrive(Boolean bool) {
            this.canDeleteDrive = bool;
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

        public final Capabilities setCanRename(Boolean bool) {
            this.canRename = bool;
            return this;
        }

        public final Capabilities setCanRenameDrive(Boolean bool) {
            this.canRenameDrive = bool;
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

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/model/Drive$Restrictions.class */
    public static final class Restrictions extends GenericJson {
        @q
        private Boolean adminManagedRestrictions;
        @q
        private Boolean copyRequiresWriterPermission;
        @q
        private Boolean domainUsersOnly;
        @q
        private Boolean driveMembersOnly;

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

        public final Boolean getDriveMembersOnly() {
            return this.driveMembersOnly;
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

        public final Restrictions setDriveMembersOnly(Boolean bool) {
            this.driveMembersOnly = bool;
            return this;
        }
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final Drive clone() {
        return (Drive) super.clone();
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

    public final Boolean getHidden() {
        return this.hidden;
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
    public final Drive set(String str, Object obj) {
        return (Drive) super.set(str, obj);
    }

    public final Drive setBackgroundImageFile(BackgroundImageFile backgroundImageFile) {
        this.backgroundImageFile = backgroundImageFile;
        return this;
    }

    public final Drive setBackgroundImageLink(String str) {
        this.backgroundImageLink = str;
        return this;
    }

    public final Drive setCapabilities(Capabilities capabilities) {
        this.capabilities = capabilities;
        return this;
    }

    public final Drive setColorRgb(String str) {
        this.colorRgb = str;
        return this;
    }

    public final Drive setCreatedTime(l lVar) {
        this.createdTime = lVar;
        return this;
    }

    public final Drive setHidden(Boolean bool) {
        this.hidden = bool;
        return this;
    }

    public final Drive setId(String str) {
        this.id = str;
        return this;
    }

    public final Drive setKind(String str) {
        this.kind = str;
        return this;
    }

    public final Drive setName(String str) {
        this.name = str;
        return this;
    }

    public final Drive setRestrictions(Restrictions restrictions) {
        this.restrictions = restrictions;
        return this;
    }

    public final Drive setThemeId(String str) {
        this.themeId = str;
        return this;
    }
}
