.class public final Lcom/google/api/services/drive/model/Permission;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/drive/model/Permission$TeamDrivePermissionDetails;,
        Lcom/google/api/services/drive/model/Permission$PermissionDetails;
    }
.end annotation


# instance fields
.field private allowFileDiscovery:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private deleted:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private displayName:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private domain:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private emailAddress:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private expirationTime:Lcom/google/api/client/a/l;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private kind:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private permissionDetails:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/api/services/drive/model/Permission$PermissionDetails;",
            ">;"
        }
    .end annotation
.end field

.field private photoLink:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private role:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private teamDrivePermissionDetails:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/api/services/drive/model/Permission$TeamDrivePermissionDetails;",
            ">;"
        }
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 112
    const-class v0, Lcom/google/api/services/drive/model/Permission$PermissionDetails;

    invoke-static {v0}, Lcom/google/api/client/a/j;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 141
    const-class v0, Lcom/google/api/services/drive/model/Permission$TeamDrivePermissionDetails;

    invoke-static {v0}, Lcom/google/api/client/a/j;->a(Ljava/lang/Class;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Lcom/google/api/client/a/n;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/Permission;->clone()Lcom/google/api/services/drive/model/Permission;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/Permission;->clone()Lcom/google/api/services/drive/model/Permission;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/drive/model/Permission;
    .locals 1

    .line 410
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/Permission;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 34
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/Permission;->clone()Lcom/google/api/services/drive/model/Permission;

    move-result-object v0

    return-object v0
.end method

.method public final getAllowFileDiscovery()Ljava/lang/Boolean;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/google/api/services/drive/model/Permission;->allowFileDiscovery:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getDeleted()Ljava/lang/Boolean;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/google/api/services/drive/model/Permission;->deleted:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getDisplayName()Ljava/lang/String;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/google/api/services/drive/model/Permission;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public final getDomain()Ljava/lang/String;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/google/api/services/drive/model/Permission;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public final getEmailAddress()Ljava/lang/String;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/google/api/services/drive/model/Permission;->emailAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final getExpirationTime()Lcom/google/api/client/a/l;
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/google/api/services/drive/model/Permission;->expirationTime:Lcom/google/api/client/a/l;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/google/api/services/drive/model/Permission;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getKind()Ljava/lang/String;
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/google/api/services/drive/model/Permission;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public final getPermissionDetails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/services/drive/model/Permission$PermissionDetails;",
            ">;"
        }
    .end annotation

    .line 312
    iget-object v0, p0, Lcom/google/api/services/drive/model/Permission;->permissionDetails:Ljava/util/List;

    return-object v0
.end method

.method public final getPhotoLink()Ljava/lang/String;
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/google/api/services/drive/model/Permission;->photoLink:Ljava/lang/String;

    return-object v0
.end method

.method public final getRole()Ljava/lang/String;
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/google/api/services/drive/model/Permission;->role:Ljava/lang/String;

    return-object v0
.end method

.method public final getTeamDrivePermissionDetails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/services/drive/model/Permission$TeamDrivePermissionDetails;",
            ">;"
        }
    .end annotation

    .line 368
    iget-object v0, p0, Lcom/google/api/services/drive/model/Permission;->teamDrivePermissionDetails:Ljava/util/List;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/google/api/services/drive/model/Permission;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/Permission;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/Permission;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/Permission;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/Permission;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/Permission;
    .locals 0

    .line 405
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/drive/model/Permission;

    return-object p1
.end method

.method public final setAllowFileDiscovery(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/Permission;
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/google/api/services/drive/model/Permission;->allowFileDiscovery:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setDeleted(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/Permission;
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/google/api/services/drive/model/Permission;->deleted:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setDisplayName(Ljava/lang/String;)Lcom/google/api/services/drive/model/Permission;
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/google/api/services/drive/model/Permission;->displayName:Ljava/lang/String;

    return-object p0
.end method

.method public final setDomain(Ljava/lang/String;)Lcom/google/api/services/drive/model/Permission;
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/google/api/services/drive/model/Permission;->domain:Ljava/lang/String;

    return-object p0
.end method

.method public final setEmailAddress(Ljava/lang/String;)Lcom/google/api/services/drive/model/Permission;
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/google/api/services/drive/model/Permission;->emailAddress:Ljava/lang/String;

    return-object p0
.end method

.method public final setExpirationTime(Lcom/google/api/client/a/l;)Lcom/google/api/services/drive/model/Permission;
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/google/api/services/drive/model/Permission;->expirationTime:Lcom/google/api/client/a/l;

    return-object p0
.end method

.method public final setId(Ljava/lang/String;)Lcom/google/api/services/drive/model/Permission;
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/google/api/services/drive/model/Permission;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final setKind(Ljava/lang/String;)Lcom/google/api/services/drive/model/Permission;
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/google/api/services/drive/model/Permission;->kind:Ljava/lang/String;

    return-object p0
.end method

.method public final setPermissionDetails(Ljava/util/List;)Lcom/google/api/services/drive/model/Permission;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/api/services/drive/model/Permission$PermissionDetails;",
            ">;)",
            "Lcom/google/api/services/drive/model/Permission;"
        }
    .end annotation

    .line 321
    iput-object p1, p0, Lcom/google/api/services/drive/model/Permission;->permissionDetails:Ljava/util/List;

    return-object p0
.end method

.method public final setPhotoLink(Ljava/lang/String;)Lcom/google/api/services/drive/model/Permission;
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/google/api/services/drive/model/Permission;->photoLink:Ljava/lang/String;

    return-object p0
.end method

.method public final setRole(Ljava/lang/String;)Lcom/google/api/services/drive/model/Permission;
    .locals 0

    .line 359
    iput-object p1, p0, Lcom/google/api/services/drive/model/Permission;->role:Ljava/lang/String;

    return-object p0
.end method

.method public final setTeamDrivePermissionDetails(Ljava/util/List;)Lcom/google/api/services/drive/model/Permission;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/api/services/drive/model/Permission$TeamDrivePermissionDetails;",
            ">;)",
            "Lcom/google/api/services/drive/model/Permission;"
        }
    .end annotation

    .line 376
    iput-object p1, p0, Lcom/google/api/services/drive/model/Permission;->teamDrivePermissionDetails:Ljava/util/List;

    return-object p0
.end method

.method public final setType(Ljava/lang/String;)Lcom/google/api/services/drive/model/Permission;
    .locals 0

    .line 399
    iput-object p1, p0, Lcom/google/api/services/drive/model/Permission;->type:Ljava/lang/String;

    return-object p0
.end method
