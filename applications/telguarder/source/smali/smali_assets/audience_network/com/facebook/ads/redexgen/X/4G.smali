.class public abstract Lcom/facebook/ads/redexgen/X/4G;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/El;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ItemAnimator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/4F;,
        Lcom/facebook/ads/internal/androidx/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;,
        Lcom/facebook/ads/redexgen/X/4E;,
        Lcom/facebook/ads/internal/androidx/support/v7/widget/RecyclerView$ItemAnimator$AdapterChanges;
    }
.end annotation


# instance fields
.field public A00:J

.field public A01:J

.field public A02:J

.field public A03:J

.field public A04:Lcom/facebook/ads/redexgen/X/4E;

.field public A05:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/internal/androidx/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 10486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10487
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A04:Lcom/facebook/ads/redexgen/X/4E;

    .line 10488
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A05:Ljava/util/ArrayList;

    .line 10489
    const-wide/16 v0, 0x78

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A00:J

    .line 10490
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A03:J

    .line 10491
    const-wide/16 v0, 0xfa

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A02:J

    .line 10492
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A01:J

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/4c;)I
    .locals 4

    .line 10493
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/4c;->A00(Lcom/facebook/ads/redexgen/X/4c;)I

    move-result v0

    and-int/lit8 v3, v0, 0xe

    .line 10494
    .local p0, "flags":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10495
    const/4 v0, 0x4

    return v0

    .line 10496
    :cond_0
    and-int/lit8 v0, v3, 0x4

    if-nez v0, :cond_1

    .line 10497
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0K()I

    move-result v2

    .line 10498
    .local v0, "oldPos":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0H()I

    move-result v1

    .line 10499
    .local v3, "pos":I
    const/4 v0, -0x1

    if-eq v2, v0, :cond_1

    if-eq v1, v0, :cond_1

    if-eq v2, v1, :cond_1

    .line 10500
    or-int/lit16 v3, v3, 0x800

    .line 10501
    .end local v0    # "oldPos":I
    .end local v3    # "pos":I
    :cond_1
    return v3
.end method

.method private final A01()Lcom/facebook/ads/redexgen/X/4F;
    .locals 1

    .line 10502
    new-instance v0, Lcom/facebook/ads/redexgen/X/4F;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/4F;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final A02()J
    .locals 2

    .line 10503
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A00:J

    return-wide v0
.end method

.method public final A03()J
    .locals 2

    .line 10504
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A01:J

    return-wide v0
.end method

.method public final A04()J
    .locals 2

    .line 10505
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A02:J

    return-wide v0
.end method

.method public final A05()J
    .locals 2

    .line 10506
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A03:J

    return-wide v0
.end method

.method public final A06(Lcom/facebook/ads/redexgen/X/4Z;Lcom/facebook/ads/redexgen/X/4c;)Lcom/facebook/ads/redexgen/X/4F;
    .locals 1
    .param p1    # Lcom/facebook/ads/redexgen/X/4Z;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/ads/redexgen/X/4c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 10507
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4G;->A01()Lcom/facebook/ads/redexgen/X/4F;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/4F;->A01(Lcom/facebook/ads/redexgen/X/4c;)Lcom/facebook/ads/redexgen/X/4F;

    move-result-object v0

    return-object v0
.end method

.method public final A07(Lcom/facebook/ads/redexgen/X/4Z;Lcom/facebook/ads/redexgen/X/4c;ILjava/util/List;)Lcom/facebook/ads/redexgen/X/4F;
    .locals 1
    .param p1    # Lcom/facebook/ads/redexgen/X/4Z;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/ads/redexgen/X/4c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/4Z;",
            "Lcom/facebook/ads/redexgen/X/4c;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/facebook/ads/redexgen/X/4F;"
        }
    .end annotation

    .line 10508
    .local v0, "payloads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4G;->A01()Lcom/facebook/ads/redexgen/X/4F;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/4F;->A01(Lcom/facebook/ads/redexgen/X/4c;)Lcom/facebook/ads/redexgen/X/4F;

    move-result-object v0

    return-object v0
.end method

.method public final A09()V
    .locals 2

    .line 10509
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 10510
    .local p0, "count":I
    const/4 v1, 0x0

    .local v0, "i":I
    if-ge v1, v0, :cond_0

    .line 10511
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    const/4 v0, 0x0

    throw v0

    .line 10512
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 10513
    return-void
.end method

.method public final A0A(Lcom/facebook/ads/redexgen/X/4E;)V
    .locals 0

    .line 10514
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4G;->A04:Lcom/facebook/ads/redexgen/X/4E;

    .line 10515
    return-void
.end method

.method public final A0B(Lcom/facebook/ads/redexgen/X/4c;)V
    .locals 1

    .line 10516
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A04:Lcom/facebook/ads/redexgen/X/4E;

    if-eqz v0, :cond_0

    .line 10517
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/4E;->A9P(Lcom/facebook/ads/redexgen/X/4c;)V

    .line 10518
    :cond_0
    return-void
.end method

.method public abstract A0C()V
.end method

.method public abstract A0D()V
.end method

.method public abstract A0E(Lcom/facebook/ads/redexgen/X/4c;)V
.end method

.method public abstract A0F()Z
.end method

.method public A0G(Lcom/facebook/ads/redexgen/X/4c;Ljava/util/List;)Z
    .locals 1
    .param p1    # Lcom/facebook/ads/redexgen/X/4c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/4c;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 10519
    .local v0, "payloads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/4G;->A0H(Lcom/facebook/ads/redexgen/X/4c;)Z

    move-result v0

    return v0
.end method

.method public A0H(Lcom/facebook/ads/redexgen/X/4c;)Z
    .locals 1
    .param p1    # Lcom/facebook/ads/redexgen/X/4c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 10520
    const/4 v0, 0x1

    return v0
.end method

.method public abstract A0I(Lcom/facebook/ads/redexgen/X/4c;Lcom/facebook/ads/redexgen/X/4F;Lcom/facebook/ads/redexgen/X/4F;)Z
    .param p1    # Lcom/facebook/ads/redexgen/X/4c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/ads/redexgen/X/4F;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/ads/redexgen/X/4F;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract A0J(Lcom/facebook/ads/redexgen/X/4c;Lcom/facebook/ads/redexgen/X/4F;Lcom/facebook/ads/redexgen/X/4F;)Z
    .param p1    # Lcom/facebook/ads/redexgen/X/4c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/ads/redexgen/X/4F;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/ads/redexgen/X/4F;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract A0K(Lcom/facebook/ads/redexgen/X/4c;Lcom/facebook/ads/redexgen/X/4F;Lcom/facebook/ads/redexgen/X/4F;)Z
    .param p1    # Lcom/facebook/ads/redexgen/X/4c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/ads/redexgen/X/4F;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/ads/redexgen/X/4F;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract A0L(Lcom/facebook/ads/redexgen/X/4c;Lcom/facebook/ads/redexgen/X/4c;Lcom/facebook/ads/redexgen/X/4F;Lcom/facebook/ads/redexgen/X/4F;)Z
    .param p1    # Lcom/facebook/ads/redexgen/X/4c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/ads/redexgen/X/4c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/ads/redexgen/X/4F;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/facebook/ads/redexgen/X/4F;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
