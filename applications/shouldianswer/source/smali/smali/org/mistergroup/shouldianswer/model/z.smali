.class public final Lorg/mistergroup/shouldianswer/model/z;
.super Ljava/lang/Object;
.source "NumberReportDao_Impl.java"

# interfaces
.implements Lorg/mistergroup/shouldianswer/model/y;


# instance fields
.field private final a:Landroidx/room/j;

.field private final b:Landroidx/room/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/c<",
            "Lorg/mistergroup/shouldianswer/model/NumberReport;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lorg/mistergroup/shouldianswer/model/b;

.field private final d:Landroidx/room/p;

.field private final e:Landroidx/room/p;

.field private final f:Landroidx/room/p;


# direct methods
.method public constructor <init>(Landroidx/room/j;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lorg/mistergroup/shouldianswer/model/b;

    invoke-direct {v0}, Lorg/mistergroup/shouldianswer/model/b;-><init>()V

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/z;->c:Lorg/mistergroup/shouldianswer/model/b;

    .line 34
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/model/z;->a:Landroidx/room/j;

    .line 35
    new-instance v0, Lorg/mistergroup/shouldianswer/model/z$1;

    invoke-direct {v0, p0, p1}, Lorg/mistergroup/shouldianswer/model/z$1;-><init>(Lorg/mistergroup/shouldianswer/model/z;Landroidx/room/j;)V

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/z;->b:Landroidx/room/c;

    .line 98
    new-instance v0, Lorg/mistergroup/shouldianswer/model/z$2;

    invoke-direct {v0, p0, p1}, Lorg/mistergroup/shouldianswer/model/z$2;-><init>(Lorg/mistergroup/shouldianswer/model/z;Landroidx/room/j;)V

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/z;->d:Landroidx/room/p;

    .line 105
    new-instance v0, Lorg/mistergroup/shouldianswer/model/z$3;

    invoke-direct {v0, p0, p1}, Lorg/mistergroup/shouldianswer/model/z$3;-><init>(Lorg/mistergroup/shouldianswer/model/z;Landroidx/room/j;)V

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/z;->e:Landroidx/room/p;

    .line 112
    new-instance v0, Lorg/mistergroup/shouldianswer/model/z$4;

    invoke-direct {v0, p0, p1}, Lorg/mistergroup/shouldianswer/model/z$4;-><init>(Lorg/mistergroup/shouldianswer/model/z;Landroidx/room/j;)V

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/z;->f:Landroidx/room/p;

    return-void
.end method

.method static synthetic a(Lorg/mistergroup/shouldianswer/model/z;)Lorg/mistergroup/shouldianswer/model/b;
    .locals 0

    .line 20
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/model/z;->c:Lorg/mistergroup/shouldianswer/model/b;

    return-object p0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/mistergroup/shouldianswer/model/NumberReport;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v0, 0x0

    const-string v2, "SELECT * FROM numberreport where deleted=0 order by number asc"

    .line 286
    invoke-static {v2, v0}, Landroidx/room/m;->a(Ljava/lang/String;I)Landroidx/room/m;

    move-result-object v2

    .line 287
    iget-object v3, v1, Lorg/mistergroup/shouldianswer/model/z;->a:Landroidx/room/j;

    invoke-virtual {v3}, Landroidx/room/j;->f()V

    .line 288
    iget-object v3, v1, Lorg/mistergroup/shouldianswer/model/z;->a:Landroidx/room/j;

    const/4 v4, 0x0

    invoke-static {v3, v2, v0, v4}, Landroidx/room/b/c;->a(Landroidx/room/j;Landroidx/i/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    const-string v5, "id"

    .line 290
    invoke-static {v3, v5}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "uuid"

    .line 291
    invoke-static {v3, v6}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "number"

    .line 292
    invoke-static {v3, v7}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "numberNormalized"

    .line 293
    invoke-static {v3, v8}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "rating"

    .line 294
    invoke-static {v3, v9}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "category"

    .line 295
    invoke-static {v3, v10}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "title"

    .line 296
    invoke-static {v3, v11}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "comment"

    .line 297
    invoke-static {v3, v12}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "country"

    .line 298
    invoke-static {v3, v13}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "time"

    .line 299
    invoke-static {v3, v14}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "uploaded"

    .line 300
    invoke-static {v3, v15}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v0, "unconfirmed"

    .line 301
    invoke-static {v3, v0}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v4, "deleted"

    .line 302
    invoke-static {v3, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v2

    .line 303
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    move/from16 v17, v4

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 304
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 306
    new-instance v4, Lorg/mistergroup/shouldianswer/model/NumberReport;

    invoke-direct {v4}, Lorg/mistergroup/shouldianswer/model/NumberReport;-><init>()V

    move-object/from16 v18, v2

    .line 308
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 309
    invoke-virtual {v4, v2}, Lorg/mistergroup/shouldianswer/model/NumberReport;->a(I)V

    .line 311
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 312
    invoke-virtual {v4, v2}, Lorg/mistergroup/shouldianswer/model/NumberReport;->a(Ljava/lang/String;)V

    .line 314
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 315
    invoke-virtual {v4, v2}, Lorg/mistergroup/shouldianswer/model/NumberReport;->b(Ljava/lang/String;)V

    .line 317
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 318
    invoke-virtual {v4, v2}, Lorg/mistergroup/shouldianswer/model/NumberReport;->c(Ljava/lang/String;)V

    .line 321
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move/from16 v19, v5

    .line 322
    iget-object v5, v1, Lorg/mistergroup/shouldianswer/model/z;->c:Lorg/mistergroup/shouldianswer/model/b;

    invoke-virtual {v5, v2}, Lorg/mistergroup/shouldianswer/model/b;->c(I)Lorg/mistergroup/shouldianswer/model/ag;

    move-result-object v2

    .line 323
    invoke-virtual {v4, v2}, Lorg/mistergroup/shouldianswer/model/NumberReport;->a(Lorg/mistergroup/shouldianswer/model/ag;)V

    .line 326
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 327
    iget-object v5, v1, Lorg/mistergroup/shouldianswer/model/z;->c:Lorg/mistergroup/shouldianswer/model/b;

    invoke-virtual {v5, v2}, Lorg/mistergroup/shouldianswer/model/b;->d(I)Lorg/mistergroup/shouldianswer/model/m;

    move-result-object v2

    .line 328
    invoke-virtual {v4, v2}, Lorg/mistergroup/shouldianswer/model/NumberReport;->a(Lorg/mistergroup/shouldianswer/model/m;)V

    .line 330
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 331
    invoke-virtual {v4, v2}, Lorg/mistergroup/shouldianswer/model/NumberReport;->d(Ljava/lang/String;)V

    .line 333
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 334
    invoke-virtual {v4, v2}, Lorg/mistergroup/shouldianswer/model/NumberReport;->e(Ljava/lang/String;)V

    .line 336
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 337
    invoke-virtual {v4, v2}, Lorg/mistergroup/shouldianswer/model/NumberReport;->f(Ljava/lang/String;)V

    .line 340
    invoke-interface {v3, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    .line 343
    :cond_0
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 345
    :goto_1
    iget-object v5, v1, Lorg/mistergroup/shouldianswer/model/z;->c:Lorg/mistergroup/shouldianswer/model/b;

    invoke-virtual {v5, v2}, Lorg/mistergroup/shouldianswer/model/b;->a(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v2

    .line 346
    invoke-virtual {v4, v2}, Lorg/mistergroup/shouldianswer/model/NumberReport;->a(Ljava/util/Date;)V

    .line 349
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    move v2, v5

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    .line 351
    :goto_2
    invoke-virtual {v4, v2}, Lorg/mistergroup/shouldianswer/model/NumberReport;->a(Z)V

    .line 354
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v5

    goto :goto_3

    :cond_2
    const/4 v2, 0x0

    .line 356
    :goto_3
    invoke-virtual {v4, v2}, Lorg/mistergroup/shouldianswer/model/NumberReport;->b(Z)V

    move/from16 v2, v17

    .line 359
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    if-eqz v17, :cond_3

    goto :goto_4

    :cond_3
    const/4 v5, 0x0

    .line 361
    :goto_4
    invoke-virtual {v4, v5}, Lorg/mistergroup/shouldianswer/model/NumberReport;->c(Z)V

    move-object/from16 v5, v18

    .line 362
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v17, v2

    move-object v2, v5

    move/from16 v5, v19

    goto/16 :goto_0

    :cond_4
    move-object v5, v2

    .line 366
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 367
    invoke-virtual/range {v16 .. v16}, Landroidx/room/m;->a()V

    return-object v5

    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    .line 366
    :goto_5
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 367
    invoke-virtual/range {v16 .. v16}, Landroidx/room/m;->a()V

    .line 368
    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/mistergroup/shouldianswer/model/NumberReport;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const/4 v3, 0x2

    const-string v4, "SELECT * FROM numberreport WHERE number=? and country=? and deleted=0"

    .line 740
    invoke-static {v4, v3}, Landroidx/room/m;->a(Ljava/lang/String;I)Landroidx/room/m;

    move-result-object v4

    const/4 v5, 0x1

    if-nez v0, :cond_0

    .line 743
    invoke-virtual {v4, v5}, Landroidx/room/m;->a(I)V

    goto :goto_0

    .line 745
    :cond_0
    invoke-virtual {v4, v5, v0}, Landroidx/room/m;->a(ILjava/lang/String;)V

    :goto_0
    if-nez v2, :cond_1

    .line 749
    invoke-virtual {v4, v3}, Landroidx/room/m;->a(I)V

    goto :goto_1

    .line 751
    :cond_1
    invoke-virtual {v4, v3, v2}, Landroidx/room/m;->a(ILjava/lang/String;)V

    .line 753
    :goto_1
    iget-object v0, v1, Lorg/mistergroup/shouldianswer/model/z;->a:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->f()V

    .line 754
    iget-object v0, v1, Lorg/mistergroup/shouldianswer/model/z;->a:Landroidx/room/j;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v4, v3, v2}, Landroidx/room/b/c;->a(Landroidx/room/j;Landroidx/i/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v6

    :try_start_0
    const-string v0, "id"

    .line 756
    invoke-static {v6, v0}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v7, "uuid"

    .line 757
    invoke-static {v6, v7}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "number"

    .line 758
    invoke-static {v6, v8}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "numberNormalized"

    .line 759
    invoke-static {v6, v9}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "rating"

    .line 760
    invoke-static {v6, v10}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "category"

    .line 761
    invoke-static {v6, v11}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "title"

    .line 762
    invoke-static {v6, v12}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "comment"

    .line 763
    invoke-static {v6, v13}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "country"

    .line 764
    invoke-static {v6, v14}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "time"

    .line 765
    invoke-static {v6, v15}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v2, "uploaded"

    .line 766
    invoke-static {v6, v2}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "unconfirmed"

    .line 767
    invoke-static {v6, v3}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v5, "deleted"

    .line 768
    invoke-static {v6, v5}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v4

    .line 769
    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    move/from16 v17, v5

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 770
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 772
    new-instance v5, Lorg/mistergroup/shouldianswer/model/NumberReport;

    invoke-direct {v5}, Lorg/mistergroup/shouldianswer/model/NumberReport;-><init>()V

    move-object/from16 v18, v4

    .line 774
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 775
    invoke-virtual {v5, v4}, Lorg/mistergroup/shouldianswer/model/NumberReport;->a(I)V

    .line 777
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 778
    invoke-virtual {v5, v4}, Lorg/mistergroup/shouldianswer/model/NumberReport;->a(Ljava/lang/String;)V

    .line 780
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 781
    invoke-virtual {v5, v4}, Lorg/mistergroup/shouldianswer/model/NumberReport;->b(Ljava/lang/String;)V

    .line 783
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 784
    invoke-virtual {v5, v4}, Lorg/mistergroup/shouldianswer/model/NumberReport;->c(Ljava/lang/String;)V

    .line 787
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move/from16 v19, v0

    .line 788
    iget-object v0, v1, Lorg/mistergroup/shouldianswer/model/z;->c:Lorg/mistergroup/shouldianswer/model/b;

    invoke-virtual {v0, v4}, Lorg/mistergroup/shouldianswer/model/b;->c(I)Lorg/mistergroup/shouldianswer/model/ag;

    move-result-object v0

    .line 789
    invoke-virtual {v5, v0}, Lorg/mistergroup/shouldianswer/model/NumberReport;->a(Lorg/mistergroup/shouldianswer/model/ag;)V

    .line 792
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 793
    iget-object v4, v1, Lorg/mistergroup/shouldianswer/model/z;->c:Lorg/mistergroup/shouldianswer/model/b;

    invoke-virtual {v4, v0}, Lorg/mistergroup/shouldianswer/model/b;->d(I)Lorg/mistergroup/shouldianswer/model/m;

    move-result-object v0

    .line 794
    invoke-virtual {v5, v0}, Lorg/mistergroup/shouldianswer/model/NumberReport;->a(Lorg/mistergroup/shouldianswer/model/m;)V

    .line 796
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 797
    invoke-virtual {v5, v0}, Lorg/mistergroup/shouldianswer/model/NumberReport;->d(Ljava/lang/String;)V

    .line 799
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 800
    invoke-virtual {v5, v0}, Lorg/mistergroup/shouldianswer/model/NumberReport;->e(Ljava/lang/String;)V

    .line 802
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 803
    invoke-virtual {v5, v0}, Lorg/mistergroup/shouldianswer/model/NumberReport;->f(Ljava/lang/String;)V

    .line 806
    invoke-interface {v6, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_3

    .line 809
    :cond_2
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 811
    :goto_3
    iget-object v4, v1, Lorg/mistergroup/shouldianswer/model/z;->c:Lorg/mistergroup/shouldianswer/model/b;

    invoke-virtual {v4, v0}, Lorg/mistergroup/shouldianswer/model/b;->a(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v0

    .line 812
    invoke-virtual {v5, v0}, Lorg/mistergroup/shouldianswer/model/NumberReport;->a(Ljava/util/Date;)V

    .line 815
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_4

    :cond_3
    const/4 v0, 0x0

    .line 817
    :goto_4
    invoke-virtual {v5, v0}, Lorg/mistergroup/shouldianswer/model/NumberReport;->a(Z)V

    .line 820
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    .line 822
    :goto_5
    invoke-virtual {v5, v0}, Lorg/mistergroup/shouldianswer/model/NumberReport;->b(Z)V

    move/from16 v0, v17

    .line 825
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    goto :goto_6

    :cond_5
    const/4 v4, 0x0

    .line 827
    :goto_6
    invoke-virtual {v5, v4}, Lorg/mistergroup/shouldianswer/model/NumberReport;->c(Z)V

    move-object/from16 v4, v18

    .line 828
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v17, v0

    move/from16 v0, v19

    goto/16 :goto_2

    .line 832
    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 833
    invoke-virtual/range {v16 .. v16}, Landroidx/room/m;->a()V

    return-object v4

    :catchall_0
    move-exception v0

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object/from16 v16, v4

    .line 832
    :goto_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 833
    invoke-virtual/range {v16 .. v16}, Landroidx/room/m;->a()V

    .line 834
    throw v0
.end method

.method public a(I)V
    .locals 3

    .line 167
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/z;->a:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->f()V

    .line 168
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/z;->e:Landroidx/room/p;

    invoke-virtual {v0}, Landroidx/room/p;->c()Landroidx/i/a/f;

    move-result-object v0

    int-to-long v1, p1

    const/4 p1, 0x1

    .line 170
    invoke-interface {v0, p1, v1, v2}, Landroidx/i/a/f;->a(IJ)V

    .line 171
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/model/z;->a:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->g()V

    .line 173
    :try_start_0
    invoke-interface {v0}, Landroidx/i/a/f;->a()I

    .line 174
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/model/z;->a:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/model/z;->a:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->h()V

    .line 177
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/model/z;->e:Landroidx/room/p;

    invoke-virtual {p1, v0}, Landroidx/room/p;->a(Landroidx/i/a/f;)V

    return-void

    :catchall_0
    move-exception p1

    .line 176
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/model/z;->a:Landroidx/room/j;

    invoke-virtual {v1}, Landroidx/room/j;->h()V

    .line 177
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/model/z;->e:Landroidx/room/p;

    invoke-virtual {v1, v0}, Landroidx/room/p;->a(Landroidx/i/a/f;)V

    .line 178
    throw p1
.end method

.method public a(IZ)V
    .locals 3

    .line 147
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/z;->a:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->f()V

    .line 148
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/z;->d:Landroidx/room/p;

    invoke-virtual {v0}, Landroidx/room/p;->c()Landroidx/i/a/f;

    move-result-object v0

    int-to-long v1, p2

    const/4 p2, 0x1

    .line 152
    invoke-interface {v0, p2, v1, v2}, Landroidx/i/a/f;->a(IJ)V

    const/4 p2, 0x2

    int-to-long v1, p1

    .line 154
    invoke-interface {v0, p2, v1, v2}, Landroidx/i/a/f;->a(IJ)V

    .line 155
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/model/z;->a:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->g()V

    .line 157
    :try_start_0
    invoke-interface {v0}, Landroidx/i/a/f;->a()I

    .line 158
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/model/z;->a:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/model/z;->a:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->h()V

    .line 161
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/model/z;->d:Landroidx/room/p;

    invoke-virtual {p1, v0}, Landroidx/room/p;->a(Landroidx/i/a/f;)V

    return-void

    :catchall_0
    move-exception p1

    .line 160
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/model/z;->a:Landroidx/room/j;

    invoke-virtual {p2}, Landroidx/room/j;->h()V

    .line 161
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/model/z;->d:Landroidx/room/p;

    invoke-virtual {p2, v0}, Landroidx/room/p;->a(Landroidx/i/a/f;)V

    .line 162
    throw p1
.end method

.method public a(Lorg/mistergroup/shouldianswer/model/NumberReport;)V
    .locals 1

    .line 135
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/z;->a:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->f()V

    .line 136
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/z;->a:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->g()V

    .line 138
    :try_start_0
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/z;->b:Landroidx/room/c;

    invoke-virtual {v0, p1}, Landroidx/room/c;->a(Ljava/lang/Object;)V

    .line 139
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/model/z;->a:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/model/z;->a:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->h()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/z;->a:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->h()V

    .line 142
    throw p1
.end method

.method public b()Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/mistergroup/shouldianswer/model/NumberReport;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v0, 0x0

    const-string v2, "SELECT * FROM numberreport WHERE uploaded=0 and unconfirmed=0"

    .line 374
    invoke-static {v2, v0}, Landroidx/room/m;->a(Ljava/lang/String;I)Landroidx/room/m;

    move-result-object v2

    .line 375
    iget-object v3, v1, Lorg/mistergroup/shouldianswer/model/z;->a:Landroidx/room/j;

    invoke-virtual {v3}, Landroidx/room/j;->f()V

    .line 376
    iget-object v3, v1, Lorg/mistergroup/shouldianswer/model/z;->a:Landroidx/room/j;

    const/4 v4, 0x0

    invoke-static {v3, v2, v0, v4}, Landroidx/room/b/c;->a(Landroidx/room/j;Landroidx/i/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    const-string v5, "id"

    .line 378
    invoke-static {v3, v5}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "uuid"

    .line 379
    invoke-static {v3, v6}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "number"

    .line 380
    invoke-static {v3, v7}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "numberNormalized"

    .line 381
    invoke-static {v3, v8}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "rating"

    .line 382
    invoke-static {v3, v9}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "category"

    .line 383
    invoke-static {v3, v10}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "title"

    .line 384
    invoke-static {v3, v11}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "comment"

    .line 385
    invoke-static {v3, v12}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "country"

    .line 386
    invoke-static {v3, v13}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "time"

    .line 387
    invoke-static {v3, v14}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "uploaded"

    .line 388
    invoke-static {v3, v15}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v0, "unconfirmed"

    .line 389
    invoke-static {v3, v0}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v4, "deleted"

    .line 390
    invoke-static {v3, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v2

    .line 391
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    move/from16 v17, v4

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 392
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 394
    new-instance v4, Lorg/mistergroup/shouldianswer/model/NumberReport;

    invoke-direct {v4}, Lorg/mistergroup/shouldianswer/model/NumberReport;-><init>()V

    move-object/from16 v18, v2

    .line 396
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 397
    invoke-virtual {v4, v2}, Lorg/mistergroup/shouldianswer/model/NumberReport;->a(I)V

    .line 399
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 400
    invoke-virtual {v4, v2}, Lorg/mistergroup/shouldianswer/model/NumberReport;->a(Ljava/lang/String;)V

    .line 402
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 403
    invoke-virtual {v4, v2}, Lorg/mistergroup/shouldianswer/model/NumberReport;->b(Ljava/lang/String;)V

    .line 405
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 406
    invoke-virtual {v4, v2}, Lorg/mistergroup/shouldianswer/model/NumberReport;->c(Ljava/lang/String;)V

    .line 409
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move/from16 v19, v5

    .line 410
    iget-object v5, v1, Lorg/mistergroup/shouldianswer/model/z;->c:Lorg/mistergroup/shouldianswer/model/b;

    invoke-virtual {v5, v2}, Lorg/mistergroup/shouldianswer/model/b;->c(I)Lorg/mistergroup/shouldianswer/model/ag;

    move-result-object v2

    .line 411
    invoke-virtual {v4, v2}, Lorg/mistergroup/shouldianswer/model/NumberReport;->a(Lorg/mistergroup/shouldianswer/model/ag;)V

    .line 414
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 415
    iget-object v5, v1, Lorg/mistergroup/shouldianswer/model/z;->c:Lorg/mistergroup/shouldianswer/model/b;

    invoke-virtual {v5, v2}, Lorg/mistergroup/shouldianswer/model/b;->d(I)Lorg/mistergroup/shouldianswer/model/m;

    move-result-object v2

    .line 416
    invoke-virtual {v4, v2}, Lorg/mistergroup/shouldianswer/model/NumberReport;->a(Lorg/mistergroup/shouldianswer/model/m;)V

    .line 418
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 419
    invoke-virtual {v4, v2}, Lorg/mistergroup/shouldianswer/model/NumberReport;->d(Ljava/lang/String;)V

    .line 421
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 422
    invoke-virtual {v4, v2}, Lorg/mistergroup/shouldianswer/model/NumberReport;->e(Ljava/lang/String;)V

    .line 424
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 425
    invoke-virtual {v4, v2}, Lorg/mistergroup/shouldianswer/model/NumberReport;->f(Ljava/lang/String;)V

    .line 428
    invoke-interface {v3, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    .line 431
    :cond_0
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 433
    :goto_1
    iget-object v5, v1, Lorg/mistergroup/shouldianswer/model/z;->c:Lorg/mistergroup/shouldianswer/model/b;

    invoke-virtual {v5, v2}, Lorg/mistergroup/shouldianswer/model/b;->a(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v2

    .line 434
    invoke-virtual {v4, v2}, Lorg/mistergroup/shouldianswer/model/NumberReport;->a(Ljava/util/Date;)V

    .line 437
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    move v2, v5

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    .line 439
    :goto_2
    invoke-virtual {v4, v2}, Lorg/mistergroup/shouldianswer/model/NumberReport;->a(Z)V

    .line 442
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v5

    goto :goto_3

    :cond_2
    const/4 v2, 0x0

    .line 444
    :goto_3
    invoke-virtual {v4, v2}, Lorg/mistergroup/shouldianswer/model/NumberReport;->b(Z)V

    move/from16 v2, v17

    .line 447
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    if-eqz v17, :cond_3

    goto :goto_4

    :cond_3
    const/4 v5, 0x0

    .line 449
    :goto_4
    invoke-virtual {v4, v5}, Lorg/mistergroup/shouldianswer/model/NumberReport;->c(Z)V

    move-object/from16 v5, v18

    .line 450
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v17, v2

    move-object v2, v5

    move/from16 v5, v19

    goto/16 :goto_0

    :cond_4
    move-object v5, v2

    .line 454
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 455
    invoke-virtual/range {v16 .. v16}, Landroidx/room/m;->a()V

    return-object v5

    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    .line 454
    :goto_5
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 455
    invoke-virtual/range {v16 .. v16}, Landroidx/room/m;->a()V

    .line 456
    throw v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/mistergroup/shouldianswer/model/NumberReport;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const/4 v3, 0x2

    const-string v4, "SELECT * FROM numberreport WHERE numberNormalized=? and country=? and deleted=0"

    .line 934
    invoke-static {v4, v3}, Landroidx/room/m;->a(Ljava/lang/String;I)Landroidx/room/m;

    move-result-object v4

    const/4 v5, 0x1

    if-nez v0, :cond_0

    .line 937
    invoke-virtual {v4, v5}, Landroidx/room/m;->a(I)V

    goto :goto_0

    .line 939
    :cond_0
    invoke-virtual {v4, v5, v0}, Landroidx/room/m;->a(ILjava/lang/String;)V

    :goto_0
    if-nez v2, :cond_1

    .line 943
    invoke-virtual {v4, v3}, Landroidx/room/m;->a(I)V

    goto :goto_1

    .line 945
    :cond_1
    invoke-virtual {v4, v3, v2}, Landroidx/room/m;->a(ILjava/lang/String;)V

    .line 947
    :goto_1
    iget-object v0, v1, Lorg/mistergroup/shouldianswer/model/z;->a:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->f()V

    .line 948
    iget-object v0, v1, Lorg/mistergroup/shouldianswer/model/z;->a:Landroidx/room/j;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v4, v3, v2}, Landroidx/room/b/c;->a(Landroidx/room/j;Landroidx/i/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v6

    :try_start_0
    const-string v0, "id"

    .line 950
    invoke-static {v6, v0}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v7, "uuid"

    .line 951
    invoke-static {v6, v7}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "number"

    .line 952
    invoke-static {v6, v8}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "numberNormalized"

    .line 953
    invoke-static {v6, v9}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "rating"

    .line 954
    invoke-static {v6, v10}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "category"

    .line 955
    invoke-static {v6, v11}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "title"

    .line 956
    invoke-static {v6, v12}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "comment"

    .line 957
    invoke-static {v6, v13}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "country"

    .line 958
    invoke-static {v6, v14}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "time"

    .line 959
    invoke-static {v6, v15}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v2, "uploaded"

    .line 960
    invoke-static {v6, v2}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "unconfirmed"

    .line 961
    invoke-static {v6, v3}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v5, "deleted"

    .line 962
    invoke-static {v6, v5}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v4

    .line 963
    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    move/from16 v17, v5

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 964
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 966
    new-instance v5, Lorg/mistergroup/shouldianswer/model/NumberReport;

    invoke-direct {v5}, Lorg/mistergroup/shouldianswer/model/NumberReport;-><init>()V

    move-object/from16 v18, v4

    .line 968
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 969
    invoke-virtual {v5, v4}, Lorg/mistergroup/shouldianswer/model/NumberReport;->a(I)V

    .line 971
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 972
    invoke-virtual {v5, v4}, Lorg/mistergroup/shouldianswer/model/NumberReport;->a(Ljava/lang/String;)V

    .line 974
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 975
    invoke-virtual {v5, v4}, Lorg/mistergroup/shouldianswer/model/NumberReport;->b(Ljava/lang/String;)V

    .line 977
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 978
    invoke-virtual {v5, v4}, Lorg/mistergroup/shouldianswer/model/NumberReport;->c(Ljava/lang/String;)V

    .line 981
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move/from16 v19, v0

    .line 982
    iget-object v0, v1, Lorg/mistergroup/shouldianswer/model/z;->c:Lorg/mistergroup/shouldianswer/model/b;

    invoke-virtual {v0, v4}, Lorg/mistergroup/shouldianswer/model/b;->c(I)Lorg/mistergroup/shouldianswer/model/ag;

    move-result-object v0

    .line 983
    invoke-virtual {v5, v0}, Lorg/mistergroup/shouldianswer/model/NumberReport;->a(Lorg/mistergroup/shouldianswer/model/ag;)V

    .line 986
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 987
    iget-object v4, v1, Lorg/mistergroup/shouldianswer/model/z;->c:Lorg/mistergroup/shouldianswer/model/b;

    invoke-virtual {v4, v0}, Lorg/mistergroup/shouldianswer/model/b;->d(I)Lorg/mistergroup/shouldianswer/model/m;

    move-result-object v0

    .line 988
    invoke-virtual {v5, v0}, Lorg/mistergroup/shouldianswer/model/NumberReport;->a(Lorg/mistergroup/shouldianswer/model/m;)V

    .line 990
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 991
    invoke-virtual {v5, v0}, Lorg/mistergroup/shouldianswer/model/NumberReport;->d(Ljava/lang/String;)V

    .line 993
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 994
    invoke-virtual {v5, v0}, Lorg/mistergroup/shouldianswer/model/NumberReport;->e(Ljava/lang/String;)V

    .line 996
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 997
    invoke-virtual {v5, v0}, Lorg/mistergroup/shouldianswer/model/NumberReport;->f(Ljava/lang/String;)V

    .line 1000
    invoke-interface {v6, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_3

    .line 1003
    :cond_2
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1005
    :goto_3
    iget-object v4, v1, Lorg/mistergroup/shouldianswer/model/z;->c:Lorg/mistergroup/shouldianswer/model/b;

    invoke-virtual {v4, v0}, Lorg/mistergroup/shouldianswer/model/b;->a(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v0

    .line 1006
    invoke-virtual {v5, v0}, Lorg/mistergroup/shouldianswer/model/NumberReport;->a(Ljava/util/Date;)V

    .line 1009
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_4

    :cond_3
    const/4 v0, 0x0

    .line 1011
    :goto_4
    invoke-virtual {v5, v0}, Lorg/mistergroup/shouldianswer/model/NumberReport;->a(Z)V

    .line 1014
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    .line 1016
    :goto_5
    invoke-virtual {v5, v0}, Lorg/mistergroup/shouldianswer/model/NumberReport;->b(Z)V

    move/from16 v0, v17

    .line 1019
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    goto :goto_6

    :cond_5
    const/4 v4, 0x0

    .line 1021
    :goto_6
    invoke-virtual {v5, v4}, Lorg/mistergroup/shouldianswer/model/NumberReport;->c(Z)V

    move-object/from16 v4, v18

    .line 1022
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v17, v0

    move/from16 v0, v19

    goto/16 :goto_2

    .line 1026
    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1027
    invoke-virtual/range {v16 .. v16}, Landroidx/room/m;->a()V

    return-object v4

    :catchall_0
    move-exception v0

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object/from16 v16, v4

    .line 1026
    :goto_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1027
    invoke-virtual/range {v16 .. v16}, Landroidx/room/m;->a()V

    .line 1028
    throw v0
.end method

.method public c()V
    .locals 3

    .line 183
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/z;->a:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->f()V

    .line 184
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/z;->f:Landroidx/room/p;

    invoke-virtual {v0}, Landroidx/room/p;->c()Landroidx/i/a/f;

    move-result-object v0

    .line 185
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/model/z;->a:Landroidx/room/j;

    invoke-virtual {v1}, Landroidx/room/j;->g()V

    .line 187
    :try_start_0
    invoke-interface {v0}, Landroidx/i/a/f;->a()I

    .line 188
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/model/z;->a:Landroidx/room/j;

    invoke-virtual {v1}, Landroidx/room/j;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/model/z;->a:Landroidx/room/j;

    invoke-virtual {v1}, Landroidx/room/j;->h()V

    .line 191
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/model/z;->f:Landroidx/room/p;

    invoke-virtual {v1, v0}, Landroidx/room/p;->a(Landroidx/i/a/f;)V

    return-void

    :catchall_0
    move-exception v1

    .line 190
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/model/z;->a:Landroidx/room/j;

    invoke-virtual {v2}, Landroidx/room/j;->h()V

    .line 191
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/model/z;->f:Landroidx/room/p;

    invoke-virtual {v2, v0}, Landroidx/room/p;->a(Landroidx/i/a/f;)V

    .line 192
    throw v1
.end method
