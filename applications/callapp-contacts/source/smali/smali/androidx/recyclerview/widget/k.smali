.class public Landroidx/recyclerview/widget/k;
.super Landroidx/recyclerview/widget/o;
.source "SourceFile"


# instance fields
.field private b:Landroidx/recyclerview/widget/j;

.field private c:Landroidx/recyclerview/widget/j;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroidx/recyclerview/widget/o;-><init>()V

    return-void
.end method

.method private static a(Landroid/view/View;Landroidx/recyclerview/widget/j;)I
    .locals 1

    .line 200
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/j;->a(Landroid/view/View;)I

    move-result v0

    .line 201
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/j;->e(Landroid/view/View;)I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr v0, p0

    .line 202
    invoke-virtual {p1}, Landroidx/recyclerview/widget/j;->b()I

    move-result p0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/j;->e()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p0, p1

    sub-int/2addr v0, p0

    return v0
.end method

.method private static a(Landroidx/recyclerview/widget/RecyclerView$i;Landroidx/recyclerview/widget/j;)Landroid/view/View;
    .locals 8

    .line 218
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 224
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

    .line 228
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView$i;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 229
    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/j;->a(Landroid/view/View;)I

    move-result v6

    .line 230
    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/j;->e(Landroid/view/View;)I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    sub-int/2addr v6, v2

    .line 231
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

.method private c(Landroidx/recyclerview/widget/RecyclerView$i;)Landroidx/recyclerview/widget/j;
    .locals 1

    .line 255
    iget-object v0, p0, Landroidx/recyclerview/widget/k;->b:Landroidx/recyclerview/widget/j;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/recyclerview/widget/j;->a:Landroidx/recyclerview/widget/RecyclerView$i;

    if-eq v0, p1, :cond_1

    .line 256
    :cond_0
    invoke-static {p1}, Landroidx/recyclerview/widget/j;->b(Landroidx/recyclerview/widget/RecyclerView$i;)Landroidx/recyclerview/widget/j;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/k;->b:Landroidx/recyclerview/widget/j;

    .line 258
    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/k;->b:Landroidx/recyclerview/widget/j;

    return-object p1
.end method

.method private d(Landroidx/recyclerview/widget/RecyclerView$i;)Landroidx/recyclerview/widget/j;
    .locals 1

    .line 264
    iget-object v0, p0, Landroidx/recyclerview/widget/k;->c:Landroidx/recyclerview/widget/j;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/recyclerview/widget/j;->a:Landroidx/recyclerview/widget/RecyclerView$i;

    if-eq v0, p1, :cond_1

    .line 265
    :cond_0
    invoke-static {p1}, Landroidx/recyclerview/widget/j;->a(Landroidx/recyclerview/widget/RecyclerView$i;)Landroidx/recyclerview/widget/j;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/k;->c:Landroidx/recyclerview/widget/j;

    .line 267
    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/k;->c:Landroidx/recyclerview/widget/j;

    return-object p1
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView$i;II)I
    .locals 12

    .line 82
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$i;->getItemCount()I

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 1244
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$i;->f()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 1245
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/k;->c(Landroidx/recyclerview/widget/RecyclerView$i;)Landroidx/recyclerview/widget/j;

    move-result-object v2

    goto :goto_0

    .line 1246
    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$i;->e()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1247
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/k;->d(Landroidx/recyclerview/widget/RecyclerView$i;)Landroidx/recyclerview/widget/j;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v3

    :goto_0
    if-nez v2, :cond_3

    return v1

    :cond_3
    const/high16 v4, -0x80000000

    const v5, 0x7fffffff

    .line 99
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$i;->getChildCount()I

    move-result v6

    const/4 v7, 0x0

    move-object v4, v3

    const/high16 v5, -0x80000000

    const v8, 0x7fffffff

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v6, :cond_6

    .line 101
    invoke-virtual {p1, v9}, Landroidx/recyclerview/widget/RecyclerView$i;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 105
    invoke-static {v10, v2}, Landroidx/recyclerview/widget/k;->a(Landroid/view/View;Landroidx/recyclerview/widget/j;)I

    move-result v11

    if-gtz v11, :cond_4

    if-le v11, v5, :cond_4

    move-object v4, v10

    move v5, v11

    :cond_4
    if-ltz v11, :cond_5

    if-ge v11, v8, :cond_5

    move-object v3, v10

    move v8, v11

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 2147
    :cond_6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$i;->e()Z

    move-result v2

    const/4 v5, 0x1

    if-eqz v2, :cond_7

    if-lez p2, :cond_8

    goto :goto_2

    :cond_7
    if-lez p3, :cond_8

    :goto_2
    const/4 p2, 0x1

    goto :goto_3

    :cond_8
    const/4 p2, 0x0

    :goto_3
    if-eqz p2, :cond_9

    if-eqz v3, :cond_9

    .line 122
    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView$i;->c(Landroid/view/View;)I

    move-result p1

    return p1

    :cond_9
    if-nez p2, :cond_a

    if-eqz v4, :cond_a

    .line 124
    invoke-static {v4}, Landroidx/recyclerview/widget/RecyclerView$i;->c(Landroid/view/View;)I

    move-result p1

    return p1

    :cond_a
    if-eqz p2, :cond_b

    move-object v3, v4

    :cond_b
    if-nez v3, :cond_c

    return v1

    .line 135
    :cond_c
    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView$i;->c(Landroid/view/View;)I

    move-result p3

    .line 2155
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$i;->getItemCount()I

    move-result v2

    .line 2156
    instance-of v3, p1, Landroidx/recyclerview/widget/RecyclerView$r$b;

    if-eqz v3, :cond_e

    .line 2157
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$r$b;

    sub-int/2addr v2, v5

    .line 2159
    invoke-interface {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$r$b;->c(I)Landroid/graphics/PointF;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 2161
    iget v2, p1, Landroid/graphics/PointF;->x:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_d

    iget p1, p1, Landroid/graphics/PointF;->y:F

    cmpg-float p1, p1, v3

    if-gez p1, :cond_e

    :cond_d
    const/4 v7, 0x1

    :cond_e
    if-ne v7, p2, :cond_f

    const/4 v5, -0x1

    :cond_f
    add-int/2addr p3, v5

    if-ltz p3, :cond_11

    if-lt p3, v0, :cond_10

    goto :goto_4

    :cond_10
    return p3

    :cond_11
    :goto_4
    return v1
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$i;)Landroid/view/View;
    .locals 1

    .line 71
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$i;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/k;->c(Landroidx/recyclerview/widget/RecyclerView$i;)Landroidx/recyclerview/widget/j;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/recyclerview/widget/k;->a(Landroidx/recyclerview/widget/RecyclerView$i;Landroidx/recyclerview/widget/j;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 73
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$i;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/k;->d(Landroidx/recyclerview/widget/RecyclerView$i;)Landroidx/recyclerview/widget/j;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/recyclerview/widget/k;->a(Landroidx/recyclerview/widget/RecyclerView$i;Landroidx/recyclerview/widget/j;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Landroidx/recyclerview/widget/RecyclerView$i;Landroid/view/View;)[I
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 52
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$i;->e()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 54
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/k;->d(Landroidx/recyclerview/widget/RecyclerView$i;)Landroidx/recyclerview/widget/j;

    move-result-object v1

    .line 53
    invoke-static {p2, v1}, Landroidx/recyclerview/widget/k;->a(Landroid/view/View;Landroidx/recyclerview/widget/j;)I

    move-result v1

    aput v1, v0, v2

    goto :goto_0

    :cond_0
    aput v2, v0, v2

    .line 59
    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$i;->f()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 61
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/k;->c(Landroidx/recyclerview/widget/RecyclerView$i;)Landroidx/recyclerview/widget/j;

    move-result-object p1

    .line 60
    invoke-static {p2, p1}, Landroidx/recyclerview/widget/k;->a(Landroid/view/View;Landroidx/recyclerview/widget/j;)I

    move-result p1

    aput p1, v0, v3

    goto :goto_1

    :cond_1
    aput v2, v0, v3

    :goto_1
    return-object v0
.end method

.method protected final b(Landroidx/recyclerview/widget/RecyclerView$i;)Landroidx/recyclerview/widget/RecyclerView$r;
    .locals 1

    .line 171
    instance-of p1, p1, Landroidx/recyclerview/widget/RecyclerView$r$b;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 174
    :cond_0
    new-instance p1, Landroidx/recyclerview/widget/k$1;

    iget-object v0, p0, Landroidx/recyclerview/widget/k;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Landroidx/recyclerview/widget/k$1;-><init>(Landroidx/recyclerview/widget/k;Landroid/content/Context;)V

    return-object p1
.end method
