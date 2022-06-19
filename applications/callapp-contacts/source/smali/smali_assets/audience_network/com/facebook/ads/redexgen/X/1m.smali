.class public final Lcom/facebook/ads/redexgen/X/1m;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/RewardData;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A02:Lcom/facebook/ads/redexgen/X/JS;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A04:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A05:Z

.field public final A06:Lcom/facebook/ads/redexgen/X/Jq;

.field public final A07:Lcom/facebook/ads/redexgen/X/Jr;

.field public final A08:Ljava/lang/String;

.field public final A09:Ljava/util/EnumSet;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;"
        }
    .end annotation
.end field

.field public final A0A:I

.field public final A0B:Lcom/facebook/ads/internal/protocol/AdPlacementType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Jr;Lcom/facebook/ads/internal/protocol/AdPlacementType;Lcom/facebook/ads/redexgen/X/Jq;I)V
    .locals 7

    .line 3631
    sget-object v0, Lcom/facebook/ads/CacheFlag;->NONE:Lcom/facebook/ads/CacheFlag;

    .line 3632
    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v6

    .line 3633
    move-object v0, p0

    move-object v2, p2

    move-object v1, p1

    move-object v3, p3

    move v5, p5

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/1m;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Jr;Lcom/facebook/ads/internal/protocol/AdPlacementType;Lcom/facebook/ads/redexgen/X/Jq;ILjava/util/EnumSet;)V

    .line 3634
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Jr;Lcom/facebook/ads/internal/protocol/AdPlacementType;Lcom/facebook/ads/redexgen/X/Jq;ILjava/util/EnumSet;)V
    .locals 1
    .param p6    # Ljava/util/EnumSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/Jr;",
            "Lcom/facebook/ads/internal/protocol/AdPlacementType;",
            "Lcom/facebook/ads/redexgen/X/Jq;",
            "I",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;)V"
        }
    .end annotation

    .line 3635
    .local v0, "cacheFlags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/facebook/ads/CacheFlag;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3636
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1m;->A08:Ljava/lang/String;

    .line 3637
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/1m;->A0B:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    .line 3638
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/1m;->A06:Lcom/facebook/ads/redexgen/X/Jq;

    .line 3639
    iput p5, p0, Lcom/facebook/ads/redexgen/X/1m;->A0A:I

    .line 3640
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/1m;->A09:Ljava/util/EnumSet;

    .line 3641
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/1m;->A07:Lcom/facebook/ads/redexgen/X/Jr;

    .line 3642
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1m;->A00:I

    .line 3643
    return-void
.end method


# virtual methods
.method public final A00()Lcom/facebook/ads/internal/protocol/AdPlacementType;
    .locals 2

    .line 3644
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1m;->A0B:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    if-eqz v0, :cond_0

    .line 3645
    return-object v0

    .line 3646
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1m;->A06:Lcom/facebook/ads/redexgen/X/Jq;

    if-nez v1, :cond_1

    .line 3647
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->NATIVE:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    return-object v0

    .line 3648
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/Jq;->A08:Lcom/facebook/ads/redexgen/X/Jq;

    if-ne v1, v0, :cond_2

    .line 3649
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->INTERSTITIAL:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    return-object v0

    .line 3650
    :cond_2
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->BANNER:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    return-object v0
.end method

.method public final A01(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/Jw;Lcom/facebook/ads/AdExperienceType;)Lcom/facebook/ads/redexgen/X/KB;
    .locals 16
    .param p3    # Lcom/facebook/ads/AdExperienceType;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3651
    move-object/from16 v2, p0

    new-instance v3, Lcom/facebook/ads/redexgen/X/KB;

    iget-object v5, v2, Lcom/facebook/ads/redexgen/X/1m;->A08:Ljava/lang/String;

    .line 3652
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/1m;->A06:Lcom/facebook/ads/redexgen/X/Jq;

    const/4 v8, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jq;->getHeight()I

    move-result v1

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/1m;->A06:Lcom/facebook/ads/redexgen/X/Jq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jq;->getWidth()I

    move-result v0

    new-instance v6, Lcom/facebook/ads/redexgen/X/LK;

    invoke-direct {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/LK;-><init>(II)V

    :goto_0
    iget-object v7, v2, Lcom/facebook/ads/redexgen/X/1m;->A07:Lcom/facebook/ads/redexgen/X/Jr;

    .line 3653
    invoke-static {}, Lcom/facebook/ads/AdSettings;->getTestAdType()Lcom/facebook/ads/AdSettings$TestAdType;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/AdSettings$TestAdType;->DEFAULT:Lcom/facebook/ads/AdSettings$TestAdType;

    if-eq v1, v0, :cond_0

    .line 3654
    invoke-static {}, Lcom/facebook/ads/AdSettings;->getTestAdType()Lcom/facebook/ads/AdSettings$TestAdType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/AdSettings$TestAdType;->getAdTypeString()Ljava/lang/String;

    move-result-object v8

    .line 3655
    :cond_0
    iget v9, v2, Lcom/facebook/ads/redexgen/X/1m;->A0A:I

    .line 3656
    move-object/from16 v4, p1

    invoke-static {v4}, Lcom/facebook/ads/AdSettings;->isTestMode(Landroid/content/Context;)Z

    move-result v10

    .line 3657
    invoke-static {}, Lcom/facebook/ads/AdSettings;->isMixedAudience()Z

    move-result v11

    .line 3658
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/J4;->A0H(Landroid/content/Context;)I

    move-result v0

    .line 3659
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LQ;->A01(I)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v2, Lcom/facebook/ads/redexgen/X/1m;->A03:Ljava/lang/String;

    move-object/from16 v12, p2

    move-object/from16 v15, p3

    invoke-direct/range {v3 .. v15}, Lcom/facebook/ads/redexgen/X/KB;-><init>(Lcom/facebook/ads/redexgen/X/8D;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/LK;Lcom/facebook/ads/redexgen/X/Jr;Ljava/lang/String;IZZLcom/facebook/ads/redexgen/X/Jw;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;)V

    .line 3660
    return-object v3

    .line 3661
    :cond_1
    move-object v6, v8

    goto :goto_0
.end method

.method public final A02(I)V
    .locals 0

    .line 3662
    iput p1, p0, Lcom/facebook/ads/redexgen/X/1m;->A00:I

    .line 3663
    return-void
.end method

.method public final A03(Lcom/facebook/ads/RewardData;)V
    .locals 0
    .param p1    # Lcom/facebook/ads/RewardData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3664
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1m;->A01:Lcom/facebook/ads/RewardData;

    .line 3665
    return-void
.end method

.method public final A04(Lcom/facebook/ads/redexgen/X/JS;)V
    .locals 0
    .param p1    # Lcom/facebook/ads/redexgen/X/JS;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3666
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1m;->A02:Lcom/facebook/ads/redexgen/X/JS;

    .line 3667
    return-void
.end method

.method public final A05(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3668
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1m;->A03:Ljava/lang/String;

    .line 3669
    return-void
.end method

.method public final A06(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3670
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1m;->A04:Ljava/lang/String;

    .line 3671
    return-void
.end method

.method public final A07(Z)V
    .locals 0

    .line 3672
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/1m;->A05:Z

    .line 3673
    return-void
.end method
