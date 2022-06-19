.class public final Lcom/google/api/services/drive/model/User;
.super Lcom/google/api/client/json/b;
.source "User.java"


# instance fields
.field private displayName:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/o;
    .end annotation
.end field

.field private emailAddress:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/o;
    .end annotation
.end field

.field private kind:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/o;
    .end annotation
.end field

.field private me:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/o;
    .end annotation
.end field

.field private permissionId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/o;
    .end annotation
.end field

.field private photoLink:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/o;
    .end annotation
.end field


# direct methods
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
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/User;->clone()Lcom/google/api/services/drive/model/User;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/User;->clone()Lcom/google/api/services/drive/model/User;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/drive/model/User;
    .locals 1

    .line 4
    invoke-super {p0}, Lcom/google/api/client/json/b;->clone()Lcom/google/api/client/json/b;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/User;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/User;->clone()Lcom/google/api/services/drive/model/User;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/services/drive/model/User;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/services/drive/model/User;->emailAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getKind()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/services/drive/model/User;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public getMe()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/services/drive/model/User;->me:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getPermissionId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/services/drive/model/User;->permissionId:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoLink()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/services/drive/model/User;->photoLink:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/User;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/User;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/User;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/User;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/User;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/b;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/b;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/drive/model/User;

    return-object p1
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/google/api/services/drive/model/User;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/drive/model/User;->displayName:Ljava/lang/String;

    return-object p0
.end method

.method public setEmailAddress(Ljava/lang/String;)Lcom/google/api/services/drive/model/User;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/drive/model/User;->emailAddress:Ljava/lang/String;

    return-object p0
.end method

.method public setKind(Ljava/lang/String;)Lcom/google/api/services/drive/model/User;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/drive/model/User;->kind:Ljava/lang/String;

    return-object p0
.end method

.method public setMe(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/User;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/drive/model/User;->me:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setPermissionId(Ljava/lang/String;)Lcom/google/api/services/drive/model/User;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/drive/model/User;->permissionId:Ljava/lang/String;

    return-object p0
.end method

.method public setPhotoLink(Ljava/lang/String;)Lcom/google/api/services/drive/model/User;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/drive/model/User;->photoLink:Ljava/lang/String;

    return-object p0
.end method
