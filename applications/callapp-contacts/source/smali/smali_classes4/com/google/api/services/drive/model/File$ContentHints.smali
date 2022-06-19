.class public final Lcom/google/api/services/drive/model/File$ContentHints;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/drive/model/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContentHints"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;
    }
.end annotation


# instance fields
.field private indexableText:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private thumbnail:Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2357
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Lcom/google/api/client/a/n;
    .locals 1

    .line 2357
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/File$ContentHints;->clone()Lcom/google/api/services/drive/model/File$ContentHints;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 2357
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/File$ContentHints;->clone()Lcom/google/api/services/drive/model/File$ContentHints;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/drive/model/File$ContentHints;
    .locals 1

    .line 2420
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/File$ContentHints;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 2357
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/File$ContentHints;->clone()Lcom/google/api/services/drive/model/File$ContentHints;

    move-result-object v0

    return-object v0
.end method

.method public final getIndexableText()Ljava/lang/String;
    .locals 1

    .line 2381
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$ContentHints;->indexableText:Ljava/lang/String;

    return-object v0
.end method

.method public final getThumbnail()Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;
    .locals 1

    .line 2400
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$ContentHints;->thumbnail:Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 2357
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/File$ContentHints;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/File$ContentHints;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 2357
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/File$ContentHints;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/File$ContentHints;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/File$ContentHints;
    .locals 0

    .line 2415
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/drive/model/File$ContentHints;

    return-object p1
.end method

.method public final setIndexableText(Ljava/lang/String;)Lcom/google/api/services/drive/model/File$ContentHints;
    .locals 0

    .line 2390
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$ContentHints;->indexableText:Ljava/lang/String;

    return-object p0
.end method

.method public final setThumbnail(Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;)Lcom/google/api/services/drive/model/File$ContentHints;
    .locals 0

    .line 2409
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$ContentHints;->thumbnail:Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;

    return-object p0
.end method
