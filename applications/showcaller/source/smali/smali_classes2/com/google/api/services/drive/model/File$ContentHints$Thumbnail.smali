.class public final Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;
.super Lcom/google/api/client/json/b;
.source "File.java"


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
    .annotation runtime Lcom/google/api/client/util/o;
    .end annotation
.end field

.field private mimeType:Ljava/lang/String;
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
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;->clone()Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;->clone()Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;
    .locals 1

    .line 4
    invoke-super {p0}, Lcom/google/api/client/json/b;->clone()Lcom/google/api/client/json/b;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;->clone()Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;

    move-result-object v0

    return-object v0
.end method

.method public decodeImage()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;->image:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/api/client/util/e;->a(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public encodeImage([B)Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/api/client/util/e;->b([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;->image:Ljava/lang/String;

    return-object p0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;->image:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/b;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/b;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;

    return-object p1
.end method

.method public setImage(Ljava/lang/String;)Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;->image:Ljava/lang/String;

    return-object p0
.end method

.method public setMimeType(Ljava/lang/String;)Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;->mimeType:Ljava/lang/String;

    return-object p0
.end method
