.class public final Lorg/mistergroup/shouldianswer/model/q;
.super Ljava/lang/Object;
.source "CheckedCallDao_Impl.java"

# interfaces
.implements Lorg/mistergroup/shouldianswer/model/p;


# instance fields
.field private final a:Landroidx/room/j;

.field private final b:Landroidx/room/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/c<",
            "Lorg/mistergroup/shouldianswer/model/o;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lorg/mistergroup/shouldianswer/model/b;

.field private final d:Landroidx/room/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/b<",
            "Lorg/mistergroup/shouldianswer/model/o;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroidx/room/p;


# direct methods
.method public constructor <init>(Landroidx/room/j;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lorg/mistergroup/shouldianswer/model/b;

    invoke-direct {v0}, Lorg/mistergroup/shouldianswer/model/b;-><init>()V

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/q;->c:Lorg/mistergroup/shouldianswer/model/b;

    .line 32
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/model/q;->a:Landroidx/room/j;

    .line 33
    new-instance v0, Lorg/mistergroup/shouldianswer/model/q$1;

    invoke-direct {v0, p0, p1}, Lorg/mistergroup/shouldianswer/model/q$1;-><init>(Lorg/mistergroup/shouldianswer/model/q;Landroidx/room/j;)V

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/q;->b:Landroidx/room/c;

    .line 74
    new-instance v0, Lorg/mistergroup/shouldianswer/model/q$2;

    invoke-direct {v0, p0, p1}, Lorg/mistergroup/shouldianswer/model/q$2;-><init>(Lorg/mistergroup/shouldianswer/model/q;Landroidx/room/j;)V

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/q;->d:Landroidx/room/b;

    .line 85
    new-instance v0, Lorg/mistergroup/shouldianswer/model/q$3;

    invoke-direct {v0, p0, p1}, Lorg/mistergroup/shouldianswer/model/q$3;-><init>(Lorg/mistergroup/shouldianswer/model/q;Landroidx/room/j;)V

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/q;->e:Landroidx/room/p;

    return-void
.end method

.method static synthetic a(Lorg/mistergroup/shouldianswer/model/q;)Lorg/mistergroup/shouldianswer/model/b;
    .locals 0

    .line 20
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/model/q;->c:Lorg/mistergroup/shouldianswer/model/b;

    return-object p0
.end method


# virtual methods
.method public a(I)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lorg/mistergroup/shouldianswer/model/o;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v0, 0x1

    const-string v2, "SELECT * FROM checkedCall WHERE id>?"

    .line 273
    invoke-static {v2, v0}, Landroidx/room/m;->a(Ljava/lang/String;I)Landroidx/room/m;

    move-result-object v2

    move/from16 v3, p1

    int-to-long v3, v3

    .line 275
    invoke-virtual {v2, v0, v3, v4}, Landroidx/room/m;->a(IJ)V

    .line 276
    iget-object v0, v1, Lorg/mistergroup/shouldianswer/model/q;->a:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->f()V

    .line 277
    iget-object v0, v1, Lorg/mistergroup/shouldianswer/model/q;->a:Landroidx/room/j;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v4, v3}, Landroidx/room/b/c;->a(Landroidx/room/j;Landroidx/i/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v4

    :try_start_0
    const-string v0, "id"

    .line 279
    invoke-static {v4, v0}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "number"

    .line 280
    invoke-static {v4, v5}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "numberNormalized"

    .line 281
    invoke-static {v4, v6}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "country"

    .line 282
    invoke-static {v4, v7}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "rating"

    .line 283
    invoke-static {v4, v8}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "callDuration"

    .line 284
    invoke-static {v4, v9}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "callType"

    .line 285
    invoke-static {v4, v10}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "blockReason"

    .line 286
    invoke-static {v4, v11}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "time"

    .line 287
    invoke-static {v4, v12}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 288
    new-instance v13, Ljava/util/ArrayList;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 289
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 291
    new-instance v14, Lorg/mistergroup/shouldianswer/model/o;

    invoke-direct {v14}, Lorg/mistergroup/shouldianswer/model/o;-><init>()V

    .line 293
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 294
    invoke-virtual {v14, v15}, Lorg/mistergroup/shouldianswer/model/o;->a(I)V

    .line 296
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 297
    invoke-virtual {v14, v15}, Lorg/mistergroup/shouldianswer/model/o;->a(Ljava/lang/String;)V

    .line 299
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 300
    invoke-virtual {v14, v15}, Lorg/mistergroup/shouldianswer/model/o;->b(Ljava/lang/String;)V

    .line 302
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 303
    invoke-virtual {v14, v15}, Lorg/mistergroup/shouldianswer/model/o;->c(Ljava/lang/String;)V

    .line 306
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 307
    iget-object v3, v1, Lorg/mistergroup/shouldianswer/model/q;->c:Lorg/mistergroup/shouldianswer/model/b;

    invoke-virtual {v3, v15}, Lorg/mistergroup/shouldianswer/model/b;->c(I)Lorg/mistergroup/shouldianswer/model/ag;

    move-result-object v3

    .line 308
    invoke-virtual {v14, v3}, Lorg/mistergroup/shouldianswer/model/o;->a(Lorg/mistergroup/shouldianswer/model/ag;)V

    .line 310
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 311
    invoke-virtual {v14, v3}, Lorg/mistergroup/shouldianswer/model/o;->b(I)V

    .line 314
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 315
    iget-object v15, v1, Lorg/mistergroup/shouldianswer/model/q;->c:Lorg/mistergroup/shouldianswer/model/b;

    invoke-virtual {v15, v3}, Lorg/mistergroup/shouldianswer/model/b;->a(I)Lorg/mistergroup/shouldianswer/model/k;

    move-result-object v3

    .line 316
    invoke-virtual {v14, v3}, Lorg/mistergroup/shouldianswer/model/o;->a(Lorg/mistergroup/shouldianswer/model/k;)V

    .line 319
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 320
    iget-object v15, v1, Lorg/mistergroup/shouldianswer/model/q;->c:Lorg/mistergroup/shouldianswer/model/b;

    invoke-virtual {v15, v3}, Lorg/mistergroup/shouldianswer/model/b;->b(I)Lorg/mistergroup/shouldianswer/model/h;

    move-result-object v3

    .line 321
    invoke-virtual {v14, v3}, Lorg/mistergroup/shouldianswer/model/o;->a(Lorg/mistergroup/shouldianswer/model/h;)V

    .line 323
    invoke-interface {v4, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    .line 326
    :cond_0
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 328
    :goto_1
    invoke-virtual {v14, v3}, Lorg/mistergroup/shouldianswer/model/o;->a(Ljava/lang/Long;)V

    .line 329
    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    goto :goto_0

    .line 333
    :cond_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 334
    invoke-virtual {v2}, Landroidx/room/m;->a()V

    return-object v13

    :catchall_0
    move-exception v0

    .line 333
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 334
    invoke-virtual {v2}, Landroidx/room/m;->a()V

    .line 335
    throw v0
.end method

.method public a(Ljava/lang/String;J)Lorg/mistergroup/shouldianswer/model/o;
    .locals 10

    const/4 v0, 0x2

    const-string v1, "SELECT * FROM checkedcall WHERE number=? and time<=? order by time desc limit 1"

    .line 409
    invoke-static {v1, v0}, Landroidx/room/m;->a(Ljava/lang/String;I)Landroidx/room/m;

    move-result-object v1

    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 412
    invoke-virtual {v1, v2}, Landroidx/room/m;->a(I)V

    goto :goto_0

    .line 414
    :cond_0
    invoke-virtual {v1, v2, p1}, Landroidx/room/m;->a(ILjava/lang/String;)V

    .line 417
    :goto_0
    invoke-virtual {v1, v0, p2, p3}, Landroidx/room/m;->a(IJ)V

    .line 418
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/model/q;->a:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->f()V

    .line 419
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/model/q;->a:Landroidx/room/j;

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-static {p1, v1, p2, p3}, Landroidx/room/b/c;->a(Landroidx/room/j;Landroidx/i/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string p2, "id"

    .line 421
    invoke-static {p1, p2}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p2

    const-string v0, "number"

    .line 422
    invoke-static {p1, v0}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v2, "numberNormalized"

    .line 423
    invoke-static {p1, v2}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "country"

    .line 424
    invoke-static {p1, v3}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "rating"

    .line 425
    invoke-static {p1, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "callDuration"

    .line 426
    invoke-static {p1, v5}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "callType"

    .line 427
    invoke-static {p1, v6}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "blockReason"

    .line 428
    invoke-static {p1, v7}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "time"

    .line 429
    invoke-static {p1, v8}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 431
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 432
    new-instance v9, Lorg/mistergroup/shouldianswer/model/o;

    invoke-direct {v9}, Lorg/mistergroup/shouldianswer/model/o;-><init>()V

    .line 434
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 435
    invoke-virtual {v9, p2}, Lorg/mistergroup/shouldianswer/model/o;->a(I)V

    .line 437
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 438
    invoke-virtual {v9, p2}, Lorg/mistergroup/shouldianswer/model/o;->a(Ljava/lang/String;)V

    .line 440
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 441
    invoke-virtual {v9, p2}, Lorg/mistergroup/shouldianswer/model/o;->b(Ljava/lang/String;)V

    .line 443
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 444
    invoke-virtual {v9, p2}, Lorg/mistergroup/shouldianswer/model/o;->c(Ljava/lang/String;)V

    .line 447
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 448
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/q;->c:Lorg/mistergroup/shouldianswer/model/b;

    invoke-virtual {v0, p2}, Lorg/mistergroup/shouldianswer/model/b;->c(I)Lorg/mistergroup/shouldianswer/model/ag;

    move-result-object p2

    .line 449
    invoke-virtual {v9, p2}, Lorg/mistergroup/shouldianswer/model/o;->a(Lorg/mistergroup/shouldianswer/model/ag;)V

    .line 451
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 452
    invoke-virtual {v9, p2}, Lorg/mistergroup/shouldianswer/model/o;->b(I)V

    .line 455
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 456
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/q;->c:Lorg/mistergroup/shouldianswer/model/b;

    invoke-virtual {v0, p2}, Lorg/mistergroup/shouldianswer/model/b;->a(I)Lorg/mistergroup/shouldianswer/model/k;

    move-result-object p2

    .line 457
    invoke-virtual {v9, p2}, Lorg/mistergroup/shouldianswer/model/o;->a(Lorg/mistergroup/shouldianswer/model/k;)V

    .line 460
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 461
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/q;->c:Lorg/mistergroup/shouldianswer/model/b;

    invoke-virtual {v0, p2}, Lorg/mistergroup/shouldianswer/model/b;->b(I)Lorg/mistergroup/shouldianswer/model/h;

    move-result-object p2

    .line 462
    invoke-virtual {v9, p2}, Lorg/mistergroup/shouldianswer/model/o;->a(Lorg/mistergroup/shouldianswer/model/h;)V

    .line 464
    invoke-interface {p1, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    .line 467
    :cond_1
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    .line 469
    :goto_1
    invoke-virtual {v9, p3}, Lorg/mistergroup/shouldianswer/model/o;->a(Ljava/lang/Long;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p3, v9

    .line 475
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 476
    invoke-virtual {v1}, Landroidx/room/m;->a()V

    return-object p3

    :catchall_0
    move-exception p2

    .line 475
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 476
    invoke-virtual {v1}, Landroidx/room/m;->a()V

    .line 477
    throw p2
.end method

.method public varargs a([Lorg/mistergroup/shouldianswer/model/o;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/q;->a:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->f()V

    .line 97
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/q;->a:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->g()V

    .line 99
    :try_start_0
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/q;->b:Landroidx/room/c;

    invoke-virtual {v0, p1}, Landroidx/room/c;->a([Ljava/lang/Object;)V

    .line 100
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/model/q;->a:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/model/q;->a:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->h()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/q;->a:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->h()V

    .line 103
    throw p1
.end method

.method public b(Ljava/lang/String;J)Lorg/mistergroup/shouldianswer/model/o;
    .locals 10

    const/4 v0, 0x2

    const-string v1, "SELECT * FROM checkedcall WHERE number=? and time>=? order by time asc limit 1"

    .line 551
    invoke-static {v1, v0}, Landroidx/room/m;->a(Ljava/lang/String;I)Landroidx/room/m;

    move-result-object v1

    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 554
    invoke-virtual {v1, v2}, Landroidx/room/m;->a(I)V

    goto :goto_0

    .line 556
    :cond_0
    invoke-virtual {v1, v2, p1}, Landroidx/room/m;->a(ILjava/lang/String;)V

    .line 559
    :goto_0
    invoke-virtual {v1, v0, p2, p3}, Landroidx/room/m;->a(IJ)V

    .line 560
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/model/q;->a:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->f()V

    .line 561
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/model/q;->a:Landroidx/room/j;

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-static {p1, v1, p2, p3}, Landroidx/room/b/c;->a(Landroidx/room/j;Landroidx/i/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string p2, "id"

    .line 563
    invoke-static {p1, p2}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p2

    const-string v0, "number"

    .line 564
    invoke-static {p1, v0}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v2, "numberNormalized"

    .line 565
    invoke-static {p1, v2}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "country"

    .line 566
    invoke-static {p1, v3}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "rating"

    .line 567
    invoke-static {p1, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "callDuration"

    .line 568
    invoke-static {p1, v5}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "callType"

    .line 569
    invoke-static {p1, v6}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "blockReason"

    .line 570
    invoke-static {p1, v7}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "time"

    .line 571
    invoke-static {p1, v8}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 573
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 574
    new-instance v9, Lorg/mistergroup/shouldianswer/model/o;

    invoke-direct {v9}, Lorg/mistergroup/shouldianswer/model/o;-><init>()V

    .line 576
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 577
    invoke-virtual {v9, p2}, Lorg/mistergroup/shouldianswer/model/o;->a(I)V

    .line 579
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 580
    invoke-virtual {v9, p2}, Lorg/mistergroup/shouldianswer/model/o;->a(Ljava/lang/String;)V

    .line 582
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 583
    invoke-virtual {v9, p2}, Lorg/mistergroup/shouldianswer/model/o;->b(Ljava/lang/String;)V

    .line 585
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 586
    invoke-virtual {v9, p2}, Lorg/mistergroup/shouldianswer/model/o;->c(Ljava/lang/String;)V

    .line 589
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 590
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/q;->c:Lorg/mistergroup/shouldianswer/model/b;

    invoke-virtual {v0, p2}, Lorg/mistergroup/shouldianswer/model/b;->c(I)Lorg/mistergroup/shouldianswer/model/ag;

    move-result-object p2

    .line 591
    invoke-virtual {v9, p2}, Lorg/mistergroup/shouldianswer/model/o;->a(Lorg/mistergroup/shouldianswer/model/ag;)V

    .line 593
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 594
    invoke-virtual {v9, p2}, Lorg/mistergroup/shouldianswer/model/o;->b(I)V

    .line 597
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 598
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/q;->c:Lorg/mistergroup/shouldianswer/model/b;

    invoke-virtual {v0, p2}, Lorg/mistergroup/shouldianswer/model/b;->a(I)Lorg/mistergroup/shouldianswer/model/k;

    move-result-object p2

    .line 599
    invoke-virtual {v9, p2}, Lorg/mistergroup/shouldianswer/model/o;->a(Lorg/mistergroup/shouldianswer/model/k;)V

    .line 602
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 603
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/q;->c:Lorg/mistergroup/shouldianswer/model/b;

    invoke-virtual {v0, p2}, Lorg/mistergroup/shouldianswer/model/b;->b(I)Lorg/mistergroup/shouldianswer/model/h;

    move-result-object p2

    .line 604
    invoke-virtual {v9, p2}, Lorg/mistergroup/shouldianswer/model/o;->a(Lorg/mistergroup/shouldianswer/model/h;)V

    .line 606
    invoke-interface {p1, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    .line 609
    :cond_1
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    .line 611
    :goto_1
    invoke-virtual {v9, p3}, Lorg/mistergroup/shouldianswer/model/o;->a(Ljava/lang/Long;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p3, v9

    .line 617
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 618
    invoke-virtual {v1}, Landroidx/room/m;->a()V

    return-object p3

    :catchall_0
    move-exception p2

    .line 617
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 618
    invoke-virtual {v1}, Landroidx/room/m;->a()V

    .line 619
    throw p2
.end method
