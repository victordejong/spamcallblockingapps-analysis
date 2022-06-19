.class public Ll1/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll1/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ll1/g;

.field public b:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Ll1/g;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ll1/k$a;->a:Ll1/g;

    .line 3
    iput-object p2, p0, Ll1/k$a;->b:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Ll1/k$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 2
    iget-object v1, v0, Ll1/k$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 3
    sget-object v1, Ll1/k;->c:Ljava/util/ArrayList;

    iget-object v2, v0, Ll1/k$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    .line 4
    :cond_0
    invoke-static {}, Ll1/k;->b()Ls/a;

    move-result-object v1

    .line 5
    iget-object v3, v0, Ll1/k$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Ls/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iget-object v5, v0, Ll1/k$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5, v3}, Ls/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 9
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    :cond_2
    :goto_0
    move-object v5, v4

    .line 10
    :goto_1
    iget-object v6, v0, Ll1/k$a;->a:Ll1/g;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v3, v0, Ll1/k$a;->a:Ll1/g;

    new-instance v6, Ll1/k$a$a;

    invoke-direct {v6, v0, v1}, Ll1/k$a$a;-><init>(Ll1/k$a;Ls/a;)V

    invoke-virtual {v3, v6}, Ll1/g;->a(Ll1/g$d;)Ll1/g;

    .line 12
    iget-object v1, v0, Ll1/k$a;->a:Ll1/g;

    iget-object v3, v0, Ll1/k$a;->b:Landroid/view/ViewGroup;

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6}, Ll1/g;->h(Landroid/view/ViewGroup;Z)V

    if-eqz v5, :cond_3

    .line 13
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ll1/g;

    .line 14
    iget-object v5, v0, Ll1/k$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Ll1/g;->x(Landroid/view/View;)V

    goto :goto_2

    .line 15
    :cond_3
    iget-object v1, v0, Ll1/k$a;->a:Ll1/g;

    iget-object v8, v0, Ll1/k$a;->b:Landroid/view/ViewGroup;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Ll1/g;->k:Ljava/util/ArrayList;

    .line 17
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Ll1/g;->l:Ljava/util/ArrayList;

    .line 18
    iget-object v3, v1, Ll1/g;->g:Lv1/g;

    iget-object v5, v1, Ll1/g;->h:Lv1/g;

    .line 19
    new-instance v7, Ls/a;

    iget-object v9, v3, Lv1/g;->a:Ljava/lang/Object;

    check-cast v9, Ls/a;

    invoke-direct {v7, v9}, Ls/a;-><init>(Ls/g;)V

    .line 20
    new-instance v9, Ls/a;

    iget-object v10, v5, Lv1/g;->a:Ljava/lang/Object;

    check-cast v10, Ls/a;

    invoke-direct {v9, v10}, Ls/a;-><init>(Ls/g;)V

    const/4 v10, 0x0

    .line 21
    :goto_3
    iget-object v11, v1, Ll1/g;->j:[I

    array-length v12, v11

    if-ge v10, v12, :cond_10

    .line 22
    aget v11, v11, v10

    if-eq v11, v2, :cond_d

    const/4 v12, 0x2

    if-eq v11, v12, :cond_b

    const/4 v12, 0x3

    if-eq v11, v12, :cond_9

    const/4 v12, 0x4

    if-eq v11, v12, :cond_5

    :cond_4
    move-object/from16 v17, v3

    goto :goto_6

    .line 23
    :cond_5
    iget-object v11, v3, Lv1/g;->c:Ljava/lang/Object;

    check-cast v11, Ls/d;

    iget-object v12, v5, Lv1/g;->c:Ljava/lang/Object;

    check-cast v12, Ls/d;

    .line 24
    invoke-virtual {v11}, Ls/d;->h()I

    move-result v13

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v13, :cond_4

    .line 25
    invoke-virtual {v11, v14}, Ls/d;->i(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    if-eqz v15, :cond_7

    .line 26
    invoke-virtual {v1, v15}, Ll1/g;->s(Landroid/view/View;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 27
    iget-boolean v6, v11, Ls/d;->a:Z

    if-eqz v6, :cond_6

    .line 28
    invoke-virtual {v11}, Ls/d;->d()V

    .line 29
    :cond_6
    iget-object v6, v11, Ls/d;->b:[J

    move-object/from16 v17, v3

    aget-wide v2, v6, v14

    .line 30
    invoke-virtual {v12, v2, v3}, Ls/d;->e(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_8

    .line 31
    invoke-virtual {v1, v2}, Ll1/g;->s(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 32
    invoke-virtual {v7, v15, v4}, Ls/g;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 33
    check-cast v3, Ll1/n;

    .line 34
    invoke-virtual {v9, v2, v4}, Ls/g;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 35
    check-cast v6, Ll1/n;

    if-eqz v3, :cond_8

    if-eqz v6, :cond_8

    .line 36
    iget-object v4, v1, Ll1/g;->k:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object v3, v1, Ll1/g;->l:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    invoke-virtual {v7, v15}, Ls/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-virtual {v9, v2}, Ls/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_7
    move-object/from16 v17, v3

    :cond_8
    :goto_5
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v3, v17

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    goto :goto_4

    :goto_6
    move-object/from16 v2, v17

    goto/16 :goto_a

    :cond_9
    move-object v2, v3

    .line 40
    iget-object v3, v2, Lv1/g;->b:Ljava/lang/Object;

    check-cast v3, Landroid/util/SparseArray;

    iget-object v4, v5, Lv1/g;->b:Ljava/lang/Object;

    check-cast v4, Landroid/util/SparseArray;

    .line 41
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v6

    const/4 v11, 0x0

    :goto_7
    if-ge v11, v6, :cond_f

    .line 42
    invoke-virtual {v3, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    if-eqz v12, :cond_a

    .line 43
    invoke-virtual {v1, v12}, Ll1/g;->s(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 44
    invoke-virtual {v3, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    invoke-virtual {v4, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    if-eqz v13, :cond_a

    .line 45
    invoke-virtual {v1, v13}, Ll1/g;->s(Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_a

    const/4 v14, 0x0

    .line 46
    invoke-virtual {v7, v12, v14}, Ls/g;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 47
    check-cast v15, Ll1/n;

    .line 48
    invoke-virtual {v9, v13, v14}, Ls/g;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 49
    move-object/from16 v14, v17

    check-cast v14, Ll1/n;

    if-eqz v15, :cond_a

    if-eqz v14, :cond_a

    .line 50
    iget-object v0, v1, Ll1/g;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v0, v1, Ll1/g;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-virtual {v7, v12}, Ls/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-virtual {v9, v13}, Ls/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    goto :goto_7

    :cond_b
    move-object v2, v3

    .line 54
    iget-object v0, v2, Lv1/g;->d:Ljava/lang/Object;

    check-cast v0, Ls/a;

    iget-object v3, v5, Lv1/g;->d:Ljava/lang/Object;

    check-cast v3, Ls/a;

    .line 55
    iget v4, v0, Ls/g;->c:I

    const/4 v6, 0x0

    :goto_8
    if-ge v6, v4, :cond_f

    .line 56
    invoke-virtual {v0, v6}, Ls/g;->k(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    if-eqz v11, :cond_c

    .line 57
    invoke-virtual {v1, v11}, Ll1/g;->s(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 58
    invoke-virtual {v0, v6}, Ls/g;->h(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v3, v12}, Ls/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    if-eqz v12, :cond_c

    .line 59
    invoke-virtual {v1, v12}, Ll1/g;->s(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_c

    const/4 v13, 0x0

    .line 60
    invoke-virtual {v7, v11, v13}, Ls/g;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 61
    check-cast v14, Ll1/n;

    .line 62
    invoke-virtual {v9, v12, v13}, Ls/g;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 63
    check-cast v15, Ll1/n;

    if-eqz v14, :cond_c

    if-eqz v15, :cond_c

    .line 64
    iget-object v13, v1, Ll1/g;->k:Ljava/util/ArrayList;

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v13, v1, Ll1/g;->l:Ljava/util/ArrayList;

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-virtual {v7, v11}, Ls/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-virtual {v9, v12}, Ls/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_d
    move-object v2, v3

    .line 68
    iget v0, v7, Ls/g;->c:I

    :cond_e
    :goto_9
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_f

    .line 69
    invoke-virtual {v7, v0}, Ls/g;->h(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_e

    .line 70
    invoke-virtual {v1, v3}, Ll1/g;->s(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 71
    invoke-virtual {v9, v3}, Ls/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ll1/n;

    if-eqz v3, :cond_e

    .line 72
    iget-object v4, v3, Ll1/n;->b:Landroid/view/View;

    invoke-virtual {v1, v4}, Ll1/g;->s(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 73
    invoke-virtual {v7, v0}, Ls/g;->i(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ll1/n;

    .line 74
    iget-object v6, v1, Ll1/g;->k:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v4, v1, Ll1/g;->l:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_f
    :goto_a
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move-object v3, v2

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    goto/16 :goto_3

    :cond_10
    const/4 v0, 0x0

    .line 76
    :goto_b
    iget v2, v7, Ls/g;->c:I

    if-ge v0, v2, :cond_12

    .line 77
    invoke-virtual {v7, v0}, Ls/g;->k(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll1/n;

    .line 78
    iget-object v3, v2, Ll1/n;->b:Landroid/view/View;

    invoke-virtual {v1, v3}, Ll1/g;->s(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 79
    iget-object v3, v1, Ll1/g;->k:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v2, v1, Ll1/g;->l:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_12
    const/4 v0, 0x0

    .line 81
    :goto_c
    iget v2, v9, Ls/g;->c:I

    if-ge v0, v2, :cond_14

    .line 82
    invoke-virtual {v9, v0}, Ls/g;->k(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll1/n;

    .line 83
    iget-object v3, v2, Ll1/n;->b:Landroid/view/View;

    invoke-virtual {v1, v3}, Ll1/g;->s(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 84
    iget-object v3, v1, Ll1/g;->l:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v2, v1, Ll1/g;->k:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 86
    :cond_14
    invoke-static {}, Ll1/g;->o()Ls/a;

    move-result-object v0

    .line 87
    iget v2, v0, Ls/g;->c:I

    .line 88
    sget-object v3, Ll1/q;->a:Ly/d;

    .line 89
    invoke-virtual {v8}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    move-result-object v3

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    :goto_d
    if-ltz v2, :cond_1c

    .line 90
    invoke-virtual {v0, v2}, Ls/g;->h(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    const/4 v5, 0x0

    if-eqz v4, :cond_1b

    .line 91
    invoke-virtual {v0, v4, v5}, Ls/g;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 92
    check-cast v6, Ll1/g$b;

    if-eqz v6, :cond_1b

    .line 93
    iget-object v7, v6, Ll1/g$b;->a:Landroid/view/View;

    if-eqz v7, :cond_1b

    iget-object v7, v6, Ll1/g$b;->d:Ll1/z;

    .line 94
    instance-of v9, v7, Ll1/y;

    if-eqz v9, :cond_15

    check-cast v7, Ll1/y;

    iget-object v7, v7, Ll1/y;->a:Landroid/view/WindowId;

    invoke-virtual {v7, v3}, Landroid/view/WindowId;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    const/4 v7, 0x1

    goto :goto_e

    :cond_15
    const/4 v7, 0x0

    :goto_e
    if-eqz v7, :cond_1b

    .line 95
    iget-object v7, v6, Ll1/g$b;->c:Ll1/n;

    .line 96
    iget-object v9, v6, Ll1/g$b;->a:Landroid/view/View;

    const/4 v10, 0x1

    .line 97
    invoke-virtual {v1, v9, v10}, Ll1/g;->q(Landroid/view/View;Z)Ll1/n;

    move-result-object v11

    .line 98
    invoke-virtual {v1, v9, v10}, Ll1/g;->n(Landroid/view/View;Z)Ll1/n;

    move-result-object v12

    if-nez v11, :cond_16

    if-nez v12, :cond_16

    .line 99
    iget-object v10, v1, Ll1/g;->h:Lv1/g;

    iget-object v10, v10, Lv1/g;->a:Ljava/lang/Object;

    check-cast v10, Ls/a;

    invoke-virtual {v10, v9}, Ls/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v12, v9

    check-cast v12, Ll1/n;

    :cond_16
    if-nez v11, :cond_17

    if-eqz v12, :cond_18

    .line 100
    :cond_17
    iget-object v6, v6, Ll1/g$b;->e:Ll1/g;

    .line 101
    invoke-virtual {v6, v7, v12}, Ll1/g;->r(Ll1/n;Ll1/n;)Z

    move-result v6

    if-eqz v6, :cond_18

    const/4 v6, 0x1

    goto :goto_f

    :cond_18
    const/4 v6, 0x0

    :goto_f
    if-eqz v6, :cond_1b

    .line 102
    invoke-virtual {v4}, Landroid/animation/Animator;->isRunning()Z

    move-result v6

    if-nez v6, :cond_1a

    invoke-virtual {v4}, Landroid/animation/Animator;->isStarted()Z

    move-result v6

    if-eqz v6, :cond_19

    goto :goto_10

    .line 103
    :cond_19
    invoke-virtual {v0, v4}, Ls/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    .line 104
    :cond_1a
    :goto_10
    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    :cond_1b
    :goto_11
    add-int/lit8 v2, v2, -0x1

    goto :goto_d

    .line 105
    :cond_1c
    iget-object v9, v1, Ll1/g;->g:Lv1/g;

    iget-object v10, v1, Ll1/g;->h:Lv1/g;

    iget-object v11, v1, Ll1/g;->k:Ljava/util/ArrayList;

    iget-object v12, v1, Ll1/g;->l:Ljava/util/ArrayList;

    move-object v7, v1

    invoke-virtual/range {v7 .. v12}, Ll1/g;->l(Landroid/view/ViewGroup;Lv1/g;Lv1/g;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 106
    invoke-virtual {v1}, Ll1/g;->y()V

    const/4 v0, 0x1

    return v0
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Ll1/k$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 2
    iget-object p1, p0, Ll1/k$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 3
    sget-object p1, Ll1/k;->c:Ljava/util/ArrayList;

    iget-object v0, p0, Ll1/k$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    invoke-static {}, Ll1/k;->b()Ls/a;

    move-result-object p1

    iget-object v0, p0, Ll1/k$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Ls/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 6
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll1/g;

    .line 7
    iget-object v1, p0, Ll1/k$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Ll1/g;->x(Landroid/view/View;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Ll1/k$a;->a:Ll1/g;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ll1/g;->i(Z)V

    return-void
.end method
