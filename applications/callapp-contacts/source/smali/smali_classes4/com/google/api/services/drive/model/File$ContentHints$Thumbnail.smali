.class public final Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/drive/model/File$ContentHints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Thumbnail"
.end annotation


# instance fields
.field private image:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private mimeType:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2427
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Lcom/google/api/client/a/n;
    .locals 1

    .line 2427
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;->clone()Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 2427
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;->clone()Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;
    .locals 1

    .line 2512
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 2427
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;->clone()Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;

    move-result-object v0

    return-object v0
.end method

.method public final decodeImage()[B
    .locals 1

    .line 2460
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;->image:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/api/client/a/d;->a(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public final encodeImage([B)Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;
    .locals 0

    .line 2484
    invoke-static {p1}, Lcom/google/api/client/a/d;->a([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;->image:Ljava/lang/String;

    return-object p0
.end method

.method public final getImage()Ljava/lang/String;
    .locals 1

    .line 2449
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;->image:Ljava/lang/String;

    return-object v0
.end method

.method public final getMimeType()Ljava/lang/String;
    .locals 1

    .line 2493
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 2427
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 2427
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;
    .locals 0

    .line 2507
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;

    return-object p1
.end method

.method public final setImage(Ljava/lang/String;)Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;
    .locals 0

    .line 2469
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;->image:Ljava/lang/String;

    return-object p0
.end method

.method public final setMimeType(Ljava/lang/String;)Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;
    .locals 0

    .line 2501
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;->mimeType:Ljava/lang/String;

    return-object p0
.end method
