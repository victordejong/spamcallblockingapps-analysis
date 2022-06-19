.class public Lcom/a/a/a/a/c/i;
.super Ljava/lang/Object;
.source "DraggingItemInfo.java"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:J

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:Landroid/graphics/Rect;

.field public final i:I


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$w;II)V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/a/a/a/a/c/i;->a:I

    .line 37
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/a/a/a/a/c/i;->b:I

    .line 38
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$w;->getItemId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/a/a/a/a/c/i;->c:J

    .line 39
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    iput p1, p0, Lcom/a/a/a/a/c/i;->d:I

    .line 40
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    iput p1, p0, Lcom/a/a/a/a/c/i;->e:I

    .line 41
    iget p1, p0, Lcom/a/a/a/a/c/i;->d:I

    sub-int/2addr p3, p1

    iput p3, p0, Lcom/a/a/a/a/c/i;->f:I

    .line 42
    iget p1, p0, Lcom/a/a/a/a/c/i;->e:I

    sub-int/2addr p4, p1

    iput p4, p0, Lcom/a/a/a/a/c/i;->g:I

    .line 43
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/a/a/a/a/c/i;->h:Landroid/graphics/Rect;

    .line 44
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    iget-object p3, p0, Lcom/a/a/a/a/c/i;->h:Landroid/graphics/Rect;

    invoke-static {p1, p3}, Lcom/a/a/a/a/d/a;->a(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 45
    invoke-static {p2}, Lcom/a/a/a/a/d/a;->a(Landroidx/recyclerview/widget/RecyclerView$w;)I

    move-result p1

    iput p1, p0, Lcom/a/a/a/a/c/i;->i:I

    return-void
.end method

.method private constructor <init>(Lcom/a/a/a/a/c/i;Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 5

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iget-wide v0, p1, Lcom/a/a/a/a/c/i;->c:J

    iput-wide v0, p0, Lcom/a/a/a/a/c/i;->c:J

    .line 50
    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/a/a/a/a/c/i;->a:I

    .line 51
    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/a/a/a/a/c/i;->b:I

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/a/a/a/a/c/i;->h:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/a/a/a/a/c/i;->h:Landroid/graphics/Rect;

    .line 53
    invoke-static {p2}, Lcom/a/a/a/a/d/a;->a(Landroidx/recyclerview/widget/RecyclerView$w;)I

    move-result p2

    iput p2, p0, Lcom/a/a/a/a/c/i;->i:I

    .line 54
    iget p2, p1, Lcom/a/a/a/a/c/i;->d:I

    iput p2, p0, Lcom/a/a/a/a/c/i;->d:I

    .line 55
    iget p2, p1, Lcom/a/a/a/a/c/i;->e:I

    iput p2, p0, Lcom/a/a/a/a/c/i;->e:I

    .line 57
    iget p2, p1, Lcom/a/a/a/a/c/i;->a:I

    int-to-float p2, p2

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p2, v0

    .line 58
    iget v1, p1, Lcom/a/a/a/a/c/i;->b:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    .line 59
    iget v2, p0, Lcom/a/a/a/a/c/i;->a:I

    int-to-float v3, v2

    mul-float/2addr v3, v0

    .line 60
    iget v4, p0, Lcom/a/a/a/a/c/i;->b:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    .line 62
    iget v0, p1, Lcom/a/a/a/a/c/i;->f:I

    int-to-float v0, v0

    sub-float/2addr v0, p2

    .line 63
    iget p1, p1, Lcom/a/a/a/a/c/i;->g:I

    int-to-float p1, p1

    sub-float/2addr p1, v1

    add-float p2, v3, v0

    add-float/2addr p1, v4

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-ltz v1, :cond_0

    int-to-float v1, v2

    cmpg-float v1, p2, v1

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    move p2, v3

    :goto_0
    float-to-int p2, p2

    .line 68
    iput p2, p0, Lcom/a/a/a/a/c/i;->f:I

    cmpl-float p2, p1, v0

    if-ltz p2, :cond_1

    .line 69
    iget p2, p0, Lcom/a/a/a/a/c/i;->b:I

    int-to-float p2, p2

    cmpg-float p2, p1, p2

    if-gez p2, :cond_1

    goto :goto_1

    :cond_1
    move p1, v4

    :goto_1
    float-to-int p1, p1

    iput p1, p0, Lcom/a/a/a/a/c/i;->g:I

    return-void
.end method

.method public static a(Lcom/a/a/a/a/c/i;Landroidx/recyclerview/widget/RecyclerView$w;)Lcom/a/a/a/a/c/i;
    .locals 1

    .line 73
    new-instance v0, Lcom/a/a/a/a/c/i;

    invoke-direct {v0, p0, p1}, Lcom/a/a/a/a/c/i;-><init>(Lcom/a/a/a/a/c/i;Landroidx/recyclerview/widget/RecyclerView$w;)V

    return-object v0
.end method
