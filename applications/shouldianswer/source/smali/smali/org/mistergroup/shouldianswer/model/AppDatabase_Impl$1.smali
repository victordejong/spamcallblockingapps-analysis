.class Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl$1;
.super Landroidx/room/l$a;
.source "AppDatabase_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;->b(Landroidx/room/a;)Landroidx/i/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;I)V
    .locals 0

    .line 37
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl$1;->b:Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;

    invoke-direct {p0, p2}, Landroidx/room/l$a;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/i/a/b;)V
    .locals 3

    const-string v0, "DROP TABLE IF EXISTS `NumberReport`"

    .line 62
    invoke-interface {p1, v0}, Landroidx/i/a/b;->c(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS `CheckedCall`"

    .line 63
    invoke-interface {p1, v0}, Landroidx/i/a/b;->c(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS `BlockException`"

    .line 64
    invoke-interface {p1, v0}, Landroidx/i/a/b;->c(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS `NumberCaption`"

    .line 65
    invoke-interface {p1, v0}, Landroidx/i/a/b;->c(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl$1;->b:Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;

    invoke-static {v0}, Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;->a(Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 67
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl$1;->b:Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;

    invoke-static {v1}, Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;->b(Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 68
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl$1;->b:Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;

    invoke-static {v2}, Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;->c(Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/j$b;

    invoke-virtual {v2, p1}, Landroidx/room/j$b;->c(Landroidx/i/a/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Landroidx/i/a/b;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS `NumberReport` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `uuid` TEXT NOT NULL, `number` TEXT, `numberNormalized` TEXT, `rating` INTEGER NOT NULL, `category` INTEGER NOT NULL, `title` TEXT, `comment` TEXT, `country` TEXT, `time` INTEGER NOT NULL, `uploaded` INTEGER NOT NULL, `unconfirmed` INTEGER NOT NULL, `deleted` INTEGER NOT NULL)"

    .line 40
    invoke-interface {p1, v0}, Landroidx/i/a/b;->c(Ljava/lang/String;)V

    const-string v0, "CREATE UNIQUE INDEX IF NOT EXISTS `index_NumberReport_uuid` ON `NumberReport` (`uuid`)"

    .line 41
    invoke-interface {p1, v0}, Landroidx/i/a/b;->c(Ljava/lang/String;)V

    const-string v0, "CREATE UNIQUE INDEX IF NOT EXISTS `index_NumberReport_number_country` ON `NumberReport` (`number`, `country`)"

    .line 42
    invoke-interface {p1, v0}, Landroidx/i/a/b;->c(Ljava/lang/String;)V

    const-string v0, "CREATE UNIQUE INDEX IF NOT EXISTS `index_NumberReport_numberNormalized` ON `NumberReport` (`numberNormalized`)"

    .line 43
    invoke-interface {p1, v0}, Landroidx/i/a/b;->c(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `CheckedCall` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `number` TEXT, `numberNormalized` TEXT, `country` TEXT, `rating` INTEGER NOT NULL, `callDuration` INTEGER NOT NULL, `callType` INTEGER NOT NULL, `blockReason` INTEGER NOT NULL, `time` INTEGER)"

    .line 44
    invoke-interface {p1, v0}, Landroidx/i/a/b;->c(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS `index_CheckedCall_number` ON `CheckedCall` (`number`)"

    .line 45
    invoke-interface {p1, v0}, Landroidx/i/a/b;->c(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS `index_CheckedCall_numberNormalized` ON `CheckedCall` (`numberNormalized`)"

    .line 46
    invoke-interface {p1, v0}, Landroidx/i/a/b;->c(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS `index_CheckedCall_time` ON `CheckedCall` (`time`)"

    .line 47
    invoke-interface {p1, v0}, Landroidx/i/a/b;->c(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `BlockException` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `number` TEXT, `numberNormalized` TEXT, `country` TEXT, `block` INTEGER NOT NULL, `masked` INTEGER NOT NULL)"

    .line 48
    invoke-interface {p1, v0}, Landroidx/i/a/b;->c(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS `index_BlockException_number` ON `BlockException` (`number`)"

    .line 49
    invoke-interface {p1, v0}, Landroidx/i/a/b;->c(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS `index_BlockException_numberNormalized` ON `BlockException` (`numberNormalized`)"

    .line 50
    invoke-interface {p1, v0}, Landroidx/i/a/b;->c(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS `index_BlockException_masked` ON `BlockException` (`masked`)"

    .line 51
    invoke-interface {p1, v0}, Landroidx/i/a/b;->c(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS `index_BlockException_block` ON `BlockException` (`block`)"

    .line 52
    invoke-interface {p1, v0}, Landroidx/i/a/b;->c(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `NumberCaption` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `number` TEXT NOT NULL, `numberNormalized` TEXT NOT NULL, `caption` TEXT NOT NULL, `country` TEXT NOT NULL, `uploaded` INTEGER NOT NULL)"

    .line 53
    invoke-interface {p1, v0}, Landroidx/i/a/b;->c(Ljava/lang/String;)V

    const-string v0, "CREATE UNIQUE INDEX IF NOT EXISTS `index_NumberCaption_number_country` ON `NumberCaption` (`number`, `country`)"

    .line 54
    invoke-interface {p1, v0}, Landroidx/i/a/b;->c(Ljava/lang/String;)V

    const-string v0, "CREATE UNIQUE INDEX IF NOT EXISTS `index_NumberCaption_numberNormalized` ON `NumberCaption` (`numberNormalized`)"

    .line 55
    invoke-interface {p1, v0}, Landroidx/i/a/b;->c(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    .line 56
    invoke-interface {p1, v0}, Landroidx/i/a/b;->c(Ljava/lang/String;)V

    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'6bade78ef8f8a6e000f22374dd6afb53\')"

    .line 57
    invoke-interface {p1, v0}, Landroidx/i/a/b;->c(Ljava/lang/String;)V

    return-void
.end method

.method public c(Landroidx/i/a/b;)V
    .locals 3

    .line 84
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl$1;->b:Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;

    invoke-static {v0, p1}, Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;->a(Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;Landroidx/i/a/b;)Landroidx/i/a/b;

    .line 85
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl$1;->b:Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;

    invoke-static {v0, p1}, Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;->b(Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;Landroidx/i/a/b;)V

    .line 86
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl$1;->b:Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;

    invoke-static {v0}, Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;->g(Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 87
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl$1;->b:Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;

    invoke-static {v1}, Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;->h(Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 88
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl$1;->b:Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;

    invoke-static {v2}, Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;->i(Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/j$b;

    invoke-virtual {v2, p1}, Landroidx/room/j$b;->b(Landroidx/i/a/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected d(Landroidx/i/a/b;)V
    .locals 3

    .line 75
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl$1;->b:Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;

    invoke-static {v0}, Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;->d(Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 76
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl$1;->b:Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;

    invoke-static {v1}, Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;->e(Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 77
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl$1;->b:Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;

    invoke-static {v2}, Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;->f(Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/j$b;

    invoke-virtual {v2, p1}, Landroidx/room/j$b;->a(Landroidx/i/a/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected f(Landroidx/i/a/b;)Landroidx/room/l$b;
    .locals 31

    move-object/from16 v0, p1

    .line 104
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0xd

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 105
    new-instance v2, Landroidx/room/b/e$a;

    const-string v4, "id"

    const-string v5, "INTEGER"

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Landroidx/room/b/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "id"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    new-instance v2, Landroidx/room/b/e$a;

    const-string v5, "uuid"

    const-string v6, "TEXT"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Landroidx/room/b/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "uuid"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    new-instance v2, Landroidx/room/b/e$a;

    const-string v6, "number"

    const-string v7, "TEXT"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v5, v2

    invoke-direct/range {v5 .. v11}, Landroidx/room/b/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "number"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    new-instance v2, Landroidx/room/b/e$a;

    const-string v7, "numberNormalized"

    const-string v8, "TEXT"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Landroidx/room/b/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "numberNormalized"

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    new-instance v2, Landroidx/room/b/e$a;

    const-string v8, "rating"

    const-string v9, "INTEGER"

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Landroidx/room/b/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v7, "rating"

    invoke-virtual {v1, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    new-instance v2, Landroidx/room/b/e$a;

    const-string v9, "category"

    const-string v10, "INTEGER"

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Landroidx/room/b/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v8, "category"

    invoke-virtual {v1, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    new-instance v2, Landroidx/room/b/e$a;

    const-string v10, "title"

    const-string v11, "TEXT"

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Landroidx/room/b/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v8, "title"

    invoke-virtual {v1, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    new-instance v2, Landroidx/room/b/e$a;

    const-string v10, "comment"

    const-string v11, "TEXT"

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Landroidx/room/b/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v8, "comment"

    invoke-virtual {v1, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    new-instance v2, Landroidx/room/b/e$a;

    const-string v10, "country"

    const-string v11, "TEXT"

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Landroidx/room/b/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v8, "country"

    invoke-virtual {v1, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    new-instance v2, Landroidx/room/b/e$a;

    const-string v10, "time"

    const-string v11, "INTEGER"

    const/4 v12, 0x1

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Landroidx/room/b/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v9, "time"

    invoke-virtual {v1, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    new-instance v2, Landroidx/room/b/e$a;

    const-string v11, "uploaded"

    const-string v12, "INTEGER"

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Landroidx/room/b/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v10, "uploaded"

    invoke-virtual {v1, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    new-instance v2, Landroidx/room/b/e$a;

    const-string v12, "unconfirmed"

    const-string v13, "INTEGER"

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object v11, v2

    invoke-direct/range {v11 .. v17}, Landroidx/room/b/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v11, "unconfirmed"

    invoke-virtual {v1, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    new-instance v2, Landroidx/room/b/e$a;

    const-string v13, "deleted"

    const-string v14, "INTEGER"

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object v12, v2

    invoke-direct/range {v12 .. v18}, Landroidx/room/b/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v11, "deleted"

    invoke-virtual {v1, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    new-instance v2, Ljava/util/HashSet;

    const/4 v11, 0x0

    invoke-direct {v2, v11}, Ljava/util/HashSet;-><init>(I)V

    .line 119
    new-instance v12, Ljava/util/HashSet;

    const/4 v13, 0x3

    invoke-direct {v12, v13}, Ljava/util/HashSet;-><init>(I)V

    .line 120
    new-instance v14, Landroidx/room/b/e$d;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-string v13, "index_NumberReport_uuid"

    invoke-direct {v14, v13, v15, v4}, Landroidx/room/b/e$d;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v12, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 121
    new-instance v4, Landroidx/room/b/e$d;

    filled-new-array {v5, v8}, [Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    const-string v14, "index_NumberReport_number_country"

    invoke-direct {v4, v14, v15, v13}, Landroidx/room/b/e$d;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v12, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 122
    new-instance v4, Landroidx/room/b/e$d;

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    const-string v14, "index_NumberReport_numberNormalized"

    invoke-direct {v4, v14, v15, v13}, Landroidx/room/b/e$d;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v12, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 123
    new-instance v4, Landroidx/room/b/e;

    const-string v13, "NumberReport"

    invoke-direct {v4, v13, v1, v2, v12}, Landroidx/room/b/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 124
    invoke-static {v0, v13}, Landroidx/room/b/e;->a(Landroidx/i/a/b;Ljava/lang/String;)Landroidx/room/b/e;

    move-result-object v1

    .line 125
    invoke-virtual {v4, v1}, Landroidx/room/b/e;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v12, "\n Found:\n"

    if-nez v2, :cond_0

    .line 126
    new-instance v0, Landroidx/room/l$b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NumberReport(org.mistergroup.shouldianswer.model.NumberReport).\n Expected:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v11, v1}, Landroidx/room/l$b;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 130
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 131
    new-instance v2, Landroidx/room/b/e$a;

    const/16 v20, 0x1

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x1

    const-string v18, "id"

    const-string v19, "INTEGER"

    move-object/from16 v17, v2

    invoke-direct/range {v17 .. v23}, Landroidx/room/b/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    new-instance v2, Landroidx/room/b/e$a;

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x1

    const-string v25, "number"

    const-string v26, "TEXT"

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Landroidx/room/b/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    new-instance v2, Landroidx/room/b/e$a;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-string v18, "numberNormalized"

    const-string v19, "TEXT"

    move-object/from16 v17, v2

    invoke-direct/range {v17 .. v23}, Landroidx/room/b/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    new-instance v2, Landroidx/room/b/e$a;

    const-string v25, "country"

    const-string v26, "TEXT"

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Landroidx/room/b/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    new-instance v2, Landroidx/room/b/e$a;

    const/16 v20, 0x1

    const-string v18, "rating"

    const-string v19, "INTEGER"

    move-object/from16 v17, v2

    invoke-direct/range {v17 .. v23}, Landroidx/room/b/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    new-instance v2, Landroidx/room/b/e$a;

    const/16 v27, 0x1

    const-string v25, "callDuration"

    const-string v26, "INTEGER"

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Landroidx/room/b/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "callDuration"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    new-instance v2, Landroidx/room/b/e$a;

    const-string v18, "callType"

    const-string v19, "INTEGER"

    move-object/from16 v17, v2

    invoke-direct/range {v17 .. v23}, Landroidx/room/b/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "callType"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    new-instance v2, Landroidx/room/b/e$a;

    const-string v18, "blockReason"

    const-string v19, "INTEGER"

    move-object/from16 v17, v2

    invoke-direct/range {v17 .. v23}, Landroidx/room/b/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "blockReason"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    new-instance v2, Landroidx/room/b/e$a;

    const/16 v20, 0x0

    const-string v18, "time"

    const-string v19, "INTEGER"

    move-object/from16 v17, v2

    invoke-direct/range {v17 .. v23}, Landroidx/room/b/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v11}, Ljava/util/HashSet;-><init>(I)V

    .line 141
    new-instance v4, Ljava/util/HashSet;

    const/4 v7, 0x3

    invoke-direct {v4, v7}, Ljava/util/HashSet;-><init>(I)V

    .line 142
    new-instance v7, Landroidx/room/b/e$d;

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    const-string v14, "index_CheckedCall_number"

    invoke-direct {v7, v14, v11, v13}, Landroidx/room/b/e$d;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 143
    new-instance v7, Landroidx/room/b/e$d;

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    const-string v14, "index_CheckedCall_numberNormalized"

    invoke-direct {v7, v14, v11, v13}, Landroidx/room/b/e$d;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 144
    new-instance v7, Landroidx/room/b/e$d;

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const-string v13, "index_CheckedCall_time"

    invoke-direct {v7, v13, v11, v9}, Landroidx/room/b/e$d;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 145
    new-instance v7, Landroidx/room/b/e;

    const-string v9, "CheckedCall"

    invoke-direct {v7, v9, v1, v2, v4}, Landroidx/room/b/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 146
    invoke-static {v0, v9}, Landroidx/room/b/e;->a(Landroidx/i/a/b;Ljava/lang/String;)Landroidx/room/b/e;

    move-result-object v1

    .line 147
    invoke-virtual {v7, v1}, Landroidx/room/b/e;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 148
    new-instance v0, Landroidx/room/l$b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CheckedCall(org.mistergroup.shouldianswer.model.CheckedCall).\n Expected:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v11, v1}, Landroidx/room/l$b;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 152
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 153
    new-instance v4, Landroidx/room/b/e$a;

    const/16 v19, 0x1

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x1

    const-string v17, "id"

    const-string v18, "INTEGER"

    move-object/from16 v16, v4

    invoke-direct/range {v16 .. v22}, Landroidx/room/b/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    new-instance v4, Landroidx/room/b/e$a;

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x1

    const-string v24, "number"

    const-string v25, "TEXT"

    move-object/from16 v23, v4

    invoke-direct/range {v23 .. v29}, Landroidx/room/b/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    new-instance v4, Landroidx/room/b/e$a;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v17, "numberNormalized"

    const-string v18, "TEXT"

    move-object/from16 v16, v4

    invoke-direct/range {v16 .. v22}, Landroidx/room/b/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    new-instance v4, Landroidx/room/b/e$a;

    const-string v24, "country"

    const-string v25, "TEXT"

    move-object/from16 v23, v4

    invoke-direct/range {v23 .. v29}, Landroidx/room/b/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    new-instance v4, Landroidx/room/b/e$a;

    const/16 v19, 0x1

    const-string v17, "block"

    const-string v18, "INTEGER"

    move-object/from16 v16, v4

    invoke-direct/range {v16 .. v22}, Landroidx/room/b/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v7, "block"

    invoke-virtual {v1, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    new-instance v4, Landroidx/room/b/e$a;

    const-string v17, "masked"

    const-string v18, "INTEGER"

    move-object/from16 v16, v4

    invoke-direct/range {v16 .. v22}, Landroidx/room/b/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v7, "masked"

    invoke-virtual {v1, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v11}, Ljava/util/HashSet;-><init>(I)V

    .line 160
    new-instance v7, Ljava/util/HashSet;

    const/4 v9, 0x4

    invoke-direct {v7, v9}, Ljava/util/HashSet;-><init>(I)V

    .line 161
    new-instance v9, Landroidx/room/b/e$d;

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    const-string v14, "index_BlockException_number"

    invoke-direct {v9, v14, v11, v13}, Landroidx/room/b/e$d;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v7, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 162
    new-instance v9, Landroidx/room/b/e$d;

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    const-string v14, "index_BlockException_numberNormalized"

    invoke-direct {v9, v14, v11, v13}, Landroidx/room/b/e$d;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v7, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 163
    new-instance v9, Landroidx/room/b/e$d;

    const-string v13, "masked"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    const-string v14, "index_BlockException_masked"

    invoke-direct {v9, v14, v11, v13}, Landroidx/room/b/e$d;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v7, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 164
    new-instance v9, Landroidx/room/b/e$d;

    const-string v13, "block"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    const-string v14, "index_BlockException_block"

    invoke-direct {v9, v14, v11, v13}, Landroidx/room/b/e$d;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v7, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 165
    new-instance v9, Landroidx/room/b/e;

    const-string v13, "BlockException"

    invoke-direct {v9, v13, v1, v4, v7}, Landroidx/room/b/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    const-string v1, "BlockException"

    .line 166
    invoke-static {v0, v1}, Landroidx/room/b/e;->a(Landroidx/i/a/b;Ljava/lang/String;)Landroidx/room/b/e;

    move-result-object v1

    .line 167
    invoke-virtual {v9, v1}, Landroidx/room/b/e;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 168
    new-instance v0, Landroidx/room/l$b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BlockException(org.mistergroup.shouldianswer.model.BlockException).\n Expected:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v11, v1}, Landroidx/room/l$b;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 172
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 173
    new-instance v2, Landroidx/room/b/e$a;

    const/16 v19, 0x1

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x1

    const-string v17, "id"

    const-string v18, "INTEGER"

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v22}, Landroidx/room/b/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    new-instance v2, Landroidx/room/b/e$a;

    const/16 v26, 0x1

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x1

    const-string v24, "number"

    const-string v25, "TEXT"

    move-object/from16 v23, v2

    invoke-direct/range {v23 .. v29}, Landroidx/room/b/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    new-instance v2, Landroidx/room/b/e$a;

    const/16 v20, 0x0

    const-string v17, "numberNormalized"

    const-string v18, "TEXT"

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v22}, Landroidx/room/b/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    new-instance v2, Landroidx/room/b/e$a;

    const-string v24, "caption"

    const-string v25, "TEXT"

    move-object/from16 v23, v2

    invoke-direct/range {v23 .. v29}, Landroidx/room/b/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "caption"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    new-instance v2, Landroidx/room/b/e$a;

    const-string v17, "country"

    const-string v18, "TEXT"

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v22}, Landroidx/room/b/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    new-instance v2, Landroidx/room/b/e$a;

    const-string v24, "uploaded"

    const-string v25, "INTEGER"

    move-object/from16 v23, v2

    invoke-direct/range {v23 .. v29}, Landroidx/room/b/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v11}, Ljava/util/HashSet;-><init>(I)V

    .line 180
    new-instance v3, Ljava/util/HashSet;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 181
    new-instance v4, Landroidx/room/b/e$d;

    filled-new-array {v5, v8}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const-string v7, "index_NumberCaption_number_country"

    invoke-direct {v4, v7, v15, v5}, Landroidx/room/b/e$d;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 182
    new-instance v4, Landroidx/room/b/e$d;

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const-string v6, "index_NumberCaption_numberNormalized"

    invoke-direct {v4, v6, v15, v5}, Landroidx/room/b/e$d;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 183
    new-instance v4, Landroidx/room/b/e;

    const-string v5, "NumberCaption"

    invoke-direct {v4, v5, v1, v2, v3}, Landroidx/room/b/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    const-string v1, "NumberCaption"

    .line 184
    invoke-static {v0, v1}, Landroidx/room/b/e;->a(Landroidx/i/a/b;Ljava/lang/String;)Landroidx/room/b/e;

    move-result-object v0

    .line 185
    invoke-virtual {v4, v0}, Landroidx/room/b/e;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 186
    new-instance v1, Landroidx/room/l$b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NumberCaption(org.mistergroup.shouldianswer.model.NumberCaption).\n Expected:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v11, v0}, Landroidx/room/l$b;-><init>(ZLjava/lang/String;)V

    return-object v1

    .line 190
    :cond_3
    new-instance v0, Landroidx/room/l$b;

    const/4 v1, 0x0

    invoke-direct {v0, v15, v1}, Landroidx/room/l$b;-><init>(ZLjava/lang/String;)V

    return-object v0
.end method

.method public g(Landroidx/i/a/b;)V
    .locals 0

    .line 95
    invoke-static {p1}, Landroidx/room/b/c;->a(Landroidx/i/a/b;)V

    return-void
.end method

.method public h(Landroidx/i/a/b;)V
    .locals 0

    return-void
.end method
