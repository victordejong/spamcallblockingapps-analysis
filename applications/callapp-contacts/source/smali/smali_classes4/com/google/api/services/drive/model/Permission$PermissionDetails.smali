.class public final Lcom/google/api/services/drive/model/Permission$PermissionDetails;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/drive/model/Permission;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PermissionDetails"
.end annotation


# instance fields
.field private inherited:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private inheritedFrom:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private permissionType:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private role:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 416
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Lcom/google/api/client/a/n;
    .locals 1

    .line 416
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/Permission$PermissionDetails;->clone()Lcom/google/api/services/drive/model/Permission$PermissionDetails;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 416
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/Permission$PermissionDetails;->clone()Lcom/google/api/services/drive/model/Permission$PermissionDetails;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/drive/model/Permission$PermissionDetails;
    .locals 1

    .line 530
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/Permission$PermissionDetails;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 416
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/Permission$PermissionDetails;->clone()Lcom/google/api/services/drive/model/Permission$PermissionDetails;

    move-result-object v0

    return-object v0
.end method

.method public final getInherited()Ljava/lang/Boolean;
    .locals 1

    .line 455
    iget-object v0, p0, Lcom/google/api/services/drive/model/Permission$PermissionDetails;->inherited:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getInheritedFrom()Ljava/lang/String;
    .locals 1

    .line 473
    iget-object v0, p0, Lcom/google/api/services/drive/model/Permission$PermissionDetails;->inheritedFrom:Ljava/lang/String;

    return-object v0
.end method

.method public final getPermissionType()Ljava/lang/String;
    .locals 1

    .line 491
    iget-object v0, p0, Lcom/google/api/services/drive/model/Permission$PermissionDetails;->permissionType:Ljava/lang/String;

    return-object v0
.end method

.method public final getRole()Ljava/lang/String;
    .locals 1

    .line 510
    iget-object v0, p0, Lcom/google/api/services/drive/model/Permission$PermissionDetails;->role:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 416
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/Permission$PermissionDetails;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/Permission$PermissionDetails;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 416
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/Permission$PermissionDetails;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/Permission$PermissionDetails;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/Permission$PermissionDetails;
    .locals 0

    .line 525
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/drive/model/Permission$PermissionDetails;

    return-object p1
.end method

.method public final setInherited(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/Permission$PermissionDetails;
    .locals 0

    .line 464
    iput-object p1, p0, Lcom/google/api/services/drive/model/Permission$PermissionDetails;->inherited:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setInheritedFrom(Ljava/lang/String;)Lcom/google/api/services/drive/model/Permission$PermissionDetails;
    .locals 0

    .line 481
    iput-object p1, p0, Lcom/google/api/services/drive/model/Permission$PermissionDetails;->inheritedFrom:Ljava/lang/String;

    return-object p0
.end method

.method public final setPermissionType(Ljava/lang/String;)Lcom/google/api/services/drive/model/Permission$PermissionDetails;
    .locals 0

    .line 500
    iput-object p1, p0, Lcom/google/api/services/drive/model/Permission$PermissionDetails;->permissionType:Ljava/lang/String;

    return-object p0
.end method

.method public final setRole(Ljava/lang/String;)Lcom/google/api/services/drive/model/Permission$PermissionDetails;
    .locals 0

    .line 519
    iput-object p1, p0, Lcom/google/api/services/drive/model/Permission$PermissionDetails;->role:Ljava/lang/String;

    return-object p0
.end method
