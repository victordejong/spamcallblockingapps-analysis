.class final Landroidx/fragment/app/b;
.super Landroidx/fragment/app/z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/b$c;,
        Landroidx/fragment/app/b$a;,
        Landroidx/fragment/app/b$b;
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Landroidx/fragment/app/z;-><init>(Landroid/view/ViewGroup;)V

    return-void
.end method

.method private a(Ljava/util/List;Ljava/util/List;ZLandroidx/fragment/app/z$b;Landroidx/fragment/app/z$b;)Ljava/util/Map;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/fragment/app/b$c;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/fragment/app/z$b;",
            ">;Z",
            "Landroidx/fragment/app/z$b;",
            "Landroidx/fragment/app/z$b;",
            ")",
            "Ljava/util/Map<",
            "Landroidx/fragment/app/z$b;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    move-object/from16 v6, p0

    move/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    .line 288
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 291
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v15, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/b$c;

    .line 292
    invoke-virtual {v1}, Landroidx/fragment/app/b$c;->a()Z

    move-result v2

    if-nez v2, :cond_0

    .line 7871
    iget-object v2, v1, Landroidx/fragment/app/b$c;->c:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroidx/fragment/app/b$c;->a(Ljava/lang/Object;)Landroidx/fragment/app/v;

    move-result-object v2

    .line 7872
    iget-object v3, v1, Landroidx/fragment/app/b$c;->e:Ljava/lang/Object;

    .line 7873
    invoke-virtual {v1, v3}, Landroidx/fragment/app/b$c;->a(Ljava/lang/Object;)Landroidx/fragment/app/v;

    move-result-object v3

    const-string v4, " returned Transition "

    const-string v5, "Mixing framework transitions and AndroidX transitions is not allowed. Fragment "

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    if-ne v2, v3, :cond_1

    goto :goto_1

    .line 7876
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8763
    iget-object v3, v1, Landroidx/fragment/app/b$b;->a:Landroidx/fragment/app/z$b;

    .line 9558
    iget-object v3, v3, Landroidx/fragment/app/z$b;->c:Landroidx/fragment/app/Fragment;

    .line 7878
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroidx/fragment/app/b$c;->c:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " which uses a different Transition  type than its shared element transition "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroidx/fragment/app/b$c;->e:Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move-object v2, v3

    :goto_2
    if-nez v15, :cond_4

    move-object v15, v2

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_0

    if-ne v15, v2, :cond_5

    goto :goto_0

    .line 300
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9763
    iget-object v3, v1, Landroidx/fragment/app/b$b;->a:Landroidx/fragment/app/z$b;

    .line 10558
    iget-object v3, v3, Landroidx/fragment/app/z$b;->c:Landroidx/fragment/app/Fragment;

    .line 302
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10853
    iget-object v1, v1, Landroidx/fragment/app/b$c;->c:Ljava/lang/Object;

    .line 303
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " which uses a different Transition  type than other Fragments."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    if-nez v15, :cond_8

    .line 309
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/b$c;

    .line 11763
    iget-object v2, v1, Landroidx/fragment/app/b$b;->a:Landroidx/fragment/app/z$b;

    .line 310
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v10, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    invoke-virtual {v1}, Landroidx/fragment/app/b$c;->b()V

    goto :goto_3

    :cond_7
    return-object v10

    .line 319
    :cond_8
    new-instance v14, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/b;->a()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v14, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 325
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 326
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 327
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 328
    new-instance v4, Landroidx/b/a;

    invoke-direct {v4}, Landroidx/b/a;-><init>()V

    .line 329
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/16 v21, 0x0

    :goto_4
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/16 v22, 0x1

    if-eqz v1, :cond_1d

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/b$c;

    .line 11861
    iget-object v3, v1, Landroidx/fragment/app/b$c;->e:Ljava/lang/Object;

    if-eqz v3, :cond_9

    const/4 v3, 0x1

    goto :goto_5

    :cond_9
    const/4 v3, 0x0

    :goto_5
    if-eqz v3, :cond_1c

    if-eqz v8, :cond_1c

    if-eqz v9, :cond_1c

    .line 11866
    iget-object v0, v1, Landroidx/fragment/app/b$c;->e:Ljava/lang/Object;

    .line 335
    invoke-virtual {v15, v0}, Landroidx/fragment/app/v;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 334
    invoke-virtual {v15, v0}, Landroidx/fragment/app/v;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 12558
    iget-object v0, v9, Landroidx/fragment/app/z$b;->c:Landroidx/fragment/app/Fragment;

    .line 340
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getSharedElementSourceNames()Ljava/util/ArrayList;

    move-result-object v1

    .line 13558
    iget-object v0, v8, Landroidx/fragment/app/z$b;->c:Landroidx/fragment/app/Fragment;

    .line 344
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getSharedElementSourceNames()Ljava/util/ArrayList;

    move-result-object v0

    .line 14558
    iget-object v11, v8, Landroidx/fragment/app/z$b;->c:Landroidx/fragment/app/Fragment;

    .line 346
    invoke-virtual {v11}, Landroidx/fragment/app/Fragment;->getSharedElementTargetNames()Ljava/util/ArrayList;

    move-result-object v11

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    const/4 v2, 0x0

    .line 349
    :goto_6
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_b

    .line 350
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    move-object/from16 v19, v11

    const/4 v11, -0x1

    if-eq v3, v11, :cond_a

    .line 354
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v1, v3, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_a
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v11, v19

    goto :goto_6

    .line 15558
    :cond_b
    iget-object v0, v9, Landroidx/fragment/app/z$b;->c:Landroidx/fragment/app/Fragment;

    .line 358
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getSharedElementTargetNames()Ljava/util/ArrayList;

    move-result-object v11

    if-nez v7, :cond_c

    .line 16558
    iget-object v0, v8, Landroidx/fragment/app/z$b;->c:Landroidx/fragment/app/Fragment;

    .line 364
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getExitTransitionCallback()Landroidx/core/app/n;

    move-result-object v0

    .line 17558
    iget-object v2, v9, Landroidx/fragment/app/z$b;->c:Landroidx/fragment/app/Fragment;

    .line 365
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Landroidx/core/app/n;

    move-result-object v2

    goto :goto_7

    .line 18558
    :cond_c
    iget-object v0, v8, Landroidx/fragment/app/z$b;->c:Landroidx/fragment/app/Fragment;

    .line 369
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Landroidx/core/app/n;

    move-result-object v0

    .line 19558
    iget-object v2, v9, Landroidx/fragment/app/z$b;->c:Landroidx/fragment/app/Fragment;

    .line 370
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getExitTransitionCallback()Landroidx/core/app/n;

    move-result-object v2

    .line 372
    :goto_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move-object/from16 v23, v10

    const/4 v10, 0x0

    :goto_8
    if-ge v10, v3, :cond_d

    .line 374
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move/from16 v24, v3

    move-object/from16 v3, v19

    check-cast v3, Ljava/lang/String;

    .line 375
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v25, v14

    move-object/from16 v14, v19

    check-cast v14, Ljava/lang/String;

    .line 376
    invoke-virtual {v4, v3, v14}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v10, v10, 0x1

    move/from16 v3, v24

    move-object/from16 v14, v25

    goto :goto_8

    :cond_d
    move-object/from16 v25, v14

    .line 381
    new-instance v10, Landroidx/b/a;

    invoke-direct {v10}, Landroidx/b/a;-><init>()V

    .line 20558
    iget-object v3, v8, Landroidx/fragment/app/z$b;->c:Landroidx/fragment/app/Fragment;

    .line 382
    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-direct {v6, v10, v3}, Landroidx/fragment/app/b;->a(Ljava/util/Map;Landroid/view/View;)V

    .line 383
    invoke-virtual {v10, v1}, Landroidx/b/a;->a(Ljava/util/Collection;)Z

    if-eqz v0, :cond_11

    .line 387
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_9
    if-ltz v0, :cond_10

    .line 388
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 389
    invoke-virtual {v10, v3}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    if-nez v14, :cond_e

    .line 391
    invoke-virtual {v4, v3}, Landroidx/b/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v1

    goto :goto_a

    :cond_e
    move-object/from16 v19, v1

    .line 392
    invoke-static {v14}, Landroidx/core/view/v;->p(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 393
    invoke-virtual {v4, v3}, Landroidx/b/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 394
    invoke-static {v14}, Landroidx/core/view/v;->p(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3, v1}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    :goto_a
    add-int/lit8 v0, v0, -0x1

    move-object/from16 v1, v19

    goto :goto_9

    :cond_10
    move-object/from16 v19, v1

    goto :goto_b

    :cond_11
    move-object/from16 v19, v1

    .line 400
    invoke-virtual {v10}, Landroidx/b/a;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidx/b/a;->a(Ljava/util/Collection;)Z

    .line 405
    :goto_b
    new-instance v14, Landroidx/b/a;

    invoke-direct {v14}, Landroidx/b/a;-><init>()V

    .line 21558
    iget-object v0, v9, Landroidx/fragment/app/z$b;->c:Landroidx/fragment/app/Fragment;

    .line 406
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-direct {v6, v14, v0}, Landroidx/fragment/app/b;->a(Ljava/util/Map;Landroid/view/View;)V

    .line 407
    invoke-virtual {v14, v11}, Landroidx/b/a;->a(Ljava/util/Collection;)Z

    .line 408
    invoke-virtual {v4}, Landroidx/b/a;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroidx/b/a;->a(Ljava/util/Collection;)Z

    if-eqz v2, :cond_14

    .line 412
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_c
    if-ltz v0, :cond_15

    .line 413
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 414
    invoke-virtual {v14, v1}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-nez v2, :cond_12

    .line 416
    invoke-static {v4, v1}, Landroidx/fragment/app/t;->a(Landroidx/b/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 419
    invoke-virtual {v4, v1}, Landroidx/b/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 421
    :cond_12
    invoke-static {v2}, Landroidx/core/view/v;->p(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 422
    invoke-static {v4, v1}, Landroidx/fragment/app/t;->a(Landroidx/b/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 426
    invoke-static {v2}, Landroidx/core/view/v;->p(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    .line 425
    invoke-virtual {v4, v1, v2}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    :goto_d
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 432
    :cond_14
    invoke-static {v4, v14}, Landroidx/fragment/app/t;->a(Landroidx/b/a;Landroidx/b/a;)V

    .line 437
    :cond_15
    invoke-virtual {v4}, Landroidx/b/a;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v10, v0}, Landroidx/fragment/app/b;->a(Landroidx/b/a;Ljava/util/Collection;)V

    .line 438
    invoke-virtual {v4}, Landroidx/b/a;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v14, v0}, Landroidx/fragment/app/b;->a(Landroidx/b/a;Ljava/util/Collection;)V

    .line 440
    invoke-virtual {v4}, Landroidx/b/a;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 444
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 445
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v2, v17

    move-object/from16 v10, v23

    move-object/from16 v14, v25

    const/4 v0, 0x0

    goto/16 :goto_4

    .line 22558
    :cond_16
    iget-object v0, v9, Landroidx/fragment/app/z$b;->c:Landroidx/fragment/app/Fragment;

    .line 23558
    iget-object v1, v8, Landroidx/fragment/app/z$b;->c:Landroidx/fragment/app/Fragment;

    .line 449
    invoke-static {v0, v1, v7, v10}, Landroidx/fragment/app/t;->a(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/b/a;)V

    .line 454
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/b;->a()Landroid/view/ViewGroup;

    move-result-object v3

    new-instance v2, Landroidx/fragment/app/b$7;

    move-object v0, v2

    move-object/from16 v24, v19

    move-object/from16 v1, p0

    move-object v7, v2

    move-object/from16 v26, v17

    move-object/from16 v2, p5

    move-object v9, v3

    move-object/from16 v27, v18

    move-object/from16 v3, p4

    move-object/from16 v28, v4

    move/from16 v4, p3

    move-object v8, v5

    move-object v5, v14

    invoke-direct/range {v0 .. v5}, Landroidx/fragment/app/b$7;-><init>(Landroidx/fragment/app/b;Landroidx/fragment/app/z$b;Landroidx/fragment/app/z$b;ZLandroidx/b/a;)V

    invoke-static {v9, v7}, Landroidx/core/view/s;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/s;

    .line 464
    invoke-virtual {v10}, Landroidx/b/a;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 465
    invoke-direct {v6, v12, v1}, Landroidx/fragment/app/b;->a(Ljava/util/ArrayList;Landroid/view/View;)V

    goto :goto_e

    .line 470
    :cond_17
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    move-object/from16 v0, v24

    const/4 v1, 0x0

    .line 471
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 472
    invoke-virtual {v10, v0}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/View;

    move-object/from16 v0, v27

    .line 473
    invoke-virtual {v15, v0, v2}, Landroidx/fragment/app/v;->a(Ljava/lang/Object;Landroid/view/View;)V

    goto :goto_f

    :cond_18
    move-object/from16 v0, v27

    move-object/from16 v2, v26

    .line 478
    :goto_f
    invoke-virtual {v14}, Landroidx/b/a;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 479
    invoke-direct {v6, v8, v3}, Landroidx/fragment/app/b;->a(Ljava/util/ArrayList;Landroid/view/View;)V

    goto :goto_10

    .line 484
    :cond_19
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1a

    const/4 v1, 0x0

    .line 485
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 486
    invoke-virtual {v14, v3}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_1b

    .line 493
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/b;->a()Landroid/view/ViewGroup;

    move-result-object v4

    new-instance v5, Landroidx/fragment/app/b$8;

    invoke-direct {v5, v6, v15, v3, v13}, Landroidx/fragment/app/b$8;-><init>(Landroidx/fragment/app/b;Landroidx/fragment/app/v;Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-static {v4, v5}, Landroidx/core/view/s;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/s;

    move-object/from16 v3, v25

    const/16 v21, 0x1

    goto :goto_11

    :cond_1a
    const/4 v1, 0x0

    :cond_1b
    move-object/from16 v3, v25

    .line 506
    :goto_11
    invoke-virtual {v15, v0, v3, v12}, Landroidx/fragment/app/v;->a(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    const/4 v14, 0x0

    const/4 v4, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v5, v12

    move-object v12, v15

    move-object v7, v13

    move-object v13, v0

    move-object v11, v15

    move-object v15, v4

    move-object/from16 v18, v0

    move-object/from16 v19, v8

    .line 511
    invoke-virtual/range {v12 .. v19}, Landroidx/fragment/app/v;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 516
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v10, v8

    move-object/from16 v9, v23

    move-object/from16 v8, p4

    invoke-interface {v9, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v1, p5

    const/4 v15, 0x0

    invoke-interface {v9, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    :cond_1c
    move-object/from16 v26, v2

    move-object/from16 v28, v4

    move-object v1, v9

    move-object v9, v10

    move-object v7, v13

    move-object v3, v14

    move-object v11, v15

    const/4 v15, 0x0

    move-object v10, v5

    move-object v5, v12

    move-object/from16 v2, v26

    :goto_12
    move-object v14, v3

    move-object v12, v5

    move-object v13, v7

    move-object v5, v10

    move-object v15, v11

    move-object/from16 v4, v28

    move/from16 v7, p3

    move-object v10, v9

    move-object v9, v1

    goto/16 :goto_4

    :cond_1d
    move-object/from16 v26, v2

    move-object/from16 v28, v4

    move-object v1, v9

    move-object v9, v10

    move-object v7, v13

    move-object v3, v14

    move-object v11, v15

    const/4 v15, 0x0

    move-object v10, v5

    move-object v5, v12

    .line 521
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 527
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_13
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/fragment/app/b$c;

    .line 528
    invoke-virtual {v12}, Landroidx/fragment/app/b$c;->a()Z

    move-result v16

    if-eqz v16, :cond_1e

    .line 23763
    iget-object v15, v12, Landroidx/fragment/app/b$b;->a:Landroidx/fragment/app/z$b;

    move-object/from16 p3, v4

    .line 530
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v9, v15, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    invoke-virtual {v12}, Landroidx/fragment/app/b$c;->b()V

    goto :goto_15

    :cond_1e
    move-object/from16 p3, v4

    .line 23853
    iget-object v4, v12, Landroidx/fragment/app/b$c;->c:Ljava/lang/Object;

    .line 534
    invoke-virtual {v11, v4}, Landroidx/fragment/app/v;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 24763
    iget-object v15, v12, Landroidx/fragment/app/b$b;->a:Landroidx/fragment/app/z$b;

    if-eqz v0, :cond_20

    if-eq v15, v8, :cond_1f

    if-ne v15, v1, :cond_20

    :cond_1f
    const/16 v16, 0x1

    goto :goto_14

    :cond_20
    const/16 v16, 0x0

    :goto_14
    if-nez v4, :cond_22

    if-nez v16, :cond_21

    .line 544
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v9, v15, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    invoke-virtual {v12}, Landroidx/fragment/app/b$c;->b()V

    :goto_15
    move-object/from16 v4, p3

    const/4 v15, 0x0

    goto :goto_13

    :cond_21
    move-object/from16 v12, p2

    move-object/from16 v25, v3

    move-object/from16 v23, v5

    move-object/from16 v24, v10

    move-object v10, v14

    move-object/from16 v1, v26

    const/4 v3, 0x0

    goto/16 :goto_19

    .line 549
    :cond_22
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v17, v12

    .line 25558
    iget-object v12, v15, Landroidx/fragment/app/z$b;->c:Landroidx/fragment/app/Fragment;

    .line 551
    iget-object v12, v12, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 550
    invoke-direct {v6, v1, v12}, Landroidx/fragment/app/b;->a(Ljava/util/ArrayList;Landroid/view/View;)V

    if-eqz v16, :cond_24

    if-ne v15, v8, :cond_23

    .line 555
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_16

    .line 557
    :cond_23
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 560
    :cond_24
    :goto_16
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_25

    .line 561
    invoke-virtual {v11, v4, v3}, Landroidx/fragment/app/v;->b(Ljava/lang/Object;Landroid/view/View;)V

    move-object/from16 v12, p2

    move-object/from16 v25, v3

    move-object/from16 v23, v5

    move-object/from16 v24, v10

    move-object v5, v13

    move-object v10, v14

    move-object v8, v15

    move-object/from16 v3, v17

    goto :goto_17

    .line 563
    :cond_25
    invoke-virtual {v11, v4, v1}, Landroidx/fragment/app/v;->a(Ljava/lang/Object;Ljava/util/ArrayList;)V

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v25, v3

    move-object/from16 v3, v17

    move-object v12, v11

    move-object/from16 v23, v5

    move-object v5, v13

    move-object v13, v4

    move-object/from16 v24, v10

    move-object v10, v14

    move-object v14, v4

    move-object v8, v15

    move-object v15, v1

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    .line 564
    invoke-virtual/range {v12 .. v19}, Landroidx/fragment/app/v;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 26539
    iget-object v12, v8, Landroidx/fragment/app/z$b;->a:Landroidx/fragment/app/z$b$b;

    .line 567
    sget-object v13, Landroidx/fragment/app/z$b$b;->GONE:Landroidx/fragment/app/z$b$b;

    if-ne v12, v13, :cond_26

    move-object/from16 v12, p2

    .line 571
    invoke-interface {v12, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 26558
    iget-object v13, v8, Landroidx/fragment/app/z$b;->c:Landroidx/fragment/app/Fragment;

    .line 575
    iget-object v13, v13, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 574
    invoke-virtual {v11, v4, v13, v1}, Landroidx/fragment/app/v;->b(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 583
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/b;->a()Landroid/view/ViewGroup;

    move-result-object v13

    new-instance v14, Landroidx/fragment/app/b$9;

    invoke-direct {v14, v6, v1}, Landroidx/fragment/app/b$9;-><init>(Landroidx/fragment/app/b;Ljava/util/ArrayList;)V

    invoke-static {v13, v14}, Landroidx/core/view/s;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/s;

    goto :goto_17

    :cond_26
    move-object/from16 v12, p2

    .line 27539
    :goto_17
    iget-object v13, v8, Landroidx/fragment/app/z$b;->a:Landroidx/fragment/app/z$b$b;

    .line 592
    sget-object v14, Landroidx/fragment/app/z$b$b;->VISIBLE:Landroidx/fragment/app/z$b$b;

    if-ne v13, v14, :cond_28

    .line 593
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz v21, :cond_27

    .line 595
    invoke-virtual {v11, v4, v7}, Landroidx/fragment/app/v;->a(Ljava/lang/Object;Landroid/graphics/Rect;)V

    :cond_27
    move-object/from16 v1, v26

    goto :goto_18

    :cond_28
    move-object/from16 v1, v26

    .line 598
    invoke-virtual {v11, v4, v1}, Landroidx/fragment/app/v;->a(Ljava/lang/Object;Landroid/view/View;)V

    .line 600
    :goto_18
    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v9, v8, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27857
    iget-boolean v3, v3, Landroidx/fragment/app/b$c;->d:Z

    if-eqz v3, :cond_29

    const/4 v3, 0x0

    .line 604
    invoke-virtual {v11, v10, v4, v3}, Landroidx/fragment/app/v;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v4, p3

    move-object/from16 v8, p4

    move-object/from16 v26, v1

    move-object v13, v5

    goto :goto_1a

    :cond_29
    const/4 v3, 0x0

    .line 608
    invoke-virtual {v11, v5, v4, v3}, Landroidx/fragment/app/v;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    :goto_19
    move-object/from16 v4, p3

    move-object/from16 v8, p4

    move-object/from16 v26, v1

    move-object v14, v10

    :goto_1a
    move-object/from16 v5, v23

    move-object/from16 v10, v24

    move-object/from16 v3, v25

    const/4 v15, 0x0

    move-object/from16 v1, p5

    goto/16 :goto_13

    :cond_2a
    move-object/from16 v23, v5

    move-object/from16 v24, v10

    move-object v5, v13

    move-object v10, v14

    .line 616
    invoke-virtual {v11, v10, v5, v0}, Landroidx/fragment/app/v;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 620
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2b
    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/b$c;

    .line 621
    invoke-virtual {v4}, Landroidx/fragment/app/b$c;->a()Z

    move-result v5

    if-nez v5, :cond_31

    .line 28853
    iget-object v5, v4, Landroidx/fragment/app/b$c;->c:Ljava/lang/Object;

    .line 29763
    iget-object v7, v4, Landroidx/fragment/app/b$b;->a:Landroidx/fragment/app/z$b;

    move-object/from16 v8, p4

    move-object/from16 v10, p5

    if-eqz v0, :cond_2d

    if-eq v7, v8, :cond_2c

    if-ne v7, v10, :cond_2d

    :cond_2c
    const/4 v12, 0x1

    goto :goto_1c

    :cond_2d
    const/4 v12, 0x0

    :goto_1c
    if-nez v5, :cond_2e

    if-eqz v12, :cond_2b

    .line 632
    :cond_2e
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/b;->a()Landroid/view/ViewGroup;

    move-result-object v5

    invoke-static {v5}, Landroidx/core/view/v;->B(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_30

    const/4 v5, 0x2

    .line 633
    invoke-static {v5}, Landroidx/fragment/app/FragmentManager;->a(I)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 634
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v12, "SpecialEffectsController: Container "

    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 635
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/b;->a()Landroid/view/ViewGroup;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " has not been laid out. Completing operation "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 639
    :cond_2f
    invoke-virtual {v4}, Landroidx/fragment/app/b$c;->b()V

    goto :goto_1b

    .line 31768
    :cond_30
    iget-object v5, v4, Landroidx/fragment/app/b$b;->b:Landroidx/core/os/a;

    .line 644
    new-instance v7, Landroidx/fragment/app/b$10;

    invoke-direct {v7, v6, v4}, Landroidx/fragment/app/b$10;-><init>(Landroidx/fragment/app/b;Landroidx/fragment/app/b$c;)V

    .line 641
    invoke-virtual {v11, v1, v5, v7}, Landroidx/fragment/app/v;->a(Ljava/lang/Object;Landroidx/core/os/a;Ljava/lang/Runnable;)V

    goto :goto_1b

    :cond_31
    move-object/from16 v8, p4

    move-object/from16 v10, p5

    goto :goto_1b

    .line 656
    :cond_32
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/b;->a()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-static {v3}, Landroidx/core/view/v;->B(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_33

    return-object v9

    :cond_33
    const/4 v3, 0x4

    .line 661
    invoke-static {v2, v3}, Landroidx/fragment/app/t;->a(Ljava/util/ArrayList;I)V

    .line 663
    invoke-static/range {v24 .. v24}, Landroidx/fragment/app/v;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v16

    .line 665
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/b;->a()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v11, v3, v1}, Landroidx/fragment/app/v;->a(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 666
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/b;->a()Landroid/view/ViewGroup;

    move-result-object v13

    move-object v12, v11

    move-object/from16 v14, v23

    move-object/from16 v15, v24

    move-object/from16 v17, v28

    invoke-virtual/range {v12 .. v17}, Landroidx/fragment/app/v;->a(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V

    const/4 v1, 0x0

    .line 670
    invoke-static {v2, v1}, Landroidx/fragment/app/t;->a(Ljava/util/ArrayList;I)V

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    .line 671
    invoke-virtual {v11, v0, v1, v2}, Landroidx/fragment/app/v;->a(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-object v9
.end method

.method private static a(Landroidx/b/a;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/b/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 685
    invoke-virtual {p0}, Landroidx/b/a;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 686
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 687
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 688
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/v;->p(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 689
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static a(Landroidx/fragment/app/z$b;)V
    .locals 1

    .line 32558
    iget-object v0, p0, Landroidx/fragment/app/z$b;->c:Landroidx/fragment/app/Fragment;

    .line 746
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 33539
    iget-object p0, p0, Landroidx/fragment/app/z$b;->a:Landroidx/fragment/app/z$b$b;

    .line 747
    invoke-virtual {p0, v0}, Landroidx/fragment/app/z$b$b;->applyState(Landroid/view/View;)V

    return-void
.end method

.method private a(Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 703
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 704
    check-cast p2, Landroid/view/ViewGroup;

    .line 705
    invoke-static {p2}, Landroidx/core/view/w;->a(Landroid/view/ViewGroup;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 706
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 708
    :cond_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 710
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 711
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 712
    invoke-direct {p0, p1, v2}, Landroidx/fragment/app/b;->a(Ljava/util/ArrayList;Landroid/view/View;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 717
    :cond_3
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 718
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method private a(Ljava/util/List;Ljava/util/List;ZLjava/util/Map;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/fragment/app/b$a;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/fragment/app/z$b;",
            ">;Z",
            "Ljava/util/Map<",
            "Landroidx/fragment/app/z$b;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v7, p0

    .line 132
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/b;->a()Landroid/view/ViewGroup;

    move-result-object v8

    .line 133
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 134
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 138
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v13, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroidx/fragment/app/b$a;

    .line 139
    invoke-virtual {v14}, Landroidx/fragment/app/b$a;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    invoke-virtual {v14}, Landroidx/fragment/app/b$a;->b()V

    :goto_1
    move-object/from16 v6, p4

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {v14, v9}, Landroidx/fragment/app/b$a;->a(Landroid/content/Context;)Landroidx/fragment/app/d$a;

    move-result-object v1

    if-nez v1, :cond_1

    .line 147
    invoke-virtual {v14}, Landroidx/fragment/app/b$a;->b()V

    goto :goto_1

    .line 150
    :cond_1
    iget-object v15, v1, Landroidx/fragment/app/d$a;->b:Landroid/animation/Animator;

    if-nez v15, :cond_2

    .line 153
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2763
    :cond_2
    iget-object v5, v14, Landroidx/fragment/app/b$b;->a:Landroidx/fragment/app/z$b;

    .line 3558
    iget-object v1, v5, Landroidx/fragment/app/z$b;->c:Landroidx/fragment/app/Fragment;

    .line 160
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v6, p4

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 162
    invoke-static {v2}, Landroidx/fragment/app/FragmentManager;->a(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Ignoring Animator set on "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " as this Fragment was involved in a Transition."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    :cond_3
    invoke-virtual {v14}, Landroidx/fragment/app/b$a;->b()V

    goto :goto_0

    .line 4539
    :cond_4
    iget-object v0, v5, Landroidx/fragment/app/z$b;->a:Landroidx/fragment/app/z$b$b;

    .line 172
    sget-object v2, Landroidx/fragment/app/z$b$b;->GONE:Landroidx/fragment/app/z$b$b;

    if-ne v0, v2, :cond_5

    const/4 v4, 0x1

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    :goto_2
    move-object/from16 v3, p2

    if-eqz v4, :cond_6

    .line 177
    invoke-interface {v3, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 179
    :cond_6
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 180
    invoke-virtual {v8, v2}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 181
    new-instance v1, Landroidx/fragment/app/b$3;

    move-object v0, v1

    move-object v12, v1

    move-object/from16 v1, p0

    move-object/from16 v16, v2

    move-object v2, v8

    move-object/from16 v3, v16

    move-object v6, v14

    invoke-direct/range {v0 .. v6}, Landroidx/fragment/app/b$3;-><init>(Landroidx/fragment/app/b;Landroid/view/ViewGroup;Landroid/view/View;ZLandroidx/fragment/app/z$b;Landroidx/fragment/app/b$a;)V

    invoke-virtual {v15, v12}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, v16

    .line 193
    invoke-virtual {v15, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 194
    invoke-virtual {v15}, Landroid/animation/Animator;->start()V

    .line 4768
    iget-object v0, v14, Landroidx/fragment/app/b$b;->b:Landroidx/core/os/a;

    .line 197
    new-instance v1, Landroidx/fragment/app/b$4;

    invoke-direct {v1, v7, v15}, Landroidx/fragment/app/b$4;-><init>(Landroidx/fragment/app/b;Landroid/animation/Animator;)V

    invoke-virtual {v0, v1}, Landroidx/core/os/a;->a(Landroidx/core/os/a$a;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .line 206
    :cond_7
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/b$a;

    .line 5763
    iget-object v4, v3, Landroidx/fragment/app/b$b;->a:Landroidx/fragment/app/z$b;

    .line 6558
    iget-object v5, v4, Landroidx/fragment/app/z$b;->c:Landroidx/fragment/app/Fragment;

    const-string v6, "Ignoring Animation set on "

    if-eqz p3, :cond_9

    .line 211
    invoke-static {v2}, Landroidx/fragment/app/FragmentManager;->a(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 212
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " as Animations cannot run alongside Transitions."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    :cond_8
    invoke-virtual {v3}, Landroidx/fragment/app/b$a;->b()V

    goto :goto_3

    :cond_9
    if-eqz v0, :cond_b

    .line 220
    invoke-static {v2}, Landroidx/fragment/app/FragmentManager;->a(I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 221
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " as Animations cannot run alongside Animators."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    :cond_a
    invoke-virtual {v3}, Landroidx/fragment/app/b$a;->b()V

    goto :goto_3

    .line 229
    :cond_b
    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 231
    invoke-virtual {v3, v9}, Landroidx/fragment/app/b$a;->a(Landroid/content/Context;)Landroidx/fragment/app/d$a;

    move-result-object v6

    invoke-static {v6}, Landroidx/core/e/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/d$a;

    iget-object v6, v6, Landroidx/fragment/app/d$a;->a:Landroid/view/animation/Animation;

    .line 230
    invoke-static {v6}, Landroidx/core/e/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/animation/Animation;

    .line 7539
    iget-object v4, v4, Landroidx/fragment/app/z$b;->a:Landroidx/fragment/app/z$b$b;

    .line 233
    sget-object v10, Landroidx/fragment/app/z$b$b;->REMOVED:Landroidx/fragment/app/z$b$b;

    if-eq v4, v10, :cond_c

    .line 236
    invoke-virtual {v5, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 240
    invoke-virtual {v3}, Landroidx/fragment/app/b$a;->b()V

    goto :goto_4

    .line 242
    :cond_c
    invoke-virtual {v8, v5}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 243
    new-instance v4, Landroidx/fragment/app/d$b;

    invoke-direct {v4, v6, v8, v5}, Landroidx/fragment/app/d$b;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 245
    new-instance v6, Landroidx/fragment/app/b$5;

    invoke-direct {v6, v7, v8, v5, v3}, Landroidx/fragment/app/b$5;-><init>(Landroidx/fragment/app/b;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/b$a;)V

    invoke-virtual {v4, v6}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 268
    invoke-virtual {v5, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 7768
    :goto_4
    iget-object v4, v3, Landroidx/fragment/app/b$b;->b:Landroidx/core/os/a;

    .line 272
    new-instance v6, Landroidx/fragment/app/b$6;

    invoke-direct {v6, v7, v5, v8, v3}, Landroidx/fragment/app/b$6;-><init>(Landroidx/fragment/app/b;Landroid/view/View;Landroid/view/ViewGroup;Landroidx/fragment/app/b$a;)V

    invoke-virtual {v4, v6}, Landroidx/core/os/a;->a(Landroidx/core/os/a$a;)V

    goto/16 :goto_3

    :cond_d
    return-void
.end method

.method private a(Ljava/util/Map;Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 728
    invoke-static {p2}, Landroidx/core/view/v;->p(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 730
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    :cond_0
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 733
    check-cast p2, Landroid/view/ViewGroup;

    .line 734
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 736
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 737
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 738
    invoke-direct {p0, p1, v2}, Landroidx/fragment/app/b;->a(Ljava/util/Map;Landroid/view/View;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method final a(Ljava/util/List;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/fragment/app/z$b;",
            ">;Z)V"
        }
    .end annotation

    .line 61
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v6, v1

    move-object v7, v6

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/z$b;

    .line 1558
    iget-object v3, v1, Landroidx/fragment/app/z$b;->c:Landroidx/fragment/app/Fragment;

    .line 62
    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v3}, Landroidx/fragment/app/z$b$b;->from(Landroid/view/View;)Landroidx/fragment/app/z$b$b;

    move-result-object v3

    .line 63
    sget-object v4, Landroidx/fragment/app/b$2;->a:[I

    .line 2539
    iget-object v5, v1, Landroidx/fragment/app/z$b;->a:Landroidx/fragment/app/z$b$b;

    .line 63
    invoke-virtual {v5}, Landroidx/fragment/app/z$b$b;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v2, :cond_2

    const/4 v2, 0x2

    if-eq v4, v2, :cond_2

    const/4 v2, 0x3

    if-eq v4, v2, :cond_2

    const/4 v2, 0x4

    if-eq v4, v2, :cond_1

    goto :goto_0

    .line 73
    :cond_1
    sget-object v2, Landroidx/fragment/app/z$b$b;->VISIBLE:Landroidx/fragment/app/z$b$b;

    if-eq v3, v2, :cond_0

    move-object v7, v1

    goto :goto_0

    .line 67
    :cond_2
    sget-object v2, Landroidx/fragment/app/z$b$b;->VISIBLE:Landroidx/fragment/app/z$b$b;

    if-ne v3, v2, :cond_0

    if-nez v6, :cond_0

    move-object v6, v1

    goto :goto_0

    .line 83
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 84
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 85
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 87
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/z$b;

    .line 89
    new-instance v5, Landroidx/core/os/a;

    invoke-direct {v5}, Landroidx/core/os/a;-><init>()V

    .line 90
    invoke-virtual {v4, v5}, Landroidx/fragment/app/z$b;->a(Landroidx/core/os/a;)V

    .line 92
    new-instance v8, Landroidx/fragment/app/b$a;

    invoke-direct {v8, v4, v5, p2}, Landroidx/fragment/app/b$a;-><init>(Landroidx/fragment/app/z$b;Landroidx/core/os/a;Z)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v5, Landroidx/core/os/a;

    invoke-direct {v5}, Landroidx/core/os/a;-><init>()V

    .line 96
    invoke-virtual {v4, v5}, Landroidx/fragment/app/z$b;->a(Landroidx/core/os/a;)V

    .line 98
    new-instance v8, Landroidx/fragment/app/b$c;

    const/4 v9, 0x0

    if-eqz p2, :cond_4

    if-ne v4, v6, :cond_5

    goto :goto_2

    :cond_4
    if-ne v4, v7, :cond_5

    :goto_2
    const/4 v9, 0x1

    .line 99
    :cond_5
    invoke-direct {v8, v4, v5, p2, v9}, Landroidx/fragment/app/b$c;-><init>(Landroidx/fragment/app/z$b;Landroidx/core/os/a;ZZ)V

    .line 98
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    new-instance v5, Landroidx/fragment/app/b$1;

    invoke-direct {v5, p0, v1, v4}, Landroidx/fragment/app/b$1;-><init>(Landroidx/fragment/app/b;Ljava/util/List;Landroidx/fragment/app/z$b;)V

    invoke-virtual {v4, v5}, Landroidx/fragment/app/z$b;->a(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_6
    move-object v2, p0

    move-object v4, v1

    move v5, p2

    .line 115
    invoke-direct/range {v2 .. v7}, Landroidx/fragment/app/b;->a(Ljava/util/List;Ljava/util/List;ZLandroidx/fragment/app/z$b;Landroidx/fragment/app/z$b;)Ljava/util/Map;

    move-result-object p1

    .line 117
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p2}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p2

    .line 120
    invoke-direct {p0, v0, v1, p2, p1}, Landroidx/fragment/app/b;->a(Ljava/util/List;Ljava/util/List;ZLjava/util/Map;)V

    .line 123
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/fragment/app/z$b;

    .line 124
    invoke-static {p2}, Landroidx/fragment/app/b;->a(Landroidx/fragment/app/z$b;)V

    goto :goto_3

    .line 126
    :cond_7
    invoke-interface {v1}, Ljava/util/List;->clear()V

    return-void
.end method
