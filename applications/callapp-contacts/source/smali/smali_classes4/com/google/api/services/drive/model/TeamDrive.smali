.class public final Lcom/google/api/services/drive/model/TeamDrive;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/drive/model/TeamDrive$Restrictions;,
        Lcom/google/api/services/drive/model/TeamDrive$Capabilities;,
        Lcom/google/api/services/drive/model/TeamDrive$BackgroundImageFile;
    }
.end annotation


# instance fields
.field private backgroundImageFile:Lcom/google/api/services/drive/model/TeamDrive$BackgroundImageFile;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private backgroundImageLink:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private capabilities:Lcom/google/api/services/drive/model/TeamDrive$Capabilities;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private colorRgb:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private createdTime:Lcom/google/api/client/a/l;
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

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private restrictions:Lcom/google/api/services/drive/model/TeamDrive$Restrictions;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private themeId:Ljava/lang/String;
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
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/TeamDrive;->clone()Lcom/google/api/services/drive/model/TeamDrive;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/TeamDrive;->clone()Lcom/google/api/services/drive/model/TeamDrive;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/drive/model/TeamDrive;
    .locals 1

    .line 304
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/TeamDrive;

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
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/TeamDrive;->clone()Lcom/google/api/services/drive/model/TeamDrive;

    move-result-object v0

    return-object v0
.end method

.method public final getBackgroundImageFile()Lcom/google/api/services/drive/model/TeamDrive$BackgroundImageFile;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/google/api/services/drive/model/TeamDrive;->backgroundImageFile:Lcom/google/api/services/drive/model/TeamDrive$BackgroundImageFile;

    return-object v0
.end method

.method public final getBackgroundImageLink()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/google/api/services/drive/model/TeamDrive;->backgroundImageLink:Ljava/lang/String;

    return-object v0
.end method

.method public final getCapabilities()Lcom/google/api/services/drive/model/TeamDrive$Capabilities;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/google/api/services/drive/model/TeamDrive;->capabilities:Lcom/google/api/services/drive/model/TeamDrive$Capabilities;

    return-object v0
.end method

.method public final getColorRgb()Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/google/api/services/drive/model/TeamDrive;->colorRgb:Ljava/lang/String;

    return-object v0
.end method

.method public final getCreatedTime()Lcom/google/api/client/a/l;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/google/api/services/drive/model/TeamDrive;->createdTime:Lcom/google/api/client/a/l;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/google/api/services/drive/model/TeamDrive;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getKind()Ljava/lang/String;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/google/api/services/drive/model/TeamDrive;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/google/api/services/drive/model/TeamDrive;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getRestrictions()Lcom/google/api/services/drive/model/TeamDrive$Restrictions;
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/google/api/services/drive/model/TeamDrive;->restrictions:Lcom/google/api/services/drive/model/TeamDrive$Restrictions;

    return-object v0
.end method

.method public final getThemeId()Ljava/lang/String;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/google/api/services/drive/model/TeamDrive;->themeId:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/TeamDrive;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/TeamDrive;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/TeamDrive;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/TeamDrive;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/TeamDrive;
    .locals 0

    .line 299
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/drive/model/TeamDrive;

    return-object p1
.end method

.method public final setBackgroundImageFile(Lcom/google/api/services/drive/model/TeamDrive$BackgroundImageFile;)Lcom/google/api/services/drive/model/TeamDrive;
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/google/api/services/drive/model/TeamDrive;->backgroundImageFile:Lcom/google/api/services/drive/model/TeamDrive$BackgroundImageFile;

    return-object p0
.end method

.method public final setBackgroundImageLink(Ljava/lang/String;)Lcom/google/api/services/drive/model/TeamDrive;
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/google/api/services/drive/model/TeamDrive;->backgroundImageLink:Ljava/lang/String;

    return-object p0
.end method

.method public final setCapabilities(Lcom/google/api/services/drive/model/TeamDrive$Capabilities;)Lcom/google/api/services/drive/model/TeamDrive;
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/google/api/services/drive/model/TeamDrive;->capabilities:Lcom/google/api/services/drive/model/TeamDrive$Capabilities;

    return-object p0
.end method

.method public final setColorRgb(Ljava/lang/String;)Lcom/google/api/services/drive/model/TeamDrive;
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/google/api/services/drive/model/TeamDrive;->colorRgb:Ljava/lang/String;

    return-object p0
.end method

.method public final setCreatedTime(Lcom/google/api/client/a/l;)Lcom/google/api/services/drive/model/TeamDrive;
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/google/api/services/drive/model/TeamDrive;->createdTime:Lcom/google/api/client/a/l;

    return-object p0
.end method

.method public final setId(Ljava/lang/String;)Lcom/google/api/services/drive/model/TeamDrive;
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/google/api/services/drive/model/TeamDrive;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final setKind(Ljava/lang/String;)Lcom/google/api/services/drive/model/TeamDrive;
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/google/api/services/drive/model/TeamDrive;->kind:Ljava/lang/String;

    return-object p0
.end method

.method public final setName(Ljava/lang/String;)Lcom/google/api/services/drive/model/TeamDrive;
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/google/api/services/drive/model/TeamDrive;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final setRestrictions(Lcom/google/api/services/drive/model/TeamDrive$Restrictions;)Lcom/google/api/services/drive/model/TeamDrive;
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/google/api/services/drive/model/TeamDrive;->restrictions:Lcom/google/api/services/drive/model/TeamDrive$Restrictions;

    return-object p0
.end method

.method public final setThemeId(Ljava/lang/String;)Lcom/google/api/services/drive/model/TeamDrive;
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/google/api/services/drive/model/TeamDrive;->themeId:Ljava/lang/String;

    return-object p0
.end method
