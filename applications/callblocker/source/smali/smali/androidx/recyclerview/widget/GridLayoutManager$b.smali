.class public Landroidx/recyclerview/widget/GridLayoutManager$b;
.super Landroidx/recyclerview/widget/RecyclerView$j;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field a:I

.field b:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 1384
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$j;-><init>(II)V

    .line 1375
    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$b;->a:I

    .line 1377
    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$b;->b:I

    .line 1385
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 1380
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$j;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1375
    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$b;->a:I

    .line 1377
    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$b;->b:I

    .line 1381
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 1392
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$j;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1375
    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$b;->a:I

    .line 1377
    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$b;->b:I

    .line 1393
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    .prologue
    .line 1388
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$j;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1375
    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$b;->a:I

    .line 1377
    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$b;->b:I

    .line 1389
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 1414
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$b;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 1424
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$b;->b:I

    return v0
.end method
