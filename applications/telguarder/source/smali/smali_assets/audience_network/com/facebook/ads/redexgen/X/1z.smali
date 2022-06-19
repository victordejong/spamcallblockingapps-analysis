.class public final Lcom/facebook/ads/redexgen/X/1z;
.super Ljava/lang/Object;
.source ""


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

.field public final A0B:Lcom/facebook/ads/redexgen/X/Wm;

.field public final A0C:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Ljava/lang/String;Lcom/facebook/ads/RewardedVideoAd;)V
    .locals 2
    .param p3    # Lcom/facebook/ads/RewardedVideoAd;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3852
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3853
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1z;->A00:I

    .line 3854
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1z;->A0B:Lcom/facebook/ads/redexgen/X/Wm;

    .line 3855
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/1z;->A0C:Ljava/lang/String;

    .line 3856
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/1z;->A09:Lcom/facebook/ads/RewardedVideoAd;

    .line 3857
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1z;->A0A:Ljava/lang/ref/WeakReference;

    .line 3858
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/1z;->A01:J

    .line 3859
    return-void
.end method


# virtual methods
.method public final A00()Lcom/facebook/ads/RewardedVideoAd;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 3860
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

.method public final A01(Lcom/facebook/ads/RewardedVideoAd;)V
    .locals 1
    .param p1    # Lcom/facebook/ads/RewardedVideoAd;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3861
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1z;->A0B:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A0o(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3862
    return-void

    .line 3863
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1z;->A09:Lcom/facebook/ads/RewardedVideoAd;

    .line 3864
    return-void
.end method
