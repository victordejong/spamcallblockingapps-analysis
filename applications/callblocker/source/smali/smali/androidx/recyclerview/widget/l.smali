.class public Landroidx/recyclerview/widget/l;
.super Landroidx/recyclerview/widget/p;
.source "PagerSnapHelper.java"


# instance fields
.field private b:Landroidx/recyclerview/widget/k;

.field private c:Landroidx/recyclerview/widget/k;


# direct methods
.method private a(Landroidx/recyclerview/widget/RecyclerView$i;Landroid/view/View;Landroidx/recyclerview/widget/k;)I
    .locals 3

    .prologue
    .line 199
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/k;->a(Landroid/view/View;)I

    move-result v0

    .line 200
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/k;->e(Landroid/view/View;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 201
    invoke-virtual {p3}, Landroidx/recyclerview/widget/k;->c()I

    move-result v1

    invoke-virtual {p3}, Landroidx/recyclerview/widget/k;->f()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 202
    sub-int/2addr v0, v1

    return v0
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView$i;Landroidx/recyclerview/widget/k;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 217
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$i;->y()I

    move-result v5

    .line 218
    if-nez v5, :cond_1

    .line 238
    :cond_0
    return-object v3

    .line 223
    :cond_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/k;->c()I

    move-result v0

    invoke-virtual {p2}, Landroidx/recyclerview/widget/k;->f()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int v6, v0, v1

    .line 224
    const v1, 0x7fffffff

    .line 226
    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-ge v4, v5, :cond_0

    .line 227
    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView$i;->i(I)Landroid/view/View;

    move-result-object v2

    .line 228
    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/k;->a(Landroid/view/View;)I

    move-result v0

    .line 229
    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/k;->e(Landroid/view/View;)I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v0, v7

    .line 230
    sub-int/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 233
    if-ge v0, v1, :cond_2

    .line 226
    :goto_1
    add-int/lit8 v4, v4, 0x1

    move v1, v0

    move-object v3, v2

    goto :goto_0

    :cond_2
    move v0, v1

    move-object v2, v3

    goto :goto_1
.end method

.method private b(Landroidx/recyclerview/widget/RecyclerView$i;II)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 147
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$i;->f()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 148
    if-lez p2, :cond_1

    .line 150
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 148
    goto :goto_0

    .line 150
    :cond_2
    if-gtz p3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private d(Landroidx/recyclerview/widget/RecyclerView$i;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 155
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$i;->I()I

    move-result v1

    .line 156
    instance-of v2, p1, Landroidx/recyclerview/widget/RecyclerView$t$b;

    if-eqz v2, :cond_1

    .line 157
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$t$b;

    .line 159
    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$t$b;->d(I)Landroid/graphics/PointF;

    move-result-object v1

    .line 160
    if-eqz v1, :cond_1

    .line 161
    iget v2, v1, Landroid/graphics/PointF;->x:F

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    iget v1, v1, Landroid/graphics/PointF;->y:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 164
    :cond_1
    return v0
.end method

.method private e(Landroidx/recyclerview/widget/RecyclerView$i;)Landroidx/recyclerview/widget/k;
    .locals 1

    .prologue
    .line 243
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$i;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/l;->f(Landroidx/recyclerview/widget/RecyclerView$i;)Landroidx/recyclerview/widget/k;

    move-result-object v0

    .line 248
    :goto_0
    return-object v0

    .line 245
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$i;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/l;->g(Landroidx/recyclerview/widget/RecyclerView$i;)Landroidx/recyclerview/widget/k;

    move-result-object v0

    goto :goto_0

    .line 248
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f(Landroidx/recyclerview/widget/RecyclerView$i;)Landroidx/recyclerview/widget/k;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Landroidx/recyclerview/widget/l;->b:Landroidx/recyclerview/widget/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/l;->b:Landroidx/recyclerview/widget/k;

    iget-object v0, v0, Landroidx/recyclerview/widget/k;->a:Landroidx/recyclerview/widget/RecyclerView$i;

    if-eq v0, p1, :cond_1

    .line 255
    :cond_0
    invoke-static {p1}, Landroidx/recyclerview/widget/k;->b(Landroidx/recyclerview/widget/RecyclerView$i;)Landroidx/recyclerview/widget/k;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/l;->b:Landroidx/recyclerview/widget/k;

    .line 257
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/l;->b:Landroidx/recyclerview/widget/k;

    return-object v0
.end method

.method private g(Landroidx/recyclerview/widget/RecyclerView$i;)Landroidx/recyclerview/widget/k;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Landroidx/recyclerview/widget/l;->c:Landroidx/recyclerview/widget/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/l;->c:Landroidx/recyclerview/widget/k;

    iget-object v0, v0, Landroidx/recyclerview/widget/k;->a:Landroidx/recyclerview/widget/RecyclerView$i;

    if-eq v0, p1, :cond_1

    .line 264
    :cond_0
    invoke-static {p1}, Landroidx/recyclerview/widget/k;->a(Landroidx/recyclerview/widget/RecyclerView$i;)Landroidx/recyclerview/widget/k;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/l;->c:Landroidx/recyclerview/widget/k;

    .line 266
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/l;->c:Landroidx/recyclerview/widget/k;

    return-object v0
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView$i;II)I
    .locals 11

    .prologue
    const/4 v3, 0x0

    const/4 v6, -0x1

    .line 82
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$i;->I()I

    move-result v8

    .line 83
    if-nez v8, :cond_1

    move v0, v6

    .line 142
    :cond_0
    :goto_0
    return v0

    .line 87
    :cond_1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/l;->e(Landroidx/recyclerview/widget/RecyclerView$i;)Landroidx/recyclerview/widget/k;

    move-result-object v9

    .line 88
    if-nez v9, :cond_2

    move v0, v6

    .line 89
    goto :goto_0

    .line 94
    :cond_2
    const/high16 v4, -0x80000000

    .line 96
    const v0, 0x7fffffff

    .line 99
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$i;->y()I

    move-result v10

    .line 100
    const/4 v1, 0x0

    move v7, v1

    move-object v2, v3

    move-object v5, v3

    :goto_1
    if-ge v7, v10, :cond_6

    .line 101
    invoke-virtual {p1, v7}, Landroidx/recyclerview/widget/RecyclerView$i;->i(I)Landroid/view/View;

    move-result-object v3

    .line 102
    if-nez v3, :cond_4

    .line 100
    :cond_3
    :goto_2
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_1

    .line 105
    :cond_4
    invoke-direct {p0, p1, v3, v9}, Landroidx/recyclerview/widget/l;->a(Landroidx/recyclerview/widget/RecyclerView$i;Landroid/view/View;Landroidx/recyclerview/widget/k;)I

    move-result v1

    .line 107
    if-gtz v1, :cond_5

    if-le v1, v4, :cond_5

    move v4, v1

    move-object v5, v3

    .line 112
    :cond_5
    if-ltz v1, :cond_3

    if-ge v1, v0, :cond_3

    move v0, v1

    move-object v2, v3

    .line 115
    goto :goto_2

    .line 120
    :cond_6
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/l;->b(Landroidx/recyclerview/widget/RecyclerView$i;II)Z

    move-result v0

    .line 121
    if-eqz v0, :cond_7

    if-eqz v2, :cond_7

    .line 122
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$i;->d(Landroid/view/View;)I

    move-result v0

    goto :goto_0

    .line 123
    :cond_7
    if-nez v0, :cond_8

    if-eqz v5, :cond_8

    .line 124
    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/RecyclerView$i;->d(Landroid/view/View;)I

    move-result v0

    goto :goto_0

    .line 131
    :cond_8
    if-eqz v0, :cond_9

    .line 132
    :goto_3
    if-nez v5, :cond_a

    move v0, v6

    .line 133
    goto :goto_0

    :cond_9
    move-object v5, v2

    .line 131
    goto :goto_3

    .line 135
    :cond_a
    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/RecyclerView$i;->d(Landroid/view/View;)I

    move-result v1

    .line 137
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/l;->d(Landroidx/recyclerview/widget/RecyclerView$i;)Z

    move-result v2

    if-ne v2, v0, :cond_c

    move v0, v6

    :goto_4
    add-int/2addr v0, v1

    .line 139
    if-ltz v0, :cond_b

    if-lt v0, v8, :cond_0

    :cond_b
    move v0, v6

    .line 140
    goto :goto_0

    .line 137
    :cond_c
    const/4 v0, 0x1

    goto :goto_4
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$i;)Landroid/view/View;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$i;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/l;->f(Landroidx/recyclerview/widget/RecyclerView$i;)Landroidx/recyclerview/widget/k;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/l;->a(Landroidx/recyclerview/widget/RecyclerView$i;Landroidx/recyclerview/widget/k;)Landroid/view/View;

    move-result-object v0

    .line 76
    :goto_0
    return-object v0

    .line 73
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$i;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/l;->g(Landroidx/recyclerview/widget/RecyclerView$i;)Landroidx/recyclerview/widget/k;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/l;->a(Landroidx/recyclerview/widget/RecyclerView$i;Landroidx/recyclerview/widget/k;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 76
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$i;Landroid/view/View;)[I
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 52
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$i;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/l;->g(Landroidx/recyclerview/widget/RecyclerView$i;)Landroidx/recyclerview/widget/k;

    move-result-object v1

    .line 53
    invoke-direct {p0, p1, p2, v1}, Landroidx/recyclerview/widget/l;->a(Landroidx/recyclerview/widget/RecyclerView$i;Landroid/view/View;Landroidx/recyclerview/widget/k;)I

    move-result v1

    aput v1, v0, v2

    .line 59
    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$i;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/l;->f(Landroidx/recyclerview/widget/RecyclerView$i;)Landroidx/recyclerview/widget/k;

    move-result-object v1

    .line 60
    invoke-direct {p0, p1, p2, v1}, Landroidx/recyclerview/widget/l;->a(Landroidx/recyclerview/widget/RecyclerView$i;Landroid/view/View;Landroidx/recyclerview/widget/k;)I

    move-result v1

    aput v1, v0, v3

    .line 65
    :goto_1
    return-object v0

    .line 56
    :cond_0
    aput v2, v0, v2

    goto :goto_0

    .line 63
    :cond_1
    aput v2, v0, v3

    goto :goto_1
.end method

.method protected b(Landroidx/recyclerview/widget/RecyclerView$i;)Landroidx/recyclerview/widget/h;
    .locals 2

    .prologue
    .line 169
    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView$t$b;

    if-nez v0, :cond_0

    .line 170
    const/4 v0, 0x0

    .line 172
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/l$1;

    iget-object v1, p0, Landroidx/recyclerview/widget/l;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/recyclerview/widget/l$1;-><init>(Landroidx/recyclerview/widget/l;Landroid/content/Context;)V

    goto :goto_0
.end method
