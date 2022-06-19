.class public Lh1/c$a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh1/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:[Lh1/a;

.field public final b:Lg1/b$a;

.field public c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;[Lh1/a;Lg1/b$a;)V
    .locals 6

    .line 1
    iget v4, p4, Lg1/b$a;->a:I

    new-instance v5, Lh1/c$a$a;

    invoke-direct {v5, p4, p3}, Lh1/c$a$a;-><init>(Lg1/b$a;[Lh1/a;)V

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V

    .line 2
    iput-object p4, p0, Lh1/c$a;->b:Lg1/b$a;

    .line 3
    iput-object p3, p0, Lh1/c$a;->a:[Lh1/a;

    return-void
.end method

.method public static k([Lh1/a;Landroid/database/sqlite/SQLiteDatabase;)Lh1/a;
    .locals 2

    const/4 v0, 0x0

    .line 1
    aget-object v1, p0, v0

    if-eqz v1, :cond_1

    .line 2
    iget-object v1, v1, Lh1/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-ne v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    .line 3
    :cond_1
    new-instance v1, Lh1/a;

    invoke-direct {v1, p1}, Lh1/a;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    aput-object v1, p0, v0

    .line 4
    :cond_2
    aget-object p0, p0, v0

    return-object p0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 2
    iget-object v0, p0, Lh1/c$a;->a:[Lh1/a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d(Landroid/database/sqlite/SQLiteDatabase;)Lh1/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lh1/c$a;->a:[Lh1/a;

    invoke-static {v0, p1}, Lh1/c$a;->k([Lh1/a;Landroid/database/sqlite/SQLiteDatabase;)Lh1/a;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized l()Lg1/a;
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lh1/c$a;->c:Z

    .line 2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3
    iget-boolean v1, p0, Lh1/c$a;->c:Z

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lh1/c$a;->close()V

    .line 5
    invoke-virtual {p0}, Lh1/c$a;->l()Lg1/a;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 6
    :cond_0
    :try_start_1
    invoke-virtual {p0, v0}, Lh1/c$a;->d(Landroid/database/sqlite/SQLiteDatabase;)Lh1/a;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lh1/c$a;->b:Lg1/b$a;

    .line 2
    iget-object v1, p0, Lh1/c$a;->a:[Lh1/a;

    invoke-static {v1, p1}, Lh1/c$a;->k([Lh1/a;Landroid/database/sqlite/SQLiteDatabase;)Lh1/a;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lh1/c$a;->b:Lg1/b$a;

    .line 2
    iget-object v1, p0, Lh1/c$a;->a:[Lh1/a;

    invoke-static {v1, p1}, Lh1/c$a;->k([Lh1/a;Landroid/database/sqlite/SQLiteDatabase;)Lh1/a;

    move-result-object p1

    .line 3
    check-cast v0, Ld1/g;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SELECT count(*) FROM sqlite_master WHERE name != \'android_metadata\'"

    .line 4
    invoke-virtual {p1, v1}, Lh1/a;->l(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 5
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 6
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 7
    iget-object v1, v0, Ld1/g;->c:Ld1/g$a;

    invoke-virtual {v1, p1}, Ld1/g$a;->a(Lg1/a;)V

    if-nez v2, :cond_2

    .line 8
    iget-object v1, v0, Ld1/g;->c:Ld1/g$a;

    invoke-virtual {v1, p1}, Ld1/g$a;->b(Lg1/a;)Ld1/g$b;

    move-result-object v1

    .line 9
    iget-boolean v2, v1, Ld1/g$b;->a:Z

    if-eqz v2, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Pre-packaged database has an invalid schema: "

    invoke-static {v0}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v1, Ld1/g$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_2
    :goto_1
    invoke-virtual {v0, p1}, Ld1/g;->c(Lg1/a;)V

    .line 12
    iget-object p1, v0, Ld1/g;->c:Ld1/g$a;

    check-cast p1, Landroidx/work/impl/WorkDatabase_Impl$a;

    .line 13
    iget-object v0, p1, Landroidx/work/impl/WorkDatabase_Impl$a;->b:Landroidx/work/impl/WorkDatabase_Impl;

    sget v1, Landroidx/work/impl/WorkDatabase_Impl;->s:I

    .line 14
    iget-object v0, v0, Ld1/f;->g:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_2
    if-ge v3, v0, :cond_3

    .line 16
    iget-object v1, p1, Landroidx/work/impl/WorkDatabase_Impl$a;->b:Landroidx/work/impl/WorkDatabase_Impl;

    .line 17
    iget-object v1, v1, Ld1/f;->g:Ljava/util/List;

    .line 18
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld1/f$b;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 19
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 20
    throw p1
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lh1/c$a;->c:Z

    .line 2
    iget-object v0, p0, Lh1/c$a;->b:Lg1/b$a;

    .line 3
    iget-object v1, p0, Lh1/c$a;->a:[Lh1/a;

    invoke-static {v1, p1}, Lh1/c$a;->k([Lh1/a;Landroid/database/sqlite/SQLiteDatabase;)Lh1/a;

    move-result-object p1

    .line 4
    check-cast v0, Ld1/g;

    .line 5
    invoke-virtual {v0, p1, p2, p3}, Ld1/g;->b(Lg1/a;II)V

    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lh1/c$a;->c:Z

    if-nez v0, :cond_8

    .line 2
    iget-object v0, p0, Lh1/c$a;->b:Lg1/b$a;

    .line 3
    iget-object v1, p0, Lh1/c$a;->a:[Lh1/a;

    invoke-static {v1, p1}, Lh1/c$a;->k([Lh1/a;Landroid/database/sqlite/SQLiteDatabase;)Lh1/a;

    move-result-object p1

    .line 4
    check-cast v0, Ld1/g;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SELECT 1 FROM sqlite_master WHERE type = \'table\' AND name=\'room_master_table\'"

    .line 5
    invoke-virtual {p1, v1}, Lh1/a;->l(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 6
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 7
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x0

    if-eqz v2, :cond_3

    .line 8
    new-instance v2, Landroidx/appcompat/widget/l;

    const-string v5, "SELECT identity_hash FROM room_master_table WHERE id = 42 LIMIT 1"

    invoke-direct {v2, v5}, Landroidx/appcompat/widget/l;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lh1/a;->k(Lg1/d;)Landroid/database/Cursor;

    move-result-object v2

    .line 9
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 10
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_1
    move-object v5, v1

    .line 11
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const-string v2, "c103703e120ae8cc73c9248622f3cd1e"

    .line 12
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "49f946663a8deb7054212b8adda248c6"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    .line 13
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Room cannot verify the data integrity. Looks like you\'ve changed schema but forgot to update the version number. You can simply fix this by increasing the version number."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 14
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 15
    throw p1

    .line 16
    :cond_3
    iget-object v2, v0, Ld1/g;->c:Ld1/g$a;

    invoke-virtual {v2, p1}, Ld1/g$a;->b(Lg1/a;)Ld1/g$b;

    move-result-object v2

    .line 17
    iget-boolean v5, v2, Ld1/g$b;->a:Z

    if-eqz v5, :cond_7

    .line 18
    iget-object v2, v0, Ld1/g;->c:Ld1/g$a;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-virtual {v0, p1}, Ld1/g;->c(Lg1/a;)V

    .line 20
    :cond_4
    :goto_2
    iget-object v2, v0, Ld1/g;->c:Ld1/g$a;

    check-cast v2, Landroidx/work/impl/WorkDatabase_Impl$a;

    .line 21
    iget-object v5, v2, Landroidx/work/impl/WorkDatabase_Impl$a;->b:Landroidx/work/impl/WorkDatabase_Impl;

    sget v6, Landroidx/work/impl/WorkDatabase_Impl;->s:I

    .line 22
    iput-object p1, v5, Ld1/f;->a:Lg1/a;

    const-string v5, "PRAGMA foreign_keys = ON"

    .line 23
    iget-object v6, p1, Lh1/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 24
    iget-object v5, v2, Landroidx/work/impl/WorkDatabase_Impl$a;->b:Landroidx/work/impl/WorkDatabase_Impl;

    .line 25
    iget-object v5, v5, Ld1/f;->d:Ld1/e;

    .line 26
    monitor-enter v5

    .line 27
    :try_start_2
    iget-boolean v6, v5, Ld1/e;->f:Z

    if-eqz v6, :cond_5

    .line 28
    monitor-exit v5

    goto :goto_3

    :cond_5
    const-string v6, "PRAGMA temp_store = MEMORY;"

    .line 29
    iget-object v7, p1, Lh1/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v6, "PRAGMA recursive_triggers=\'ON\';"

    .line 30
    iget-object v7, p1, Lh1/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v6, "CREATE TEMP TABLE room_table_modification_log(table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)"

    .line 31
    iget-object v7, p1, Lh1/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v5, p1}, Ld1/e;->d(Lg1/a;)V

    const-string v6, "UPDATE room_table_modification_log SET invalidated = 0 WHERE invalidated = 1 "

    .line 33
    new-instance v7, Lh1/f;

    iget-object v8, p1, Lh1/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v8, v6}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v6

    invoke-direct {v7, v6}, Lh1/f;-><init>(Landroid/database/sqlite/SQLiteStatement;)V

    .line 34
    iput-object v7, v5, Ld1/e;->g:Lh1/f;

    .line 35
    iput-boolean v4, v5, Ld1/e;->f:Z

    .line 36
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 37
    :goto_3
    iget-object v4, v2, Landroidx/work/impl/WorkDatabase_Impl$a;->b:Landroidx/work/impl/WorkDatabase_Impl;

    .line 38
    iget-object v4, v4, Ld1/f;->g:Ljava/util/List;

    if-eqz v4, :cond_6

    .line 39
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    :goto_4
    if-ge v3, v4, :cond_6

    .line 40
    iget-object v5, v2, Landroidx/work/impl/WorkDatabase_Impl$a;->b:Landroidx/work/impl/WorkDatabase_Impl;

    .line 41
    iget-object v5, v5, Ld1/f;->g:Ljava/util/List;

    .line 42
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ld1/f$b;

    invoke-virtual {v5, p1}, Ld1/f$b;->a(Lg1/a;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 43
    :cond_6
    iput-object v1, v0, Ld1/g;->b:Ld1/a;

    goto :goto_5

    :catchall_1
    move-exception p1

    .line 44
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    .line 45
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Pre-packaged database has an invalid schema: "

    invoke-static {v0}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v2, Ld1/g$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_2
    move-exception p1

    .line 46
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 47
    throw p1

    :cond_8
    :goto_5
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lh1/c$a;->c:Z

    .line 2
    iget-object v0, p0, Lh1/c$a;->b:Lg1/b$a;

    .line 3
    iget-object v1, p0, Lh1/c$a;->a:[Lh1/a;

    invoke-static {v1, p1}, Lh1/c$a;->k([Lh1/a;Landroid/database/sqlite/SQLiteDatabase;)Lh1/a;

    move-result-object p1

    .line 4
    invoke-virtual {v0, p1, p2, p3}, Lg1/b$a;->b(Lg1/a;II)V

    return-void
.end method
