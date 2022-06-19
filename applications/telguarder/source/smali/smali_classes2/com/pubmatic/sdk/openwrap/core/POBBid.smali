.class public Lcom/pubmatic/sdk/openwrap/core/POBBid;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/pubmatic/sdk/common/base/POBAdDescriptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubmatic/sdk/openwrap/core/POBBid$Builder;,
        Lcom/pubmatic/sdk/openwrap/core/POBBid$POBSummary;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:D

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:I

.field private m:I

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pubmatic/sdk/openwrap/core/POBBid$POBSummary;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pubmatic/sdk/openwrap/core/POBReward;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lorg/json/JSONObject;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Z

.field private u:J

.field private v:J

.field private w:Z

.field private x:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->u:J

    return-void
.end method

.method static synthetic a(Lcom/pubmatic/sdk/openwrap/core/POBBid;I)I
    .locals 0

    iput p1, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->l:I

    return p1
.end method

.method static synthetic a(Lcom/pubmatic/sdk/openwrap/core/POBBid;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->s:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/pubmatic/sdk/openwrap/core/POBBid;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->s:Ljava/lang/String;

    return-object p1
.end method

.method private a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getTargetingInfoWithPricePrecision(I)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/pubmatic/sdk/openwrap/core/POBBid;Lcom/pubmatic/sdk/openwrap/core/POBBid;)V
    .locals 2

    iget-object v0, p1, Lcom/pubmatic/sdk/openwrap/core/POBBid;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/pubmatic/sdk/openwrap/core/POBBid;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->b:Ljava/lang/String;

    iget-wide v0, p1, Lcom/pubmatic/sdk/openwrap/core/POBBid;->c:D

    iput-wide v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->c:D

    iget v0, p1, Lcom/pubmatic/sdk/openwrap/core/POBBid;->d:I

    iput v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->d:I

    iget v0, p1, Lcom/pubmatic/sdk/openwrap/core/POBBid;->e:I

    iput v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->e:I

    iget-wide v0, p1, Lcom/pubmatic/sdk/openwrap/core/POBBid;->v:J

    iput-wide v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->v:J

    iget-object v0, p1, Lcom/pubmatic/sdk/openwrap/core/POBBid;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->f:Ljava/lang/String;

    iget-object v0, p1, Lcom/pubmatic/sdk/openwrap/core/POBBid;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->h:Ljava/lang/String;

    iget-object v0, p1, Lcom/pubmatic/sdk/openwrap/core/POBBid;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->i:Ljava/lang/String;

    iget-object v0, p1, Lcom/pubmatic/sdk/openwrap/core/POBBid;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->j:Ljava/lang/String;

    iget-object v0, p1, Lcom/pubmatic/sdk/openwrap/core/POBBid;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->k:Ljava/lang/String;

    iget v0, p1, Lcom/pubmatic/sdk/openwrap/core/POBBid;->l:I

    iput v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->l:I

    iget v0, p1, Lcom/pubmatic/sdk/openwrap/core/POBBid;->m:I

    iput v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->m:I

    iget-object v0, p1, Lcom/pubmatic/sdk/openwrap/core/POBBid;->n:Ljava/util/List;

    iput-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->n:Ljava/util/List;

    iget-object v0, p1, Lcom/pubmatic/sdk/openwrap/core/POBBid;->o:Ljava/util/List;

    iput-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->o:Ljava/util/List;

    iget-boolean v0, p1, Lcom/pubmatic/sdk/openwrap/core/POBBid;->t:Z

    iput-boolean v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->t:Z

    iget-object v0, p1, Lcom/pubmatic/sdk/openwrap/core/POBBid;->s:Ljava/lang/String;

    iput-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->s:Ljava/lang/String;

    iget-object v0, p1, Lcom/pubmatic/sdk/openwrap/core/POBBid;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->g:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/pubmatic/sdk/openwrap/core/POBBid;->w:Z

    iput-boolean v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->w:Z

    iget-object v0, p1, Lcom/pubmatic/sdk/openwrap/core/POBBid;->q:Lorg/json/JSONObject;

    iput-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->q:Lorg/json/JSONObject;

    iget-object p1, p1, Lcom/pubmatic/sdk/openwrap/core/POBBid;->r:Ljava/lang/String;

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->r:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/pubmatic/sdk/openwrap/core/POBBid;I)I
    .locals 0

    iput p1, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->m:I

    return p1
.end method

.method static synthetic b(Lcom/pubmatic/sdk/openwrap/core/POBBid;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/pubmatic/sdk/openwrap/core/POBBid;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->g:Ljava/lang/String;

    return-object p1
.end method

.method public static build(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/pubmatic/sdk/openwrap/core/POBBid;
    .locals 9

    new-instance v0, Lcom/pubmatic/sdk/openwrap/core/POBBid;

    invoke-direct {v0}, Lcom/pubmatic/sdk/openwrap/core/POBBid;-><init>()V

    iput-object p1, v0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->q:Lorg/json/JSONObject;

    const-string v1, "impid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->a:Ljava/lang/String;

    const-string v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->b:Ljava/lang/String;

    const-string v1, "price"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->c:D

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    cmpl-double v7, v1, v5

    if-lez v7, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput v1, v0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->d:I

    const-string v1, "adm"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->i:Ljava/lang/String;

    const-string v1, "crid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->h:Ljava/lang/String;

    iput-object p0, v0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->f:Ljava/lang/String;

    const-string p0, "dealid"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/pubmatic/sdk/common/utility/POBUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iput-object p0, v0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->j:Ljava/lang/String;

    :cond_1
    const-string p0, "nurl"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->k:Ljava/lang/String;

    const-string p0, "w"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->l:I

    const-string p0, "h"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->m:I

    const-string p0, "lurl"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->r:Ljava/lang/String;

    const-string p0, "ext"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_7

    const-string p1, "winner"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    iput-boolean v3, v0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->w:Z

    const-string p1, "crtype"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->s:Ljava/lang/String;

    const-string v1, "video"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, v0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->t:Z

    const-string p1, "refreshInterval"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iget-boolean v2, v0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->t:Z

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    const-string v1, "banner"

    :goto_2
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "POBBid"

    if-eqz v1, :cond_5

    const-string v3, "clientconfig"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v3, "refreshinterval"

    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iget-boolean v3, v0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->t:Z

    if-eqz v3, :cond_5

    const-string v3, "reward"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v3, "rewards"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_5

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->o:Ljava/util/List;

    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_5

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_4

    const-string v6, "type"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "value"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, ""

    invoke-virtual {v5, v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    new-array v5, v4, [Ljava/lang/Object;

    const-string v7, "Received invalid reward values"

    invoke-static {v2, v7, v5}, Lcom/pubmatic/sdk/common/log/PMLog;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x0

    :goto_4
    if-lez v5, :cond_4

    iget-object v7, v0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->o:Ljava/util/List;

    new-instance v8, Lcom/pubmatic/sdk/openwrap/core/POBReward;

    invoke-direct {v8, v6, v5}, Lcom/pubmatic/sdk/openwrap/core/POBReward;-><init>(Ljava/lang/String;I)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    const/16 v1, 0xa

    invoke-static {p1, v1}, Lcom/pubmatic/sdk/common/utility/POBUtils;->getValidRefreshInterval(II)I

    move-result p1

    iput p1, v0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->e:I

    const-string p1, "summary"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_6

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->n:Ljava/util/List;

    const/4 v1, 0x0

    :goto_5
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_6

    :try_start_1
    iget-object v3, v0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->n:Ljava/util/List;

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lcom/pubmatic/sdk/openwrap/core/POBBid$POBSummary;->a(Lorg/json/JSONObject;)Lcom/pubmatic/sdk/openwrap/core/POBBid$POBSummary;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    move-exception v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception on parsing summary object : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_6
    const-string p1, "prebid"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_7

    const-string p1, "targeting"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_7

    :try_start_2
    new-instance p1, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {p1, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, v0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->p:Ljava/util/Map;

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->p:Ljava/util/Map;

    invoke-interface {v5, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_7

    :catch_2
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception on parsing prebid object : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v4, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    return-object v0
.end method

.method static synthetic c(Lcom/pubmatic/sdk/openwrap/core/POBBid;)I
    .locals 0

    iget p0, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->l:I

    return p0
.end method

.method public static create(Lcom/pubmatic/sdk/openwrap/core/POBBid;Ljava/util/Map;)Lcom/pubmatic/sdk/openwrap/core/POBBid;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pubmatic/sdk/openwrap/core/POBBid;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/pubmatic/sdk/openwrap/core/POBBid;"
        }
    .end annotation

    new-instance v0, Lcom/pubmatic/sdk/openwrap/core/POBBid;

    invoke-direct {v0}, Lcom/pubmatic/sdk/openwrap/core/POBBid;-><init>()V

    invoke-static {v0, p0}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->a(Lcom/pubmatic/sdk/openwrap/core/POBBid;Lcom/pubmatic/sdk/openwrap/core/POBBid;)V

    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->p:Ljava/util/Map;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->p:Ljava/util/Map;

    iput-object p0, v0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->p:Ljava/util/Map;

    goto :goto_0

    :cond_0
    iput-object p1, v0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->p:Ljava/util/Map;

    :goto_0
    return-object v0
.end method

.method public static create(Lcom/pubmatic/sdk/openwrap/core/POBBid;ZLcom/pubmatic/sdk/common/POBDataType$POBBidTargetingType;)Lcom/pubmatic/sdk/openwrap/core/POBBid;
    .locals 1

    new-instance v0, Lcom/pubmatic/sdk/openwrap/core/POBBid;

    invoke-direct {v0}, Lcom/pubmatic/sdk/openwrap/core/POBBid;-><init>()V

    invoke-static {v0, p0}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->a(Lcom/pubmatic/sdk/openwrap/core/POBBid;Lcom/pubmatic/sdk/openwrap/core/POBBid;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->serverBidTargeting(Lcom/pubmatic/sdk/common/POBDataType$POBBidTargetingType;)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->clientBidTargeting(Lcom/pubmatic/sdk/common/POBDataType$POBBidTargetingType;)Ljava/util/Map;

    move-result-object p0

    :goto_0
    iput-object p0, v0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->p:Ljava/util/Map;

    return-object v0
.end method

.method public static createWithRefreshInterval(Lcom/pubmatic/sdk/openwrap/core/POBBid;I)Lcom/pubmatic/sdk/openwrap/core/POBBid;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->p:Ljava/util/Map;

    invoke-static {p0, v0}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->create(Lcom/pubmatic/sdk/openwrap/core/POBBid;Ljava/util/Map;)Lcom/pubmatic/sdk/openwrap/core/POBBid;

    move-result-object p0

    iput p1, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->e:I

    return-object p0
.end method

.method static synthetic d(Lcom/pubmatic/sdk/openwrap/core/POBBid;)I
    .locals 0

    iget p0, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->m:I

    return p0
.end method

.method static synthetic e(Lcom/pubmatic/sdk/openwrap/core/POBBid;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->p:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public buildWithRefreshAndExpiryTimeout(II)Lcom/pubmatic/sdk/common/base/POBAdDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->p:Ljava/util/Map;

    invoke-static {p0, v0}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->create(Lcom/pubmatic/sdk/openwrap/core/POBBid;Ljava/util/Map;)Lcom/pubmatic/sdk/openwrap/core/POBBid;

    move-result-object v0

    iput p1, v0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->e:I

    int-to-long p1, p2

    iput-wide p1, v0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->v:J

    return-object v0
.end method

.method public clientBidTargeting(Lcom/pubmatic/sdk/common/POBDataType$POBBidTargetingType;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pubmatic/sdk/common/POBDataType$POBBidTargetingType;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->a()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/pubmatic/sdk/common/POBDataType$POBBidTargetingType;->WINNING:Lcom/pubmatic/sdk/common/POBDataType$POBBidTargetingType;

    if-ne p1, v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->f:Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-string v5, "%s_%s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/pubmatic/sdk/common/POBDataType$POBBidTargetingType;->BOTH:Lcom/pubmatic/sdk/common/POBDataType$POBBidTargetingType;

    if-ne p1, v2, :cond_2

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_2
    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/pubmatic/sdk/openwrap/core/POBBid;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->b:Ljava/lang/String;

    check-cast p1, Lcom/pubmatic/sdk/openwrap/core/POBBid;

    invoke-virtual {p1}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getBidId()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getContentHeight()I
    .locals 1

    iget v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->m:I

    return v0
.end method

.method public getContentWidth()I
    .locals 1

    iget v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->l:I

    return v0
.end method

.method public getCreative()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getCreativeId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getCreativeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->s:Ljava/lang/String;

    return-object v0
.end method

.method public getDealId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstReward()Lcom/pubmatic/sdk/openwrap/core/POBReward;
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->o:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->o:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pubmatic/sdk/openwrap/core/POBReward;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->m:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getImpressionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getPartnerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getPartnerName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()D
    .locals 2

    iget-wide v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->c:D

    return-wide v0
.end method

.method public getRawBid()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->q:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getRefreshInterval()I
    .locals 1

    iget v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->e:I

    return v0
.end method

.method public getRemainingExpirationTime()I
    .locals 6

    iget-wide v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->v:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->u:J

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public getRenderableContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->d:I

    return v0
.end method

.method public getSummary()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/pubmatic/sdk/openwrap/core/POBBid$POBSummary;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->n:Ljava/util/List;

    return-object v0
.end method

.method public getTargetingInfo()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->p:Ljava/util/Map;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getTargetingInfoWithPricePrecision(I)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iget-wide v1, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->c:D

    const-string v3, "pwtbst"

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    cmpl-double v7, v1, v5

    if-lez v7, :cond_1

    const/4 v5, 0x1

    const-string v6, "pwtecp"

    if-lez p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "f"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v5, [Ljava/lang/Object;

    iget-wide v7, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->c:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-interface {v0, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->b:Ljava/lang/String;

    const-string v1, "pwtsid"

    invoke-direct {p0, v0, v1, p1}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->j:Ljava/lang/String;

    const-string v1, "pwtdid"

    invoke-direct {p0, v0, v1, p1}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->f:Ljava/lang/String;

    const-string v1, "pwtpid"

    invoke-direct {p0, v0, v1, p1}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "pwtplt"

    const-string v1, "inapp"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->l:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->m:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "pwtsz"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->p:Ljava/util/Map;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->p:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_2
    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->l:I

    return v0
.end method

.method public getlURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getnURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->k:Ljava/lang/String;

    return-object v0
.end method

.method public hasWon()Z
    .locals 1

    iget-boolean v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->x:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->q:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isExpired()Z
    .locals 1

    invoke-virtual {p0}, Lcom/pubmatic/sdk/openwrap/core/POBBid;->getRemainingExpirationTime()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isServerSideAuctionWinner()Z
    .locals 1

    iget-boolean v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->w:Z

    return v0
.end method

.method public isVideo()Z
    .locals 1

    iget-boolean v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->t:Z

    return v0
.end method

.method public serverBidTargeting(Lcom/pubmatic/sdk/common/POBDataType$POBBidTargetingType;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pubmatic/sdk/common/POBDataType$POBBidTargetingType;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->p:Ljava/util/Map;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/pubmatic/sdk/common/POBDataType$POBBidTargetingType;->PARTNER_SPECIFIC:Lcom/pubmatic/sdk/common/POBDataType$POBBidTargetingType;

    if-ne p1, v0, :cond_2

    new-instance p1, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->p:Ljava/util/Map;

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->f:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "_%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->p:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object p1

    :cond_2
    iget-object p1, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->p:Ljava/util/Map;

    return-object p1
.end method

.method public setHasWon(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->x:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Price="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->c:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PartnerName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "impressionId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bidId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "creativeId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->n:Ljava/util/List;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Summary List:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->n:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->o:Ljava/util/List;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reward List:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->o:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->p:Ljava/util/Map;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Prebid targating Info:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/pubmatic/sdk/openwrap/core/POBBid;->p:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
