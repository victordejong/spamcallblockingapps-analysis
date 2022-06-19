.class final Landroidx/viewpager2/a/e;
.super Landroidx/recyclerview/widget/RecyclerView$n;
.source "ScrollEventAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/viewpager2/a/e$a;
    }
.end annotation


# instance fields
.field private a:Landroidx/viewpager2/a/f$b;

.field private final b:Landroidx/viewpager2/a/f;

.field private final c:Landroidx/recyclerview/widget/RecyclerView;

.field private final d:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private e:I

.field private f:I

.field private g:Landroidx/viewpager2/a/e$a;

.field private h:I

.field private i:I

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z


# direct methods
.method private a(I)V
    .locals 2

    .prologue
    .line 416
    iget v0, p0, Landroidx/viewpager2/a/e;->e:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroidx/viewpager2/a/e;->f:I

    if-nez v0, :cond_1

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 420
    :cond_1
    iget v0, p0, Landroidx/viewpager2/a/e;->f:I

    if-eq v0, p1, :cond_0

    .line 424
    iput p1, p0, Landroidx/viewpager2/a/e;->f:I

    .line 425
    iget-object v0, p0, Landroidx/viewpager2/a/e;->a:Landroidx/viewpager2/a/f$b;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Landroidx/viewpager2/a/e;->a:Landroidx/viewpager2/a/f$b;

    invoke-virtual {v0, p1}, Landroidx/viewpager2/a/f$b;->b(I)V

    goto :goto_0
.end method

.method private a(IFI)V
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Landroidx/viewpager2/a/e;->a:Landroidx/viewpager2/a/f$b;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Landroidx/viewpager2/a/e;->a:Landroidx/viewpager2/a/f$b;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/viewpager2/a/f$b;->a(IFI)V

    .line 440
    :cond_0
    return-void
.end method

.method private a(Z)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, -0x1

    .line 287
    iput-boolean p1, p0, Landroidx/viewpager2/a/e;->m:Z

    .line 288
    if-eqz p1, :cond_1

    const/4 v0, 0x4

    :goto_0
    iput v0, p0, Landroidx/viewpager2/a/e;->e:I

    .line 289
    iget v0, p0, Landroidx/viewpager2/a/e;->i:I

    if-eq v0, v2, :cond_2

    .line 292
    iget v0, p0, Landroidx/viewpager2/a/e;->i:I

    iput v0, p0, Landroidx/viewpager2/a/e;->h:I

    .line 294
    iput v2, p0, Landroidx/viewpager2/a/e;->i:I

    .line 299
    :cond_0
    :goto_1
    invoke-direct {p0, v1}, Landroidx/viewpager2/a/e;->a(I)V

    .line 300
    return-void

    :cond_1
    move v0, v1

    .line 288
    goto :goto_0

    .line 295
    :cond_2
    iget v0, p0, Landroidx/viewpager2/a/e;->h:I

    if-ne v0, v2, :cond_0

    .line 297
    invoke-direct {p0}, Landroidx/viewpager2/a/e;->h()I

    move-result v0

    iput v0, p0, Landroidx/viewpager2/a/e;->h:I

    goto :goto_1
.end method

.method private b(I)V
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Landroidx/viewpager2/a/e;->a:Landroidx/viewpager2/a/f$b;

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Landroidx/viewpager2/a/e;->a:Landroidx/viewpager2/a/f$b;

    invoke-virtual {v0, p1}, Landroidx/viewpager2/a/f$b;->a(I)V

    .line 434
    :cond_0
    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 87
    iput v1, p0, Landroidx/viewpager2/a/e;->e:I

    .line 88
    iput v1, p0, Landroidx/viewpager2/a/e;->f:I

    .line 89
    iget-object v0, p0, Landroidx/viewpager2/a/e;->g:Landroidx/viewpager2/a/e$a;

    invoke-virtual {v0}, Landroidx/viewpager2/a/e$a;->a()V

    .line 90
    iput v2, p0, Landroidx/viewpager2/a/e;->h:I

    .line 91
    iput v2, p0, Landroidx/viewpager2/a/e;->i:I

    .line 92
    iput-boolean v1, p0, Landroidx/viewpager2/a/e;->j:Z

    .line 93
    iput-boolean v1, p0, Landroidx/viewpager2/a/e;->k:Z

    .line 94
    iput-boolean v1, p0, Landroidx/viewpager2/a/e;->m:Z

    .line 95
    iput-boolean v1, p0, Landroidx/viewpager2/a/e;->l:Z

    .line 96
    return-void
.end method

.method private f()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 224
    iget-object v7, p0, Landroidx/viewpager2/a/e;->g:Landroidx/viewpager2/a/e$a;

    .line 226
    iget-object v0, p0, Landroidx/viewpager2/a/e;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->o()I

    move-result v0

    iput v0, v7, Landroidx/viewpager2/a/e$a;->a:I

    .line 227
    iget v0, v7, Landroidx/viewpager2/a/e$a;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 228
    invoke-virtual {v7}, Landroidx/viewpager2/a/e$a;->a()V

    .line 284
    :goto_0
    return-void

    .line 231
    :cond_0
    iget-object v0, p0, Landroidx/viewpager2/a/e;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget v1, v7, Landroidx/viewpager2/a/e$a;->a:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->c(I)Landroid/view/View;

    move-result-object v8

    .line 232
    if-nez v8, :cond_1

    .line 233
    invoke-virtual {v7}, Landroidx/viewpager2/a/e$a;->a()V

    goto :goto_0

    .line 237
    :cond_1
    iget-object v0, p0, Landroidx/viewpager2/a/e;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->n(Landroid/view/View;)I

    move-result v4

    .line 238
    iget-object v0, p0, Landroidx/viewpager2/a/e;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->o(Landroid/view/View;)I

    move-result v3

    .line 239
    iget-object v0, p0, Landroidx/viewpager2/a/e;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->l(Landroid/view/View;)I

    move-result v2

    .line 240
    iget-object v0, p0, Landroidx/viewpager2/a/e;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->m(Landroid/view/View;)I

    move-result v1

    .line 242
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 243
    instance-of v9, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v9, :cond_8

    .line 244
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 245
    iget v9, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v4, v9

    .line 246
    iget v9, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v9

    .line 247
    iget v9, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v9

    .line 248
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    .line 251
    :goto_1
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    .line 252
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, v4

    add-int/2addr v0, v3

    .line 254
    iget-object v3, p0, Landroidx/viewpager2/a/e;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->h()I

    move-result v3

    if-nez v3, :cond_2

    move v3, v5

    .line 256
    :goto_2
    if-eqz v3, :cond_3

    .line 258
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v1, v4

    iget-object v2, p0, Landroidx/viewpager2/a/e;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    .line 259
    iget-object v2, p0, Landroidx/viewpager2/a/e;->b:Landroidx/viewpager2/a/f;

    invoke-virtual {v2}, Landroidx/viewpager2/a/f;->b()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 260
    neg-int v1, v1

    move v2, v1

    .line 267
    :goto_3
    neg-int v1, v2

    iput v1, v7, Landroidx/viewpager2/a/e$a;->c:I

    .line 268
    iget v1, v7, Landroidx/viewpager2/a/e$a;->c:I

    if-gez v1, :cond_5

    .line 271
    new-instance v0, Landroidx/viewpager2/a/a;

    iget-object v1, p0, Landroidx/viewpager2/a/e;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, v1}, Landroidx/viewpager2/a/a;-><init>(Landroidx/recyclerview/widget/LinearLayoutManager;)V

    invoke-virtual {v0}, Landroidx/viewpager2/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 272
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Page(s) contain a ViewGroup with a LayoutTransition (or animateLayoutChanges=\"true\"), which interferes with the scrolling animation. Make sure to call getLayoutTransition().setAnimateParentHierarchy(false) on all ViewGroups with a LayoutTransition before an animation is started."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v3, v6

    .line 254
    goto :goto_2

    .line 264
    :cond_3
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr v0, v2

    iget-object v2, p0, Landroidx/viewpager2/a/e;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    sub-int v2, v0, v2

    move v0, v1

    goto :goto_3

    .line 280
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "Page can only be offset by a positive amount, not by %d"

    new-array v3, v5, [Ljava/lang/Object;

    iget v4, v7, Landroidx/viewpager2/a/e$a;->c:I

    .line 281
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    .line 280
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_5
    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_4
    iput v0, v7, Landroidx/viewpager2/a/e$a;->b:F

    goto/16 :goto_0

    :cond_6
    iget v1, v7, Landroidx/viewpager2/a/e$a;->c:I

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    goto :goto_4

    :cond_7
    move v2, v1

    goto :goto_3

    :cond_8
    move v0, v1

    goto/16 :goto_1
.end method

.method private g()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 392
    iget v1, p0, Landroidx/viewpager2/a/e;->e:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Landroidx/viewpager2/a/e;->e:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h()I
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Landroidx/viewpager2/a/e;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->o()I

    move-result v0

    return v0
.end method


# virtual methods
.method a()I
    .locals 1

    .prologue
    .line 360
    iget v0, p0, Landroidx/viewpager2/a/e;->f:I

    return v0
.end method

.method a(IZ)V
    .locals 3

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 310
    if-eqz p2, :cond_1

    move v0, v1

    :goto_0
    iput v0, p0, Landroidx/viewpager2/a/e;->e:I

    .line 315
    iput-boolean v2, p0, Landroidx/viewpager2/a/e;->m:Z

    .line 316
    iget v0, p0, Landroidx/viewpager2/a/e;->i:I

    if-eq v0, p1, :cond_2

    const/4 v0, 0x1

    .line 317
    :goto_1
    iput p1, p0, Landroidx/viewpager2/a/e;->i:I

    .line 318
    invoke-direct {p0, v1}, Landroidx/viewpager2/a/e;->a(I)V

    .line 319
    if-eqz v0, :cond_0

    .line 320
    invoke-direct {p0, p1}, Landroidx/viewpager2/a/e;->b(I)V

    .line 322
    :cond_0
    return-void

    .line 310
    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    move v0, v2

    .line 316
    goto :goto_1
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 105
    iget v2, p0, Landroidx/viewpager2/a/e;->e:I

    if-ne v2, v0, :cond_0

    iget v2, p0, Landroidx/viewpager2/a/e;->f:I

    if-eq v2, v0, :cond_2

    :cond_0
    if-ne p2, v0, :cond_2

    .line 108
    invoke-direct {p0, v1}, Landroidx/viewpager2/a/e;->a(Z)V

    .line 169
    :cond_1
    :goto_0
    return-void

    .line 114
    :cond_2
    invoke-direct {p0}, Landroidx/viewpager2/a/e;->g()Z

    move-result v2

    if-eqz v2, :cond_3

    if-ne p2, v4, :cond_3

    .line 116
    iget-boolean v1, p0, Landroidx/viewpager2/a/e;->k:Z

    if-eqz v1, :cond_1

    .line 117
    invoke-direct {p0, v4}, Landroidx/viewpager2/a/e;->a(I)V

    .line 119
    iput-boolean v0, p0, Landroidx/viewpager2/a/e;->j:Z

    goto :goto_0

    .line 125
    :cond_3
    invoke-direct {p0}, Landroidx/viewpager2/a/e;->g()Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez p2, :cond_5

    .line 127
    invoke-direct {p0}, Landroidx/viewpager2/a/e;->f()V

    .line 128
    iget-boolean v2, p0, Landroidx/viewpager2/a/e;->k:Z

    if-nez v2, :cond_7

    .line 133
    iget-object v2, p0, Landroidx/viewpager2/a/e;->g:Landroidx/viewpager2/a/e$a;

    iget v2, v2, Landroidx/viewpager2/a/e$a;->a:I

    if-eq v2, v5, :cond_4

    .line 134
    iget-object v2, p0, Landroidx/viewpager2/a/e;->g:Landroidx/viewpager2/a/e$a;

    iget v2, v2, Landroidx/viewpager2/a/e$a;->a:I

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v1}, Landroidx/viewpager2/a/e;->a(IFI)V

    .line 149
    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    .line 152
    invoke-direct {p0, v1}, Landroidx/viewpager2/a/e;->a(I)V

    .line 153
    invoke-direct {p0}, Landroidx/viewpager2/a/e;->e()V

    .line 157
    :cond_5
    iget v0, p0, Landroidx/viewpager2/a/e;->e:I

    if-ne v0, v4, :cond_1

    if-nez p2, :cond_1

    iget-boolean v0, p0, Landroidx/viewpager2/a/e;->l:Z

    if-eqz v0, :cond_1

    .line 159
    invoke-direct {p0}, Landroidx/viewpager2/a/e;->f()V

    .line 160
    iget-object v0, p0, Landroidx/viewpager2/a/e;->g:Landroidx/viewpager2/a/e$a;

    iget v0, v0, Landroidx/viewpager2/a/e$a;->c:I

    if-nez v0, :cond_1

    .line 161
    iget v0, p0, Landroidx/viewpager2/a/e;->i:I

    iget-object v2, p0, Landroidx/viewpager2/a/e;->g:Landroidx/viewpager2/a/e$a;

    iget v2, v2, Landroidx/viewpager2/a/e$a;->a:I

    if-eq v0, v2, :cond_6

    .line 162
    iget-object v0, p0, Landroidx/viewpager2/a/e;->g:Landroidx/viewpager2/a/e$a;

    iget v0, v0, Landroidx/viewpager2/a/e$a;->a:I

    if-ne v0, v5, :cond_8

    move v0, v1

    :goto_2
    invoke-direct {p0, v0}, Landroidx/viewpager2/a/e;->b(I)V

    .line 165
    :cond_6
    invoke-direct {p0, v1}, Landroidx/viewpager2/a/e;->a(I)V

    .line 166
    invoke-direct {p0}, Landroidx/viewpager2/a/e;->e()V

    goto :goto_0

    .line 137
    :cond_7
    iget-object v2, p0, Landroidx/viewpager2/a/e;->g:Landroidx/viewpager2/a/e$a;

    iget v2, v2, Landroidx/viewpager2/a/e$a;->c:I

    if-nez v2, :cond_9

    .line 145
    iget v2, p0, Landroidx/viewpager2/a/e;->h:I

    iget-object v3, p0, Landroidx/viewpager2/a/e;->g:Landroidx/viewpager2/a/e$a;

    iget v3, v3, Landroidx/viewpager2/a/e$a;->a:I

    if-eq v2, v3, :cond_4

    .line 146
    iget-object v2, p0, Landroidx/viewpager2/a/e;->g:Landroidx/viewpager2/a/e$a;

    iget v2, v2, Landroidx/viewpager2/a/e$a;->a:I

    invoke-direct {p0, v2}, Landroidx/viewpager2/a/e;->b(I)V

    goto :goto_1

    .line 162
    :cond_8
    iget-object v0, p0, Landroidx/viewpager2/a/e;->g:Landroidx/viewpager2/a/e$a;

    iget v0, v0, Landroidx/viewpager2/a/e$a;->a:I

    goto :goto_2

    :cond_9
    move v0, v1

    goto :goto_1
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 177
    iput-boolean v1, p0, Landroidx/viewpager2/a/e;->k:Z

    .line 178
    invoke-direct {p0}, Landroidx/viewpager2/a/e;->f()V

    .line 180
    iget-boolean v0, p0, Landroidx/viewpager2/a/e;->j:Z

    if-eqz v0, :cond_7

    .line 182
    iput-boolean v2, p0, Landroidx/viewpager2/a/e;->j:Z

    .line 183
    if-gtz p3, :cond_0

    if-nez p3, :cond_5

    if-gez p2, :cond_4

    move v0, v1

    :goto_0
    iget-object v3, p0, Landroidx/viewpager2/a/e;->b:Landroidx/viewpager2/a/f;

    invoke-virtual {v3}, Landroidx/viewpager2/a/f;->b()Z

    move-result v3

    if-ne v0, v3, :cond_5

    :cond_0
    move v0, v1

    .line 187
    :goto_1
    if-eqz v0, :cond_6

    iget-object v0, p0, Landroidx/viewpager2/a/e;->g:Landroidx/viewpager2/a/e$a;

    iget v0, v0, Landroidx/viewpager2/a/e$a;->c:I

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroidx/viewpager2/a/e;->g:Landroidx/viewpager2/a/e$a;

    iget v0, v0, Landroidx/viewpager2/a/e$a;->a:I

    add-int/lit8 v0, v0, 0x1

    :goto_2
    iput v0, p0, Landroidx/viewpager2/a/e;->i:I

    .line 189
    iget v0, p0, Landroidx/viewpager2/a/e;->h:I

    iget v3, p0, Landroidx/viewpager2/a/e;->i:I

    if-eq v0, v3, :cond_1

    .line 190
    iget v0, p0, Landroidx/viewpager2/a/e;->i:I

    invoke-direct {p0, v0}, Landroidx/viewpager2/a/e;->b(I)V

    .line 201
    :cond_1
    :goto_3
    iget-object v0, p0, Landroidx/viewpager2/a/e;->g:Landroidx/viewpager2/a/e$a;

    iget v0, v0, Landroidx/viewpager2/a/e$a;->a:I

    if-ne v0, v5, :cond_9

    move v0, v2

    :goto_4
    iget-object v3, p0, Landroidx/viewpager2/a/e;->g:Landroidx/viewpager2/a/e$a;

    iget v3, v3, Landroidx/viewpager2/a/e$a;->b:F

    iget-object v4, p0, Landroidx/viewpager2/a/e;->g:Landroidx/viewpager2/a/e$a;

    iget v4, v4, Landroidx/viewpager2/a/e$a;->c:I

    invoke-direct {p0, v0, v3, v4}, Landroidx/viewpager2/a/e;->a(IFI)V

    .line 206
    iget-object v0, p0, Landroidx/viewpager2/a/e;->g:Landroidx/viewpager2/a/e$a;

    iget v0, v0, Landroidx/viewpager2/a/e$a;->a:I

    iget v3, p0, Landroidx/viewpager2/a/e;->i:I

    if-eq v0, v3, :cond_2

    iget v0, p0, Landroidx/viewpager2/a/e;->i:I

    if-ne v0, v5, :cond_3

    :cond_2
    iget-object v0, p0, Landroidx/viewpager2/a/e;->g:Landroidx/viewpager2/a/e$a;

    iget v0, v0, Landroidx/viewpager2/a/e$a;->c:I

    if-nez v0, :cond_3

    iget v0, p0, Landroidx/viewpager2/a/e;->f:I

    if-eq v0, v1, :cond_3

    .line 214
    invoke-direct {p0, v2}, Landroidx/viewpager2/a/e;->a(I)V

    .line 215
    invoke-direct {p0}, Landroidx/viewpager2/a/e;->e()V

    .line 217
    :cond_3
    return-void

    :cond_4
    move v0, v2

    .line 183
    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1

    .line 187
    :cond_6
    iget-object v0, p0, Landroidx/viewpager2/a/e;->g:Landroidx/viewpager2/a/e$a;

    iget v0, v0, Landroidx/viewpager2/a/e$a;->a:I

    goto :goto_2

    .line 192
    :cond_7
    iget v0, p0, Landroidx/viewpager2/a/e;->e:I

    if-nez v0, :cond_1

    .line 195
    iget-object v0, p0, Landroidx/viewpager2/a/e;->g:Landroidx/viewpager2/a/e$a;

    iget v0, v0, Landroidx/viewpager2/a/e$a;->a:I

    .line 197
    if-ne v0, v5, :cond_8

    move v0, v2

    :cond_8
    invoke-direct {p0, v0}, Landroidx/viewpager2/a/e;->b(I)V

    goto :goto_3

    .line 201
    :cond_9
    iget-object v0, p0, Landroidx/viewpager2/a/e;->g:Landroidx/viewpager2/a/e$a;

    iget v0, v0, Landroidx/viewpager2/a/e$a;->a:I

    goto :goto_4
.end method

.method b()Z
    .locals 1

    .prologue
    .line 367
    iget v0, p0, Landroidx/viewpager2/a/e;->f:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c()Z
    .locals 1

    .prologue
    .line 383
    iget-boolean v0, p0, Landroidx/viewpager2/a/e;->m:Z

    return v0
.end method

.method d()D
    .locals 4

    .prologue
    .line 407
    invoke-direct {p0}, Landroidx/viewpager2/a/e;->f()V

    .line 408
    iget-object v0, p0, Landroidx/viewpager2/a/e;->g:Landroidx/viewpager2/a/e$a;

    iget v0, v0, Landroidx/viewpager2/a/e$a;->a:I

    int-to-double v0, v0

    iget-object v2, p0, Landroidx/viewpager2/a/e;->g:Landroidx/viewpager2/a/e$a;

    iget v2, v2, Landroidx/viewpager2/a/e$a;->b:F

    float-to-double v2, v2

    add-double/2addr v0, v2

    return-wide v0
.end method
