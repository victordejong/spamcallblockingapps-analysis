.class public Lcom/pubmatic/sdk/common/models/POBAdResponse;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/pubmatic/sdk/common/base/POBBidsProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubmatic/sdk/common/models/POBAdResponse$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/pubmatic/sdk/common/base/POBAdDescriptor;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/pubmatic/sdk/common/base/POBBidsProvider;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private d:Lcom/pubmatic/sdk/common/base/POBAdDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Lorg/json/JSONObject;

.field private i:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pubmatic/sdk/common/models/POBAdResponse;->a:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/pubmatic/sdk/common/models/POBAdResponse$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/pubmatic/sdk/common/models/POBAdResponse;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/pubmatic/sdk/common/models/POBAdResponse;I)I
    .locals 0

    iput p1, p0, Lcom/pubmatic/sdk/common/models/POBAdResponse;->g:I

    return p1
.end method

.method static synthetic a(Lcom/pubmatic/sdk/common/models/POBAdResponse;Lcom/pubmatic/sdk/common/base/POBAdDescriptor;)Lcom/pubmatic/sdk/common/base/POBAdDescriptor;
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/common/models/POBAdResponse;->d:Lcom/pubmatic/sdk/common/base/POBAdDescriptor;

    return-object p1
.end method

.method static synthetic a(Lcom/pubmatic/sdk/common/models/POBAdResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/common/models/POBAdResponse;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/pubmatic/sdk/common/models/POBAdResponse;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/common/models/POBAdResponse;->a:Ljava/util/List;

    return-object p0
.end method

.method static synthetic a(Lcom/pubmatic/sdk/common/models/POBAdResponse;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/common/models/POBAdResponse;->a:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/pubmatic/sdk/common/models/POBAdResponse;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/common/models/POBAdResponse;->h:Lorg/json/JSONObject;

    return-object p1
.end method

.method static synthetic a(Lcom/pubmatic/sdk/common/models/POBAdResponse;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/pubmatic/sdk/common/models/POBAdResponse;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/pubmatic/sdk/common/models/POBAdResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/common/models/POBAdResponse;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/pubmatic/sdk/common/models/POBAdResponse;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/common/models/POBAdResponse;->b:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/pubmatic/sdk/common/models/POBAdResponse;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/common/models/POBAdResponse;->b:Ljava/util/List;

    return-object p1
.end method

.method static synthetic c(Lcom/pubmatic/sdk/common/models/POBAdResponse;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/common/models/POBAdResponse;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic c(Lcom/pubmatic/sdk/common/models/POBAdResponse;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/common/models/POBAdResponse;->c:Ljava/util/List;

    return-object p1
.end method

.method static synthetic d(Lcom/pubmatic/sdk/common/models/POBAdResponse;)Lcom/pubmatic/sdk/common/base/POBAdDescriptor;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/common/models/POBAdResponse;->d:Lcom/pubmatic/sdk/common/base/POBAdDescriptor;

    return-object p0
.end method

.method public static defaultResponse()Lcom/pubmatic/sdk/common/models/POBAdResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/pubmatic/sdk/common/base/POBAdDescriptor;",
            ">()",
            "Lcom/pubmatic/sdk/common/models/POBAdResponse<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/pubmatic/sdk/common/models/POBAdResponse;

    invoke-direct {v0}, Lcom/pubmatic/sdk/common/models/POBAdResponse;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/pubmatic/sdk/common/models/POBAdResponse;->a:Ljava/util/List;

    const/16 v1, 0x1e

    iput v1, v0, Lcom/pubmatic/sdk/common/models/POBAdResponse;->g:I

    const-string v1, ""

    iput-object v1, v0, Lcom/pubmatic/sdk/common/models/POBAdResponse;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/pubmatic/sdk/common/models/POBAdResponse;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/pubmatic/sdk/common/models/POBAdResponse;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/common/models/POBAdResponse;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/pubmatic/sdk/common/models/POBAdResponse;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/common/models/POBAdResponse;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lcom/pubmatic/sdk/common/models/POBAdResponse;)I
    .locals 0

    iget p0, p0, Lcom/pubmatic/sdk/common/models/POBAdResponse;->g:I

    return p0
.end method

.method static synthetic h(Lcom/pubmatic/sdk/common/models/POBAdResponse;)Lorg/json/JSONObject;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/common/models/POBAdResponse;->h:Lorg/json/JSONObject;

    return-object p0
.end method

.method static synthetic i(Lcom/pubmatic/sdk/common/models/POBAdResponse;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/pubmatic/sdk/common/models/POBAdResponse;->i:Z

    return p0
.end method


# virtual methods
.method public getBid(Ljava/lang/String;)Lcom/pubmatic/sdk/common/base/POBAdDescriptor;
    .locals 4

    invoke-static {p1}, Lcom/pubmatic/sdk/common/utility/POBUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/common/models/POBAdResponse;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pubmatic/sdk/common/base/POBAdDescriptor;

    invoke-interface {v2}, Lcom/pubmatic/sdk/common/base/POBAdDescriptor;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    return-object v1
.end method

.method public getBids()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pubmatic/sdk/common/models/POBAdResponse;->a:Ljava/util/List;

    return-object v0
.end method

.method public getClientSidePartnerBids()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pubmatic/sdk/common/models/POBAdResponse;->b:Ljava/util/List;

    return-object v0
.end method

.method public getCustomData()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/common/models/POBAdResponse;->h:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getLogger()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/common/models/POBAdResponse;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshInterval()I
    .locals 1

    iget v0, p0, Lcom/pubmatic/sdk/common/models/POBAdResponse;->g:I

    return v0
.end method

.method public getServerSidePartnerBids()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pubmatic/sdk/common/models/POBAdResponse;->c:Ljava/util/List;

    return-object v0
.end method

.method public getTargetingInfo()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-boolean v1, p0, Lcom/pubmatic/sdk/common/models/POBAdResponse;->i:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/pubmatic/sdk/common/models/POBAdResponse;->getBids()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pubmatic/sdk/common/base/POBAdDescriptor;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/pubmatic/sdk/common/base/POBAdDescriptor;->getTargetingInfo()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "POBAdResponse"

    const-string v4, "Failed to add targeting info"

    invoke-static {v3, v4, v2}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/pubmatic/sdk/common/models/POBAdResponse;->d:Lcom/pubmatic/sdk/common/base/POBAdDescriptor;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/pubmatic/sdk/common/base/POBAdDescriptor;->getTargetingInfo()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_3

    const/4 v0, 0x0

    :cond_3
    return-object v0
.end method

.method public getTracker()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/common/models/POBAdResponse;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getWinningBid()Lcom/pubmatic/sdk/common/base/POBAdDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pubmatic/sdk/common/models/POBAdResponse;->d:Lcom/pubmatic/sdk/common/base/POBAdDescriptor;

    return-object v0
.end method

.method public isSendAllBidsEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/pubmatic/sdk/common/models/POBAdResponse;->i:Z

    return v0
.end method
