.class public Ld1/g;
.super Lg1/b$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld1/g$b;,
        Ld1/g$a;
    }
.end annotation


# instance fields
.field public b:Ld1/a;

.field public final c:Ld1/g$a;


# direct methods
.method public constructor <init>(Ld1/a;Ld1/g$a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget p3, p2, Ld1/g$a;->a:I

    invoke-direct {p0, p3}, Lg1/b$a;-><init>(I)V

    .line 2
    iput-object p1, p0, Ld1/g;->b:Ld1/a;

    .line 3
    iput-object p2, p0, Ld1/g;->c:Ld1/g$a;

    return-void
.end method


# virtual methods
.method public b(Lg1/a;II)V
    .locals 11

    .line 1
    iget-object v0, p0, Ld1/g;->b:Ld1/a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    .line 2
    iget-object v0, v0, Ld1/a;->d:Ld1/f$c;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-ne p2, p3, :cond_0

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto/16 :goto_8

    :cond_0
    if-le p3, p2, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 4
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v5, p2

    :goto_1
    if-eqz v3, :cond_2

    if-ge v5, p3, :cond_a

    goto :goto_2

    :cond_2
    if-le v5, p3, :cond_a

    .line 5
    :goto_2
    iget-object v6, v0, Ld1/f$c;->a:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/TreeMap;

    const/4 v7, 0x0

    if-nez v6, :cond_3

    goto :goto_7

    :cond_3
    if-eqz v3, :cond_4

    .line 6
    invoke-virtual {v6}, Ljava/util/TreeMap;->descendingKeySet()Ljava/util/NavigableSet;

    move-result-object v8

    goto :goto_3

    .line 7
    :cond_4
    invoke-virtual {v6}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v8

    .line 8
    :goto_3
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eqz v3, :cond_6

    if-gt v9, p3, :cond_7

    if-le v9, v5, :cond_7

    goto :goto_4

    :cond_6
    if-lt v9, p3, :cond_7

    if-ge v9, v5, :cond_7

    :goto_4
    const/4 v10, 0x1

    goto :goto_5

    :cond_7
    const/4 v10, 0x0

    :goto_5
    if-eqz v10, :cond_5

    .line 9
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    goto :goto_6

    :cond_8
    const/4 v6, 0x0

    move v9, v5

    const/4 v5, 0x0

    :goto_6
    if-nez v5, :cond_9

    :goto_7
    move-object v0, v7

    goto :goto_8

    :cond_9
    move v5, v9

    goto :goto_1

    :cond_a
    move-object v0, v4

    :goto_8
    if-eqz v0, :cond_10

    .line 10
    iget-object v3, p0, Ld1/g;->c:Ld1/g$a;

    check-cast v3, Landroidx/work/impl/WorkDatabase_Impl$a;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 12
    move-object v4, p1

    check-cast v4, Lh1/a;

    const-string v5, "SELECT name FROM sqlite_master WHERE type = \'trigger\'"

    invoke-virtual {v4, v5}, Lh1/a;->l(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 13
    :goto_9
    :try_start_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 14
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_9

    .line 15
    :cond_b
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 16
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_c
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "room_fts_content_sync_"

    .line 17
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    const-string v6, "DROP TRIGGER IF EXISTS "

    .line 18
    invoke-static {v6, v5}, Lcom/google/android/gms/internal/ads/a;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 19
    iget-object v6, v4, Lh1/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_a

    .line 20
    :cond_d
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le1/a;

    .line 21
    invoke-virtual {v3, p1}, Le1/a;->a(Lg1/a;)V

    goto :goto_b

    .line 22
    :cond_e
    iget-object v0, p0, Ld1/g;->c:Ld1/g$a;

    invoke-virtual {v0, p1}, Ld1/g$a;->b(Lg1/a;)Ld1/g$b;

    move-result-object v0

    .line 23
    iget-boolean v3, v0, Ld1/g$b;->a:Z

    if-eqz v3, :cond_f

    .line 24
    iget-object v0, p0, Ld1/g;->c:Ld1/g$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    invoke-virtual {p0, p1}, Ld1/g;->c(Lg1/a;)V

    goto :goto_c

    .line 26
    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Migration didn\'t properly handle: "

    invoke-static {p2}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, v0, Ld1/g$b;->b:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 27
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 28
    throw p1

    :cond_10
    const/4 v1, 0x0

    :goto_c
    if-nez v1, :cond_13

    .line 29
    iget-object v0, p0, Ld1/g;->b:Ld1/a;

    if-eqz v0, :cond_12

    .line 30
    invoke-virtual {v0, p2, p3}, Ld1/a;->a(II)Z

    move-result v0

    if-nez v0, :cond_12

    .line 31
    iget-object p2, p0, Ld1/g;->c:Ld1/g$a;

    check-cast p2, Landroidx/work/impl/WorkDatabase_Impl$a;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    move-object p3, p1

    check-cast p3, Lh1/a;

    .line 33
    iget-object v0, p3, Lh1/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS `Dependency`"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 34
    iget-object v0, p3, Lh1/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS `WorkSpec`"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 35
    iget-object v0, p3, Lh1/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS `WorkTag`"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 36
    iget-object v0, p3, Lh1/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS `SystemIdInfo`"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 37
    iget-object v0, p3, Lh1/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS `WorkName`"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 38
    iget-object v0, p3, Lh1/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS `WorkProgress`"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 39
    iget-object p3, p3, Lh1/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "DROP TABLE IF EXISTS `Preference`"

    invoke-virtual {p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 40
    iget-object p3, p2, Landroidx/work/impl/WorkDatabase_Impl$a;->b:Landroidx/work/impl/WorkDatabase_Impl;

    sget v0, Landroidx/work/impl/WorkDatabase_Impl;->s:I

    .line 41
    iget-object p3, p3, Ld1/f;->g:Ljava/util/List;

    if-eqz p3, :cond_11

    .line 42
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    :goto_d
    if-ge v2, p3, :cond_11

    .line 43
    iget-object v0, p2, Landroidx/work/impl/WorkDatabase_Impl$a;->b:Landroidx/work/impl/WorkDatabase_Impl;

    .line 44
    iget-object v0, v0, Ld1/f;->g:Ljava/util/List;

    .line 45
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld1/f$b;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 46
    :cond_11
    iget-object p2, p0, Ld1/g;->c:Ld1/g$a;

    invoke-virtual {p2, p1}, Ld1/g$a;->a(Lg1/a;)V

    goto :goto_e

    .line 47
    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "A migration from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " was required but not found. Please provide the necessary Migration path via RoomDatabase.Builder.addMigration(Migration ...) or allow for destructive migrations via one of the RoomDatabase.Builder.fallbackToDestructiveMigration* methods."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_13
    :goto_e
    return-void
.end method

.method public final c(Lg1/a;)V
    .locals 2

    .line 1
    check-cast p1, Lh1/a;

    .line 2
    iget-object v0, p1, Lh1/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3
    iget-object p1, p1, Lh1/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'c103703e120ae8cc73c9248622f3cd1e\')"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
