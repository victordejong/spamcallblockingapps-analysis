.class public final Lcom/google/api/services/drive/model/Drive;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/drive/model/Drive$Restrictions;,
        Lcom/google/api/services/drive/model/Drive$Capabilities;,
        Lcom/google/api/services/drive/model/Drive$BackgroundImageFile;
    }
.end annotation


# instance fields
.field private backgroundImageFile:Lcom/google/api/services/drive/model/Drive$BackgroundImageFile;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private backgroundImageLink:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private capabilities:Lcom/google/api/services/drive/model/Drive$Capabilities;
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

.field private hidden:Ljava/lang/Boolean;
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

.field private restrictions:Lcom/google/api/services/drive/model/Drive$Restrictions;
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
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/Drive;->clone()Lcom/google/api/services/drive/model/Drive;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/Drive;->clone()Lcom/google/api/services/drive/model/Drive;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/drive/model/Drive;
    .locals 1

    .line 328
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/Drive;

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
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/Drive;->clone()Lcom/google/api/services/drive/model/Drive;

    move-result-object v0

    return-object v0
.end method

.method public final getBackgroundImageFile()Lcom/google/api/services/drive/model/Drive$BackgroundImageFile;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/google/api/services/drive/model/Drive;->backgroundImageFile:Lcom/google/api/services/drive/model/Drive$BackgroundImageFile;

    return-object v0
.end method

.method public final getBackgroundImageLink()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/google/api/services/drive/model/Drive;->backgroundImageLink:Ljava/lang/String;

    return-object v0
.end method

.method public final getCapabilities()Lcom/google/api/services/drive/model/Drive$Capabilities;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/google/api/services/drive/model/Drive;->capabilities:Lcom/google/api/services/drive/model/Drive$Capabilities;

    return-object v0
.end method

.method public final getColorRgb()Ljava/lang/String;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/google/api/services/drive/model/Drive;->colorRgb:Ljava/lang/String;

    return-object v0
.end method

.method public final getCreatedTime()Lcom/google/api/client/a/l;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/google/api/services/drive/model/Drive;->createdTime:Lcom/google/api/client/a/l;

    return-object v0
.end method

.method public final getHidden()Ljava/lang/Boolean;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/google/api/services/drive/model/Drive;->hidden:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/google/api/services/drive/model/Drive;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getKind()Ljava/lang/String;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/google/api/services/drive/model/Drive;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/google/api/services/drive/model/Drive;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getRestrictions()Lcom/google/api/services/drive/model/Drive$Restrictions;
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/google/api/services/drive/model/Drive;->restrictions:Lcom/google/api/services/drive/model/Drive$Restrictions;

    return-object v0
.end method

.method public final getThemeId()Ljava/lang/String;
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/google/api/services/drive/model/Drive;->themeId:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/Drive;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/Drive;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/Drive;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/Drive;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/Drive;
    .locals 0

    .line 323
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/drive/model/Drive;

    return-object p1
.end method

.method public final setBackgroundImageFile(Lcom/google/api/services/drive/model/Drive$BackgroundImageFile;)Lcom/google/api/services/drive/model/Drive;
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/google/api/services/drive/model/Drive;->backgroundImageFile:Lcom/google/api/services/drive/model/Drive$BackgroundImageFile;

    return-object p0
.end method

.method public final setBackgroundImageLink(Ljava/lang/String;)Lcom/google/api/services/drive/model/Drive;
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/google/api/services/drive/model/Drive;->backgroundImageLink:Ljava/lang/String;

    return-object p0
.end method

.method public final setCapabilities(Lcom/google/api/services/drive/model/Drive$Capabilities;)Lcom/google/api/services/drive/model/Drive;
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/google/api/services/drive/model/Drive;->capabilities:Lcom/google/api/services/drive/model/Drive$Capabilities;

    return-object p0
.end method

.method public final setColorRgb(Ljava/lang/String;)Lcom/google/api/services/drive/model/Drive;
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/google/api/services/drive/model/Drive;->colorRgb:Ljava/lang/String;

    return-object p0
.end method

.method public final setCreatedTime(Lcom/google/api/client/a/l;)Lcom/google/api/services/drive/model/Drive;
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/google/api/services/drive/model/Drive;->createdTime:Lcom/google/api/client/a/l;

    return-object p0
.end method

.method public final setHidden(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/Drive;
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/google/api/services/drive/model/Drive;->hidden:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setId(Ljava/lang/String;)Lcom/google/api/services/drive/model/Drive;
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/google/api/services/drive/model/Drive;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final setKind(Ljava/lang/String;)Lcom/google/api/services/drive/model/Drive;
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/google/api/services/drive/model/Drive;->kind:Ljava/lang/String;

    return-object p0
.end method

.method public final setName(Ljava/lang/String;)Lcom/google/api/services/drive/model/Drive;
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/google/api/services/drive/model/Drive;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final setRestrictions(Lcom/google/api/services/drive/model/Drive$Restrictions;)Lcom/google/api/services/drive/model/Drive;
    .locals 0

    .line 292
    iput-object p1, p0, Lcom/google/api/services/drive/model/Drive;->restrictions:Lcom/google/api/services/drive/model/Drive$Restrictions;

    return-object p0
.end method

.method public final setThemeId(Ljava/lang/String;)Lcom/google/api/services/drive/model/Drive;
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/google/api/services/drive/model/Drive;->themeId:Ljava/lang/String;

    return-object p0
.end method
