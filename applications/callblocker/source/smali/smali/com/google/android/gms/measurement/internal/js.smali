.class public final Lcom/google/android/gms/measurement/internal/js;
.super Lcom/google/android/gms/measurement/internal/jl;
.source "com.google.android.gms:play-services-measurement@@17.4.2"


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/jo;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/jl;-><init>(Lcom/google/android/gms/measurement/internal/jo;)V

    .line 2
    return-void
.end method

.method static a(Lcom/google/android/gms/internal/measurement/ao$g$a;Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 538
    if-nez p0, :cond_1

    move v0, v1

    .line 544
    :cond_0
    :goto_0
    return v0

    .line 540
    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ao$g$a;->e()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 541
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/ao$g$a;->d(I)Lcom/google/android/gms/internal/measurement/ao$k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ao$k;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 543
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 544
    goto :goto_0
.end method

.method static a(Lcom/google/android/gms/internal/measurement/ao$c;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$e;
    .locals 3

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ao$c;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$e;

    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 31
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Lcom/google/android/gms/internal/measurement/fm;[B)Lcom/google/android/gms/internal/measurement/fm;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Builder::",
            "Lcom/google/android/gms/internal/measurement/fm;",
            ">(TBuilder;[B)TBuilder;"
        }
    .end annotation

    .prologue
    .line 534
    invoke-static {}, Lcom/google/android/gms/internal/measurement/dp;->b()Lcom/google/android/gms/internal/measurement/dp;

    move-result-object v0

    .line 535
    if-eqz v0, :cond_0

    .line 536
    invoke-interface {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/fm;->a([BLcom/google/android/gms/internal/measurement/dp;)Lcom/google/android/gms/internal/measurement/fm;

    move-result-object v0

    .line 537
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/measurement/fm;->a([B)Lcom/google/android/gms/internal/measurement/fm;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(ZZZ)Ljava/lang/String;
    .locals 2

    .prologue
    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    if-eqz p0, :cond_0

    .line 257
    const-string/jumbo v1, "Dynamic "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    :cond_0
    if-eqz p1, :cond_1

    .line 259
    const-string/jumbo v1, "Sequence "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    :cond_1
    if-eqz p2, :cond_2

    .line 261
    const-string/jumbo v1, "Session-Scoped "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/util/BitSet;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/BitSet;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 445
    invoke-virtual {p0}, Ljava/util/BitSet;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3f

    div-int/lit8 v5, v0, 0x40

    .line 446
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    move v4, v3

    .line 447
    :goto_0
    if-ge v4, v5, :cond_2

    .line 448
    const-wide/16 v0, 0x0

    move v2, v3

    .line 449
    :goto_1
    const/16 v7, 0x40

    if-ge v2, v7, :cond_1

    .line 450
    shl-int/lit8 v7, v4, 0x6

    add-int/2addr v7, v2

    invoke-virtual {p0}, Ljava/util/BitSet;->length()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 451
    shl-int/lit8 v7, v4, 0x6

    add-int/2addr v7, v2

    invoke-virtual {p0, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 452
    const-wide/16 v8, 0x1

    shl-long/2addr v8, v2

    or-long/2addr v0, v8

    .line 453
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 454
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 456
    :cond_2
    return-object v6
.end method

.method private static a([Landroid/os/Bundle;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/measurement/ao$e;",
            ">;"
        }
    .end annotation

    .prologue
    .line 545
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 546
    array-length v3, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_5

    aget-object v4, p0, v1

    .line 547
    if-eqz v4, :cond_4

    .line 548
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ao$e;->k()Lcom/google/android/gms/internal/measurement/ao$e$a;

    move-result-object v5

    .line 549
    invoke-virtual {v4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 550
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ao$e;->k()Lcom/google/android/gms/internal/measurement/ao$e$a;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/measurement/ao$e$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$e$a;

    move-result-object v7

    .line 551
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 552
    instance-of v8, v0, Ljava/lang/Long;

    if-eqz v8, :cond_1

    .line 553
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/internal/measurement/ao$e$a;->a(J)Lcom/google/android/gms/internal/measurement/ao$e$a;

    .line 558
    :goto_2
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/measurement/ao$e$a;->a(Lcom/google/android/gms/internal/measurement/ao$e$a;)Lcom/google/android/gms/internal/measurement/ao$e$a;

    goto :goto_1

    .line 554
    :cond_1
    instance-of v8, v0, Ljava/lang/String;

    if-eqz v8, :cond_2

    .line 555
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/measurement/ao$e$a;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$e$a;

    goto :goto_2

    .line 556
    :cond_2
    instance-of v8, v0, Ljava/lang/Double;

    if-eqz v8, :cond_0

    .line 557
    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/internal/measurement/ao$e$a;->a(D)Lcom/google/android/gms/internal/measurement/ao$e$a;

    goto :goto_2

    .line 560
    :cond_3
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/ao$e$a;->d()I

    move-result v0

    if-lez v0, :cond_4

    .line 561
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/ed$b;->u()Lcom/google/android/gms/internal/measurement/fn;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$e;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 562
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 563
    :cond_5
    return-object v2
.end method

.method private static a(Ljava/lang/StringBuilder;I)V
    .locals 2

    .prologue
    .line 407
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 408
    const-string/jumbo v1, "  "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 410
    :cond_0
    return-void
.end method

.method private final a(Ljava/lang/StringBuilder;ILcom/google/android/gms/internal/measurement/ag$c;)V
    .locals 4

    .prologue
    .line 369
    if-nez p3, :cond_0

    .line 406
    :goto_0
    return-void

    .line 371
    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;I)V

    .line 372
    const-string/jumbo v0, "filter {\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/ag$c;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 374
    const-string/jumbo v0, "complement"

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/ag$c;->f()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 375
    :cond_1
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/ag$c;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 376
    const-string/jumbo v0, "param_name"

    .line 377
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->s()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v1

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/ag$c;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/dw;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 378
    invoke-static {p1, p2, v0, v1}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 379
    :cond_2
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/ag$c;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 380
    add-int/lit8 v1, p2, 0x1

    const-string/jumbo v0, "string_filter"

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/ag$c;->b()Lcom/google/android/gms/internal/measurement/ag$f;

    move-result-object v2

    .line 381
    if-eqz v2, :cond_8

    .line 382
    invoke-static {p1, v1}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;I)V

    .line 383
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    const-string/jumbo v0, " {\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ag$f;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 386
    const-string/jumbo v0, "match_type"

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ag$f;->b()Lcom/google/android/gms/internal/measurement/ag$f$b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/ag$f$b;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v1, v0, v3}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 387
    :cond_3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ag$f;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 388
    const-string/jumbo v0, "expression"

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ag$f;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v1, v0, v3}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 389
    :cond_4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ag$f;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 390
    const-string/jumbo v0, "case_sensitive"

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ag$f;->f()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p1, v1, v0, v3}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 391
    :cond_5
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ag$f;->h()I

    move-result v0

    if-lez v0, :cond_7

    .line 392
    add-int/lit8 v0, v1, 0x1

    invoke-static {p1, v0}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;I)V

    .line 393
    const-string/jumbo v0, "expression_list {\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ag$f;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 395
    add-int/lit8 v3, v1, 0x2

    invoke-static {p1, v3}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;I)V

    .line 396
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    const-string/jumbo v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 399
    :cond_6
    const-string/jumbo v0, "}\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    :cond_7
    invoke-static {p1, v1}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;I)V

    .line 401
    const-string/jumbo v0, "}\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    :cond_8
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/ag$c;->c()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 403
    add-int/lit8 v0, p2, 0x1

    const-string/jumbo v1, "number_filter"

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/ag$c;->d()Lcom/google/android/gms/internal/measurement/ag$d;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/ag$d;)V

    .line 404
    :cond_9
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;I)V

    .line 405
    const-string/jumbo v0, "}\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method private final a(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/ag$d;)V
    .locals 2

    .prologue
    .line 351
    if-nez p4, :cond_0

    .line 368
    :goto_0
    return-void

    .line 353
    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;I)V

    .line 354
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    const-string/jumbo v0, " {\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    invoke-virtual {p4}, Lcom/google/android/gms/internal/measurement/ag$d;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 357
    const-string/jumbo v0, "comparison_type"

    invoke-virtual {p4}, Lcom/google/android/gms/internal/measurement/ag$d;->b()Lcom/google/android/gms/internal/measurement/ag$d$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ag$d$a;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 358
    :cond_1
    invoke-virtual {p4}, Lcom/google/android/gms/internal/measurement/ag$d;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 359
    const-string/jumbo v0, "match_as_float"

    invoke-virtual {p4}, Lcom/google/android/gms/internal/measurement/ag$d;->d()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 360
    :cond_2
    invoke-virtual {p4}, Lcom/google/android/gms/internal/measurement/ag$d;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 361
    const-string/jumbo v0, "comparison_value"

    invoke-virtual {p4}, Lcom/google/android/gms/internal/measurement/ag$d;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 362
    :cond_3
    invoke-virtual {p4}, Lcom/google/android/gms/internal/measurement/ag$d;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 363
    const-string/jumbo v0, "min_comparison_value"

    invoke-virtual {p4}, Lcom/google/android/gms/internal/measurement/ag$d;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 364
    :cond_4
    invoke-virtual {p4}, Lcom/google/android/gms/internal/measurement/ag$d;->i()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 365
    const-string/jumbo v0, "max_comparison_value"

    invoke-virtual {p4}, Lcom/google/android/gms/internal/measurement/ag$d;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 366
    :cond_5
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;I)V

    .line 367
    const-string/jumbo v0, "}\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static a(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/ao$i;Ljava/lang/String;)V
    .locals 11

    .prologue
    const/16 v6, 0xa

    const/4 v10, 0x3

    const/4 v4, 0x0

    const/4 v8, 0x4

    const/4 v2, 0x0

    .line 293
    if-nez p3, :cond_0

    .line 350
    :goto_0
    return-void

    .line 295
    :cond_0
    add-int/lit8 v0, p1, 0x1

    .line 296
    invoke-static {p0, v10}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;I)V

    .line 297
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    const-string/jumbo v0, " {\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/ao$i;->d()I

    move-result v0

    if-eqz v0, :cond_3

    .line 300
    invoke-static {p0, v8}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;I)V

    .line 301
    const-string/jumbo v0, "results: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/ao$i;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 304
    add-int/lit8 v3, v1, 0x1

    if-eqz v1, :cond_1

    .line 305
    const-string/jumbo v1, ", "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v1, v3

    .line 307
    goto :goto_1

    .line 308
    :cond_2
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 309
    :cond_3
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/ao$i;->b()I

    move-result v0

    if-eqz v0, :cond_6

    .line 310
    invoke-static {p0, v8}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;I)V

    .line 311
    const-string/jumbo v0, "status: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/ao$i;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 314
    add-int/lit8 v3, v1, 0x1

    if-eqz v1, :cond_4

    .line 315
    const-string/jumbo v1, ", "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    :cond_4
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v1, v3

    .line 317
    goto :goto_2

    .line 318
    :cond_5
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 319
    :cond_6
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/ao$i;->f()I

    move-result v0

    if-eqz v0, :cond_b

    .line 320
    invoke-static {p0, v8}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;I)V

    .line 321
    const-string/jumbo v0, "dynamic_filter_timestamps: {"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/ao$i;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$b;

    .line 324
    add-int/lit8 v3, v1, 0x1

    if-eqz v1, :cond_7

    .line 325
    const-string/jumbo v1, ", "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    :cond_7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$b;->a()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$b;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_4
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, ":"

    .line 327
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 328
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$b;->c()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$b;->d()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v1, v3

    .line 329
    goto :goto_3

    :cond_8
    move-object v1, v4

    .line 326
    goto :goto_4

    :cond_9
    move-object v0, v4

    .line 328
    goto :goto_5

    .line 330
    :cond_a
    const-string/jumbo v0, "}\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    :cond_b
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/ao$i;->h()I

    move-result v0

    if-eqz v0, :cond_11

    .line 332
    invoke-static {p0, v8}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;I)V

    .line 333
    const-string/jumbo v0, "sequence_filter_timestamps: {"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/ao$i;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$j;

    .line 336
    add-int/lit8 v3, v1, 0x1

    if-eqz v1, :cond_c

    .line 337
    const-string/jumbo v1, ", "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    :cond_c
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$j;->a()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$j;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_7
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, ": ["

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$j;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 341
    add-int/lit8 v0, v1, 0x1

    if-eqz v1, :cond_d

    .line 342
    const-string/jumbo v1, ", "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    :cond_d
    invoke-virtual {p0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move v1, v0

    .line 344
    goto :goto_8

    :cond_e
    move-object v1, v4

    .line 338
    goto :goto_7

    .line 345
    :cond_f
    const-string/jumbo v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v3

    .line 346
    goto :goto_6

    .line 347
    :cond_10
    const-string/jumbo v0, "}\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    :cond_11
    invoke-static {p0, v10}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;I)V

    .line 349
    const-string/jumbo v0, "}\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method private static a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 411
    if-nez p3, :cond_0

    .line 418
    :goto_0
    return-void

    .line 413
    :cond_0
    add-int/lit8 v0, p1, 0x1

    invoke-static {p0, v0}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;I)V

    .line 414
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    const-string/jumbo v0, ": "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 417
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private final a(Ljava/lang/StringBuilder;ILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/measurement/ao$e;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 263
    if-nez p3, :cond_1

    .line 292
    :cond_0
    return-void

    .line 265
    :cond_1
    add-int/lit8 v3, p2, 0x1

    .line 266
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$e;

    .line 267
    if-eqz v0, :cond_2

    .line 268
    invoke-static {p1, v3}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;I)V

    .line 269
    const-string/jumbo v1, "param {\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    invoke-static {}, Lcom/google/android/gms/internal/measurement/in;->b()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v1

    sget-object v5, Lcom/google/android/gms/measurement/internal/t;->aE:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v1, v5}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 271
    const-string/jumbo v5, "name"

    .line 272
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$e;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->s()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$e;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/google/android/gms/measurement/internal/dw;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 273
    :goto_1
    invoke-static {p1, v3, v5, v1}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 274
    const-string/jumbo v5, "string_value"

    .line 275
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$e;->c()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$e;->d()Ljava/lang/String;

    move-result-object v1

    .line 276
    :goto_2
    invoke-static {p1, v3, v5, v1}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 277
    const-string/jumbo v5, "int_value"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$e;->e()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$e;->f()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_3
    invoke-static {p1, v3, v5, v1}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 278
    const-string/jumbo v5, "double_value"

    .line 279
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$e;->g()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$e;->h()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 280
    :goto_4
    invoke-static {p1, v3, v5, v1}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 281
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$e;->j()I

    move-result v1

    if-lez v1, :cond_3

    .line 282
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$e;->i()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;ILjava/util/List;)V

    .line 289
    :cond_3
    :goto_5
    invoke-static {p1, v3}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;I)V

    .line 290
    const-string/jumbo v0, "}\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_4
    move-object v1, v2

    .line 272
    goto :goto_1

    :cond_5
    move-object v1, v2

    .line 275
    goto :goto_2

    :cond_6
    move-object v1, v2

    .line 277
    goto :goto_3

    :cond_7
    move-object v1, v2

    .line 279
    goto :goto_4

    .line 283
    :cond_8
    const-string/jumbo v1, "name"

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->s()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$e;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/dw;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v3, v1, v5}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 284
    const-string/jumbo v1, "string_value"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$e;->d()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v3, v1, v5}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 285
    const-string/jumbo v5, "int_value"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$e;->e()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$e;->f()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_6
    invoke-static {p1, v3, v5, v1}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 286
    const-string/jumbo v1, "double_value"

    .line 287
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$e;->g()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$e;->h()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 288
    :goto_7
    invoke-static {p1, v3, v1, v0}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    :cond_9
    move-object v1, v2

    .line 285
    goto :goto_6

    :cond_a
    move-object v0, v2

    .line 287
    goto :goto_7
.end method

.method static a(Lcom/google/android/gms/measurement/internal/r;Lcom/google/android/gms/measurement/internal/kb;)Z
    .locals 1

    .prologue
    .line 433
    invoke-static {p0}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/kb;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/kb;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    const/4 v0, 0x0

    .line 437
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 438
    if-eqz p0, :cond_0

    const-string/jumbo v0, "([+-])?([0-9]+\\.?[0-9]*|[0-9]*\\.?[0-9]+)"

    .line 439
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x136

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 441
    :goto_0
    return v0

    .line 440
    :cond_0
    const/4 v0, 0x0

    .line 441
    goto :goto_0
.end method

.method static a(Ljava/util/List;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 442
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    shl-int/lit8 v0, v0, 0x6

    if-ge p1, v0, :cond_0

    div-int/lit8 v0, p1, 0x40

    .line 443
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    rem-int/lit8 v4, p1, 0x40

    shl-long/2addr v2, v4

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 444
    :goto_0
    return v0

    .line 443
    :cond_0
    const/4 v0, 0x0

    .line 444
    goto :goto_0
.end method


# virtual methods
.method final a([B)J
    .locals 2

    .prologue
    .line 479
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->t()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 481
    invoke-static {}, Lcom/google/android/gms/measurement/internal/jw;->e()Ljava/security/MessageDigest;

    move-result-object v0

    .line 482
    if-nez v0, :cond_0

    .line 483
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Failed to get MD5"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 484
    const-wide/16 v0, 0x0

    .line 486
    :goto_0
    return-wide v0

    .line 485
    :cond_0
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 486
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/jw;->a([B)J

    move-result-wide v0

    goto :goto_0
.end method

.method final a([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">([B",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 419
    if-nez p1, :cond_0

    move-object v0, v1

    .line 430
    :goto_0
    return-object v0

    .line 421
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 422
    const/4 v0, 0x0

    :try_start_0
    array-length v3, p1

    invoke-virtual {v2, p1, v0, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 423
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 424
    invoke-interface {p2, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;
    :try_end_0
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 425
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 428
    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v3, "Failed to load parcelable from buffer"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 429
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    move-object v0, v1

    .line 430
    goto :goto_0

    .line 431
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 432
    throw v0
.end method

.method final a(Lcom/google/android/gms/internal/measurement/ag$b;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 212
    if-nez p1, :cond_0

    .line 213
    const-string/jumbo v0, "null"

    .line 235
    :goto_0
    return-object v0

    .line 214
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    const-string/jumbo v0, "\nevent_filter {\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ag$b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    const-string/jumbo v0, "filter_id"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ag$b;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v4, v0, v2}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 218
    :cond_1
    const-string/jumbo v0, "event_name"

    .line 219
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->s()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ag$b;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/dw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 220
    invoke-static {v1, v4, v0, v2}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 222
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ag$b;->h()Z

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ag$b;->i()Z

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ag$b;->k()Z

    move-result v3

    .line 223
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/js;->a(ZZZ)Ljava/lang/String;

    move-result-object v0

    .line 224
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 225
    const-string/jumbo v2, "filter_type"

    invoke-static {v1, v4, v2, v0}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 226
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ag$b;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 227
    const-string/jumbo v0, "event_count_filter"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ag$b;->g()Lcom/google/android/gms/internal/measurement/ag$d;

    move-result-object v2

    invoke-direct {p0, v1, v5, v0, v2}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/ag$d;)V

    .line 228
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ag$b;->e()I

    move-result v0

    if-lez v0, :cond_4

    .line 229
    const-string/jumbo v0, "  filters {\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ag$b;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ag$c;

    .line 231
    const/4 v3, 0x2

    invoke-direct {p0, v1, v3, v0}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;ILcom/google/android/gms/internal/measurement/ag$c;)V

    goto :goto_1

    .line 233
    :cond_4
    invoke-static {v1, v5}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;I)V

    .line 234
    const-string/jumbo v0, "}\n}\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method final a(Lcom/google/android/gms/internal/measurement/ag$e;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 236
    if-nez p1, :cond_0

    .line 237
    const-string/jumbo v0, "null"

    .line 254
    :goto_0
    return-object v0

    .line 238
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    const-string/jumbo v1, "\nproperty_filter {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ag$e;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 241
    const-string/jumbo v1, "filter_id"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ag$e;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v4, v1, v2}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 242
    :cond_1
    const-string/jumbo v1, "property_name"

    .line 243
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->s()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ag$e;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/dw;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 244
    invoke-static {v0, v4, v1, v2}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 246
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ag$e;->e()Z

    move-result v1

    .line 247
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ag$e;->f()Z

    move-result v2

    .line 248
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ag$e;->h()Z

    move-result v3

    .line 249
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/js;->a(ZZZ)Ljava/lang/String;

    move-result-object v1

    .line 250
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 251
    const-string/jumbo v2, "filter_type"

    invoke-static {v0, v4, v2, v1}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 252
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ag$e;->d()Lcom/google/android/gms/internal/measurement/ag$c;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;ILcom/google/android/gms/internal/measurement/ag$c;)V

    .line 253
    const-string/jumbo v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method final a(Lcom/google/android/gms/internal/measurement/ao$f;)Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v3, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 83
    if-nez p1, :cond_0

    .line 84
    const-string/jumbo v0, ""

    .line 211
    :goto_0
    return-object v0

    .line 85
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    const-string/jumbo v0, "\nbatch {\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ao$f;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$g;

    .line 89
    if-eqz v0, :cond_1

    .line 90
    invoke-static {v4, v10}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;I)V

    .line 91
    const-string/jumbo v1, "bundle {\n"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$g;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 93
    const-string/jumbo v1, "protocol_version"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$g;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4, v10, v1, v2}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 94
    :cond_2
    const-string/jumbo v1, "platform"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$g;->q()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v10, v1, v2}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 95
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$g;->z()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 96
    const-string/jumbo v1, "gmp_version"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$g;->A()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v4, v10, v1, v2}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 97
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$g;->B()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 98
    const-string/jumbo v1, "uploading_gmp_version"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$g;->C()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v4, v10, v1, v2}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 99
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$g;->ac()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 100
    const-string/jumbo v1, "dynamite_version"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$g;->ad()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v4, v10, v1, v2}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 101
    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$g;->U()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 102
    const-string/jumbo v1, "config_version"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$g;->V()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v4, v10, v1, v2}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 103
    :cond_6
    const-string/jumbo v1, "gmp_app_id"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$g;->M()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v10, v1, v2}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 104
    const-string/jumbo v1, "admob_app_id"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$g;->ab()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v10, v1, v2}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 105
    const-string/jumbo v1, "app_id"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$g;->x()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v10, v1, v2}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 106
    const-string/jumbo v1, "app_version"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$g;->y()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v10, v1, v2}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 107
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$g;->R()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 108
    const-string/jumbo v1, "app_version_major"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$g;->S()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4, v10, v1, v2}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 109
    :cond_7
    const-string/jumbo v1, "firebase_instance_id"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$g;->Q()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v10, v1, v2}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 110
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$g;->H()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 111
    const-string/jumbo v1, "dev_cert_hash"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$g;->I()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v4, v10, v1, v2}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 112
    :cond_8
    const-string/jumbo v1, "app_store"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$g;->w()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v10, v1, v2}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 113
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$g;->g()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 114
    const-string/jumbo v1, "upload_timestamp_millis"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$g;->h()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v4, v10, v1, v2}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 115
    :cond_9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$g;->i()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 116
    const-string/jumbo v1, "start_timestamp_millis"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$g;->j()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v4, v10, v1, v2}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 117
    :cond_a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$g;->k()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 118
    const-string/jumbo v1, "end_timestamp_millis"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$g;->l()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v4, v10, v1, v2}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 119
    :cond_b
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$g;->m()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 120
    const-string/jumbo v1, "previous_bundle_start_timestamp_millis"

    .line 121
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$g;->n()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 122
    invoke-static {v4, v10, v1, v2}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 123
    :cond_c
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$g;->o()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 124
    const-string/jumbo v1, "previous_bundle_end_timestamp_millis"

    .line 125
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$g;->p()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 126
    invoke-static {v4, v10, v1, v2}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 127
    :cond_d
    const-string/jumbo v1, "app_instance_id"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$g;->G()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v10, v1, v2}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 128
    const-string/jumbo v1, "resettable_device_id"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$g;->D()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v10, v1, v2}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 129
    const-string/jumbo v1, "device_id"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$g;->T()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v10, v1, v2}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 130
    const-string/jumbo v1, "ds_id"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$g;->Y()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v10, v1, v2}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 131
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$g;->E()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 132
    const-string/jumbo v1, "limited_ad_tracking"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$g;->F()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v4, v10, v1, v2}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 133
    :cond_e
    const-string/jumbo v1, "os_version"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$g;->r()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v10, v1, v2}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 134
    const-string/jumbo v1, "device_model"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$g;->s()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v10, v1, v2}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 135
    const-string/jumbo v1, "user_default_language"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$g;->t()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v10, v1, v2}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 136
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$g;->u()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 137
    const-string/jumbo v1, "time_zone_offset_minutes"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$g;->v()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4, v10, v1, v2}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 138
    :cond_f
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$g;->J()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 139
    const-string/jumbo v1, "bundle_sequential_index"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$g;->K()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4, v10, v1, v2}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 140
    :cond_10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$g;->N()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 141
    const-string/jumbo v1, "service_upload"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$g;->O()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v4, v10, v1, v2}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 142
    :cond_11
    const-string/jumbo v1, "health_monitor"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$g;->L()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v10, v1, v2}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 143
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/t;->aM:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 144
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$g;->W()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$g;->X()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-eqz v1, :cond_12

    .line 145
    const-string/jumbo v1, "android_id"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$g;->X()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v4, v10, v1, v2}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 146
    :cond_12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$g;->Z()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 147
    const-string/jumbo v1, "retry_counter"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$g;->aa()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4, v10, v1, v2}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 148
    :cond_13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$g;->e()Ljava/util/List;

    move-result-object v1

    .line 149
    if-eqz v1, :cond_18

    .line 151
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_14
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/ao$k;

    .line 152
    if-eqz v1, :cond_14

    .line 153
    invoke-static {v4, v11}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;I)V

    .line 154
    const-string/jumbo v2, "user_property {\n"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    const-string/jumbo v7, "set_timestamp_millis"

    .line 156
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ao$k;->a()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ao$k;->b()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 157
    :goto_3
    invoke-static {v4, v11, v7, v2}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 158
    const-string/jumbo v2, "name"

    .line 159
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->s()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v7

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ao$k;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/dw;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 160
    invoke-static {v4, v11, v2, v7}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 161
    const-string/jumbo v2, "string_value"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ao$k;->e()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v11, v2, v7}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 162
    const-string/jumbo v7, "int_value"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ao$k;->f()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ao$k;->g()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_4
    invoke-static {v4, v11, v7, v2}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 163
    const-string/jumbo v2, "double_value"

    .line 164
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ao$k;->h()Z

    move-result v7

    if-eqz v7, :cond_17

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ao$k;->i()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 165
    :goto_5
    invoke-static {v4, v11, v2, v1}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 166
    invoke-static {v4, v11}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;I)V

    .line 167
    const-string/jumbo v1, "}\n"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_15
    move-object v2, v3

    .line 156
    goto :goto_3

    :cond_16
    move-object v2, v3

    .line 162
    goto :goto_4

    :cond_17
    move-object v1, v3

    .line 164
    goto :goto_5

    .line 170
    :cond_18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$g;->P()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$g;->x()Ljava/lang/String;

    move-result-object v2

    .line 172
    if-eqz v1, :cond_1d

    .line 174
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_19
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/ao$a;

    .line 175
    if-eqz v1, :cond_19

    .line 176
    invoke-static {v4, v11}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;I)V

    .line 177
    const-string/jumbo v7, "audience_membership {\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ao$a;->a()Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 179
    const-string/jumbo v7, "audience_id"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ao$a;->b()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v4, v11, v7, v8}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 180
    :cond_1a
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ao$a;->f()Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 181
    const-string/jumbo v7, "new_audience"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ao$a;->g()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v4, v11, v7, v8}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 182
    :cond_1b
    const-string/jumbo v7, "current_data"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ao$a;->c()Lcom/google/android/gms/internal/measurement/ao$i;

    move-result-object v8

    invoke-static {v4, v11, v7, v8, v2}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/ao$i;Ljava/lang/String;)V

    .line 183
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ao$a;->d()Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 184
    const-string/jumbo v7, "previous_data"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ao$a;->e()Lcom/google/android/gms/internal/measurement/ao$i;

    move-result-object v1

    invoke-static {v4, v11, v7, v1, v2}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/ao$i;Ljava/lang/String;)V

    .line 185
    :cond_1c
    invoke-static {v4, v11}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;I)V

    .line 186
    const-string/jumbo v1, "}\n"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 188
    :cond_1d
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$g;->c()Ljava/util/List;

    move-result-object v0

    .line 189
    if-eqz v0, :cond_23

    .line 191
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1e
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$c;

    .line 192
    if-eqz v0, :cond_1e

    .line 193
    invoke-static {v4, v11}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;I)V

    .line 194
    const-string/jumbo v2, "event {\n"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    const-string/jumbo v2, "name"

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->s()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$c;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/dw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v11, v2, v6}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 196
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$c;->d()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 197
    const-string/jumbo v2, "timestamp_millis"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$c;->e()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v4, v11, v2, v6}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 198
    :cond_1f
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$c;->f()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 199
    const-string/jumbo v2, "previous_timestamp_millis"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$c;->g()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v4, v11, v2, v6}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 200
    :cond_20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$c;->h()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 201
    const-string/jumbo v2, "count"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$c;->i()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v11, v2, v6}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 202
    :cond_21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$c;->b()I

    move-result v2

    if-eqz v2, :cond_22

    .line 203
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$c;->a()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v4, v11, v0}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;ILjava/util/List;)V

    .line 204
    :cond_22
    invoke-static {v4, v11}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;I)V

    .line 205
    const-string/jumbo v0, "}\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 207
    :cond_23
    invoke-static {v4, v10}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/lang/StringBuilder;I)V

    .line 208
    const-string/jumbo v0, "}\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 210
    :cond_24
    const-string/jumbo v0, "}\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method final a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 457
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 458
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 459
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_0

    .line 460
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v4, "Ignoring negative bit index to be cleared"

    invoke-virtual {v1, v4, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 462
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/lit8 v4, v1, 0x40

    .line 463
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v4, v1, :cond_1

    .line 464
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 465
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v4, "Ignoring bit index greater than bitSet size"

    .line 466
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v0, v5}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 468
    :cond_1
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    rem-int/lit8 v0, v0, 0x40

    shl-long v0, v8, v0

    const-wide/16 v8, -0x1

    xor-long/2addr v0, v8

    and-long/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 470
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 471
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_3

    .line 472
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    .line 474
    add-int/lit8 v0, v1, -0x1

    move v2, v1

    move v1, v0

    goto :goto_1

    .line 475
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {v3, v0, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method final a(Lcom/google/android/gms/internal/measurement/ao$c$a;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 62
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ao$c$a;->a()Ljava/util/List;

    move-result-object v3

    .line 63
    const/4 v2, -0x1

    .line 64
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 65
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$e;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    :goto_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ao$e;->k()Lcom/google/android/gms/internal/measurement/ao$e$a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/measurement/ao$e$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$e$a;

    move-result-object v0

    .line 70
    instance-of v2, p3, Ljava/lang/Long;

    if-eqz v2, :cond_2

    .line 71
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/ao$e$a;->a(J)Lcom/google/android/gms/internal/measurement/ao$e$a;

    .line 79
    :cond_0
    :goto_2
    if-ltz v1, :cond_5

    .line 80
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/measurement/ao$c$a;->a(ILcom/google/android/gms/internal/measurement/ao$e$a;)Lcom/google/android/gms/internal/measurement/ao$c$a;

    .line 82
    :goto_3
    return-void

    .line 68
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 72
    :cond_2
    instance-of v2, p3, Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 73
    check-cast p3, Ljava/lang/String;

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/measurement/ao$e$a;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$e$a;

    goto :goto_2

    .line 74
    :cond_3
    instance-of v2, p3, Ljava/lang/Double;

    if-eqz v2, :cond_4

    .line 75
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/ao$e$a;->a(D)Lcom/google/android/gms/internal/measurement/ao$e$a;

    goto :goto_2

    .line 76
    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/in;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/t;->aG:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, p3, [Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 78
    check-cast p3, [Landroid/os/Bundle;

    invoke-static {p3}, Lcom/google/android/gms/measurement/internal/js;->a([Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/ao$e$a;->a(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/ao$e$a;

    goto :goto_2

    .line 81
    :cond_5
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/ao$c$a;->a(Lcom/google/android/gms/internal/measurement/ao$e$a;)Lcom/google/android/gms/internal/measurement/ao$c$a;

    goto :goto_3

    :cond_6
    move v1, v2

    goto :goto_1
.end method

.method final a(Lcom/google/android/gms/internal/measurement/ao$e$a;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 14
    invoke-static {p2}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ao$e$a;->a()Lcom/google/android/gms/internal/measurement/ao$e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$e$a;->b()Lcom/google/android/gms/internal/measurement/ao$e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$e$a;->c()Lcom/google/android/gms/internal/measurement/ao$e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$e$a;->e()Lcom/google/android/gms/internal/measurement/ao$e$a;

    .line 16
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 17
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/ao$e$a;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$e$a;

    .line 26
    :goto_0
    return-void

    .line 18
    :cond_0
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 19
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/ao$e$a;->a(J)Lcom/google/android/gms/internal/measurement/ao$e$a;

    goto :goto_0

    .line 20
    :cond_1
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_2

    .line 21
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/ao$e$a;->a(D)Lcom/google/android/gms/internal/measurement/ao$e$a;

    goto :goto_0

    .line 22
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/in;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/t;->aG:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v0

    if-eqz v0, :cond_3

    instance-of v0, p2, [Landroid/os/Bundle;

    if-eqz v0, :cond_3

    .line 24
    check-cast p2, [Landroid/os/Bundle;

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/js;->a([Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/ao$e$a;->a(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/ao$e$a;

    goto :goto_0

    .line 25
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Ignoring invalid (type) event param value"

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method final a(Lcom/google/android/gms/internal/measurement/ao$k$a;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 4
    invoke-static {p2}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ao$k$a;->a()Lcom/google/android/gms/internal/measurement/ao$k$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$k$a;->b()Lcom/google/android/gms/internal/measurement/ao$k$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$k$a;->c()Lcom/google/android/gms/internal/measurement/ao$k$a;

    .line 6
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 7
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/ao$k$a;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$k$a;

    .line 13
    :goto_0
    return-void

    .line 8
    :cond_0
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 9
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/ao$k$a;->b(J)Lcom/google/android/gms/internal/measurement/ao$k$a;

    goto :goto_0

    .line 10
    :cond_1
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_2

    .line 11
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/ao$k$a;->a(D)Lcom/google/android/gms/internal/measurement/ao$k$a;

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Ignoring invalid (type) user attribute value"

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected final a()Z
    .locals 1

    .prologue
    .line 3
    const/4 v0, 0x0

    return v0
.end method

.method final a(JJ)Z
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    .line 476
    cmp-long v0, p1, v2

    if-eqz v0, :cond_0

    cmp-long v0, p3, v2

    if-lez v0, :cond_0

    .line 477
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v0

    sub-long/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    cmp-long v0, v0, p3

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 478
    :goto_0
    return v0

    .line 477
    :cond_1
    const/4 v0, 0x0

    .line 478
    goto :goto_0
.end method

.method final b(Lcom/google/android/gms/internal/measurement/ao$c;Ljava/lang/String;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 32
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/js;->a(Lcom/google/android/gms/internal/measurement/ao$c;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$e;

    move-result-object v0

    .line 33
    if-eqz v0, :cond_9

    .line 34
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$e;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$e;->d()Ljava/lang/String;

    move-result-object v0

    .line 61
    :goto_0
    return-object v0

    .line 36
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$e;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 37
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$e;->f()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$e;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 39
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$e;->h()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 40
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/in;->b()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 41
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/t;->aG:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 42
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$e;->j()I

    move-result v1

    if-lez v1, :cond_9

    .line 43
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$e;->i()Ljava/util/List;

    move-result-object v0

    .line 44
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 45
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$e;

    .line 46
    if-eqz v0, :cond_3

    .line 47
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 48
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$e;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$e;

    .line 49
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$e;->c()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 50
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$e;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$e;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 51
    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$e;->e()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 52
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$e;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$e;->f()J

    move-result-wide v6

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_2

    .line 53
    :cond_6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$e;->g()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 54
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$e;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$e;->h()D

    move-result-wide v6

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_2

    .line 56
    :cond_7
    invoke-virtual {v3}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 57
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 59
    :cond_8
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/os/Bundle;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Bundle;

    goto/16 :goto_0

    .line 61
    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method final b()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 510
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/js;->a:Lcom/google/android/gms/measurement/internal/jo;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->r()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    .line 511
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v2

    .line 533
    :goto_0
    return-object v0

    .line 513
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 514
    sget-object v0, Lcom/google/android/gms/measurement/internal/t;->O:Lcom/google/android/gms/measurement/internal/dr;

    .line 515
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/dr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 516
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 517
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 518
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v6, "measurement.id."

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 519
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 520
    if-eqz v0, :cond_2

    .line 521
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 522
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v4, :cond_2

    .line 523
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 524
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Too many experiment IDs. Number of IDs"

    .line 525
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    move-object v0, v2

    .line 532
    goto :goto_0

    .line 528
    :catch_0
    move-exception v0

    .line 529
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v6, "Experiment ID NumberFormatException"

    invoke-virtual {v1, v6, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    move-object v0, v3

    .line 533
    goto :goto_0
.end method

.method final b([B)[B
    .locals 6

    .prologue
    .line 487
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 488
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 489
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 490
    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 491
    :goto_0
    invoke-virtual {v1, v3}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v4

    .line 492
    if-lez v4, :cond_0

    .line 493
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 498
    :catch_0
    move-exception v0

    .line 499
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Failed to ungzip content"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 500
    throw v0

    .line 495
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 496
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 497
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0
.end method

.method final c([B)[B
    .locals 3

    .prologue
    .line 501
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 502
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 503
    invoke-virtual {v1, p1}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 504
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 505
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 506
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 507
    :catch_0
    move-exception v0

    .line 508
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Failed to gzip content"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 509
    throw v0
.end method

.method public final bridge synthetic d()Lcom/google/android/gms/measurement/internal/kf;
    .locals 1

    .prologue
    .line 565
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/jl;->d()Lcom/google/android/gms/measurement/internal/kf;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic l()V
    .locals 0

    .prologue
    .line 568
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/jl;->l()V

    return-void
.end method

.method public final bridge synthetic m()V
    .locals 0

    .prologue
    .line 569
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/jl;->m()V

    return-void
.end method

.method public final bridge synthetic n()V
    .locals 0

    .prologue
    .line 570
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/jl;->n()V

    return-void
.end method

.method public final bridge synthetic o()V
    .locals 0

    .prologue
    .line 571
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/jl;->o()V

    return-void
.end method

.method public final bridge synthetic p()Lcom/google/android/gms/measurement/internal/l;
    .locals 1

    .prologue
    .line 572
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/jl;->p()Lcom/google/android/gms/measurement/internal/l;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic q()Lcom/google/android/gms/common/util/e;
    .locals 1

    .prologue
    .line 573
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/jl;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic r()Landroid/content/Context;
    .locals 1

    .prologue
    .line 574
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/jl;->r()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic s()Lcom/google/android/gms/measurement/internal/dw;
    .locals 1

    .prologue
    .line 575
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/jl;->s()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic t()Lcom/google/android/gms/measurement/internal/jw;
    .locals 1

    .prologue
    .line 576
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/jl;->t()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic t_()Lcom/google/android/gms/measurement/internal/ex;
    .locals 1

    .prologue
    .line 567
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/jl;->t_()Lcom/google/android/gms/measurement/internal/ex;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic u()Lcom/google/android/gms/measurement/internal/fa;
    .locals 1

    .prologue
    .line 577
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/jl;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic u_()Lcom/google/android/gms/measurement/internal/c;
    .locals 1

    .prologue
    .line 566
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/jl;->u_()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic v()Lcom/google/android/gms/measurement/internal/dy;
    .locals 1

    .prologue
    .line 578
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/jl;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic v_()Lcom/google/android/gms/measurement/internal/js;
    .locals 1

    .prologue
    .line 564
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/jl;->v_()Lcom/google/android/gms/measurement/internal/js;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic w()Lcom/google/android/gms/measurement/internal/el;
    .locals 1

    .prologue
    .line 579
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/jl;->w()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic x()Lcom/google/android/gms/measurement/internal/b;
    .locals 1

    .prologue
    .line 580
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/jl;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic y()Lcom/google/android/gms/measurement/internal/kk;
    .locals 1

    .prologue
    .line 581
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/jl;->y()Lcom/google/android/gms/measurement/internal/kk;

    move-result-object v0

    return-object v0
.end method
