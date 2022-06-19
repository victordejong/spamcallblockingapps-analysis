.class public Lcom/callapp/common/model/json/QuotaLimitPOJO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x698d7eb535488060L


# instance fields
.field private quotaLimitationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
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

.method private getBooleanValueFromMap(Ljava/lang/String;Z)Z
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .line 34
    invoke-direct {p0, p1}, Lcom/callapp/common/model/json/QuotaLimitPOJO;->getValueFromMap(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 37
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 p2, 0x0

    :cond_1
    :goto_0
    return p2
.end method

.method private getValueFromMap(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/callapp/common/model/json/QuotaLimitPOJO;->quotaLimitationMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 26
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method


# virtual methods
.method public getDailyLimitForSearchNearBy(I)I
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    const-string v0, "dailyLimitForSearchNearBy"

    .line 45
    invoke-direct {p0, v0}, Lcom/callapp/common/model/json/QuotaLimitPOJO;->getValueFromMap(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 47
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 49
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getInterval()I
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    const-string v0, "interval"

    .line 99
    invoke-direct {p0, v0}, Lcom/callapp/common/model/json/QuotaLimitPOJO;->getValueFromMap(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getMaximumGroup()I
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    const-string v0, "max_group"

    .line 109
    invoke-direct {p0, v0}, Lcom/callapp/common/model/json/QuotaLimitPOJO;->getValueFromMap(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getMinimumGroup()I
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    const-string v0, "min_group"

    .line 104
    invoke-direct {p0, v0}, Lcom/callapp/common/model/json/QuotaLimitPOJO;->getValueFromMap(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getQuotaLimitationMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/callapp/common/model/json/QuotaLimitPOJO;->quotaLimitationMap:Ljava/util/Map;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    const-string v0, "enabled"

    const/4 v1, 0x1

    .line 94
    invoke-direct {p0, v0, v1}, Lcom/callapp/common/model/json/QuotaLimitPOJO;->getBooleanValueFromMap(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isMutuals()Z
    .locals 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    const-string v0, "mutuals"

    const/4 v1, 0x1

    .line 81
    invoke-direct {p0, v0, v1}, Lcom/callapp/common/model/json/QuotaLimitPOJO;->getBooleanValueFromMap(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isSearchInContactDetails()Z
    .locals 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    const-string v0, "searchInContactDetails"

    const/4 v1, 0x1

    .line 73
    invoke-direct {p0, v0, v1}, Lcom/callapp/common/model/json/QuotaLimitPOJO;->getBooleanValueFromMap(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isSearchInManual()Z
    .locals 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    const-string v0, "searchInManual"

    const/4 v1, 0x1

    .line 65
    invoke-direct {p0, v0, v1}, Lcom/callapp/common/model/json/QuotaLimitPOJO;->getBooleanValueFromMap(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isSearchInSync()Z
    .locals 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    const-string v0, "searchInSync"

    const/4 v1, 0x1

    .line 57
    invoke-direct {p0, v0, v1}, Lcom/callapp/common/model/json/QuotaLimitPOJO;->getBooleanValueFromMap(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isSearchWhenNotLoggedIn()Z
    .locals 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    const-string v0, "searchWhenNotLoggedIn"

    const/4 v1, 0x1

    .line 89
    invoke-direct {p0, v0, v1}, Lcom/callapp/common/model/json/QuotaLimitPOJO;->getBooleanValueFromMap(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setQuotaLimitationMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 19
    iput-object p1, p0, Lcom/callapp/common/model/json/QuotaLimitPOJO;->quotaLimitationMap:Ljava/util/Map;

    return-void
.end method
