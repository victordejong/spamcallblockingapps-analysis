.class public abstract Landroidx/recyclerview/widget/GridLayoutManager$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# instance fields
.field final a:Landroid/util/SparseIntArray;

.field final b:Landroid/util/SparseIntArray;

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 844
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 846
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$b;->a:Landroid/util/SparseIntArray;

    .line 847
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$b;->b:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    .line 849
    iput-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$b;->c:Z

    .line 850
    iput-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$b;->d:Z

    return-void
.end method

.method private static a(Landroid/util/SparseIntArray;I)I
    .locals 4

    .line 1008
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-gt v1, v0, :cond_1

    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    .line 1014
    invoke-virtual {p0, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    if-ge v3, p1, :cond_0

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_2

    .line 1022
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result p1

    if-ge v1, p1, :cond_2

    .line 1023
    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result p0

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method private d(II)I
    .locals 5

    .line 1042
    iget-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$b;->d:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 1044
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$b;->b:Landroid/util/SparseIntArray;

    invoke-static {v0, p1}, Landroidx/recyclerview/widget/GridLayoutManager$b;->a(Landroid/util/SparseIntArray;I)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 1046
    iget-object v3, p0, Landroidx/recyclerview/widget/GridLayoutManager$b;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    add-int/lit8 v4, v0, 0x1

    .line 1048
    invoke-virtual {p0, v0, p2}, Landroidx/recyclerview/widget/GridLayoutManager$b;->b(II)I

    move-result v0

    add-int/2addr v0, v2

    if-ne v0, p2, :cond_1

    add-int/lit8 v3, v3, 0x1

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_1
    :goto_0
    if-ge v4, p1, :cond_4

    add-int/lit8 v0, v0, 0x1

    if-ne v0, p2, :cond_2

    add-int/lit8 v3, v3, 0x1

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    if-le v0, p2, :cond_3

    add-int/lit8 v3, v3, 0x1

    const/4 v0, 0x1

    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    add-int/2addr v0, v2

    if-le v0, p2, :cond_5

    add-int/lit8 v3, v3, 0x1

    :cond_5
    return v3
.end method


# virtual methods
.method public a(II)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne v1, p2, :cond_0

    return v0

    .line 983
    :cond_0
    iget-boolean v2, p0, Landroidx/recyclerview/widget/GridLayoutManager$b;->c:Z

    if-eqz v2, :cond_1

    .line 984
    iget-object v2, p0, Landroidx/recyclerview/widget/GridLayoutManager$b;->a:Landroid/util/SparseIntArray;

    invoke-static {v2, p1}, Landroidx/recyclerview/widget/GridLayoutManager$b;->a(Landroid/util/SparseIntArray;I)I

    move-result v2

    if-ltz v2, :cond_1

    .line 986
    iget-object v3, p0, Landroidx/recyclerview/widget/GridLayoutManager$b;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    add-int/2addr v3, v1

    add-int/2addr v2, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, p1, :cond_4

    add-int/lit8 v3, v3, 0x1

    if-ne v3, p2, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    if-le v3, p2, :cond_3

    const/4 v3, 0x1

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 p1, v3, 0x1

    if-gt p1, p2, :cond_5

    return v3

    :cond_5
    return v0
.end method

.method final b(II)I
    .locals 2

    .line 927
    iget-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$b;->c:Z

    if-nez v0, :cond_0

    .line 928
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager$b;->a(II)I

    move-result p1

    return p1

    .line 930
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$b;->a:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v1, :cond_1

    return v0

    .line 934
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager$b;->a(II)I

    move-result p2

    .line 935
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$b;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    return p2
.end method

.method final c(II)I
    .locals 2

    .line 940
    iget-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$b;->d:Z

    if-nez v0, :cond_0

    .line 941
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager$b;->d(II)I

    move-result p1

    return p1

    .line 943
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$b;->b:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v1, :cond_1

    return v0

    .line 947
    :cond_1
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager$b;->d(II)I

    move-result p2

    .line 948
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$b;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    return p2
.end method
