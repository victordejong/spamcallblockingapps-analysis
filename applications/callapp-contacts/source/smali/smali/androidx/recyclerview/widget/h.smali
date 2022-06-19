.class public Landroidx/recyclerview/widget/h;
.super Landroidx/recyclerview/widget/o;
.source "SourceFile"


# instance fields
.field private b:Landroidx/recyclerview/widget/j;

.field private c:Landroidx/recyclerview/widget/j;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroidx/recyclerview/widget/o;-><init>()V

    return-void
.end method

.method private static a(Landroid/view/View;Landroidx/recyclerview/widget/j;)I
    .locals 1

    .line 142
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/j;->a(Landroid/view/View;)I

    move-result v0

    .line 143
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/j;->e(Landroid/view/View;)I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr v0, p0

    .line 144
    invoke-virtual {p1}, Landroidx/recyclerview/widget/j;->b()I

    move-result p0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/j;->e()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p0, p1

    sub-int/2addr v0, p0

    return v0
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView$i;Landroidx/recyclerview/widget/j;II)I
    .locals 2

    .line 161
    invoke-virtual {p0, p3, p4}, Landroidx/recyclerview/widget/h;->b(II)[I

    move-result-object p3

    .line 162
    invoke-static {p1, p2}, Landroidx/recyclerview/widget/h;->b(Landroidx/recyclerview/widget/RecyclerView$i;Landroidx/recyclerview/widget/j;)F

    move-result p1

    const/4 p2, 0x0

    const/4 p4, 0x0

    cmpg-float p4, p1, p4

    if-gtz p4, :cond_0

    return p2

    .line 167
    :cond_0
    aget p4, p3, p2

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    const/4 v0, 0x1

    aget v1, p3, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le p4, v1, :cond_1

    aget p2, p3, p2

    goto :goto_0

    :cond_1
    aget p2, p3, v0

    :goto_0
    int-to-float p2, p2

    div-float/2addr p2, p1

    .line 168
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method private static a(Landroidx/recyclerview/widget/RecyclerView$i;Landroidx/recyclerview/widget/j;)Landroid/view/View;
    .locals 8

    .line 183
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 189
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/j;->b()I

    move-result v2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/j;->e()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    const v3, 0x7fffffff

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    .line 193
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView$i;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 194
    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/j;->a(Landroid/view/View;)I

    move-result v6

    .line 195
    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/j;->e(Landroid/view/View;)I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    sub-int/2addr v6, v2

    .line 196
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v6, v3, :cond_1

    move-object v1, v5

    move v3, v6

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private static b(Landroidx/recyclerview/widget/RecyclerView$i;Landroidx/recyclerview/widget/j;)F
    .locals 10

    .line 226
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getChildCount()I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7fffffff

    const/high16 v5, -0x80000000

    move-object v4, v3

    const v5, 0x7fffffff

    const/high16 v6, -0x80000000

    :goto_0
    if-ge v2, v0, :cond_3

    .line 232
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$i;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 233
    invoke-static {v7}, Landroidx/recyclerview/widget/RecyclerView$i;->c(Landroid/view/View;)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    if-ge v8, v5, :cond_1

    move-object v3, v7

    move v5, v8

    :cond_1
    if-le v8, v6, :cond_2

    move-object v4, v7

    move v6, v8

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_6

    if-nez v4, :cond_4

    goto :goto_1

    .line 249
    :cond_4
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/j;->a(Landroid/view/View;)I

    move-result p0

    .line 250
    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/j;->a(Landroid/view/View;)I

    move-result v0

    .line 249
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 251
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/j;->b(Landroid/view/View;)I

    move-result v0

    .line 252
    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/j;->b(Landroid/view/View;)I

    move-result p1

    .line 251
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int/2addr p1, p0

    if-nez p1, :cond_5

    return v1

    :cond_5
    int-to-float p0, p1

    mul-float p0, p0, v1

    sub-int/2addr v6, v5

    add-int/lit8 v6, v6, 0x1

    int-to-float p1, v6

    div-float/2addr p0, p1

    return p0

    :cond_6
    :goto_1
    return v1
.end method

.method private c(Landroidx/recyclerview/widget/RecyclerView$i;)Landroidx/recyclerview/widget/j;
    .locals 1

    .line 262
    iget-object v0, p0, Landroidx/recyclerview/widget/h;->b:Landroidx/recyclerview/widget/j;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/recyclerview/widget/j;->a:Landroidx/recyclerview/widget/RecyclerView$i;

    if-eq v0, p1, :cond_1

    .line 263
    :cond_0
    invoke-static {p1}, Landroidx/recyclerview/widget/j;->b(Landroidx/recyclerview/widget/RecyclerView$i;)Landroidx/recyclerview/widget/j;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/h;->b:Landroidx/recyclerview/widget/j;

    .line 265
    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/h;->b:Landroidx/recyclerview/widget/j;

    return-object p1
.end method

.method private d(Landroidx/recyclerview/widget/RecyclerView$i;)Landroidx/recyclerview/widget/j;
    .locals 1

    .line 271
    iget-object v0, p0, Landroidx/recyclerview/widget/h;->c:Landroidx/recyclerview/widget/j;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/recyclerview/widget/j;->a:Landroidx/recyclerview/widget/RecyclerView$i;

    if-eq v0, p1, :cond_1

    .line 272
    :cond_0
    invoke-static {p1}, Landroidx/recyclerview/widget/j;->a(Landroidx/recyclerview/widget/RecyclerView$i;)Landroidx/recyclerview/widget/j;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/h;->c:Landroidx/recyclerview/widget/j;

    .line 274
    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/h;->c:Landroidx/recyclerview/widget/j;

    return-object p1
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView$i;II)I
    .locals 8

    .line 66
    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView$r$b;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 70
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$i;->getItemCount()I

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 75
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/h;->a(Landroidx/recyclerview/widget/RecyclerView$i;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_2

    return v1

    .line 80
    :cond_2
    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView$i;->c(Landroid/view/View;)I

    move-result v2

    if-ne v2, v1, :cond_3

    return v1

    .line 85
    :cond_3
    move-object v3, p1

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$r$b;

    add-int/lit8 v4, v0, -0x1

    .line 90
    invoke-interface {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$r$b;->c(I)Landroid/graphics/PointF;

    move-result-object v3

    if-nez v3, :cond_4

    return v1

    .line 97
    :cond_4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$i;->e()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v5, :cond_5

    .line 99
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/h;->d(Landroidx/recyclerview/widget/RecyclerView$i;)Landroidx/recyclerview/widget/j;

    move-result-object v5

    .line 98
    invoke-direct {p0, p1, v5, p2, v7}, Landroidx/recyclerview/widget/h;->a(Landroidx/recyclerview/widget/RecyclerView$i;Landroidx/recyclerview/widget/j;II)I

    move-result p2

    .line 100
    iget v5, v3, Landroid/graphics/PointF;->x:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_6

    neg-int p2, p2

    goto :goto_0

    :cond_5
    const/4 p2, 0x0

    .line 106
    :cond_6
    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$i;->f()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 108
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/h;->c(Landroidx/recyclerview/widget/RecyclerView$i;)Landroidx/recyclerview/widget/j;

    move-result-object v5

    .line 107
    invoke-direct {p0, p1, v5, v7, p3}, Landroidx/recyclerview/widget/h;->a(Landroidx/recyclerview/widget/RecyclerView$i;Landroidx/recyclerview/widget/j;II)I

    move-result p3

    .line 109
    iget v3, v3, Landroid/graphics/PointF;->y:F

    cmpg-float v3, v3, v6

    if-gez v3, :cond_8

    neg-int p3, p3

    goto :goto_1

    :cond_7
    const/4 p3, 0x0

    .line 116
    :cond_8
    :goto_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$i;->f()Z

    move-result p1

    if-eqz p1, :cond_9

    move p2, p3

    :cond_9
    if-nez p2, :cond_a

    return v1

    :cond_a
    add-int/2addr v2, p2

    if-gez v2, :cond_b

    goto :goto_2

    :cond_b
    move v7, v2

    :goto_2
    if-lt v7, v0, :cond_c

    goto :goto_3

    :cond_c
    move v4, v7

    :goto_3
    return v4
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$i;)Landroid/view/View;
    .locals 1

    .line 133
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$i;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/h;->c(Landroidx/recyclerview/widget/RecyclerView$i;)Landroidx/recyclerview/widget/j;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/recyclerview/widget/h;->a(Landroidx/recyclerview/widget/RecyclerView$i;Landroidx/recyclerview/widget/j;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 135
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$i;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/h;->d(Landroidx/recyclerview/widget/RecyclerView$i;)Landroidx/recyclerview/widget/j;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/recyclerview/widget/h;->a(Landroidx/recyclerview/widget/RecyclerView$i;Landroidx/recyclerview/widget/j;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$i;Landroid/view/View;)[I
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 47
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$i;->e()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 49
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/h;->d(Landroidx/recyclerview/widget/RecyclerView$i;)Landroidx/recyclerview/widget/j;

    move-result-object v1

    .line 48
    invoke-static {p2, v1}, Landroidx/recyclerview/widget/h;->a(Landroid/view/View;Landroidx/recyclerview/widget/j;)I

    move-result v1

    aput v1, v0, v2

    goto :goto_0

    :cond_0
    aput v2, v0, v2

    .line 54
    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$i;->f()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 56
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/h;->c(Landroidx/recyclerview/widget/RecyclerView$i;)Landroidx/recyclerview/widget/j;

    move-result-object p1

    .line 55
    invoke-static {p2, p1}, Landroidx/recyclerview/widget/h;->a(Landroid/view/View;Landroidx/recyclerview/widget/j;)I

    move-result p1

    aput p1, v0, v3

    goto :goto_1

    :cond_1
    aput v2, v0, v3

    :goto_1
    return-object v0
.end method
