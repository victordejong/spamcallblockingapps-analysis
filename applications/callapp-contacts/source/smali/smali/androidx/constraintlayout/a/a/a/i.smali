.class public final Landroidx/constraintlayout/a/a/a/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroidx/constraintlayout/a/a/e;ILjava/util/ArrayList;Landroidx/constraintlayout/a/a/a/o;)Landroidx/constraintlayout/a/a/a/o;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/a/a/e;",
            "I",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/a/a/a/o;",
            ">;",
            "Landroidx/constraintlayout/a/a/a/o;",
            ")",
            "Landroidx/constraintlayout/a/a/a/o;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 369
    iget v0, p0, Landroidx/constraintlayout/a/a/e;->aG:I

    goto :goto_0

    .line 371
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/a/a/e;->aH:I

    :goto_0
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    if-eqz p3, :cond_1

    .line 377
    iget v3, p3, Landroidx/constraintlayout/a/a/a/o;->c:I

    if-eq v0, v3, :cond_4

    :cond_1
    const/4 v3, 0x0

    .line 382
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 383
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/a/a/a/o;

    .line 1049
    iget v5, v4, Landroidx/constraintlayout/a/a/a/o;->c:I

    if-ne v5, v0, :cond_3

    if-eqz p3, :cond_2

    .line 389
    invoke-virtual {p3, p1, v4}, Landroidx/constraintlayout/a/a/a/o;->a(ILandroidx/constraintlayout/a/a/a/o;)V

    .line 390
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    move-object p3, v4

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    if-eq v0, v2, :cond_5

    return-object p3

    :cond_5
    :goto_2
    if-nez p3, :cond_9

    .line 400
    instance-of v0, p0, Landroidx/constraintlayout/a/a/j;

    if-eqz v0, :cond_7

    .line 401
    move-object v0, p0

    check-cast v0, Landroidx/constraintlayout/a/a/j;

    .line 402
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/a/a/j;->o(I)I

    move-result v0

    if-eq v0, v2, :cond_7

    const/4 v2, 0x0

    .line 404
    :goto_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 405
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/a/a/a/o;

    .line 2049
    iget v4, v3, Landroidx/constraintlayout/a/a/a/o;->c:I

    if-ne v4, v0, :cond_6

    move-object p3, v3

    goto :goto_4

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    if-nez p3, :cond_8

    .line 414
    new-instance p3, Landroidx/constraintlayout/a/a/a/o;

    invoke-direct {p3, p1}, Landroidx/constraintlayout/a/a/a/o;-><init>(I)V

    .line 419
    :cond_8
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    :cond_9
    invoke-virtual {p3, p0}, Landroidx/constraintlayout/a/a/a/o;->a(Landroidx/constraintlayout/a/a/e;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 422
    instance-of v0, p0, Landroidx/constraintlayout/a/a/h;

    if-eqz v0, :cond_b

    .line 423
    move-object v0, p0

    check-cast v0, Landroidx/constraintlayout/a/a/h;

    .line 2102
    iget-object v2, v0, Landroidx/constraintlayout/a/a/h;->d:Landroidx/constraintlayout/a/a/d;

    .line 2116
    iget v0, v0, Landroidx/constraintlayout/a/a/h;->aI:I

    if-nez v0, :cond_a

    const/4 v1, 0x1

    .line 424
    :cond_a
    invoke-virtual {v2, v1, p2, p3}, Landroidx/constraintlayout/a/a/d;->a(ILjava/util/ArrayList;Landroidx/constraintlayout/a/a/a/o;)V

    :cond_b
    if-nez p1, :cond_c

    .line 3049
    iget v0, p3, Landroidx/constraintlayout/a/a/a/o;->c:I

    .line 427
    iput v0, p0, Landroidx/constraintlayout/a/a/e;->aG:I

    .line 431
    iget-object v0, p0, Landroidx/constraintlayout/a/a/e;->H:Landroidx/constraintlayout/a/a/d;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/constraintlayout/a/a/d;->a(ILjava/util/ArrayList;Landroidx/constraintlayout/a/a/a/o;)V

    .line 432
    iget-object v0, p0, Landroidx/constraintlayout/a/a/e;->J:Landroidx/constraintlayout/a/a/d;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/constraintlayout/a/a/d;->a(ILjava/util/ArrayList;Landroidx/constraintlayout/a/a/a/o;)V

    goto :goto_5

    .line 4049
    :cond_c
    iget v0, p3, Landroidx/constraintlayout/a/a/a/o;->c:I

    .line 434
    iput v0, p0, Landroidx/constraintlayout/a/a/e;->aH:I

    .line 438
    iget-object v0, p0, Landroidx/constraintlayout/a/a/e;->I:Landroidx/constraintlayout/a/a/d;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/constraintlayout/a/a/d;->a(ILjava/util/ArrayList;Landroidx/constraintlayout/a/a/a/o;)V

    .line 439
    iget-object v0, p0, Landroidx/constraintlayout/a/a/e;->L:Landroidx/constraintlayout/a/a/d;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/constraintlayout/a/a/d;->a(ILjava/util/ArrayList;Landroidx/constraintlayout/a/a/a/o;)V

    .line 440
    iget-object v0, p0, Landroidx/constraintlayout/a/a/e;->K:Landroidx/constraintlayout/a/a/d;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/constraintlayout/a/a/d;->a(ILjava/util/ArrayList;Landroidx/constraintlayout/a/a/a/o;)V

    .line 442
    :goto_5
    iget-object p0, p0, Landroidx/constraintlayout/a/a/e;->O:Landroidx/constraintlayout/a/a/d;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/constraintlayout/a/a/d;->a(ILjava/util/ArrayList;Landroidx/constraintlayout/a/a/a/o;)V

    :cond_d
    return-object p3
.end method

.method public static a(Ljava/util/ArrayList;I)Landroidx/constraintlayout/a/a/a/o;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/a/a/a/o;",
            ">;I)",
            "Landroidx/constraintlayout/a/a/a/o;"
        }
    .end annotation

    .line 356
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 358
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/a/a/a/o;

    .line 359
    iget v3, v2, Landroidx/constraintlayout/a/a/a/o;->c:I

    if-ne p1, v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroidx/constraintlayout/a/a/e$a;Landroidx/constraintlayout/a/a/e$a;Landroidx/constraintlayout/a/a/e$a;Landroidx/constraintlayout/a/a/e$a;)Z
    .locals 3

    .line 48
    sget-object v0, Landroidx/constraintlayout/a/a/e$a;->FIXED:Landroidx/constraintlayout/a/a/e$a;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p2, v0, :cond_1

    sget-object v0, Landroidx/constraintlayout/a/a/e$a;->WRAP_CONTENT:Landroidx/constraintlayout/a/a/e$a;

    if-eq p2, v0, :cond_1

    sget-object v0, Landroidx/constraintlayout/a/a/e$a;->MATCH_PARENT:Landroidx/constraintlayout/a/a/e$a;

    if-ne p2, v0, :cond_0

    sget-object p2, Landroidx/constraintlayout/a/a/e$a;->WRAP_CONTENT:Landroidx/constraintlayout/a/a/e$a;

    if-eq p0, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 50
    :goto_1
    sget-object p2, Landroidx/constraintlayout/a/a/e$a;->FIXED:Landroidx/constraintlayout/a/a/e$a;

    if-eq p3, p2, :cond_3

    sget-object p2, Landroidx/constraintlayout/a/a/e$a;->WRAP_CONTENT:Landroidx/constraintlayout/a/a/e$a;

    if-eq p3, p2, :cond_3

    sget-object p2, Landroidx/constraintlayout/a/a/e$a;->MATCH_PARENT:Landroidx/constraintlayout/a/a/e$a;

    if-ne p3, p2, :cond_2

    sget-object p2, Landroidx/constraintlayout/a/a/e$a;->WRAP_CONTENT:Landroidx/constraintlayout/a/a/e$a;

    if-eq p1, p2, :cond_2

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 p1, 0x1

    :goto_3
    if-nez p0, :cond_5

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    return v1

    :cond_5
    :goto_4
    return v2
.end method
