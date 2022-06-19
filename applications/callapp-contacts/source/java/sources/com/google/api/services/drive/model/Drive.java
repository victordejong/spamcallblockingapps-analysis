package com.google.api.services.drive.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
import com.google.api.client.p379a.C15237l;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/model/Drive.class */
public final class Drive extends GenericJson {
    @AbstractC15247q
    private BackgroundImageFile backgroundImageFile;
    @AbstractC15247q
    private String backgroundImageLink;
    @AbstractC15247q
    private Capabilities capabilities;
    @AbstractC15247q
    private String colorRgb;
    @AbstractC15247q
    private C15237l createdTime;
    @AbstractC15247q
    private Boolean hidden;
    @AbstractC15247q

    /* renamed from: id */
    private String f55440id;
    @AbstractC15247q
    private String kind;
    @AbstractC15247q
    private String name;
    @AbstractC15247q
    private Restrictions restrictions;
    @AbstractC15247q
    private String themeId;

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/model/Drive$BackgroundImageFile.class */
    public static final class BackgroundImageFile extends GenericJson {
        @AbstractC15247q

        /* renamed from: id */
        private String f55441id;
        @AbstractC15247q
        private Float width;
        @AbstractC15247q
        private Float xCoordinate;
        @AbstractC15247q
        private Float yCoordinate;

        @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
        public final BackgroundImageFile clone() {
            return (BackgroundImageFile) super.clone();
        }

        public final String getId() {
            return this.f55441id;
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

        @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
        public final BackgroundImageFile set(String str, Object obj) {
            return (BackgroundImageFile) super.set(str, obj);
        }

        public final BackgroundImageFile setId(String str) {
            this.f55441id = str;
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
        @AbstractC15247q
        private Boolean canAddChildren;
        @AbstractC15247q
        private Boolean canChangeCopyRequiresWriterPermissionRestriction;
        @AbstractC15247q
        private Boolean canChangeDomainUsersOnlyRestriction;
        @AbstractC15247q
        private Boolean canChangeDriveBackground;
        @AbstractC15247q
        private Boolean canChangeDriveMembersOnlyRestriction;
        @AbstractC15247q
        private Boolean canComment;
        @AbstractC15247q
        private Boolean canCopy;
        @AbstractC15247q
        private Boolean canDeleteChildren;
        @AbstractC15247q
        private Boolean canDeleteDrive;
        @AbstractC15247q
        private Boolean canDownload;
        @AbstractC15247q
        private Boolean canEdit;
        @AbstractC15247q
        private Boolean canListChildren;
        @AbstractC15247q
        private Boolean canManageMembers;
        @AbstractC15247q
        private Boolean canReadRevisions;
        @AbstractC15247q
        private Boolean canRename;
        @AbstractC15247q
        private Boolean canRenameDrive;
        @AbstractC15247q
        private Boolean canShare;
        @AbstractC15247q
        private Boolean canTrashChildren;

        @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
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

        @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
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
        @AbstractC15247q
        private Boolean adminManagedRestrictions;
        @AbstractC15247q
        private Boolean copyRequiresWriterPermission;
        @AbstractC15247q
        private Boolean domainUsersOnly;
        @AbstractC15247q
        private Boolean driveMembersOnly;

        @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
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

        @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
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

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
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

    public final C15237l getCreatedTime() {
        return this.createdTime;
    }

    public final Boolean getHidden() {
        return this.hidden;
    }

    public final String getId() {
        return this.f55440id;
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

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
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

    public final Drive setCreatedTime(C15237l c15237l) {
        this.createdTime = c15237l;
        return this;
    }

    public final Drive setHidden(Boolean bool) {
        this.hidden = bool;
        return this;
    }

    public final Drive setId(String str) {
        this.f55440id = str;
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
