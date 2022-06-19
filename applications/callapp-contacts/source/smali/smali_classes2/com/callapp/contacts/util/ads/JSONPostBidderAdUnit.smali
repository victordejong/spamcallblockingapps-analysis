.class public Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private adUnitId:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "adUnitId"
    .end annotation
.end field

.field private dfpAdUnitId:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "dfpAdUnitId"
    .end annotation
.end field

.field private moPubAdUnitId:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "moPubAdUnitId"
    .end annotation
.end field

.field private multiAdType:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "multiAdType"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
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
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 58
    :cond_1
    check-cast p1, Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;

    .line 59
    iget-object v2, p0, Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;->multiAdType:Ljava/util/List;

    iget-object v3, p1, Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;->multiAdType:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;->adUnitId:Ljava/lang/String;

    iget-object v3, p1, Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;->adUnitId:Ljava/lang/String;

    .line 60
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;->moPubAdUnitId:Ljava/lang/String;

    iget-object v3, p1, Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;->moPubAdUnitId:Ljava/lang/String;

    .line 61
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;->dfpAdUnitId:Ljava/lang/String;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;->dfpAdUnitId:Ljava/lang/String;

    .line 62
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;->adUnitId:Ljava/lang/String;

    return-object v0
.end method

.method public getDfpAdUnitId()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;->dfpAdUnitId:Ljava/lang/String;

    return-object v0
.end method

.method public getMoPubAdUnitId()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;->moPubAdUnitId:Ljava/lang/String;

    return-object v0
.end method

.method public getMultiAdType()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;->multiAdType:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 67
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;->multiAdType:Ljava/util/List;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;->adUnitId:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;->moPubAdUnitId:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;->dfpAdUnitId:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setAdUnitId(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;->adUnitId:Ljava/lang/String;

    return-void
.end method

.method public setDfpAdUnitId(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;->dfpAdUnitId:Ljava/lang/String;

    return-void
.end method

.method public setMoPubAdUnitId(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;->moPubAdUnitId:Ljava/lang/String;

    return-void
.end method

.method public setMultiAdType(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;->multiAdType:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JSONPostBidderAdUnit{multiAdType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;->multiAdType:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", adUnitId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;->adUnitId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", moPubAdUnitId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;->moPubAdUnitId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", dfpAdUnitId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;->dfpAdUnitId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
