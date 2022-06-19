.class Landroidx/fragment/app/p;
.super Ljava/lang/Object;
.source "FragmentTransition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/p$a;
    }
.end annotation


# static fields
.field private static final a:[I

.field private static final b:Landroidx/fragment/app/r;

.field private static final c:Landroidx/fragment/app/r;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/fragment/app/p;->a:[I

    .line 59
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Landroidx/fragment/app/q;

    invoke-direct {v0}, Landroidx/fragment/app/q;-><init>()V

    :goto_0
    sput-object v0, Landroidx/fragment/app/p;->b:Landroidx/fragment/app/r;

    .line 63
    invoke-static {}, Landroidx/fragment/app/p;->a()Landroidx/fragment/app/r;

    move-result-object v0

    sput-object v0, Landroidx/fragment/app/p;->c:Landroidx/fragment/app/r;

    return-void

    .line 59
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 45
    nop

    :array_0
    .array-data 4
        0x0
        0x3
        0x0
        0x1
        0x5
        0x4
        0x7
        0x6
        0x9
        0x8
        0xa
    .end array-data
.end method

.method static a(Landroidx/b/a;Landroidx/fragment/app/p$a;Ljava/lang/Object;Z)Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/b/a",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroidx/fragment/app/p$a;",
            "Ljava/lang/Object;",
            "Z)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 913
    iget-object v0, p1, Landroidx/fragment/app/p$a;->c:Landroidx/fragment/app/a;

    .line 914
    if-eqz p2, :cond_1

    if-eqz p0, :cond_1

    iget-object v1, v0, Landroidx/fragment/app/a;->r:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroidx/fragment/app/a;->r:Ljava/util/ArrayList;

    .line 916
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 917
    if-eqz p3, :cond_0

    iget-object v0, v0, Landroidx/fragment/app/a;->r:Ljava/util/ArrayList;

    .line 918
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 920
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 922
    :goto_1
    return-object v0

    .line 918
    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/a;->s:Ljava/util/ArrayList;

    .line 919
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 922
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static a(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Landroidx/b/a;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;II)",
            "Landroidx/b/a",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    new-instance v7, Landroidx/b/a;

    invoke-direct {v7}, Landroidx/b/a;-><init>()V

    .line 164
    add-int/lit8 v0, p4, -0x1

    move v6, v0

    :goto_0
    if-lt v6, p3, :cond_4

    .line 165
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/a;

    .line 166
    invoke-virtual {v0, p0}, Landroidx/fragment/app/a;->b(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 164
    :cond_0
    add-int/lit8 v0, v6, -0x1

    move v6, v0

    goto :goto_0

    .line 169
    :cond_1
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 170
    iget-object v2, v0, Landroidx/fragment/app/a;->r:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 171
    iget-object v2, v0, Landroidx/fragment/app/a;->r:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 174
    if-eqz v1, :cond_2

    .line 175
    iget-object v1, v0, Landroidx/fragment/app/a;->r:Ljava/util/ArrayList;

    .line 176
    iget-object v0, v0, Landroidx/fragment/app/a;->s:Ljava/util/ArrayList;

    move-object v3, v1

    move-object v4, v0

    .line 181
    :goto_1
    const/4 v0, 0x0

    move v5, v0

    :goto_2
    if-ge v5, v8, :cond_0

    .line 182
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 183
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 184
    invoke-virtual {v7, v1}, Landroidx/b/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 185
    if-eqz v2, :cond_3

    .line 186
    invoke-virtual {v7, v0, v2}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    :goto_3
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_2

    .line 178
    :cond_2
    iget-object v1, v0, Landroidx/fragment/app/a;->r:Ljava/util/ArrayList;

    .line 179
    iget-object v0, v0, Landroidx/fragment/app/a;->s:Ljava/util/ArrayList;

    move-object v3, v0

    move-object v4, v1

    goto :goto_1

    .line 188
    :cond_3
    invoke-virtual {v7, v0, v1}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 193
    :cond_4
    return-object v7
.end method

.method static a(Landroidx/fragment/app/r;Landroidx/b/a;Ljava/lang/Object;Landroidx/fragment/app/p$a;)Landroidx/b/a;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/r;",
            "Landroidx/b/a",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Landroidx/fragment/app/p$a;",
            ")",
            "Landroidx/b/a",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 840
    iget-object v0, p3, Landroidx/fragment/app/p$a;->a:Landroidx/fragment/app/Fragment;

    .line 841
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->G()Landroid/view/View;

    move-result-object v1

    .line 842
    invoke-virtual {p1}, Landroidx/b/a;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p2, :cond_0

    if-nez v1, :cond_1

    .line 843
    :cond_0
    invoke-virtual {p1}, Landroidx/b/a;->clear()V

    .line 844
    const/4 v0, 0x0

    .line 884
    :goto_0
    return-object v0

    .line 846
    :cond_1
    new-instance v2, Landroidx/b/a;

    invoke-direct {v2}, Landroidx/b/a;-><init>()V

    .line 847
    invoke-virtual {p0, v2, v1}, Landroidx/fragment/app/r;->a(Ljava/util/Map;Landroid/view/View;)V

    .line 851
    iget-object v3, p3, Landroidx/fragment/app/p$a;->c:Landroidx/fragment/app/a;

    .line 852
    iget-boolean v1, p3, Landroidx/fragment/app/p$a;->b:Z

    if-eqz v1, :cond_4

    .line 853
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->am()Landroidx/core/app/l;

    move-result-object v1

    .line 854
    iget-object v0, v3, Landroidx/fragment/app/a;->r:Ljava/util/ArrayList;

    move-object v4, v0

    .line 860
    :goto_1
    if-eqz v4, :cond_2

    .line 861
    invoke-virtual {v2, v4}, Landroidx/b/a;->a(Ljava/util/Collection;)Z

    .line 862
    invoke-virtual {p1}, Landroidx/b/a;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/b/a;->a(Ljava/util/Collection;)Z

    .line 864
    :cond_2
    if-eqz v1, :cond_6

    .line 865
    invoke-virtual {v1, v4, v2}, Landroidx/core/app/l;->a(Ljava/util/List;Ljava/util/Map;)V

    .line 866
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_2
    if-ltz v3, :cond_7

    .line 867
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 868
    invoke-virtual {v2, v0}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 869
    if-nez v1, :cond_5

    .line 870
    invoke-static {p1, v0}, Landroidx/fragment/app/p;->a(Landroidx/b/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 871
    if-eqz v0, :cond_3

    .line 872
    invoke-virtual {p1, v0}, Landroidx/b/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 866
    :cond_3
    :goto_3
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_2

    .line 856
    :cond_4
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->al()Landroidx/core/app/l;

    move-result-object v1

    .line 857
    iget-object v0, v3, Landroidx/fragment/app/a;->s:Ljava/util/ArrayList;

    move-object v4, v0

    goto :goto_1

    .line 874
    :cond_5
    invoke-static {v1}, Landroidx/core/h/u;->o(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 875
    invoke-static {p1, v0}, Landroidx/fragment/app/p;->a(Landroidx/b/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 876
    if-eqz v0, :cond_3

    .line 877
    invoke-static {v1}, Landroidx/core/h/u;->o(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 882
    :cond_6
    invoke-static {p1, v2}, Landroidx/fragment/app/p;->a(Landroidx/b/a;Landroidx/b/a;)V

    :cond_7
    move-object v0, v2

    .line 884
    goto :goto_0
.end method

.method private static a(Landroidx/fragment/app/p$a;Landroid/util/SparseArray;I)Landroidx/fragment/app/p$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/p$a;",
            "Landroid/util/SparseArray",
            "<",
            "Landroidx/fragment/app/p$a;",
            ">;I)",
            "Landroidx/fragment/app/p$a;"
        }
    .end annotation

    .prologue
    .line 1222
    if-nez p0, :cond_0

    .line 1223
    new-instance p0, Landroidx/fragment/app/p$a;

    invoke-direct {p0}, Landroidx/fragment/app/p$a;-><init>()V

    .line 1224
    invoke-virtual {p1, p2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1226
    :cond_0
    return-object p0
.end method

.method private static a()Landroidx/fragment/app/r;
    .locals 2

    .prologue
    .line 68
    :try_start_0
    const-string/jumbo v0, "androidx.j.e"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 70
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/r;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    return-object v0

    .line 71
    :catch_0
    move-exception v0

    .line 74
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/r;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 425
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 426
    if-eqz p0, :cond_2

    .line 427
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->P()Ljava/lang/Object;

    move-result-object v2

    .line 428
    if-eqz v2, :cond_0

    .line 429
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->O()Ljava/lang/Object;

    move-result-object v2

    .line 432
    if-eqz v2, :cond_1

    .line 433
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->S()Ljava/lang/Object;

    move-result-object v2

    .line 436
    if-eqz v2, :cond_2

    .line 437
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    :cond_2
    if-eqz p1, :cond_5

    .line 441
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->N()Ljava/lang/Object;

    move-result-object v2

    .line 442
    if-eqz v2, :cond_3

    .line 443
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    :cond_3
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->Q()Ljava/lang/Object;

    move-result-object v2

    .line 446
    if-eqz v2, :cond_4

    .line 447
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    :cond_4
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->R()Ljava/lang/Object;

    move-result-object v2

    .line 450
    if-eqz v2, :cond_5

    .line 451
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 467
    :cond_6
    :goto_0
    return-object v0

    .line 458
    :cond_7
    sget-object v2, Landroidx/fragment/app/p;->b:Landroidx/fragment/app/r;

    if-eqz v2, :cond_8

    sget-object v2, Landroidx/fragment/app/p;->b:Landroidx/fragment/app/r;

    invoke-static {v2, v1}, Landroidx/fragment/app/p;->a(Landroidx/fragment/app/r;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 459
    sget-object v0, Landroidx/fragment/app/p;->b:Landroidx/fragment/app/r;

    goto :goto_0

    .line 461
    :cond_8
    sget-object v2, Landroidx/fragment/app/p;->c:Landroidx/fragment/app/r;

    if-eqz v2, :cond_9

    sget-object v2, Landroidx/fragment/app/p;->c:Landroidx/fragment/app/r;

    invoke-static {v2, v1}, Landroidx/fragment/app/p;->a(Landroidx/fragment/app/r;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 462
    sget-object v0, Landroidx/fragment/app/p;->c:Landroidx/fragment/app/r;

    goto :goto_0

    .line 464
    :cond_9
    sget-object v1, Landroidx/fragment/app/p;->b:Landroidx/fragment/app/r;

    if-nez v1, :cond_a

    sget-object v1, Landroidx/fragment/app/p;->c:Landroidx/fragment/app/r;

    if-eqz v1, :cond_6

    .line 465
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid Transition types"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Landroidx/fragment/app/r;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/b/a;Landroidx/fragment/app/p$a;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/r;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Landroidx/b/a",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/fragment/app/p$a;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 562
    move-object/from16 v0, p4

    iget-object v10, v0, Landroidx/fragment/app/p$a;->a:Landroidx/fragment/app/Fragment;

    .line 563
    move-object/from16 v0, p4

    iget-object v12, v0, Landroidx/fragment/app/p$a;->d:Landroidx/fragment/app/Fragment;

    .line 564
    if-eqz v10, :cond_0

    .line 565
    invoke-virtual {v10}, Landroidx/fragment/app/Fragment;->H()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 567
    :cond_0
    if-eqz v10, :cond_1

    if-nez v12, :cond_2

    .line 568
    :cond_1
    const/4 v3, 0x0

    .line 634
    :goto_0
    return-object v3

    .line 571
    :cond_2
    move-object/from16 v0, p4

    iget-boolean v13, v0, Landroidx/fragment/app/p$a;->b:Z

    .line 572
    invoke-virtual/range {p3 .. p3}, Landroidx/b/a;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    .line 575
    :goto_1
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-static {p0, v0, v2, v1}, Landroidx/fragment/app/p;->b(Landroidx/fragment/app/r;Landroidx/b/a;Ljava/lang/Object;Landroidx/fragment/app/p$a;)Landroidx/b/a;

    move-result-object v5

    .line 578
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-static {p0, v0, v2, v1}, Landroidx/fragment/app/p;->a(Landroidx/fragment/app/r;Landroidx/b/a;Ljava/lang/Object;Landroidx/fragment/app/p$a;)Landroidx/b/a;

    move-result-object v8

    .line 581
    invoke-virtual/range {p3 .. p3}, Landroidx/b/a;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 582
    const/4 v3, 0x0

    .line 583
    if-eqz v5, :cond_3

    .line 584
    invoke-virtual {v5}, Landroidx/b/a;->clear()V

    .line 586
    :cond_3
    if-eqz v8, :cond_4

    .line 587
    invoke-virtual {v8}, Landroidx/b/a;->clear()V

    .line 596
    :cond_4
    :goto_2
    if-nez p7, :cond_7

    if-nez p8, :cond_7

    if-nez v3, :cond_7

    .line 598
    const/4 v3, 0x0

    goto :goto_0

    .line 573
    :cond_5
    invoke-static {p0, v10, v12, v13}, Landroidx/fragment/app/p;->a(Landroidx/fragment/app/r;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 591
    :cond_6
    invoke-virtual/range {p3 .. p3}, Landroidx/b/a;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 590
    move-object/from16 v0, p5

    invoke-static {v0, v5, v3}, Landroidx/fragment/app/p;->a(Ljava/util/ArrayList;Landroidx/b/a;Ljava/util/Collection;)V

    .line 593
    invoke-virtual/range {p3 .. p3}, Landroidx/b/a;->values()Ljava/util/Collection;

    move-result-object v3

    .line 592
    move-object/from16 v0, p6

    invoke-static {v0, v8, v3}, Landroidx/fragment/app/p;->a(Ljava/util/ArrayList;Landroidx/b/a;Ljava/util/Collection;)V

    move-object v3, v2

    goto :goto_2

    .line 601
    :cond_7
    const/4 v2, 0x1

    invoke-static {v10, v12, v13, v5, v2}, Landroidx/fragment/app/p;->a(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/b/a;Z)V

    .line 605
    if-eqz v3, :cond_9

    .line 606
    move-object/from16 v0, p6

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 607
    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-virtual {p0, v3, v0, v1}, Landroidx/fragment/app/r;->a(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 609
    move-object/from16 v0, p4

    iget-boolean v6, v0, Landroidx/fragment/app/p$a;->e:Z

    .line 610
    move-object/from16 v0, p4

    iget-object v7, v0, Landroidx/fragment/app/p$a;->f:Landroidx/fragment/app/a;

    move-object v2, p0

    move-object/from16 v4, p8

    .line 611
    invoke-static/range {v2 .. v7}, Landroidx/fragment/app/p;->a(Landroidx/fragment/app/r;Ljava/lang/Object;Ljava/lang/Object;Landroidx/b/a;ZLandroidx/fragment/app/a;)V

    .line 613
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 614
    move-object/from16 v0, p4

    move-object/from16 v1, p7

    invoke-static {v8, v0, v1, v13}, Landroidx/fragment/app/p;->a(Landroidx/b/a;Landroidx/fragment/app/p$a;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v9

    .line 616
    if-eqz v9, :cond_8

    .line 617
    move-object/from16 v0, p7

    invoke-virtual {p0, v0, v11}, Landroidx/fragment/app/r;->a(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 624
    :cond_8
    :goto_3
    new-instance v4, Landroidx/fragment/app/p$3;

    move-object v5, v10

    move-object v6, v12

    move v7, v13

    move-object v10, p0

    invoke-direct/range {v4 .. v11}, Landroidx/fragment/app/p$3;-><init>(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/b/a;Landroid/view/View;Landroidx/fragment/app/r;Landroid/graphics/Rect;)V

    invoke-static {p1, v4}, Landroidx/core/h/r;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/h/r;

    goto/16 :goto_0

    .line 620
    :cond_9
    const/4 v11, 0x0

    .line 621
    const/4 v9, 0x0

    goto :goto_3
.end method

.method private static a(Landroidx/fragment/app/r;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 493
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 494
    :cond_0
    const/4 v0, 0x0

    .line 499
    :goto_0
    return-object v0

    .line 496
    :cond_1
    if-eqz p3, :cond_2

    .line 497
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->S()Ljava/lang/Object;

    move-result-object v0

    .line 496
    :goto_1
    invoke-virtual {p0, v0}, Landroidx/fragment/app/r;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 499
    invoke-virtual {p0, v0}, Landroidx/fragment/app/r;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 498
    :cond_2
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->R()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method private static a(Landroidx/fragment/app/r;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 507
    if-nez p1, :cond_0

    .line 508
    const/4 v0, 0x0

    .line 510
    :goto_0
    return-object v0

    :cond_0
    if-eqz p2, :cond_1

    .line 511
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->Q()Ljava/lang/Object;

    move-result-object v0

    .line 510
    :goto_1
    invoke-virtual {p0, v0}, Landroidx/fragment/app/r;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 512
    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->N()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method private static a(Landroidx/fragment/app/r;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1042
    const/4 v0, 0x1

    .line 1043
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p4, :cond_0

    .line 1044
    if-eqz p5, :cond_1

    invoke-virtual {p4}, Landroidx/fragment/app/Fragment;->U()Z

    move-result v0

    .line 1053
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 1055
    invoke-virtual {p0, p2, p1, p3}, Landroidx/fragment/app/r;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1063
    :goto_1
    return-object v0

    .line 1045
    :cond_1
    invoke-virtual {p4}, Landroidx/fragment/app/Fragment;->T()Z

    move-result v0

    goto :goto_0

    .line 1060
    :cond_2
    invoke-virtual {p0, p2, p1, p3}, Landroidx/fragment/app/r;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method private static a(Landroidx/b/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/b/a",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 891
    invoke-virtual {p0}, Landroidx/b/a;->size()I

    move-result v1

    .line 892
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 893
    invoke-virtual {p0, v0}, Landroidx/b/a;->c(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 894
    invoke-virtual {p0, v0}, Landroidx/b/a;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 897
    :goto_1
    return-object v0

    .line 892
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 897
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static a(Landroidx/fragment/app/r;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/r;",
            "Ljava/lang/Object;",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1003
    const/4 v0, 0x0

    .line 1004
    if-eqz p1, :cond_2

    .line 1005
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1006
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->G()Landroid/view/View;

    move-result-object v1

    .line 1007
    if-eqz v1, :cond_0

    .line 1008
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/r;->a(Ljava/util/ArrayList;Landroid/view/View;)V

    .line 1010
    :cond_0
    if-eqz p3, :cond_1

    .line 1011
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1013
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1014
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1015
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/r;->a(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 1018
    :cond_2
    return-object v0
.end method

.method private static a(Landroidx/b/a;Landroidx/b/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/b/a",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/b/a",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 958
    invoke-virtual {p0}, Landroidx/b/a;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 959
    invoke-virtual {p0, v1}, Landroidx/b/a;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 960
    invoke-virtual {p1, v0}, Landroidx/b/a;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 961
    invoke-virtual {p0, v1}, Landroidx/b/a;->d(I)Ljava/lang/Object;

    .line 958
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 964
    :cond_1
    return-void
.end method

.method static a(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/b/a;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Landroidx/fragment/app/Fragment;",
            "Z",
            "Landroidx/b/a",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 980
    if-eqz p2, :cond_0

    .line 981
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->al()Landroidx/core/app/l;

    move-result-object v0

    move-object v2, v0

    .line 983
    :goto_0
    if-eqz v2, :cond_3

    .line 984
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 985
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 986
    if-nez p3, :cond_1

    move v0, v1

    .line 987
    :goto_1
    if-ge v1, v0, :cond_2

    .line 988
    invoke-virtual {p3, v1}, Landroidx/b/a;->b(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 989
    invoke-virtual {p3, v1}, Landroidx/b/a;->c(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 987
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 982
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->al()Landroidx/core/app/l;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    .line 986
    :cond_1
    invoke-virtual {p3}, Landroidx/b/a;->size()I

    move-result v0

    goto :goto_1

    .line 991
    :cond_2
    if-eqz p4, :cond_4

    .line 992
    invoke-virtual {v2, v4, v3, v6}, Landroidx/core/app/l;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 997
    :cond_3
    :goto_2
    return-void

    .line 994
    :cond_4
    invoke-virtual {v2, v4, v3, v6}, Landroidx/core/app/l;->b(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_2
.end method

.method public static a(Landroidx/fragment/app/a;Landroid/util/SparseArray;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/a;",
            "Landroid/util/SparseArray",
            "<",
            "Landroidx/fragment/app/p$a;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1077
    iget-object v0, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    .line 1078
    :goto_0
    if-ge v1, v3, :cond_0

    .line 1079
    iget-object v0, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/o$a;

    .line 1080
    invoke-static {p0, v0, p1, v2, p2}, Landroidx/fragment/app/p;->a(Landroidx/fragment/app/a;Landroidx/fragment/app/o$a;Landroid/util/SparseArray;ZZ)V

    .line 1078
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1082
    :cond_0
    return-void
.end method

.method private static a(Landroidx/fragment/app/a;Landroidx/fragment/app/o$a;Landroid/util/SparseArray;ZZ)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/a;",
            "Landroidx/fragment/app/o$a;",
            "Landroid/util/SparseArray",
            "<",
            "Landroidx/fragment/app/p$a;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1125
    iget-object v1, p1, Landroidx/fragment/app/o$a;->b:Landroidx/fragment/app/Fragment;

    .line 1126
    if-nez v1, :cond_1

    .line 1212
    :cond_0
    :goto_0
    return-void

    .line 1129
    :cond_1
    iget v9, v1, Landroidx/fragment/app/Fragment;->F:I

    .line 1130
    if-eqz v9, :cond_0

    .line 1133
    if-eqz p3, :cond_5

    sget-object v0, Landroidx/fragment/app/p;->a:[I

    iget v4, p1, Landroidx/fragment/app/o$a;->a:I

    aget v0, v0, v4

    .line 1138
    :goto_1
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v4, v3

    move v6, v3

    move v7, v3

    move v5, v3

    .line 1176
    :goto_2
    invoke-virtual {p2, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/p$a;

    .line 1177
    if-eqz v5, :cond_11

    .line 1179
    invoke-static {v0, p2, v9}, Landroidx/fragment/app/p;->a(Landroidx/fragment/app/p$a;Landroid/util/SparseArray;I)Landroidx/fragment/app/p$a;

    move-result-object v8

    .line 1180
    iput-object v1, v8, Landroidx/fragment/app/p$a;->a:Landroidx/fragment/app/Fragment;

    .line 1181
    iput-boolean p3, v8, Landroidx/fragment/app/p$a;->b:Z

    .line 1182
    iput-object p0, v8, Landroidx/fragment/app/p$a;->c:Landroidx/fragment/app/a;

    .line 1184
    :goto_3
    if-nez p4, :cond_3

    if-eqz v4, :cond_3

    .line 1185
    if-eqz v8, :cond_2

    iget-object v0, v8, Landroidx/fragment/app/p$a;->d:Landroidx/fragment/app/Fragment;

    if-ne v0, v1, :cond_2

    .line 1186
    iput-object v10, v8, Landroidx/fragment/app/p$a;->d:Landroidx/fragment/app/Fragment;

    .line 1193
    :cond_2
    iget-object v0, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/j;

    .line 1194
    iget v4, v1, Landroidx/fragment/app/Fragment;->k:I

    if-ge v4, v2, :cond_3

    iget v4, v0, Landroidx/fragment/app/j;->m:I

    if-lt v4, v2, :cond_3

    iget-boolean v4, p0, Landroidx/fragment/app/a;->t:Z

    if-nez v4, :cond_3

    .line 1196
    invoke-virtual {v0, v1}, Landroidx/fragment/app/j;->k(Landroidx/fragment/app/Fragment;)V

    move v4, v3

    move v5, v3

    .line 1197
    invoke-virtual/range {v0 .. v5}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/Fragment;IIIZ)V

    .line 1200
    :cond_3
    if-eqz v6, :cond_10

    if-eqz v8, :cond_4

    iget-object v0, v8, Landroidx/fragment/app/p$a;->d:Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_10

    .line 1202
    :cond_4
    invoke-static {v8, p2, v9}, Landroidx/fragment/app/p;->a(Landroidx/fragment/app/p$a;Landroid/util/SparseArray;I)Landroidx/fragment/app/p$a;

    move-result-object v0

    .line 1203
    iput-object v1, v0, Landroidx/fragment/app/p$a;->d:Landroidx/fragment/app/Fragment;

    .line 1204
    iput-boolean p3, v0, Landroidx/fragment/app/p$a;->e:Z

    .line 1205
    iput-object p0, v0, Landroidx/fragment/app/p$a;->f:Landroidx/fragment/app/a;

    .line 1208
    :goto_4
    if-nez p4, :cond_0

    if-eqz v7, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, v0, Landroidx/fragment/app/p$a;->a:Landroidx/fragment/app/Fragment;

    if-ne v2, v1, :cond_0

    .line 1210
    iput-object v10, v0, Landroidx/fragment/app/p$a;->a:Landroidx/fragment/app/Fragment;

    goto :goto_0

    .line 1133
    :cond_5
    iget v0, p1, Landroidx/fragment/app/o$a;->a:I

    goto :goto_1

    .line 1140
    :pswitch_1
    if-eqz p4, :cond_7

    .line 1141
    iget-boolean v0, v1, Landroidx/fragment/app/Fragment;->V:Z

    if-eqz v0, :cond_6

    iget-boolean v0, v1, Landroidx/fragment/app/Fragment;->H:Z

    if-nez v0, :cond_6

    iget-boolean v0, v1, Landroidx/fragment/app/Fragment;->t:Z

    if-eqz v0, :cond_6

    move v0, v2

    :goto_5
    move v4, v2

    move v6, v3

    move v7, v3

    move v5, v0

    .line 1146
    goto :goto_2

    :cond_6
    move v0, v3

    .line 1141
    goto :goto_5

    .line 1143
    :cond_7
    iget-boolean v0, v1, Landroidx/fragment/app/Fragment;->H:Z

    goto :goto_5

    .line 1149
    :pswitch_2
    if-eqz p4, :cond_8

    .line 1150
    iget-boolean v0, v1, Landroidx/fragment/app/Fragment;->U:Z

    :goto_6
    move v4, v2

    move v6, v3

    move v7, v3

    move v5, v0

    .line 1155
    goto :goto_2

    .line 1152
    :cond_8
    iget-boolean v0, v1, Landroidx/fragment/app/Fragment;->t:Z

    if-nez v0, :cond_9

    iget-boolean v0, v1, Landroidx/fragment/app/Fragment;->H:Z

    if-nez v0, :cond_9

    move v0, v2

    goto :goto_6

    :cond_9
    move v0, v3

    goto :goto_6

    .line 1157
    :pswitch_3
    if-eqz p4, :cond_b

    .line 1158
    iget-boolean v0, v1, Landroidx/fragment/app/Fragment;->V:Z

    if-eqz v0, :cond_a

    iget-boolean v0, v1, Landroidx/fragment/app/Fragment;->t:Z

    if-eqz v0, :cond_a

    iget-boolean v0, v1, Landroidx/fragment/app/Fragment;->H:Z

    if-eqz v0, :cond_a

    move v0, v2

    :goto_7
    move v4, v3

    move v6, v0

    move v7, v2

    move v5, v3

    .line 1163
    goto/16 :goto_2

    :cond_a
    move v0, v3

    .line 1158
    goto :goto_7

    .line 1160
    :cond_b
    iget-boolean v0, v1, Landroidx/fragment/app/Fragment;->t:Z

    if-eqz v0, :cond_c

    iget-boolean v0, v1, Landroidx/fragment/app/Fragment;->H:Z

    if-nez v0, :cond_c

    move v0, v2

    goto :goto_7

    :cond_c
    move v0, v3

    goto :goto_7

    .line 1166
    :pswitch_4
    if-eqz p4, :cond_e

    .line 1167
    iget-boolean v0, v1, Landroidx/fragment/app/Fragment;->t:Z

    if-nez v0, :cond_d

    iget-object v0, v1, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    if-eqz v0, :cond_d

    iget-object v0, v1, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    .line 1168
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_d

    iget v0, v1, Landroidx/fragment/app/Fragment;->W:F

    const/4 v4, 0x0

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_d

    move v0, v2

    :goto_8
    move v4, v3

    move v6, v0

    move v7, v2

    move v5, v3

    .line 1173
    goto/16 :goto_2

    :cond_d
    move v0, v3

    .line 1168
    goto :goto_8

    .line 1171
    :cond_e
    iget-boolean v0, v1, Landroidx/fragment/app/Fragment;->t:Z

    if-eqz v0, :cond_f

    iget-boolean v0, v1, Landroidx/fragment/app/Fragment;->H:Z

    if-nez v0, :cond_f

    move v0, v2

    goto :goto_8

    :cond_f
    move v0, v3

    goto :goto_8

    :cond_10
    move-object v0, v8

    goto/16 :goto_4

    :cond_11
    move-object v8, v0

    goto/16 :goto_3

    .line 1138
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method private static a(Landroidx/fragment/app/j;ILandroidx/fragment/app/p$a;Landroid/view/View;Landroidx/b/a;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/j;",
            "I",
            "Landroidx/fragment/app/p$a;",
            "Landroid/view/View;",
            "Landroidx/b/a",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 214
    const/4 v3, 0x0

    .line 215
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/fragment/app/j;->o:Landroidx/fragment/app/e;

    invoke-virtual {v2}, Landroidx/fragment/app/e;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 216
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/fragment/app/j;->o:Landroidx/fragment/app/e;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Landroidx/fragment/app/e;->a(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object v3, v2

    .line 218
    :cond_0
    if-nez v3, :cond_2

    .line 269
    :cond_1
    :goto_0
    return-void

    .line 221
    :cond_2
    move-object/from16 v0, p2

    iget-object v15, v0, Landroidx/fragment/app/p$a;->a:Landroidx/fragment/app/Fragment;

    .line 222
    move-object/from16 v0, p2

    iget-object v0, v0, Landroidx/fragment/app/p$a;->d:Landroidx/fragment/app/Fragment;

    move-object/from16 v17, v0

    .line 223
    move-object/from16 v0, v17

    invoke-static {v0, v15}, Landroidx/fragment/app/p;->a(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/r;

    move-result-object v2

    .line 224
    if-eqz v2, :cond_1

    .line 227
    move-object/from16 v0, p2

    iget-boolean v0, v0, Landroidx/fragment/app/p$a;->b:Z

    move/from16 v16, v0

    .line 228
    move-object/from16 v0, p2

    iget-boolean v4, v0, Landroidx/fragment/app/p$a;->e:Z

    .line 230
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 231
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 232
    move/from16 v0, v16

    invoke-static {v2, v15, v0}, Landroidx/fragment/app/p;->a(Landroidx/fragment/app/r;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v9

    .line 233
    move-object/from16 v0, v17

    invoke-static {v2, v0, v4}, Landroidx/fragment/app/p;->b(Landroidx/fragment/app/r;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p2

    .line 235
    invoke-static/range {v2 .. v10}, Landroidx/fragment/app/p;->a(Landroidx/fragment/app/r;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/b/a;Landroidx/fragment/app/p$a;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 239
    if-nez v9, :cond_3

    if-nez v14, :cond_3

    if-eqz v10, :cond_1

    .line 244
    :cond_3
    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-static {v2, v10, v0, v7, v1}, Landroidx/fragment/app/p;->a(Landroidx/fragment/app/r;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v20

    .line 247
    move-object/from16 v0, p3

    invoke-static {v2, v9, v15, v8, v0}, Landroidx/fragment/app/p;->a(Landroidx/fragment/app/r;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v18

    .line 250
    const/4 v4, 0x4

    move-object/from16 v0, v18

    invoke-static {v0, v4}, Landroidx/fragment/app/p;->a(Ljava/util/ArrayList;I)V

    move-object v11, v2

    move-object v12, v9

    move-object v13, v10

    .line 252
    invoke-static/range {v11 .. v16}, Landroidx/fragment/app/p;->a(Landroidx/fragment/app/r;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v16

    .line 255
    if-eqz v16, :cond_1

    .line 256
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v2, v10, v0, v1}, Landroidx/fragment/app/p;->a(Landroidx/fragment/app/r;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;)V

    .line 258
    invoke-virtual {v2, v8}, Landroidx/fragment/app/r;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    move-object v15, v2

    move-object/from16 v17, v9

    move-object/from16 v19, v10

    move-object/from16 v21, v14

    move-object/from16 v22, v8

    .line 259
    invoke-virtual/range {v15 .. v22}, Landroidx/fragment/app/r;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 262
    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Landroidx/fragment/app/r;->a(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    move-object v5, v2

    move-object v6, v3

    move-object v9, v4

    move-object/from16 v10, p4

    .line 263
    invoke-virtual/range {v5 .. v10}, Landroidx/fragment/app/r;->a(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 265
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-static {v0, v3}, Landroidx/fragment/app/p;->a(Ljava/util/ArrayList;I)V

    .line 266
    invoke-virtual {v2, v14, v7, v8}, Landroidx/fragment/app/r;->a(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto/16 :goto_0
.end method

.method static a(Landroidx/fragment/app/j;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/j;",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;IIZ)V"
        }
    .end annotation

    .prologue
    .line 107
    iget v0, p0, Landroidx/fragment/app/j;->m:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 143
    :cond_0
    return-void

    .line 111
    :cond_1
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    move v2, p3

    .line 113
    :goto_0
    if-ge v2, p4, :cond_3

    .line 114
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/a;

    .line 115
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 116
    if-eqz v1, :cond_2

    .line 117
    invoke-static {v0, v3, p5}, Landroidx/fragment/app/p;->b(Landroidx/fragment/app/a;Landroid/util/SparseArray;Z)V

    .line 113
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 119
    :cond_2
    invoke-static {v0, v3, p5}, Landroidx/fragment/app/p;->a(Landroidx/fragment/app/a;Landroid/util/SparseArray;Z)V

    goto :goto_1

    .line 123
    :cond_3
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    new-instance v2, Landroid/view/View;

    iget-object v0, p0, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->l()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 125
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 126
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, v4, :cond_0

    .line 127
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 128
    invoke-static {v5, p1, p2, p3, p4}, Landroidx/fragment/app/p;->a(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Landroidx/b/a;

    move-result-object v6

    .line 132
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/p$a;

    .line 134
    if-eqz p5, :cond_4

    .line 135
    invoke-static {p0, v5, v0, v2, v6}, Landroidx/fragment/app/p;->a(Landroidx/fragment/app/j;ILandroidx/fragment/app/p$a;Landroid/view/View;Landroidx/b/a;)V

    .line 126
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 138
    :cond_4
    invoke-static {p0, v5, v0, v2, v6}, Landroidx/fragment/app/p;->b(Landroidx/fragment/app/j;ILandroidx/fragment/app/p$a;Landroid/view/View;Landroidx/b/a;)V

    goto :goto_3
.end method

.method private static a(Landroidx/fragment/app/r;Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;Landroid/view/View;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/r;",
            "Landroid/view/ViewGroup;",
            "Landroidx/fragment/app/Fragment;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 394
    new-instance v0, Landroidx/fragment/app/p$2;

    move-object v1, p5

    move-object v2, p0

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    move-object v6, p6

    move-object/from16 v7, p8

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroidx/fragment/app/p$2;-><init>(Ljava/lang/Object;Landroidx/fragment/app/r;Landroid/view/View;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;)V

    invoke-static {p1, v0}, Landroidx/core/h/r;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/h/r;

    .line 417
    return-void
.end method

.method private static a(Landroidx/fragment/app/r;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/r;",
            "Ljava/lang/Object;",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 279
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iget-boolean v0, p2, Landroidx/fragment/app/Fragment;->t:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Landroidx/fragment/app/Fragment;->H:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Landroidx/fragment/app/Fragment;->V:Z

    if-eqz v0, :cond_0

    .line 281
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroidx/fragment/app/Fragment;->k(Z)V

    .line 283
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->G()Landroid/view/View;

    move-result-object v0

    .line 282
    invoke-virtual {p0, p1, v0, p3}, Landroidx/fragment/app/r;->b(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 284
    iget-object v0, p2, Landroidx/fragment/app/Fragment;->N:Landroid/view/ViewGroup;

    .line 285
    new-instance v1, Landroidx/fragment/app/p$1;

    invoke-direct {v1, p3}, Landroidx/fragment/app/p$1;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Landroidx/core/h/r;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/h/r;

    .line 292
    :cond_0
    return-void
.end method

.method private static a(Landroidx/fragment/app/r;Ljava/lang/Object;Ljava/lang/Object;Landroidx/b/a;ZLandroidx/fragment/app/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/r;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Landroidx/b/a",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z",
            "Landroidx/fragment/app/a;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 937
    iget-object v0, p5, Landroidx/fragment/app/a;->r:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p5, Landroidx/fragment/app/a;->r:Ljava/util/ArrayList;

    .line 938
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 939
    if-eqz p4, :cond_1

    iget-object v0, p5, Landroidx/fragment/app/a;->s:Ljava/util/ArrayList;

    .line 940
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 942
    :goto_0
    invoke-virtual {p3, v0}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 943
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/r;->a(Ljava/lang/Object;Landroid/view/View;)V

    .line 945
    if-eqz p2, :cond_0

    .line 946
    invoke-virtual {p0, p2, v0}, Landroidx/fragment/app/r;->a(Ljava/lang/Object;Landroid/view/View;)V

    .line 949
    :cond_0
    return-void

    .line 940
    :cond_1
    iget-object v0, p5, Landroidx/fragment/app/a;->r:Ljava/util/ArrayList;

    .line 941
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method static a(Ljava/util/ArrayList;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1026
    if-nez p0, :cond_1

    .line 1033
    :cond_0
    return-void

    .line 1029
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 1030
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1031
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1029
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method private static a(Ljava/util/ArrayList;Landroidx/b/a;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroidx/b/a",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 648
    invoke-virtual {p1}, Landroidx/b/a;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 649
    invoke-virtual {p1, v1}, Landroidx/b/a;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 650
    invoke-static {v0}, Landroidx/core/h/u;->o(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 651
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 654
    :cond_1
    return-void
.end method

.method private static a(Landroidx/fragment/app/r;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/r;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 471
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 472
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroidx/fragment/app/r;->a(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 476
    :goto_1
    return v0

    .line 471
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 476
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private static b(Landroidx/fragment/app/r;Landroidx/b/a;Ljava/lang/Object;Landroidx/fragment/app/p$a;)Landroidx/b/a;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/r;",
            "Landroidx/b/a",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Landroidx/fragment/app/p$a;",
            ")",
            "Landroidx/b/a",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 784
    invoke-virtual {p1}, Landroidx/b/a;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 785
    :cond_0
    invoke-virtual {p1}, Landroidx/b/a;->clear()V

    .line 786
    const/4 v0, 0x0

    .line 819
    :goto_0
    return-object v0

    .line 788
    :cond_1
    iget-object v0, p3, Landroidx/fragment/app/p$a;->d:Landroidx/fragment/app/Fragment;

    .line 789
    new-instance v3, Landroidx/b/a;

    invoke-direct {v3}, Landroidx/b/a;-><init>()V

    .line 790
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->H()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Landroidx/fragment/app/r;->a(Ljava/util/Map;Landroid/view/View;)V

    .line 794
    iget-object v2, p3, Landroidx/fragment/app/p$a;->f:Landroidx/fragment/app/a;

    .line 795
    iget-boolean v1, p3, Landroidx/fragment/app/p$a;->e:Z

    if-eqz v1, :cond_3

    .line 796
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->al()Landroidx/core/app/l;

    move-result-object v1

    .line 797
    iget-object v0, v2, Landroidx/fragment/app/a;->s:Ljava/util/ArrayList;

    move-object v2, v0

    .line 803
    :goto_1
    invoke-virtual {v3, v2}, Landroidx/b/a;->a(Ljava/util/Collection;)Z

    .line 804
    if-eqz v1, :cond_5

    .line 805
    invoke-virtual {v1, v2, v3}, Landroidx/core/app/l;->a(Ljava/util/List;Ljava/util/Map;)V

    .line 806
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    :goto_2
    if-ltz v4, :cond_6

    .line 807
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 808
    invoke-virtual {v3, v0}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 809
    if-nez v1, :cond_4

    .line 810
    invoke-virtual {p1, v0}, Landroidx/b/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 806
    :cond_2
    :goto_3
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_2

    .line 799
    :cond_3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->am()Landroidx/core/app/l;

    move-result-object v1

    .line 800
    iget-object v0, v2, Landroidx/fragment/app/a;->r:Ljava/util/ArrayList;

    move-object v2, v0

    goto :goto_1

    .line 811
    :cond_4
    invoke-static {v1}, Landroidx/core/h/u;->o(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 812
    invoke-virtual {p1, v0}, Landroidx/b/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 813
    invoke-static {v1}, Landroidx/core/h/u;->o(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 817
    :cond_5
    invoke-virtual {v3}, Landroidx/b/a;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/b/a;->a(Ljava/util/Collection;)Z

    :cond_6
    move-object v0, v3

    .line 819
    goto :goto_0
.end method

.method private static b(Landroidx/fragment/app/r;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/b/a;Landroidx/fragment/app/p$a;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/r;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Landroidx/b/a",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/fragment/app/p$a;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 691
    move-object/from16 v0, p4

    iget-object v12, v0, Landroidx/fragment/app/p$a;->a:Landroidx/fragment/app/Fragment;

    .line 692
    move-object/from16 v0, p4

    iget-object v13, v0, Landroidx/fragment/app/p$a;->d:Landroidx/fragment/app/Fragment;

    .line 694
    if-eqz v12, :cond_0

    if-nez v13, :cond_1

    .line 695
    :cond_0
    const/4 v4, 0x0

    .line 764
    :goto_0
    return-object v4

    .line 698
    :cond_1
    move-object/from16 v0, p4

    iget-boolean v14, v0, Landroidx/fragment/app/p$a;->b:Z

    .line 699
    invoke-virtual/range {p3 .. p3}, Landroidx/b/a;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    .line 702
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-static {v0, v1, v3, v2}, Landroidx/fragment/app/p;->b(Landroidx/fragment/app/r;Landroidx/b/a;Ljava/lang/Object;Landroidx/fragment/app/p$a;)Landroidx/b/a;

    move-result-object v6

    .line 705
    invoke-virtual/range {p3 .. p3}, Landroidx/b/a;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 706
    const/4 v4, 0x0

    .line 711
    :goto_2
    if-nez p7, :cond_4

    if-nez p8, :cond_4

    if-nez v4, :cond_4

    .line 713
    const/4 v4, 0x0

    goto :goto_0

    .line 700
    :cond_2
    move-object/from16 v0, p0

    invoke-static {v0, v12, v13, v14}, Landroidx/fragment/app/p;->a(Landroidx/fragment/app/r;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    .line 708
    :cond_3
    invoke-virtual {v6}, Landroidx/b/a;->values()Ljava/util/Collection;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object v4, v3

    goto :goto_2

    .line 716
    :cond_4
    const/4 v3, 0x1

    invoke-static {v12, v13, v14, v6, v3}, Landroidx/fragment/app/p;->a(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/b/a;Z)V

    .line 719
    if-eqz v4, :cond_6

    .line 720
    new-instance v17, Landroid/graphics/Rect;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Rect;-><init>()V

    .line 721
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    invoke-virtual {v0, v4, v1, v2}, Landroidx/fragment/app/r;->a(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 723
    move-object/from16 v0, p4

    iget-boolean v7, v0, Landroidx/fragment/app/p$a;->e:Z

    .line 724
    move-object/from16 v0, p4

    iget-object v8, v0, Landroidx/fragment/app/p$a;->f:Landroidx/fragment/app/a;

    move-object/from16 v3, p0

    move-object/from16 v5, p8

    .line 725
    invoke-static/range {v3 .. v8}, Landroidx/fragment/app/p;->a(Landroidx/fragment/app/r;Ljava/lang/Object;Ljava/lang/Object;Landroidx/b/a;ZLandroidx/fragment/app/a;)V

    .line 727
    if-eqz p7, :cond_5

    .line 728
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/r;->a(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 736
    :cond_5
    :goto_3
    new-instance v5, Landroidx/fragment/app/p$4;

    move-object/from16 v6, p0

    move-object/from16 v7, p3

    move-object v8, v4

    move-object/from16 v9, p4

    move-object/from16 v10, p6

    move-object/from16 v11, p2

    move-object/from16 v15, p5

    move-object/from16 v16, p7

    invoke-direct/range {v5 .. v17}, Landroidx/fragment/app/p$4;-><init>(Landroidx/fragment/app/r;Landroidx/b/a;Ljava/lang/Object;Landroidx/fragment/app/p$a;Ljava/util/ArrayList;Landroid/view/View;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Landroidx/core/h/r;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/h/r;

    goto :goto_0

    .line 731
    :cond_6
    const/16 v17, 0x0

    goto :goto_3
.end method

.method private static b(Landroidx/fragment/app/r;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 520
    if-nez p1, :cond_0

    .line 521
    const/4 v0, 0x0

    .line 523
    :goto_0
    return-object v0

    :cond_0
    if-eqz p2, :cond_1

    .line 524
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->O()Ljava/lang/Object;

    move-result-object v0

    .line 523
    :goto_1
    invoke-virtual {p0, v0}, Landroidx/fragment/app/r;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 525
    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->P()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method public static b(Landroidx/fragment/app/a;Landroid/util/SparseArray;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/a;",
            "Landroid/util/SparseArray",
            "<",
            "Landroidx/fragment/app/p$a;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1094
    iget-object v0, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/j;

    iget-object v0, v0, Landroidx/fragment/app/j;->o:Landroidx/fragment/app/e;

    invoke-virtual {v0}, Landroidx/fragment/app/e;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1102
    :cond_0
    return-void

    .line 1097
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1098
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 1099
    iget-object v0, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/o$a;

    .line 1100
    const/4 v2, 0x1

    invoke-static {p0, v0, p1, v2, p2}, Landroidx/fragment/app/p;->a(Landroidx/fragment/app/a;Landroidx/fragment/app/o$a;Landroid/util/SparseArray;ZZ)V

    .line 1098
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method private static b(Landroidx/fragment/app/j;ILandroidx/fragment/app/p$a;Landroid/view/View;Landroidx/b/a;)V
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/j;",
            "I",
            "Landroidx/fragment/app/p$a;",
            "Landroid/view/View;",
            "Landroidx/b/a",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 312
    const/4 v2, 0x0

    .line 313
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/fragment/app/j;->o:Landroidx/fragment/app/e;

    invoke-virtual {v1}, Landroidx/fragment/app/e;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 314
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/fragment/app/j;->o:Landroidx/fragment/app/e;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/e;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    move-object v2, v1

    .line 316
    :cond_0
    if-nez v2, :cond_2

    .line 369
    :cond_1
    :goto_0
    return-void

    .line 319
    :cond_2
    move-object/from16 v0, p2

    iget-object v13, v0, Landroidx/fragment/app/p$a;->a:Landroidx/fragment/app/Fragment;

    .line 320
    move-object/from16 v0, p2

    iget-object v10, v0, Landroidx/fragment/app/p$a;->d:Landroidx/fragment/app/Fragment;

    .line 321
    invoke-static {v10, v13}, Landroidx/fragment/app/p;->a(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/r;

    move-result-object v1

    .line 322
    if-eqz v1, :cond_1

    .line 325
    move-object/from16 v0, p2

    iget-boolean v3, v0, Landroidx/fragment/app/p$a;->b:Z

    .line 326
    move-object/from16 v0, p2

    iget-boolean v4, v0, Landroidx/fragment/app/p$a;->e:Z

    .line 328
    invoke-static {v1, v13, v3}, Landroidx/fragment/app/p;->a(Landroidx/fragment/app/r;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v8

    .line 329
    invoke-static {v1, v10, v4}, Landroidx/fragment/app/p;->b(Landroidx/fragment/app/r;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v9

    .line 331
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 332
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p2

    .line 334
    invoke-static/range {v1 .. v9}, Landroidx/fragment/app/p;->b(Landroidx/fragment/app/r;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/b/a;Landroidx/fragment/app/p$a;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 338
    if-nez v8, :cond_3

    if-nez v12, :cond_3

    if-eqz v9, :cond_1

    .line 343
    :cond_3
    move-object/from16 v0, p3

    invoke-static {v1, v9, v10, v6, v0}, Landroidx/fragment/app/p;->a(Landroidx/fragment/app/r;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v19

    .line 346
    if-eqz v19, :cond_4

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 347
    :cond_4
    const/4 v11, 0x0

    .line 352
    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v1, v8, v0}, Landroidx/fragment/app/r;->b(Ljava/lang/Object;Landroid/view/View;)V

    .line 354
    move-object/from16 v0, p2

    iget-boolean v14, v0, Landroidx/fragment/app/p$a;->b:Z

    move-object v9, v1

    move-object v10, v8

    invoke-static/range {v9 .. v14}, Landroidx/fragment/app/p;->a(Landroidx/fragment/app/r;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v15

    .line 357
    if-eqz v15, :cond_1

    .line 358
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v1

    move-object/from16 v16, v8

    move-object/from16 v18, v11

    move-object/from16 v20, v12

    move-object/from16 v21, v7

    .line 359
    invoke-virtual/range {v14 .. v21}, Landroidx/fragment/app/r;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    move-object/from16 v20, v1

    move-object/from16 v21, v2

    move-object/from16 v22, v13

    move-object/from16 v23, p3

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    move-object/from16 v26, v17

    move-object/from16 v27, v11

    move-object/from16 v28, v19

    .line 362
    invoke-static/range {v20 .. v28}, Landroidx/fragment/app/p;->a(Landroidx/fragment/app/r;Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;Landroid/view/View;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 364
    move-object/from16 v0, p4

    invoke-virtual {v1, v2, v7, v0}, Landroidx/fragment/app/r;->a(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 366
    invoke-virtual {v1, v2, v15}, Landroidx/fragment/app/r;->a(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 367
    move-object/from16 v0, p4

    invoke-virtual {v1, v2, v7, v0}, Landroidx/fragment/app/r;->a(Landroid/view/ViewGroup;Ljava/util/ArrayList;Ljava/util/Map;)V

    goto/16 :goto_0

    :cond_5
    move-object v11, v9

    goto :goto_1
.end method
