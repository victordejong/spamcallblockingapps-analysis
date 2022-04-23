package com.google.api.services.drive.model;

import com.google.api.client.a.d;
import com.google.api.client.a.l;
import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
import com.google.api.client.json.JsonString;
import java.util.List;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/model/File.class */
public final class File extends GenericJson {
    @q
    private Map<String, String> appProperties;
    @q
    private Capabilities capabilities;
    @q
    private ContentHints contentHints;
    @q
    private Boolean copyRequiresWriterPermission;
    @q
    private l createdTime;
    @q
    private String description;
    @q
    private String driveId;
    @q
    private Boolean explicitlyTrashed;
    @q
    private Map<String, String> exportLinks;
    @q
    private String fileExtension;
    @q
    private String folderColorRgb;
    @q
    private String fullFileExtension;
    @q
    private Boolean hasAugmentedPermissions;
    @q
    private Boolean hasThumbnail;
    @q
    private String headRevisionId;
    @q
    private String iconLink;
    @q
    private String id;
    @q
    private ImageMediaMetadata imageMediaMetadata;
    @q
    private Boolean isAppAuthorized;
    @q
    private String kind;
    @q
    private User lastModifyingUser;
    @q
    private String md5Checksum;
    @q
    private String mimeType;
    @q
    private Boolean modifiedByMe;
    @q
    private l modifiedByMeTime;
    @q
    private l modifiedTime;
    @q
    private String name;
    @q
    private String originalFilename;
    @q
    private Boolean ownedByMe;
    @q
    private List<User> owners;
    @q
    private List<String> parents;
    @q
    private List<String> permissionIds;
    @q
    private List<Permission> permissions;
    @q
    private Map<String, String> properties;
    @q
    @JsonString
    private Long quotaBytesUsed;
    @q
    private Boolean shared;
    @q
    private l sharedWithMeTime;
    @q
    private User sharingUser;
    @q
    private ShortcutDetails shortcutDetails;
    @q
    @JsonString
    private Long size;
    @q
    private List<String> spaces;
    @q
    private Boolean starred;
    @q
    private String teamDriveId;
    @q
    private String thumbnailLink;
    @q
    @JsonString
    private Long thumbnailVersion;
    @q
    private Boolean trashed;
    @q
    private l trashedTime;
    @q
    private User trashingUser;
    @q
    @JsonString
    private Long version;
    @q
    private VideoMediaMetadata videoMediaMetadata;
    @q
    private Boolean viewedByMe;
    @q
    private l viewedByMeTime;
    @q
    private Boolean viewersCanCopyContent;
    @q
    private String webContentLink;
    @q
    private String webViewLink;
    @q
    private Boolean writersCanShare;

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/model/File$Capabilities.class */
    public static final class Capabilities extends GenericJson {
        @q
        private Boolean canAddChildren;
        @q
        private Boolean canAddMyDriveParent;
        @q
        private Boolean canChangeCopyRequiresWriterPermission;
        @q
        private Boolean canChangeViewersCanCopyContent;
        @q
        private Boolean canComment;
        @q
        private Boolean canCopy;
        @q
        private Boolean canDelete;
        @q
        private Boolean canDeleteChildren;
        @q
        private Boolean canDownload;
        @q
        private Boolean canEdit;
        @q
        private Boolean canListChildren;
        @q
        private Boolean canModifyContent;
        @q
        private Boolean canMoveChildrenOutOfDrive;
        @q
        private Boolean canMoveChildrenOutOfTeamDrive;
        @q
        private Boolean canMoveChildrenWithinDrive;
        @q
        private Boolean canMoveChildrenWithinTeamDrive;
        @q
        private Boolean canMoveItemIntoTeamDrive;
        @q
        private Boolean canMoveItemOutOfDrive;
        @q
        private Boolean canMoveItemOutOfTeamDrive;
        @q
        private Boolean canMoveItemWithinDrive;
        @q
        private Boolean canMoveItemWithinTeamDrive;
        @q
        private Boolean canMoveTeamDriveItem;
        @q
        private Boolean canReadDrive;
        @q
        private Boolean canReadRevisions;
        @q
        private Boolean canReadTeamDrive;
        @q
        private Boolean canRemoveChildren;
        @q
        private Boolean canRemoveMyDriveParent;
        @q
        private Boolean canRename;
        @q
        private Boolean canShare;
        @q
        private Boolean canTrash;
        @q
        private Boolean canTrashChildren;
        @q
        private Boolean canUntrash;

        @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
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

        @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
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
        @q
        private String indexableText;
        @q
        private Thumbnail thumbnail;

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/model/File$ContentHints$Thumbnail.class */
        public static final class Thumbnail extends GenericJson {
            @q
            private String image;
            @q
            private String mimeType;

            @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
            public final Thumbnail clone() {
                return (Thumbnail) super.clone();
            }

            public final byte[] decodeImage() {
                return d.a(this.image);
            }

            public final Thumbnail encodeImage(byte[] bArr) {
                this.image = d.a(bArr);
                return this;
            }

            public final String getImage() {
                return this.image;
            }

            public final String getMimeType() {
                return this.mimeType;
            }

            @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
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

        @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
        public final ContentHints clone() {
            return (ContentHints) super.clone();
        }

        public final String getIndexableText() {
            return this.indexableText;
        }

        public final Thumbnail getThumbnail() {
            return this.thumbnail;
        }

        @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
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
        @q
        private Float aperture;
        @q
        private String cameraMake;
        @q
        private String cameraModel;
        @q
        private String colorSpace;
        @q
        private Float exposureBias;
        @q
        private String exposureMode;
        @q
        private Float exposureTime;
        @q
        private Boolean flashUsed;
        @q
        private Float focalLength;
        @q
        private Integer height;
        @q
        private Integer isoSpeed;
        @q
        private String lens;
        @q
        private Location location;
        @q
        private Float maxApertureValue;
        @q
        private String meteringMode;
        @q
        private Integer rotation;
        @q
        private String sensor;
        @q
        private Integer subjectDistance;
        @q
        private String time;
        @q
        private String whiteBalance;
        @q
        private Integer width;

        /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/model/File$ImageMediaMetadata$Location.class */
        public static final class Location extends GenericJson {
            @q
            private Double altitude;
            @q
            private Double latitude;
            @q
            private Double longitude;

            @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
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

            @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
            public final Location set(String str, Object obj) {
                return (Location) super.set(str, obj);
            }

            public final Location setAltitude(Double d2) {
                this.altitude = d2;
                return this;
            }

            public final Location setLatitude(Double d2) {
                this.latitude = d2;
                return this;
            }

            public final Location setLongitude(Double d2) {
                this.longitude = d2;
                return this;
            }
        }

        @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
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

        @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
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
        @q
        private String targetId;
        @q
        private String targetMimeType;

        @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
        public final ShortcutDetails clone() {
            return (ShortcutDetails) super.clone();
        }

        public final String getTargetId() {
            return this.targetId;
        }

        public final String getTargetMimeType() {
            return this.targetMimeType;
        }

        @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
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
        @q
        @JsonString
        private Long durationMillis;
        @q
        private Integer height;
        @q
        private Integer width;

        @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
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

        @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
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

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
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

    public final l getCreatedTime() {
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
        return this.id;
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

    public final l getModifiedByMeTime() {
        return this.modifiedByMeTime;
    }

    public final l getModifiedTime() {
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

    public final l getSharedWithMeTime() {
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

    public final l getTrashedTime() {
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

    public final l getViewedByMeTime() {
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

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
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

    public final File setCreatedTime(l lVar) {
        this.createdTime = lVar;
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
        this.id = str;
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

    public final File setModifiedByMeTime(l lVar) {
        this.modifiedByMeTime = lVar;
        return this;
    }

    public final File setModifiedTime(l lVar) {
        this.modifiedTime = lVar;
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

    public final File setSharedWithMeTime(l lVar) {
        this.sharedWithMeTime = lVar;
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

    public final File setTrashedTime(l lVar) {
        this.trashedTime = lVar;
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

    public final File setViewedByMeTime(l lVar) {
        this.viewedByMeTime = lVar;
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
