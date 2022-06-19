.class public Landroidx/recyclerview/widget/RecyclerView$o;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "o"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/RecyclerView$o$a;
    }
.end annotation


# instance fields
.field a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroidx/recyclerview/widget/RecyclerView$o$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5635
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5658
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->a:Landroid/util/SparseArray;

    .line 5660
    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->b:I

    return-void
.end method

.method private b(I)Landroidx/recyclerview/widget/RecyclerView$o$a;
    .locals 2

    .prologue
    .line 5815
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$o$a;

    .line 5816
    if-nez v0, :cond_0

    .line 5817
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$o$a;

    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$o$a;-><init>()V

    .line 5818
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$o;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5820
    :cond_0
    return-object v0
.end method


# virtual methods
.method a(JJ)J
    .locals 7

    .prologue
    const-wide/16 v4, 0x4

    .line 5753
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 5756
    :goto_0
    return-wide p3

    :cond_0
    div-long v0, p1, v4

    const-wide/16 v2, 0x3

    mul-long/2addr v0, v2

    div-long v2, p3, v4

    add-long p3, v0, v2

    goto :goto_0
.end method

.method public a(I)Landroidx/recyclerview/widget/RecyclerView$x;
    .locals 3

    .prologue
    .line 5704
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$o$a;

    .line 5705
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$o$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5706
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$o$a;->a:Ljava/util/ArrayList;

    .line 5707
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 5708
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$x;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$x;->s()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5709
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$x;

    .line 5713
    :goto_1
    return-object v0

    .line 5707
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 5713
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a()V
    .locals 2

    .prologue
    .line 5666
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 5667
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$o$a;

    .line 5668
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$o$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5666
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 5670
    :cond_0
    return-void
.end method

.method a(IJ)V
    .locals 4

    .prologue
    .line 5760
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$o;->b(I)Landroidx/recyclerview/widget/RecyclerView$o$a;

    move-result-object v0

    .line 5761
    iget-wide v2, v0, Landroidx/recyclerview/widget/RecyclerView$o$a;->c:J

    invoke-virtual {p0, v2, v3, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$o;->a(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Landroidx/recyclerview/widget/RecyclerView$o$a;->c:J

    .line 5763
    return-void
.end method

.method a(Landroidx/recyclerview/widget/RecyclerView$a;Landroidx/recyclerview/widget/RecyclerView$a;Z)V
    .locals 1

    .prologue
    .line 5803
    if-eqz p1, :cond_0

    .line 5804
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->c()V

    .line 5806
    :cond_0
    if-nez p3, :cond_1

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->b:I

    if-nez v0, :cond_1

    .line 5807
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->a()V

    .line 5809
    :cond_1
    if-eqz p2, :cond_2

    .line 5810
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->b()V

    .line 5812
    :cond_2
    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$x;)V
    .locals 3

    .prologue
    .line 5740
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$x;->h()I

    move-result v0

    .line 5741
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$o;->b(I)Landroidx/recyclerview/widget/RecyclerView$o$a;

    move-result-object v1

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$o$a;->a:Ljava/util/ArrayList;

    .line 5742
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$o;->a:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$o$a;

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$o$a;->b:I

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v0, v2, :cond_0

    .line 5750
    :goto_0
    return-void

    .line 5748
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$x;->w()V

    .line 5749
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method a(IJJ)Z
    .locals 4

    .prologue
    .line 5772
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$o;->b(I)Landroidx/recyclerview/widget/RecyclerView$o$a;

    move-result-object v0

    iget-wide v0, v0, Landroidx/recyclerview/widget/RecyclerView$o$a;->c:J

    .line 5773
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    add-long/2addr v0, p2

    cmp-long v0, v0, p4

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b()V
    .locals 1

    .prologue
    .line 5782
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->b:I

    .line 5783
    return-void
.end method

.method b(IJ)V
    .locals 4

    .prologue
    .line 5766
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$o;->b(I)Landroidx/recyclerview/widget/RecyclerView$o$a;

    move-result-object v0

    .line 5767
    iget-wide v2, v0, Landroidx/recyclerview/widget/RecyclerView$o$a;->d:J

    invoke-virtual {p0, v2, v3, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$o;->a(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Landroidx/recyclerview/widget/RecyclerView$o$a;->d:J

    .line 5769
    return-void
.end method

.method b(IJJ)Z
    .locals 4

    .prologue
    .line 5777
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$o;->b(I)Landroidx/recyclerview/widget/RecyclerView$o$a;

    move-result-object v0

    iget-wide v0, v0, Landroidx/recyclerview/widget/RecyclerView$o$a;->d:J

    .line 5778
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    add-long/2addr v0, p2

    cmp-long v0, v0, p4

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c()V
    .locals 1

    .prologue
    .line 5786
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->b:I

    .line 5787
    return-void
.end method
