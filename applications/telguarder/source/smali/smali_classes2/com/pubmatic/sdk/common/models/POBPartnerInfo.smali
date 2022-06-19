.class public Lcom/pubmatic/sdk/common/models/POBPartnerInfo;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:D

.field private f:J

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;[Lcom/pubmatic/sdk/common/POBAdSize;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lcom/pubmatic/sdk/common/POBAdSize;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p2, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/pubmatic/sdk/common/POBAdSize;->getAdWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/pubmatic/sdk/common/POBAdSize;->getAdHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/pubmatic/sdk/common/models/POBPartnerInfo;->i:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/pubmatic/sdk/common/POBAdSize;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "adSize"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2

    const/4 v0, 0x0

    :cond_2
    return-object v0
.end method

.method private a(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/pubmatic/sdk/common/models/POBPartnerInfo;->b(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result p1

    if-nez p1, :cond_2

    const/4 v0, 0x0

    :cond_2
    return-object v0
.end method

.method private b(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result p1

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method public static build(Lcom/pubmatic/sdk/common/models/POBPartnerInfo;Ljava/lang/String;[Lcom/pubmatic/sdk/common/POBAdSize;)Lcom/pubmatic/sdk/common/models/POBPartnerInfo;
    .locals 3

    new-instance v0, Lcom/pubmatic/sdk/common/models/POBPartnerInfo;

    invoke-direct {v0}, Lcom/pubmatic/sdk/common/models/POBPartnerInfo;-><init>()V

    iget-object v1, p0, Lcom/pubmatic/sdk/common/models/POBPartnerInfo;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/pubmatic/sdk/common/models/POBPartnerInfo;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/pubmatic/sdk/common/models/POBPartnerInfo;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/pubmatic/sdk/common/models/POBPartnerInfo;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/pubmatic/sdk/common/models/POBPartnerInfo;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/pubmatic/sdk/common/models/POBPartnerInfo;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/pubmatic/sdk/common/models/POBPartnerInfo;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/pubmatic/sdk/common/models/POBPartnerInfo;->d:Ljava/lang/String;

    iget-wide v1, p0, Lcom/pubmatic/sdk/common/models/POBPartnerInfo;->e:D

    iput-wide v1, v0, Lcom/pubmatic/sdk/common/models/POBPartnerInfo;->e:D

    iget-wide v1, p0, Lcom/pubmatic/sdk/common/models/POBPartnerInfo;->f:J

    iput-wide v1, v0, Lcom/pubmatic/sdk/common/models/POBPartnerInfo;->f:J

    iget-object v1, p0, Lcom/pubmatic/sdk/common/models/POBPartnerInfo;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/pubmatic/sdk/common/models/POBPartnerInfo;->g:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/pubmatic/sdk/common/models/POBPartnerInfo;->h:Z

    iput-boolean v1, v0, Lcom/pubmatic/sdk/common/models/POBPartnerInfo;->h:Z

    iget-object v1, p0, Lcom/pubmatic/sdk/common/models/POBPartnerInfo;->i:Ljava/util/Map;

    iput-object v1, v0, Lcom/pubmatic/sdk/common/models/POBPartnerInfo;->i:Ljava/util/Map;

    invoke-direct {p0, p1, p2}, Lcom/pubmatic/sdk/common/models/POBPartnerInfo;->a(Ljava/lang/String;[Lcom/pubmatic/sdk/common/POBAdSize;)Ljava/util/List;

    move-result-object p0

    iput-object p0, v0, Lcom/pubmatic/sdk/common/models/POBPartnerInfo;->j:Ljava/util/List;

    return-object v0
.end method

.method public static build(Lorg/json/JSONObject;)Lcom/pubmatic/sdk/common/models/POBPartnerInfo;
    .locals 3

    new-instance v0, Lcom/pubmatic/sdk/common/models/POBPartnerInfo;

    invoke-direct {v0}, Lcom/pubmatic/sdk/common/models/POBPartnerInfo;-><init>()V

    const-string v1, "pubmaticPartnerId"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/pubmatic/sdk/common/models/POBPartnerInfo;->a:Ljava/lang/String;

    const-string v1, "name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/pubmatic/sdk/common/models/POBPartnerInfo;->b:Ljava/lang/String;

    const-string v1, "accountName"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/pubmatic/sdk/common/models/POBPartnerInfo;->c:Ljava/lang/String;

    const-string v1, "bidderCode"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/pubmatic/sdk/common/models/POBPartnerInfo;->d:Ljava/lang/String;

    const-string v1, "rev_share"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/pubmatic/sdk/common/models/POBPartnerInfo;->e:D

    const-string v1, "timeout"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/pubmatic/sdk/common/models/POBPartnerInfo;->f:J

    const-string v1, "kgp"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/pubmatic/sdk/common/models/POBPartnerInfo;->g:Ljava/lang/String;

    const-string v1, "video"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/pubmatic/sdk/common/models/POBPartnerInfo;->h:Z

    const-string v1, "klm"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-direct {v0, p0}, Lcom/pubmatic/sdk/common/models/POBPartnerInfo;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p0

    iput-object p0, v0, Lcom/pubmatic/sdk/common/models/POBPartnerInfo;->i:Ljava/util/Map;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getAccountName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/common/models/POBPartnerInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getBidderCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/common/models/POBPartnerInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyGenerationPattern()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/common/models/POBPartnerInfo;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/common/models/POBPartnerInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getPlacementMappings()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/common/models/POBPartnerInfo;->i:Ljava/util/Map;

    return-object v0
.end method

.method public getPubMaticPartnerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/common/models/POBPartnerInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getRevShare()D
    .locals 2

    iget-wide v0, p0, Lcom/pubmatic/sdk/common/models/POBPartnerInfo;->e:D

    return-wide v0
.end method

.method public getSlotInfoMappings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pubmatic/sdk/common/models/POBPartnerInfo;->j:Ljava/util/List;

    return-object v0
.end method

.method public getTimeout()J
    .locals 2

    iget-wide v0, p0, Lcom/pubmatic/sdk/common/models/POBPartnerInfo;->f:J

    return-wide v0
.end method

.method public isVideo()Z
    .locals 1

    iget-boolean v0, p0, Lcom/pubmatic/sdk/common/models/POBPartnerInfo;->h:Z

    return v0
.end method
