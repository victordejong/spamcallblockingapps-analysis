.class public final synthetic Lz2/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz2/r$b;


# instance fields
.field public final synthetic a:Lz2/r;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lu2/i;


# direct methods
.method public synthetic constructor <init>(Lz2/r;Ljava/util/List;Lu2/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/j;->a:Lz2/r;

    iput-object p2, p0, Lz2/j;->b:Ljava/util/List;

    iput-object p3, p0, Lz2/j;->c:Lu2/i;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lz2/j;->a:Lz2/r;

    iget-object v2, v0, Lz2/j;->b:Ljava/util/List;

    iget-object v3, v0, Lz2/j;->c:Lu2/i;

    move-object/from16 v4, p1

    check-cast v4, Landroid/database/Cursor;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x0

    .line 2
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v8, 0x7

    .line 3
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    .line 4
    :goto_1
    new-instance v10, Lu2/a$b;

    invoke-direct {v10}, Lu2/a$b;-><init>()V

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 5
    iput-object v11, v10, Lu2/a$b;->f:Ljava/util/Map;

    .line 6
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lu2/a$b;->f(Ljava/lang/String;)Lu2/f$a;

    const/4 v11, 0x2

    .line 7
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lu2/a$b;->e(J)Lu2/f$a;

    const/4 v11, 0x3

    .line 8
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lu2/a$b;->g(J)Lu2/f$a;

    const/4 v11, 0x4

    if-eqz v8, :cond_2

    .line 9
    new-instance v5, Lu2/e;

    .line 10
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1

    .line 11
    sget-object v8, Lz2/r;->e:Lr2/b;

    goto :goto_2

    .line 12
    :cond_1
    new-instance v9, Lr2/b;

    invoke-direct {v9, v8}, Lr2/b;-><init>(Ljava/lang/String;)V

    move-object v8, v9

    :goto_2
    const/4 v9, 0x5

    .line 13
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9

    invoke-direct {v5, v8, v9}, Lu2/e;-><init>(Lr2/b;[B)V

    .line 14
    invoke-virtual {v10, v5}, Lu2/a$b;->d(Lu2/e;)Lu2/f$a;

    goto :goto_4

    .line 15
    :cond_2
    new-instance v8, Lu2/e;

    .line 16
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_3

    .line 17
    sget-object v11, Lz2/r;->e:Lr2/b;

    goto :goto_3

    .line 18
    :cond_3
    new-instance v12, Lr2/b;

    invoke-direct {v12, v11}, Lr2/b;-><init>(Ljava/lang/String;)V

    move-object v11, v12

    .line 19
    :goto_3
    invoke-virtual {v1}, Lz2/r;->k()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    const-string v13, "bytes"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v14

    new-array v9, v9, [Ljava/lang/String;

    .line 20
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v9, v5

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v13, "event_payloads"

    const-string v15, "event_id = ?"

    const-string v19, "sequence_num"

    move-object/from16 v16, v9

    .line 21
    invoke-virtual/range {v12 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    sget-object v9, Lz2/p;->c:Lz2/p;

    .line 22
    invoke-static {v5, v9}, Lz2/r;->r(Landroid/database/Cursor;Lz2/r$b;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 23
    invoke-direct {v8, v11, v5}, Lu2/e;-><init>(Lr2/b;[B)V

    .line 24
    invoke-virtual {v10, v8}, Lu2/a$b;->d(Lu2/e;)Lu2/f$a;

    :goto_4
    const/4 v5, 0x6

    .line 25
    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-nez v8, :cond_4

    .line 26
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 27
    iput-object v5, v10, Lu2/a$b;->b:Ljava/lang/Integer;

    .line 28
    :cond_4
    invoke-virtual {v10}, Lu2/a$b;->b()Lu2/f;

    move-result-object v5

    .line 29
    new-instance v8, Lz2/b;

    invoke-direct {v8, v6, v7, v3, v5}, Lz2/b;-><init>(JLu2/i;Lu2/f;)V

    .line 30
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    const/4 v1, 0x0

    return-object v1
.end method
