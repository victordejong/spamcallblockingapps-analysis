.class public Lcom/callapp/contacts/util/ads/JSONPostBidder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private adUnitTimeout:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "adunit_timeout"
    .end annotation
.end field

.field private adUnits:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "adUnits"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;",
            ">;"
        }
    .end annotation
.end field

.field private cachetimeInMinutes:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "cachetime_in_minutes"
    .end annotation
.end field

.field private callappDisableRefresh:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "callapp_disable_refresh"
    .end annotation
.end field

.field private classname:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "classname"
    .end annotation
.end field

.field private index:I

.field private isRefresh:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "is_refresh"
    .end annotation
.end field

.field private multiplier:D
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "multiplier"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 29
    iput-wide v0, p0, Lcom/callapp/contacts/util/ads/JSONPostBidder;->multiplier:D

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

    .line 99
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 100
    :cond_1
    check-cast p1, Lcom/callapp/contacts/util/ads/JSONPostBidder;

    .line 101
    iget-wide v2, p0, Lcom/callapp/contacts/util/ads/JSONPostBidder;->cachetimeInMinutes:J

    iget-wide v4, p1, Lcom/callapp/contacts/util/ads/JSONPostBidder;->cachetimeInMinutes:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-boolean v2, p0, Lcom/callapp/contacts/util/ads/JSONPostBidder;->isRefresh:Z

    iget-boolean v3, p1, Lcom/callapp/contacts/util/ads/JSONPostBidder;->isRefresh:Z

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/callapp/contacts/util/ads/JSONPostBidder;->adUnitTimeout:J

    iget-wide v4, p1, Lcom/callapp/contacts/util/ads/JSONPostBidder;->adUnitTimeout:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-boolean v2, p0, Lcom/callapp/contacts/util/ads/JSONPostBidder;->callappDisableRefresh:Z

    iget-boolean v3, p1, Lcom/callapp/contacts/util/ads/JSONPostBidder;->callappDisableRefresh:Z

    if-ne v2, v3, :cond_2

    iget-wide v2, p1, Lcom/callapp/contacts/util/ads/JSONPostBidder;->multiplier:D

    iget-wide v4, p0, Lcom/callapp/contacts/util/ads/JSONPostBidder;->multiplier:D

    .line 105
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/JSONPostBidder;->classname:Ljava/lang/String;

    iget-object v3, p1, Lcom/callapp/contacts/util/ads/JSONPostBidder;->classname:Ljava/lang/String;

    .line 106
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/JSONPostBidder;->adUnits:Ljava/util/List;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/JSONPostBidder;->adUnits:Ljava/util/List;

    .line 107
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public getAdUnitTimeout()J
    .locals 2

    .line 65
    iget-wide v0, p0, Lcom/callapp/contacts/util/ads/JSONPostBidder;->adUnitTimeout:J

    return-wide v0
.end method

.method public getAdUnits()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/JSONPostBidder;->adUnits:Ljava/util/List;

    return-object v0
.end method

.method public getCachetimeInMinutes()J
    .locals 2

    .line 41
    iget-wide v0, p0, Lcom/callapp/contacts/util/ads/JSONPostBidder;->cachetimeInMinutes:J

    return-wide v0
.end method

.method public getClassname()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/JSONPostBidder;->classname:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .line 89
    iget v0, p0, Lcom/callapp/contacts/util/ads/JSONPostBidder;->index:I

    return v0
.end method

.method public getMultiplier()D
    .locals 2

    .line 81
    iget-wide v0, p0, Lcom/callapp/contacts/util/ads/JSONPostBidder;->multiplier:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    .line 112
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/JSONPostBidder;->classname:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/JSONPostBidder;->adUnits:Ljava/util/List;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/callapp/contacts/util/ads/JSONPostBidder;->cachetimeInMinutes:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/callapp/contacts/util/ads/JSONPostBidder;->isRefresh:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/callapp/contacts/util/ads/JSONPostBidder;->adUnitTimeout:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/callapp/contacts/util/ads/JSONPostBidder;->callappDisableRefresh:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/callapp/contacts/util/ads/JSONPostBidder;->multiplier:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isCallappDisableRefresh()Z
    .locals 1

    .line 73
    iget-boolean v0, p0, Lcom/callapp/contacts/util/ads/JSONPostBidder;->callappDisableRefresh:Z

    return v0
.end method

.method public isRefresh()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lcom/callapp/contacts/util/ads/JSONPostBidder;->isRefresh:Z

    return v0
.end method

.method public setAdUnitTimeout(J)V
    .locals 0

    .line 69
    iput-wide p1, p0, Lcom/callapp/contacts/util/ads/JSONPostBidder;->adUnitTimeout:J

    return-void
.end method

.method public setAdUnits(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;",
            ">;)V"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/JSONPostBidder;->adUnits:Ljava/util/List;

    return-void
.end method

.method public setCachetimeInMinutes(J)V
    .locals 0

    .line 45
    iput-wide p1, p0, Lcom/callapp/contacts/util/ads/JSONPostBidder;->cachetimeInMinutes:J

    return-void
.end method

.method public setCallappDisableRefresh(Z)V
    .locals 0

    .line 77
    iput-boolean p1, p0, Lcom/callapp/contacts/util/ads/JSONPostBidder;->callappDisableRefresh:Z

    return-void
.end method

.method public setClassname(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/JSONPostBidder;->classname:Ljava/lang/String;

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    .line 93
    iput p1, p0, Lcom/callapp/contacts/util/ads/JSONPostBidder;->index:I

    return-void
.end method

.method public setMultiplier(D)V
    .locals 0

    .line 85
    iput-wide p1, p0, Lcom/callapp/contacts/util/ads/JSONPostBidder;->multiplier:D

    return-void
.end method

.method public setRefresh(Z)V
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/callapp/contacts/util/ads/JSONPostBidder;->isRefresh:Z

    return-void
.end method
