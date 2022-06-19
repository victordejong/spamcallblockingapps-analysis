.class public abstract Landroidx/recyclerview/widget/GridLayoutManager$c;
.super Ljava/lang/Object;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation


# instance fields
.field final a:Landroid/util/SparseIntArray;

.field final b:Landroid/util/SparseIntArray;

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 834
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 836
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$c;->a:Landroid/util/SparseIntArray;

    .line 837
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$c;->b:Landroid/util/SparseIntArray;

    .line 839
    iput-boolean v1, p0, Landroidx/recyclerview/widget/GridLayoutManager$c;->c:Z

    .line 840
    iput-boolean v1, p0, Landroidx/recyclerview/widget/GridLayoutManager$c;->d:Z

    return-void
.end method

.method static a(Landroid/util/SparseIntArray;I)I
    .locals 4

    .prologue
    .line 997
    const/4 v1, 0x0

    .line 998
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 1000
    :goto_0
    if-gt v1, v0, :cond_1

    .line 1003
    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    .line 1004
    invoke-virtual {p0, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 1005
    if-ge v3, p1, :cond_0

    .line 1006
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    .line 1008
    :cond_0
    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    .line 1011
    :cond_1
    add-int/lit8 v0, v1, -0x1

    .line 1012
    if-ltz v0, :cond_2

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1013
    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    .line 1015
    :goto_1
    return v0

    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method public abstract a(I)I
.end method

.method public a(II)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 966
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager$c;->a(I)I

    move-result v4

    .line 967
    if-ne v4, p2, :cond_1

    .line 993
    :cond_0
    :goto_0
    return v1

    .line 973
    :cond_1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$c;->c:Z

    if-eqz v0, :cond_5

    .line 974
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$c;->a:Landroid/util/SparseIntArray;

    invoke-static {v0, p1}, Landroidx/recyclerview/widget/GridLayoutManager$c;->a(Landroid/util/SparseIntArray;I)I

    move-result v0

    .line 975
    if-ltz v0, :cond_5

    .line 976
    iget-object v2, p0, Landroidx/recyclerview/widget/GridLayoutManager$c;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/GridLayoutManager$c;->a(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 977
    add-int/lit8 v0, v0, 0x1

    :goto_1
    move v3, v0

    .line 980
    :goto_2
    if-ge v3, p1, :cond_4

    .line 981
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/GridLayoutManager$c;->a(I)I

    move-result v0

    .line 982
    add-int/2addr v2, v0

    .line 983
    if-ne v2, p2, :cond_3

    move v0, v1

    .line 980
    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    move v2, v0

    goto :goto_2

    .line 985
    :cond_3
    if-gt v2, p2, :cond_2

    move v0, v2

    goto :goto_3

    .line 990
    :cond_4
    add-int v0, v2, v4

    if-gt v0, p2, :cond_0

    move v1, v2

    .line 991
    goto :goto_0

    :cond_5
    move v0, v1

    move v2, v1

    goto :goto_1
.end method

.method public a()V
    .locals 1

    .prologue
    .line 887
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$c;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 888
    return-void
.end method

.method b(II)I
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 917
    iget-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$c;->c:Z

    if-nez v0, :cond_1

    .line 918
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager$c;->a(II)I

    move-result v0

    .line 926
    :cond_0
    :goto_0
    return v0

    .line 920
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$c;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 921
    if-ne v0, v1, :cond_0

    .line 924
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager$c;->a(II)I

    move-result v0

    .line 925
    iget-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager$c;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 895
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$c;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 896
    return-void
.end method

.method c(II)I
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 930
    iget-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$c;->d:Z

    if-nez v0, :cond_1

    .line 931
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager$c;->d(II)I

    move-result v0

    .line 939
    :cond_0
    :goto_0
    return v0

    .line 933
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$c;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 934
    if-ne v0, v1, :cond_0

    .line 937
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager$c;->d(II)I

    move-result v0

    .line 938
    iget-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager$c;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0
.end method

.method public d(II)I
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 1029
    .line 1032
    iget-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$c;->d:Z

    if-eqz v0, :cond_5

    .line 1034
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$c;->b:Landroid/util/SparseIntArray;

    invoke-static {v0, p1}, Landroidx/recyclerview/widget/GridLayoutManager$c;->a(Landroid/util/SparseIntArray;I)I

    move-result v3

    .line 1035
    const/4 v0, -0x1

    if-eq v3, v0, :cond_5

    .line 1036
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$c;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    .line 1037
    add-int/lit8 v0, v3, 0x1

    .line 1038
    invoke-virtual {p0, v3, p2}, Landroidx/recyclerview/widget/GridLayoutManager$c;->b(II)I

    move-result v4

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/GridLayoutManager$c;->a(I)I

    move-result v3

    add-int/2addr v3, v4

    .line 1039
    if-ne v3, p2, :cond_0

    .line 1041
    add-int/lit8 v2, v2, 0x1

    move v3, v1

    .line 1045
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager$c;->a(I)I

    move-result v7

    move v5, v0

    move v6, v3

    .line 1046
    :goto_1
    if-ge v5, p1, :cond_2

    .line 1047
    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/GridLayoutManager$c;->a(I)I

    move-result v3

    .line 1048
    add-int v4, v6, v3

    .line 1049
    if-ne v4, p2, :cond_1

    .line 1051
    add-int/lit8 v0, v2, 0x1

    move v3, v1

    .line 1046
    :goto_2
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v2, v0

    move v6, v3

    goto :goto_1

    .line 1052
    :cond_1
    if-le v4, p2, :cond_4

    .line 1055
    add-int/lit8 v0, v2, 0x1

    goto :goto_2

    .line 1058
    :cond_2
    add-int v0, v6, v7

    if-le v0, p2, :cond_3

    .line 1059
    add-int/lit8 v2, v2, 0x1

    .line 1061
    :cond_3
    return v2

    :cond_4
    move v0, v2

    move v3, v4

    goto :goto_2

    :cond_5
    move v0, v1

    move v2, v1

    move v3, v1

    goto :goto_0
.end method
