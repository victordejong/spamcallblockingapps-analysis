.class public Lcom/a/a/a/a/d/a;
.super Ljava/lang/Object;
.source "CustomRecyclerViewUtils.java"


# direct methods
.method public static a(I)I
    .locals 3

    packed-switch p0, :pswitch_data_0

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown layout type (= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    :pswitch_1
    const/4 p0, 0x0

    return p0

    :pswitch_2
    const/4 p0, -0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Landroidx/recyclerview/widget/LinearLayoutManager;)I
    .locals 3

    .line 235
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v1, v0, v1, v2}, Lcom/a/a/a/a/d/a;->a(Landroidx/recyclerview/widget/LinearLayoutManager;IIZZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    .line 236
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static a(Landroidx/recyclerview/widget/RecyclerView$i;)I
    .locals 1

    .line 74
    instance-of v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_1

    .line 75
    check-cast p0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->b()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 p0, 0x3

    return p0

    .line 80
    :cond_1
    instance-of v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_3

    .line 81
    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->b()I

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0

    .line 86
    :cond_3
    instance-of v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_5

    .line 87
    check-cast p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k()I

    move-result p0

    if-nez p0, :cond_4

    const/4 p0, 0x4

    return p0

    :cond_4
    const/4 p0, 0x5

    return p0

    :cond_5
    const/4 p0, -0x1

    return p0
.end method

.method public static a(Landroidx/recyclerview/widget/RecyclerView$w;)I
    .locals 4

    .line 306
    invoke-static {p0}, Lcom/a/a/a/a/d/a;->b(Landroidx/recyclerview/widget/RecyclerView$w;)Landroid/view/View;

    move-result-object p0

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 312
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 314
    instance-of v2, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 315
    check-cast v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 318
    invoke-static {p0}, Lcom/a/a/a/a/d/a;->d(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result p0

    return p0

    :cond_1
    return v3

    .line 323
    :cond_2
    instance-of p0, v1, Landroidx/recyclerview/widget/GridLayoutManager$b;

    if-eqz p0, :cond_3

    .line 324
    check-cast v1, Landroidx/recyclerview/widget/GridLayoutManager$b;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/GridLayoutManager$b;->b()I

    move-result p0

    return p0

    .line 325
    :cond_3
    instance-of p0, v1, Landroidx/recyclerview/widget/RecyclerView$j;

    if-eqz p0, :cond_4

    return v3

    :cond_4
    return v0
.end method

.method public static a(Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 0

    .line 53
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object p0

    invoke-static {p0}, Lcom/a/a/a/a/d/a;->a(Landroidx/recyclerview/widget/RecyclerView$i;)I

    move-result p0

    return p0
.end method

.method public static a(Landroidx/recyclerview/widget/RecyclerView;Z)I
    .locals 1

    .line 149
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object p0

    .line 151
    instance-of v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 153
    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-static {p0}, Lcom/a/a/a/a/d/a;->a(Landroidx/recyclerview/widget/LinearLayoutManager;)I

    move-result p0

    return p0

    .line 155
    :cond_0
    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->g()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static a(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1

    .line 117
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 118
    instance-of v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 119
    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 120
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 121
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 122
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 123
    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 125
    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    iput p0, p1, Landroid/graphics/Rect;->top:I

    iput p0, p1, Landroid/graphics/Rect;->right:I

    iput p0, p1, Landroid/graphics/Rect;->left:I

    :goto_0
    return-object p1
.end method

.method public static a(Landroidx/recyclerview/widget/RecyclerView$i;Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1

    .line 131
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 132
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->getRightDecorationWidth(Landroid/view/View;)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 133
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->getTopDecorationHeight(Landroid/view/View;)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 134
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result p0

    iput p0, p2, Landroid/graphics/Rect;->bottom:I

    return-object p2
.end method

.method private static a(Landroid/view/ViewGroup;FF)Landroid/view/View;
    .locals 3

    .line 98
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 100
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 101
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_0

    .line 102
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_0

    .line 103
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_0

    .line 104
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Landroidx/recyclerview/widget/LinearLayoutManager;IIZZ)Landroid/view/View;
    .locals 7

    .line 248
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->b()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 250
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getHeight()I

    move-result v2

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getWidth()I

    move-result v2

    :goto_1
    if-le p2, p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, -0x1

    :goto_2
    const/4 v3, 0x0

    :goto_3
    if-eq p1, p2, :cond_8

    .line 254
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v0, :cond_3

    .line 255
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    goto :goto_4

    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    :goto_4
    if-eqz v0, :cond_4

    .line 256
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v6

    goto :goto_5

    :cond_4
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v6

    :goto_5
    if-ge v5, v2, :cond_7

    if-lez v6, :cond_7

    if-eqz p3, :cond_6

    if-ltz v5, :cond_5

    if-gt v6, v2, :cond_5

    return-object v4

    :cond_5
    if-eqz p4, :cond_7

    if-nez v3, :cond_7

    move-object v3, v4

    goto :goto_6

    :cond_6
    return-object v4

    :cond_7
    :goto_6
    add-int/2addr p1, v1

    goto :goto_3

    :cond_8
    return-object v3
.end method

.method public static a(Landroidx/recyclerview/widget/RecyclerView$i;I)Landroid/view/View;
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 281
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->findViewByPosition(I)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static a(Landroidx/recyclerview/widget/RecyclerView;FF)Landroidx/recyclerview/widget/RecyclerView$w;
    .locals 0

    .line 48
    invoke-static {p0, p1, p2}, Lcom/a/a/a/a/d/a;->a(Landroid/view/ViewGroup;FF)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 49
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$w;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static b(Landroidx/recyclerview/widget/LinearLayoutManager;)I
    .locals 4

    .line 240
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-static {p0, v0, v2, v3, v1}, Lcom/a/a/a/a/d/a;->a(Landroidx/recyclerview/widget/LinearLayoutManager;IIZZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 241
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    :goto_0
    return v2
.end method

.method public static b(Landroidx/recyclerview/widget/RecyclerView$i;)I
    .locals 1

    .line 223
    instance-of v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_0

    .line 224
    check-cast p0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->b()I

    move-result p0

    return p0

    .line 225
    :cond_0
    instance-of v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_1

    .line 226
    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->b()I

    move-result p0

    return p0

    .line 227
    :cond_1
    instance-of v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_2

    .line 228
    check-cast p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k()I

    move-result p0

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public static b(Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 1

    .line 177
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object p0

    .line 179
    instance-of v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_0

    .line 180
    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->h()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static b(Landroidx/recyclerview/widget/RecyclerView;Z)I
    .locals 1

    .line 163
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object p0

    .line 165
    instance-of v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 167
    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-static {p0}, Lcom/a/a/a/a/d/a;->b(Landroidx/recyclerview/widget/LinearLayoutManager;)I

    move-result p0

    return p0

    .line 169
    :cond_0
    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->i()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private static b(Landroidx/recyclerview/widget/RecyclerView$w;)Landroid/view/View;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 360
    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    .line 362
    invoke-static {p0}, Landroidx/core/g/u;->A(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    return-object p0
.end method

.method public static b(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static c(Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 1

    .line 187
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object p0

    .line 189
    instance-of v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_0

    .line 190
    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->j()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static d(Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 1

    .line 207
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object p0

    .line 209
    instance-of v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_0

    .line 210
    check-cast p0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->a()I

    move-result p0

    return p0

    .line 211
    :cond_0
    instance-of v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_1

    .line 212
    check-cast p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static e(Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 0

    .line 219
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object p0

    invoke-static {p0}, Lcom/a/a/a/a/d/a;->b(Landroidx/recyclerview/widget/RecyclerView$i;)I

    move-result p0

    return p0
.end method
