package com.google.api.services.drive.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.json.JsonString;
import com.google.api.client.p379a.AbstractC15247q;
import com.google.api.client.p379a.C15232j;
import java.util.List;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/model/About.class */
public final class About extends GenericJson {
    @AbstractC15247q
    private Boolean appInstalled;
    @AbstractC15247q
    private Boolean canCreateDrives;
    @AbstractC15247q
    private Boolean canCreateTeamDrives;
    @AbstractC15247q
    private List<DriveThemes> driveThemes;
    @AbstractC15247q
    private Map<String, List<String>> exportFormats;
    @AbstractC15247q
    private List<String> folderColorPalette;
    @AbstractC15247q
    private Map<String, List<String>> importFormats;
    @AbstractC15247q
    private String kind;
    @AbstractC15247q
    @JsonString
    private Map<String, Long> maxImportSizes;
    @AbstractC15247q
    @JsonString
    private Long maxUploadSize;
    @AbstractC15247q
    private StorageQuota storageQuota;
    @AbstractC15247q
    private List<TeamDriveThemes> teamDriveThemes;
    @AbstractC15247q
    private User user;

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/model/About$DriveThemes.class */
    public static final class DriveThemes extends GenericJson {
        @AbstractC15247q
        private String backgroundImageLink;
        @AbstractC15247q
        private String colorRgb;
        @AbstractC15247q

        /* renamed from: id */
        private String f55436id;

        @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
        public final DriveThemes clone() {
            return (DriveThemes) super.clone();
        }

        public final String getBackgroundImageLink() {
            return this.backgroundImageLink;
        }

        public final String getColorRgb() {
            return this.colorRgb;
        }

        public final String getId() {
            return this.f55436id;
        }

        @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
        public final DriveThemes set(String str, Object obj) {
            return (DriveThemes) super.set(str, obj);
        }

        public final DriveThemes setBackgroundImageLink(String str) {
            this.backgroundImageLink = str;
            return this;
        }

        public final DriveThemes setColorRgb(String str) {
            this.colorRgb = str;
            return this;
        }

        public final DriveThemes setId(String str) {
            this.f55436id = str;
            return this;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/model/About$StorageQuota.class */
    public static final class StorageQuota extends GenericJson {
        @AbstractC15247q
        @JsonString
        private Long limit;
        @AbstractC15247q
        @JsonString
        private Long usage;
        @AbstractC15247q
        @JsonString
        private Long usageInDrive;
        @AbstractC15247q
        @JsonString
        private Long usageInDriveTrash;

        @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
        public final StorageQuota clone() {
            return (StorageQuota) super.clone();
        }

        public final Long getLimit() {
            return this.limit;
        }

        public final Long getUsage() {
            return this.usage;
        }

        public final Long getUsageInDrive() {
            return this.usageInDrive;
        }

        public final Long getUsageInDriveTrash() {
            return this.usageInDriveTrash;
        }

        @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
        public final StorageQuota set(String str, Object obj) {
            return (StorageQuota) super.set(str, obj);
        }

        public final StorageQuota setLimit(Long l) {
            this.limit = l;
            return this;
        }

        public final StorageQuota setUsage(Long l) {
            this.usage = l;
            return this;
        }

        public final StorageQuota setUsageInDrive(Long l) {
            this.usageInDrive = l;
            return this;
        }

        public final StorageQuota setUsageInDriveTrash(Long l) {
            this.usageInDriveTrash = l;
            return this;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/model/About$TeamDriveThemes.class */
    public static final class TeamDriveThemes extends GenericJson {
        @AbstractC15247q
        private String backgroundImageLink;
        @AbstractC15247q
        private String colorRgb;
        @AbstractC15247q

        /* renamed from: id */
        private String f55437id;

        @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
        public final TeamDriveThemes clone() {
            return (TeamDriveThemes) super.clone();
        }

        public final String getBackgroundImageLink() {
            return this.backgroundImageLink;
        }

        public final String getColorRgb() {
            return this.colorRgb;
        }

        public final String getId() {
            return this.f55437id;
        }

        @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
        public final TeamDriveThemes set(String str, Object obj) {
            return (TeamDriveThemes) super.set(str, obj);
        }

        public final TeamDriveThemes setBackgroundImageLink(String str) {
            this.backgroundImageLink = str;
            return this;
        }

        public final TeamDriveThemes setColorRgb(String str) {
            this.colorRgb = str;
            return this;
        }

        public final TeamDriveThemes setId(String str) {
            this.f55437id = str;
            return this;
        }
    }

    static {
        C15232j.m9242a(DriveThemes.class);
        C15232j.m9242a(TeamDriveThemes.class);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final About clone() {
        return (About) super.clone();
    }

    public final Boolean getAppInstalled() {
        return this.appInstalled;
    }

    public final Boolean getCanCreateDrives() {
        return this.canCreateDrives;
    }

    public final Boolean getCanCreateTeamDrives() {
        return this.canCreateTeamDrives;
    }

    public final List<DriveThemes> getDriveThemes() {
        return this.driveThemes;
    }

    public final Map<String, List<String>> getExportFormats() {
        return this.exportFormats;
    }

    public final List<String> getFolderColorPalette() {
        return this.folderColorPalette;
    }

    public final Map<String, List<String>> getImportFormats() {
        return this.importFormats;
    }

    public final String getKind() {
        return this.kind;
    }

    public final Map<String, Long> getMaxImportSizes() {
        return this.maxImportSizes;
    }

    public final Long getMaxUploadSize() {
        return this.maxUploadSize;
    }

    public final StorageQuota getStorageQuota() {
        return this.storageQuota;
    }

    public final List<TeamDriveThemes> getTeamDriveThemes() {
        return this.teamDriveThemes;
    }

    public final User getUser() {
        return this.user;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final About set(String str, Object obj) {
        return (About) super.set(str, obj);
    }

    public final About setAppInstalled(Boolean bool) {
        this.appInstalled = bool;
        return this;
    }

    public final About setCanCreateDrives(Boolean bool) {
        this.canCreateDrives = bool;
        return this;
    }

    public final About setCanCreateTeamDrives(Boolean bool) {
        this.canCreateTeamDrives = bool;
        return this;
    }

    public final About setDriveThemes(List<DriveThemes> list) {
        this.driveThemes = list;
        return this;
    }

    public final About setExportFormats(Map<String, List<String>> map) {
        this.exportFormats = map;
        return this;
    }

    public final About setFolderColorPalette(List<String> list) {
        this.folderColorPalette = list;
        return this;
    }

    public final About setImportFormats(Map<String, List<String>> map) {
        this.importFormats = map;
        return this;
    }

    public final About setKind(String str) {
        this.kind = str;
        return this;
    }

    public final About setMaxImportSizes(Map<String, Long> map) {
        this.maxImportSizes = map;
        return this;
    }

    public final About setMaxUploadSize(Long l) {
        this.maxUploadSize = l;
        return this;
    }

    public final About setStorageQuota(StorageQuota storageQuota) {
        this.storageQuota = storageQuota;
        return this;
    }

    public final About setTeamDriveThemes(List<TeamDriveThemes> list) {
        this.teamDriveThemes = list;
        return this;
    }

    public final About setUser(User user) {
        this.user = user;
        return this;
    }
}
