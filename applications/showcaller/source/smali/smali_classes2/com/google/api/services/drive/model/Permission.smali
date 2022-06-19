.class public final Lcom/google/api/services/drive/model/Permission;
.super Lcom/google/api/client/json/b;
.source "Permission.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/drive/model/Permission$TeamDrivePermissionDetails;
    }
.end annotation


# instance fields
.field private allowFileDiscovery:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/o;
    .end annotation
.end field

.field private deleted:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/o;
    .end annotation
.end field

.field private displayName:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/o;
    .end annotation
.end field

.field private domain:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/o;
    .end annotation
.end field

.field private emailAddress:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/o;
    .end annotation
.end field

.field private expirationTime:Lcom/google/api/client/util/DateTime;
    .annotation runtime Lcom/google/api/client/util/o;
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/o;
    .end annotation
.end field

.field private kind:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/o;
    .end annotation
.end field

.field private photoLink:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/o;
    .end annotation
.end field

.field private role:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/o;
    .end annotation
.end field

.field private teamDrivePermissionDetails:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/o;
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
    .annotation runtime Lcom/google/api/client/util/o;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/google/api/services/drive/model/Permission$TeamDrivePermissionDetails;

    invoke-static {v0}, Lcom/google/api/client/util/j;->j(Ljava/lang/Class;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/api/client/json/b;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/google/api/client/json/b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/Permission;->clone()Lcom/google/api/services/drive/model/Permission;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/Permission;->clone()Lcom/google/api/services/drive/model/Permission;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/drive/model/Permission;
    .locals 1

    .line 4
    invoke-super {p0}, Lcom/google/api/client/json/b;->clone()Lcom/google/api/client/json/b;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/Permission;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/Permission;->clone()Lcom/google/api/services/drive/model/Permission;

    move-result-object v0

    return-object v0
.end method

.method public getAllowFileDiscovery()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/services/drive/model/Permission;->allowFileDiscovery:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getDeleted()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/services/drive/model/Permission;->deleted:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/services/drive/model/Permission;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/services/drive/model/Permission;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/services/drive/model/Permission;->emailAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getExpirationTime()Lcom/google/api/client/util/DateTime;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/services/drive/model/Permission;->expirationTime:Lcom/google/api/client/util/DateTime;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/services/drive/model/Permission;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getKind()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/services/drive/model/Permission;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoLink()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/services/drive/model/Permission;->photoLink:Ljava/lang/String;

    return-object v0
.end method

.method public getRole()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/services/drive/model/Permission;->role:Ljava/lang/String;

    return-object v0
.end method

.method public getTeamDrivePermissionDetails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/services/drive/model/Permission$TeamDrivePermissionDetails;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/api/services/drive/model/Permission;->teamDrivePermissionDetails:Ljava/util/List;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/services/drive/model/Permission;->type:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/Permission;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/Permission;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/Permission;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/Permission;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/Permission;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/b;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/b;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/drive/model/Permission;

    return-object p1
.end method

.method public setAllowFileDiscovery(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/Permission;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/drive/model/Permission;->allowFileDiscovery:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setDeleted(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/Permission;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/drive/model/Permission;->deleted:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/google/api/services/drive/model/Permission;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/drive/model/Permission;->displayName:Ljava/lang/String;

    return-object p0
.end method

.method public setDomain(Ljava/lang/String;)Lcom/google/api/services/drive/model/Permission;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/drive/model/Permission;->domain:Ljava/lang/String;

    return-object p0
.end method

.method public setEmailAddress(Ljava/lang/String;)Lcom/google/api/services/drive/model/Permission;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/drive/model/Permission;->emailAddress:Ljava/lang/String;

    return-object p0
.end method

.method public setExpirationTime(Lcom/google/api/client/util/DateTime;)Lcom/google/api/services/drive/model/Permission;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/drive/model/Permission;->expirationTime:Lcom/google/api/client/util/DateTime;

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/api/services/drive/model/Permission;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/drive/model/Permission;->id:Ljava/lang/String;

    return-object p0
.end method

.method public setKind(Ljava/lang/String;)Lcom/google/api/services/drive/model/Permission;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/drive/model/Permission;->kind:Ljava/lang/String;

    return-object p0
.end method

.method public setPhotoLink(Ljava/lang/String;)Lcom/google/api/services/drive/model/Permission;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/drive/model/Permission;->photoLink:Ljava/lang/String;

    return-object p0
.end method

.method public setRole(Ljava/lang/String;)Lcom/google/api/services/drive/model/Permission;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/drive/model/Permission;->role:Ljava/lang/String;

    return-object p0
.end method

.method public setTeamDrivePermissionDetails(Ljava/util/List;)Lcom/google/api/services/drive/model/Permission;
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

    .line 1
    iput-object p1, p0, Lcom/google/api/services/drive/model/Permission;->teamDrivePermissionDetails:Ljava/util/List;

    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/api/services/drive/model/Permission;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/drive/model/Permission;->type:Ljava/lang/String;

    return-object p0
.end method
