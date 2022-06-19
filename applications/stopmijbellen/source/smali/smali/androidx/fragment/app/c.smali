.class public Landroidx/fragment/app/c;
.super Landroidx/fragment/app/w0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/c$d;,
        Landroidx/fragment/app/c$b;,
        Landroidx/fragment/app/c$c;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/fragment/app/w0;-><init>(Landroid/view/ViewGroup;)V

    return-void
.end method


# virtual methods
.method public b(Ljava/util/List;Z)V
    .locals 38
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/fragment/app/w0$d;",
            ">;Z)V"
        }
    .end annotation

    move-object/from16 v7, p0

    move/from16 v6, p2

    .line 1
    sget-object v8, Landroidx/fragment/app/w0$d$c;->c:Landroidx/fragment/app/w0$d$c;

    sget-object v9, Landroidx/fragment/app/w0$d$c;->b:Landroidx/fragment/app/w0$d$c;

    .line 2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v10, v1

    move-object v11, v2

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/w0$d;

    .line 3
    iget-object v4, v1, Landroidx/fragment/app/w0$d;->c:Landroidx/fragment/app/Fragment;

    .line 4
    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v4}, Landroidx/fragment/app/w0$d$c;->c(Landroid/view/View;)Landroidx/fragment/app/w0$d$c;

    move-result-object v4

    .line 5
    iget-object v5, v1, Landroidx/fragment/app/w0$d;->a:Landroidx/fragment/app/w0$d$c;

    .line 6
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-eqz v5, :cond_2

    if-eq v5, v3, :cond_1

    if-eq v5, v2, :cond_2

    const/4 v2, 0x3

    if-eq v5, v2, :cond_2

    goto :goto_0

    :cond_1
    if-eq v4, v9, :cond_0

    move-object v11, v1

    goto :goto_0

    :cond_2
    if-ne v4, v9, :cond_0

    if-nez v10, :cond_0

    move-object v10, v1

    goto :goto_0

    .line 7
    :cond_3
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 8
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 9
    new-instance v14, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/w0$d;

    .line 11
    new-instance v2, Li0/b;

    invoke-direct {v2}, Li0/b;-><init>()V

    .line 12
    invoke-virtual {v1}, Landroidx/fragment/app/w0$d;->d()V

    .line 13
    iget-object v3, v1, Landroidx/fragment/app/w0$d;->e:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 14
    new-instance v3, Landroidx/fragment/app/c$b;

    invoke-direct {v3, v1, v2, v6}, Landroidx/fragment/app/c$b;-><init>(Landroidx/fragment/app/w0$d;Li0/b;Z)V

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    new-instance v2, Li0/b;

    invoke-direct {v2}, Li0/b;-><init>()V

    .line 16
    invoke-virtual {v1}, Landroidx/fragment/app/w0$d;->d()V

    .line 17
    iget-object v3, v1, Landroidx/fragment/app/w0$d;->e:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 18
    new-instance v3, Landroidx/fragment/app/c$d;

    if-eqz v6, :cond_4

    if-ne v1, v10, :cond_5

    goto :goto_2

    :cond_4
    if-ne v1, v11, :cond_5

    :goto_2
    const/4 v4, 0x1

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    .line 19
    :goto_3
    invoke-direct {v3, v1, v2, v6, v4}, Landroidx/fragment/app/c$d;-><init>(Landroidx/fragment/app/w0$d;Li0/b;ZZ)V

    .line 20
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    new-instance v2, Landroidx/fragment/app/c$a;

    invoke-direct {v2, v7, v14, v1}, Landroidx/fragment/app/c$a;-><init>(Landroidx/fragment/app/c;Ljava/util/List;Landroidx/fragment/app/w0$d;)V

    .line 22
    iget-object v1, v1, Landroidx/fragment/app/w0$d;->d:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 23
    :cond_6
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 24
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v5, v1

    :cond_7
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/c$d;

    .line 25
    invoke-virtual {v1}, Landroidx/fragment/app/c$c;->b()Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_4

    .line 26
    :cond_8
    iget-object v2, v1, Landroidx/fragment/app/c$d;->c:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroidx/fragment/app/c$d;->c(Ljava/lang/Object;)Landroidx/fragment/app/r0;

    move-result-object v2

    .line 27
    iget-object v3, v1, Landroidx/fragment/app/c$d;->e:Ljava/lang/Object;

    .line 28
    invoke-virtual {v1, v3}, Landroidx/fragment/app/c$d;->c(Ljava/lang/Object;)Landroidx/fragment/app/r0;

    move-result-object v3

    const-string v4, " returned Transition "

    const-string v16, "Mixing framework transitions and AndroidX transitions is not allowed. Fragment "

    if-eqz v2, :cond_a

    if-eqz v3, :cond_a

    if-ne v2, v3, :cond_9

    goto :goto_5

    .line 29
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static/range {v16 .. v16}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 30
    iget-object v3, v1, Landroidx/fragment/app/c$c;->a:Landroidx/fragment/app/w0$d;

    .line 31
    iget-object v3, v3, Landroidx/fragment/app/w0$d;->c:Landroidx/fragment/app/Fragment;

    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroidx/fragment/app/c$d;->c:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " which uses a different Transition  type than its shared element transition "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroidx/fragment/app/c$d;->e:Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :goto_5
    if-eqz v2, :cond_b

    goto :goto_6

    :cond_b
    move-object v2, v3

    :goto_6
    if-nez v5, :cond_c

    move-object v5, v2

    goto :goto_4

    :cond_c
    if-eqz v2, :cond_7

    if-ne v5, v2, :cond_d

    goto :goto_4

    .line 33
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static/range {v16 .. v16}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 34
    iget-object v3, v1, Landroidx/fragment/app/c$c;->a:Landroidx/fragment/app/w0$d;

    .line 35
    iget-object v3, v3, Landroidx/fragment/app/w0$d;->c:Landroidx/fragment/app/Fragment;

    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget-object v1, v1, Landroidx/fragment/app/c$d;->c:Ljava/lang/Object;

    .line 38
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " which uses a different Transition  type than other Fragments."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    if-nez v5, :cond_10

    .line 39
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/c$d;

    .line 40
    iget-object v2, v1, Landroidx/fragment/app/c$c;->a:Landroidx/fragment/app/w0$d;

    .line 41
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v15, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-virtual {v1}, Landroidx/fragment/app/c$c;->a()V

    goto :goto_7

    :cond_f
    move-object/from16 v25, v12

    move-object/from16 v29, v14

    move-object v12, v8

    move-object v8, v15

    goto/16 :goto_1a

    .line 43
    :cond_10
    new-instance v4, Landroid/view/View;

    .line 44
    iget-object v0, v7, Landroidx/fragment/app/w0;->a:Landroid/view/ViewGroup;

    .line 45
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 47
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 48
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 49
    new-instance v0, Ls/a;

    invoke-direct {v0}, Ls/a;-><init>()V

    .line 50
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 p1, v3

    move-object/from16 v25, v12

    move-object/from16 v3, v16

    move-object/from16 v27, v17

    const/16 v26, 0x0

    move-object/from16 v16, v4

    move-object v4, v10

    move-object v12, v11

    :goto_8
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1a

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v28, v9

    move-object/from16 v9, v17

    check-cast v9, Landroidx/fragment/app/c$d;

    .line 51
    iget-object v9, v9, Landroidx/fragment/app/c$d;->e:Ljava/lang/Object;

    if-eqz v9, :cond_11

    const/16 v17, 0x1

    goto :goto_9

    :cond_11
    const/16 v17, 0x0

    :goto_9
    if-eqz v17, :cond_19

    if-eqz v4, :cond_19

    if-eqz v12, :cond_19

    .line 52
    invoke-virtual {v5, v9}, Landroidx/fragment/app/r0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 53
    invoke-virtual {v5, v3}, Landroidx/fragment/app/r0;->y(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 54
    iget-object v3, v12, Landroidx/fragment/app/w0$d;->c:Landroidx/fragment/app/Fragment;

    .line 55
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getSharedElementSourceNames()Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v17, v5

    .line 56
    iget-object v5, v4, Landroidx/fragment/app/w0$d;->c:Landroidx/fragment/app/Fragment;

    .line 57
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getSharedElementSourceNames()Ljava/util/ArrayList;

    move-result-object v5

    move-object/from16 v29, v14

    .line 58
    iget-object v14, v4, Landroidx/fragment/app/w0$d;->c:Landroidx/fragment/app/Fragment;

    .line 59
    invoke-virtual {v14}, Landroidx/fragment/app/Fragment;->getSharedElementTargetNames()Ljava/util/ArrayList;

    move-result-object v14

    const/16 v18, 0x0

    move-object/from16 v30, v8

    move-object/from16 v31, v13

    const/4 v8, 0x0

    .line 60
    :goto_a
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v8, v13, :cond_13

    .line 61
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v13

    move-object/from16 v18, v14

    const/4 v14, -0x1

    if-eq v13, v14, :cond_12

    .line 62
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v3, v13, v14}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_12
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v14, v18

    goto :goto_a

    .line 63
    :cond_13
    iget-object v5, v12, Landroidx/fragment/app/w0$d;->c:Landroidx/fragment/app/Fragment;

    .line 64
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getSharedElementTargetNames()Ljava/util/ArrayList;

    move-result-object v8

    if-nez v6, :cond_14

    .line 65
    iget-object v5, v4, Landroidx/fragment/app/w0$d;->c:Landroidx/fragment/app/Fragment;

    .line 66
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getExitTransitionCallback()Lc0/t;

    .line 67
    iget-object v5, v12, Landroidx/fragment/app/w0$d;->c:Landroidx/fragment/app/Fragment;

    .line 68
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Lc0/t;

    goto :goto_b

    .line 69
    :cond_14
    iget-object v5, v4, Landroidx/fragment/app/w0$d;->c:Landroidx/fragment/app/Fragment;

    .line 70
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Lc0/t;

    .line 71
    iget-object v5, v12, Landroidx/fragment/app/w0$d;->c:Landroidx/fragment/app/Fragment;

    .line 72
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getExitTransitionCallback()Lc0/t;

    .line 73
    :goto_b
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v13, 0x0

    :goto_c
    if-ge v13, v5, :cond_15

    .line 74
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 75
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move/from16 v19, v5

    move-object/from16 v5, v18

    check-cast v5, Ljava/lang/String;

    .line 76
    invoke-virtual {v0, v14, v5}, Ls/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v13, v13, 0x1

    move/from16 v5, v19

    goto :goto_c

    .line 77
    :cond_15
    new-instance v13, Ls/a;

    invoke-direct {v13}, Ls/a;-><init>()V

    .line 78
    iget-object v5, v4, Landroidx/fragment/app/w0$d;->c:Landroidx/fragment/app/Fragment;

    .line 79
    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v7, v13, v5}, Landroidx/fragment/app/c;->k(Ljava/util/Map;Landroid/view/View;)V

    .line 80
    invoke-static {v13, v3}, Ls/f;->k(Ljava/util/Map;Ljava/util/Collection;)Z

    .line 81
    invoke-virtual {v13}, Ls/a;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 82
    invoke-static {v0, v5}, Ls/f;->k(Ljava/util/Map;Ljava/util/Collection;)Z

    .line 83
    new-instance v14, Ls/a;

    invoke-direct {v14}, Ls/a;-><init>()V

    .line 84
    iget-object v5, v12, Landroidx/fragment/app/w0$d;->c:Landroidx/fragment/app/Fragment;

    .line 85
    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v7, v14, v5}, Landroidx/fragment/app/c;->k(Ljava/util/Map;Landroid/view/View;)V

    .line 86
    invoke-static {v14, v8}, Ls/f;->k(Ljava/util/Map;Ljava/util/Collection;)Z

    .line 87
    invoke-virtual {v0}, Ls/a;->values()Ljava/util/Collection;

    move-result-object v5

    .line 88
    invoke-static {v14, v5}, Ls/f;->k(Ljava/util/Map;Ljava/util/Collection;)Z

    .line 89
    invoke-static {v0, v14}, Landroidx/fragment/app/p0;->n(Ls/a;Ls/a;)V

    .line 90
    invoke-virtual {v0}, Ls/a;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v7, v13, v5}, Landroidx/fragment/app/c;->l(Ls/a;Ljava/util/Collection;)V

    .line 91
    invoke-virtual {v0}, Ls/a;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-virtual {v7, v14, v5}, Landroidx/fragment/app/c;->l(Ls/a;Ljava/util/Collection;)V

    .line 92
    invoke-virtual {v0}, Ls/g;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_16

    .line 93
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 94
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    move-object/from16 v5, p1

    move-object/from16 v32, v0

    move-object v6, v2

    move-object v2, v10

    move-object v8, v15

    move-object/from16 v0, v16

    move-object/from16 v10, v17

    move-object v15, v1

    goto/16 :goto_f

    .line 95
    :cond_16
    iget-object v5, v12, Landroidx/fragment/app/w0$d;->c:Landroidx/fragment/app/Fragment;

    iget-object v4, v4, Landroidx/fragment/app/w0$d;->c:Landroidx/fragment/app/Fragment;

    const/4 v12, 0x1

    .line 96
    invoke-static {v5, v4, v6, v13, v12}, Landroidx/fragment/app/p0;->c(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLs/a;Z)V

    .line 97
    iget-object v12, v7, Landroidx/fragment/app/w0;->a:Landroid/view/ViewGroup;

    .line 98
    new-instance v5, Landroidx/fragment/app/h;

    move-object/from16 v32, v0

    move-object v0, v5

    move-object v4, v1

    move-object/from16 v1, p0

    move-object v6, v2

    move-object v2, v11

    move-object/from16 v33, v11

    move-object/from16 v11, p1

    move-object/from16 p1, v3

    move-object v3, v10

    move-object/from16 v34, v10

    move-object/from16 v35, v15

    move-object/from16 v10, v16

    move-object v15, v4

    move/from16 v4, p2

    move-object/from16 v36, v10

    move-object/from16 v37, v11

    move-object/from16 v10, v17

    move-object v11, v5

    move-object v5, v14

    invoke-direct/range {v0 .. v5}, Landroidx/fragment/app/h;-><init>(Landroidx/fragment/app/c;Landroidx/fragment/app/w0$d;Landroidx/fragment/app/w0$d;ZLs/a;)V

    invoke-static {v12, v11}, Lm0/p;->a(Landroid/view/View;Ljava/lang/Runnable;)Lm0/p;

    .line 99
    invoke-virtual {v13}, Ls/a;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 100
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    const/4 v0, 0x0

    move-object/from16 v1, p1

    .line 101
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 102
    invoke-virtual {v13, v1}, Ls/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/view/View;

    .line 103
    invoke-virtual {v10, v9, v12}, Landroidx/fragment/app/r0;->t(Ljava/lang/Object;Landroid/view/View;)V

    goto :goto_d

    :cond_17
    const/4 v0, 0x0

    move-object/from16 v12, v27

    .line 104
    :goto_d
    invoke-virtual {v14}, Ls/a;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 105
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_18

    .line 106
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 107
    invoke-virtual {v14, v0}, Ls/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_18

    .line 108
    iget-object v1, v7, Landroidx/fragment/app/w0;->a:Landroid/view/ViewGroup;

    .line 109
    new-instance v2, Landroidx/fragment/app/i;

    move-object/from16 v5, v37

    invoke-direct {v2, v7, v10, v0, v5}, Landroidx/fragment/app/i;-><init>(Landroidx/fragment/app/c;Landroidx/fragment/app/r0;Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-static {v1, v2}, Lm0/p;->a(Landroid/view/View;Ljava/lang/Runnable;)Lm0/p;

    const/16 v26, 0x1

    goto :goto_e

    :cond_18
    move-object/from16 v5, v37

    :goto_e
    move-object/from16 v0, v36

    .line 110
    invoke-virtual {v10, v9, v0, v6}, Landroidx/fragment/app/r0;->w(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v10

    move-object/from16 v17, v9

    move-object/from16 v22, v9

    move-object/from16 v23, v15

    .line 111
    invoke-virtual/range {v16 .. v23}, Landroidx/fragment/app/r0;->r(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 112
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v2, v34

    move-object/from16 v8, v35

    invoke-virtual {v8, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v11, v33

    .line 113
    invoke-virtual {v8, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v2

    move-object v3, v9

    move-object/from16 v27, v12

    move-object v12, v11

    goto :goto_f

    :cond_19
    move-object/from16 v32, v0

    move-object v6, v2

    move-object/from16 v30, v8

    move-object v2, v10

    move-object/from16 v31, v13

    move-object/from16 v29, v14

    move-object v8, v15

    move-object/from16 v0, v16

    move-object v15, v1

    move-object v10, v5

    move-object/from16 v5, p1

    :goto_f
    move-object/from16 v16, v0

    move-object/from16 p1, v5

    move-object v5, v10

    move-object v1, v15

    move-object/from16 v9, v28

    move-object/from16 v14, v29

    move-object/from16 v13, v31

    move-object/from16 v0, v32

    move-object v10, v2

    move-object v2, v6

    move-object v15, v8

    move-object/from16 v8, v30

    move/from16 v6, p2

    goto/16 :goto_8

    :cond_1a
    move-object/from16 v32, v0

    move-object v6, v2

    move-object v10, v5

    move-object/from16 v30, v8

    move-object/from16 v28, v9

    move-object/from16 v31, v13

    move-object/from16 v29, v14

    move-object v8, v15

    move-object/from16 v0, v16

    move-object/from16 v5, p1

    move-object v15, v1

    .line 114
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 115
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v9, 0x0

    const/4 v13, 0x0

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/fragment/app/c$d;

    .line 116
    invoke-virtual {v14}, Landroidx/fragment/app/c$c;->b()Z

    move-result v16

    if-eqz v16, :cond_1b

    move-object/from16 p1, v2

    .line 117
    iget-object v2, v14, Landroidx/fragment/app/c$c;->a:Landroidx/fragment/app/w0$d;

    move-object/from16 v33, v11

    .line 118
    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v8, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    invoke-virtual {v14}, Landroidx/fragment/app/c$c;->a()V

    move-object/from16 v16, v0

    move-object/from16 v24, v3

    move-object v2, v9

    move-object v3, v12

    move-object/from16 v0, v27

    move-object/from16 v9, v28

    move-object/from16 v12, v30

    goto/16 :goto_16

    :cond_1b
    move-object/from16 p1, v2

    move-object/from16 v33, v11

    .line 120
    iget-object v2, v14, Landroidx/fragment/app/c$d;->c:Ljava/lang/Object;

    .line 121
    invoke-virtual {v10, v2}, Landroidx/fragment/app/r0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 122
    iget-object v11, v14, Landroidx/fragment/app/c$c;->a:Landroidx/fragment/app/w0$d;

    if-eqz v3, :cond_1d

    if-eq v11, v4, :cond_1c

    if-ne v11, v12, :cond_1d

    :cond_1c
    const/4 v12, 0x1

    goto :goto_11

    :cond_1d
    const/4 v12, 0x0

    :goto_11
    if-nez v2, :cond_1f

    if-nez v12, :cond_1e

    .line 123
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v8, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    invoke-virtual {v14}, Landroidx/fragment/app/c$c;->a()V

    :cond_1e
    move-object/from16 v16, v0

    move-object/from16 v24, v3

    move-object v2, v9

    move-object/from16 v0, v27

    move-object/from16 v9, v28

    move-object/from16 v12, v30

    goto/16 :goto_15

    :cond_1f
    move-object/from16 v24, v3

    .line 125
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v34, v9

    .line 126
    iget-object v9, v11, Landroidx/fragment/app/w0$d;->c:Landroidx/fragment/app/Fragment;

    .line 127
    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 128
    invoke-virtual {v7, v3, v9}, Landroidx/fragment/app/c;->j(Ljava/util/ArrayList;Landroid/view/View;)V

    if-eqz v12, :cond_21

    if-ne v11, v4, :cond_20

    .line 129
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_12

    .line 130
    :cond_20
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 131
    :cond_21
    :goto_12
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_22

    .line 132
    invoke-virtual {v10, v2, v0}, Landroidx/fragment/app/r0;->a(Ljava/lang/Object;Landroid/view/View;)V

    move-object/from16 v16, v0

    move-object/from16 v12, v30

    goto :goto_13

    .line 133
    :cond_22
    invoke-virtual {v10, v2, v3}, Landroidx/fragment/app/r0;->b(Ljava/lang/Object;Ljava/util/ArrayList;)V

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v16, v10

    move-object/from16 v17, v2

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    .line 134
    invoke-virtual/range {v16 .. v23}, Landroidx/fragment/app/r0;->r(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 135
    iget-object v9, v11, Landroidx/fragment/app/w0$d;->a:Landroidx/fragment/app/w0$d$c;

    move-object/from16 v12, v30

    if-ne v9, v12, :cond_23

    move-object/from16 v9, v29

    .line 136
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object/from16 v16, v0

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 138
    iget-object v9, v11, Landroidx/fragment/app/w0$d;->c:Landroidx/fragment/app/Fragment;

    .line 139
    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 140
    iget-object v9, v11, Landroidx/fragment/app/w0$d;->c:Landroidx/fragment/app/Fragment;

    .line 141
    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 142
    invoke-virtual {v10, v2, v9, v0}, Landroidx/fragment/app/r0;->q(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 143
    iget-object v0, v7, Landroidx/fragment/app/w0;->a:Landroid/view/ViewGroup;

    .line 144
    new-instance v9, Landroidx/fragment/app/j;

    invoke-direct {v9, v7, v3}, Landroidx/fragment/app/j;-><init>(Landroidx/fragment/app/c;Ljava/util/ArrayList;)V

    invoke-static {v0, v9}, Lm0/p;->a(Landroid/view/View;Ljava/lang/Runnable;)Lm0/p;

    goto :goto_13

    :cond_23
    move-object/from16 v16, v0

    .line 145
    :goto_13
    iget-object v0, v11, Landroidx/fragment/app/w0$d;->a:Landroidx/fragment/app/w0$d$c;

    move-object/from16 v9, v28

    if-ne v0, v9, :cond_25

    .line 146
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz v26, :cond_24

    .line 147
    invoke-virtual {v10, v2, v5}, Landroidx/fragment/app/r0;->s(Ljava/lang/Object;Landroid/graphics/Rect;)V

    :cond_24
    move-object/from16 v0, v27

    goto :goto_14

    :cond_25
    move-object/from16 v0, v27

    .line 148
    invoke-virtual {v10, v2, v0}, Landroidx/fragment/app/r0;->t(Ljava/lang/Object;Landroid/view/View;)V

    .line 149
    :goto_14
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v8, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-boolean v3, v14, Landroidx/fragment/app/c$d;->d:Z

    if-eqz v3, :cond_26

    const/4 v3, 0x0

    .line 151
    invoke-virtual {v10, v13, v2, v3}, Landroidx/fragment/app/r0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v2, v34

    goto :goto_15

    :cond_26
    const/4 v3, 0x0

    move-object/from16 v11, v34

    .line 152
    invoke-virtual {v10, v11, v2, v3}, Landroidx/fragment/app/r0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_15
    move-object/from16 v3, v33

    :goto_16
    move-object/from16 v27, v0

    move-object/from16 v28, v9

    move-object/from16 v30, v12

    move-object/from16 v0, v16

    move-object/from16 v11, v33

    move-object v9, v2

    move-object v12, v3

    move-object/from16 v3, v24

    move-object/from16 v2, p1

    goto/16 :goto_10

    :cond_27
    move-object/from16 v33, v11

    move-object/from16 v12, v30

    move-object v11, v9

    .line 153
    invoke-virtual {v10, v13, v11, v3}, Landroidx/fragment/app/r0;->l(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 154
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/c$d;

    .line 155
    invoke-virtual {v5}, Landroidx/fragment/app/c$c;->b()Z

    move-result v9

    if-eqz v9, :cond_28

    goto :goto_17

    .line 156
    :cond_28
    iget-object v9, v5, Landroidx/fragment/app/c$d;->c:Ljava/lang/Object;

    .line 157
    iget-object v11, v5, Landroidx/fragment/app/c$c;->a:Landroidx/fragment/app/w0$d;

    move-object/from16 v13, v33

    if-eqz v3, :cond_2a

    if-eq v11, v4, :cond_29

    if-ne v11, v13, :cond_2a

    :cond_29
    const/4 v14, 0x1

    goto :goto_18

    :cond_2a
    const/4 v14, 0x0

    :goto_18
    if-nez v9, :cond_2b

    if-eqz v14, :cond_2e

    .line 158
    :cond_2b
    iget-object v9, v7, Landroidx/fragment/app/w0;->a:Landroid/view/ViewGroup;

    .line 159
    sget-object v14, Lm0/v;->a:Ljava/util/WeakHashMap;

    .line 160
    invoke-static {v9}, Lm0/v$g;->c(Landroid/view/View;)Z

    move-result v9

    if-nez v9, :cond_2d

    const/4 v9, 0x2

    .line 161
    invoke-static {v9}, Landroidx/fragment/app/a0;->N(I)Z

    move-result v9

    if-eqz v9, :cond_2c

    .line 162
    iget-object v9, v7, Landroidx/fragment/app/w0;->a:Landroid/view/ViewGroup;

    .line 163
    invoke-static {v9}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v11}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 164
    :cond_2c
    invoke-virtual {v5}, Landroidx/fragment/app/c$c;->a()V

    goto :goto_19

    .line 165
    :cond_2d
    iget-object v9, v5, Landroidx/fragment/app/c$c;->a:Landroidx/fragment/app/w0$d;

    .line 166
    iget-object v9, v9, Landroidx/fragment/app/w0$d;->c:Landroidx/fragment/app/Fragment;

    .line 167
    iget-object v11, v5, Landroidx/fragment/app/c$c;->b:Li0/b;

    .line 168
    new-instance v14, Landroidx/fragment/app/k;

    invoke-direct {v14, v7, v5}, Landroidx/fragment/app/k;-><init>(Landroidx/fragment/app/c;Landroidx/fragment/app/c$d;)V

    .line 169
    invoke-virtual {v10, v9, v0, v11, v14}, Landroidx/fragment/app/r0;->u(Landroidx/fragment/app/Fragment;Ljava/lang/Object;Li0/b;Ljava/lang/Runnable;)V

    :cond_2e
    :goto_19
    move-object/from16 v33, v13

    goto :goto_17

    .line 170
    :cond_2f
    iget-object v2, v7, Landroidx/fragment/app/w0;->a:Landroid/view/ViewGroup;

    .line 171
    sget-object v4, Lm0/v;->a:Ljava/util/WeakHashMap;

    .line 172
    invoke-static {v2}, Lm0/v$g;->c(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_30

    goto :goto_1a

    :cond_30
    const/4 v2, 0x4

    .line 173
    invoke-static {v1, v2}, Landroidx/fragment/app/p0;->p(Ljava/util/ArrayList;I)V

    .line 174
    invoke-virtual {v10, v15}, Landroidx/fragment/app/r0;->n(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v20

    .line 175
    iget-object v2, v7, Landroidx/fragment/app/w0;->a:Landroid/view/ViewGroup;

    .line 176
    invoke-virtual {v10, v2, v0}, Landroidx/fragment/app/r0;->c(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 177
    iget-object v0, v7, Landroidx/fragment/app/w0;->a:Landroid/view/ViewGroup;

    move-object/from16 v16, v10

    move-object/from16 v17, v0

    move-object/from16 v18, v6

    move-object/from16 v19, v15

    move-object/from16 v21, v32

    .line 178
    invoke-virtual/range {v16 .. v21}, Landroidx/fragment/app/r0;->v(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V

    const/4 v0, 0x0

    .line 179
    invoke-static {v1, v0}, Landroidx/fragment/app/p0;->p(Ljava/util/ArrayList;I)V

    .line 180
    invoke-virtual {v10, v3, v6, v15}, Landroidx/fragment/app/r0;->x(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 181
    :goto_1a
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v9

    .line 182
    iget-object v10, v7, Landroidx/fragment/app/w0;->a:Landroid/view/ViewGroup;

    .line 183
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v11

    .line 184
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 185
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    const/4 v0, 0x0

    :goto_1b
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Landroidx/fragment/app/c$b;

    .line 186
    invoke-virtual {v15}, Landroidx/fragment/app/c$c;->b()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 187
    invoke-virtual {v15}, Landroidx/fragment/app/c$c;->a()V

    goto :goto_1b

    .line 188
    :cond_31
    invoke-virtual {v15, v11}, Landroidx/fragment/app/c$b;->c(Landroid/content/Context;)Landroidx/fragment/app/s$a;

    move-result-object v1

    if-nez v1, :cond_32

    .line 189
    invoke-virtual {v15}, Landroidx/fragment/app/c$c;->a()V

    goto :goto_1b

    .line 190
    :cond_32
    iget-object v6, v1, Landroidx/fragment/app/s$a;->b:Landroid/animation/Animator;

    if-nez v6, :cond_33

    .line 191
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 192
    :cond_33
    iget-object v5, v15, Landroidx/fragment/app/c$c;->a:Landroidx/fragment/app/w0$d;

    .line 193
    iget-object v1, v5, Landroidx/fragment/app/w0$d;->c:Landroidx/fragment/app/Fragment;

    .line 194
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    const/4 v2, 0x2

    .line 195
    invoke-static {v2}, Landroidx/fragment/app/a0;->N(I)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 196
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 197
    :cond_34
    invoke-virtual {v15}, Landroidx/fragment/app/c$c;->a()V

    goto :goto_1b

    .line 198
    :cond_35
    iget-object v0, v5, Landroidx/fragment/app/w0$d;->a:Landroidx/fragment/app/w0$d$c;

    if-ne v0, v12, :cond_36

    const/4 v0, 0x1

    const/4 v4, 0x1

    goto :goto_1c

    :cond_36
    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_1c
    move-object/from16 v3, v29

    if-eqz v4, :cond_37

    .line 199
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 200
    :cond_37
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 201
    invoke-virtual {v10, v2}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 202
    new-instance v1, Landroidx/fragment/app/d;

    move-object v0, v1

    move-object/from16 v35, v8

    move-object v8, v1

    move-object/from16 v1, p0

    move-object/from16 p1, v2

    move-object v2, v10

    move-object/from16 v16, v3

    move-object/from16 v3, p1

    move-object/from16 v30, v12

    move-object v12, v6

    move-object v6, v15

    invoke-direct/range {v0 .. v6}, Landroidx/fragment/app/d;-><init>(Landroidx/fragment/app/c;Landroid/view/ViewGroup;Landroid/view/View;ZLandroidx/fragment/app/w0$d;Landroidx/fragment/app/c$b;)V

    invoke-virtual {v12, v8}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p1

    .line 203
    invoke-virtual {v12, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 204
    invoke-virtual {v12}, Landroid/animation/Animator;->start()V

    .line 205
    iget-object v0, v15, Landroidx/fragment/app/c$c;->b:Li0/b;

    .line 206
    new-instance v1, Landroidx/fragment/app/e;

    invoke-direct {v1, v7, v12}, Landroidx/fragment/app/e;-><init>(Landroidx/fragment/app/c;Landroid/animation/Animator;)V

    invoke-virtual {v0, v1}, Li0/b;->b(Li0/b$a;)V

    const/4 v0, 0x1

    move-object/from16 v29, v16

    move-object/from16 v12, v30

    move-object/from16 v8, v35

    goto/16 :goto_1b

    :cond_38
    move-object/from16 v16, v29

    .line 207
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/c$b;

    .line 208
    iget-object v3, v2, Landroidx/fragment/app/c$c;->a:Landroidx/fragment/app/w0$d;

    .line 209
    iget-object v4, v3, Landroidx/fragment/app/w0$d;->c:Landroidx/fragment/app/Fragment;

    if-eqz v9, :cond_3a

    const/4 v3, 0x2

    .line 210
    invoke-static {v3}, Landroidx/fragment/app/a0;->N(I)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 211
    invoke-static {v4}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 212
    :cond_39
    invoke-virtual {v2}, Landroidx/fragment/app/c$c;->a()V

    goto :goto_1d

    :cond_3a
    const/4 v5, 0x2

    if-eqz v0, :cond_3c

    .line 213
    invoke-static {v5}, Landroidx/fragment/app/a0;->N(I)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 214
    invoke-static {v4}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 215
    :cond_3b
    invoke-virtual {v2}, Landroidx/fragment/app/c$c;->a()V

    goto :goto_1d

    .line 216
    :cond_3c
    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 217
    invoke-virtual {v2, v11}, Landroidx/fragment/app/c$b;->c(Landroid/content/Context;)Landroidx/fragment/app/s$a;

    move-result-object v5

    .line 218
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget-object v5, v5, Landroidx/fragment/app/s$a;->a:Landroid/view/animation/Animation;

    .line 220
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    iget-object v3, v3, Landroidx/fragment/app/w0$d;->a:Landroidx/fragment/app/w0$d$c;

    .line 222
    sget-object v6, Landroidx/fragment/app/w0$d$c;->a:Landroidx/fragment/app/w0$d$c;

    if-eq v3, v6, :cond_3d

    .line 223
    invoke-virtual {v4, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 224
    invoke-virtual {v2}, Landroidx/fragment/app/c$c;->a()V

    goto :goto_1e

    .line 225
    :cond_3d
    invoke-virtual {v10, v4}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 226
    new-instance v3, Landroidx/fragment/app/s$b;

    invoke-direct {v3, v5, v10, v4}, Landroidx/fragment/app/s$b;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 227
    new-instance v5, Landroidx/fragment/app/f;

    invoke-direct {v5, v7, v10, v4, v2}, Landroidx/fragment/app/f;-><init>(Landroidx/fragment/app/c;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/c$b;)V

    invoke-virtual {v3, v5}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 228
    invoke-virtual {v4, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 229
    :goto_1e
    iget-object v3, v2, Landroidx/fragment/app/c$c;->b:Li0/b;

    .line 230
    new-instance v5, Landroidx/fragment/app/g;

    invoke-direct {v5, v7, v4, v10, v2}, Landroidx/fragment/app/g;-><init>(Landroidx/fragment/app/c;Landroid/view/View;Landroid/view/ViewGroup;Landroidx/fragment/app/c$b;)V

    invoke-virtual {v3, v5}, Li0/b;->b(Li0/b$a;)V

    goto :goto_1d

    .line 231
    :cond_3e
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/w0$d;

    .line 232
    iget-object v2, v1, Landroidx/fragment/app/w0$d;->c:Landroidx/fragment/app/Fragment;

    .line 233
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 234
    iget-object v1, v1, Landroidx/fragment/app/w0$d;->a:Landroidx/fragment/app/w0$d$c;

    .line 235
    invoke-virtual {v1, v2}, Landroidx/fragment/app/w0$d$c;->a(Landroid/view/View;)V

    goto :goto_1f

    .line 236
    :cond_3f
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public j(Ljava/util/ArrayList;Landroid/view/View;)V
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

    .line 1
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 2
    move-object v0, p2

    check-cast v0, Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->isTransitionGroup()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 5
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_3

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 8
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 9
    invoke-virtual {p0, p1, v2}, Landroidx/fragment/app/c;->j(Ljava/util/ArrayList;Landroid/view/View;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 11
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public k(Ljava/util/Map;Landroid/view/View;)V
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

    .line 1
    sget-object v0, Lm0/v;->a:Ljava/util/WeakHashMap;

    .line 2
    invoke-static {p2}, Lm0/v$i;->k(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 5
    check-cast p2, Landroid/view/ViewGroup;

    .line 6
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 7
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 8
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 9
    invoke-virtual {p0, p1, v2}, Landroidx/fragment/app/c;->k(Ljava/util/Map;Landroid/view/View;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public l(Ls/a;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ls/a;->entrySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ls/f$b;

    invoke-virtual {p1}, Ls/f$b;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 2
    :cond_0
    :goto_0
    move-object v0, p1

    check-cast v0, Ls/f$d;

    invoke-virtual {v0}, Ls/f$d;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v0}, Ls/f$d;->next()Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    sget-object v2, Lm0/v;->a:Ljava/util/WeakHashMap;

    .line 5
    invoke-static {v1}, Lm0/v$i;->k(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-interface {p2, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7
    invoke-virtual {v0}, Ls/f$d;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method
