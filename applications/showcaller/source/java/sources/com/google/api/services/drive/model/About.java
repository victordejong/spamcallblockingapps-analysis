package com.google.api.services.drive.model;

import com.google.api.client.json.AbstractC8675h;
import com.google.api.client.json.C8666b;
import com.google.api.client.util.AbstractC8720o;
import com.google.api.client.util.C8712j;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/api/services/drive/model/About.class */
public final class About extends C8666b {
    @AbstractC8720o
    private Boolean appInstalled;
    @AbstractC8720o
    private Boolean canCreateTeamDrives;
    @AbstractC8720o
    private Map<String, List<String>> exportFormats;
    @AbstractC8720o
    private List<String> folderColorPalette;
    @AbstractC8720o
    private Map<String, List<String>> importFormats;
    @AbstractC8720o
    private String kind;
    @AbstractC8675h
    @AbstractC8720o
    private Map<String, Long> maxImportSizes;
    @AbstractC8675h
    @AbstractC8720o
    private Long maxUploadSize;
    @AbstractC8720o
    private StorageQuota storageQuota;
    @AbstractC8720o
    private List<TeamDriveThemes> teamDriveThemes;
    @AbstractC8720o
    private User user;

    /* loaded from: classes2-dex2jar.jar:com/google/api/services/drive/model/About$StorageQuota.class */
    public static final class StorageQuota extends C8666b {
        @AbstractC8675h
        @AbstractC8720o
        private Long limit;
        @AbstractC8675h
        @AbstractC8720o
        private Long usage;
        @AbstractC8675h
        @AbstractC8720o
        private Long usageInDrive;
        @AbstractC8675h
        @AbstractC8720o
        private Long usageInDriveTrash;

        @Override // com.google.api.client.json.C8666b, com.google.api.client.util.GenericData, java.util.AbstractMap
        public StorageQuota clone() {
            return (StorageQuota) super.clone();
        }

        public Long getLimit() {
            return this.limit;
        }

        public Long getUsage() {
            return this.usage;
        }

        public Long getUsageInDrive() {
            return this.usageInDrive;
        }

        public Long getUsageInDriveTrash() {
            return this.usageInDriveTrash;
        }

        @Override // com.google.api.client.json.C8666b, com.google.api.client.util.GenericData
        public StorageQuota set(String str, Object obj) {
            return (StorageQuota) super.set(str, obj);
        }

        public StorageQuota setLimit(Long l) {
            this.limit = l;
            return this;
        }

        public StorageQuota setUsage(Long l) {
            this.usage = l;
            return this;
        }

        public StorageQuota setUsageInDrive(Long l) {
            this.usageInDrive = l;
            return this;
        }

        public StorageQuota setUsageInDriveTrash(Long l) {
            this.usageInDriveTrash = l;
            return this;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/api/services/drive/model/About$TeamDriveThemes.class */
    public static final class TeamDriveThemes extends C8666b {
        @AbstractC8720o
        private String backgroundImageLink;
        @AbstractC8720o
        private String colorRgb;
        @AbstractC8720o

        /* renamed from: id */
        private String f38570id;

        @Override // com.google.api.client.json.C8666b, com.google.api.client.util.GenericData, java.util.AbstractMap
        public TeamDriveThemes clone() {
            return (TeamDriveThemes) super.clone();
        }

        public String getBackgroundImageLink() {
            return this.backgroundImageLink;
        }

        public String getColorRgb() {
            return this.colorRgb;
        }

        public String getId() {
            return this.f38570id;
        }

        @Override // com.google.api.client.json.C8666b, com.google.api.client.util.GenericData
        public TeamDriveThemes set(String str, Object obj) {
            return (TeamDriveThemes) super.set(str, obj);
        }

        public TeamDriveThemes setBackgroundImageLink(String str) {
            this.backgroundImageLink = str;
            return this;
        }

        public TeamDriveThemes setColorRgb(String str) {
            this.colorRgb = str;
            return this;
        }

        public TeamDriveThemes setId(String str) {
            this.f38570id = str;
            return this;
        }
    }

    static {
        C8712j.m2874j(TeamDriveThemes.class);
    }

    @Override // com.google.api.client.json.C8666b, com.google.api.client.util.GenericData, java.util.AbstractMap
    public About clone() {
        return (About) super.clone();
    }

    public Boolean getAppInstalled() {
        return this.appInstalled;
    }

    public Boolean getCanCreateTeamDrives() {
        return this.canCreateTeamDrives;
    }

    public Map<String, List<String>> getExportFormats() {
        return this.exportFormats;
    }

    public List<String> getFolderColorPalette() {
        return this.folderColorPalette;
    }

    public Map<String, List<String>> getImportFormats() {
        return this.importFormats;
    }

    public String getKind() {
        return this.kind;
    }

    public Map<String, Long> getMaxImportSizes() {
        return this.maxImportSizes;
    }

    public Long getMaxUploadSize() {
        return this.maxUploadSize;
    }

    public StorageQuota getStorageQuota() {
        return this.storageQuota;
    }

    public List<TeamDriveThemes> getTeamDriveThemes() {
        return this.teamDriveThemes;
    }

    public User getUser() {
        return this.user;
    }

    @Override // com.google.api.client.json.C8666b, com.google.api.client.util.GenericData
    public About set(String str, Object obj) {
        return (About) super.set(str, obj);
    }

    public About setAppInstalled(Boolean bool) {
        this.appInstalled = bool;
        return this;
    }

    public About setCanCreateTeamDrives(Boolean bool) {
        this.canCreateTeamDrives = bool;
        return this;
    }

    public About setExportFormats(Map<String, List<String>> map) {
        this.exportFormats = map;
        return this;
    }

    public About setFolderColorPalette(List<String> list) {
        this.folderColorPalette = list;
        return this;
    }

    public About setImportFormats(Map<String, List<String>> map) {
        this.importFormats = map;
        return this;
    }

    public About setKind(String str) {
        this.kind = str;
        return this;
    }

    public About setMaxImportSizes(Map<String, Long> map) {
        this.maxImportSizes = map;
        return this;
    }

    public About setMaxUploadSize(Long l) {
        this.maxUploadSize = l;
        return this;
    }

    public About setStorageQuota(StorageQuota storageQuota) {
        this.storageQuota = storageQuota;
        return this;
    }

    public About setTeamDriveThemes(List<TeamDriveThemes> list) {
        this.teamDriveThemes = list;
        return this;
    }

    public About setUser(User user) {
        this.user = user;
        return this;
    }
}
