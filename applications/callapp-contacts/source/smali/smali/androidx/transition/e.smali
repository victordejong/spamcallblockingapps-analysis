.class public Landroidx/transition/e;
.super Landroidx/fragment/app/v;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Landroidx/fragment/app/v;-><init>()V

    return-void
.end method

.method private static a(Landroidx/transition/Transition;)Z
    .locals 1

    .line 4412
    iget-object v0, p0, Landroidx/transition/Transition;->c:Ljava/util/ArrayList;

    .line 128
    invoke-static {v0}, Landroidx/transition/e;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4441
    iget-object v0, p0, Landroidx/transition/Transition;->e:Ljava/util/ArrayList;

    .line 129
    invoke-static {v0}, Landroidx/transition/e;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4456
    iget-object p0, p0, Landroidx/transition/Transition;->f:Ljava/util/ArrayList;

    .line 130
    invoke-static {p0}, Landroidx/transition/e;->a(Ljava/util/List;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 136
    new-instance v0, Landroidx/transition/TransitionSet;

    invoke-direct {v0}, Landroidx/transition/TransitionSet;-><init>()V

    if-eqz p1, :cond_0

    .line 138
    check-cast p1, Landroidx/transition/Transition;

    invoke-virtual {v0, p1}, Landroidx/transition/TransitionSet;->a(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    :cond_0
    if-eqz p2, :cond_1

    .line 141
    check-cast p2, Landroidx/transition/Transition;

    invoke-virtual {v0, p2}, Landroidx/transition/TransitionSet;->a(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    :cond_1
    if-eqz p3, :cond_2

    .line 144
    check-cast p3, Landroidx/transition/Transition;

    invoke-virtual {v0, p3}, Landroidx/transition/TransitionSet;->a(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    :cond_2
    return-object v0
.end method

.method public final a(Landroid/view/ViewGroup;Ljava/lang/Object;)V
    .locals 0

    .line 223
    check-cast p2, Landroidx/transition/Transition;

    invoke-static {p1, p2}, Landroidx/transition/u;->a(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 351
    check-cast p1, Landroidx/transition/Transition;

    .line 352
    new-instance v0, Landroidx/transition/e$6;

    invoke-direct {v0, p0, p2}, Landroidx/transition/e$6;-><init>(Landroidx/transition/e;Landroid/graphics/Rect;)V

    invoke-virtual {p1, v0}, Landroidx/transition/Transition;->a(Landroidx/transition/Transition$b;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Object;Landroid/view/View;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 89
    check-cast p1, Landroidx/transition/Transition;

    .line 90
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 91
    invoke-static {p2, v0}, Landroidx/transition/e;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 93
    new-instance p2, Landroidx/transition/e$1;

    invoke-direct {p2, p0, v0}, Landroidx/transition/e$1;-><init>(Landroidx/transition/e;Landroid/graphics/Rect;)V

    invoke-virtual {p1, p2}, Landroidx/transition/Transition;->a(Landroidx/transition/Transition$b;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 73
    check-cast p1, Landroidx/transition/TransitionSet;

    .line 2426
    iget-object v0, p1, Landroidx/transition/Transition;->d:Ljava/util/ArrayList;

    .line 75
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 76
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 78
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 79
    invoke-static {v0, v3}, Landroidx/transition/e;->a(Ljava/util/List;Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 81
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    invoke-virtual {p0, p1, p3}, Landroidx/transition/e;->a(Ljava/lang/Object;Ljava/util/ArrayList;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;Landroidx/core/os/a;Ljava/lang/Runnable;)V
    .locals 1

    .line 267
    check-cast p1, Landroidx/transition/Transition;

    .line 268
    new-instance v0, Landroidx/transition/e$4;

    invoke-direct {v0, p0, p1}, Landroidx/transition/e$4;-><init>(Landroidx/transition/e;Landroidx/transition/Transition;)V

    invoke-virtual {p2, v0}, Landroidx/core/os/a;->a(Landroidx/core/os/a$a;)V

    .line 274
    new-instance p2, Landroidx/transition/e$5;

    invoke-direct {p2, p0, p3}, Landroidx/transition/e$5;-><init>(Landroidx/transition/e;Ljava/lang/Runnable;)V

    invoke-virtual {p1, p2}, Landroidx/transition/Transition;->a(Landroidx/transition/Transition$c;)Landroidx/transition/Transition;

    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 231
    move-object v0, p1

    check-cast v0, Landroidx/transition/Transition;

    .line 232
    new-instance v9, Landroidx/transition/e$3;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Landroidx/transition/e$3;-><init>(Landroidx/transition/e;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v9}, Landroidx/transition/Transition;->a(Landroidx/transition/Transition$c;)Landroidx/transition/Transition;

    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 104
    check-cast p1, Landroidx/transition/Transition;

    if-nez p1, :cond_0

    return-void

    .line 108
    :cond_0
    instance-of v0, p1, Landroidx/transition/TransitionSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 109
    check-cast p1, Landroidx/transition/TransitionSet;

    .line 3211
    iget-object v0, p1, Landroidx/transition/TransitionSet;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 112
    invoke-virtual {p1, v1}, Landroidx/transition/TransitionSet;->b(I)Landroidx/transition/Transition;

    move-result-object v2

    .line 113
    invoke-virtual {p0, v2, p2}, Landroidx/transition/e;->a(Ljava/lang/Object;Ljava/util/ArrayList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 115
    :cond_2
    invoke-static {p1}, Landroidx/transition/e;->a(Landroidx/transition/Transition;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3426
    iget-object v0, p1, Landroidx/transition/Transition;->d:Ljava/util/ArrayList;

    .line 117
    invoke-static {v0}, Landroidx/transition/e;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 119
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_3

    .line 121
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p1, v2}, Landroidx/transition/Transition;->c(Landroid/view/View;)Landroidx/transition/Transition;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 297
    check-cast p1, Landroidx/transition/TransitionSet;

    if-eqz p1, :cond_0

    .line 5426
    iget-object v0, p1, Landroidx/transition/Transition;->d:Ljava/util/ArrayList;

    .line 299
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6426
    iget-object v0, p1, Landroidx/transition/Transition;->d:Ljava/util/ArrayList;

    .line 300
    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 301
    invoke-virtual {p0, p1, p2, p3}, Landroidx/transition/e;->b(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Object;)Z
    .locals 0

    .line 48
    instance-of p1, p1, Landroidx/transition/Transition;

    return p1
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_0

    .line 55
    check-cast p1, Landroidx/transition/Transition;

    invoke-virtual {p1}, Landroidx/transition/Transition;->k()Landroidx/transition/Transition;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 196
    check-cast p1, Landroidx/transition/Transition;

    .line 197
    check-cast p2, Landroidx/transition/Transition;

    .line 198
    check-cast p3, Landroidx/transition/Transition;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 200
    new-instance v0, Landroidx/transition/TransitionSet;

    invoke-direct {v0}, Landroidx/transition/TransitionSet;-><init>()V

    .line 201
    invoke-virtual {v0, p1}, Landroidx/transition/TransitionSet;->a(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    move-result-object p1

    .line 202
    invoke-virtual {p1, p2}, Landroidx/transition/TransitionSet;->a(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    move-result-object p1

    const/4 p2, 0x1

    .line 203
    invoke-virtual {p1, p2}, Landroidx/transition/TransitionSet;->a(I)Landroidx/transition/TransitionSet;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    move-object p1, p2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p3, :cond_4

    .line 210
    new-instance p2, Landroidx/transition/TransitionSet;

    invoke-direct {p2}, Landroidx/transition/TransitionSet;-><init>()V

    if-eqz p1, :cond_3

    .line 212
    invoke-virtual {p2, p1}, Landroidx/transition/TransitionSet;->a(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    .line 214
    :cond_3
    invoke-virtual {p2, p3}, Landroidx/transition/TransitionSet;->a(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    return-object p2

    :cond_4
    return-object p1
.end method

.method public final b(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 335
    check-cast p1, Landroidx/transition/Transition;

    .line 336
    invoke-virtual {p1, p2}, Landroidx/transition/Transition;->c(Landroid/view/View;)Landroidx/transition/Transition;

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 152
    check-cast p1, Landroidx/transition/Transition;

    .line 153
    new-instance v0, Landroidx/transition/e$2;

    invoke-direct {v0, p0, p2, p3}, Landroidx/transition/e$2;-><init>(Landroidx/transition/e;Landroid/view/View;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v0}, Landroidx/transition/Transition;->a(Landroidx/transition/Transition$c;)Landroidx/transition/Transition;

    return-void
.end method

.method public final b(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 308
    check-cast p1, Landroidx/transition/Transition;

    .line 309
    instance-of v0, p1, Landroidx/transition/TransitionSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 310
    check-cast p1, Landroidx/transition/TransitionSet;

    .line 7211
    iget-object v0, p1, Landroidx/transition/TransitionSet;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 313
    invoke-virtual {p1, v1}, Landroidx/transition/TransitionSet;->b(I)Landroidx/transition/Transition;

    move-result-object v2

    .line 314
    invoke-virtual {p0, v2, p2, p3}, Landroidx/transition/e;->b(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 316
    :cond_1
    invoke-static {p1}, Landroidx/transition/e;->a(Landroidx/transition/Transition;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 7426
    iget-object v0, p1, Landroidx/transition/Transition;->d:Ljava/util/ArrayList;

    .line 318
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 319
    invoke-interface {v0, p2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p3, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    .line 321
    :cond_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_3

    .line 323
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p1, v2}, Landroidx/transition/Transition;->c(Landroid/view/View;)Landroidx/transition/Transition;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 325
    :cond_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_2
    if-ltz p3, :cond_4

    .line 326
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroidx/transition/Transition;->d(Landroid/view/View;)Landroidx/transition/Transition;

    add-int/lit8 p3, p3, -0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 65
    :cond_0
    new-instance v0, Landroidx/transition/TransitionSet;

    invoke-direct {v0}, Landroidx/transition/TransitionSet;-><init>()V

    .line 66
    check-cast p1, Landroidx/transition/Transition;

    invoke-virtual {v0, p1}, Landroidx/transition/TransitionSet;->a(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    return-object v0
.end method

.method public final c(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 343
    check-cast p1, Landroidx/transition/Transition;

    .line 344
    invoke-virtual {p1, p2}, Landroidx/transition/Transition;->d(Landroid/view/View;)Landroidx/transition/Transition;

    :cond_0
    return-void
.end method
