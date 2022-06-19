.class public final Lcom/google/api/services/drive/model/File;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/drive/model/File$VideoMediaMetadata;,
        Lcom/google/api/services/drive/model/File$ShortcutDetails;,
        Lcom/google/api/services/drive/model/File$ImageMediaMetadata;,
        Lcom/google/api/services/drive/model/File$ContentHints;,
        Lcom/google/api/services/drive/model/File$Capabilities;
    }
.end annotation


# instance fields
.field private appProperties:Ljava/util/Map;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private capabilities:Lcom/google/api/services/drive/model/File$Capabilities;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private contentHints:Lcom/google/api/services/drive/model/File$ContentHints;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private copyRequiresWriterPermission:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private createdTime:Lcom/google/api/client/a/l;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private description:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private driveId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private explicitlyTrashed:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private exportLinks:Ljava/util/Map;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fileExtension:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private folderColorRgb:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private fullFileExtension:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private hasAugmentedPermissions:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private hasThumbnail:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private headRevisionId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private iconLink:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private imageMediaMetadata:Lcom/google/api/services/drive/model/File$ImageMediaMetadata;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private isAppAuthorized:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private kind:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private lastModifyingUser:Lcom/google/api/services/drive/model/User;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private md5Checksum:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private mimeType:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private modifiedByMe:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private modifiedByMeTime:Lcom/google/api/client/a/l;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private modifiedTime:Lcom/google/api/client/a/l;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private originalFilename:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private ownedByMe:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private owners:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/api/services/drive/model/User;",
            ">;"
        }
    .end annotation
.end field

.field private parents:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private permissionIds:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private permissions:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/api/services/drive/model/Permission;",
            ">;"
        }
    .end annotation
.end field

.field private properties:Ljava/util/Map;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private quotaBytesUsed:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation

    .annotation runtime Lcom/google/api/client/json/JsonString;
    .end annotation
.end field

.field private shared:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private sharedWithMeTime:Lcom/google/api/client/a/l;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private sharingUser:Lcom/google/api/services/drive/model/User;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private shortcutDetails:Lcom/google/api/services/drive/model/File$ShortcutDetails;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private size:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation

    .annotation runtime Lcom/google/api/client/json/JsonString;
    .end annotation
.end field

.field private spaces:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private starred:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private teamDriveId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private thumbnailLink:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private thumbnailVersion:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation

    .annotation runtime Lcom/google/api/client/json/JsonString;
    .end annotation
.end field

.field private trashed:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private trashedTime:Lcom/google/api/client/a/l;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private trashingUser:Lcom/google/api/services/drive/model/User;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private version:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation

    .annotation runtime Lcom/google/api/client/json/JsonString;
    .end annotation
.end field

.field private videoMediaMetadata:Lcom/google/api/services/drive/model/File$VideoMediaMetadata;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private viewedByMe:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private viewedByMeTime:Lcom/google/api/client/a/l;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private viewersCanCopyContent:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private webContentLink:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private webViewLink:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private writersCanShare:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Lcom/google/api/client/a/n;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/File;->clone()Lcom/google/api/services/drive/model/File;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/File;->clone()Lcom/google/api/services/drive/model/File;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/drive/model/File;
    .locals 1

    .line 1507
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/File;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/File;->clone()Lcom/google/api/services/drive/model/File;

    move-result-object v0

    return-object v0
.end method

.method public final getAppProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 474
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->appProperties:Ljava/util/Map;

    return-object v0
.end method

.method public final getCapabilities()Lcom/google/api/services/drive/model/File$Capabilities;
    .locals 1

    .line 493
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->capabilities:Lcom/google/api/services/drive/model/File$Capabilities;

    return-object v0
.end method

.method public final getContentHints()Lcom/google/api/services/drive/model/File$ContentHints;
    .locals 1

    .line 512
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->contentHints:Lcom/google/api/services/drive/model/File$ContentHints;

    return-object v0
.end method

.method public final getCopyRequiresWriterPermission()Ljava/lang/Boolean;
    .locals 1

    .line 531
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->copyRequiresWriterPermission:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getCreatedTime()Lcom/google/api/client/a/l;
    .locals 1

    .line 549
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->createdTime:Lcom/google/api/client/a/l;

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 566
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getDriveId()Ljava/lang/String;
    .locals 1

    .line 583
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->driveId:Ljava/lang/String;

    return-object v0
.end method

.method public final getExplicitlyTrashed()Ljava/lang/Boolean;
    .locals 1

    .line 601
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->explicitlyTrashed:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getExportLinks()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 619
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->exportLinks:Ljava/util/Map;

    return-object v0
.end method

.method public final getFileExtension()Ljava/lang/String;
    .locals 1

    .line 637
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->fileExtension:Ljava/lang/String;

    return-object v0
.end method

.method public final getFolderColorRgb()Ljava/lang/String;
    .locals 1

    .line 657
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->folderColorRgb:Ljava/lang/String;

    return-object v0
.end method

.method public final getFullFileExtension()Ljava/lang/String;
    .locals 1

    .line 679
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->fullFileExtension:Ljava/lang/String;

    return-object v0
.end method

.method public final getHasAugmentedPermissions()Ljava/lang/Boolean;
    .locals 1

    .line 700
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->hasAugmentedPermissions:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getHasThumbnail()Ljava/lang/Boolean;
    .locals 1

    .line 719
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->hasThumbnail:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getHeadRevisionId()Ljava/lang/String;
    .locals 1

    .line 738
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->headRevisionId:Ljava/lang/String;

    return-object v0
.end method

.method public final getIconLink()Ljava/lang/String;
    .locals 1

    .line 756
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->iconLink:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 773
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getImageMediaMetadata()Lcom/google/api/services/drive/model/File$ImageMediaMetadata;
    .locals 1

    .line 790
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->imageMediaMetadata:Lcom/google/api/services/drive/model/File$ImageMediaMetadata;

    return-object v0
.end method

.method public final getIsAppAuthorized()Ljava/lang/Boolean;
    .locals 1

    .line 807
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->isAppAuthorized:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getKind()Ljava/lang/String;
    .locals 1

    .line 824
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public final getLastModifyingUser()Lcom/google/api/services/drive/model/User;
    .locals 1

    .line 841
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->lastModifyingUser:Lcom/google/api/services/drive/model/User;

    return-object v0
.end method

.method public final getMd5Checksum()Ljava/lang/String;
    .locals 1

    .line 859
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->md5Checksum:Ljava/lang/String;

    return-object v0
.end method

.method public final getMimeType()Ljava/lang/String;
    .locals 1

    .line 880
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public final getModifiedByMe()Ljava/lang/Boolean;
    .locals 1

    .line 900
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->modifiedByMe:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getModifiedByMeTime()Lcom/google/api/client/a/l;
    .locals 1

    .line 917
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->modifiedByMeTime:Lcom/google/api/client/a/l;

    return-object v0
.end method

.method public final getModifiedTime()Lcom/google/api/client/a/l;
    .locals 1

    .line 935
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->modifiedTime:Lcom/google/api/client/a/l;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 955
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getOriginalFilename()Ljava/lang/String;
    .locals 1

    .line 975
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->originalFilename:Ljava/lang/String;

    return-object v0
.end method

.method public final getOwnedByMe()Ljava/lang/Boolean;
    .locals 1

    .line 993
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->ownedByMe:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getOwners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/services/drive/model/User;",
            ">;"
        }
    .end annotation

    .line 1011
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->owners:Ljava/util/List;

    return-object v0
.end method

.method public final getParents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1033
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->parents:Ljava/util/List;

    return-object v0
.end method

.method public final getPermissionIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1054
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->permissionIds:Ljava/util/List;

    return-object v0
.end method

.method public final getPermissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/services/drive/model/Permission;",
            ">;"
        }
    .end annotation

    .line 1072
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->permissions:Ljava/util/List;

    return-object v0
.end method

.method public final getProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1091
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->properties:Ljava/util/Map;

    return-object v0
.end method

.method public final getQuotaBytesUsed()Ljava/lang/Long;
    .locals 1

    .line 1110
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->quotaBytesUsed:Ljava/lang/Long;

    return-object v0
.end method

.method public final getShared()Ljava/lang/Boolean;
    .locals 1

    .line 1128
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->shared:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getSharedWithMeTime()Lcom/google/api/client/a/l;
    .locals 1

    .line 1145
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->sharedWithMeTime:Lcom/google/api/client/a/l;

    return-object v0
.end method

.method public final getSharingUser()Lcom/google/api/services/drive/model/User;
    .locals 1

    .line 1162
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->sharingUser:Lcom/google/api/services/drive/model/User;

    return-object v0
.end method

.method public final getShortcutDetails()Lcom/google/api/services/drive/model/File$ShortcutDetails;
    .locals 1

    .line 1180
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->shortcutDetails:Lcom/google/api/services/drive/model/File$ShortcutDetails;

    return-object v0
.end method

.method public final getSize()Ljava/lang/Long;
    .locals 1

    .line 1199
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->size:Ljava/lang/Long;

    return-object v0
.end method

.method public final getSpaces()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1218
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->spaces:Ljava/util/List;

    return-object v0
.end method

.method public final getStarred()Ljava/lang/Boolean;
    .locals 1

    .line 1236
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->starred:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getTeamDriveId()Ljava/lang/String;
    .locals 1

    .line 1253
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->teamDriveId:Ljava/lang/String;

    return-object v0
.end method

.method public final getThumbnailLink()Ljava/lang/String;
    .locals 1

    .line 1271
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->thumbnailLink:Ljava/lang/String;

    return-object v0
.end method

.method public final getThumbnailVersion()Ljava/lang/Long;
    .locals 1

    .line 1289
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->thumbnailVersion:Ljava/lang/Long;

    return-object v0
.end method

.method public final getTrashed()Ljava/lang/Boolean;
    .locals 1

    .line 1307
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->trashed:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getTrashedTime()Lcom/google/api/client/a/l;
    .locals 1

    .line 1326
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->trashedTime:Lcom/google/api/client/a/l;

    return-object v0
.end method

.method public final getTrashingUser()Lcom/google/api/services/drive/model/User;
    .locals 1

    .line 1345
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->trashingUser:Lcom/google/api/services/drive/model/User;

    return-object v0
.end method

.method public final getVersion()Ljava/lang/Long;
    .locals 1

    .line 1364
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->version:Ljava/lang/Long;

    return-object v0
.end method

.method public final getVideoMediaMetadata()Lcom/google/api/services/drive/model/File$VideoMediaMetadata;
    .locals 1

    .line 1382
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->videoMediaMetadata:Lcom/google/api/services/drive/model/File$VideoMediaMetadata;

    return-object v0
.end method

.method public final getViewedByMe()Ljava/lang/Boolean;
    .locals 1

    .line 1399
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->viewedByMe:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getViewedByMeTime()Lcom/google/api/client/a/l;
    .locals 1

    .line 1416
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->viewedByMeTime:Lcom/google/api/client/a/l;

    return-object v0
.end method

.method public final getViewersCanCopyContent()Ljava/lang/Boolean;
    .locals 1

    .line 1433
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->viewersCanCopyContent:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getWebContentLink()Ljava/lang/String;
    .locals 1

    .line 1451
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->webContentLink:Ljava/lang/String;

    return-object v0
.end method

.method public final getWebViewLink()Ljava/lang/String;
    .locals 1

    .line 1469
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->webViewLink:Ljava/lang/String;

    return-object v0
.end method

.method public final getWritersCanShare()Ljava/lang/Boolean;
    .locals 1

    .line 1487
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->writersCanShare:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/File;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/File;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/File;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/File;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .line 1502
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/drive/model/File;

    return-object p1
.end method

.method public final setAppProperties(Ljava/util/Map;)Lcom/google/api/services/drive/model/File;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/services/drive/model/File;"
        }
    .end annotation

    .line 483
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->appProperties:Ljava/util/Map;

    return-object p0
.end method

.method public final setCapabilities(Lcom/google/api/services/drive/model/File$Capabilities;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .line 502
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->capabilities:Lcom/google/api/services/drive/model/File$Capabilities;

    return-object p0
.end method

.method public final setContentHints(Lcom/google/api/services/drive/model/File$ContentHints;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .line 521
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->contentHints:Lcom/google/api/services/drive/model/File$ContentHints;

    return-object p0
.end method

.method public final setCopyRequiresWriterPermission(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .line 540
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->copyRequiresWriterPermission:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setCreatedTime(Lcom/google/api/client/a/l;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .line 557
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->createdTime:Lcom/google/api/client/a/l;

    return-object p0
.end method

.method public final setDescription(Ljava/lang/String;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .line 574
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->description:Ljava/lang/String;

    return-object p0
.end method

.method public final setDriveId(Ljava/lang/String;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .line 591
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->driveId:Ljava/lang/String;

    return-object p0
.end method

.method public final setExplicitlyTrashed(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .line 610
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->explicitlyTrashed:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setExportLinks(Ljava/util/Map;)Lcom/google/api/services/drive/model/File;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/services/drive/model/File;"
        }
    .end annotation

    .line 627
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->exportLinks:Ljava/util/Map;

    return-object p0
.end method

.method public final setFileExtension(Ljava/lang/String;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .line 646
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->fileExtension:Ljava/lang/String;

    return-object p0
.end method

.method public final setFolderColorRgb(Ljava/lang/String;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .line 667
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->folderColorRgb:Ljava/lang/String;

    return-object p0
.end method

.method public final setFullFileExtension(Ljava/lang/String;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .line 690
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->fullFileExtension:Ljava/lang/String;

    return-object p0
.end method

.method public final setHasAugmentedPermissions(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .line 709
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->hasAugmentedPermissions:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setHasThumbnail(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .line 728
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->hasThumbnail:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setHeadRevisionId(Ljava/lang/String;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .line 747
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->headRevisionId:Ljava/lang/String;

    return-object p0
.end method

.method public final setIconLink(Ljava/lang/String;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .line 764
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->iconLink:Ljava/lang/String;

    return-object p0
.end method

.method public final setId(Ljava/lang/String;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .line 781
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final setImageMediaMetadata(Lcom/google/api/services/drive/model/File$ImageMediaMetadata;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .line 798
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->imageMediaMetadata:Lcom/google/api/services/drive/model/File$ImageMediaMetadata;

    return-object p0
.end method

.method public final setIsAppAuthorized(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .line 815
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->isAppAuthorized:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setKind(Ljava/lang/String;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .line 832
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->kind:Ljava/lang/String;

    return-object p0
.end method

.method public final setLastModifyingUser(Lcom/google/api/services/drive/model/User;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .line 849
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->lastModifyingUser:Lcom/google/api/services/drive/model/User;

    return-object p0
.end method

.method public final setMd5Checksum(Ljava/lang/String;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .line 868
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->md5Checksum:Ljava/lang/String;

    return-object p0
.end method

.method public final setMimeType(Ljava/lang/String;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .line 891
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->mimeType:Ljava/lang/String;

    return-object p0
.end method

.method public final setModifiedByMe(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .line 908
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->modifiedByMe:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setModifiedByMeTime(Lcom/google/api/client/a/l;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .line 925
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->modifiedByMeTime:Lcom/google/api/client/a/l;

    return-object p0
.end method

.method public final setModifiedTime(Lcom/google/api/client/a/l;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .line 944
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->modifiedTime:Lcom/google/api/client/a/l;

    return-object p0
.end method

.method public final setName(Ljava/lang/String;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .line 965
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final setOriginalFilename(Ljava/lang/String;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .line 984
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->originalFilename:Ljava/lang/String;

    return-object p0
.end method

.method public final setOwnedByMe(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .line 1001
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->ownedByMe:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setOwners(Ljava/util/List;)Lcom/google/api/services/drive/model/File;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/api/services/drive/model/User;",
            ">;)",
            "Lcom/google/api/services/drive/model/File;"
        }
    .end annotation

    .line 1020
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->owners:Ljava/util/List;

    return-object p0
.end method

.method public final setParents(Ljava/util/List;)Lcom/google/api/services/drive/model/File;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/services/drive/model/File;"
        }
    .end annotation

    .line 1045
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->parents:Ljava/util/List;

    return-object p0
.end method

.method public final setPermissionIds(Ljava/util/List;)Lcom/google/api/services/drive/model/File;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/services/drive/model/File;"
        }
    .end annotation

    .line 1062
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->permissionIds:Ljava/util/List;

    return-object p0
.end method

.method public final setPermissions(Ljava/util/List;)Lcom/google/api/services/drive/model/File;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/api/services/drive/model/Permission;",
            ">;)",
            "Lcom/google/api/services/drive/model/File;"
        }
    .end annotation

    .line 1081
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->permissions:Ljava/util/List;

    return-object p0
.end method

.method public final setProperties(Ljava/util/Map;)Lcom/google/api/services/drive/model/File;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/services/drive/model/File;"
        }
    .end annotation

    .line 1100
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->properties:Ljava/util/Map;

    return-object p0
.end method

.method public final setQuotaBytesUsed(Ljava/lang/Long;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .line 1119
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->quotaBytesUsed:Ljava/lang/Long;

    return-object p0
.end method

.method public final setShared(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .line 1136
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->shared:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setSharedWithMeTime(Lcom/google/api/client/a/l;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .line 1153
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->sharedWithMeTime:Lcom/google/api/client/a/l;

    return-object p0
.end method

.method public final setSharingUser(Lcom/google/api/services/drive/model/User;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .line 1170
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->sharingUser:Lcom/google/api/services/drive/model/User;

    return-object p0
.end method

.method public final setShortcutDetails(Lcom/google/api/services/drive/model/File$ShortcutDetails;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .line 1189
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->shortcutDetails:Lcom/google/api/services/drive/model/File$ShortcutDetails;

    return-object p0
.end method

.method public final setSize(Ljava/lang/Long;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .line 1208
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->size:Ljava/lang/Long;

    return-object p0
.end method

.method public final setSpaces(Ljava/util/List;)Lcom/google/api/services/drive/model/File;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/services/drive/model/File;"
        }
    .end annotation

    .line 1227
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->spaces:Ljava/util/List;

    return-object p0
.end method

.method public final setStarred(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .line 1244
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->starred:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setTeamDriveId(Ljava/lang/String;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .line 1261
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->teamDriveId:Ljava/lang/String;

    return-object p0
.end method

.method public final setThumbnailLink(Ljava/lang/String;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .line 1280
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->thumbnailLink:Ljava/lang/String;

    return-object p0
.end method

.method public final setThumbnailVersion(Ljava/lang/Long;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .line 1297
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->thumbnailVersion:Ljava/lang/Long;

    return-object p0
.end method

.method public final setTrashed(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .line 1316
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->trashed:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setTrashedTime(Lcom/google/api/client/a/l;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .line 1335
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->trashedTime:Lcom/google/api/client/a/l;

    return-object p0
.end method

.method public final setTrashingUser(Lcom/google/api/services/drive/model/User;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .line 1354
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->trashingUser:Lcom/google/api/services/drive/model/User;

    return-object p0
.end method

.method public final setVersion(Ljava/lang/Long;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .line 1373
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->version:Ljava/lang/Long;

    return-object p0
.end method

.method public final setVideoMediaMetadata(Lcom/google/api/services/drive/model/File$VideoMediaMetadata;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .line 1390
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->videoMediaMetadata:Lcom/google/api/services/drive/model/File$VideoMediaMetadata;

    return-object p0
.end method

.method public final setViewedByMe(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .line 1407
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->viewedByMe:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setViewedByMeTime(Lcom/google/api/client/a/l;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .line 1424
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->viewedByMeTime:Lcom/google/api/client/a/l;

    return-object p0
.end method

.method public final setViewersCanCopyContent(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .line 1441
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->viewersCanCopyContent:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setWebContentLink(Ljava/lang/String;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .line 1460
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->webContentLink:Ljava/lang/String;

    return-object p0
.end method

.method public final setWebViewLink(Ljava/lang/String;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .line 1477
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->webViewLink:Ljava/lang/String;

    return-object p0
.end method

.method public final setWritersCanShare(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .line 1496
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->writersCanShare:Ljava/lang/Boolean;

    return-object p0
.end method
