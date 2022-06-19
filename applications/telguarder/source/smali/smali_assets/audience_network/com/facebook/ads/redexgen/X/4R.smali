.class public final Lcom/facebook/ads/redexgen/X/4R;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/El;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecycledViewPool"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/4Q;
    }
.end annotation


# instance fields
.field public A00:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/4Q;",
            ">;"
        }
    .end annotation
.end field

.field public A01:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11081
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11082
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4R;->A00:Landroid/util/SparseArray;

    .line 11083
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4R;->A01:I

    return-void
.end method

.method private final A00(JJ)J
    .locals 4

    .line 11084
    const-wide/16 v1, 0x0

    cmp-long v0, p1, v1

    if-nez v0, :cond_0

    .line 11085
    return-wide p3

    .line 11086
    :cond_0
    const-wide/16 v2, 0x4

    div-long/2addr p1, v2

    const-wide/16 v0, 0x3

    mul-long/2addr p1, v0

    div-long/2addr p3, v2

    add-long/2addr p1, p3

    return-wide p1
.end method

.method private A01(I)Lcom/facebook/ads/redexgen/X/4Q;
    .locals 2

    .line 11087
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4R;->A00:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/4Q;

    .line 11088
    .local p0, "scrapData":Lcom/facebook/ads/redexgen/X/4Q;
    if-nez v1, :cond_0

    .line 11089
    new-instance v1, Lcom/facebook/ads/redexgen/X/4Q;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/4Q;-><init>()V

    .line 11090
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4R;->A00:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 11091
    :cond_0
    return-object v1
.end method

.method private final A02()V
    .locals 2

    .line 11092
    const/4 v1, 0x0

    .local p0, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4R;->A00:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 11093
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4R;->A00:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4Q;

    .line 11094
    .local v1, "data":Lcom/facebook/ads/redexgen/X/4Q;
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/4Q;->A03:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 11095
    .end local v1    # "data":Lcom/facebook/ads/redexgen/X/4Q;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11096
    .end local p0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public final A03(I)Lcom/facebook/ads/redexgen/X/4c;
    .locals 2

    .line 11097
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4R;->A00:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/4Q;

    .line 11098
    .local p0, "scrapData":Lcom/facebook/ads/redexgen/X/4Q;
    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/4Q;->A03:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11099
    iget-object v1, v1, Lcom/facebook/ads/redexgen/X/4Q;->A03:Ljava/util/ArrayList;

    .line 11100
    .local p1, "scrapHeap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v7/widget/RecyclerView$ViewHolder;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4c;

    return-object v0

    .line 11101
    .end local p1    # "scrapHeap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v7/widget/RecyclerView$ViewHolder;>;"
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final A04()V
    .locals 1

    .line 11102
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4R;->A01:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4R;->A01:I

    .line 11103
    return-void
.end method

.method public final A05(IJ)V
    .locals 3

    .line 11104
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4R;->A01(I)Lcom/facebook/ads/redexgen/X/4Q;

    move-result-object v2

    .line 11105
    .local p0, "scrapData":Lcom/facebook/ads/redexgen/X/4Q;
    iget-wide v0, v2, Lcom/facebook/ads/redexgen/X/4Q;->A01:J

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/facebook/ads/redexgen/X/4R;->A00(JJ)J

    move-result-wide v0

    iput-wide v0, v2, Lcom/facebook/ads/redexgen/X/4Q;->A01:J

    .line 11106
    return-void
.end method

.method public final A06(IJ)V
    .locals 3

    .line 11107
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4R;->A01(I)Lcom/facebook/ads/redexgen/X/4Q;

    move-result-object v2

    .line 11108
    .local p0, "scrapData":Lcom/facebook/ads/redexgen/X/4Q;
    iget-wide v0, v2, Lcom/facebook/ads/redexgen/X/4Q;->A02:J

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/facebook/ads/redexgen/X/4R;->A00(JJ)J

    move-result-wide v0

    iput-wide v0, v2, Lcom/facebook/ads/redexgen/X/4Q;->A02:J

    .line 11109
    return-void
.end method

.method public final A07(Lcom/facebook/ads/redexgen/X/48;)V
    .locals 1

    .line 11110
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4R;->A01:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4R;->A01:I

    .line 11111
    return-void
.end method

.method public final A08(Lcom/facebook/ads/redexgen/X/48;Lcom/facebook/ads/redexgen/X/48;Z)V
    .locals 1

    .line 11112
    if-eqz p1, :cond_0

    .line 11113
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4R;->A04()V

    .line 11114
    :cond_0
    if-nez p3, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4R;->A01:I

    if-nez v0, :cond_1

    .line 11115
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4R;->A02()V

    .line 11116
    :cond_1
    if-eqz p2, :cond_2

    .line 11117
    invoke-virtual {p0, p2}, Lcom/facebook/ads/redexgen/X/4R;->A07(Lcom/facebook/ads/redexgen/X/48;)V

    .line 11118
    :cond_2
    return-void
.end method

.method public final A09(Lcom/facebook/ads/redexgen/X/4c;)V
    .locals 3

    .line 11119
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4c;->A0I()I

    move-result v1

    .line 11120
    .local p0, "viewType":I
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/4R;->A01(I)Lcom/facebook/ads/redexgen/X/4Q;

    move-result-object v0

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/4Q;->A03:Ljava/util/ArrayList;

    .line 11121
    .local p1, "scrapHeap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v7/widget/RecyclerView$ViewHolder;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4R;->A00:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4Q;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/4Q;->A00:I

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v1, v0, :cond_0

    .line 11122
    return-void

    .line 11123
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4c;->A0R()V

    .line 11124
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11125
    return-void
.end method

.method public final A0A(IJJ)Z
    .locals 5

    .line 11126
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4R;->A01(I)Lcom/facebook/ads/redexgen/X/4Q;

    move-result-object v0

    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/4Q;->A01:J

    .line 11127
    .local p0, "expectedDurationNs":J
    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    add-long/2addr p2, v3

    cmp-long v0, p2, p4

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0B(IJJ)Z
    .locals 5

    .line 11128
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4R;->A01(I)Lcom/facebook/ads/redexgen/X/4Q;

    move-result-object v0

    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/4Q;->A02:J

    .line 11129
    .local p0, "expectedDurationNs":J
    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    add-long/2addr p2, v3

    cmp-long v0, p2, p4

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
