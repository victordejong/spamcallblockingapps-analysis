.class public final Lcom/facebook/ads/redexgen/X/98;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:Lcom/facebook/ads/redexgen/X/98;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 19376
    new-instance v0, Lcom/facebook/ads/redexgen/X/98;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/98;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/98;->A00:Lcom/facebook/ads/redexgen/X/98;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 19377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()Lcom/facebook/ads/redexgen/X/98;
    .locals 1

    .line 19378
    sget-object v0, Lcom/facebook/ads/redexgen/X/98;->A00:Lcom/facebook/ads/redexgen/X/98;

    return-object v0
.end method


# virtual methods
.method public final A01(Lcom/facebook/ads/redexgen/X/8D;Z)Lcom/facebook/ads/redexgen/X/97;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InstanceMethodCanBeStatic"
        }
    .end annotation

    .line 19379
    new-instance v1, Lcom/facebook/ads/redexgen/X/5p;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/5p;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Xv;

    invoke-direct {v0, p1, p2, v1}, Lcom/facebook/ads/redexgen/X/Xv;-><init>(Lcom/facebook/ads/redexgen/X/8D;ZLcom/facebook/ads/redexgen/X/5p;)V

    return-object v0
.end method

.method public final A02(Lcom/facebook/ads/redexgen/X/8D;)Ljava/util/Map;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/8D;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 19380
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/98;->A01(Lcom/facebook/ads/redexgen/X/8D;Z)Lcom/facebook/ads/redexgen/X/97;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/97;->A6N()Ljava/util/Map;

    move-result-object v0

    return-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19381
    :catchall_0
    move-exception v1

    .line 19382
    .local p0, "t":Ljava/lang/Throwable;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/8d;->A3T(Ljava/lang/Throwable;)V

    .line 19383
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/94;->A01(Lcom/facebook/ads/redexgen/X/8D;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
