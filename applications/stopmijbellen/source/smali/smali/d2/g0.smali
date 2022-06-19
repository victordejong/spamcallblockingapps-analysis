.class public Ld2/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Ld2/j0;


# direct methods
.method public constructor <init>(Ld2/j0;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/g0;->b:Ld2/j0;

    iput-boolean p2, p0, Ld2/g0;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Ld2/g0;->b:Ld2/j0;

    iget-boolean v2, v1, Ld2/j0;->m:Z

    if-nez v2, :cond_14

    .line 2
    iget-boolean v2, v0, Ld2/g0;->a:Z

    .line 3
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 4
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v4

    invoke-virtual {v4}, Ld2/f1;->l()Ld2/k0;

    move-result-object v4

    .line 5
    iget-object v4, v4, Ld2/k0;->f:Ljava/util/Map;

    .line 6
    iget-object v5, v1, Ld2/j0;->l:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ld2/j;

    if-nez v4, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v4}, Ld2/j;->getWebView()Ld2/x3;

    move-result-object v5

    .line 8
    :goto_0
    sget-object v6, Ld2/t;->a:Landroid/content/Context;

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    const/4 v9, 0x0

    if-eqz v3, :cond_c

    if-nez v6, :cond_2

    goto/16 :goto_5

    .line 9
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_c

    invoke-static {v3}, Ld2/v;->c(Landroid/view/View;)F

    move-result v10

    cmpl-float v9, v10, v9

    if-nez v9, :cond_3

    goto/16 :goto_5

    .line 10
    :cond_3
    instance-of v9, v6, Landroid/app/Activity;

    if-eqz v9, :cond_4

    .line 11
    move-object v9, v6

    check-cast v9, Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v9

    if-nez v9, :cond_4

    if-nez v4, :cond_4

    goto/16 :goto_5

    .line 12
    :cond_4
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v4

    const/4 v9, 0x2

    if-lez v4, :cond_8

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    if-lez v4, :cond_8

    .line 13
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v10

    mul-int v10, v10, v4

    int-to-float v4, v10

    .line 14
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 15
    invoke-virtual {v3, v10}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v11

    new-array v12, v9, [I

    .line 16
    fill-array-data v12, :array_0

    .line 17
    invoke-virtual {v3, v12}, Landroid/view/View;->getLocationInWindow([I)V

    new-array v13, v9, [I

    .line 18
    fill-array-data v13, :array_1

    .line 19
    aget v14, v12, v8

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v15

    add-int/2addr v15, v14

    aput v15, v13, v8

    .line 20
    aget v14, v12, v7

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v15

    add-int/2addr v15, v14

    aput v15, v13, v7

    .line 21
    invoke-static {v6}, Ld2/v;->b(Landroid/content/Context;)I

    move-result v14

    .line 22
    invoke-static {v6}, Ld2/v;->d(Landroid/content/Context;)I

    move-result v15

    .line 23
    aget v16, v13, v8

    if-ltz v16, :cond_c

    aget v13, v13, v7

    if-ltz v13, :cond_c

    aget v13, v12, v8

    if-gt v13, v15, :cond_c

    aget v13, v12, v7

    if-gt v13, v14, :cond_c

    iget v13, v10, Landroid/graphics/Rect;->top:I

    if-nez v13, :cond_5

    aget v12, v12, v7

    div-int/2addr v14, v9

    if-le v12, v14, :cond_5

    goto/16 :goto_5

    :cond_5
    if-eqz v11, :cond_c

    .line 24
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v9

    .line 25
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v11

    mul-int v11, v11, v9

    int-to-float v9, v11

    const/4 v11, 0x0

    cmpl-float v12, v9, v11

    if-lez v12, :cond_c

    if-eqz v2, :cond_6

    .line 26
    :try_start_0
    invoke-static {v3, v10, v9, v8}, Ld2/v;->a(Landroid/view/View;Landroid/graphics/Rect;FZ)F

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmpl-float v3, v2, v11

    if-lez v3, :cond_6

    cmpg-float v3, v2, v9

    if-gtz v3, :cond_6

    sub-float/2addr v9, v2

    goto :goto_2

    :catch_0
    nop

    :cond_6
    :goto_2
    div-float/2addr v9, v4

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v9, v9, v2

    const/4 v3, 0x0

    cmpg-float v3, v9, v3

    if-gez v3, :cond_7

    goto/16 :goto_5

    :cond_7
    cmpl-float v2, v9, v2

    if-lez v2, :cond_d

    goto/16 :goto_4

    .line 27
    :cond_8
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    if-lez v4, :cond_c

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v10, -0x2

    if-ne v4, v10, :cond_c

    new-array v4, v9, [I

    .line 28
    fill-array-data v4, :array_2

    .line 29
    invoke-virtual {v3, v4}, Landroid/view/View;->getLocationInWindow([I)V

    new-array v10, v9, [I

    .line 30
    fill-array-data v10, :array_3

    .line 31
    aget v11, v4, v8

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v12

    add-int/2addr v12, v11

    aput v12, v10, v8

    .line 32
    aget v11, v4, v7

    add-int/2addr v11, v7

    aput v11, v10, v7

    .line 33
    new-instance v11, Landroid/graphics/Rect;

    aget v12, v4, v8

    aget v13, v4, v7

    aget v14, v10, v8

    aget v15, v10, v7

    invoke-direct {v11, v12, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 34
    invoke-static {v6}, Ld2/v;->b(Landroid/content/Context;)I

    move-result v12

    .line 35
    invoke-static {v6}, Ld2/v;->d(Landroid/content/Context;)I

    move-result v13

    .line 36
    aget v14, v10, v8

    if-ltz v14, :cond_c

    aget v10, v10, v7

    if-ltz v10, :cond_c

    aget v8, v4, v8

    if-gt v8, v13, :cond_c

    aget v8, v4, v7

    if-gt v8, v12, :cond_c

    iget v8, v11, Landroid/graphics/Rect;->top:I

    if-nez v8, :cond_9

    aget v4, v4, v7

    div-int/2addr v12, v9

    if-le v4, v12, :cond_9

    goto :goto_5

    .line 37
    :cond_9
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v8

    mul-int v8, v8, v4

    int-to-float v4, v8

    if-eqz v2, :cond_a

    .line 38
    :try_start_1
    invoke-static {v3, v11, v4, v7}, Ld2/v;->a(Landroid/view/View;Landroid/graphics/Rect;FZ)F

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_a

    cmpg-float v3, v2, v4

    if-gtz v3, :cond_a

    sub-float v2, v4, v2

    goto :goto_3

    :catch_1
    :cond_a
    move v2, v4

    :goto_3
    div-float/2addr v2, v4

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v9, v2, v3

    const/4 v2, 0x0

    cmpg-float v2, v9, v2

    if-gez v2, :cond_b

    goto :goto_5

    :cond_b
    cmpl-float v2, v9, v3

    if-lez v2, :cond_d

    :goto_4
    const/high16 v9, 0x42c80000    # 100.0f

    goto :goto_6

    :cond_c
    :goto_5
    const/4 v9, 0x0

    :cond_d
    :goto_6
    if-nez v6, :cond_e

    const-wide/16 v2, 0x0

    goto :goto_7

    .line 39
    :cond_e
    invoke-static {v6}, Ld2/i3;->c(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-static {v2}, Ld2/i3;->a(Landroid/media/AudioManager;)D

    move-result-wide v2

    .line 40
    :goto_7
    invoke-static {v5}, Ld2/i3;->b(Landroid/view/View;)I

    move-result v4

    .line 41
    invoke-static {v5}, Ld2/i3;->n(Landroid/view/View;)I

    move-result v6

    .line 42
    iget v8, v1, Ld2/j0;->q:I

    if-ne v4, v8, :cond_10

    iget v8, v1, Ld2/j0;->r:I

    if-eq v6, v8, :cond_f

    goto :goto_8

    :cond_f
    const/4 v7, 0x0

    :cond_10
    :goto_8
    const-string v8, "ad_session_id"

    if-eqz v7, :cond_11

    .line 43
    iput v4, v1, Ld2/j0;->q:I

    .line 44
    iput v6, v1, Ld2/j0;->r:I

    .line 45
    invoke-static {}, Lcom/google/android/gms/internal/ads/a;->c()F

    move-result v10

    if-eqz v5, :cond_11

    .line 46
    new-instance v11, Ld2/f4;

    invoke-direct {v11}, Ld2/f4;-><init>()V

    .line 47
    invoke-static {}, Ld2/i3;->C()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ld2/i3;->x(Ljava/lang/String;)I

    move-result v12

    const-string v13, "app_orientation"

    invoke-static {v11, v13, v12}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 48
    iget v12, v5, Ld2/x3;->q:I

    int-to-float v12, v12

    div-float/2addr v12, v10

    float-to-int v12, v12

    const-string v13, "width"

    .line 49
    invoke-static {v11, v13, v12}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 50
    iget v5, v5, Ld2/x3;->s:I

    int-to-float v5, v5

    div-float/2addr v5, v10

    float-to-int v5, v5

    const-string v10, "height"

    .line 51
    invoke-static {v11, v10, v5}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    const-string v5, "x"

    .line 52
    invoke-static {v11, v5, v4}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    const-string v4, "y"

    .line 53
    invoke-static {v11, v4, v6}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 54
    iget-object v4, v1, Ld2/j0;->l:Ljava/lang/String;

    invoke-static {v11, v8, v4}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 55
    new-instance v4, Ld2/t0;

    iget v5, v1, Ld2/j0;->k:I

    const-string v6, "MRAID.on_size_change"

    invoke-direct {v4, v6, v5, v11}, Ld2/t0;-><init>(Ljava/lang/String;ILd2/f4;)V

    invoke-virtual {v4}, Ld2/t0;->b()V

    .line 56
    :cond_11
    iget v4, v1, Ld2/j0;->o:F

    cmpl-float v4, v4, v9

    if-nez v4, :cond_12

    iget-wide v4, v1, Ld2/j0;->p:D

    cmpl-double v6, v4, v2

    if-nez v6, :cond_12

    if-eqz v7, :cond_13

    .line 57
    :cond_12
    new-instance v4, Ld2/f4;

    invoke-direct {v4}, Ld2/f4;-><init>()V

    .line 58
    iget v5, v1, Ld2/j0;->j:I

    const-string v6, "id"

    invoke-static {v4, v6, v5}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 59
    iget-object v5, v1, Ld2/j0;->l:Ljava/lang/String;

    invoke-static {v4, v8, v5}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    float-to-double v5, v9

    const-string v7, "exposure"

    .line 60
    invoke-static {v4, v7, v5, v6}, Ld2/e4;->f(Ld2/f4;Ljava/lang/String;D)Z

    const-string v5, "volume"

    .line 61
    invoke-static {v4, v5, v2, v3}, Ld2/e4;->f(Ld2/f4;Ljava/lang/String;D)Z

    .line 62
    new-instance v5, Ld2/t0;

    iget v6, v1, Ld2/j0;->k:I

    const-string v7, "AdContainer.on_exposure_change"

    invoke-direct {v5, v7, v6, v4}, Ld2/t0;-><init>(Ljava/lang/String;ILd2/f4;)V

    invoke-virtual {v5}, Ld2/t0;->b()V

    .line 63
    :cond_13
    iput v9, v1, Ld2/j0;->o:F

    .line 64
    iput-wide v2, v1, Ld2/j0;->p:D

    .line 65
    iget-object v1, v0, Ld2/g0;->b:Ld2/j0;

    iget-boolean v2, v0, Ld2/g0;->a:Z

    .line 66
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    new-instance v3, Ld2/g0;

    invoke-direct {v3, v1, v2}, Ld2/g0;-><init>(Ld2/j0;Z)V

    const-wide/16 v1, 0xc8

    invoke-static {v3, v1, v2}, Ld2/i3;->k(Ljava/lang/Runnable;J)Z

    :cond_14
    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 4
        -0x1
        -0x1
    .end array-data

    :array_3
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method
