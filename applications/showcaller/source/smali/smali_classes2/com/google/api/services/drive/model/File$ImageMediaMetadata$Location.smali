.class public final Lcom/google/api/services/drive/model/File$ImageMediaMetadata$Location;
.super Lcom/google/api/client/json/b;
.source "File.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/drive/model/File$ImageMediaMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Location"
.end annotation


# instance fields
.field private altitude:Ljava/lang/Double;
    .annotation runtime Lcom/google/api/client/util/o;
    .end annotation
.end field

.field private latitude:Ljava/lang/Double;
    .annotation runtime Lcom/google/api/client/util/o;
    .end annotation
.end field

.field private longitude:Ljava/lang/Double;
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
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/File$ImageMediaMetadata$Location;->clone()Lcom/google/api/services/drive/model/File$ImageMediaMetadata$Location;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/File$ImageMediaMetadata$Location;->clone()Lcom/google/api/services/drive/model/File$ImageMediaMetadata$Location;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/drive/model/File$ImageMediaMetadata$Location;
    .locals 1

    .line 4
    invoke-super {p0}, Lcom/google/api/client/json/b;->clone()Lcom/google/api/client/json/b;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata$Location;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/File$ImageMediaMetadata$Location;->clone()Lcom/google/api/services/drive/model/File$ImageMediaMetadata$Location;

    move-result-object v0

    return-object v0
.end method

.method public getAltitude()Ljava/lang/Double;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata$Location;->altitude:Ljava/lang/Double;

    return-object v0
.end method

.method public getLatitude()Ljava/lang/Double;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata$Location;->latitude:Ljava/lang/Double;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/Double;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata$Location;->longitude:Ljava/lang/Double;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/File$ImageMediaMetadata$Location;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/File$ImageMediaMetadata$Location;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/File$ImageMediaMetadata$Location;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/File$ImageMediaMetadata$Location;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/File$ImageMediaMetadata$Location;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/b;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/b;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/drive/model/File$ImageMediaMetadata$Location;

    return-object p1
.end method

.method public setAltitude(Ljava/lang/Double;)Lcom/google/api/services/drive/model/File$ImageMediaMetadata$Location;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata$Location;->altitude:Ljava/lang/Double;

    return-object p0
.end method

.method public setLatitude(Ljava/lang/Double;)Lcom/google/api/services/drive/model/File$ImageMediaMetadata$Location;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata$Location;->latitude:Ljava/lang/Double;

    return-object p0
.end method

.method public setLongitude(Ljava/lang/Double;)Lcom/google/api/services/drive/model/File$ImageMediaMetadata$Location;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata$Location;->longitude:Ljava/lang/Double;

    return-object p0
.end method
