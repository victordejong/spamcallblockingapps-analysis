.class public abstract Lcom/facebook/ads/redexgen/X/4G;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Eq;
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


# static fields
.field public static A06:[Ljava/lang/String;


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
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/4G;->A02()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 10379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10380
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A04:Lcom/facebook/ads/redexgen/X/4E;

    .line 10381
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A05:Ljava/util/ArrayList;

    .line 10382
    const-wide/16 v0, 0x78

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A00:J

    .line 10383
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A03:J

    .line 10384
    const-wide/16 v0, 0xfa

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A02:J

    .line 10385
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A01:J

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/4c;)I
    .locals 7

    .line 10386
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/4c;->A00(Lcom/facebook/ads/redexgen/X/4c;)I

    move-result v0

    and-int/lit8 v6, v0, 0xe

    .line 10387
    .local p0, "flags":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10388
    const/4 v0, 0x4

    return v0

    .line 10389
    :cond_0
    and-int/lit8 v0, v6, 0x4

    if-nez v0, :cond_1

    .line 10390
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0K()I

    move-result v5

    .line 10391
    .local v0, "oldPos":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0H()I

    move-result v4

    .line 10392
    .local v6, "pos":I
    const/4 v3, -0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/4G;->A06:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/4G;->A06:[Ljava/lang/String;

    const-string v1, "z6mPnscAmNwlAliMzxZ9cFQDVALsWjfG"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eq v5, v3, :cond_1

    if-eq v4, v3, :cond_1

    if-eq v5, v4, :cond_1

    .line 10393
    or-int/lit16 v6, v6, 0x800

    .line 10394
    .end local v0    # "oldPos":I
    .end local v6    # "pos":I
    :cond_1
    return v6

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private final A01()Lcom/facebook/ads/redexgen/X/4F;
    .locals 1

    .line 10395
    new-instance v0, Lcom/facebook/ads/redexgen/X/4F;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/4F;-><init>()V

    return-object v0
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "wCFFy4v0UHolBGzubHhtaTK0KlaK5TU8"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "WXL"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "veTi"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "n3"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "rW28yUWMMTgiQlEcIz6smwE3e87Fn5Ax"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "QU5acghFPGL2KQJts4swUt9W5A9MK8iM"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "qIZlYUWuFA6tmX766BSANKSPkXlWbMWT"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "RhPzJuizv3JTUr3AZhw4zLdz5ZpO"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/4G;->A06:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A03()J
    .locals 2

    .line 10396
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A00:J

    return-wide v0
.end method

.method public final A04()J
    .locals 2

    .line 10397
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A01:J

    return-wide v0
.end method

.method public final A05()J
    .locals 2

    .line 10398
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A02:J

    return-wide v0
.end method

.method public final A06()J
    .locals 2

    .line 10399
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A03:J

    return-wide v0
.end method

.method public final A07(Lcom/facebook/ads/redexgen/X/4Z;Lcom/facebook/ads/redexgen/X/4c;)Lcom/facebook/ads/redexgen/X/4F;
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

    .line 10400
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4G;->A01()Lcom/facebook/ads/redexgen/X/4F;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/4F;->A01(Lcom/facebook/ads/redexgen/X/4c;)Lcom/facebook/ads/redexgen/X/4F;

    move-result-object v0

    return-object v0
.end method

.method public final A08(Lcom/facebook/ads/redexgen/X/4Z;Lcom/facebook/ads/redexgen/X/4c;ILjava/util/List;)Lcom/facebook/ads/redexgen/X/4F;
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

    .line 10401
    .local v0, "payloads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4G;->A01()Lcom/facebook/ads/redexgen/X/4F;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/4F;->A01(Lcom/facebook/ads/redexgen/X/4c;)Lcom/facebook/ads/redexgen/X/4F;

    move-result-object v0

    return-object v0
.end method

.method public final A09()V
    .locals 2

    .line 10402
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 10403
    .local p0, "count":I
    const/4 v1, 0x0

    .local v0, "i":I
    if-ge v1, v0, :cond_0

    .line 10404
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    const/4 v0, 0x0

    throw v0

    .line 10405
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 10406
    return-void
.end method

.method public final A0A(Lcom/facebook/ads/redexgen/X/4E;)V
    .locals 0

    .line 10407
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4G;->A04:Lcom/facebook/ads/redexgen/X/4E;

    .line 10408
    return-void
.end method

.method public final A0B(Lcom/facebook/ads/redexgen/X/4c;)V
    .locals 1

    .line 10409
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A04:Lcom/facebook/ads/redexgen/X/4E;

    if-eqz v0, :cond_0

    .line 10410
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/4E;->A9P(Lcom/facebook/ads/redexgen/X/4c;)V

    .line 10411
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

    .line 10412
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

    .line 10413
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
