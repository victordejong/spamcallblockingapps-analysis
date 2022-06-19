.class public Ld2/v;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I

.field public static b:I

.field public static c:I

.field public static d:I


# direct methods
.method public static a(Landroid/view/View;Landroid/graphics/Rect;FZ)F
    .locals 17

    move-object/from16 v0, p1

    .line 1
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 2
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 3
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 4
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 5
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 8
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v7

    .line 9
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    check-cast v9, Landroid/app/Activity;

    const v10, 0x1020002

    invoke-virtual {v9, v10}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v9, 0x0

    :goto_0
    const/4 v10, 0x0

    if-eqz v6, :cond_4

    .line 10
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    if-eq v11, v7, :cond_4

    .line 11
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v11

    if-nez v11, :cond_3

    .line 12
    invoke-virtual {v6}, Landroid/view/View;->getAlpha()F

    move-result v11

    cmpl-float v10, v11, v10

    if-nez v10, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v9, :cond_2

    if-eqz p3, :cond_2

    if-eq v6, v9, :cond_2

    .line 13
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    iget v10, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eqz v10, :cond_1

    .line 14
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    iget v10, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-nez v10, :cond_2

    :cond_1
    return p2

    .line 15
    :cond_2
    invoke-virtual {v1, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 16
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_3
    :goto_1
    return p2

    :cond_4
    if-nez v6, :cond_5

    return p2

    .line 17
    :cond_5
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 18
    :cond_6
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    const/4 v9, 0x1

    if-eqz v6, :cond_14

    .line 19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 20
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    if-nez v11, :cond_7

    return p2

    .line 21
    :cond_7
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    .line 22
    invoke-virtual {v12}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "viewpager"

    .line 23
    invoke-virtual {v13, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    goto/16 :goto_9

    .line 24
    :cond_8
    invoke-virtual {v11, v6}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v6

    .line 25
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    sub-int/2addr v12, v9

    if-ge v6, v12, :cond_13

    :goto_3
    add-int/2addr v6, v9

    .line 26
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    if-ge v6, v12, :cond_6

    .line 27
    invoke-virtual {v11, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 28
    invoke-static {v12}, Ld2/v;->e(Landroid/view/View;)Z

    move-result v13

    if-nez v13, :cond_9

    .line 29
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-nez v13, :cond_12

    .line 30
    invoke-virtual {v12}, Landroid/view/View;->getAlpha()F

    move-result v13

    cmpl-float v13, v13, v10

    if-eqz v13, :cond_12

    .line 31
    invoke-virtual {v4, v12}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 32
    :cond_9
    instance-of v13, v12, Landroid/view/ViewGroup;

    if-nez v13, :cond_a

    goto/16 :goto_6

    .line 33
    :cond_a
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-nez v13, :cond_11

    .line 34
    invoke-virtual {v12}, Landroid/view/View;->getAlpha()F

    move-result v13

    cmpl-float v13, v13, v10

    if-nez v13, :cond_b

    goto :goto_6

    .line 35
    :cond_b
    new-instance v13, Ljava/util/LinkedList;

    invoke-direct {v13}, Ljava/util/LinkedList;-><init>()V

    .line 36
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 37
    check-cast v12, Landroid/view/ViewGroup;

    .line 38
    invoke-virtual {v13, v12}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 39
    invoke-virtual {v13}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v12

    .line 40
    :cond_c
    invoke-interface {v12}, Ljava/util/ListIterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_10

    .line 41
    invoke-interface {v12}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup;

    .line 42
    invoke-interface {v12}, Ljava/util/ListIterator;->remove()V

    .line 43
    invoke-virtual {v13}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v15

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v15, :cond_c

    .line 44
    invoke-virtual {v13, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 45
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v16

    if-nez v16, :cond_f

    .line 46
    invoke-virtual {v9}, Landroid/view/View;->getAlpha()F

    move-result v16

    cmpl-float v16, v16, v10

    if-eqz v16, :cond_f

    .line 47
    instance-of v10, v9, Landroid/view/ViewGroup;

    if-eqz v10, :cond_e

    .line 48
    invoke-static {v9}, Ld2/v;->e(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 49
    check-cast v9, Landroid/view/ViewGroup;

    invoke-interface {v12, v9}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 50
    invoke-interface {v12}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    goto :goto_5

    .line 51
    :cond_d
    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 52
    :cond_e
    invoke-static {v9}, Ld2/v;->e(Landroid/view/View;)Z

    move-result v10

    if-nez v10, :cond_f

    .line 53
    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    :goto_5
    add-int/lit8 v8, v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    goto :goto_4

    .line 54
    :cond_10
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_11

    goto :goto_7

    :cond_11
    :goto_6
    const/4 v14, 0x0

    :goto_7
    if-eqz v14, :cond_12

    .line 55
    invoke-virtual {v4, v7, v14}, Ljava/util/LinkedList;->addAll(ILjava/util/Collection;)Z

    :cond_12
    :goto_8
    const/4 v9, 0x1

    const/4 v10, 0x0

    goto/16 :goto_3

    :cond_13
    :goto_9
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 56
    :cond_14
    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v4, 0x0

    :cond_15
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    cmpl-float v8, v4, p2

    if-ltz v8, :cond_16

    goto :goto_b

    :cond_16
    if-eqz v6, :cond_17

    .line 57
    :try_start_1
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_17

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "BTN_CLOSE"

    .line 58
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v8, :cond_17

    goto :goto_a

    :catch_1
    nop

    .line 59
    :cond_17
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 60
    invoke-virtual {v6, v8}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v6

    if-nez v6, :cond_18

    goto :goto_a

    :cond_18
    if-eqz p3, :cond_19

    .line 61
    iget v6, v8, Landroid/graphics/Rect;->top:I

    const/4 v9, 0x1

    add-int/2addr v6, v9

    iput v6, v8, Landroid/graphics/Rect;->top:I

    .line 62
    :cond_19
    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 63
    invoke-virtual {v2, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v6

    mul-int v6, v6, v4

    int-to-float v4, v6

    cmpl-float v6, v4, p2

    if-ltz v6, :cond_15

    const/4 v9, 0x1

    goto :goto_c

    :cond_1a
    :goto_b
    const/4 v9, 0x0

    :goto_c
    if-eqz v9, :cond_1b

    return p2

    .line 65
    :cond_1b
    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    .line 66
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v9, 0x1

    if-ne v0, v9, :cond_1c

    return v4

    .line 67
    :cond_1c
    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 68
    :cond_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 69
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 70
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 71
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v2, 0x0

    .line 72
    :goto_d
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_1d

    .line 73
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    .line 74
    invoke-virtual {v1, v6}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v8

    if-eqz v8, :cond_1f

    .line 75
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    const/4 v8, 0x1

    :goto_e
    const/16 v10, 0x9

    if-ge v8, v10, :cond_1f

    .line 76
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    packed-switch v8, :pswitch_data_0

    goto :goto_f

    .line 77
    :pswitch_0
    iget v11, v6, Landroid/graphics/Rect;->left:I

    iget v12, v1, Landroid/graphics/Rect;->top:I

    iget v13, v1, Landroid/graphics/Rect;->left:I

    iget v14, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_f

    .line 78
    :pswitch_1
    iget v11, v6, Landroid/graphics/Rect;->left:I

    iget v12, v1, Landroid/graphics/Rect;->bottom:I

    iget v13, v1, Landroid/graphics/Rect;->left:I

    iget v14, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_f

    .line 79
    :pswitch_2
    iget v11, v1, Landroid/graphics/Rect;->left:I

    iget v12, v1, Landroid/graphics/Rect;->bottom:I

    iget v13, v1, Landroid/graphics/Rect;->right:I

    iget v14, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_f

    .line 80
    :pswitch_3
    iget v11, v1, Landroid/graphics/Rect;->right:I

    iget v12, v1, Landroid/graphics/Rect;->bottom:I

    iget v13, v6, Landroid/graphics/Rect;->right:I

    iget v14, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_f

    .line 81
    :pswitch_4
    iget v11, v1, Landroid/graphics/Rect;->right:I

    iget v12, v1, Landroid/graphics/Rect;->top:I

    iget v13, v6, Landroid/graphics/Rect;->right:I

    iget v14, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_f

    .line 82
    :pswitch_5
    iget v11, v1, Landroid/graphics/Rect;->right:I

    iget v12, v6, Landroid/graphics/Rect;->top:I

    iget v13, v6, Landroid/graphics/Rect;->right:I

    iget v14, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_f

    .line 83
    :pswitch_6
    iget v11, v1, Landroid/graphics/Rect;->left:I

    iget v12, v6, Landroid/graphics/Rect;->top:I

    iget v13, v1, Landroid/graphics/Rect;->right:I

    iget v14, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_f

    .line 84
    :pswitch_7
    iget v11, v6, Landroid/graphics/Rect;->left:I

    iget v12, v6, Landroid/graphics/Rect;->top:I

    iget v13, v1, Landroid/graphics/Rect;->left:I

    iget v14, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    .line 85
    :goto_f
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v11

    if-lez v11, :cond_1e

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v11

    if-lez v11, :cond_1e

    .line 86
    invoke-virtual {v3, v10}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_1e
    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_d

    .line 87
    :cond_20
    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    .line 88
    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v10, 0x0

    .line 89
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 90
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 91
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    mul-int v1, v1, v2

    int-to-float v1, v1

    add-float/2addr v10, v1

    goto :goto_10

    :cond_21
    cmpg-float v0, v10, p2

    if-gez v0, :cond_22

    sub-float v0, p2, v10

    return v0

    :cond_22
    return v4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static b(Landroid/content/Context;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    sget v2, Ld2/v;->a:I

    if-lez v2, :cond_0

    return v2

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 3
    sget v3, Ld2/v;->c:I

    if-lez v3, :cond_1

    return v3

    .line 4
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v3, "window"

    .line 5
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 6
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 7
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 8
    iget p0, v3, Landroid/graphics/Point;->y:I

    if-ne v0, v1, :cond_2

    .line 9
    sput p0, Ld2/v;->a:I

    goto :goto_0

    :cond_2
    if-ne v0, v2, :cond_3

    .line 10
    sput p0, Ld2/v;->c:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Landroid/view/View;)F
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result p0

    return p0
.end method

.method public static d(Landroid/content/Context;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    sget v2, Ld2/v;->b:I

    if-lez v2, :cond_0

    return v2

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 3
    sget v3, Ld2/v;->d:I

    if-lez v3, :cond_1

    return v3

    .line 4
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v3, "window"

    .line 5
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 6
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 7
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 8
    iget p0, v3, Landroid/graphics/Point;->x:I

    if-ne v0, v1, :cond_2

    .line 9
    sput p0, Ld2/v;->b:I

    goto :goto_0

    :cond_2
    if-ne v0, v2, :cond_3

    .line 10
    sput p0, Ld2/v;->d:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static e(Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-le v1, v2, :cond_2

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method
