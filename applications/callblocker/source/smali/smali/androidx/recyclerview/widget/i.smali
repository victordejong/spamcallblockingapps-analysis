.class public Landroidx/recyclerview/widget/i;
.super Landroidx/recyclerview/widget/p;
.source "LinearSnapHelper.java"


# instance fields
.field private b:Landroidx/recyclerview/widget/k;

.field private c:Landroidx/recyclerview/widget/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroidx/recyclerview/widget/p;-><init>()V

    return-void
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView$i;Landroid/view/View;Landroidx/recyclerview/widget/k;)I
    .locals 3

    .prologue
    .line 143
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/k;->a(Landroid/view/View;)I

    move-result v0

    .line 144
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/k;->e(Landroid/view/View;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 145
    invoke-virtual {p3}, Landroidx/recyclerview/widget/k;->c()I

    move-result v1

    invoke-virtual {p3}, Landroidx/recyclerview/widget/k;->f()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 146
    sub-int/2addr v0, v1

    return v0
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView$i;Landroidx/recyclerview/widget/k;II)I
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 162
    invoke-virtual {p0, p3, p4}, Landroidx/recyclerview/widget/i;->b(II)[I

    move-result-object v1

    .line 163
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/i;->b(Landroidx/recyclerview/widget/RecyclerView$i;Landroidx/recyclerview/widget/k;)F

    move-result v2

    .line 164
    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_0

    .line 169
    :goto_0
    return v0

    .line 167
    :cond_0
    aget v3, v1, v0

    .line 168
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    aget v4, v1, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-le v3, v4, :cond_1

    aget v0, v1, v0

    .line 169
    :goto_1
    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    .line 168
    :cond_1
    aget v0, v1, v5

    goto :goto_1
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView$i;Landroidx/recyclerview/widget/k;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 184
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$i;->y()I

    move-result v5

    .line 185
    if-nez v5, :cond_1

    .line 205
    :cond_0
    return-object v3

    .line 190
    :cond_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/k;->c()I

    move-result v0

    invoke-virtual {p2}, Landroidx/recyclerview/widget/k;->f()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int v6, v0, v1

    .line 191
    const v1, 0x7fffffff

    .line 193
    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-ge v4, v5, :cond_0

    .line 194
    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView$i;->i(I)Landroid/view/View;

    move-result-object v2

    .line 195
    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/k;->a(Landroid/view/View;)I

    move-result v0

    .line 196
    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/k;->e(Landroid/view/View;)I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v0, v7

    .line 197
    sub-int/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 200
    if-ge v0, v1, :cond_2

    .line 193
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

.method private b(Landroidx/recyclerview/widget/RecyclerView$i;Landroidx/recyclerview/widget/k;)F
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    .line 223
    .line 225
    const v2, 0x7fffffff

    .line 226
    const/high16 v0, -0x80000000

    .line 227
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$i;->y()I

    move-result v8

    .line 228
    if-nez v8, :cond_0

    move v0, v6

    .line 258
    :goto_0
    return v0

    .line 232
    :cond_0
    const/4 v1, 0x0

    move v7, v1

    move-object v3, v4

    move-object v5, v4

    :goto_1
    if-ge v7, v8, :cond_4

    .line 233
    invoke-virtual {p1, v7}, Landroidx/recyclerview/widget/RecyclerView$i;->i(I)Landroid/view/View;

    move-result-object v4

    .line 234
    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView$i;->d(Landroid/view/View;)I

    move-result v1

    .line 235
    const/4 v9, -0x1

    if-ne v1, v9, :cond_2

    .line 232
    :cond_1
    :goto_2
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_1

    .line 238
    :cond_2
    if-ge v1, v2, :cond_3

    move v2, v1

    move-object v5, v4

    .line 242
    :cond_3
    if-le v1, v0, :cond_1

    move v0, v1

    move-object v3, v4

    .line 244
    goto :goto_2

    .line 247
    :cond_4
    if-eqz v5, :cond_5

    if-nez v3, :cond_6

    :cond_5
    move v0, v6

    .line 248
    goto :goto_0

    .line 250
    :cond_6
    invoke-virtual {p2, v5}, Landroidx/recyclerview/widget/k;->a(Landroid/view/View;)I

    move-result v1

    .line 251
    invoke-virtual {p2, v3}, Landroidx/recyclerview/widget/k;->a(Landroid/view/View;)I

    move-result v4

    .line 250
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 252
    invoke-virtual {p2, v5}, Landroidx/recyclerview/widget/k;->b(Landroid/view/View;)I

    move-result v4

    .line 253
    invoke-virtual {p2, v3}, Landroidx/recyclerview/widget/k;->b(Landroid/view/View;)I

    move-result v3

    .line 252
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 254
    sub-int v1, v3, v1

    .line 255
    if-nez v1, :cond_7

    move v0, v6

    .line 256
    goto :goto_0

    .line 258
    :cond_7
    int-to-float v1, v1

    mul-float/2addr v1, v6

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    div-float v0, v1, v0

    goto :goto_0
.end method

.method private d(Landroidx/recyclerview/widget/RecyclerView$i;)Landroidx/recyclerview/widget/k;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Landroidx/recyclerview/widget/i;->b:Landroidx/recyclerview/widget/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/i;->b:Landroidx/recyclerview/widget/k;

    iget-object v0, v0, Landroidx/recyclerview/widget/k;->a:Landroidx/recyclerview/widget/RecyclerView$i;

    if-eq v0, p1, :cond_1

    .line 264
    :cond_0
    invoke-static {p1}, Landroidx/recyclerview/widget/k;->b(Landroidx/recyclerview/widget/RecyclerView$i;)Landroidx/recyclerview/widget/k;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/i;->b:Landroidx/recyclerview/widget/k;

    .line 266
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/i;->b:Landroidx/recyclerview/widget/k;

    return-object v0
.end method

.method private e(Landroidx/recyclerview/widget/RecyclerView$i;)Landroidx/recyclerview/widget/k;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Landroidx/recyclerview/widget/i;->c:Landroidx/recyclerview/widget/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/i;->c:Landroidx/recyclerview/widget/k;

    iget-object v0, v0, Landroidx/recyclerview/widget/k;->a:Landroidx/recyclerview/widget/RecyclerView$i;

    if-eq v0, p1, :cond_1

    .line 273
    :cond_0
    invoke-static {p1}, Landroidx/recyclerview/widget/k;->a(Landroidx/recyclerview/widget/RecyclerView$i;)Landroidx/recyclerview/widget/k;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/i;->c:Landroidx/recyclerview/widget/k;

    .line 275
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/i;->c:Landroidx/recyclerview/widget/k;

    return-object v0
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView$i;II)I
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 66
    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView$t$b;

    if-nez v0, :cond_1

    move v0, v3

    .line 128
    :cond_0
    :goto_0
    return v0

    .line 70
    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$i;->I()I

    move-result v4

    .line 71
    if-nez v4, :cond_2

    move v0, v3

    .line 72
    goto :goto_0

    .line 75
    :cond_2
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/i;->a(Landroidx/recyclerview/widget/RecyclerView$i;)Landroid/view/View;

    move-result-object v0

    .line 76
    if-nez v0, :cond_3

    move v0, v3

    .line 77
    goto :goto_0

    .line 80
    :cond_3
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$i;->d(Landroid/view/View;)I

    move-result v5

    .line 81
    if-ne v5, v3, :cond_4

    move v0, v3

    .line 82
    goto :goto_0

    :cond_4
    move-object v0, p1

    .line 85
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$t$b;

    .line 90
    add-int/lit8 v2, v4, -0x1

    invoke-interface {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$t$b;->d(I)Landroid/graphics/PointF;

    move-result-object v6

    .line 91
    if-nez v6, :cond_5

    move v0, v3

    .line 93
    goto :goto_0

    .line 97
    :cond_5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$i;->f()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 99
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/i;->e(Landroidx/recyclerview/widget/RecyclerView$i;)Landroidx/recyclerview/widget/k;

    move-result-object v0

    .line 98
    invoke-direct {p0, p1, v0, p2, v1}, Landroidx/recyclerview/widget/i;->a(Landroidx/recyclerview/widget/RecyclerView$i;Landroidx/recyclerview/widget/k;II)I

    move-result v0

    .line 100
    iget v2, v6, Landroid/graphics/PointF;->x:F

    cmpg-float v2, v2, v7

    if-gez v2, :cond_6

    .line 101
    neg-int v0, v0

    .line 106
    :cond_6
    :goto_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$i;->g()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 108
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/i;->d(Landroidx/recyclerview/widget/RecyclerView$i;)Landroidx/recyclerview/widget/k;

    move-result-object v2

    .line 107
    invoke-direct {p0, p1, v2, v1, p3}, Landroidx/recyclerview/widget/i;->a(Landroidx/recyclerview/widget/RecyclerView$i;Landroidx/recyclerview/widget/k;II)I

    move-result v2

    .line 109
    iget v6, v6, Landroid/graphics/PointF;->y:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_7

    .line 110
    neg-int v2, v2

    .line 116
    :cond_7
    :goto_2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$i;->g()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 117
    :goto_3
    if-nez v2, :cond_b

    move v0, v3

    .line 118
    goto :goto_0

    :cond_8
    move v0, v1

    .line 104
    goto :goto_1

    :cond_9
    move v2, v1

    .line 113
    goto :goto_2

    :cond_a
    move v2, v0

    .line 116
    goto :goto_3

    .line 121
    :cond_b
    add-int v0, v5, v2

    .line 122
    if-gez v0, :cond_c

    move v0, v1

    .line 125
    :cond_c
    if-lt v0, v4, :cond_0

    .line 126
    add-int/lit8 v0, v4, -0x1

    goto :goto_0
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$i;)Landroid/view/View;
    .locals 1

    .prologue
    .line 133
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$i;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/i;->d(Landroidx/recyclerview/widget/RecyclerView$i;)Landroidx/recyclerview/widget/k;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/i;->a(Landroidx/recyclerview/widget/RecyclerView$i;Landroidx/recyclerview/widget/k;)Landroid/view/View;

    move-result-object v0

    .line 138
    :goto_0
    return-object v0

    .line 135
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$i;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/i;->e(Landroidx/recyclerview/widget/RecyclerView$i;)Landroidx/recyclerview/widget/k;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/i;->a(Landroidx/recyclerview/widget/RecyclerView$i;Landroidx/recyclerview/widget/k;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 138
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$i;Landroid/view/View;)[I
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 47
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$i;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/i;->e(Landroidx/recyclerview/widget/RecyclerView$i;)Landroidx/recyclerview/widget/k;

    move-result-object v1

    .line 48
    invoke-direct {p0, p1, p2, v1}, Landroidx/recyclerview/widget/i;->a(Landroidx/recyclerview/widget/RecyclerView$i;Landroid/view/View;Landroidx/recyclerview/widget/k;)I

    move-result v1

    aput v1, v0, v2

    .line 54
    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$i;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/i;->d(Landroidx/recyclerview/widget/RecyclerView$i;)Landroidx/recyclerview/widget/k;

    move-result-object v1

    .line 55
    invoke-direct {p0, p1, p2, v1}, Landroidx/recyclerview/widget/i;->a(Landroidx/recyclerview/widget/RecyclerView$i;Landroid/view/View;Landroidx/recyclerview/widget/k;)I

    move-result v1

    aput v1, v0, v3

    .line 60
    :goto_1
    return-object v0

    .line 51
    :cond_0
    aput v2, v0, v2

    goto :goto_0

    .line 58
    :cond_1
    aput v2, v0, v3

    goto :goto_1
.end method
