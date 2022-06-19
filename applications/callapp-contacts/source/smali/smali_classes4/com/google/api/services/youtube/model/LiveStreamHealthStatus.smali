.class public final Lcom/google/api/services/youtube/model/LiveStreamHealthStatus;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private configurationIssues:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/api/services/youtube/model/LiveStreamConfigurationIssue;",
            ">;"
        }
    .end annotation
.end field

.field private lastUpdateTimeSeconds:Ljava/math/BigInteger;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation

    .annotation runtime Lcom/google/api/client/json/JsonString;
    .end annotation
.end field

.field private status:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-class v0, Lcom/google/api/services/youtube/model/LiveStreamConfigurationIssue;

    invoke-static {v0}, Lcom/google/api/client/a/j;->a(Ljava/lang/Class;)Ljava/lang/Object;

    return-void
.end method

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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LiveStreamHealthStatus;->clone()Lcom/google/api/services/youtube/model/LiveStreamHealthStatus;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LiveStreamHealthStatus;->clone()Lcom/google/api/services/youtube/model/LiveStreamHealthStatus;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/youtube/model/LiveStreamHealthStatus;
    .locals 1

    .line 121
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/LiveStreamHealthStatus;

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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LiveStreamHealthStatus;->clone()Lcom/google/api/services/youtube/model/LiveStreamHealthStatus;

    move-result-object v0

    return-object v0
.end method

.method public final getConfigurationIssues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/services/youtube/model/LiveStreamConfigurationIssue;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveStreamHealthStatus;->configurationIssues:Ljava/util/List;

    return-object v0
.end method

.method public final getLastUpdateTimeSeconds()Ljava/math/BigInteger;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveStreamHealthStatus;->lastUpdateTimeSeconds:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final getStatus()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveStreamHealthStatus;->status:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/LiveStreamHealthStatus;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LiveStreamHealthStatus;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/LiveStreamHealthStatus;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LiveStreamHealthStatus;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LiveStreamHealthStatus;
    .locals 0

    .line 116
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/model/LiveStreamHealthStatus;

    return-object p1
.end method

.method public final setConfigurationIssues(Ljava/util/List;)Lcom/google/api/services/youtube/model/LiveStreamHealthStatus;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/api/services/youtube/model/LiveStreamConfigurationIssue;",
            ">;)",
            "Lcom/google/api/services/youtube/model/LiveStreamHealthStatus;"
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveStreamHealthStatus;->configurationIssues:Ljava/util/List;

    return-object p0
.end method

.method public final setLastUpdateTimeSeconds(Ljava/math/BigInteger;)Lcom/google/api/services/youtube/model/LiveStreamHealthStatus;
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveStreamHealthStatus;->lastUpdateTimeSeconds:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final setStatus(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveStreamHealthStatus;
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveStreamHealthStatus;->status:Ljava/lang/String;

    return-object p0
.end method
