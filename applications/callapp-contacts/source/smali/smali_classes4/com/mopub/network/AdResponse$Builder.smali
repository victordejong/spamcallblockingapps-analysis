.class public Lcom/mopub/network/AdResponse$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/network/AdResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private A:Ljava/lang/String;

.field private B:Lorg/json/JSONObject;

.field private C:Ljava/lang/String;

.field private D:Lcom/mopub/common/MoPub$BrowserAgent;

.field private E:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private F:Z

.field private G:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/mopub/common/ViewabilityVendor;",
            ">;"
        }
    .end annotation
.end field

.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/Integer;

.field private k:Lcom/mopub/network/ImpressionData;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/lang/String;

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/Integer;

.field private u:Ljava/lang/Integer;

.field private v:Ljava/lang/Integer;

.field private w:Ljava/lang/Integer;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 374
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->l:Ljava/util/List;

    .line 375
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->m:Ljava/util/List;

    .line 377
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->o:Ljava/util/List;

    .line 378
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->p:Ljava/util/List;

    .line 379
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->q:Ljava/util/List;

    .line 380
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->r:Ljava/util/List;

    .line 397
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->E:Ljava/util/Map;

    const/4 v0, 0x0

    .line 399
    iput-boolean v0, p0, Lcom/mopub/network/AdResponse$Builder;->F:Z

    const/4 v0, 0x0

    .line 401
    iput-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->G:Ljava/util/Set;

    return-void
.end method

.method static synthetic A(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;
    .locals 0

    .line 360
    iget-object p0, p0, Lcom/mopub/network/AdResponse$Builder;->A:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic B(Lcom/mopub/network/AdResponse$Builder;)Lorg/json/JSONObject;
    .locals 0

    .line 360
    iget-object p0, p0, Lcom/mopub/network/AdResponse$Builder;->B:Lorg/json/JSONObject;

    return-object p0
.end method

.method static synthetic C(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;
    .locals 0

    .line 360
    iget-object p0, p0, Lcom/mopub/network/AdResponse$Builder;->C:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic D(Lcom/mopub/network/AdResponse$Builder;)Lcom/mopub/common/MoPub$BrowserAgent;
    .locals 0

    .line 360
    iget-object p0, p0, Lcom/mopub/network/AdResponse$Builder;->D:Lcom/mopub/common/MoPub$BrowserAgent;

    return-object p0
.end method

.method static synthetic E(Lcom/mopub/network/AdResponse$Builder;)Ljava/util/Map;
    .locals 0

    .line 360
    iget-object p0, p0, Lcom/mopub/network/AdResponse$Builder;->E:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic F(Lcom/mopub/network/AdResponse$Builder;)Z
    .locals 0

    .line 360
    iget-boolean p0, p0, Lcom/mopub/network/AdResponse$Builder;->F:Z

    return p0
.end method

.method static synthetic G(Lcom/mopub/network/AdResponse$Builder;)Ljava/util/Set;
    .locals 0

    .line 360
    iget-object p0, p0, Lcom/mopub/network/AdResponse$Builder;->G:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic a(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;
    .locals 0

    .line 360
    iget-object p0, p0, Lcom/mopub/network/AdResponse$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;
    .locals 0

    .line 360
    iget-object p0, p0, Lcom/mopub/network/AdResponse$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;
    .locals 0

    .line 360
    iget-object p0, p0, Lcom/mopub/network/AdResponse$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;
    .locals 0

    .line 360
    iget-object p0, p0, Lcom/mopub/network/AdResponse$Builder;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;
    .locals 0

    .line 360
    iget-object p0, p0, Lcom/mopub/network/AdResponse$Builder;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;
    .locals 0

    .line 360
    iget-object p0, p0, Lcom/mopub/network/AdResponse$Builder;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;
    .locals 0

    .line 360
    iget-object p0, p0, Lcom/mopub/network/AdResponse$Builder;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;
    .locals 0

    .line 360
    iget-object p0, p0, Lcom/mopub/network/AdResponse$Builder;->h:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic i(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;
    .locals 0

    .line 360
    iget-object p0, p0, Lcom/mopub/network/AdResponse$Builder;->i:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic j(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 360
    iget-object p0, p0, Lcom/mopub/network/AdResponse$Builder;->j:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic k(Lcom/mopub/network/AdResponse$Builder;)Lcom/mopub/network/ImpressionData;
    .locals 0

    .line 360
    iget-object p0, p0, Lcom/mopub/network/AdResponse$Builder;->k:Lcom/mopub/network/ImpressionData;

    return-object p0
.end method

.method static synthetic l(Lcom/mopub/network/AdResponse$Builder;)Ljava/util/List;
    .locals 0

    .line 360
    iget-object p0, p0, Lcom/mopub/network/AdResponse$Builder;->l:Ljava/util/List;

    return-object p0
.end method

.method static synthetic m(Lcom/mopub/network/AdResponse$Builder;)Ljava/util/List;
    .locals 0

    .line 360
    iget-object p0, p0, Lcom/mopub/network/AdResponse$Builder;->m:Ljava/util/List;

    return-object p0
.end method

.method static synthetic n(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;
    .locals 0

    .line 360
    iget-object p0, p0, Lcom/mopub/network/AdResponse$Builder;->n:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic o(Lcom/mopub/network/AdResponse$Builder;)Ljava/util/List;
    .locals 0

    .line 360
    iget-object p0, p0, Lcom/mopub/network/AdResponse$Builder;->o:Ljava/util/List;

    return-object p0
.end method

.method static synthetic p(Lcom/mopub/network/AdResponse$Builder;)Ljava/util/List;
    .locals 0

    .line 360
    iget-object p0, p0, Lcom/mopub/network/AdResponse$Builder;->p:Ljava/util/List;

    return-object p0
.end method

.method static synthetic q(Lcom/mopub/network/AdResponse$Builder;)Ljava/util/List;
    .locals 0

    .line 360
    iget-object p0, p0, Lcom/mopub/network/AdResponse$Builder;->q:Ljava/util/List;

    return-object p0
.end method

.method static synthetic r(Lcom/mopub/network/AdResponse$Builder;)Ljava/util/List;
    .locals 0

    .line 360
    iget-object p0, p0, Lcom/mopub/network/AdResponse$Builder;->r:Ljava/util/List;

    return-object p0
.end method

.method static synthetic s(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;
    .locals 0

    .line 360
    iget-object p0, p0, Lcom/mopub/network/AdResponse$Builder;->s:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic t(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 360
    iget-object p0, p0, Lcom/mopub/network/AdResponse$Builder;->t:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic u(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 360
    iget-object p0, p0, Lcom/mopub/network/AdResponse$Builder;->u:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic v(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 360
    iget-object p0, p0, Lcom/mopub/network/AdResponse$Builder;->v:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic w(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 360
    iget-object p0, p0, Lcom/mopub/network/AdResponse$Builder;->w:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic x(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;
    .locals 0

    .line 360
    iget-object p0, p0, Lcom/mopub/network/AdResponse$Builder;->x:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic y(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;
    .locals 0

    .line 360
    iget-object p0, p0, Lcom/mopub/network/AdResponse$Builder;->y:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic z(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;
    .locals 0

    .line 360
    iget-object p0, p0, Lcom/mopub/network/AdResponse$Builder;->z:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/mopub/network/AdResponse;
    .locals 2

    .line 582
    new-instance v0, Lcom/mopub/network/AdResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mopub/network/AdResponse;-><init>(Lcom/mopub/network/AdResponse$Builder;Lcom/mopub/network/AdResponse$1;)V

    return-object v0
.end method

.method public setAdGroupId(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0

    .line 409
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method public setAdTimeoutDelayMilliseconds(Ljava/lang/Integer;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0

    .line 518
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->v:Ljava/lang/Integer;

    return-object p0
.end method

.method public setAdType(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0

    .line 404
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method public setAdUnitId(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0

    .line 414
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method public setAfterLoadFailUrls(Ljava/util/List;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/mopub/network/AdResponse$Builder;"
        }
    .end annotation

    .line 500
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 501
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->r:Ljava/util/List;

    return-object p0
.end method

.method public setAfterLoadSuccessUrls(Ljava/util/List;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/mopub/network/AdResponse$Builder;"
        }
    .end annotation

    .line 494
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 495
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->q:Ljava/util/List;

    return-object p0
.end method

.method public setAfterLoadUrls(Ljava/util/List;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/mopub/network/AdResponse$Builder;"
        }
    .end annotation

    .line 488
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 489
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->p:Ljava/util/List;

    return-object p0
.end method

.method public setAllowCustomClose(Z)Lcom/mopub/network/AdResponse$Builder;
    .locals 0

    .line 572
    iput-boolean p1, p0, Lcom/mopub/network/AdResponse$Builder;->F:Z

    return-object p0
.end method

.method public setBannerImpressionMinVisibleDips(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0

    .line 528
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->x:Ljava/lang/String;

    return-object p0
.end method

.method public setBannerImpressionMinVisibleMs(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0

    .line 533
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->y:Ljava/lang/String;

    return-object p0
.end method

.method public setBaseAdClassName(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0

    .line 553
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->C:Ljava/lang/String;

    return-object p0
.end method

.method public setBeforeLoadUrls(Ljava/util/List;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/mopub/network/AdResponse$Builder;"
        }
    .end annotation

    .line 481
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 483
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->o:Ljava/util/List;

    return-object p0
.end method

.method public setBrowserAgent(Lcom/mopub/common/MoPub$BrowserAgent;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0

    .line 558
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->D:Lcom/mopub/common/MoPub$BrowserAgent;

    return-object p0
.end method

.method public setClickTrackingUrls(Ljava/util/List;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/mopub/network/AdResponse$Builder;"
        }
    .end annotation

    .line 462
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 464
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->l:Ljava/util/List;

    return-object p0
.end method

.method public setDimensions(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0

    .line 512
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->t:Ljava/lang/Integer;

    .line 513
    iput-object p2, p0, Lcom/mopub/network/AdResponse$Builder;->u:Ljava/lang/Integer;

    return-object p0
.end method

.method public setDspCreativeId(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0

    .line 538
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->z:Ljava/lang/String;

    return-object p0
.end method

.method public setFailoverUrl(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0

    .line 476
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->n:Ljava/lang/String;

    return-object p0
.end method

.method public setFullAdType(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0

    .line 419
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->d:Ljava/lang/String;

    return-object p0
.end method

.method public setImpressionData(Lcom/mopub/network/ImpressionData;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0

    .line 457
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->k:Lcom/mopub/network/ImpressionData;

    return-object p0
.end method

.method public setImpressionTrackingUrls(Ljava/util/List;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/mopub/network/AdResponse$Builder;"
        }
    .end annotation

    .line 469
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 471
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->m:Ljava/util/List;

    return-object p0
.end method

.method public setJsonBody(Lorg/json/JSONObject;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0

    .line 548
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->B:Lorg/json/JSONObject;

    return-object p0
.end method

.method public setNetworkType(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0

    .line 424
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->e:Ljava/lang/String;

    return-object p0
.end method

.method public setRefreshTimeMilliseconds(Ljava/lang/Integer;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0

    .line 523
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->w:Ljava/lang/Integer;

    return-object p0
.end method

.method public setRequestId(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0

    .line 506
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->s:Ljava/lang/String;

    return-object p0
.end method

.method public setResponseBody(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0

    .line 543
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->A:Ljava/lang/String;

    return-object p0
.end method

.method public setRewardedAdCompletionUrl(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0

    .line 447
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->i:Ljava/lang/String;

    return-object p0
.end method

.method public setRewardedAdCurrencyAmount(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0

    .line 436
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->g:Ljava/lang/String;

    return-object p0
.end method

.method public setRewardedAdCurrencyName(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0

    .line 430
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->f:Ljava/lang/String;

    return-object p0
.end method

.method public setRewardedCurrencies(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0

    .line 441
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->h:Ljava/lang/String;

    return-object p0
.end method

.method public setRewardedDuration(Ljava/lang/Integer;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0

    .line 452
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->j:Ljava/lang/Integer;

    return-object p0
.end method

.method public setServerExtras(Ljava/util/Map;)Lcom/mopub/network/AdResponse$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/mopub/network/AdResponse$Builder;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 564
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->E:Ljava/util/Map;

    goto :goto_0

    .line 566
    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->E:Ljava/util/Map;

    :goto_0
    return-object p0
.end method

.method public setViewabilityVendors(Ljava/util/Set;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/mopub/common/ViewabilityVendor;",
            ">;)",
            "Lcom/mopub/network/AdResponse$Builder;"
        }
    .end annotation

    .line 577
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->G:Ljava/util/Set;

    return-object p0
.end method
