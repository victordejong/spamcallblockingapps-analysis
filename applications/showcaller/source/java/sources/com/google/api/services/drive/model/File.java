package com.google.api.services.drive.model;

import com.google.api.client.json.AbstractC8675h;
import com.google.api.client.json.C8666b;
import com.google.api.client.util.AbstractC8720o;
import com.google.api.client.util.C8698e;
import com.google.api.client.util.DateTime;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/api/services/drive/model/File.class */
public final class File extends C8666b {
    @AbstractC8720o
    private Map<String, String> appProperties;
    @AbstractC8720o
    private Capabilities capabilities;
    @AbstractC8720o
    private ContentHints contentHints;
    @AbstractC8720o
    private DateTime createdTime;
    @AbstractC8720o
    private String description;
    @AbstractC8720o
    private Boolean explicitlyTrashed;
    @AbstractC8720o
    private String fileExtension;
    @AbstractC8720o
    private String folderColorRgb;
    @AbstractC8720o
    private String fullFileExtension;
    @AbstractC8720o
    private Boolean hasAugmentedPermissions;
    @AbstractC8720o
    private Boolean hasThumbnail;
    @AbstractC8720o
    private String headRevisionId;
    @AbstractC8720o
    private String iconLink;
    @AbstractC8720o

    /* renamed from: id */
    private String f38573id;
    @AbstractC8720o
    private ImageMediaMetadata imageMediaMetadata;
    @AbstractC8720o
    private Boolean isAppAuthorized;
    @AbstractC8720o
    private String kind;
    @AbstractC8720o
    private User lastModifyingUser;
    @AbstractC8720o
    private String md5Checksum;
    @AbstractC8720o
    private String mimeType;
    @AbstractC8720o
    private Boolean modifiedByMe;
    @AbstractC8720o
    private DateTime modifiedByMeTime;
    @AbstractC8720o
    private DateTime modifiedTime;
    @AbstractC8720o
    private String name;
    @AbstractC8720o
    private String originalFilename;
    @AbstractC8720o
    private Boolean ownedByMe;
    @AbstractC8720o
    private List<User> owners;
    @AbstractC8720o
    private List<String> parents;
    @AbstractC8720o
    private List<String> permissionIds;
    @AbstractC8720o
    private List<Permission> permissions;
    @AbstractC8720o
    private Map<String, String> properties;
    @AbstractC8675h
    @AbstractC8720o
    private Long quotaBytesUsed;
    @AbstractC8720o
    private Boolean shared;
    @AbstractC8720o
    private DateTime sharedWithMeTime;
    @AbstractC8720o
    private User sharingUser;
    @AbstractC8675h
    @AbstractC8720o
    private Long size;
    @AbstractC8720o
    private List<String> spaces;
    @AbstractC8720o
    private Boolean starred;
    @AbstractC8720o
    private String teamDriveId;
    @AbstractC8720o
    private String thumbnailLink;
    @AbstractC8675h
    @AbstractC8720o
    private Long thumbnailVersion;
    @AbstractC8720o
    private Boolean trashed;
    @AbstractC8720o
    private DateTime trashedTime;
    @AbstractC8720o
    private User trashingUser;
    @AbstractC8675h
    @AbstractC8720o
    private Long version;
    @AbstractC8720o
    private VideoMediaMetadata videoMediaMetadata;
    @AbstractC8720o
    private Boolean viewedByMe;
    @AbstractC8720o
    private DateTime viewedByMeTime;
    @AbstractC8720o
    private Boolean viewersCanCopyContent;
    @AbstractC8720o
    private String webContentLink;
    @AbstractC8720o
    private String webViewLink;
    @AbstractC8720o
    private Boolean writersCanShare;

    /* loaded from: classes2-dex2jar.jar:com/google/api/services/drive/model/File$Capabilities.class */
    public static final class Capabilities extends C8666b {
        @AbstractC8720o
        private Boolean canAddChildren;
        @AbstractC8720o
        private Boolean canChangeViewersCanCopyContent;
        @AbstractC8720o
        private Boolean canComment;
        @AbstractC8720o
        private Boolean canCopy;
        @AbstractC8720o
        private Boolean canDelete;
        @AbstractC8720o
        private Boolean canDownload;
        @AbstractC8720o
        private Boolean canEdit;
        @AbstractC8720o
        private Boolean canListChildren;
        @AbstractC8720o
        private Boolean canMoveItemIntoTeamDrive;
        @AbstractC8720o
        private Boolean canMoveTeamDriveItem;
        @AbstractC8720o
        private Boolean canReadRevisions;
        @AbstractC8720o
        private Boolean canReadTeamDrive;
        @AbstractC8720o
        private Boolean canRemoveChildren;
        @AbstractC8720o
        private Boolean canRename;
        @AbstractC8720o
        private Boolean canShare;
        @AbstractC8720o
        private Boolean canTrash;
        @AbstractC8720o
        private Boolean canUntrash;

        @Override // com.google.api.client.json.C8666b, com.google.api.client.util.GenericData, java.util.AbstractMap
        public Capabilities clone() {
            return (Capabilities) super.clone();
        }

        public Boolean getCanAddChildren() {
            return this.canAddChildren;
        }

        public Boolean getCanChangeViewersCanCopyContent() {
            return this.canChangeViewersCanCopyContent;
        }

        public Boolean getCanComment() {
            return this.canComment;
        }

        public Boolean getCanCopy() {
            return this.canCopy;
        }

        public Boolean getCanDelete() {
            return this.canDelete;
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

        public Boolean getCanMoveItemIntoTeamDrive() {
            return this.canMoveItemIntoTeamDrive;
        }

        public Boolean getCanMoveTeamDriveItem() {
            return this.canMoveTeamDriveItem;
        }

        public Boolean getCanReadRevisions() {
            return this.canReadRevisions;
        }

        public Boolean getCanReadTeamDrive() {
            return this.canReadTeamDrive;
        }

        public Boolean getCanRemoveChildren() {
            return this.canRemoveChildren;
        }

        public Boolean getCanRename() {
            return this.canRename;
        }

        public Boolean getCanShare() {
            return this.canShare;
        }

        public Boolean getCanTrash() {
            return this.canTrash;
        }

        public Boolean getCanUntrash() {
            return this.canUntrash;
        }

        @Override // com.google.api.client.json.C8666b, com.google.api.client.util.GenericData
        public Capabilities set(String str, Object obj) {
            return (Capabilities) super.set(str, obj);
        }

        public Capabilities setCanAddChildren(Boolean bool) {
            this.canAddChildren = bool;
            return this;
        }

        public Capabilities setCanChangeViewersCanCopyContent(Boolean bool) {
            this.canChangeViewersCanCopyContent = bool;
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

        public Capabilities setCanDelete(Boolean bool) {
            this.canDelete = bool;
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

        public Capabilities setCanMoveItemIntoTeamDrive(Boolean bool) {
            this.canMoveItemIntoTeamDrive = bool;
            return this;
        }

        public Capabilities setCanMoveTeamDriveItem(Boolean bool) {
            this.canMoveTeamDriveItem = bool;
            return this;
        }

        public Capabilities setCanReadRevisions(Boolean bool) {
            this.canReadRevisions = bool;
            return this;
        }

        public Capabilities setCanReadTeamDrive(Boolean bool) {
            this.canReadTeamDrive = bool;
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

        public Capabilities setCanShare(Boolean bool) {
            this.canShare = bool;
            return this;
        }

        public Capabilities setCanTrash(Boolean bool) {
            this.canTrash = bool;
            return this;
        }

        public Capabilities setCanUntrash(Boolean bool) {
            this.canUntrash = bool;
            return this;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/api/services/drive/model/File$ContentHints.class */
    public static final class ContentHints extends C8666b {
        @AbstractC8720o
        private String indexableText;
        @AbstractC8720o
        private Thumbnail thumbnail;

        /* loaded from: classes2-dex2jar.jar:com/google/api/services/drive/model/File$ContentHints$Thumbnail.class */
        public static final class Thumbnail extends C8666b {
            @AbstractC8720o
            private String image;
            @AbstractC8720o
            private String mimeType;

            @Override // com.google.api.client.json.C8666b, com.google.api.client.util.GenericData, java.util.AbstractMap
            public Thumbnail clone() {
                return (Thumbnail) super.clone();
            }

            public byte[] decodeImage() {
                return C8698e.m2912a(this.image);
            }

            public Thumbnail encodeImage(byte[] bArr) {
                this.image = C8698e.m2911b(bArr);
                return this;
            }

            public String getImage() {
                return this.image;
            }

            public String getMimeType() {
                return this.mimeType;
            }

            @Override // com.google.api.client.json.C8666b, com.google.api.client.util.GenericData
            public Thumbnail set(String str, Object obj) {
                return (Thumbnail) super.set(str, obj);
            }

            public Thumbnail setImage(String str) {
                this.image = str;
                return this;
            }

            public Thumbnail setMimeType(String str) {
                this.mimeType = str;
                return this;
            }
        }

        @Override // com.google.api.client.json.C8666b, com.google.api.client.util.GenericData, java.util.AbstractMap
        public ContentHints clone() {
            return (ContentHints) super.clone();
        }

        public String getIndexableText() {
            return this.indexableText;
        }

        public Thumbnail getThumbnail() {
            return this.thumbnail;
        }

        @Override // com.google.api.client.json.C8666b, com.google.api.client.util.GenericData
        public ContentHints set(String str, Object obj) {
            return (ContentHints) super.set(str, obj);
        }

        public ContentHints setIndexableText(String str) {
            this.indexableText = str;
            return this;
        }

        public ContentHints setThumbnail(Thumbnail thumbnail) {
            this.thumbnail = thumbnail;
            return this;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/api/services/drive/model/File$ImageMediaMetadata.class */
    public static final class ImageMediaMetadata extends C8666b {
        @AbstractC8720o
        private Float aperture;
        @AbstractC8720o
        private String cameraMake;
        @AbstractC8720o
        private String cameraModel;
        @AbstractC8720o
        private String colorSpace;
        @AbstractC8720o
        private Float exposureBias;
        @AbstractC8720o
        private String exposureMode;
        @AbstractC8720o
        private Float exposureTime;
        @AbstractC8720o
        private Boolean flashUsed;
        @AbstractC8720o
        private Float focalLength;
        @AbstractC8720o
        private Integer height;
        @AbstractC8720o
        private Integer isoSpeed;
        @AbstractC8720o
        private String lens;
        @AbstractC8720o
        private Location location;
        @AbstractC8720o
        private Float maxApertureValue;
        @AbstractC8720o
        private String meteringMode;
        @AbstractC8720o
        private Integer rotation;
        @AbstractC8720o
        private String sensor;
        @AbstractC8720o
        private Integer subjectDistance;
        @AbstractC8720o
        private String time;
        @AbstractC8720o
        private String whiteBalance;
        @AbstractC8720o
        private Integer width;

        /* loaded from: classes2-dex2jar.jar:com/google/api/services/drive/model/File$ImageMediaMetadata$Location.class */
        public static final class Location extends C8666b {
            @AbstractC8720o
            private Double altitude;
            @AbstractC8720o
            private Double latitude;
            @AbstractC8720o
            private Double longitude;

            @Override // com.google.api.client.json.C8666b, com.google.api.client.util.GenericData, java.util.AbstractMap
            public Location clone() {
                return (Location) super.clone();
            }

            public Double getAltitude() {
                return this.altitude;
            }

            public Double getLatitude() {
                return this.latitude;
            }

            public Double getLongitude() {
                return this.longitude;
            }

            @Override // com.google.api.client.json.C8666b, com.google.api.client.util.GenericData
            public Location set(String str, Object obj) {
                return (Location) super.set(str, obj);
            }

            public Location setAltitude(Double d) {
                this.altitude = d;
                return this;
            }

            public Location setLatitude(Double d) {
                this.latitude = d;
                return this;
            }

            public Location setLongitude(Double d) {
                this.longitude = d;
                return this;
            }
        }

        @Override // com.google.api.client.json.C8666b, com.google.api.client.util.GenericData, java.util.AbstractMap
        public ImageMediaMetadata clone() {
            return (ImageMediaMetadata) super.clone();
        }

        public Float getAperture() {
            return this.aperture;
        }

        public String getCameraMake() {
            return this.cameraMake;
        }

        public String getCameraModel() {
            return this.cameraModel;
        }

        public String getColorSpace() {
            return this.colorSpace;
        }

        public Float getExposureBias() {
            return this.exposureBias;
        }

        public String getExposureMode() {
            return this.exposureMode;
        }

        public Float getExposureTime() {
            return this.exposureTime;
        }

        public Boolean getFlashUsed() {
            return this.flashUsed;
        }

        public Float getFocalLength() {
            return this.focalLength;
        }

        public Integer getHeight() {
            return this.height;
        }

        public Integer getIsoSpeed() {
            return this.isoSpeed;
        }

        public String getLens() {
            return this.lens;
        }

        public Location getLocation() {
            return this.location;
        }

        public Float getMaxApertureValue() {
            return this.maxApertureValue;
        }

        public String getMeteringMode() {
            return this.meteringMode;
        }

        public Integer getRotation() {
            return this.rotation;
        }

        public String getSensor() {
            return this.sensor;
        }

        public Integer getSubjectDistance() {
            return this.subjectDistance;
        }

        public String getTime() {
            return this.time;
        }

        public String getWhiteBalance() {
            return this.whiteBalance;
        }

        public Integer getWidth() {
            return this.width;
        }

        @Override // com.google.api.client.json.C8666b, com.google.api.client.util.GenericData
        public ImageMediaMetadata set(String str, Object obj) {
            return (ImageMediaMetadata) super.set(str, obj);
        }

        public ImageMediaMetadata setAperture(Float f) {
            this.aperture = f;
            return this;
        }

        public ImageMediaMetadata setCameraMake(String str) {
            this.cameraMake = str;
            return this;
        }

        public ImageMediaMetadata setCameraModel(String str) {
            this.cameraModel = str;
            return this;
        }

        public ImageMediaMetadata setColorSpace(String str) {
            this.colorSpace = str;
            return this;
        }

        public ImageMediaMetadata setExposureBias(Float f) {
            this.exposureBias = f;
            return this;
        }

        public ImageMediaMetadata setExposureMode(String str) {
            this.exposureMode = str;
            return this;
        }

        public ImageMediaMetadata setExposureTime(Float f) {
            this.exposureTime = f;
            return this;
        }

        public ImageMediaMetadata setFlashUsed(Boolean bool) {
            this.flashUsed = bool;
            return this;
        }

        public ImageMediaMetadata setFocalLength(Float f) {
            this.focalLength = f;
            return this;
        }

        public ImageMediaMetadata setHeight(Integer num) {
            this.height = num;
            return this;
        }

        public ImageMediaMetadata setIsoSpeed(Integer num) {
            this.isoSpeed = num;
            return this;
        }

        public ImageMediaMetadata setLens(String str) {
            this.lens = str;
            return this;
        }

        public ImageMediaMetadata setLocation(Location location) {
            this.location = location;
            return this;
        }

        public ImageMediaMetadata setMaxApertureValue(Float f) {
            this.maxApertureValue = f;
            return this;
        }

        public ImageMediaMetadata setMeteringMode(String str) {
            this.meteringMode = str;
            return this;
        }

        public ImageMediaMetadata setRotation(Integer num) {
            this.rotation = num;
            return this;
        }

        public ImageMediaMetadata setSensor(String str) {
            this.sensor = str;
            return this;
        }

        public ImageMediaMetadata setSubjectDistance(Integer num) {
            this.subjectDistance = num;
            return this;
        }

        public ImageMediaMetadata setTime(String str) {
            this.time = str;
            return this;
        }

        public ImageMediaMetadata setWhiteBalance(String str) {
            this.whiteBalance = str;
            return this;
        }

        public ImageMediaMetadata setWidth(Integer num) {
            this.width = num;
            return this;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/api/services/drive/model/File$VideoMediaMetadata.class */
    public static final class VideoMediaMetadata extends C8666b {
        @AbstractC8675h
        @AbstractC8720o
        private Long durationMillis;
        @AbstractC8720o
        private Integer height;
        @AbstractC8720o
        private Integer width;

        @Override // com.google.api.client.json.C8666b, com.google.api.client.util.GenericData, java.util.AbstractMap
        public VideoMediaMetadata clone() {
            return (VideoMediaMetadata) super.clone();
        }

        public Long getDurationMillis() {
            return this.durationMillis;
        }

        public Integer getHeight() {
            return this.height;
        }

        public Integer getWidth() {
            return this.width;
        }

        @Override // com.google.api.client.json.C8666b, com.google.api.client.util.GenericData
        public VideoMediaMetadata set(String str, Object obj) {
            return (VideoMediaMetadata) super.set(str, obj);
        }

        public VideoMediaMetadata setDurationMillis(Long l) {
            this.durationMillis = l;
            return this;
        }

        public VideoMediaMetadata setHeight(Integer num) {
            this.height = num;
            return this;
        }

        public VideoMediaMetadata setWidth(Integer num) {
            this.width = num;
            return this;
        }
    }

    @Override // com.google.api.client.json.C8666b, com.google.api.client.util.GenericData, java.util.AbstractMap
    public File clone() {
        return (File) super.clone();
    }

    public Map<String, String> getAppProperties() {
        return this.appProperties;
    }

    public Capabilities getCapabilities() {
        return this.capabilities;
    }

    public ContentHints getContentHints() {
        return this.contentHints;
    }

    public DateTime getCreatedTime() {
        return this.createdTime;
    }

    public String getDescription() {
        return this.description;
    }

    public Boolean getExplicitlyTrashed() {
        return this.explicitlyTrashed;
    }

    public String getFileExtension() {
        return this.fileExtension;
    }

    public String getFolderColorRgb() {
        return this.folderColorRgb;
    }

    public String getFullFileExtension() {
        return this.fullFileExtension;
    }

    public Boolean getHasAugmentedPermissions() {
        return this.hasAugmentedPermissions;
    }

    public Boolean getHasThumbnail() {
        return this.hasThumbnail;
    }

    public String getHeadRevisionId() {
        return this.headRevisionId;
    }

    public String getIconLink() {
        return this.iconLink;
    }

    public String getId() {
        return this.f38573id;
    }

    public ImageMediaMetadata getImageMediaMetadata() {
        return this.imageMediaMetadata;
    }

    public Boolean getIsAppAuthorized() {
        return this.isAppAuthorized;
    }

    public String getKind() {
        return this.kind;
    }

    public User getLastModifyingUser() {
        return this.lastModifyingUser;
    }

    public String getMd5Checksum() {
        return this.md5Checksum;
    }

    public String getMimeType() {
        return this.mimeType;
    }

    public Boolean getModifiedByMe() {
        return this.modifiedByMe;
    }

    public DateTime getModifiedByMeTime() {
        return this.modifiedByMeTime;
    }

    public DateTime getModifiedTime() {
        return this.modifiedTime;
    }

    public String getName() {
        return this.name;
    }

    public String getOriginalFilename() {
        return this.originalFilename;
    }

    public Boolean getOwnedByMe() {
        return this.ownedByMe;
    }

    public List<User> getOwners() {
        return this.owners;
    }

    public List<String> getParents() {
        return this.parents;
    }

    public List<String> getPermissionIds() {
        return this.permissionIds;
    }

    public List<Permission> getPermissions() {
        return this.permissions;
    }

    public Map<String, String> getProperties() {
        return this.properties;
    }

    public Long getQuotaBytesUsed() {
        return this.quotaBytesUsed;
    }

    public Boolean getShared() {
        return this.shared;
    }

    public DateTime getSharedWithMeTime() {
        return this.sharedWithMeTime;
    }

    public User getSharingUser() {
        return this.sharingUser;
    }

    public Long getSize() {
        return this.size;
    }

    public List<String> getSpaces() {
        return this.spaces;
    }

    public Boolean getStarred() {
        return this.starred;
    }

    public String getTeamDriveId() {
        return this.teamDriveId;
    }

    public String getThumbnailLink() {
        return this.thumbnailLink;
    }

    public Long getThumbnailVersion() {
        return this.thumbnailVersion;
    }

    public Boolean getTrashed() {
        return this.trashed;
    }

    public DateTime getTrashedTime() {
        return this.trashedTime;
    }

    public User getTrashingUser() {
        return this.trashingUser;
    }

    public Long getVersion() {
        return this.version;
    }

    public VideoMediaMetadata getVideoMediaMetadata() {
        return this.videoMediaMetadata;
    }

    public Boolean getViewedByMe() {
        return this.viewedByMe;
    }

    public DateTime getViewedByMeTime() {
        return this.viewedByMeTime;
    }

    public Boolean getViewersCanCopyContent() {
        return this.viewersCanCopyContent;
    }

    public String getWebContentLink() {
        return this.webContentLink;
    }

    public String getWebViewLink() {
        return this.webViewLink;
    }

    public Boolean getWritersCanShare() {
        return this.writersCanShare;
    }

    @Override // com.google.api.client.json.C8666b, com.google.api.client.util.GenericData
    public File set(String str, Object obj) {
        return (File) super.set(str, obj);
    }

    public File setAppProperties(Map<String, String> map) {
        this.appProperties = map;
        return this;
    }

    public File setCapabilities(Capabilities capabilities) {
        this.capabilities = capabilities;
        return this;
    }

    public File setContentHints(ContentHints contentHints) {
        this.contentHints = contentHints;
        return this;
    }

    public File setCreatedTime(DateTime dateTime) {
        this.createdTime = dateTime;
        return this;
    }

    public File setDescription(String str) {
        this.description = str;
        return this;
    }

    public File setExplicitlyTrashed(Boolean bool) {
        this.explicitlyTrashed = bool;
        return this;
    }

    public File setFileExtension(String str) {
        this.fileExtension = str;
        return this;
    }

    public File setFolderColorRgb(String str) {
        this.folderColorRgb = str;
        return this;
    }

    public File setFullFileExtension(String str) {
        this.fullFileExtension = str;
        return this;
    }

    public File setHasAugmentedPermissions(Boolean bool) {
        this.hasAugmentedPermissions = bool;
        return this;
    }

    public File setHasThumbnail(Boolean bool) {
        this.hasThumbnail = bool;
        return this;
    }

    public File setHeadRevisionId(String str) {
        this.headRevisionId = str;
        return this;
    }

    public File setIconLink(String str) {
        this.iconLink = str;
        return this;
    }

    public File setId(String str) {
        this.f38573id = str;
        return this;
    }

    public File setImageMediaMetadata(ImageMediaMetadata imageMediaMetadata) {
        this.imageMediaMetadata = imageMediaMetadata;
        return this;
    }

    public File setIsAppAuthorized(Boolean bool) {
        this.isAppAuthorized = bool;
        return this;
    }

    public File setKind(String str) {
        this.kind = str;
        return this;
    }

    public File setLastModifyingUser(User user) {
        this.lastModifyingUser = user;
        return this;
    }

    public File setMd5Checksum(String str) {
        this.md5Checksum = str;
        return this;
    }

    public File setMimeType(String str) {
        this.mimeType = str;
        return this;
    }

    public File setModifiedByMe(Boolean bool) {
        this.modifiedByMe = bool;
        return this;
    }

    public File setModifiedByMeTime(DateTime dateTime) {
        this.modifiedByMeTime = dateTime;
        return this;
    }

    public File setModifiedTime(DateTime dateTime) {
        this.modifiedTime = dateTime;
        return this;
    }

    public File setName(String str) {
        this.name = str;
        return this;
    }

    public File setOriginalFilename(String str) {
        this.originalFilename = str;
        return this;
    }

    public File setOwnedByMe(Boolean bool) {
        this.ownedByMe = bool;
        return this;
    }

    public File setOwners(List<User> list) {
        this.owners = list;
        return this;
    }

    public File setParents(List<String> list) {
        this.parents = list;
        return this;
    }

    public File setPermissionIds(List<String> list) {
        this.permissionIds = list;
        return this;
    }

    public File setPermissions(List<Permission> list) {
        this.permissions = list;
        return this;
    }

    public File setProperties(Map<String, String> map) {
        this.properties = map;
        return this;
    }

    public File setQuotaBytesUsed(Long l) {
        this.quotaBytesUsed = l;
        return this;
    }

    public File setShared(Boolean bool) {
        this.shared = bool;
        return this;
    }

    public File setSharedWithMeTime(DateTime dateTime) {
        this.sharedWithMeTime = dateTime;
        return this;
    }

    public File setSharingUser(User user) {
        this.sharingUser = user;
        return this;
    }

    public File setSize(Long l) {
        this.size = l;
        return this;
    }

    public File setSpaces(List<String> list) {
        this.spaces = list;
        return this;
    }

    public File setStarred(Boolean bool) {
        this.starred = bool;
        return this;
    }

    public File setTeamDriveId(String str) {
        this.teamDriveId = str;
        return this;
    }

    public File setThumbnailLink(String str) {
        this.thumbnailLink = str;
        return this;
    }

    public File setThumbnailVersion(Long l) {
        this.thumbnailVersion = l;
        return this;
    }

    public File setTrashed(Boolean bool) {
        this.trashed = bool;
        return this;
    }

    public File setTrashedTime(DateTime dateTime) {
        this.trashedTime = dateTime;
        return this;
    }

    public File setTrashingUser(User user) {
        this.trashingUser = user;
        return this;
    }

    public File setVersion(Long l) {
        this.version = l;
        return this;
    }

    public File setVideoMediaMetadata(VideoMediaMetadata videoMediaMetadata) {
        this.videoMediaMetadata = videoMediaMetadata;
        return this;
    }

    public File setViewedByMe(Boolean bool) {
        this.viewedByMe = bool;
        return this;
    }

    public File setViewedByMeTime(DateTime dateTime) {
        this.viewedByMeTime = dateTime;
        return this;
    }

    public File setViewersCanCopyContent(Boolean bool) {
        this.viewersCanCopyContent = bool;
        return this;
    }

    public File setWebContentLink(String str) {
        this.webContentLink = str;
        return this;
    }

    public File setWebViewLink(String str) {
        this.webViewLink = str;
        return this;
    }

    public File setWritersCanShare(Boolean bool) {
        this.writersCanShare = bool;
        return this;
    }
}
