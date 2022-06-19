.class public final Lcom/facebook/ads/redexgen/X/1z;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A0D:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:J

.field public A02:Lcom/facebook/ads/AdExperienceType;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:Lcom/facebook/ads/RewardData;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A04:Lcom/facebook/ads/RewardedVideoAdListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A05:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A06:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A07:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A08:Z

.field public A09:Lcom/facebook/ads/RewardedVideoAd;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A0A:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/RewardedVideoAd;",
            ">;"
        }
    .end annotation
.end field

.field public final A0B:Lcom/facebook/ads/redexgen/X/XJ;

.field public final A0C:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/1z;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;Ljava/lang/String;Lcom/facebook/ads/RewardedVideoAd;)V
    .locals 2
    .param p3    # Lcom/facebook/ads/RewardedVideoAd;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3746
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3747
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1z;->A00:I

    .line 3748
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1z;->A0B:Lcom/facebook/ads/redexgen/X/XJ;

    .line 3749
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/1z;->A0C:Ljava/lang/String;

    .line 3750
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/1z;->A09:Lcom/facebook/ads/RewardedVideoAd;

    .line 3751
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1z;->A0A:Ljava/lang/ref/WeakReference;

    .line 3752
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/1z;->A01:J

    .line 3753
    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "pQFQWrff5apwgeDCfICDjWO2FINXUEGY"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Zrlf7mbphLj9aknW7PcFFQ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "n3KJlhWP5Ju2JP4ez23sn5JFnk3TGtqs"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "LKe9A2"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "QZ6oU5eByjCJaazPOJhmSAWWHc"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "bIzEhjdis4s2Gtu6NLj44xIWpvJeHb48"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "cSwbeF06gtlZkK5ZI0p5Ev"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "223A19fPLhE6SS6l"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/1z;->A0D:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A01()Lcom/facebook/ads/RewardedVideoAd;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 3754
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1z;->A09:Lcom/facebook/ads/RewardedVideoAd;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1z;->A0A:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/RewardedVideoAd;

    goto :goto_0
.end method

.method public final A02(Lcom/facebook/ads/RewardedVideoAd;)V
    .locals 3
    .param p1    # Lcom/facebook/ads/RewardedVideoAd;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3755
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1z;->A0B:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A0n(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3756
    return-void

    .line 3757
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1z;->A09:Lcom/facebook/ads/RewardedVideoAd;

    sget-object v1, Lcom/facebook/ads/redexgen/X/1z;->A0D:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1a

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 3758
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/1z;->A0D:[Ljava/lang/String;

    const-string v1, "GeKQzqug1NPR8FJ6Rbw1ueQ35y"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return-void
.end method
