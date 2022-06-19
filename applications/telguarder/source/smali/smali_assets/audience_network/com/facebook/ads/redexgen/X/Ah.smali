.class public final Lcom/facebook/ads/redexgen/X/Ah;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/W4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaPeriodQueueTracker"
.end annotation


# static fields
.field public static A06:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Af;

.field public A01:Lcom/facebook/ads/redexgen/X/Ai;

.field public A02:Lcom/facebook/ads/redexgen/X/Ai;

.field public A03:Z

.field public final A04:Lcom/facebook/ads/redexgen/X/Ad;

.field public final A05:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/Ai;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ah;->A03()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 21631
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21632
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ah;->A05:Ljava/util/ArrayList;

    .line 21633
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ad;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Ad;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ah;->A04:Lcom/facebook/ads/redexgen/X/Ad;

    .line 21634
    sget-object v0, Lcom/facebook/ads/redexgen/X/Af;->A00:Lcom/facebook/ads/redexgen/X/Af;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ah;->A00:Lcom/facebook/ads/redexgen/X/Af;

    .line 21635
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/Ai;Lcom/facebook/ads/redexgen/X/Af;)Lcom/facebook/ads/redexgen/X/Ai;
    .locals 4

    .line 21636
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Af;->A0E()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ah;->A00:Lcom/facebook/ads/redexgen/X/Af;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Af;->A0E()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21637
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Ah;
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/Ai;
    .end local p2    # null:Lcom/facebook/ads/redexgen/X/Af;
    :cond_0
    return-object p1

    .line 21638
    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Ah;->A00:Lcom/facebook/ads/redexgen/X/Af;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Ai;->A01:Lcom/facebook/ads/redexgen/X/FC;

    iget v2, v0, Lcom/facebook/ads/redexgen/X/FC;->A02:I

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ah;->A04:Lcom/facebook/ads/redexgen/X/Ad;

    const/4 v0, 0x1

    .line 21639
    invoke-virtual {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Af;->A0A(ILcom/facebook/ads/redexgen/X/Ad;Z)Lcom/facebook/ads/redexgen/X/Ad;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ad;->A03:Ljava/lang/Object;

    .line 21640
    .local p0, "uid":Ljava/lang/Object;
    invoke-virtual {p2, v0}, Lcom/facebook/ads/redexgen/X/Af;->A04(Ljava/lang/Object;)I

    move-result v1

    .line 21641
    .local p1, "newPeriodIndex":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_2

    .line 21642
    return-object p1

    .line 21643
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ah;->A04:Lcom/facebook/ads/redexgen/X/Ad;

    invoke-virtual {p2, v1, v0}, Lcom/facebook/ads/redexgen/X/Af;->A09(ILcom/facebook/ads/redexgen/X/Ad;)Lcom/facebook/ads/redexgen/X/Ad;

    move-result-object v0

    iget v2, v0, Lcom/facebook/ads/redexgen/X/Ad;->A00:I

    .line 21644
    .local p2, "newWindowIndex":I
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Ai;->A01:Lcom/facebook/ads/redexgen/X/FC;

    .line 21645
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/FC;->A00(I)Lcom/facebook/ads/redexgen/X/FC;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ai;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Ai;-><init>(ILcom/facebook/ads/redexgen/X/FC;)V

    .line 21646
    return-object v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Ah;)Ljava/util/ArrayList;
    .locals 0

    .line 21647
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Ah;->A05:Ljava/util/ArrayList;

    return-object p0
.end method

.method private A02()V
    .locals 2

    .line 21648
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ah;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 21649
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ah;->A05:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ai;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ah;->A01:Lcom/facebook/ads/redexgen/X/Ai;

    .line 21650
    :cond_0
    return-void
.end method

.method public static A03()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "RRzXhNaiGUJqnE54oJgu0xeNorDVKYiZ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "figjAkedsRMtKj1hBbTKoMSCi7Zc1dIb"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "KJb0VBPvUPXQ"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "mQoNNv4CoWT4vtOoZmm5UO9"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "lLcXr1eOkzF9oPk9O7Kkl64MeuDmQXgz"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "d2ebsLVb1kzB8EWh"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "qWyXZUhf6KGn5m4H0NY9EaIdvEYfq8gK"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "2HSVDQOlTYfjgZvA3PsVQwaER8ZtIpdW"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ah;->A06:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A04()Lcom/facebook/ads/redexgen/X/Ai;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 21651
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ah;->A01:Lcom/facebook/ads/redexgen/X/Ai;

    return-object v0
.end method

.method public final A05()Lcom/facebook/ads/redexgen/X/Ai;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 21652
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ah;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21653
    const/4 v0, 0x0

    .line 21654
    :goto_0
    return-object v0

    .line 21655
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ah;->A05:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ai;

    goto :goto_0
.end method

.method public final A06()Lcom/facebook/ads/redexgen/X/Ai;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 21656
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ah;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ah;->A00:Lcom/facebook/ads/redexgen/X/Af;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Af;->A0E()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ah;->A03:Z

    if-eqz v0, :cond_1

    .line 21657
    :cond_0
    const/4 v0, 0x0

    .line 21658
    :goto_0
    return-object v0

    .line 21659
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ah;->A05:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ai;

    goto :goto_0
.end method

.method public final A07()Lcom/facebook/ads/redexgen/X/Ai;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 21660
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ah;->A02:Lcom/facebook/ads/redexgen/X/Ai;

    return-object v0
.end method

.method public final A08(I)Lcom/facebook/ads/redexgen/X/FC;
    .locals 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 21661
    const/4 v5, 0x0

    .line 21662
    .local p0, "match":Lcom/facebook/ads/redexgen/X/FC;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ah;->A00:Lcom/facebook/ads/redexgen/X/Af;

    if-eqz v0, :cond_5

    .line 21663
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Af;->A00()I

    move-result v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ah;->A06:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    .line 21664
    .local p1, "timelinePeriodCount":I
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ah;->A06:[Ljava/lang/String;

    const-string v1, "NDTWq9N2ixS4KFFYbCWxxK8fZi1hC9fA"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const/4 v3, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Ah;->A05:Ljava/util/ArrayList;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ah;->A06:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ah;->A06:[Ljava/lang/String;

    const-string v1, "c9n7ERCTZa5dMxY6vmozrVEi2G8pqxXI"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "FZwJ0O8iS3XIEE0FKTYRWy4b1Njp67Jo"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_5

    .line 21665
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ah;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/ads/redexgen/X/Ai;

    .line 21666
    .local v0, "mediaPeriod":Lcom/facebook/ads/redexgen/X/Ai;
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Ai;->A01:Lcom/facebook/ads/redexgen/X/FC;

    iget v8, v0, Lcom/facebook/ads/redexgen/X/FC;->A02:I

    .line 21667
    .local v4, "periodIndex":I
    if-ge v8, v4, :cond_2

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/Ah;->A00:Lcom/facebook/ads/redexgen/X/Af;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ah;->A06:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ah;->A06:[Ljava/lang/String;

    const-string v1, "ym7hEzELvVDR"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "PU1pyOhFrBiavsxQDwgHrdl"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ah;->A04:Lcom/facebook/ads/redexgen/X/Ad;

    .line 21668
    invoke-virtual {v7, v8, v0}, Lcom/facebook/ads/redexgen/X/Af;->A09(ILcom/facebook/ads/redexgen/X/Ad;)Lcom/facebook/ads/redexgen/X/Ad;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Ad;->A00:I

    if-ne v0, p1, :cond_2

    .line 21669
    :goto_2
    if-eqz v5, :cond_1

    .line 21670
    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ah;->A06:[Ljava/lang/String;

    const-string v1, "frijCbr4eh4M6V1jvPva4r6Nu7bwFAeF"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "wtx1NJaNPx6GTBiCuYWL1DQWKHqPWJPL"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ah;->A04:Lcom/facebook/ads/redexgen/X/Ad;

    .line 21671
    invoke-virtual {v7, v8, v0}, Lcom/facebook/ads/redexgen/X/Af;->A09(ILcom/facebook/ads/redexgen/X/Ad;)Lcom/facebook/ads/redexgen/X/Ad;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Ad;->A00:I

    if-ne v0, p1, :cond_2

    goto :goto_2

    .line 21672
    :cond_1
    iget-object v5, v6, Lcom/facebook/ads/redexgen/X/Ai;->A01:Lcom/facebook/ads/redexgen/X/FC;

    .line 21673
    .end local v0    # "mediaPeriod":Lcom/facebook/ads/redexgen/X/Ai;
    .end local v4    # "periodIndex":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ah;->A06:[Ljava/lang/String;

    const-string v1, "1RcBKwD9e1P8"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "vOZJqnEyx3TwoGAstB1PYSs"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_5

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 21674
    .end local p1    # "timelinePeriodCount":I
    .end local v5    # "i":I
    :cond_5
    return-object v5
.end method

.method public final A09()V
    .locals 1

    .line 21675
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ah;->A03:Z

    .line 21676
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ah;->A02()V

    .line 21677
    return-void
.end method

.method public final A0A()V
    .locals 1

    .line 21678
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ah;->A03:Z

    .line 21679
    return-void
.end method

.method public final A0B(I)V
    .locals 0

    .line 21680
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ah;->A02()V

    .line 21681
    return-void
.end method

.method public final A0C(ILcom/facebook/ads/redexgen/X/FC;)V
    .locals 4

    .line 21682
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ah;->A05:Ljava/util/ArrayList;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ai;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ai;-><init>(ILcom/facebook/ads/redexgen/X/FC;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21683
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ah;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Ah;->A00:Lcom/facebook/ads/redexgen/X/Af;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ah;->A06:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ah;->A06:[Ljava/lang/String;

    const-string v1, "Z9mjC2WuosGVObOXrsBpaS5Nb8eKz1HK"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "j9z3PzRvBbwb5bjZtcDh4YjgidwQBWt7"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Af;->A0E()Z

    move-result v0

    if-nez v0, :cond_0

    .line 21684
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ah;->A02()V

    .line 21685
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0D(ILcom/facebook/ads/redexgen/X/FC;)V
    .locals 2

    .line 21686
    new-instance v1, Lcom/facebook/ads/redexgen/X/Ai;

    invoke-direct {v1, p1, p2}, Lcom/facebook/ads/redexgen/X/Ai;-><init>(ILcom/facebook/ads/redexgen/X/FC;)V

    .line 21687
    .local p0, "mediaPeriod":Lcom/facebook/ads/redexgen/X/Ai;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ah;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 21688
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ah;->A02:Lcom/facebook/ads/redexgen/X/Ai;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ai;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21689
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ah;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ah;->A02:Lcom/facebook/ads/redexgen/X/Ai;

    .line 21690
    :cond_0
    return-void

    .line 21691
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ah;->A05:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ai;

    goto :goto_0
.end method

.method public final A0E(ILcom/facebook/ads/redexgen/X/FC;)V
    .locals 1

    .line 21692
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ai;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ai;-><init>(ILcom/facebook/ads/redexgen/X/FC;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ah;->A02:Lcom/facebook/ads/redexgen/X/Ai;

    .line 21693
    return-void
.end method

.method public final A0F(Lcom/facebook/ads/redexgen/X/Af;)V
    .locals 5

    .line 21694
    const/4 v3, 0x0

    .local p0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Ah;->A05:Ljava/util/ArrayList;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ah;->A06:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ah;->A06:[Ljava/lang/String;

    const-string v1, "cpPDqpow4qwX"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "DxtS9tcWnCb4ppJYrmCWQjV"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    .line 21695
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ah;->A05:Ljava/util/ArrayList;

    .line 21696
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ai;

    invoke-direct {p0, v0, p1}, Lcom/facebook/ads/redexgen/X/Ah;->A00(Lcom/facebook/ads/redexgen/X/Ai;Lcom/facebook/ads/redexgen/X/Af;)Lcom/facebook/ads/redexgen/X/Ai;

    move-result-object v0

    .line 21697
    invoke-virtual {v1, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 21698
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 21699
    .end local p0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ah;->A02:Lcom/facebook/ads/redexgen/X/Ai;

    if-eqz v0, :cond_1

    .line 21700
    invoke-direct {p0, v0, p1}, Lcom/facebook/ads/redexgen/X/Ah;->A00(Lcom/facebook/ads/redexgen/X/Ai;Lcom/facebook/ads/redexgen/X/Af;)Lcom/facebook/ads/redexgen/X/Ai;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ah;->A02:Lcom/facebook/ads/redexgen/X/Ai;

    .line 21701
    :cond_1
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ah;->A00:Lcom/facebook/ads/redexgen/X/Af;

    .line 21702
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ah;->A02()V

    .line 21703
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0G()Z
    .locals 1

    .line 21704
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ah;->A03:Z

    return v0
.end method
