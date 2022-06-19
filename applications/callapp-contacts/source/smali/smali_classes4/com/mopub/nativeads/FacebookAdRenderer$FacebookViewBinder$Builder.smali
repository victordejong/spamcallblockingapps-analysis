.class public Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private g:I

.field private h:I

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;->f:Ljava/util/Map;

    .line 345
    iput p1, p0, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;->a:I

    .line 346
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;->f:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;)I
    .locals 0

    .line 330
    iget p0, p0, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;->a:I

    return p0
.end method

.method static synthetic b(Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;)I
    .locals 0

    .line 330
    iget p0, p0, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;->b:I

    return p0
.end method

.method static synthetic c(Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;)I
    .locals 0

    .line 330
    iget p0, p0, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;->c:I

    return p0
.end method

.method static synthetic d(Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;)I
    .locals 0

    .line 330
    iget p0, p0, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;->d:I

    return p0
.end method

.method static synthetic e(Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;)I
    .locals 0

    .line 330
    iget p0, p0, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;->e:I

    return p0
.end method

.method static synthetic f(Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;)Ljava/util/Map;
    .locals 0

    .line 330
    iget-object p0, p0, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;->f:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic g(Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;)I
    .locals 0

    .line 330
    iget p0, p0, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;->g:I

    return p0
.end method

.method static synthetic h(Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;)I
    .locals 0

    .line 330
    iget p0, p0, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;->h:I

    return p0
.end method

.method static synthetic i(Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;)I
    .locals 0

    .line 330
    iget p0, p0, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;->i:I

    return p0
.end method

.method static synthetic j(Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;)I
    .locals 0

    .line 330
    iget p0, p0, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;->j:I

    return p0
.end method


# virtual methods
.method public final adChoicesRelativeLayoutId(I)Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;
    .locals 0

    .line 369
    iput p1, p0, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;->e:I

    return-object p0
.end method

.method public adIconViewId(I)Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;
    .locals 0

    .line 393
    iput p1, p0, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;->h:I

    return-object p0
.end method

.method public final addExtra(Ljava/lang/String;I)Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;->f:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public advertiserNameId(I)Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;
    .locals 0

    .line 399
    iput p1, p0, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;->i:I

    return-object p0
.end method

.method public build()Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder;
    .locals 2

    .line 411
    new-instance v0, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder;-><init>(Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;Lcom/mopub/nativeads/FacebookAdRenderer$1;)V

    return-object v0
.end method

.method public final callToActionId(I)Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;
    .locals 0

    .line 363
    iput p1, p0, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;->d:I

    return-object p0
.end method

.method public final extras(Ljava/util/Map;)Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;"
        }
    .end annotation

    .line 375
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;->f:Ljava/util/Map;

    return-object p0
.end method

.method public mediaViewId(I)Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;
    .locals 0

    .line 387
    iput p1, p0, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;->g:I

    return-object p0
.end method

.method public sponsoredNameId(I)Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;
    .locals 0

    .line 405
    iput p1, p0, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;->j:I

    return-object p0
.end method

.method public final textId(I)Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;
    .locals 0

    .line 357
    iput p1, p0, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;->c:I

    return-object p0
.end method

.method public final titleId(I)Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;
    .locals 0

    .line 351
    iput p1, p0, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;->b:I

    return-object p0
.end method
