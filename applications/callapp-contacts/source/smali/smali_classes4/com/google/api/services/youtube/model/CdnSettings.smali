.class public final Lcom/google/api/services/youtube/model/CdnSettings;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private format:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private frameRate:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private ingestionInfo:Lcom/google/api/services/youtube/model/IngestionInfo;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private ingestionType:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private resolution:Ljava/lang/String;
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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/CdnSettings;->clone()Lcom/google/api/services/youtube/model/CdnSettings;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/CdnSettings;->clone()Lcom/google/api/services/youtube/model/CdnSettings;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/youtube/model/CdnSettings;
    .locals 1

    .line 166
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/CdnSettings;

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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/CdnSettings;->clone()Lcom/google/api/services/youtube/model/CdnSettings;

    move-result-object v0

    return-object v0
.end method

.method public final getFormat()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/google/api/services/youtube/model/CdnSettings;->format:Ljava/lang/String;

    return-object v0
.end method

.method public final getFrameRate()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/google/api/services/youtube/model/CdnSettings;->frameRate:Ljava/lang/String;

    return-object v0
.end method

.method public final getIngestionInfo()Lcom/google/api/services/youtube/model/IngestionInfo;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/google/api/services/youtube/model/CdnSettings;->ingestionInfo:Lcom/google/api/services/youtube/model/IngestionInfo;

    return-object v0
.end method

.method public final getIngestionType()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/google/api/services/youtube/model/CdnSettings;->ingestionType:Ljava/lang/String;

    return-object v0
.end method

.method public final getResolution()Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/google/api/services/youtube/model/CdnSettings;->resolution:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/CdnSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/CdnSettings;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/CdnSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/CdnSettings;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/CdnSettings;
    .locals 0

    .line 161
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/model/CdnSettings;

    return-object p1
.end method

.method public final setFormat(Ljava/lang/String;)Lcom/google/api/services/youtube/model/CdnSettings;
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/google/api/services/youtube/model/CdnSettings;->format:Ljava/lang/String;

    return-object p0
.end method

.method public final setFrameRate(Ljava/lang/String;)Lcom/google/api/services/youtube/model/CdnSettings;
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/google/api/services/youtube/model/CdnSettings;->frameRate:Ljava/lang/String;

    return-object p0
.end method

.method public final setIngestionInfo(Lcom/google/api/services/youtube/model/IngestionInfo;)Lcom/google/api/services/youtube/model/CdnSettings;
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/google/api/services/youtube/model/CdnSettings;->ingestionInfo:Lcom/google/api/services/youtube/model/IngestionInfo;

    return-object p0
.end method

.method public final setIngestionType(Ljava/lang/String;)Lcom/google/api/services/youtube/model/CdnSettings;
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/google/api/services/youtube/model/CdnSettings;->ingestionType:Ljava/lang/String;

    return-object p0
.end method

.method public final setResolution(Ljava/lang/String;)Lcom/google/api/services/youtube/model/CdnSettings;
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/google/api/services/youtube/model/CdnSettings;->resolution:Ljava/lang/String;

    return-object p0
.end method
