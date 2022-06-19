package com.google.api.services.drive.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.json.JsonString;
import com.google.api.client.p379a.AbstractC15247q;
import com.google.api.client.p379a.C15223d;
import com.google.api.client.p379a.C15237l;
import java.util.List;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/model/File.class */
public final class File extends GenericJson {
    @AbstractC15247q
    private Map<String, String> appProperties;
    @AbstractC15247q
    private Capabilities capabilities;
    @AbstractC15247q
    private ContentHints contentHints;
    @AbstractC15247q
    private Boolean copyRequiresWriterPermission;
    @AbstractC15247q
    private C15237l createdTime;
    @AbstractC15247q
    private String description;
    @AbstractC15247q
    private String driveId;
    @AbstractC15247q
    private Boolean explicitlyTrashed;
    @AbstractC15247q
    private Map<String, String> exportLinks;
    @AbstractC15247q
    private String fileExtension;
    @AbstractC15247q
    private String folderColorRgb;
    @AbstractC15247q
    private String fullFileExtension;
    @AbstractC15247q
    private Boolean hasAugmentedPermissions;
    @AbstractC15247q
    private Boolean hasThumbnail;
    @AbstractC15247q
    private String headRevisionId;
    @AbstractC15247q
    private String iconLink;
    @AbstractC15247q

    /* renamed from: id */
    private String f55442id;
    @AbstractC15247q
    private ImageMediaMetadata imageMediaMetadata;
    @AbstractC15247q
    private Boolean isAppAuthorized;
    @AbstractC15247q
    private String kind;
    @AbstractC15247q
    private User lastModifyingUser;
    @AbstractC15247q
    private String md5Checksum;
    @AbstractC15247q
    private String mimeType;
    @AbstractC15247q
    private Boolean modifiedByMe;
    @AbstractC15247q
    private C15237l modifiedByMeTime;
    @AbstractC15247q
    private C15237l modifiedTime;
    @AbstractC15247q
    private String name;
    @AbstractC15247q
    private String originalFilename;
    @AbstractC15247q
    private Boolean ownedByMe;
    @AbstractC15247q
    private List<User> owners;
    @AbstractC15247q
    private List<String> parents;
    @AbstractC15247q
    private List<String> permissionIds;
    @AbstractC15247q
    private List<Permission> permissions;
    @AbstractC15247q
    private Map<String, String> properties;
    @AbstractC15247q
    @JsonString
    private Long quotaBytesUsed;
    @AbstractC15247q
    private Boolean shared;
    @AbstractC15247q
    private C15237l sharedWithMeTime;
    @AbstractC15247q
    private User sharingUser;
    @AbstractC15247q
    private ShortcutDetails shortcutDetails;
    @AbstractC15247q
    @JsonString
    private Long size;
    @AbstractC15247q
    private List<String> spaces;
    @AbstractC15247q
    private Boolean starred;
    @AbstractC15247q
    private String teamDriveId;
    @AbstractC15247q
    private String thumbnailLink;
    @AbstractC15247q
    @JsonString
    private Long thumbnailVersion;
    @AbstractC15247q
    private Boolean trashed;
    @AbstractC15247q
    private C15237l trashedTime;
    @AbstractC15247q
    private User trashingUser;
    @AbstractC15247q
    @JsonString
    private Long version;
    @AbstractC15247q
    private VideoMediaMetadata videoMediaMetadata;
    @AbstractC15247q
    private Boolean viewedByMe;
    @AbstractC15247q
    private C15237l viewedByMeTime;
    @AbstractC15247q
    private Boolean viewersCanCopyContent;
    @AbstractC15247q
    private String webContentLink;
    @AbstractC15247q
    private String webViewLink;
    @AbstractC15247q
    private Boolean writersCanShare;

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/model/File$Capabilities.class */
    public static final class Capabilities extends GenericJson {
        @AbstractC15247q
        private Boolean canAddChildren;
        @AbstractC15247q
        private Boolean canAddMyDriveParent;
        @AbstractC15247q
        private Boolean canChangeCopyRequiresWriterPermission;
        @AbstractC15247q
        private Boolean canChangeViewersCanCopyContent;
        @AbstractC15247q
        private Boolean canComment;
        @AbstractC15247q
        private Boolean canCopy;
        @AbstractC15247q
        private Boolean canDelete;
        @AbstractC15247q
        private Boolean canDeleteChildren;
        @AbstractC15247q
        private Boolean canDownload;
        @AbstractC15247q
        private Boolean canEdit;
        @AbstractC15247q
        private Boolean canListChildren;
        @AbstractC15247q
        private Boolean canModifyContent;
        @AbstractC15247q
        private Boolean canMoveChildrenOutOfDrive;
        @AbstractC15247q
        private Boolean canMoveChildrenOutOfTeamDrive;
        @AbstractC15247q
        private Boolean canMoveChildrenWithinDrive;
        @AbstractC15247q
        private Boolean canMoveChildrenWithinTeamDrive;
        @AbstractC15247q
        private Boolean canMoveItemIntoTeamDrive;
        @AbstractC15247q
        private Boolean canMoveItemOutOfDrive;
        @AbstractC15247q
        private Boolean canMoveItemOutOfTeamDrive;
        @AbstractC15247q
        private Boolean canMoveItemWithinDrive;
        @AbstractC15247q
        private Boolean canMoveItemWithinTeamDrive;
        @AbstractC15247q
        private Boolean canMoveTeamDriveItem;
        @AbstractC15247q
        private Boolean canReadDrive;
        @AbstractC15247q
        private Boolean canReadRevisions;
        @AbstractC15247q
        private Boolean canReadTeamDrive;
        @AbstractC15247q
        private Boolean canRemoveChildren;
        @AbstractC15247q
        private Boolean canRemoveMyDriveParent;
        @AbstractC15247q
        private Boolean canRename;
        @AbstractC15247q
        private Boolean canShare;
        @AbstractC15247q
        private Boolean canTrash;
        @AbstractC15247q
        private Boolean canTrashChildren;
        @AbstractC15247q
        private Boolean canUntrash;

        @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
        public final Capabilities clone() {
            return (Capabilities) super.clone();
        }

        public final Boolean getCanAddChildren() {
            return this.canAddChildren;
        }

        public final Boolean getCanAddMyDriveParent() {
            return this.canAddMyDriveParent;
        }

        public final Boolean getCanChangeCopyRequiresWriterPermission() {
            return this.canChangeCopyRequiresWriterPermission;
        }

        public final Boolean getCanChangeViewersCanCopyContent() {
            return this.canChangeViewersCanCopyContent;
        }

        public final Boolean getCanComment() {
            return this.canComment;
        }

        public final Boolean getCanCopy() {
            return this.canCopy;
        }

        public final Boolean getCanDelete() {
            return this.canDelete;
        }

        public final Boolean getCanDeleteChildren() {
            return this.canDeleteChildren;
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

        public final Boolean getCanModifyContent() {
            return this.canModifyContent;
        }

        public final Boolean getCanMoveChildrenOutOfDrive() {
            return this.canMoveChildrenOutOfDrive;
        }

        public final Boolean getCanMoveChildrenOutOfTeamDrive() {
            return this.canMoveChildrenOutOfTeamDrive;
        }

        public final Boolean getCanMoveChildrenWithinDrive() {
            return this.canMoveChildrenWithinDrive;
        }

        public final Boolean getCanMoveChildrenWithinTeamDrive() {
            return this.canMoveChildrenWithinTeamDrive;
        }

        public final Boolean getCanMoveItemIntoTeamDrive() {
            return this.canMoveItemIntoTeamDrive;
        }

        public final Boolean getCanMoveItemOutOfDrive() {
            return this.canMoveItemOutOfDrive;
        }

        public final Boolean getCanMoveItemOutOfTeamDrive() {
            return this.canMoveItemOutOfTeamDrive;
        }

        public final Boolean getCanMoveItemWithinDrive() {
            return this.canMoveItemWithinDrive;
        }

        public final Boolean getCanMoveItemWithinTeamDrive() {
            return this.canMoveItemWithinTeamDrive;
        }

        public final Boolean getCanMoveTeamDriveItem() {
            return this.canMoveTeamDriveItem;
        }

        public final Boolean getCanReadDrive() {
            return this.canReadDrive;
        }

        public final Boolean getCanReadRevisions() {
            return this.canReadRevisions;
        }

        public final Boolean getCanReadTeamDrive() {
            return this.canReadTeamDrive;
        }

        public final Boolean getCanRemoveChildren() {
            return this.canRemoveChildren;
        }

        public final Boolean getCanRemoveMyDriveParent() {
            return this.canRemoveMyDriveParent;
        }

        public final Boolean getCanRename() {
            return this.canRename;
        }

        public final Boolean getCanShare() {
            return this.canShare;
        }

        public final Boolean getCanTrash() {
            return this.canTrash;
        }

        public final Boolean getCanTrashChildren() {
            return this.canTrashChildren;
        }

        public final Boolean getCanUntrash() {
            return this.canUntrash;
        }

        @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
        public final Capabilities set(String str, Object obj) {
            return (Capabilities) super.set(str, obj);
        }

        public final Capabilities setCanAddChildren(Boolean bool) {
            this.canAddChildren = bool;
            return this;
        }

        public final Capabilities setCanAddMyDriveParent(Boolean bool) {
            this.canAddMyDriveParent = bool;
            return this;
        }

        public final Capabilities setCanChangeCopyRequiresWriterPermission(Boolean bool) {
            this.canChangeCopyRequiresWriterPermission = bool;
            return this;
        }

        public final Capabilities setCanChangeViewersCanCopyContent(Boolean bool) {
            this.canChangeViewersCanCopyContent = bool;
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

        public final Capabilities setCanDelete(Boolean bool) {
            this.canDelete = bool;
            return this;
        }

        public final Capabilities setCanDeleteChildren(Boolean bool) {
            this.canDeleteChildren = bool;
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

        public final Capabilities setCanModifyContent(Boolean bool) {
            this.canModifyContent = bool;
            return this;
        }

        public final Capabilities setCanMoveChildrenOutOfDrive(Boolean bool) {
            this.canMoveChildrenOutOfDrive = bool;
            return this;
        }

        public final Capabilities setCanMoveChildrenOutOfTeamDrive(Boolean bool) {
            this.canMoveChildrenOutOfTeamDrive = bool;
            return this;
        }

        public final Capabilities setCanMoveChildrenWithinDrive(Boolean bool) {
            this.canMoveChildrenWithinDrive = bool;
            return this;
        }

        public final Capabilities setCanMoveChildrenWithinTeamDrive(Boolean bool) {
            this.canMoveChildrenWithinTeamDrive = bool;
            return this;
        }

        public final Capabilities setCanMoveItemIntoTeamDrive(Boolean bool) {
            this.canMoveItemIntoTeamDrive = bool;
            return this;
        }

        public final Capabilities setCanMoveItemOutOfDrive(Boolean bool) {
            this.canMoveItemOutOfDrive = bool;
            return this;
        }

        public final Capabilities setCanMoveItemOutOfTeamDrive(Boolean bool) {
            this.canMoveItemOutOfTeamDrive = bool;
            return this;
        }

        public final Capabilities setCanMoveItemWithinDrive(Boolean bool) {
            this.canMoveItemWithinDrive = bool;
            return this;
        }

        public final Capabilities setCanMoveItemWithinTeamDrive(Boolean bool) {
            this.canMoveItemWithinTeamDrive = bool;
            return this;
        }

        public final Capabilities setCanMoveTeamDriveItem(Boolean bool) {
            this.canMoveTeamDriveItem = bool;
            return this;
        }

        public final Capabilities setCanReadDrive(Boolean bool) {
            this.canReadDrive = bool;
            return this;
        }

        public final Capabilities setCanReadRevisions(Boolean bool) {
            this.canReadRevisions = bool;
            return this;
        }

        public final Capabilities setCanReadTeamDrive(Boolean bool) {
            this.canReadTeamDrive = bool;
            return this;
        }

        public final Capabilities setCanRemoveChildren(Boolean bool) {
            this.canRemoveChildren = bool;
            return this;
        }

        public final Capabilities setCanRemoveMyDriveParent(Boolean bool) {
            this.canRemoveMyDriveParent = bool;
            return this;
        }

        public final Capabilities setCanRename(Boolean bool) {
            this.canRename = bool;
            return this;
        }

        public final Capabilities setCanShare(Boolean bool) {
            this.canShare = bool;
            return this;
        }

        public final Capabilities setCanTrash(Boolean bool) {
            this.canTrash = bool;
            return this;
        }

        public final Capabilities setCanTrashChildren(Boolean bool) {
            this.canTrashChildren = bool;
            return this;
        }

        public final Capabilities setCanUntrash(Boolean bool) {
            this.canUntrash = bool;
            return this;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/model/File$ContentHints.class */
    public static final class ContentHints extends GenericJson {
        @AbstractC15247q
        private String indexableText;
        @AbstractC15247q
        private Thumbnail thumbnail;

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/model/File$ContentHints$Thumbnail.class */
        public static final class Thumbnail extends GenericJson {
            @AbstractC15247q
            private String image;
            @AbstractC15247q
            private String mimeType;

            @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
            public final Thumbnail clone() {
                return (Thumbnail) super.clone();
            }

            public final byte[] decodeImage() {
                return C15223d.m9251a(this.image);
            }

            public final Thumbnail encodeImage(byte[] bArr) {
                this.image = C15223d.m9250a(bArr);
                return this;
            }

            public final String getImage() {
                return this.image;
            }

            public final String getMimeType() {
                return this.mimeType;
            }

            @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
            public final Thumbnail set(String str, Object obj) {
                return (Thumbnail) super.set(str, obj);
            }

            public final Thumbnail setImage(String str) {
                this.image = str;
                return this;
            }

            public final Thumbnail setMimeType(String str) {
                this.mimeType = str;
                return this;
            }
        }

        @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
        public final ContentHints clone() {
            return (ContentHints) super.clone();
        }

        public final String getIndexableText() {
            return this.indexableText;
        }

        public final Thumbnail getThumbnail() {
            return this.thumbnail;
        }

        @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
        public final ContentHints set(String str, Object obj) {
            return (ContentHints) super.set(str, obj);
        }

        public final ContentHints setIndexableText(String str) {
            this.indexableText = str;
            return this;
        }

        public final ContentHints setThumbnail(Thumbnail thumbnail) {
            this.thumbnail = thumbnail;
            return this;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/model/File$ImageMediaMetadata.class */
    public static final class ImageMediaMetadata extends GenericJson {
        @AbstractC15247q
        private Float aperture;
        @AbstractC15247q
        private String cameraMake;
        @AbstractC15247q
        private String cameraModel;
        @AbstractC15247q
        private String colorSpace;
        @AbstractC15247q
        private Float exposureBias;
        @AbstractC15247q
        private String exposureMode;
        @AbstractC15247q
        private Float exposureTime;
        @AbstractC15247q
        private Boolean flashUsed;
        @AbstractC15247q
        private Float focalLength;
        @AbstractC15247q
        private Integer height;
        @AbstractC15247q
        private Integer isoSpeed;
        @AbstractC15247q
        private String lens;
        @AbstractC15247q
        private Location location;
        @AbstractC15247q
        private Float maxApertureValue;
        @AbstractC15247q
        private String meteringMode;
        @AbstractC15247q
        private Integer rotation;
        @AbstractC15247q
        private String sensor;
        @AbstractC15247q
        private Integer subjectDistance;
        @AbstractC15247q
        private String time;
        @AbstractC15247q
        private String whiteBalance;
        @AbstractC15247q
        private Integer width;

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/model/File$ImageMediaMetadata$Location.class */
        public static final class Location extends GenericJson {
            @AbstractC15247q
            private Double altitude;
            @AbstractC15247q
            private Double latitude;
            @AbstractC15247q
            private Double longitude;

            @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
            public final Location clone() {
                return (Location) super.clone();
            }

            public final Double getAltitude() {
                return this.altitude;
            }

            public final Double getLatitude() {
                return this.latitude;
            }

            public final Double getLongitude() {
                return this.longitude;
            }

            @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
            public final Location set(String str, Object obj) {
                return (Location) super.set(str, obj);
            }

            public final Location setAltitude(Double d) {
                this.altitude = d;
                return this;
            }

            public final Location setLatitude(Double d) {
                this.latitude = d;
                return this;
            }

            public final Location setLongitude(Double d) {
                this.longitude = d;
                return this;
            }
        }

        @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
        public final ImageMediaMetadata clone() {
            return (ImageMediaMetadata) super.clone();
        }

        public final Float getAperture() {
            return this.aperture;
        }

        public final String getCameraMake() {
            return this.cameraMake;
        }

        public final String getCameraModel() {
            return this.cameraModel;
        }

        public final String getColorSpace() {
            return this.colorSpace;
        }

        public final Float getExposureBias() {
            return this.exposureBias;
        }

        public final String getExposureMode() {
            return this.exposureMode;
        }

        public final Float getExposureTime() {
            return this.exposureTime;
        }

        public final Boolean getFlashUsed() {
            return this.flashUsed;
        }

        public final Float getFocalLength() {
            return this.focalLength;
        }

        public final Integer getHeight() {
            return this.height;
        }

        public final Integer getIsoSpeed() {
            return this.isoSpeed;
        }

        public final String getLens() {
            return this.lens;
        }

        public final Location getLocation() {
            return this.location;
        }

        public final Float getMaxApertureValue() {
            return this.maxApertureValue;
        }

        public final String getMeteringMode() {
            return this.meteringMode;
        }

        public final Integer getRotation() {
            return this.rotation;
        }

        public final String getSensor() {
            return this.sensor;
        }

        public final Integer getSubjectDistance() {
            return this.subjectDistance;
        }

        public final String getTime() {
            return this.time;
        }

        public final String getWhiteBalance() {
            return this.whiteBalance;
        }

        public final Integer getWidth() {
            return this.width;
        }

        @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
        public final ImageMediaMetadata set(String str, Object obj) {
            return (ImageMediaMetadata) super.set(str, obj);
        }

        public final ImageMediaMetadata setAperture(Float f) {
            this.aperture = f;
            return this;
        }

        public final ImageMediaMetadata setCameraMake(String str) {
            this.cameraMake = str;
            return this;
        }

        public final ImageMediaMetadata setCameraModel(String str) {
            this.cameraModel = str;
            return this;
        }

        public final ImageMediaMetadata setColorSpace(String str) {
            this.colorSpace = str;
            return this;
        }

        public final ImageMediaMetadata setExposureBias(Float f) {
            this.exposureBias = f;
            return this;
        }

        public final ImageMediaMetadata setExposureMode(String str) {
            this.exposureMode = str;
            return this;
        }

        public final ImageMediaMetadata setExposureTime(Float f) {
            this.exposureTime = f;
            return this;
        }

        public final ImageMediaMetadata setFlashUsed(Boolean bool) {
            this.flashUsed = bool;
            return this;
        }

        public final ImageMediaMetadata setFocalLength(Float f) {
            this.focalLength = f;
            return this;
        }

        public final ImageMediaMetadata setHeight(Integer num) {
            this.height = num;
            return this;
        }

        public final ImageMediaMetadata setIsoSpeed(Integer num) {
            this.isoSpeed = num;
            return this;
        }

        public final ImageMediaMetadata setLens(String str) {
            this.lens = str;
            return this;
        }

        public final ImageMediaMetadata setLocation(Location location) {
            this.location = location;
            return this;
        }

        public final ImageMediaMetadata setMaxApertureValue(Float f) {
            this.maxApertureValue = f;
            return this;
        }

        public final ImageMediaMetadata setMeteringMode(String str) {
            this.meteringMode = str;
            return this;
        }

        public final ImageMediaMetadata setRotation(Integer num) {
            this.rotation = num;
            return this;
        }

        public final ImageMediaMetadata setSensor(String str) {
            this.sensor = str;
            return this;
        }

        public final ImageMediaMetadata setSubjectDistance(Integer num) {
            this.subjectDistance = num;
            return this;
        }

        public final ImageMediaMetadata setTime(String str) {
            this.time = str;
            return this;
        }

        public final ImageMediaMetadata setWhiteBalance(String str) {
            this.whiteBalance = str;
            return this;
        }

        public final ImageMediaMetadata setWidth(Integer num) {
            this.width = num;
            return this;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/model/File$ShortcutDetails.class */
    public static final class ShortcutDetails extends GenericJson {
        @AbstractC15247q
        private String targetId;
        @AbstractC15247q
        private String targetMimeType;

        @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
        public final ShortcutDetails clone() {
            return (ShortcutDetails) super.clone();
        }

        public final String getTargetId() {
            return this.targetId;
        }

        public final String getTargetMimeType() {
            return this.targetMimeType;
        }

        @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
        public final ShortcutDetails set(String str, Object obj) {
            return (ShortcutDetails) super.set(str, obj);
        }

        public final ShortcutDetails setTargetId(String str) {
            this.targetId = str;
            return this;
        }

        public final ShortcutDetails setTargetMimeType(String str) {
            this.targetMimeType = str;
            return this;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/model/File$VideoMediaMetadata.class */
    public static final class VideoMediaMetadata extends GenericJson {
        @AbstractC15247q
        @JsonString
        private Long durationMillis;
        @AbstractC15247q
        private Integer height;
        @AbstractC15247q
        private Integer width;

        @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
        public final VideoMediaMetadata clone() {
            return (VideoMediaMetadata) super.clone();
        }

        public final Long getDurationMillis() {
            return this.durationMillis;
        }

        public final Integer getHeight() {
            return this.height;
        }

        public final Integer getWidth() {
            return this.width;
        }

        @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
        public final VideoMediaMetadata set(String str, Object obj) {
            return (VideoMediaMetadata) super.set(str, obj);
        }

        public final VideoMediaMetadata setDurationMillis(Long l) {
            this.durationMillis = l;
            return this;
        }

        public final VideoMediaMetadata setHeight(Integer num) {
            this.height = num;
            return this;
        }

        public final VideoMediaMetadata setWidth(Integer num) {
            this.width = num;
            return this;
        }
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final File clone() {
        return (File) super.clone();
    }

    public final Map<String, String> getAppProperties() {
        return this.appProperties;
    }

    public final Capabilities getCapabilities() {
        return this.capabilities;
    }

    public final ContentHints getContentHints() {
        return this.contentHints;
    }

    public final Boolean getCopyRequiresWriterPermission() {
        return this.copyRequiresWriterPermission;
    }

    public final C15237l getCreatedTime() {
        return this.createdTime;
    }

    public final String getDescription() {
        return this.description;
    }

    public final String getDriveId() {
        return this.driveId;
    }

    public final Boolean getExplicitlyTrashed() {
        return this.explicitlyTrashed;
    }

    public final Map<String, String> getExportLinks() {
        return this.exportLinks;
    }

    public final String getFileExtension() {
        return this.fileExtension;
    }

    public final String getFolderColorRgb() {
        return this.folderColorRgb;
    }

    public final String getFullFileExtension() {
        return this.fullFileExtension;
    }

    public final Boolean getHasAugmentedPermissions() {
        return this.hasAugmentedPermissions;
    }

    public final Boolean getHasThumbnail() {
        return this.hasThumbnail;
    }

    public final String getHeadRevisionId() {
        return this.headRevisionId;
    }

    public final String getIconLink() {
        return this.iconLink;
    }

    public final String getId() {
        return this.f55442id;
    }

    public final ImageMediaMetadata getImageMediaMetadata() {
        return this.imageMediaMetadata;
    }

    public final Boolean getIsAppAuthorized() {
        return this.isAppAuthorized;
    }

    public final String getKind() {
        return this.kind;
    }

    public final User getLastModifyingUser() {
        return this.lastModifyingUser;
    }

    public final String getMd5Checksum() {
        return this.md5Checksum;
    }

    public final String getMimeType() {
        return this.mimeType;
    }

    public final Boolean getModifiedByMe() {
        return this.modifiedByMe;
    }

    public final C15237l getModifiedByMeTime() {
        return this.modifiedByMeTime;
    }

    public final C15237l getModifiedTime() {
        return this.modifiedTime;
    }

    public final String getName() {
        return this.name;
    }

    public final String getOriginalFilename() {
        return this.originalFilename;
    }

    public final Boolean getOwnedByMe() {
        return this.ownedByMe;
    }

    public final List<User> getOwners() {
        return this.owners;
    }

    public final List<String> getParents() {
        return this.parents;
    }

    public final List<String> getPermissionIds() {
        return this.permissionIds;
    }

    public final List<Permission> getPermissions() {
        return this.permissions;
    }

    public final Map<String, String> getProperties() {
        return this.properties;
    }

    public final Long getQuotaBytesUsed() {
        return this.quotaBytesUsed;
    }

    public final Boolean getShared() {
        return this.shared;
    }

    public final C15237l getSharedWithMeTime() {
        return this.sharedWithMeTime;
    }

    public final User getSharingUser() {
        return this.sharingUser;
    }

    public final ShortcutDetails getShortcutDetails() {
        return this.shortcutDetails;
    }

    public final Long getSize() {
        return this.size;
    }

    public final List<String> getSpaces() {
        return this.spaces;
    }

    public final Boolean getStarred() {
        return this.starred;
    }

    public final String getTeamDriveId() {
        return this.teamDriveId;
    }

    public final String getThumbnailLink() {
        return this.thumbnailLink;
    }

    public final Long getThumbnailVersion() {
        return this.thumbnailVersion;
    }

    public final Boolean getTrashed() {
        return this.trashed;
    }

    public final C15237l getTrashedTime() {
        return this.trashedTime;
    }

    public final User getTrashingUser() {
        return this.trashingUser;
    }

    public final Long getVersion() {
        return this.version;
    }

    public final VideoMediaMetadata getVideoMediaMetadata() {
        return this.videoMediaMetadata;
    }

    public final Boolean getViewedByMe() {
        return this.viewedByMe;
    }

    public final C15237l getViewedByMeTime() {
        return this.viewedByMeTime;
    }

    public final Boolean getViewersCanCopyContent() {
        return this.viewersCanCopyContent;
    }

    public final String getWebContentLink() {
        return this.webContentLink;
    }

    public final String getWebViewLink() {
        return this.webViewLink;
    }

    public final Boolean getWritersCanShare() {
        return this.writersCanShare;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final File set(String str, Object obj) {
        return (File) super.set(str, obj);
    }

    public final File setAppProperties(Map<String, String> map) {
        this.appProperties = map;
        return this;
    }

    public final File setCapabilities(Capabilities capabilities) {
        this.capabilities = capabilities;
        return this;
    }

    public final File setContentHints(ContentHints contentHints) {
        this.contentHints = contentHints;
        return this;
    }

    public final File setCopyRequiresWriterPermission(Boolean bool) {
        this.copyRequiresWriterPermission = bool;
        return this;
    }

    public final File setCreatedTime(C15237l c15237l) {
        this.createdTime = c15237l;
        return this;
    }

    public final File setDescription(String str) {
        this.description = str;
        return this;
    }

    public final File setDriveId(String str) {
        this.driveId = str;
        return this;
    }

    public final File setExplicitlyTrashed(Boolean bool) {
        this.explicitlyTrashed = bool;
        return this;
    }

    public final File setExportLinks(Map<String, String> map) {
        this.exportLinks = map;
        return this;
    }

    public final File setFileExtension(String str) {
        this.fileExtension = str;
        return this;
    }

    public final File setFolderColorRgb(String str) {
        this.folderColorRgb = str;
        return this;
    }

    public final File setFullFileExtension(String str) {
        this.fullFileExtension = str;
        return this;
    }

    public final File setHasAugmentedPermissions(Boolean bool) {
        this.hasAugmentedPermissions = bool;
        return this;
    }

    public final File setHasThumbnail(Boolean bool) {
        this.hasThumbnail = bool;
        return this;
    }

    public final File setHeadRevisionId(String str) {
        this.headRevisionId = str;
        return this;
    }

    public final File setIconLink(String str) {
        this.iconLink = str;
        return this;
    }

    public final File setId(String str) {
        this.f55442id = str;
        return this;
    }

    public final File setImageMediaMetadata(ImageMediaMetadata imageMediaMetadata) {
        this.imageMediaMetadata = imageMediaMetadata;
        return this;
    }

    public final File setIsAppAuthorized(Boolean bool) {
        this.isAppAuthorized = bool;
        return this;
    }

    public final File setKind(String str) {
        this.kind = str;
        return this;
    }

    public final File setLastModifyingUser(User user) {
        this.lastModifyingUser = user;
        return this;
    }

    public final File setMd5Checksum(String str) {
        this.md5Checksum = str;
        return this;
    }

    public final File setMimeType(String str) {
        this.mimeType = str;
        return this;
    }

    public final File setModifiedByMe(Boolean bool) {
        this.modifiedByMe = bool;
        return this;
    }

    public final File setModifiedByMeTime(C15237l c15237l) {
        this.modifiedByMeTime = c15237l;
        return this;
    }

    public final File setModifiedTime(C15237l c15237l) {
        this.modifiedTime = c15237l;
        return this;
    }

    public final File setName(String str) {
        this.name = str;
        return this;
    }

    public final File setOriginalFilename(String str) {
        this.originalFilename = str;
        return this;
    }

    public final File setOwnedByMe(Boolean bool) {
        this.ownedByMe = bool;
        return this;
    }

    public final File setOwners(List<User> list) {
        this.owners = list;
        return this;
    }

    public final File setParents(List<String> list) {
        this.parents = list;
        return this;
    }

    public final File setPermissionIds(List<String> list) {
        this.permissionIds = list;
        return this;
    }

    public final File setPermissions(List<Permission> list) {
        this.permissions = list;
        return this;
    }

    public final File setProperties(Map<String, String> map) {
        this.properties = map;
        return this;
    }

    public final File setQuotaBytesUsed(Long l) {
        this.quotaBytesUsed = l;
        return this;
    }

    public final File setShared(Boolean bool) {
        this.shared = bool;
        return this;
    }

    public final File setSharedWithMeTime(C15237l c15237l) {
        this.sharedWithMeTime = c15237l;
        return this;
    }

    public final File setSharingUser(User user) {
        this.sharingUser = user;
        return this;
    }

    public final File setShortcutDetails(ShortcutDetails shortcutDetails) {
        this.shortcutDetails = shortcutDetails;
        return this;
    }

    public final File setSize(Long l) {
        this.size = l;
        return this;
    }

    public final File setSpaces(List<String> list) {
        this.spaces = list;
        return this;
    }

    public final File setStarred(Boolean bool) {
        this.starred = bool;
        return this;
    }

    public final File setTeamDriveId(String str) {
        this.teamDriveId = str;
        return this;
    }

    public final File setThumbnailLink(String str) {
        this.thumbnailLink = str;
        return this;
    }

    public final File setThumbnailVersion(Long l) {
        this.thumbnailVersion = l;
        return this;
    }

    public final File setTrashed(Boolean bool) {
        this.trashed = bool;
        return this;
    }

    public final File setTrashedTime(C15237l c15237l) {
        this.trashedTime = c15237l;
        return this;
    }

    public final File setTrashingUser(User user) {
        this.trashingUser = user;
        return this;
    }

    public final File setVersion(Long l) {
        this.version = l;
        return this;
    }

    public final File setVideoMediaMetadata(VideoMediaMetadata videoMediaMetadata) {
        this.videoMediaMetadata = videoMediaMetadata;
        return this;
    }

    public final File setViewedByMe(Boolean bool) {
        this.viewedByMe = bool;
        return this;
    }

    public final File setViewedByMeTime(C15237l c15237l) {
        this.viewedByMeTime = c15237l;
        return this;
    }

    public final File setViewersCanCopyContent(Boolean bool) {
        this.viewersCanCopyContent = bool;
        return this;
    }

    public final File setWebContentLink(String str) {
        this.webContentLink = str;
        return this;
    }

    public final File setWebViewLink(String str) {
        this.webViewLink = str;
        return this;
    }

    public final File setWritersCanShare(Boolean bool) {
        this.writersCanShare = bool;
        return this;
    }
}
