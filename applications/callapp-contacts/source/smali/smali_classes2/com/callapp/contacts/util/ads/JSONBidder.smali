.class public Lcom/callapp/contacts/util/ads/JSONBidder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private adType:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "adType"
    .end annotation
.end field

.field private adUnitId:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "adUnitId"
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

.field private dfpAdUnitId:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "dfpAdUnitId"
    .end annotation
.end field

.field private isRefresh:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "is_refresh"
    .end annotation
.end field

.field private moPubAdUnitId:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "moPubAdUnitId"
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

    .line 100
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 101
    :cond_1
    check-cast p1, Lcom/callapp/contacts/util/ads/JSONBidder;

    .line 102
    iget v2, p0, Lcom/callapp/contacts/util/ads/JSONBidder;->adType:I

    iget v3, p1, Lcom/callapp/contacts/util/ads/JSONBidder;->adType:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/callapp/contacts/util/ads/JSONBidder;->cachetimeInMinutes:J

    iget-wide v4, p1, Lcom/callapp/contacts/util/ads/JSONBidder;->cachetimeInMinutes:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-boolean v2, p0, Lcom/callapp/contacts/util/ads/JSONBidder;->callappDisableRefresh:Z

    iget-boolean v3, p1, Lcom/callapp/contacts/util/ads/JSONBidder;->callappDisableRefresh:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/callapp/contacts/util/ads/JSONBidder;->isRefresh:Z

    iget-boolean v3, p1, Lcom/callapp/contacts/util/ads/JSONBidder;->isRefresh:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/JSONBidder;->classname:Ljava/lang/String;

    iget-object v3, p1, Lcom/callapp/contacts/util/ads/JSONBidder;->classname:Ljava/lang/String;

    .line 106
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/JSONBidder;->adUnitId:Ljava/lang/String;

    iget-object v3, p1, Lcom/callapp/contacts/util/ads/JSONBidder;->adUnitId:Ljava/lang/String;

    .line 107
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/JSONBidder;->moPubAdUnitId:Ljava/lang/String;

    iget-object v3, p1, Lcom/callapp/contacts/util/ads/JSONBidder;->moPubAdUnitId:Ljava/lang/String;

    .line 108
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/JSONBidder;->dfpAdUnitId:Ljava/lang/String;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/JSONBidder;->dfpAdUnitId:Ljava/lang/String;

    .line 109
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public getAdType()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/callapp/contacts/util/ads/JSONBidder;->adType:I

    return v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/JSONBidder;->adUnitId:Ljava/lang/String;

    return-object v0
.end method

.method public getCachetimeInMinutes()J
    .locals 2

    .line 50
    iget-wide v0, p0, Lcom/callapp/contacts/util/ads/JSONBidder;->cachetimeInMinutes:J

    return-wide v0
.end method

.method public getClassname()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/JSONBidder;->classname:Ljava/lang/String;

    return-object v0
.end method

.method public getDfpAdUnitId()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/JSONBidder;->dfpAdUnitId:Ljava/lang/String;

    return-object v0
.end method

.method public getMoPubAdUnitId()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/JSONBidder;->moPubAdUnitId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    .line 114
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/JSONBidder;->classname:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/callapp/contacts/util/ads/JSONBidder;->adType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/JSONBidder;->adUnitId:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/JSONBidder;->moPubAdUnitId:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/JSONBidder;->dfpAdUnitId:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/callapp/contacts/util/ads/JSONBidder;->cachetimeInMinutes:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/callapp/contacts/util/ads/JSONBidder;->callappDisableRefresh:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/callapp/contacts/util/ads/JSONBidder;->isRefresh:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isCallappDisableRefresh()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/callapp/contacts/util/ads/JSONBidder;->callappDisableRefresh:Z

    return v0
.end method

.method public isRefresh()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lcom/callapp/contacts/util/ads/JSONBidder;->isRefresh:Z

    return v0
.end method

.method public setAdType(I)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/callapp/contacts/util/ads/JSONBidder;->adType:I

    return-void
.end method

.method public setAdUnitId(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/JSONBidder;->adUnitId:Ljava/lang/String;

    return-void
.end method

.method public setCachetimeInMinutes(J)V
    .locals 0

    .line 54
    iput-wide p1, p0, Lcom/callapp/contacts/util/ads/JSONBidder;->cachetimeInMinutes:J

    return-void
.end method

.method public setCallappDisableRefresh(Z)V
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/callapp/contacts/util/ads/JSONBidder;->callappDisableRefresh:Z

    return-void
.end method

.method public setClassname(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/JSONBidder;->classname:Ljava/lang/String;

    return-void
.end method

.method public setDfpAdUnitId(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/JSONBidder;->dfpAdUnitId:Ljava/lang/String;

    return-void
.end method

.method public setMoPubAdUnitId(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/JSONBidder;->moPubAdUnitId:Ljava/lang/String;

    return-void
.end method

.method public setRefresh(Z)V
    .locals 0

    .line 70
    iput-boolean p1, p0, Lcom/callapp/contacts/util/ads/JSONBidder;->isRefresh:Z

    return-void
.end method
