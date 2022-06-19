.class public Landroidx/room/b/f;
.super Ljava/lang/Object;
.source "TableInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/b/f$d;,
        Landroidx/room/b/f$c;,
        Landroidx/room/b/f$b;,
        Landroidx/room/b/f$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroidx/room/b/f$a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroidx/room/b/f$b;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroidx/room/b/f$d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroidx/room/b/f$a;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Landroidx/room/b/f$b;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Landroidx/room/b/f$d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Landroidx/room/b/f;->a:Ljava/lang/String;

    .line 105
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroidx/room/b/f;->b:Ljava/util/Map;

    .line 106
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroidx/room/b/f;->c:Ljava/util/Set;

    .line 107
    if-nez p4, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroidx/room/b/f;->d:Ljava/util/Set;

    .line 108
    return-void

    .line 107
    :cond_0
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Landroidx/i/a/b;Ljava/lang/String;Z)Landroidx/room/b/f$d;
    .locals 7

    .prologue
    const/4 v4, -0x1

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PRAGMA index_xinfo(`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "`)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroidx/i/a/b;->b(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 312
    :try_start_0
    const-string/jumbo v0, "seqno"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 313
    const-string/jumbo v2, "cid"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 314
    const-string/jumbo v3, "name"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 315
    if-eq v0, v4, :cond_0

    if-eq v2, v4, :cond_0

    if-ne v3, v4, :cond_1

    .line 317
    :cond_0
    const/4 v0, 0x0

    .line 335
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 333
    :goto_0
    return-object v0

    .line 319
    :cond_1
    :try_start_1
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    .line 321
    :cond_2
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 322
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 323
    if-ltz v5, :cond_2

    .line 327
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 328
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 329
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 335
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 336
    throw v0

    .line 331
    :cond_3
    :try_start_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/TreeMap;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 332
    invoke-virtual {v4}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 333
    new-instance v0, Landroidx/room/b/f$d;

    invoke-direct {v0, p1, p2, v2}, Landroidx/room/b/f$d;-><init>(Ljava/lang/String;ZLjava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 335
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static a(Landroidx/i/a/b;Ljava/lang/String;)Landroidx/room/b/f;
    .locals 4

    .prologue
    .line 169
    invoke-static {p0, p1}, Landroidx/room/b/f;->c(Landroidx/i/a/b;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 170
    invoke-static {p0, p1}, Landroidx/room/b/f;->b(Landroidx/i/a/b;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 171
    invoke-static {p0, p1}, Landroidx/room/b/f;->d(Landroidx/i/a/b;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 172
    new-instance v3, Landroidx/room/b/f;

    invoke-direct {v3, p1, v0, v1, v2}, Landroidx/room/b/f;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    return-object v3
.end method

.method private static a(Landroid/database/Cursor;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroidx/room/b/f$c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 219
    const-string/jumbo v0, "id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 220
    const-string/jumbo v0, "seq"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 221
    const-string/jumbo v0, "from"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 222
    const-string/jumbo v0, "to"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 223
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    .line 224
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 225
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_0

    .line 226
    invoke-interface {p0, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 227
    new-instance v7, Landroidx/room/b/f$c;

    .line 228
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 229
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 230
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 231
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v8, v9, v10, v11}, Landroidx/room/b/f$c;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 234
    :cond_0
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 235
    return-object v6
.end method

.method private static b(Landroidx/i/a/b;Ljava/lang/String;)Ljava/util/Set;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/i/a/b;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Landroidx/room/b/f$b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PRAGMA foreign_key_list(`"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "`)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-interface {v0, v1}, Landroidx/i/a/b;->b(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 181
    :try_start_0
    const-string/jumbo v1, "id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 182
    const-string/jumbo v1, "seq"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 183
    const-string/jumbo v1, "table"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 184
    const-string/jumbo v1, "on_delete"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 185
    const-string/jumbo v1, "on_update"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 187
    invoke-static {v9}, Landroidx/room/b/f;->a(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v15

    .line 188
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v16

    .line 189
    const/4 v1, 0x0

    move v7, v1

    :goto_0
    move/from16 v0, v16

    if-ge v7, v0, :cond_3

    .line 190
    invoke-interface {v9, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 191
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 192
    if-eqz v1, :cond_0

    .line 189
    :goto_1
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_0

    .line 195
    :cond_0
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 196
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 197
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 198
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/room/b/f$c;

    .line 199
    iget v4, v1, Landroidx/room/b/f$c;->a:I

    if-ne v4, v2, :cond_1

    .line 200
    iget-object v4, v1, Landroidx/room/b/f$c;->c:Ljava/lang/String;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    iget-object v1, v1, Landroidx/room/b/f$c;->d:Ljava/lang/String;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 213
    :catchall_0
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 214
    throw v1

    .line 204
    :cond_2
    :try_start_1
    new-instance v1, Landroidx/room/b/f$b;

    .line 205
    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 206
    invoke-interface {v9, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 207
    invoke-interface {v9, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {v1 .. v6}, Landroidx/room/b/f$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 204
    invoke-interface {v8, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 213
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 215
    return-object v8
.end method

.method private static c(Landroidx/i/a/b;Ljava/lang/String;)Ljava/util/Map;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/i/a/b;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroidx/room/b/f$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PRAGMA table_info(`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "`)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 241
    invoke-interface {p0, v0}, Landroidx/i/a/b;->b(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 243
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 245
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 246
    const-string/jumbo v0, "name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 247
    const-string/jumbo v0, "type"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 248
    const-string/jumbo v0, "notnull"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 249
    const-string/jumbo v0, "pk"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 250
    const-string/jumbo v0, "dflt_value"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 252
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 254
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 255
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    .line 256
    :goto_1
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 257
    invoke-interface {v7, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 258
    new-instance v0, Landroidx/room/b/f$a;

    const/4 v6, 0x2

    invoke-direct/range {v0 .. v6}, Landroidx/room/b/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-interface {v8, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 264
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 265
    throw v0

    .line 255
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 264
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 266
    return-object v8
.end method

.method private static d(Landroidx/i/a/b;Ljava/lang/String;)Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/i/a/b;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Landroidx/room/b/f$d;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v8, -0x1

    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PRAGMA index_list(`"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "`)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Landroidx/i/a/b;->b(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 276
    :try_start_0
    const-string/jumbo v1, "name"

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 277
    const-string/jumbo v1, "origin"

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 278
    const-string/jumbo v1, "unique"

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 279
    if-eq v5, v8, :cond_0

    if-eq v6, v8, :cond_0

    if-ne v7, v8, :cond_1

    .line 301
    :cond_0
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 299
    :goto_0
    return-object v0

    .line 283
    :cond_1
    :try_start_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 284
    :cond_2
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 285
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 286
    const-string/jumbo v8, "c"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 290
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 291
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v3, :cond_3

    move v2, v3

    .line 292
    :goto_2
    invoke-static {p0, v8, v2}, Landroidx/room/b/f;->a(Landroidx/i/a/b;Ljava/lang/String;Z)Landroidx/room/b/f$d;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 293
    if-nez v2, :cond_4

    .line 301
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 291
    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 297
    :cond_4
    :try_start_2
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 301
    :catchall_0
    move-exception v0

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 302
    throw v0

    .line 301
    :cond_5
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    .line 299
    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 120
    if-ne p0, p1, :cond_1

    .line 138
    :cond_0
    :goto_0
    return v0

    .line 121
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 123
    :cond_3
    check-cast p1, Landroidx/room/b/f;

    .line 125
    iget-object v2, p0, Landroidx/room/b/f;->a:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroidx/room/b/f;->a:Ljava/lang/String;

    iget-object v3, p1, Landroidx/room/b/f;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p1, Landroidx/room/b/f;->a:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 126
    :cond_6
    iget-object v2, p0, Landroidx/room/b/f;->b:Ljava/util/Map;

    if-eqz v2, :cond_8

    iget-object v2, p0, Landroidx/room/b/f;->b:Ljava/util/Map;

    iget-object v3, p1, Landroidx/room/b/f;->b:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_7
    move v0, v1

    .line 127
    goto :goto_0

    .line 126
    :cond_8
    iget-object v2, p1, Landroidx/room/b/f;->b:Ljava/util/Map;

    if-nez v2, :cond_7

    .line 129
    :cond_9
    iget-object v2, p0, Landroidx/room/b/f;->c:Ljava/util/Set;

    if-eqz v2, :cond_b

    iget-object v2, p0, Landroidx/room/b/f;->c:Ljava/util/Set;

    iget-object v3, p1, Landroidx/room/b/f;->c:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    :cond_a
    move v0, v1

    .line 131
    goto :goto_0

    .line 129
    :cond_b
    iget-object v2, p1, Landroidx/room/b/f;->c:Ljava/util/Set;

    if-nez v2, :cond_a

    .line 133
    :cond_c
    iget-object v1, p0, Landroidx/room/b/f;->d:Ljava/util/Set;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroidx/room/b/f;->d:Ljava/util/Set;

    if-eqz v1, :cond_0

    .line 138
    iget-object v0, p0, Landroidx/room/b/f;->d:Ljava/util/Set;

    iget-object v1, p1, Landroidx/room/b/f;->d:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 143
    iget-object v0, p0, Landroidx/room/b/f;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/room/b/f;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 144
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Landroidx/room/b/f;->b:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/room/b/f;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 145
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Landroidx/room/b/f;->c:Ljava/util/Set;

    if-eqz v2, :cond_0

    iget-object v1, p0, Landroidx/room/b/f;->c:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 147
    return v0

    :cond_1
    move v0, v1

    .line 143
    goto :goto_0

    :cond_2
    move v0, v1

    .line 144
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "TableInfo{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/room/b/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", columns="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/room/b/f;->b:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", foreignKeys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/room/b/f;->c:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", indices="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/room/b/f;->d:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
