.class public Lcom/pubmatic/sdk/common/models/POBProfileInfo;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pubmatic/sdk/common/models/POBPartnerInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build(Lorg/json/JSONObject;)Lcom/pubmatic/sdk/common/models/POBProfileInfo;
    .locals 4

    new-instance v0, Lcom/pubmatic/sdk/common/models/POBProfileInfo;

    invoke-direct {v0}, Lcom/pubmatic/sdk/common/models/POBProfileInfo;-><init>()V

    const-string v1, "pid"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/pubmatic/sdk/common/models/POBProfileInfo;->a:I

    const-string v1, "pubid"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/pubmatic/sdk/common/models/POBProfileInfo;->b:I

    const-string v1, "pdvid"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/pubmatic/sdk/common/models/POBProfileInfo;->c:I

    const-string v1, "adserver"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/pubmatic/sdk/common/models/POBProfileInfo;->d:Ljava/lang/String;

    const-string v1, "adapters"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/pubmatic/sdk/common/models/POBProfileInfo;->e:Ljava/util/List;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    iget-object v3, v0, Lcom/pubmatic/sdk/common/models/POBProfileInfo;->e:Ljava/util/List;

    invoke-static {v2}, Lcom/pubmatic/sdk/common/models/POBPartnerInfo;->build(Lorg/json/JSONObject;)Lcom/pubmatic/sdk/common/models/POBPartnerInfo;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getAdServerName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/common/models/POBProfileInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getPartnerList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/pubmatic/sdk/common/models/POBPartnerInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pubmatic/sdk/common/models/POBProfileInfo;->e:Ljava/util/List;

    return-object v0
.end method

.method public getProfileId()I
    .locals 1

    iget v0, p0, Lcom/pubmatic/sdk/common/models/POBProfileInfo;->a:I

    return v0
.end method

.method public getPublisherId()I
    .locals 1

    iget v0, p0, Lcom/pubmatic/sdk/common/models/POBProfileInfo;->b:I

    return v0
.end method

.method public getVersionId()I
    .locals 1

    iget v0, p0, Lcom/pubmatic/sdk/common/models/POBProfileInfo;->c:I

    return v0
.end method
