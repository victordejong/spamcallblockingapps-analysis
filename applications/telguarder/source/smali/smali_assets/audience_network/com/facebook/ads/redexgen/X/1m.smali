.class public final Lcom/facebook/ads/redexgen/X/1m;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/RewardData;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A02:Lcom/facebook/ads/redexgen/X/JU;
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

.field public final A06:Lcom/facebook/ads/redexgen/X/Js;

.field public final A07:Lcom/facebook/ads/redexgen/X/Jt;

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
.method public constructor <init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Jt;Lcom/facebook/ads/internal/protocol/AdPlacementType;Lcom/facebook/ads/redexgen/X/Js;I)V
    .locals 7

    .line 3737
    sget-object v0, Lcom/facebook/ads/CacheFlag;->NONE:Lcom/facebook/ads/CacheFlag;

    .line 3738
    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v6

    .line 3739
    move-object v0, p0

    move v5, p5

    move-object v4, p4

    move-object v3, p3

    move-object v2, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/1m;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Jt;Lcom/facebook/ads/internal/protocol/AdPlacementType;Lcom/facebook/ads/redexgen/X/Js;ILjava/util/EnumSet;)V

    .line 3740
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Jt;Lcom/facebook/ads/internal/protocol/AdPlacementType;Lcom/facebook/ads/redexgen/X/Js;ILjava/util/EnumSet;)V
    .locals 1
    .param p6    # Ljava/util/EnumSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/Jt;",
            "Lcom/facebook/ads/internal/protocol/AdPlacementType;",
            "Lcom/facebook/ads/redexgen/X/Js;",
            "I",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;)V"
        }
    .end annotation

    .line 3741
    .local v0, "cacheFlags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/facebook/ads/CacheFlag;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3742
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1m;->A08:Ljava/lang/String;

    .line 3743
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/1m;->A0B:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    .line 3744
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/1m;->A06:Lcom/facebook/ads/redexgen/X/Js;

    .line 3745
    iput p5, p0, Lcom/facebook/ads/redexgen/X/1m;->A0A:I

    .line 3746
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/1m;->A09:Ljava/util/EnumSet;

    .line 3747
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/1m;->A07:Lcom/facebook/ads/redexgen/X/Jt;

    .line 3748
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1m;->A00:I

    .line 3749
    return-void
.end method


# virtual methods
.method public final A00()Lcom/facebook/ads/internal/protocol/AdPlacementType;
    .locals 2

    .line 3750
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1m;->A0B:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    if-eqz v0, :cond_0

    .line 3751
    return-object v0

    .line 3752
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1m;->A06:Lcom/facebook/ads/redexgen/X/Js;

    if-nez v1, :cond_1

    .line 3753
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->NATIVE:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    return-object v0

    .line 3754
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/Js;->A08:Lcom/facebook/ads/redexgen/X/Js;

    if-ne v1, v0, :cond_2

    .line 3755
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->INTERSTITIAL:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    return-object v0

    .line 3756
    :cond_2
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->BANNER:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    return-object v0
.end method

.method public final A01(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/Jy;Lcom/facebook/ads/AdExperienceType;)Lcom/facebook/ads/redexgen/X/KD;
    .locals 16
    .param p3    # Lcom/facebook/ads/AdExperienceType;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3757
    move-object/from16 v2, p0

    new-instance v3, Lcom/facebook/ads/redexgen/X/KD;

    iget-object v5, v2, Lcom/facebook/ads/redexgen/X/1m;->A08:Ljava/lang/String;

    .line 3758
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/1m;->A06:Lcom/facebook/ads/redexgen/X/Js;

    const/4 v8, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Js;->getHeight()I

    move-result v1

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/1m;->A06:Lcom/facebook/ads/redexgen/X/Js;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Js;->getWidth()I

    move-result v0

    new-instance v6, Lcom/facebook/ads/redexgen/X/LM;

    invoke-direct {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/LM;-><init>(II)V

    :goto_0
    iget-object v7, v2, Lcom/facebook/ads/redexgen/X/1m;->A07:Lcom/facebook/ads/redexgen/X/Jt;

    .line 3759
    invoke-static {}, Lcom/facebook/ads/AdSettings;->getTestAdType()Lcom/facebook/ads/AdSettings$TestAdType;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/AdSettings$TestAdType;->DEFAULT:Lcom/facebook/ads/AdSettings$TestAdType;

    if-eq v1, v0, :cond_0

    .line 3760
    invoke-static {}, Lcom/facebook/ads/AdSettings;->getTestAdType()Lcom/facebook/ads/AdSettings$TestAdType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/AdSettings$TestAdType;->getAdTypeString()Ljava/lang/String;

    move-result-object v8

    .line 3761
    :cond_0
    iget v9, v2, Lcom/facebook/ads/redexgen/X/1m;->A0A:I

    .line 3762
    move-object/from16 v4, p1

    invoke-static {v4}, Lcom/facebook/ads/AdSettings;->isTestMode(Landroid/content/Context;)Z

    move-result v10

    .line 3763
    invoke-static {}, Lcom/facebook/ads/AdSettings;->isMixedAudience()Z

    move-result v11

    .line 3764
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/J4;->A0H(Landroid/content/Context;)I

    move-result v0

    .line 3765
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LS;->A01(I)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v2, Lcom/facebook/ads/redexgen/X/1m;->A03:Ljava/lang/String;

    move-object/from16 v15, p3

    move-object/from16 v12, p2

    invoke-direct/range {v3 .. v15}, Lcom/facebook/ads/redexgen/X/KD;-><init>(Lcom/facebook/ads/redexgen/X/8D;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/LM;Lcom/facebook/ads/redexgen/X/Jt;Ljava/lang/String;IZZLcom/facebook/ads/redexgen/X/Jy;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;)V

    .line 3766
    return-object v3

    .line 3767
    :cond_1
    move-object v6, v8

    goto :goto_0
.end method

.method public final A02(I)V
    .locals 0

    .line 3768
    iput p1, p0, Lcom/facebook/ads/redexgen/X/1m;->A00:I

    .line 3769
    return-void
.end method

.method public final A03(Lcom/facebook/ads/RewardData;)V
    .locals 0
    .param p1    # Lcom/facebook/ads/RewardData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3770
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1m;->A01:Lcom/facebook/ads/RewardData;

    .line 3771
    return-void
.end method

.method public final A04(Lcom/facebook/ads/redexgen/X/JU;)V
    .locals 0
    .param p1    # Lcom/facebook/ads/redexgen/X/JU;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3772
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1m;->A02:Lcom/facebook/ads/redexgen/X/JU;

    .line 3773
    return-void
.end method

.method public final A05(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3774
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1m;->A03:Ljava/lang/String;

    .line 3775
    return-void
.end method

.method public final A06(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3776
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1m;->A04:Ljava/lang/String;

    .line 3777
    return-void
.end method

.method public final A07(Z)V
    .locals 0

    .line 3778
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/1m;->A05:Z

    .line 3779
    return-void
.end method
