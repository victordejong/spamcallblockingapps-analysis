.class public final Lcom/facebook/ads/redexgen/X/Tn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/75;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/To;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdCacheListenerImpl"
.end annotation


# instance fields
.field public final A00:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Rp;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/To;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/To;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Rp;",
            ">;)V"
        }
    .end annotation

    .line 55497
    .local p2, "nativeAdapters":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adapters/FacebookNativeAdapter;>;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Tn;->A01:Lcom/facebook/ads/redexgen/X/To;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55498
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Tn;->A00:Ljava/util/List;

    .line 55499
    return-void
.end method

.method private A00()V
    .locals 10

    .line 55500
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tn;->A01:Lcom/facebook/ads/redexgen/X/To;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/To;->A00(Lcom/facebook/ads/redexgen/X/To;)Lcom/facebook/ads/redexgen/X/5G;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/5G;->A07(Z)V

    .line 55501
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tn;->A01:Lcom/facebook/ads/redexgen/X/To;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/To;->A00(Lcom/facebook/ads/redexgen/X/To;)Lcom/facebook/ads/redexgen/X/5G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5G;->A04()V

    .line 55502
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tn;->A01:Lcom/facebook/ads/redexgen/X/To;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/To;->A00(Lcom/facebook/ads/redexgen/X/To;)Lcom/facebook/ads/redexgen/X/5G;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/5G;->A05(I)V

    .line 55503
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tn;->A00:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/ads/redexgen/X/Rp;

    .line 55504
    .local v0, "nativeAdapter":Lcom/facebook/ads/redexgen/X/Rp;
    new-instance v4, Lcom/facebook/ads/redexgen/X/cD;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tn;->A01:Lcom/facebook/ads/redexgen/X/To;

    .line 55505
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/To;->A01(Lcom/facebook/ads/redexgen/X/To;)Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v5

    const/4 v7, 0x0

    .line 55506
    invoke-static {}, Lcom/facebook/ads/redexgen/X/cD;->A0I()Lcom/facebook/ads/redexgen/X/JX;

    move-result-object v8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tn;->A01:Lcom/facebook/ads/redexgen/X/To;

    .line 55507
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/To;->A00(Lcom/facebook/ads/redexgen/X/To;)Lcom/facebook/ads/redexgen/X/5G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5G;->A03()Lcom/facebook/ads/redexgen/X/SP;

    move-result-object v9

    invoke-direct/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/cD;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/Rp;Lcom/facebook/ads/redexgen/X/8x;Lcom/facebook/ads/redexgen/X/JX;Lcom/facebook/ads/redexgen/X/SP;)V

    .line 55508
    .local v1, "nativeAdBaseApi":Lcom/facebook/ads/internal/api/NativeAdBaseApi;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tn;->A01:Lcom/facebook/ads/redexgen/X/To;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/To;->A00(Lcom/facebook/ads/redexgen/X/To;)Lcom/facebook/ads/redexgen/X/5G;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tn;->A01:Lcom/facebook/ads/redexgen/X/To;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/To;->A01(Lcom/facebook/ads/redexgen/X/To;)Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/NativeAd;

    invoke-direct {v0, v1, v4}, Lcom/facebook/ads/NativeAd;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/api/NativeAdBaseApi;)V

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/5G;->A06(Lcom/facebook/ads/NativeAd;)V

    .line 55509
    .end local v0    # "nativeAdapter":Lcom/facebook/ads/redexgen/X/Rp;
    .end local v1    # "nativeAdBaseApi":Lcom/facebook/ads/internal/api/NativeAdBaseApi;
    goto :goto_0

    .line 55510
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/Tm;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Tm;-><init>(Lcom/facebook/ads/redexgen/X/Tn;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KS;->A00(Lcom/facebook/ads/redexgen/X/KO;)V

    .line 55511
    return-void
.end method


# virtual methods
.method public final A9h()V
    .locals 0

    .line 55512
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Tn;->A00()V

    .line 55513
    return-void
.end method

.method public final A9o()V
    .locals 0

    .line 55514
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Tn;->A00()V

    .line 55515
    return-void
.end method
