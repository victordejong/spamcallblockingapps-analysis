.class public final Lcom/google/api/services/drive/model/TeamDrive;
.super Lcom/google/api/client/json/b;
.source "TeamDrive.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/drive/model/TeamDrive$Capabilities;,
        Lcom/google/api/services/drive/model/TeamDrive$BackgroundImageFile;
    }
.end annotation


# instance fields
.field private backgroundImageFile:Lcom/google/api/services/drive/model/TeamDrive$BackgroundImageFile;
    .annotation runtime Lcom/google/api/client/util/o;
    .end annotation
.end field

.field private backgroundImageLink:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/o;
    .end annotation
.end field

.field private capabilities:Lcom/google/api/services/drive/model/TeamDrive$Capabilities;
    .annotation runtime Lcom/google/api/client/util/o;
    .end annotation
.end field

.field private colorRgb:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/o;
    .end annotation
.end field

.field private createdTime:Lcom/google/api/client/util/DateTime;
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

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/o;
    .end annotation
.end field

.field private themeId:Ljava/lang/String;
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
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/TeamDrive;->clone()Lcom/google/api/services/drive/model/TeamDrive;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/TeamDrive;->clone()Lcom/google/api/services/drive/model/TeamDrive;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/drive/model/TeamDrive;
    .locals 1

    .line 4
    invoke-super {p0}, Lcom/google/api/client/json/b;->clone()Lcom/google/api/client/json/b;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/TeamDrive;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/TeamDrive;->clone()Lcom/google/api/services/drive/model/TeamDrive;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundImageFile()Lcom/google/api/services/drive/model/TeamDrive$BackgroundImageFile;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/services/drive/model/TeamDrive;->backgroundImageFile:Lcom/google/api/services/drive/model/TeamDrive$BackgroundImageFile;

    return-object v0
.end method

.method public getBackgroundImageLink()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/services/drive/model/TeamDrive;->backgroundImageLink:Ljava/lang/String;

    return-object v0
.end method

.method public getCapabilities()Lcom/google/api/services/drive/model/TeamDrive$Capabilities;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/services/drive/model/TeamDrive;->capabilities:Lcom/google/api/services/drive/model/TeamDrive$Capabilities;

    return-object v0
.end method

.method public getColorRgb()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/services/drive/model/TeamDrive;->colorRgb:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedTime()Lcom/google/api/client/util/DateTime;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/services/drive/model/TeamDrive;->createdTime:Lcom/google/api/client/util/DateTime;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/services/drive/model/TeamDrive;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getKind()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/services/drive/model/TeamDrive;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/services/drive/model/TeamDrive;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getThemeId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/services/drive/model/TeamDrive;->themeId:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/TeamDrive;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/TeamDrive;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/TeamDrive;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/TeamDrive;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/TeamDrive;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/b;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/b;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/drive/model/TeamDrive;

    return-object p1
.end method

.method public setBackgroundImageFile(Lcom/google/api/services/drive/model/TeamDrive$BackgroundImageFile;)Lcom/google/api/services/drive/model/TeamDrive;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/drive/model/TeamDrive;->backgroundImageFile:Lcom/google/api/services/drive/model/TeamDrive$BackgroundImageFile;

    return-object p0
.end method

.method public setBackgroundImageLink(Ljava/lang/String;)Lcom/google/api/services/drive/model/TeamDrive;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/drive/model/TeamDrive;->backgroundImageLink:Ljava/lang/String;

    return-object p0
.end method

.method public setCapabilities(Lcom/google/api/services/drive/model/TeamDrive$Capabilities;)Lcom/google/api/services/drive/model/TeamDrive;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/drive/model/TeamDrive;->capabilities:Lcom/google/api/services/drive/model/TeamDrive$Capabilities;

    return-object p0
.end method

.method public setColorRgb(Ljava/lang/String;)Lcom/google/api/services/drive/model/TeamDrive;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/drive/model/TeamDrive;->colorRgb:Ljava/lang/String;

    return-object p0
.end method

.method public setCreatedTime(Lcom/google/api/client/util/DateTime;)Lcom/google/api/services/drive/model/TeamDrive;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/drive/model/TeamDrive;->createdTime:Lcom/google/api/client/util/DateTime;

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/api/services/drive/model/TeamDrive;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/drive/model/TeamDrive;->id:Ljava/lang/String;

    return-object p0
.end method

.method public setKind(Ljava/lang/String;)Lcom/google/api/services/drive/model/TeamDrive;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/drive/model/TeamDrive;->kind:Ljava/lang/String;

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/api/services/drive/model/TeamDrive;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/drive/model/TeamDrive;->name:Ljava/lang/String;

    return-object p0
.end method

.method public setThemeId(Ljava/lang/String;)Lcom/google/api/services/drive/model/TeamDrive;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/drive/model/TeamDrive;->themeId:Ljava/lang/String;

    return-object p0
.end method
