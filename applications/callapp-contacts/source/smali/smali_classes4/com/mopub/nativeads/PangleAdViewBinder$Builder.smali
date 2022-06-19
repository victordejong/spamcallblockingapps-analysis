.class public final Lcom/mopub/nativeads/PangleAdViewBinder$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/nativeads/PangleAdViewBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Ljava/util/Map;
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
.method public constructor <init>(I)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/mopub/nativeads/PangleAdViewBinder$Builder;->a:I

    .line 26
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/mopub/nativeads/PangleAdViewBinder$Builder;->i:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/mopub/nativeads/PangleAdViewBinder$Builder;)I
    .locals 0

    .line 10
    iget p0, p0, Lcom/mopub/nativeads/PangleAdViewBinder$Builder;->a:I

    return p0
.end method

.method static synthetic b(Lcom/mopub/nativeads/PangleAdViewBinder$Builder;)I
    .locals 0

    .line 10
    iget p0, p0, Lcom/mopub/nativeads/PangleAdViewBinder$Builder;->b:I

    return p0
.end method

.method static synthetic c(Lcom/mopub/nativeads/PangleAdViewBinder$Builder;)I
    .locals 0

    .line 10
    iget p0, p0, Lcom/mopub/nativeads/PangleAdViewBinder$Builder;->c:I

    return p0
.end method

.method static synthetic d(Lcom/mopub/nativeads/PangleAdViewBinder$Builder;)I
    .locals 0

    .line 10
    iget p0, p0, Lcom/mopub/nativeads/PangleAdViewBinder$Builder;->d:I

    return p0
.end method

.method static synthetic e(Lcom/mopub/nativeads/PangleAdViewBinder$Builder;)I
    .locals 0

    .line 10
    iget p0, p0, Lcom/mopub/nativeads/PangleAdViewBinder$Builder;->e:I

    return p0
.end method

.method static synthetic f(Lcom/mopub/nativeads/PangleAdViewBinder$Builder;)I
    .locals 0

    .line 10
    iget p0, p0, Lcom/mopub/nativeads/PangleAdViewBinder$Builder;->f:I

    return p0
.end method

.method static synthetic g(Lcom/mopub/nativeads/PangleAdViewBinder$Builder;)I
    .locals 0

    .line 10
    iget p0, p0, Lcom/mopub/nativeads/PangleAdViewBinder$Builder;->g:I

    return p0
.end method

.method static synthetic h(Lcom/mopub/nativeads/PangleAdViewBinder$Builder;)Ljava/util/Map;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/mopub/nativeads/PangleAdViewBinder$Builder;->i:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic i(Lcom/mopub/nativeads/PangleAdViewBinder$Builder;)I
    .locals 0

    .line 10
    iget p0, p0, Lcom/mopub/nativeads/PangleAdViewBinder$Builder;->h:I

    return p0
.end method


# virtual methods
.method public final addExtra(Ljava/lang/String;I)Lcom/mopub/nativeads/PangleAdViewBinder$Builder;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/mopub/nativeads/PangleAdViewBinder$Builder;->i:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final addExtras(Ljava/util/Map;)Lcom/mopub/nativeads/PangleAdViewBinder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/mopub/nativeads/PangleAdViewBinder$Builder;"
        }
    .end annotation

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/mopub/nativeads/PangleAdViewBinder$Builder;->i:Ljava/util/Map;

    return-object p0
.end method

.method public final build()Lcom/mopub/nativeads/PangleAdViewBinder;
    .locals 2

    .line 88
    new-instance v0, Lcom/mopub/nativeads/PangleAdViewBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mopub/nativeads/PangleAdViewBinder;-><init>(Lcom/mopub/nativeads/PangleAdViewBinder$Builder;Lcom/mopub/nativeads/PangleAdViewBinder$1;)V

    return-object v0
.end method

.method public final callToActionId(I)Lcom/mopub/nativeads/PangleAdViewBinder$Builder;
    .locals 0

    .line 64
    iput p1, p0, Lcom/mopub/nativeads/PangleAdViewBinder$Builder;->d:I

    return-object p0
.end method

.method public final decriptionTextId(I)Lcom/mopub/nativeads/PangleAdViewBinder$Builder;
    .locals 0

    .line 58
    iput p1, p0, Lcom/mopub/nativeads/PangleAdViewBinder$Builder;->c:I

    return-object p0
.end method

.method public final iconImageId(I)Lcom/mopub/nativeads/PangleAdViewBinder$Builder;
    .locals 0

    .line 70
    iput p1, p0, Lcom/mopub/nativeads/PangleAdViewBinder$Builder;->e:I

    return-object p0
.end method

.method public final logoViewId(I)Lcom/mopub/nativeads/PangleAdViewBinder$Builder;
    .locals 0

    .line 31
    iput p1, p0, Lcom/mopub/nativeads/PangleAdViewBinder$Builder;->h:I

    return-object p0
.end method

.method public final mediaViewIdId(I)Lcom/mopub/nativeads/PangleAdViewBinder$Builder;
    .locals 0

    .line 50
    iput p1, p0, Lcom/mopub/nativeads/PangleAdViewBinder$Builder;->f:I

    return-object p0
.end method

.method public final sourceId(I)Lcom/mopub/nativeads/PangleAdViewBinder$Builder;
    .locals 0

    .line 43
    iput p1, p0, Lcom/mopub/nativeads/PangleAdViewBinder$Builder;->g:I

    return-object p0
.end method

.method public final titleId(I)Lcom/mopub/nativeads/PangleAdViewBinder$Builder;
    .locals 0

    .line 37
    iput p1, p0, Lcom/mopub/nativeads/PangleAdViewBinder$Builder;->b:I

    return-object p0
.end method
