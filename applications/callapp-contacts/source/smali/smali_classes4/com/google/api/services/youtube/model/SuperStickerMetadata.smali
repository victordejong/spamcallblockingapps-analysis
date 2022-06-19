.class public final Lcom/google/api/services/youtube/model/SuperStickerMetadata;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private altText:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private altTextLanguage:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private stickerId:Ljava/lang/String;
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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/SuperStickerMetadata;->clone()Lcom/google/api/services/youtube/model/SuperStickerMetadata;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/SuperStickerMetadata;->clone()Lcom/google/api/services/youtube/model/SuperStickerMetadata;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/youtube/model/SuperStickerMetadata;
    .locals 1

    .line 121
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/SuperStickerMetadata;

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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/SuperStickerMetadata;->clone()Lcom/google/api/services/youtube/model/SuperStickerMetadata;

    move-result-object v0

    return-object v0
.end method

.method public final getAltText()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/google/api/services/youtube/model/SuperStickerMetadata;->altText:Ljava/lang/String;

    return-object v0
.end method

.method public final getAltTextLanguage()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/google/api/services/youtube/model/SuperStickerMetadata;->altTextLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public final getStickerId()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/google/api/services/youtube/model/SuperStickerMetadata;->stickerId:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/SuperStickerMetadata;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/SuperStickerMetadata;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/SuperStickerMetadata;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/SuperStickerMetadata;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/SuperStickerMetadata;
    .locals 0

    .line 116
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/model/SuperStickerMetadata;

    return-object p1
.end method

.method public final setAltText(Ljava/lang/String;)Lcom/google/api/services/youtube/model/SuperStickerMetadata;
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/google/api/services/youtube/model/SuperStickerMetadata;->altText:Ljava/lang/String;

    return-object p0
.end method

.method public final setAltTextLanguage(Ljava/lang/String;)Lcom/google/api/services/youtube/model/SuperStickerMetadata;
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/google/api/services/youtube/model/SuperStickerMetadata;->altTextLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public final setStickerId(Ljava/lang/String;)Lcom/google/api/services/youtube/model/SuperStickerMetadata;
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/google/api/services/youtube/model/SuperStickerMetadata;->stickerId:Ljava/lang/String;

    return-object p0
.end method
