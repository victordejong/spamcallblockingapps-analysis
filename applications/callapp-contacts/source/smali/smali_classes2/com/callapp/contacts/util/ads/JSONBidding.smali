.class public Lcom/callapp/contacts/util/ads/JSONBidding;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private backfill:Lcom/callapp/contacts/util/ads/JSONAdUnit;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "backfill"
    .end annotation
.end field

.field private bidders:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "bidders"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/util/ads/JSONBidder;",
            ">;"
        }
    .end annotation
.end field

.field private postBidTimeout:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "post_bid_timeout"
    .end annotation
.end field

.field private postBidders:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "post_bidders"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/util/ads/JSONPostBidder;",
            ">;"
        }
    .end annotation
.end field

.field private timeout:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "timeout"
    .end annotation
.end field

.field private waterfalls:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "waterfalls"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/util/ads/JSONAdUnit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
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

    if-eqz p1, :cond_2

    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 79
    :cond_1
    check-cast p1, Lcom/callapp/contacts/util/ads/JSONBidding;

    .line 80
    iget-wide v2, p0, Lcom/callapp/contacts/util/ads/JSONBidding;->timeout:J

    iget-wide v4, p1, Lcom/callapp/contacts/util/ads/JSONBidding;->timeout:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lcom/callapp/contacts/util/ads/JSONBidding;->postBidTimeout:J

    iget-wide v4, p1, Lcom/callapp/contacts/util/ads/JSONBidding;->postBidTimeout:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/JSONBidding;->waterfalls:Ljava/util/List;

    iget-object v3, p1, Lcom/callapp/contacts/util/ads/JSONBidding;->waterfalls:Ljava/util/List;

    .line 82
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/JSONBidding;->bidders:Ljava/util/List;

    iget-object v3, p1, Lcom/callapp/contacts/util/ads/JSONBidding;->bidders:Ljava/util/List;

    .line 83
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/JSONBidding;->postBidders:Ljava/util/List;

    iget-object v3, p1, Lcom/callapp/contacts/util/ads/JSONBidding;->postBidders:Ljava/util/List;

    .line 84
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/JSONBidding;->backfill:Lcom/callapp/contacts/util/ads/JSONAdUnit;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/JSONBidding;->backfill:Lcom/callapp/contacts/util/ads/JSONAdUnit;

    .line 85
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public getBackfill()Lcom/callapp/contacts/util/ads/JSONAdUnit;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/JSONBidding;->backfill:Lcom/callapp/contacts/util/ads/JSONAdUnit;

    return-object v0
.end method

.method public getBidders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/util/ads/JSONBidder;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/JSONBidding;->bidders:Ljava/util/List;

    return-object v0
.end method

.method public getPostBidTimeout()J
    .locals 2

    .line 60
    iget-wide v0, p0, Lcom/callapp/contacts/util/ads/JSONBidding;->postBidTimeout:J

    return-wide v0
.end method

.method public getPostBidders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/util/ads/JSONPostBidder;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/JSONBidding;->postBidders:Ljava/util/List;

    return-object v0
.end method

.method public getTimeout()J
    .locals 2

    .line 52
    iget-wide v0, p0, Lcom/callapp/contacts/util/ads/JSONBidding;->timeout:J

    return-wide v0
.end method

.method public getWaterfalls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/util/ads/JSONAdUnit;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/JSONBidding;->waterfalls:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 90
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/JSONBidding;->waterfalls:Ljava/util/List;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/JSONBidding;->bidders:Ljava/util/List;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/JSONBidding;->postBidders:Ljava/util/List;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/JSONBidding;->backfill:Lcom/callapp/contacts/util/ads/JSONAdUnit;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/callapp/contacts/util/ads/JSONBidding;->timeout:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/callapp/contacts/util/ads/JSONBidding;->postBidTimeout:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setBackfill(Lcom/callapp/contacts/util/ads/JSONAdUnit;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/JSONBidding;->backfill:Lcom/callapp/contacts/util/ads/JSONAdUnit;

    return-void
.end method

.method public setBidders(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/util/ads/JSONBidder;",
            ">;)V"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/JSONBidding;->bidders:Ljava/util/List;

    return-void
.end method

.method public setPostBidTimeout(J)V
    .locals 0

    .line 64
    iput-wide p1, p0, Lcom/callapp/contacts/util/ads/JSONBidding;->postBidTimeout:J

    return-void
.end method

.method public setPostBidders(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/util/ads/JSONPostBidder;",
            ">;)V"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/JSONBidding;->postBidders:Ljava/util/List;

    return-void
.end method

.method public setTimeout(J)V
    .locals 0

    .line 56
    iput-wide p1, p0, Lcom/callapp/contacts/util/ads/JSONBidding;->timeout:J

    return-void
.end method

.method public setWaterfalls(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/util/ads/JSONAdUnit;",
            ">;)V"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/JSONBidding;->waterfalls:Ljava/util/List;

    return-void
.end method
