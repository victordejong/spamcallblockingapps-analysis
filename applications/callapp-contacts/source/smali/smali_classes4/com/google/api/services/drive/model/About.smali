.class public final Lcom/google/api/services/drive/model/About;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/drive/model/About$TeamDriveThemes;,
        Lcom/google/api/services/drive/model/About$StorageQuota;,
        Lcom/google/api/services/drive/model/About$DriveThemes;
    }
.end annotation


# instance fields
.field private appInstalled:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private canCreateDrives:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private canCreateTeamDrives:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private driveThemes:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/api/services/drive/model/About$DriveThemes;",
            ">;"
        }
    .end annotation
.end field

.field private exportFormats:Ljava/util/Map;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private folderColorPalette:Ljava/util/List;
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

.field private importFormats:Ljava/util/Map;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private kind:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private maxImportSizes:Ljava/util/Map;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation

    .annotation runtime Lcom/google/api/client/json/JsonString;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private maxUploadSize:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation

    .annotation runtime Lcom/google/api/client/json/JsonString;
    .end annotation
.end field

.field private storageQuota:Lcom/google/api/services/drive/model/About$StorageQuota;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private teamDriveThemes:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/api/services/drive/model/About$TeamDriveThemes;",
            ">;"
        }
    .end annotation
.end field

.field private user:Lcom/google/api/services/drive/model/User;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    const-class v0, Lcom/google/api/services/drive/model/About$DriveThemes;

    invoke-static {v0}, Lcom/google/api/client/a/j;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 129
    const-class v0, Lcom/google/api/services/drive/model/About$TeamDriveThemes;

    invoke-static {v0}, Lcom/google/api/client/a/j;->a(Ljava/lang/Class;)Ljava/lang/Object;

    return-void
.end method

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
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/About;->clone()Lcom/google/api/services/drive/model/About;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/About;->clone()Lcom/google/api/services/drive/model/About;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/drive/model/About;
    .locals 1

    .line 367
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/About;

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
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/About;->clone()Lcom/google/api/services/drive/model/About;

    move-result-object v0

    return-object v0
.end method

.method public final getAppInstalled()Ljava/lang/Boolean;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/google/api/services/drive/model/About;->appInstalled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getCanCreateDrives()Ljava/lang/Boolean;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/google/api/services/drive/model/About;->canCreateDrives:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getCanCreateTeamDrives()Ljava/lang/Boolean;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/google/api/services/drive/model/About;->canCreateTeamDrives:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getDriveThemes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/services/drive/model/About$DriveThemes;",
            ">;"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/google/api/services/drive/model/About;->driveThemes:Ljava/util/List;

    return-object v0
.end method

.method public final getExportFormats()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/google/api/services/drive/model/About;->exportFormats:Ljava/util/Map;

    return-object v0
.end method

.method public final getFolderColorPalette()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/google/api/services/drive/model/About;->folderColorPalette:Ljava/util/List;

    return-object v0
.end method

.method public final getImportFormats()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lcom/google/api/services/drive/model/About;->importFormats:Ljava/util/Map;

    return-object v0
.end method

.method public final getKind()Ljava/lang/String;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/google/api/services/drive/model/About;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public final getMaxImportSizes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 280
    iget-object v0, p0, Lcom/google/api/services/drive/model/About;->maxImportSizes:Ljava/util/Map;

    return-object v0
.end method

.method public final getMaxUploadSize()Ljava/lang/Long;
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/google/api/services/drive/model/About;->maxUploadSize:Ljava/lang/Long;

    return-object v0
.end method

.method public final getStorageQuota()Lcom/google/api/services/drive/model/About$StorageQuota;
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/google/api/services/drive/model/About;->storageQuota:Lcom/google/api/services/drive/model/About$StorageQuota;

    return-object v0
.end method

.method public final getTeamDriveThemes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/services/drive/model/About$TeamDriveThemes;",
            ">;"
        }
    .end annotation

    .line 331
    iget-object v0, p0, Lcom/google/api/services/drive/model/About;->teamDriveThemes:Ljava/util/List;

    return-object v0
.end method

.method public final getUser()Lcom/google/api/services/drive/model/User;
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/google/api/services/drive/model/About;->user:Lcom/google/api/services/drive/model/User;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/About;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/About;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/About;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/About;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/About;
    .locals 0

    .line 362
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/drive/model/About;

    return-object p1
.end method

.method public final setAppInstalled(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/About;
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/google/api/services/drive/model/About;->appInstalled:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setCanCreateDrives(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/About;
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/google/api/services/drive/model/About;->canCreateDrives:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setCanCreateTeamDrives(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/About;
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/google/api/services/drive/model/About;->canCreateTeamDrives:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setDriveThemes(Ljava/util/List;)Lcom/google/api/services/drive/model/About;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/api/services/drive/model/About$DriveThemes;",
            ">;)",
            "Lcom/google/api/services/drive/model/About;"
        }
    .end annotation

    .line 203
    iput-object p1, p0, Lcom/google/api/services/drive/model/About;->driveThemes:Ljava/util/List;

    return-object p0
.end method

.method public final setExportFormats(Ljava/util/Map;)Lcom/google/api/services/drive/model/About;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/google/api/services/drive/model/About;"
        }
    .end annotation

    .line 220
    iput-object p1, p0, Lcom/google/api/services/drive/model/About;->exportFormats:Ljava/util/Map;

    return-object p0
.end method

.method public final setFolderColorPalette(Ljava/util/List;)Lcom/google/api/services/drive/model/About;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/services/drive/model/About;"
        }
    .end annotation

    .line 237
    iput-object p1, p0, Lcom/google/api/services/drive/model/About;->folderColorPalette:Ljava/util/List;

    return-object p0
.end method

.method public final setImportFormats(Ljava/util/Map;)Lcom/google/api/services/drive/model/About;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/google/api/services/drive/model/About;"
        }
    .end annotation

    .line 254
    iput-object p1, p0, Lcom/google/api/services/drive/model/About;->importFormats:Ljava/util/Map;

    return-object p0
.end method

.method public final setKind(Ljava/lang/String;)Lcom/google/api/services/drive/model/About;
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/google/api/services/drive/model/About;->kind:Ljava/lang/String;

    return-object p0
.end method

.method public final setMaxImportSizes(Ljava/util/Map;)Lcom/google/api/services/drive/model/About;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/api/services/drive/model/About;"
        }
    .end annotation

    .line 288
    iput-object p1, p0, Lcom/google/api/services/drive/model/About;->maxImportSizes:Ljava/util/Map;

    return-object p0
.end method

.method public final setMaxUploadSize(Ljava/lang/Long;)Lcom/google/api/services/drive/model/About;
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/google/api/services/drive/model/About;->maxUploadSize:Ljava/lang/Long;

    return-object p0
.end method

.method public final setStorageQuota(Lcom/google/api/services/drive/model/About$StorageQuota;)Lcom/google/api/services/drive/model/About;
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/google/api/services/drive/model/About;->storageQuota:Lcom/google/api/services/drive/model/About$StorageQuota;

    return-object p0
.end method

.method public final setTeamDriveThemes(Ljava/util/List;)Lcom/google/api/services/drive/model/About;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/api/services/drive/model/About$TeamDriveThemes;",
            ">;)",
            "Lcom/google/api/services/drive/model/About;"
        }
    .end annotation

    .line 339
    iput-object p1, p0, Lcom/google/api/services/drive/model/About;->teamDriveThemes:Ljava/util/List;

    return-object p0
.end method

.method public final setUser(Lcom/google/api/services/drive/model/User;)Lcom/google/api/services/drive/model/About;
    .locals 0

    .line 356
    iput-object p1, p0, Lcom/google/api/services/drive/model/About;->user:Lcom/google/api/services/drive/model/User;

    return-object p0
.end method
