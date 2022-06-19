.class final Landroidx/fragment/app/t;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/t$b;,
        Landroidx/fragment/app/t$a;
    }
.end annotation


# static fields
.field static final a:Landroidx/fragment/app/v;

.field static final b:Landroidx/fragment/app/v;

.field private static final c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xb

    new-array v0, v0, [I

    .line 48
    fill-array-data v0, :array_0

    sput-object v0, Landroidx/fragment/app/t;->c:[I

    .line 77
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 78
    new-instance v0, Landroidx/fragment/app/u;

    invoke-direct {v0}, Landroidx/fragment/app/u;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 79
    :goto_0
    sput-object v0, Landroidx/fragment/app/t;->a:Landroidx/fragment/app/v;

    .line 81
    invoke-static {}, Landroidx/fragment/app/t;->a()Landroidx/fragment/app/v;

    move-result-object v0

    sput-object v0, Landroidx/fragment/app/t;->b:Landroidx/fragment/app/v;

    return-void

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

.method private constructor <init>()V
    .locals 0

    .line 1314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroidx/b/a;Landroidx/fragment/app/t$b;Ljava/lang/Object;Z)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/b/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroidx/fragment/app/t$b;",
            "Ljava/lang/Object;",
            "Z)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 962
    iget-object p1, p1, Landroidx/fragment/app/t$b;->c:Landroidx/fragment/app/a;

    if-eqz p2, :cond_1

    if-eqz p0, :cond_1

    .line 963
    iget-object p2, p1, Landroidx/fragment/app/a;->q:Ljava/util/ArrayList;

    if-eqz p2, :cond_1

    iget-object p2, p1, Landroidx/fragment/app/a;->q:Ljava/util/ArrayList;

    .line 965
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    if-eqz p3, :cond_0

    .line 967
    iget-object p1, p1, Landroidx/fragment/app/a;->q:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    .line 968
    :cond_0
    iget-object p1, p1, Landroidx/fragment/app/a;->r:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 969
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Landroidx/b/a;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II)",
            "Landroidx/b/a<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 187
    new-instance v0, Landroidx/b/a;

    invoke-direct {v0}, Landroidx/b/a;-><init>()V

    add-int/lit8 p4, p4, -0x1

    :goto_0
    if-lt p4, p3, :cond_3

    .line 189
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/a;

    .line 190
    invoke-virtual {v1, p0}, Landroidx/fragment/app/a;->b(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 193
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 194
    iget-object v3, v1, Landroidx/fragment/app/a;->q:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 195
    iget-object v3, v1, Landroidx/fragment/app/a;->q:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v2, :cond_0

    .line 199
    iget-object v2, v1, Landroidx/fragment/app/a;->q:Ljava/util/ArrayList;

    .line 200
    iget-object v1, v1, Landroidx/fragment/app/a;->r:Ljava/util/ArrayList;

    goto :goto_1

    .line 202
    :cond_0
    iget-object v2, v1, Landroidx/fragment/app/a;->q:Ljava/util/ArrayList;

    .line 203
    iget-object v1, v1, Landroidx/fragment/app/a;->r:Ljava/util/ArrayList;

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    :goto_1
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_2

    .line 206
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 207
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 208
    invoke-virtual {v0, v6}, Landroidx/b/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 210
    invoke-virtual {v0, v5, v7}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 212
    :cond_1
    invoke-virtual {v0, v5, v6}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 p4, p4, -0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method static a(Landroidx/fragment/app/v;Landroidx/b/a;Ljava/lang/Object;Landroidx/fragment/app/t$b;)Landroidx/b/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/v;",
            "Landroidx/b/a<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Landroidx/fragment/app/t$b;",
            ")",
            "Landroidx/b/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 889
    iget-object v0, p3, Landroidx/fragment/app/t$b;->a:Landroidx/fragment/app/Fragment;

    .line 890
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 891
    invoke-virtual {p1}, Landroidx/b/a;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    if-eqz p2, :cond_7

    if-nez v1, :cond_0

    goto :goto_3

    .line 895
    :cond_0
    new-instance p2, Landroidx/b/a;

    invoke-direct {p2}, Landroidx/b/a;-><init>()V

    .line 896
    invoke-virtual {p0, p2, v1}, Landroidx/fragment/app/v;->a(Ljava/util/Map;Landroid/view/View;)V

    .line 900
    iget-object p0, p3, Landroidx/fragment/app/t$b;->c:Landroidx/fragment/app/a;

    .line 901
    iget-boolean p3, p3, Landroidx/fragment/app/t$b;->b:Z

    if-eqz p3, :cond_1

    .line 902
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getExitTransitionCallback()Landroidx/core/app/n;

    move-result-object p3

    .line 903
    iget-object p0, p0, Landroidx/fragment/app/a;->q:Ljava/util/ArrayList;

    goto :goto_0

    .line 905
    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Landroidx/core/app/n;

    move-result-object p3

    .line 906
    iget-object p0, p0, Landroidx/fragment/app/a;->r:Ljava/util/ArrayList;

    :goto_0
    if-eqz p0, :cond_2

    .line 9164
    invoke-static {p2, p0}, Landroidx/b/f;->a(Ljava/util/Map;Ljava/util/Collection;)Z

    .line 911
    invoke-virtual {p1}, Landroidx/b/a;->values()Ljava/util/Collection;

    move-result-object v0

    .line 10164
    invoke-static {p2, v0}, Landroidx/b/f;->a(Ljava/util/Map;Ljava/util/Collection;)Z

    :cond_2
    if-eqz p3, :cond_5

    .line 915
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_1
    if-ltz p3, :cond_6

    .line 916
    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 917
    invoke-virtual {p2, v0}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_3

    .line 919
    invoke-static {p1, v0}, Landroidx/fragment/app/t;->a(Landroidx/b/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 921
    invoke-virtual {p1, v0}, Landroidx/b/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 923
    :cond_3
    invoke-static {v1}, Landroidx/core/view/v;->p(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 924
    invoke-static {p1, v0}, Landroidx/fragment/app/t;->a(Landroidx/b/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 926
    invoke-static {v1}, Landroidx/core/view/v;->p(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_2
    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    .line 931
    :cond_5
    invoke-static {p1, p2}, Landroidx/fragment/app/t;->a(Landroidx/b/a;Landroidx/b/a;)V

    :cond_6
    return-object p2

    .line 892
    :cond_7
    :goto_3
    invoke-virtual {p1}, Landroidx/b/a;->clear()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Landroidx/fragment/app/t$b;Landroid/util/SparseArray;I)Landroidx/fragment/app/t$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/t$b;",
            "Landroid/util/SparseArray<",
            "Landroidx/fragment/app/t$b;",
            ">;I)",
            "Landroidx/fragment/app/t$b;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 1272
    new-instance p0, Landroidx/fragment/app/t$b;

    invoke-direct {p0}, Landroidx/fragment/app/t$b;-><init>()V

    .line 1273
    invoke-virtual {p1, p2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method private static a()Landroidx/fragment/app/v;
    .locals 3

    :try_start_0
    const-string v0, "androidx.transition.e"

    .line 86
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    .line 88
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/v;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static a(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/v;
    .locals 2

    .line 472
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_2

    .line 474
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 476
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getReturnTransition()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 480
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 482
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getSharedElementReturnTransition()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 484
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz p1, :cond_5

    .line 488
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 490
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    :cond_3
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getReenterTransition()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 494
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    :cond_4
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 498
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_6

    return-object p1

    .line 505
    :cond_6
    sget-object p0, Landroidx/fragment/app/t;->a:Landroidx/fragment/app/v;

    if-eqz p0, :cond_7

    invoke-static {p0, v0}, Landroidx/fragment/app/t;->a(Landroidx/fragment/app/v;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_7

    return-object p0

    .line 508
    :cond_7
    sget-object v1, Landroidx/fragment/app/t;->b:Landroidx/fragment/app/v;

    if-eqz v1, :cond_8

    invoke-static {v1, v0}, Landroidx/fragment/app/t;->a(Landroidx/fragment/app/v;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    if-nez p0, :cond_9

    if-nez v1, :cond_9

    return-object p1

    .line 512
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid Transition types"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Landroidx/fragment/app/v;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p3, :cond_1

    .line 544
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getSharedElementReturnTransition()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 545
    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object p1

    .line 543
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/v;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 546
    invoke-virtual {p0, p1}, Landroidx/fragment/app/v;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Landroidx/fragment/app/v;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    .line 558
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getReenterTransition()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 559
    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object p1

    .line 557
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/v;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroidx/fragment/app/v;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p4, :cond_1

    if-eqz p5, :cond_0

    .line 1092
    invoke-virtual {p4}, Landroidx/fragment/app/Fragment;->getAllowReturnTransitionOverlap()Z

    move-result p4

    goto :goto_0

    .line 1093
    :cond_0
    invoke-virtual {p4}, Landroidx/fragment/app/Fragment;->getAllowEnterTransitionOverlap()Z

    move-result p4

    goto :goto_0

    :cond_1
    const/4 p4, 0x1

    :goto_0
    if-eqz p4, :cond_2

    .line 1103
    invoke-virtual {p0, p2, p1, p3}, Landroidx/fragment/app/v;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    .line 1108
    :cond_2
    invoke-virtual {p0, p2, p1, p3}, Landroidx/fragment/app/v;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method static a(Landroidx/b/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/b/a<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 940
    invoke-virtual {p0}, Landroidx/b/a;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 942
    invoke-virtual {p0, v1}, Landroidx/b/a;->c(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 943
    invoke-virtual {p0, v1}, Landroidx/b/a;->b(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static a(Landroidx/fragment/app/v;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/v;",
            "Ljava/lang/Object;",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1054
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1055
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 1057
    invoke-virtual {p0, v0, p2}, Landroidx/fragment/app/v;->a(Ljava/util/ArrayList;Landroid/view/View;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 1060
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1062
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    .line 1063
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1064
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/v;->a(Ljava/lang/Object;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    return-object v0
.end method

.method static a(Landroid/content/Context;Landroidx/fragment/app/e;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZLandroidx/fragment/app/t$a;)V
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/fragment/app/e;",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;IIZ",
            "Landroidx/fragment/app/t$a;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move/from16 v2, p5

    move/from16 v3, p6

    move-object/from16 v4, p7

    .line 127
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    move/from16 v6, p4

    :goto_0
    if-ge v6, v2, :cond_1

    .line 130
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/a;

    .line 131
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 133
    invoke-static {v7, v5, v3}, Landroidx/fragment/app/t;->b(Landroidx/fragment/app/a;Landroid/util/SparseArray;Z)V

    goto :goto_1

    .line 135
    :cond_0
    invoke-static {v7, v5, v3}, Landroidx/fragment/app/t;->a(Landroidx/fragment/app/a;Landroid/util/SparseArray;Z)V

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-eqz v6, :cond_24

    .line 140
    new-instance v6, Landroid/view/View;

    move-object/from16 v7, p0

    invoke-direct {v6, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 141
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v15

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v15, :cond_24

    .line 143
    invoke-virtual {v5, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    move/from16 v12, p4

    .line 144
    invoke-static {v7, v0, v1, v12, v2}, Landroidx/fragment/app/t;->a(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Landroidx/b/a;

    move-result-object v11

    .line 148
    invoke-virtual {v5, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    move-object v10, v8

    check-cast v10, Landroidx/fragment/app/t$b;

    .line 150
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/e;->a()Z

    move-result v8

    if-eqz v8, :cond_22

    move-object/from16 v9, p1

    .line 151
    invoke-virtual {v9, v7}, Landroidx/fragment/app/e;->a(I)Landroid/view/View;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Landroid/view/ViewGroup;

    if-eqz v8, :cond_22

    const/16 v20, 0x0

    if-eqz v3, :cond_13

    .line 3237
    iget-object v7, v10, Landroidx/fragment/app/t$b;->a:Landroidx/fragment/app/Fragment;

    .line 3238
    iget-object v14, v10, Landroidx/fragment/app/t$b;->d:Landroidx/fragment/app/Fragment;

    .line 3239
    invoke-static {v14, v7}, Landroidx/fragment/app/t;->a(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/v;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 3243
    iget-boolean v1, v10, Landroidx/fragment/app/t$b;->b:Z

    .line 3244
    iget-boolean v2, v10, Landroidx/fragment/app/t$b;->e:Z

    .line 3246
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v29, v5

    .line 3247
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3248
    invoke-static {v0, v7, v1}, Landroidx/fragment/app/t;->a(Landroidx/fragment/app/v;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v9

    .line 3249
    invoke-static {v0, v14, v2}, Landroidx/fragment/app/t;->b(Landroidx/fragment/app/v;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v2

    .line 3609
    iget-object v12, v10, Landroidx/fragment/app/t$b;->a:Landroidx/fragment/app/Fragment;

    move/from16 v30, v13

    .line 3610
    iget-object v13, v10, Landroidx/fragment/app/t$b;->d:Landroidx/fragment/app/Fragment;

    move/from16 v31, v15

    if-eqz v12, :cond_2

    .line 3612
    invoke-virtual {v12}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v15

    const/4 v4, 0x0

    invoke-virtual {v15, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    if-eqz v12, :cond_b

    if-nez v13, :cond_3

    goto/16 :goto_7

    .line 3618
    :cond_3
    iget-boolean v4, v10, Landroidx/fragment/app/t$b;->b:Z

    .line 3619
    invoke-virtual {v11}, Landroidx/b/a;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_4

    move/from16 v16, v1

    move-object/from16 v15, v20

    goto :goto_3

    .line 3620
    :cond_4
    invoke-static {v0, v12, v13, v4}, Landroidx/fragment/app/t;->a(Landroidx/fragment/app/v;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v15

    move/from16 v16, v1

    .line 3622
    :goto_3
    invoke-static {v0, v11, v15, v10}, Landroidx/fragment/app/t;->b(Landroidx/fragment/app/v;Landroidx/b/a;Ljava/lang/Object;Landroidx/fragment/app/t$b;)Landroidx/b/a;

    move-result-object v1

    move-object/from16 v17, v7

    .line 3625
    invoke-static {v0, v11, v15, v10}, Landroidx/fragment/app/t;->a(Landroidx/fragment/app/v;Landroidx/b/a;Ljava/lang/Object;Landroidx/fragment/app/t$b;)Landroidx/b/a;

    move-result-object v7

    .line 3628
    invoke-virtual {v11}, Landroidx/b/a;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_7

    if-eqz v1, :cond_5

    .line 3631
    invoke-virtual {v1}, Landroidx/b/a;->clear()V

    :cond_5
    if-eqz v7, :cond_6

    .line 3634
    invoke-virtual {v7}, Landroidx/b/a;->clear()V

    :cond_6
    move-object/from16 v15, v20

    goto :goto_4

    :cond_7
    move-object/from16 v18, v15

    .line 3638
    invoke-virtual {v11}, Landroidx/b/a;->keySet()Ljava/util/Set;

    move-result-object v15

    .line 3637
    invoke-static {v5, v1, v15}, Landroidx/fragment/app/t;->a(Ljava/util/ArrayList;Landroidx/b/a;Ljava/util/Collection;)V

    .line 3640
    invoke-virtual {v11}, Landroidx/b/a;->values()Ljava/util/Collection;

    move-result-object v15

    .line 3639
    invoke-static {v3, v7, v15}, Landroidx/fragment/app/t;->a(Ljava/util/ArrayList;Landroidx/b/a;Ljava/util/Collection;)V

    move-object/from16 v15, v18

    :goto_4
    if-nez v9, :cond_8

    if-nez v2, :cond_8

    if-nez v15, :cond_8

    move-object/from16 v33, v3

    :goto_5
    move-object/from16 v32, v11

    goto :goto_8

    .line 3648
    :cond_8
    invoke-static {v12, v13, v4, v1}, Landroidx/fragment/app/t;->a(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/b/a;)V

    if-eqz v15, :cond_a

    .line 3653
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3654
    invoke-virtual {v0, v15, v6, v5}, Landroidx/fragment/app/v;->a(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    move-object/from16 v32, v11

    .line 3656
    iget-boolean v11, v10, Landroidx/fragment/app/t$b;->e:Z

    move-object/from16 v33, v3

    .line 3657
    iget-object v3, v10, Landroidx/fragment/app/t$b;->f:Landroidx/fragment/app/a;

    move-object/from16 v21, v0

    move-object/from16 v22, v15

    move-object/from16 v23, v2

    move-object/from16 v24, v1

    move/from16 v25, v11

    move-object/from16 v26, v3

    .line 3658
    invoke-static/range {v21 .. v26}, Landroidx/fragment/app/t;->a(Landroidx/fragment/app/v;Ljava/lang/Object;Ljava/lang/Object;Landroidx/b/a;ZLandroidx/fragment/app/a;)V

    .line 3660
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 3661
    invoke-static {v7, v10, v9, v4}, Landroidx/fragment/app/t;->a(Landroidx/b/a;Landroidx/fragment/app/t$b;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v20

    if-eqz v20, :cond_9

    .line 3664
    invoke-virtual {v0, v9, v1}, Landroidx/fragment/app/v;->a(Ljava/lang/Object;Landroid/graphics/Rect;)V

    :cond_9
    move-object/from16 v28, v1

    move-object/from16 v26, v20

    goto :goto_6

    :cond_a
    move-object/from16 v33, v3

    move-object/from16 v32, v11

    move-object/from16 v26, v20

    move-object/from16 v28, v26

    .line 3671
    :goto_6
    new-instance v1, Landroidx/fragment/app/t$5;

    move-object/from16 v21, v1

    move-object/from16 v22, v12

    move-object/from16 v23, v13

    move/from16 v24, v4

    move-object/from16 v25, v7

    move-object/from16 v27, v0

    invoke-direct/range {v21 .. v28}, Landroidx/fragment/app/t$5;-><init>(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/b/a;Landroid/view/View;Landroidx/fragment/app/v;Landroid/graphics/Rect;)V

    invoke-static {v8, v1}, Landroidx/core/view/s;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/s;

    goto :goto_9

    :cond_b
    :goto_7
    move/from16 v16, v1

    move-object/from16 v33, v3

    move-object/from16 v17, v7

    goto :goto_5

    :goto_8
    move-object/from16 v15, v20

    :goto_9
    if-nez v9, :cond_d

    if-nez v15, :cond_d

    if-eqz v2, :cond_c

    goto :goto_a

    :cond_c
    move-object/from16 v13, p7

    goto/16 :goto_c

    .line 3260
    :cond_d
    :goto_a
    invoke-static {v0, v2, v14, v5, v6}, Landroidx/fragment/app/t;->a(Landroidx/fragment/app/v;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v1

    move-object/from16 v3, v17

    move-object/from16 v4, v33

    .line 3263
    invoke-static {v0, v9, v3, v4, v6}, Landroidx/fragment/app/t;->a(Landroidx/fragment/app/v;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v7

    const/4 v10, 0x4

    .line 3266
    invoke-static {v7, v10}, Landroidx/fragment/app/t;->a(Ljava/util/ArrayList;I)V

    move-object/from16 v21, v0

    move-object/from16 v22, v9

    move-object/from16 v23, v2

    move-object/from16 v24, v15

    move-object/from16 v25, v3

    move/from16 v26, v16

    .line 3268
    invoke-static/range {v21 .. v26}, Landroidx/fragment/app/t;->a(Landroidx/fragment/app/v;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v3

    if-eqz v14, :cond_f

    if-eqz v1, :cond_f

    .line 3272
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-gtz v10, :cond_e

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_f

    .line 3273
    :cond_e
    new-instance v10, Landroidx/core/os/a;

    invoke-direct {v10}, Landroidx/core/os/a;-><init>()V

    move-object/from16 v13, p7

    .line 3274
    invoke-interface {v13, v14, v10}, Landroidx/fragment/app/t$a;->a(Landroidx/fragment/app/Fragment;Landroidx/core/os/a;)V

    .line 3275
    new-instance v11, Landroidx/fragment/app/t$1;

    invoke-direct {v11, v13, v14, v10}, Landroidx/fragment/app/t$1;-><init>(Landroidx/fragment/app/t$a;Landroidx/fragment/app/Fragment;Landroidx/core/os/a;)V

    invoke-virtual {v0, v3, v10, v11}, Landroidx/fragment/app/v;->a(Ljava/lang/Object;Landroidx/core/os/a;Ljava/lang/Runnable;)V

    goto :goto_b

    :cond_f
    move-object/from16 v13, p7

    :goto_b
    if-eqz v3, :cond_11

    if-eqz v14, :cond_10

    if-eqz v2, :cond_10

    .line 4307
    iget-boolean v10, v14, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v10, :cond_10

    iget-boolean v10, v14, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v10, :cond_10

    iget-boolean v10, v14, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    if-eqz v10, :cond_10

    const/4 v10, 0x1

    .line 4309
    invoke-virtual {v14, v10}, Landroidx/fragment/app/Fragment;->setHideReplaced(Z)V

    .line 4311
    invoke-virtual {v14}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v10

    .line 4310
    invoke-virtual {v0, v2, v10, v1}, Landroidx/fragment/app/v;->b(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 4327
    iget-object v10, v14, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 4328
    new-instance v11, Landroidx/fragment/app/t$2;

    invoke-direct {v11, v1}, Landroidx/fragment/app/t$2;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v10, v11}, Landroidx/core/view/s;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/s;

    .line 3286
    :cond_10
    invoke-static {v4}, Landroidx/fragment/app/v;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v20

    move-object/from16 v21, v0

    move-object/from16 v22, v3

    move-object/from16 v23, v9

    move-object/from16 v24, v7

    move-object/from16 v25, v2

    move-object/from16 v26, v1

    move-object/from16 v27, v15

    move-object/from16 v28, v4

    .line 3287
    invoke-virtual/range {v21 .. v28}, Landroidx/fragment/app/v;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 3290
    invoke-virtual {v0, v8, v3}, Landroidx/fragment/app/v;->a(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    move-object/from16 v16, v0

    move-object/from16 v17, v8

    move-object/from16 v18, v5

    move-object/from16 v19, v4

    move-object/from16 v21, v32

    .line 3291
    invoke-virtual/range {v16 .. v21}, Landroidx/fragment/app/v;->a(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V

    const/4 v1, 0x0

    .line 3293
    invoke-static {v7, v1}, Landroidx/fragment/app/t;->a(Ljava/util/ArrayList;I)V

    .line 3294
    invoke-virtual {v0, v15, v5, v4}, Landroidx/fragment/app/v;->a(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto/16 :goto_15

    :cond_11
    :goto_c
    const/4 v1, 0x0

    goto/16 :goto_15

    :cond_12
    move-object/from16 v29, v5

    move/from16 v30, v13

    move/from16 v31, v15

    const/4 v1, 0x0

    move-object v13, v4

    goto/16 :goto_15

    :cond_13
    move-object/from16 v29, v5

    move-object/from16 v32, v11

    move/from16 v30, v13

    move/from16 v31, v15

    const/4 v1, 0x0

    move-object v13, v4

    .line 4354
    iget-object v0, v10, Landroidx/fragment/app/t$b;->a:Landroidx/fragment/app/Fragment;

    .line 4355
    iget-object v2, v10, Landroidx/fragment/app/t$b;->d:Landroidx/fragment/app/Fragment;

    .line 4356
    invoke-static {v2, v0}, Landroidx/fragment/app/t;->a(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/v;

    move-result-object v3

    if-eqz v3, :cond_21

    .line 4360
    iget-boolean v4, v10, Landroidx/fragment/app/t$b;->b:Z

    .line 4361
    iget-boolean v5, v10, Landroidx/fragment/app/t$b;->e:Z

    .line 4363
    invoke-static {v3, v0, v4}, Landroidx/fragment/app/t;->a(Landroidx/fragment/app/v;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v4

    .line 4364
    invoke-static {v3, v2, v5}, Landroidx/fragment/app/t;->b(Landroidx/fragment/app/v;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v5

    .line 4366
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 4367
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 4738
    iget-object v9, v10, Landroidx/fragment/app/t$b;->a:Landroidx/fragment/app/Fragment;

    .line 4739
    iget-object v7, v10, Landroidx/fragment/app/t$b;->d:Landroidx/fragment/app/Fragment;

    if-eqz v9, :cond_1a

    if-nez v7, :cond_14

    goto/16 :goto_10

    .line 4745
    :cond_14
    iget-boolean v15, v10, Landroidx/fragment/app/t$b;->b:Z

    .line 4746
    invoke-virtual/range {v32 .. v32}, Landroidx/b/a;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_15

    move-object/from16 v21, v8

    move-object/from16 v14, v20

    goto :goto_d

    .line 4747
    :cond_15
    invoke-static {v3, v9, v7, v15}, Landroidx/fragment/app/t;->a(Landroidx/fragment/app/v;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v21, v8

    :goto_d
    move-object/from16 v1, v32

    .line 4749
    invoke-static {v3, v1, v14, v10}, Landroidx/fragment/app/t;->b(Landroidx/fragment/app/v;Landroidx/b/a;Ljava/lang/Object;Landroidx/fragment/app/t$b;)Landroidx/b/a;

    move-result-object v8

    .line 4752
    invoke-virtual {v1}, Landroidx/b/a;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_16

    move-object/from16 v22, v11

    move-object/from16 v11, v20

    goto :goto_e

    :cond_16
    move-object/from16 v22, v11

    .line 4755
    invoke-virtual {v8}, Landroidx/b/a;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object v11, v14

    :goto_e
    if-nez v4, :cond_17

    if-nez v5, :cond_17

    if-nez v11, :cond_17

    move-object/from16 v32, v1

    move-object/from16 v24, v12

    move-object/from16 v17, v20

    move-object/from16 v1, v21

    move/from16 v25, v30

    move/from16 v28, v31

    const/16 v27, 0x0

    move-object/from16 v30, v0

    move-object/from16 v21, v10

    goto/16 :goto_11

    .line 4763
    :cond_17
    invoke-static {v9, v7, v15, v8}, Landroidx/fragment/app/t;->a(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/b/a;)V

    if-eqz v11, :cond_19

    .line 4767
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 4768
    invoke-virtual {v3, v11, v6, v12}, Landroidx/fragment/app/v;->a(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    move-object/from16 v23, v7

    .line 4770
    iget-boolean v7, v10, Landroidx/fragment/app/t$b;->e:Z

    move-object/from16 v24, v9

    .line 4771
    iget-object v9, v10, Landroidx/fragment/app/t$b;->f:Landroidx/fragment/app/a;

    move-object/from16 v25, v10

    move-object v10, v14

    move-object v14, v3

    move/from16 v26, v15

    move-object v15, v11

    move-object/from16 v16, v5

    move-object/from16 v17, v8

    move/from16 v18, v7

    move-object/from16 v19, v9

    .line 4772
    invoke-static/range {v14 .. v19}, Landroidx/fragment/app/t;->a(Landroidx/fragment/app/v;Ljava/lang/Object;Ljava/lang/Object;Landroidx/b/a;ZLandroidx/fragment/app/a;)V

    if-eqz v4, :cond_18

    .line 4775
    invoke-virtual {v3, v4, v10}, Landroidx/fragment/app/v;->a(Ljava/lang/Object;Landroid/graphics/Rect;)V

    :cond_18
    move-object/from16 v19, v10

    goto :goto_f

    :cond_19
    move-object/from16 v23, v7

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    move/from16 v26, v15

    move-object/from16 v19, v20

    .line 4783
    :goto_f
    new-instance v15, Landroidx/fragment/app/t$6;

    move-object/from16 v16, v23

    move-object v7, v15

    move-object/from16 v14, v21

    move-object v8, v3

    move-object/from16 v17, v24

    move-object v9, v1

    move-object/from16 v21, v25

    move-object v10, v11

    move-object/from16 v23, v11

    move-object/from16 v11, v21

    move-object/from16 v24, v12

    move-object/from16 v12, v22

    move-object/from16 v32, v1

    move-object v1, v13

    move/from16 v25, v30

    move-object v13, v6

    move-object v1, v14

    const/16 v27, 0x0

    move-object/from16 v14, v17

    move-object/from16 v30, v0

    move-object v0, v15

    move/from16 v28, v31

    move-object/from16 v15, v16

    move/from16 v16, v26

    move-object/from16 v17, v24

    move-object/from16 v18, v4

    invoke-direct/range {v7 .. v19}, Landroidx/fragment/app/t$6;-><init>(Landroidx/fragment/app/v;Landroidx/b/a;Ljava/lang/Object;Landroidx/fragment/app/t$b;Ljava/util/ArrayList;Landroid/view/View;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V

    invoke-static {v1, v0}, Landroidx/core/view/s;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/s;

    move-object/from16 v17, v23

    goto :goto_11

    :cond_1a
    :goto_10
    move-object v1, v8

    move-object/from16 v21, v10

    move-object/from16 v22, v11

    move-object/from16 v24, v12

    move/from16 v25, v30

    move/from16 v28, v31

    const/16 v27, 0x0

    move-object/from16 v30, v0

    move-object/from16 v17, v20

    :goto_11
    if-nez v4, :cond_1c

    if-nez v17, :cond_1c

    if-eqz v5, :cond_1b

    goto :goto_12

    :cond_1b
    move-object/from16 v1, p7

    goto/16 :goto_17

    :cond_1c
    :goto_12
    move-object/from16 v0, v24

    .line 4378
    invoke-static {v3, v5, v2, v0, v6}, Landroidx/fragment/app/t;->a(Landroidx/fragment/app/v;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v19

    if-eqz v19, :cond_1e

    .line 4381
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1d

    goto :goto_13

    :cond_1d
    move-object/from16 v20, v5

    .line 4387
    :cond_1e
    :goto_13
    invoke-virtual {v3, v4, v6}, Landroidx/fragment/app/v;->b(Ljava/lang/Object;Landroid/view/View;)V

    move-object/from16 v8, v21

    .line 4389
    iget-boolean v13, v8, Landroidx/fragment/app/t$b;->b:Z

    move-object v8, v3

    move-object v9, v4

    move-object/from16 v10, v20

    move-object/from16 v11, v17

    move-object/from16 v12, v30

    invoke-static/range {v8 .. v13}, Landroidx/fragment/app/t;->a(Landroidx/fragment/app/v;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v5

    if-eqz v2, :cond_20

    if-eqz v19, :cond_20

    .line 4393
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gtz v7, :cond_1f

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_20

    .line 4394
    :cond_1f
    new-instance v0, Landroidx/core/os/a;

    invoke-direct {v0}, Landroidx/core/os/a;-><init>()V

    move-object v10, v1

    move-object/from16 v1, p7

    .line 4395
    invoke-interface {v1, v2, v0}, Landroidx/fragment/app/t$a;->a(Landroidx/fragment/app/Fragment;Landroidx/core/os/a;)V

    .line 4396
    new-instance v7, Landroidx/fragment/app/t$3;

    invoke-direct {v7, v1, v2, v0}, Landroidx/fragment/app/t$3;-><init>(Landroidx/fragment/app/t$a;Landroidx/fragment/app/Fragment;Landroidx/core/os/a;)V

    invoke-virtual {v3, v5, v0, v7}, Landroidx/fragment/app/v;->a(Ljava/lang/Object;Landroidx/core/os/a;Ljava/lang/Runnable;)V

    goto :goto_14

    :cond_20
    move-object v10, v1

    move-object/from16 v1, p7

    :goto_14
    if-eqz v5, :cond_23

    .line 4405
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v3

    move-object v12, v5

    move-object v13, v4

    move-object v14, v0

    move-object/from16 v15, v20

    move-object/from16 v16, v19

    move-object/from16 v18, v22

    .line 4406
    invoke-virtual/range {v11 .. v18}, Landroidx/fragment/app/v;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 5441
    new-instance v2, Landroidx/fragment/app/t$4;

    move-object v7, v2

    move-object v8, v4

    move-object v9, v3

    move-object v4, v10

    move-object v10, v6

    move-object/from16 v11, v30

    move-object/from16 v12, v22

    move-object v13, v0

    move-object/from16 v14, v19

    invoke-direct/range {v7 .. v15}, Landroidx/fragment/app/t$4;-><init>(Ljava/lang/Object;Landroidx/fragment/app/v;Landroid/view/View;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;)V

    invoke-static {v4, v2}, Landroidx/core/view/s;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/s;

    .line 6263
    new-instance v0, Landroidx/fragment/app/v$2;

    move-object/from16 v7, v22

    move-object/from16 v2, v32

    invoke-direct {v0, v3, v7, v2}, Landroidx/fragment/app/v$2;-><init>(Landroidx/fragment/app/v;Ljava/util/ArrayList;Ljava/util/Map;)V

    invoke-static {v4, v0}, Landroidx/core/view/s;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/s;

    .line 4413
    invoke-virtual {v3, v4, v5}, Landroidx/fragment/app/v;->a(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 6339
    new-instance v0, Landroidx/fragment/app/v$3;

    invoke-direct {v0, v3, v7, v2}, Landroidx/fragment/app/v$3;-><init>(Landroidx/fragment/app/v;Ljava/util/ArrayList;Ljava/util/Map;)V

    invoke-static {v4, v0}, Landroidx/core/view/s;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/s;

    goto :goto_17

    :cond_21
    :goto_15
    move-object v1, v13

    move/from16 v25, v30

    move/from16 v28, v31

    goto :goto_16

    :cond_22
    move-object v1, v4

    move-object/from16 v29, v5

    move/from16 v25, v13

    move/from16 v28, v15

    :goto_16
    const/16 v27, 0x0

    :cond_23
    :goto_17
    add-int/lit8 v13, v25, 0x1

    move-object/from16 v0, p2

    move/from16 v2, p5

    move/from16 v3, p6

    move-object v4, v1

    move/from16 v15, v28

    move-object/from16 v5, v29

    move-object/from16 v1, p3

    goto/16 :goto_2

    :cond_24
    return-void
.end method

.method static a(Landroidx/b/a;Landroidx/b/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/b/a<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/b/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1007
    invoke-virtual {p0}, Landroidx/b/a;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 1008
    invoke-virtual {p0, v0}, Landroidx/b/a;->c(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1009
    invoke-virtual {p1, v1}, Landroidx/b/a;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1010
    invoke-virtual {p0, v0}, Landroidx/b/a;->d(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static a(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/b/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Landroidx/fragment/app/Fragment;",
            "Z",
            "Landroidx/b/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1030
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Landroidx/core/app/n;

    move-result-object p0

    goto :goto_0

    .line 1031
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Landroidx/core/app/n;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    .line 1033
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1034
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 p2, 0x0

    if-nez p3, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 1035
    :cond_1
    invoke-virtual {p3}, Landroidx/b/a;->size()I

    move-result v0

    :goto_1
    if-ge p2, v0, :cond_2

    .line 1037
    invoke-virtual {p3, p2}, Landroidx/b/a;->b(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1038
    invoke-virtual {p3, p2}, Landroidx/b/a;->c(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private static a(Landroidx/fragment/app/a;Landroid/util/SparseArray;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/a;",
            "Landroid/util/SparseArray<",
            "Landroidx/fragment/app/t$b;",
            ">;Z)V"
        }
    .end annotation

    .line 1125
    iget-object v0, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 1127
    iget-object v3, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/s$a;

    .line 1128
    invoke-static {p0, v3, p1, v1, p2}, Landroidx/fragment/app/t;->a(Landroidx/fragment/app/a;Landroidx/fragment/app/s$a;Landroid/util/SparseArray;ZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static a(Landroidx/fragment/app/a;Landroidx/fragment/app/s$a;Landroid/util/SparseArray;ZZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/a;",
            "Landroidx/fragment/app/s$a;",
            "Landroid/util/SparseArray<",
            "Landroidx/fragment/app/t$b;",
            ">;ZZ)V"
        }
    .end annotation

    .line 1173
    iget-object v0, p1, Landroidx/fragment/app/s$a;->b:Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_0

    return-void

    .line 1177
    :cond_0
    iget v1, v0, Landroidx/fragment/app/Fragment;->mContainerId:I

    if-nez v1, :cond_1

    return-void

    :cond_1
    if-eqz p3, :cond_2

    .line 1181
    sget-object v2, Landroidx/fragment/app/t;->c:[I

    iget p1, p1, Landroidx/fragment/app/s$a;->a:I

    aget p1, v2, p1

    goto :goto_0

    :cond_2
    iget p1, p1, Landroidx/fragment/app/s$a;->a:I

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v3, :cond_a

    const/4 v4, 0x3

    if-eq p1, v4, :cond_7

    const/4 v4, 0x4

    if-eq p1, v4, :cond_5

    const/4 v4, 0x5

    if-eq p1, v4, :cond_3

    const/4 v4, 0x6

    if-eq p1, v4, :cond_7

    const/4 v4, 0x7

    if-eq p1, v4, :cond_a

    const/4 p1, 0x0

    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x0

    goto/16 :goto_7

    :cond_3
    if-eqz p4, :cond_4

    .line 1189
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    if-eqz p1, :cond_c

    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez p1, :cond_c

    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz p1, :cond_c

    goto :goto_5

    .line 1191
    :cond_4
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mHidden:Z

    goto :goto_6

    :cond_5
    if-eqz p4, :cond_6

    .line 1206
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    if-eqz p1, :cond_8

    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz p1, :cond_8

    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz p1, :cond_8

    :goto_2
    goto :goto_3

    .line 1208
    :cond_6
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz p1, :cond_8

    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez p1, :cond_8

    goto :goto_2

    :cond_7
    if-eqz p4, :cond_9

    .line 1215
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-nez p1, :cond_8

    iget-object p1, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz p1, :cond_8

    iget-object p1, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 1216
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_8

    iget p1, v0, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    const/4 v4, 0x0

    cmpl-float p1, p1, v4

    if-ltz p1, :cond_8

    :goto_3
    const/4 p1, 0x1

    goto :goto_4

    :cond_8
    const/4 p1, 0x0

    goto :goto_4

    .line 1219
    :cond_9
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz p1, :cond_8

    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez p1, :cond_8

    goto :goto_3

    :goto_4
    move v4, p1

    const/4 p1, 0x1

    const/4 v3, 0x0

    goto :goto_7

    :cond_a
    if-eqz p4, :cond_b

    .line 1198
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    goto :goto_6

    .line 1200
    :cond_b
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-nez p1, :cond_c

    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez p1, :cond_c

    :goto_5
    const/4 p1, 0x1

    goto :goto_6

    :cond_c
    const/4 p1, 0x0

    :goto_6
    move v2, p1

    const/4 p1, 0x0

    goto :goto_1

    .line 1224
    :goto_7
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/t$b;

    if-eqz v2, :cond_d

    .line 1227
    invoke-static {v5, p2, v1}, Landroidx/fragment/app/t;->a(Landroidx/fragment/app/t$b;Landroid/util/SparseArray;I)Landroidx/fragment/app/t$b;

    move-result-object v5

    .line 1228
    iput-object v0, v5, Landroidx/fragment/app/t$b;->a:Landroidx/fragment/app/Fragment;

    .line 1229
    iput-boolean p3, v5, Landroidx/fragment/app/t$b;->b:Z

    .line 1230
    iput-object p0, v5, Landroidx/fragment/app/t$b;->c:Landroidx/fragment/app/a;

    :cond_d
    const/4 v2, 0x0

    if-nez p4, :cond_f

    if-eqz v3, :cond_f

    if-eqz v5, :cond_e

    .line 1233
    iget-object v3, v5, Landroidx/fragment/app/t$b;->d:Landroidx/fragment/app/Fragment;

    if-ne v3, v0, :cond_e

    .line 1234
    iput-object v2, v5, Landroidx/fragment/app/t$b;->d:Landroidx/fragment/app/Fragment;

    .line 1237
    :cond_e
    iget-boolean v3, p0, Landroidx/fragment/app/a;->s:Z

    if-nez v3, :cond_f

    .line 1242
    iget-object v3, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/FragmentManager;

    .line 1244
    invoke-virtual {v3, v0}, Landroidx/fragment/app/FragmentManager;->g(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/p;

    move-result-object v6

    .line 10820
    iget-object v7, v3, Landroidx/fragment/app/FragmentManager;->b:Landroidx/fragment/app/r;

    .line 1245
    invoke-virtual {v7, v6}, Landroidx/fragment/app/r;->a(Landroidx/fragment/app/p;)V

    .line 1246
    invoke-virtual {v3, v0}, Landroidx/fragment/app/FragmentManager;->e(Landroidx/fragment/app/Fragment;)V

    :cond_f
    if-eqz v4, :cond_11

    if-eqz v5, :cond_10

    .line 1249
    iget-object v3, v5, Landroidx/fragment/app/t$b;->d:Landroidx/fragment/app/Fragment;

    if-nez v3, :cond_11

    .line 1251
    :cond_10
    invoke-static {v5, p2, v1}, Landroidx/fragment/app/t;->a(Landroidx/fragment/app/t$b;Landroid/util/SparseArray;I)Landroidx/fragment/app/t$b;

    move-result-object v5

    .line 1252
    iput-object v0, v5, Landroidx/fragment/app/t$b;->d:Landroidx/fragment/app/Fragment;

    .line 1253
    iput-boolean p3, v5, Landroidx/fragment/app/t$b;->e:Z

    .line 1254
    iput-object p0, v5, Landroidx/fragment/app/t$b;->f:Landroidx/fragment/app/a;

    :cond_11
    if-nez p4, :cond_12

    if-eqz p1, :cond_12

    if-eqz v5, :cond_12

    .line 1257
    iget-object p0, v5, Landroidx/fragment/app/t$b;->a:Landroidx/fragment/app/Fragment;

    if-ne p0, v0, :cond_12

    .line 1259
    iput-object v2, v5, Landroidx/fragment/app/t$b;->a:Landroidx/fragment/app/Fragment;

    :cond_12
    return-void
.end method

.method private static a(Landroidx/fragment/app/v;Ljava/lang/Object;Ljava/lang/Object;Landroidx/b/a;ZLandroidx/fragment/app/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/v;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Landroidx/b/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z",
            "Landroidx/fragment/app/a;",
            ")V"
        }
    .end annotation

    .line 986
    iget-object v0, p5, Landroidx/fragment/app/a;->q:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p5, Landroidx/fragment/app/a;->q:Ljava/util/ArrayList;

    .line 987
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 989
    iget-object p4, p5, Landroidx/fragment/app/a;->r:Ljava/util/ArrayList;

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    goto :goto_0

    .line 990
    :cond_0
    iget-object p4, p5, Landroidx/fragment/app/a;->q:Ljava/util/ArrayList;

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 991
    :goto_0
    invoke-virtual {p3, p4}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    .line 992
    invoke-virtual {p0, p1, p3}, Landroidx/fragment/app/v;->a(Ljava/lang/Object;Landroid/view/View;)V

    if-eqz p2, :cond_1

    .line 995
    invoke-virtual {p0, p2, p3}, Landroidx/fragment/app/v;->a(Ljava/lang/Object;Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method static a(Ljava/util/ArrayList;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 1077
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 1078
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1079
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static a(Ljava/util/ArrayList;Landroidx/b/a;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroidx/b/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 695
    invoke-virtual {p1}, Landroidx/b/a;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 696
    invoke-virtual {p1, v0}, Landroidx/b/a;->c(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 697
    invoke-static {v1}, Landroidx/core/view/v;->p(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 698
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static a(Landroidx/fragment/app/v;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/v;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 518
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 519
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroidx/fragment/app/v;->a(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static b(Landroidx/fragment/app/v;Landroidx/b/a;Ljava/lang/Object;Landroidx/fragment/app/t$b;)Landroidx/b/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/v;",
            "Landroidx/b/a<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Landroidx/fragment/app/t$b;",
            ")",
            "Landroidx/b/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 831
    invoke-virtual {p1}, Landroidx/b/a;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    if-nez p2, :cond_0

    goto :goto_3

    .line 835
    :cond_0
    iget-object p2, p3, Landroidx/fragment/app/t$b;->d:Landroidx/fragment/app/Fragment;

    .line 836
    new-instance v0, Landroidx/b/a;

    invoke-direct {v0}, Landroidx/b/a;-><init>()V

    .line 837
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/v;->a(Ljava/util/Map;Landroid/view/View;)V

    .line 841
    iget-object p0, p3, Landroidx/fragment/app/t$b;->f:Landroidx/fragment/app/a;

    .line 842
    iget-boolean p3, p3, Landroidx/fragment/app/t$b;->e:Z

    if-eqz p3, :cond_1

    .line 843
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Landroidx/core/app/n;

    move-result-object p2

    .line 844
    iget-object p0, p0, Landroidx/fragment/app/a;->r:Ljava/util/ArrayList;

    goto :goto_0

    .line 846
    :cond_1
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getExitTransitionCallback()Landroidx/core/app/n;

    move-result-object p2

    .line 847
    iget-object p0, p0, Landroidx/fragment/app/a;->q:Ljava/util/ArrayList;

    :goto_0
    if-eqz p0, :cond_2

    .line 7164
    invoke-static {v0, p0}, Landroidx/b/f;->a(Ljava/util/Map;Ljava/util/Collection;)Z

    :cond_2
    if-eqz p2, :cond_5

    .line 855
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_1
    if-ltz p2, :cond_6

    .line 856
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 857
    invoke-virtual {v0, p3}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_3

    .line 859
    invoke-virtual {p1, p3}, Landroidx/b/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 860
    :cond_3
    invoke-static {v1}, Landroidx/core/view/v;->p(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 861
    invoke-virtual {p1, p3}, Landroidx/b/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 862
    invoke-static {v1}, Landroidx/core/view/v;->p(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p3}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_2
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 866
    :cond_5
    invoke-virtual {v0}, Landroidx/b/a;->keySet()Ljava/util/Set;

    move-result-object p0

    .line 8164
    invoke-static {p1, p0}, Landroidx/b/f;->a(Ljava/util/Map;Ljava/util/Collection;)Z

    :cond_6
    return-object v0

    .line 832
    :cond_7
    :goto_3
    invoke-virtual {p1}, Landroidx/b/a;->clear()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static b(Landroidx/fragment/app/v;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    .line 571
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getReturnTransition()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 572
    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object p1

    .line 570
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/v;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroidx/fragment/app/a;Landroid/util/SparseArray;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/a;",
            "Landroid/util/SparseArray<",
            "Landroidx/fragment/app/t$b;",
            ">;Z)V"
        }
    .end annotation

    .line 1142
    iget-object v0, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/FragmentManager;

    .line 10815
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->m:Landroidx/fragment/app/e;

    .line 1142
    invoke-virtual {v0}, Landroidx/fragment/app/e;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1145
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 1147
    iget-object v2, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/s$a;

    .line 1148
    invoke-static {p0, v2, p1, v1, p2}, Landroidx/fragment/app/t;->a(Landroidx/fragment/app/a;Landroidx/fragment/app/s$a;Landroid/util/SparseArray;ZZ)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method
