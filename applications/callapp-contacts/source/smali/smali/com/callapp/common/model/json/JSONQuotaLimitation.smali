.class public Lcom/callapp/common/model/json/JSONQuotaLimitation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x43ea2844c5565b54L


# instance fields
.field private creationTimeStamp:Ljava/util/Calendar;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation
.end field

.field private quotaLimitationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/callapp/common/model/json/QuotaLimitPOJO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-direct {p0}, Lcom/callapp/common/model/json/JSONQuotaLimitation;->initTimeStamp()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/callapp/common/model/json/QuotaLimitPOJO;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Lcom/callapp/common/model/json/JSONQuotaLimitation;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONQuotaLimitation;->quotaLimitationMap:Ljava/util/Map;

    return-void
.end method

.method private initTimeStamp()V
    .locals 1

    .line 28
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/common/model/json/JSONQuotaLimitation;->creationTimeStamp:Ljava/util/Calendar;

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

    if-nez p1, :cond_1

    return v1

    .line 60
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 62
    :cond_2
    check-cast p1, Lcom/callapp/common/model/json/JSONQuotaLimitation;

    .line 63
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONQuotaLimitation;->creationTimeStamp:Ljava/util/Calendar;

    if-nez v2, :cond_3

    .line 64
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONQuotaLimitation;->creationTimeStamp:Ljava/util/Calendar;

    if-eqz v2, :cond_4

    return v1

    .line 66
    :cond_3
    iget-object v3, p1, Lcom/callapp/common/model/json/JSONQuotaLimitation;->creationTimeStamp:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 68
    :cond_4
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONQuotaLimitation;->quotaLimitationMap:Ljava/util/Map;

    if-nez v2, :cond_5

    .line 69
    iget-object p1, p1, Lcom/callapp/common/model/json/JSONQuotaLimitation;->quotaLimitationMap:Ljava/util/Map;

    if-eqz p1, :cond_6

    return v1

    .line 71
    :cond_5
    iget-object p1, p1, Lcom/callapp/common/model/json/JSONQuotaLimitation;->quotaLimitationMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public getQuotaLimitationMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/callapp/common/model/json/QuotaLimitPOJO;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONQuotaLimitation;->quotaLimitationMap:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONQuotaLimitation;->creationTimeStamp:Ljava/util/Calendar;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/Calendar;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    .line 50
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONQuotaLimitation;->quotaLimitationMap:Ljava/util/Map;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public isExpired()Z
    .locals 3

    .line 32
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xc

    const/16 v2, -0x5a0

    .line 33
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 34
    iget-object v1, p0, Lcom/callapp/common/model/json/JSONQuotaLimitation;->creationTimeStamp:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

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
            "Lcom/callapp/common/model/json/QuotaLimitPOJO;",
            ">;)V"
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONQuotaLimitation;->quotaLimitationMap:Ljava/util/Map;

    return-void
.end method
