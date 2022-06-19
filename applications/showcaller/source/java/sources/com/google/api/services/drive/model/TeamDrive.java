package com.google.api.services.drive.model;

import com.google.api.client.json.C8666b;
import com.google.api.client.util.AbstractC8720o;
import com.google.api.client.util.DateTime;
/* loaded from: classes2-dex2jar.jar:com/google/api/services/drive/model/TeamDrive.class */
public final class TeamDrive extends C8666b {
    @AbstractC8720o
    private BackgroundImageFile backgroundImageFile;
    @AbstractC8720o
    private String backgroundImageLink;
    @AbstractC8720o
    private Capabilities capabilities;
    @AbstractC8720o
    private String colorRgb;
    @AbstractC8720o
    private DateTime createdTime;
    @AbstractC8720o

    /* renamed from: id */
    private String f38577id;
    @AbstractC8720o
    private String kind;
    @AbstractC8720o
    private String name;
    @AbstractC8720o
    private String themeId;

    /* loaded from: classes2-dex2jar.jar:com/google/api/services/drive/model/TeamDrive$BackgroundImageFile.class */
    public static final class BackgroundImageFile extends C8666b {
        @AbstractC8720o

        /* renamed from: id */
        private String f38578id;
        @AbstractC8720o
        private Float width;
        @AbstractC8720o
        private Float xCoordinate;
        @AbstractC8720o
        private Float yCoordinate;

        @Override // com.google.api.client.json.C8666b, com.google.api.client.util.GenericData, java.util.AbstractMap
        public BackgroundImageFile clone() {
            return (BackgroundImageFile) super.clone();
        }

        public String getId() {
            return this.f38578id;
        }

        public Float getWidth() {
            return this.width;
        }

        public Float getXCoordinate() {
            return this.xCoordinate;
        }

        public Float getYCoordinate() {
            return this.yCoordinate;
        }

        @Override // com.google.api.client.json.C8666b, com.google.api.client.util.GenericData
        public BackgroundImageFile set(String str, Object obj) {
            return (BackgroundImageFile) super.set(str, obj);
        }

        public BackgroundImageFile setId(String str) {
            this.f38578id = str;
            return this;
        }

        public BackgroundImageFile setWidth(Float f) {
            this.width = f;
            return this;
        }

        public BackgroundImageFile setXCoordinate(Float f) {
            this.xCoordinate = f;
            return this;
        }

        public BackgroundImageFile setYCoordinate(Float f) {
            this.yCoordinate = f;
            return this;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/api/services/drive/model/TeamDrive$Capabilities.class */
    public static final class Capabilities extends C8666b {
        @AbstractC8720o
        private Boolean canAddChildren;
        @AbstractC8720o
        private Boolean canChangeTeamDriveBackground;
        @AbstractC8720o
        private Boolean canComment;
        @AbstractC8720o
        private Boolean canCopy;
        @AbstractC8720o
        private Boolean canDeleteTeamDrive;
        @AbstractC8720o
        private Boolean canDownload;
        @AbstractC8720o
        private Boolean canEdit;
        @AbstractC8720o
        private Boolean canListChildren;
        @AbstractC8720o
        private Boolean canManageMembers;
        @AbstractC8720o
        private Boolean canReadRevisions;
        @AbstractC8720o
        private Boolean canRemoveChildren;
        @AbstractC8720o
        private Boolean canRename;
        @AbstractC8720o
        private Boolean canRenameTeamDrive;
        @AbstractC8720o
        private Boolean canShare;

        @Override // com.google.api.client.json.C8666b, com.google.api.client.util.GenericData, java.util.AbstractMap
        public Capabilities clone() {
            return (Capabilities) super.clone();
        }

        public Boolean getCanAddChildren() {
            return this.canAddChildren;
        }

        public Boolean getCanChangeTeamDriveBackground() {
            return this.canChangeTeamDriveBackground;
        }

        public Boolean getCanComment() {
            return this.canComment;
        }

        public Boolean getCanCopy() {
            return this.canCopy;
        }

        public Boolean getCanDeleteTeamDrive() {
            return this.canDeleteTeamDrive;
        }

        public Boolean getCanDownload() {
            return this.canDownload;
        }

        public Boolean getCanEdit() {
            return this.canEdit;
        }

        public Boolean getCanListChildren() {
            return this.canListChildren;
        }

        public Boolean getCanManageMembers() {
            return this.canManageMembers;
        }

        public Boolean getCanReadRevisions() {
            return this.canReadRevisions;
        }

        public Boolean getCanRemoveChildren() {
            return this.canRemoveChildren;
        }

        public Boolean getCanRename() {
            return this.canRename;
        }

        public Boolean getCanRenameTeamDrive() {
            return this.canRenameTeamDrive;
        }

        public Boolean getCanShare() {
            return this.canShare;
        }

        @Override // com.google.api.client.json.C8666b, com.google.api.client.util.GenericData
        public Capabilities set(String str, Object obj) {
            return (Capabilities) super.set(str, obj);
        }

        public Capabilities setCanAddChildren(Boolean bool) {
            this.canAddChildren = bool;
            return this;
        }

        public Capabilities setCanChangeTeamDriveBackground(Boolean bool) {
            this.canChangeTeamDriveBackground = bool;
            return this;
        }

        public Capabilities setCanComment(Boolean bool) {
            this.canComment = bool;
            return this;
        }

        public Capabilities setCanCopy(Boolean bool) {
            this.canCopy = bool;
            return this;
        }

        public Capabilities setCanDeleteTeamDrive(Boolean bool) {
            this.canDeleteTeamDrive = bool;
            return this;
        }

        public Capabilities setCanDownload(Boolean bool) {
            this.canDownload = bool;
            return this;
        }

        public Capabilities setCanEdit(Boolean bool) {
            this.canEdit = bool;
            return this;
        }

        public Capabilities setCanListChildren(Boolean bool) {
            this.canListChildren = bool;
            return this;
        }

        public Capabilities setCanManageMembers(Boolean bool) {
            this.canManageMembers = bool;
            return this;
        }

        public Capabilities setCanReadRevisions(Boolean bool) {
            this.canReadRevisions = bool;
            return this;
        }

        public Capabilities setCanRemoveChildren(Boolean bool) {
            this.canRemoveChildren = bool;
            return this;
        }

        public Capabilities setCanRename(Boolean bool) {
            this.canRename = bool;
            return this;
        }

        public Capabilities setCanRenameTeamDrive(Boolean bool) {
            this.canRenameTeamDrive = bool;
            return this;
        }

        public Capabilities setCanShare(Boolean bool) {
            this.canShare = bool;
            return this;
        }
    }

    @Override // com.google.api.client.json.C8666b, com.google.api.client.util.GenericData, java.util.AbstractMap
    public TeamDrive clone() {
        return (TeamDrive) super.clone();
    }

    public BackgroundImageFile getBackgroundImageFile() {
        return this.backgroundImageFile;
    }

    public String getBackgroundImageLink() {
        return this.backgroundImageLink;
    }

    public Capabilities getCapabilities() {
        return this.capabilities;
    }

    public String getColorRgb() {
        return this.colorRgb;
    }

    public DateTime getCreatedTime() {
        return this.createdTime;
    }

    public String getId() {
        return this.f38577id;
    }

    public String getKind() {
        return this.kind;
    }

    public String getName() {
        return this.name;
    }

    public String getThemeId() {
        return this.themeId;
    }

    @Override // com.google.api.client.json.C8666b, com.google.api.client.util.GenericData
    public TeamDrive set(String str, Object obj) {
        return (TeamDrive) super.set(str, obj);
    }

    public TeamDrive setBackgroundImageFile(BackgroundImageFile backgroundImageFile) {
        this.backgroundImageFile = backgroundImageFile;
        return this;
    }

    public TeamDrive setBackgroundImageLink(String str) {
        this.backgroundImageLink = str;
        return this;
    }

    public TeamDrive setCapabilities(Capabilities capabilities) {
        this.capabilities = capabilities;
        return this;
    }

    public TeamDrive setColorRgb(String str) {
        this.colorRgb = str;
        return this;
    }

    public TeamDrive setCreatedTime(DateTime dateTime) {
        this.createdTime = dateTime;
        return this;
    }

    public TeamDrive setId(String str) {
        this.f38577id = str;
        return this;
    }

    public TeamDrive setKind(String str) {
        this.kind = str;
        return this;
    }

    public TeamDrive setName(String str) {
        this.name = str;
        return this;
    }

    public TeamDrive setThemeId(String str) {
        this.themeId = str;
        return this;
    }
}
