.class public final Lcom/google/api/services/drive/model/About$DriveThemes;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/drive/model/About;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DriveThemes"
.end annotation


# instance fields
.field private backgroundImageLink:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private colorRgb:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 373
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Lcom/google/api/client/a/n;
    .locals 1

    .line 373
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/About$DriveThemes;->clone()Lcom/google/api/services/drive/model/About$DriveThemes;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 373
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/About$DriveThemes;->clone()Lcom/google/api/services/drive/model/About$DriveThemes;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/drive/model/About$DriveThemes;
    .locals 1

    .line 454
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/About$DriveThemes;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 373
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/About$DriveThemes;->clone()Lcom/google/api/services/drive/model/About$DriveThemes;

    move-result-object v0

    return-object v0
.end method

.method public final getBackgroundImageLink()Ljava/lang/String;
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/google/api/services/drive/model/About$DriveThemes;->backgroundImageLink:Ljava/lang/String;

    return-object v0
.end method

.method public final getColorRgb()Ljava/lang/String;
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/google/api/services/drive/model/About$DriveThemes;->colorRgb:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 435
    iget-object v0, p0, Lcom/google/api/services/drive/model/About$DriveThemes;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 373
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/About$DriveThemes;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/About$DriveThemes;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 373
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/About$DriveThemes;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/About$DriveThemes;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/About$DriveThemes;
    .locals 0

    .line 449
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/drive/model/About$DriveThemes;

    return-object p1
.end method

.method public final setBackgroundImageLink(Ljava/lang/String;)Lcom/google/api/services/drive/model/About$DriveThemes;
    .locals 0

    .line 409
    iput-object p1, p0, Lcom/google/api/services/drive/model/About$DriveThemes;->backgroundImageLink:Ljava/lang/String;

    return-object p0
.end method

.method public final setColorRgb(Ljava/lang/String;)Lcom/google/api/services/drive/model/About$DriveThemes;
    .locals 0

    .line 426
    iput-object p1, p0, Lcom/google/api/services/drive/model/About$DriveThemes;->colorRgb:Ljava/lang/String;

    return-object p0
.end method

.method public final setId(Ljava/lang/String;)Lcom/google/api/services/drive/model/About$DriveThemes;
    .locals 0

    .line 443
    iput-object p1, p0, Lcom/google/api/services/drive/model/About$DriveThemes;->id:Ljava/lang/String;

    return-object p0
.end method
