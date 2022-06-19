.class public final Lcom/google/api/services/youtube/model/InvideoTiming;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private durationMs:Ljava/math/BigInteger;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation

    .annotation runtime Lcom/google/api/client/json/JsonString;
    .end annotation
.end field

.field private offsetMs:Ljava/math/BigInteger;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation

    .annotation runtime Lcom/google/api/client/json/JsonString;
    .end annotation
.end field

.field private type:Ljava/lang/String;
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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/InvideoTiming;->clone()Lcom/google/api/services/youtube/model/InvideoTiming;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/InvideoTiming;->clone()Lcom/google/api/services/youtube/model/InvideoTiming;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/youtube/model/InvideoTiming;
    .locals 1

    .line 130
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/InvideoTiming;

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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/InvideoTiming;->clone()Lcom/google/api/services/youtube/model/InvideoTiming;

    move-result-object v0

    return-object v0
.end method

.method public final getDurationMs()Ljava/math/BigInteger;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/google/api/services/youtube/model/InvideoTiming;->durationMs:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final getOffsetMs()Ljava/math/BigInteger;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/google/api/services/youtube/model/InvideoTiming;->offsetMs:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/google/api/services/youtube/model/InvideoTiming;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/InvideoTiming;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/InvideoTiming;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/InvideoTiming;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/InvideoTiming;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/InvideoTiming;
    .locals 0

    .line 125
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/model/InvideoTiming;

    return-object p1
.end method

.method public final setDurationMs(Ljava/math/BigInteger;)Lcom/google/api/services/youtube/model/InvideoTiming;
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/google/api/services/youtube/model/InvideoTiming;->durationMs:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final setOffsetMs(Ljava/math/BigInteger;)Lcom/google/api/services/youtube/model/InvideoTiming;
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/google/api/services/youtube/model/InvideoTiming;->offsetMs:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final setType(Ljava/lang/String;)Lcom/google/api/services/youtube/model/InvideoTiming;
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/google/api/services/youtube/model/InvideoTiming;->type:Ljava/lang/String;

    return-object p0
.end method
