.class public Lcom/callapp/common/model/json/JSONInstagramCounts;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x5e8bdcb1a56db216L


# instance fields
.field private followed_by:J

.field private follows:J

.field private media:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 57
    :cond_1
    instance-of v2, p1, Lcom/callapp/common/model/json/JSONInstagramCounts;

    if-nez v2, :cond_2

    return v1

    .line 59
    :cond_2
    check-cast p1, Lcom/callapp/common/model/json/JSONInstagramCounts;

    .line 60
    iget-wide v2, p0, Lcom/callapp/common/model/json/JSONInstagramCounts;->followed_by:J

    iget-wide v4, p1, Lcom/callapp/common/model/json/JSONInstagramCounts;->followed_by:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    return v1

    .line 62
    :cond_3
    iget-wide v2, p0, Lcom/callapp/common/model/json/JSONInstagramCounts;->follows:J

    iget-wide v4, p1, Lcom/callapp/common/model/json/JSONInstagramCounts;->follows:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_4

    return v1

    .line 64
    :cond_4
    iget-wide v2, p0, Lcom/callapp/common/model/json/JSONInstagramCounts;->media:J

    iget-wide v4, p1, Lcom/callapp/common/model/json/JSONInstagramCounts;->media:J

    cmp-long p1, v2, v4

    if-eqz p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public getFollowed_by()J
    .locals 2

    .line 34
    iget-wide v0, p0, Lcom/callapp/common/model/json/JSONInstagramCounts;->followed_by:J

    return-wide v0
.end method

.method public getFollows()J
    .locals 2

    .line 26
    iget-wide v0, p0, Lcom/callapp/common/model/json/JSONInstagramCounts;->follows:J

    return-wide v0
.end method

.method public getMedia()J
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/callapp/common/model/json/JSONInstagramCounts;->media:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 7

    .line 45
    iget-wide v0, p0, Lcom/callapp/common/model/json/JSONInstagramCounts;->followed_by:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v1, v0

    add-int/lit8 v1, v1, 0x1f

    mul-int/lit8 v1, v1, 0x1f

    .line 46
    iget-wide v3, p0, Lcom/callapp/common/model/json/JSONInstagramCounts;->follows:J

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v0, v3

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 47
    iget-wide v3, p0, Lcom/callapp/common/model/json/JSONInstagramCounts;->media:J

    ushr-long v5, v3, v2

    xor-long v2, v3, v5

    long-to-int v0, v2

    add-int/2addr v1, v0

    return v1
.end method

.method public setFollowed_by(J)V
    .locals 0

    .line 38
    iput-wide p1, p0, Lcom/callapp/common/model/json/JSONInstagramCounts;->followed_by:J

    return-void
.end method

.method public setFollows(J)V
    .locals 0

    .line 30
    iput-wide p1, p0, Lcom/callapp/common/model/json/JSONInstagramCounts;->follows:J

    return-void
.end method

.method public setMedia(J)V
    .locals 0

    .line 22
    iput-wide p1, p0, Lcom/callapp/common/model/json/JSONInstagramCounts;->media:J

    return-void
.end method
