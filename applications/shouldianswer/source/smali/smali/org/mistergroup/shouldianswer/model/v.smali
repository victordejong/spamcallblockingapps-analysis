.class public final Lorg/mistergroup/shouldianswer/model/v;
.super Ljava/lang/Object;
.source "NumberCaptionDao_Impl.java"

# interfaces
.implements Lorg/mistergroup/shouldianswer/model/u;


# instance fields
.field private final a:Landroidx/room/j;

.field private final b:Landroidx/room/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/c<",
            "Lorg/mistergroup/shouldianswer/model/NumberCaption;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroidx/room/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/b<",
            "Lorg/mistergroup/shouldianswer/model/NumberCaption;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroidx/room/p;

.field private final e:Landroidx/room/p;

.field private final f:Landroidx/room/p;


# direct methods
.method public constructor <init>(Landroidx/room/j;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/model/v;->a:Landroidx/room/j;

    .line 34
    new-instance v0, Lorg/mistergroup/shouldianswer/model/v$1;

    invoke-direct {v0, p0, p1}, Lorg/mistergroup/shouldianswer/model/v$1;-><init>(Lorg/mistergroup/shouldianswer/model/v;Landroidx/room/j;)V

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/v;->b:Landroidx/room/c;

    .line 68
    new-instance v0, Lorg/mistergroup/shouldianswer/model/v$2;

    invoke-direct {v0, p0, p1}, Lorg/mistergroup/shouldianswer/model/v$2;-><init>(Lorg/mistergroup/shouldianswer/model/v;Landroidx/room/j;)V

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/v;->c:Landroidx/room/b;

    .line 79
    new-instance v0, Lorg/mistergroup/shouldianswer/model/v$3;

    invoke-direct {v0, p0, p1}, Lorg/mistergroup/shouldianswer/model/v$3;-><init>(Lorg/mistergroup/shouldianswer/model/v;Landroidx/room/j;)V

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/v;->d:Landroidx/room/p;

    .line 86
    new-instance v0, Lorg/mistergroup/shouldianswer/model/v$4;

    invoke-direct {v0, p0, p1}, Lorg/mistergroup/shouldianswer/model/v$4;-><init>(Lorg/mistergroup/shouldianswer/model/v;Landroidx/room/j;)V

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/v;->e:Landroidx/room/p;

    .line 93
    new-instance v0, Lorg/mistergroup/shouldianswer/model/v$5;

    invoke-direct {v0, p0, p1}, Lorg/mistergroup/shouldianswer/model/v$5;-><init>(Lorg/mistergroup/shouldianswer/model/v;Landroidx/room/j;)V

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/v;->f:Landroidx/room/p;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/mistergroup/shouldianswer/model/NumberCaption;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "SELECT * FROM numbercaption WHERE uploaded=0"

    .line 233
    invoke-static {v1, v0}, Landroidx/room/m;->a(Ljava/lang/String;I)Landroidx/room/m;

    move-result-object v1

    .line 234
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/model/v;->a:Landroidx/room/j;

    invoke-virtual {v2}, Landroidx/room/j;->f()V

    .line 235
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/model/v;->a:Landroidx/room/j;

    const/4 v3, 0x0

    invoke-static {v2, v1, v0, v3}, Landroidx/room/b/c;->a(Landroidx/room/j;Landroidx/i/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v3, "id"

    .line 237
    invoke-static {v2, v3}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "number"

    .line 238
    invoke-static {v2, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "numberNormalized"

    .line 239
    invoke-static {v2, v5}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "caption"

    .line 240
    invoke-static {v2, v6}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "country"

    .line 241
    invoke-static {v2, v7}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "uploaded"

    .line 242
    invoke-static {v2, v8}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 243
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 244
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 246
    new-instance v10, Lorg/mistergroup/shouldianswer/model/NumberCaption;

    invoke-direct {v10}, Lorg/mistergroup/shouldianswer/model/NumberCaption;-><init>()V

    .line 248
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 249
    invoke-virtual {v10, v11}, Lorg/mistergroup/shouldianswer/model/NumberCaption;->a(I)V

    .line 251
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 252
    invoke-virtual {v10, v11}, Lorg/mistergroup/shouldianswer/model/NumberCaption;->a(Ljava/lang/String;)V

    .line 254
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 255
    invoke-virtual {v10, v11}, Lorg/mistergroup/shouldianswer/model/NumberCaption;->b(Ljava/lang/String;)V

    .line 257
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 258
    invoke-virtual {v10, v11}, Lorg/mistergroup/shouldianswer/model/NumberCaption;->c(Ljava/lang/String;)V

    .line 260
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 261
    invoke-virtual {v10, v11}, Lorg/mistergroup/shouldianswer/model/NumberCaption;->d(Ljava/lang/String;)V

    .line 264
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-eqz v11, :cond_0

    const/4 v11, 0x1

    goto :goto_1

    :cond_0
    move v11, v0

    .line 266
    :goto_1
    invoke-virtual {v10, v11}, Lorg/mistergroup/shouldianswer/model/NumberCaption;->a(Z)V

    .line 267
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 271
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 272
    invoke-virtual {v1}, Landroidx/room/m;->a()V

    return-object v9

    :catchall_0
    move-exception v0

    .line 271
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 272
    invoke-virtual {v1}, Landroidx/room/m;->a()V

    .line 273
    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/mistergroup/shouldianswer/model/NumberCaption;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    const-string v1, "SELECT * FROM numbercaption WHERE number=? and country=?"

    .line 431
    invoke-static {v1, v0}, Landroidx/room/m;->a(Ljava/lang/String;I)Landroidx/room/m;

    move-result-object v1

    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 434
    invoke-virtual {v1, v2}, Landroidx/room/m;->a(I)V

    goto :goto_0

    .line 436
    :cond_0
    invoke-virtual {v1, v2, p1}, Landroidx/room/m;->a(ILjava/lang/String;)V

    :goto_0
    if-nez p2, :cond_1

    .line 440
    invoke-virtual {v1, v0}, Landroidx/room/m;->a(I)V

    goto :goto_1

    .line 442
    :cond_1
    invoke-virtual {v1, v0, p2}, Landroidx/room/m;->a(ILjava/lang/String;)V

    .line 444
    :goto_1
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/model/v;->a:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->f()V

    .line 445
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/model/v;->a:Landroidx/room/j;

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-static {p1, v1, v0, p2}, Landroidx/room/b/c;->a(Landroidx/room/j;Landroidx/i/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string p2, "id"

    .line 447
    invoke-static {p1, p2}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p2

    const-string v3, "number"

    .line 448
    invoke-static {p1, v3}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "numberNormalized"

    .line 449
    invoke-static {p1, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "caption"

    .line 450
    invoke-static {p1, v5}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "country"

    .line 451
    invoke-static {p1, v6}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "uploaded"

    .line 452
    invoke-static {p1, v7}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 453
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 454
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 456
    new-instance v9, Lorg/mistergroup/shouldianswer/model/NumberCaption;

    invoke-direct {v9}, Lorg/mistergroup/shouldianswer/model/NumberCaption;-><init>()V

    .line 458
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 459
    invoke-virtual {v9, v10}, Lorg/mistergroup/shouldianswer/model/NumberCaption;->a(I)V

    .line 461
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 462
    invoke-virtual {v9, v10}, Lorg/mistergroup/shouldianswer/model/NumberCaption;->a(Ljava/lang/String;)V

    .line 464
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 465
    invoke-virtual {v9, v10}, Lorg/mistergroup/shouldianswer/model/NumberCaption;->b(Ljava/lang/String;)V

    .line 467
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 468
    invoke-virtual {v9, v10}, Lorg/mistergroup/shouldianswer/model/NumberCaption;->c(Ljava/lang/String;)V

    .line 470
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 471
    invoke-virtual {v9, v10}, Lorg/mistergroup/shouldianswer/model/NumberCaption;->d(Ljava/lang/String;)V

    .line 474
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-eqz v10, :cond_2

    move v10, v2

    goto :goto_3

    :cond_2
    move v10, v0

    .line 476
    :goto_3
    invoke-virtual {v9, v10}, Lorg/mistergroup/shouldianswer/model/NumberCaption;->a(Z)V

    .line 477
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 481
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 482
    invoke-virtual {v1}, Landroidx/room/m;->a()V

    return-object v8

    :catchall_0
    move-exception p2

    .line 481
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 482
    invoke-virtual {v1}, Landroidx/room/m;->a()V

    .line 483
    throw p2
.end method

.method public a(I)V
    .locals 3

    .line 140
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/v;->a:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->f()V

    .line 141
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/v;->d:Landroidx/room/p;

    invoke-virtual {v0}, Landroidx/room/p;->c()Landroidx/i/a/f;

    move-result-object v0

    int-to-long v1, p1

    const/4 p1, 0x1

    .line 143
    invoke-interface {v0, p1, v1, v2}, Landroidx/i/a/f;->a(IJ)V

    .line 144
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/model/v;->a:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->g()V

    .line 146
    :try_start_0
    invoke-interface {v0}, Landroidx/i/a/f;->a()I

    .line 147
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/model/v;->a:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/model/v;->a:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->h()V

    .line 150
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/model/v;->d:Landroidx/room/p;

    invoke-virtual {p1, v0}, Landroidx/room/p;->a(Landroidx/i/a/f;)V

    return-void

    :catchall_0
    move-exception p1

    .line 149
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/model/v;->a:Landroidx/room/j;

    invoke-virtual {v1}, Landroidx/room/j;->h()V

    .line 150
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/model/v;->d:Landroidx/room/p;

    invoke-virtual {v1, v0}, Landroidx/room/p;->a(Landroidx/i/a/f;)V

    .line 151
    throw p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/mistergroup/shouldianswer/model/NumberCaption;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    const-string v1, "SELECT * FROM numbercaption WHERE numberNormalized=? and country=?"

    .line 489
    invoke-static {v1, v0}, Landroidx/room/m;->a(Ljava/lang/String;I)Landroidx/room/m;

    move-result-object v1

    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 492
    invoke-virtual {v1, v2}, Landroidx/room/m;->a(I)V

    goto :goto_0

    .line 494
    :cond_0
    invoke-virtual {v1, v2, p1}, Landroidx/room/m;->a(ILjava/lang/String;)V

    :goto_0
    if-nez p2, :cond_1

    .line 498
    invoke-virtual {v1, v0}, Landroidx/room/m;->a(I)V

    goto :goto_1

    .line 500
    :cond_1
    invoke-virtual {v1, v0, p2}, Landroidx/room/m;->a(ILjava/lang/String;)V

    .line 502
    :goto_1
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/model/v;->a:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->f()V

    .line 503
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/model/v;->a:Landroidx/room/j;

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-static {p1, v1, v0, p2}, Landroidx/room/b/c;->a(Landroidx/room/j;Landroidx/i/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string p2, "id"

    .line 505
    invoke-static {p1, p2}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p2

    const-string v3, "number"

    .line 506
    invoke-static {p1, v3}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "numberNormalized"

    .line 507
    invoke-static {p1, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "caption"

    .line 508
    invoke-static {p1, v5}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "country"

    .line 509
    invoke-static {p1, v6}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "uploaded"

    .line 510
    invoke-static {p1, v7}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 511
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 512
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 514
    new-instance v9, Lorg/mistergroup/shouldianswer/model/NumberCaption;

    invoke-direct {v9}, Lorg/mistergroup/shouldianswer/model/NumberCaption;-><init>()V

    .line 516
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 517
    invoke-virtual {v9, v10}, Lorg/mistergroup/shouldianswer/model/NumberCaption;->a(I)V

    .line 519
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 520
    invoke-virtual {v9, v10}, Lorg/mistergroup/shouldianswer/model/NumberCaption;->a(Ljava/lang/String;)V

    .line 522
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 523
    invoke-virtual {v9, v10}, Lorg/mistergroup/shouldianswer/model/NumberCaption;->b(Ljava/lang/String;)V

    .line 525
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 526
    invoke-virtual {v9, v10}, Lorg/mistergroup/shouldianswer/model/NumberCaption;->c(Ljava/lang/String;)V

    .line 528
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 529
    invoke-virtual {v9, v10}, Lorg/mistergroup/shouldianswer/model/NumberCaption;->d(Ljava/lang/String;)V

    .line 532
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-eqz v10, :cond_2

    move v10, v2

    goto :goto_3

    :cond_2
    move v10, v0

    .line 534
    :goto_3
    invoke-virtual {v9, v10}, Lorg/mistergroup/shouldianswer/model/NumberCaption;->a(Z)V

    .line 535
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 539
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 540
    invoke-virtual {v1}, Landroidx/room/m;->a()V

    return-object v8

    :catchall_0
    move-exception p2

    .line 539
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 540
    invoke-virtual {v1}, Landroidx/room/m;->a()V

    .line 541
    throw p2
.end method
