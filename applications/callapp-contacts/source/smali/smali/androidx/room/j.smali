.class public final Landroidx/room/j;
.super Landroidx/sqlite/db/SupportSQLiteOpenHelper$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/j$b;,
        Landroidx/room/j$a;
    }
.end annotation


# instance fields
.field private b:Landroidx/room/DatabaseConfiguration;

.field private final c:Landroidx/room/j$a;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/room/DatabaseConfiguration;Landroidx/room/j$a;Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    .line 63
    invoke-direct {p0, p1, p2, v0, p3}, Landroidx/room/j;-><init>(Landroidx/room/DatabaseConfiguration;Landroidx/room/j$a;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroidx/room/DatabaseConfiguration;Landroidx/room/j$a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 54
    iget v0, p2, Landroidx/room/j$a;->a:I

    invoke-direct {p0, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$a;-><init>(I)V

    .line 55
    iput-object p1, p0, Landroidx/room/j;->b:Landroidx/room/DatabaseConfiguration;

    .line 56
    iput-object p2, p0, Landroidx/room/j;->c:Landroidx/room/j$a;

    .line 57
    iput-object p3, p0, Landroidx/room/j;->d:Ljava/lang/String;

    .line 58
    iput-object p4, p0, Landroidx/room/j;->e:Ljava/lang/String;

    return-void
.end method

.method private c(Landroidx/sqlite/db/b;)V
    .locals 1

    .line 172
    invoke-static {p1}, Landroidx/room/j;->d(Landroidx/sqlite/db/b;)V

    .line 173
    iget-object v0, p0, Landroidx/room/j;->d:Ljava/lang/String;

    invoke-static {v0}, Landroidx/room/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroidx/sqlite/db/b;->c(Ljava/lang/String;)V

    return-void
.end method

.method private static d(Landroidx/sqlite/db/b;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    .line 177
    invoke-interface {p0, v0}, Landroidx/sqlite/db/b;->c(Ljava/lang/String;)V

    return-void
.end method

.method private static e(Landroidx/sqlite/db/b;)Z
    .locals 2

    const-string v0, "SELECT 1 FROM sqlite_master WHERE type = \'table\' AND name=\'room_master_table\'"

    .line 181
    invoke-interface {p0, v0}, Landroidx/sqlite/db/b;->b(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 185
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 187
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return v1

    :catchall_0
    move-exception v0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 188
    throw v0
.end method

.method private static f(Landroidx/sqlite/db/b;)Z
    .locals 2

    const-string v0, "SELECT count(*) FROM sqlite_master WHERE name != \'android_metadata\'"

    .line 192
    invoke-interface {p0, v0}, Landroidx/sqlite/db/b;->b(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 196
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    .line 198
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return v1

    :catchall_0
    move-exception v0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 199
    throw v0
.end method


# virtual methods
.method public final a(Landroidx/sqlite/db/b;)V
    .locals 3

    .line 73
    invoke-static {p1}, Landroidx/room/j;->f(Landroidx/sqlite/db/b;)Z

    move-result v0

    .line 74
    iget-object v1, p0, Landroidx/room/j;->c:Landroidx/room/j$a;

    invoke-virtual {v1, p1}, Landroidx/room/j$a;->b(Landroidx/sqlite/db/b;)V

    if-nez v0, :cond_1

    .line 80
    iget-object v0, p0, Landroidx/room/j;->c:Landroidx/room/j$a;

    invoke-virtual {v0, p1}, Landroidx/room/j$a;->d(Landroidx/sqlite/db/b;)Landroidx/room/j$b;

    move-result-object v0

    .line 81
    iget-boolean v1, v0, Landroidx/room/j$b;->a:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Pre-packaged database has an invalid schema: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Landroidx/room/j$b;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 86
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Landroidx/room/j;->c(Landroidx/sqlite/db/b;)V

    .line 87
    iget-object p1, p0, Landroidx/room/j;->c:Landroidx/room/j$a;

    invoke-virtual {p1}, Landroidx/room/j$a;->a()V

    return-void
.end method

.method public final a(Landroidx/sqlite/db/b;II)V
    .locals 5

    .line 93
    iget-object v0, p0, Landroidx/room/j;->b:Landroidx/room/DatabaseConfiguration;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 94
    iget-object v0, v0, Landroidx/room/DatabaseConfiguration;->migrationContainer:Landroidx/room/h$d;

    if-ne p2, p3, :cond_0

    .line 2005
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_0
    if-le p3, p2, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 2008
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2009
    invoke-virtual {v0, v4, v3, p2, p3}, Landroidx/room/h$d;->a(Ljava/util/List;ZII)Ljava/util/List;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_4

    .line 97
    iget-object v2, p0, Landroidx/room/j;->c:Landroidx/room/j$a;

    invoke-virtual {v2, p1}, Landroidx/room/j$a;->e(Landroidx/sqlite/db/b;)V

    .line 98
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/a/a;

    .line 99
    invoke-virtual {v2, p1}, Landroidx/room/a/a;->a(Landroidx/sqlite/db/b;)V

    goto :goto_2

    .line 101
    :cond_2
    iget-object v0, p0, Landroidx/room/j;->c:Landroidx/room/j$a;

    invoke-virtual {v0, p1}, Landroidx/room/j$a;->d(Landroidx/sqlite/db/b;)Landroidx/room/j$b;

    move-result-object v0

    .line 102
    iget-boolean v2, v0, Landroidx/room/j$b;->a:Z

    if-eqz v2, :cond_3

    .line 107
    invoke-direct {p0, p1}, Landroidx/room/j;->c(Landroidx/sqlite/db/b;)V

    goto :goto_3

    .line 103
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Migration didn\'t properly handle: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, v0, Landroidx/room/j$b;->b:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const/4 v1, 0x0

    :goto_3
    if-nez v1, :cond_6

    .line 112
    iget-object v0, p0, Landroidx/room/j;->b:Landroidx/room/DatabaseConfiguration;

    if-eqz v0, :cond_5

    .line 113
    invoke-virtual {v0, p2, p3}, Landroidx/room/DatabaseConfiguration;->isMigrationRequired(II)Z

    move-result v0

    if-nez v0, :cond_5

    .line 114
    iget-object p2, p0, Landroidx/room/j;->c:Landroidx/room/j$a;

    invoke-virtual {p2, p1}, Landroidx/room/j$a;->a(Landroidx/sqlite/db/b;)V

    .line 115
    iget-object p2, p0, Landroidx/room/j;->c:Landroidx/room/j$a;

    invoke-virtual {p2, p1}, Landroidx/room/j$a;->b(Landroidx/sqlite/db/b;)V

    return-void

    .line 117
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "A migration from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    :cond_6
    return-void
.end method

.method public final b(Landroidx/sqlite/db/b;)V
    .locals 3

    .line 134
    invoke-super {p0, p1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$a;->b(Landroidx/sqlite/db/b;)V

    .line 2142
    invoke-static {p1}, Landroidx/room/j;->e(Landroidx/sqlite/db/b;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2144
    new-instance v0, Landroidx/sqlite/db/a;

    const-string v2, "SELECT identity_hash FROM room_master_table WHERE id = 42 LIMIT 1"

    invoke-direct {v0, v2}, Landroidx/sqlite/db/a;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Landroidx/sqlite/db/b;->a(Landroidx/sqlite/db/d;)Landroid/database/Cursor;

    move-result-object v0

    .line 2147
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 2148
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 2151
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2153
    iget-object v0, p0, Landroidx/room/j;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/room/j;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 2154
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Room cannot verify the data integrity. Looks like you\'ve changed schema but forgot to update the version number. You can simply fix this by increasing the version number."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 2151
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2152
    throw p1

    .line 2161
    :cond_2
    iget-object v0, p0, Landroidx/room/j;->c:Landroidx/room/j$a;

    invoke-virtual {v0, p1}, Landroidx/room/j$a;->d(Landroidx/sqlite/db/b;)Landroidx/room/j$b;

    move-result-object v0

    .line 2162
    iget-boolean v2, v0, Landroidx/room/j$b;->a:Z

    if-eqz v2, :cond_4

    .line 2167
    invoke-direct {p0, p1}, Landroidx/room/j;->c(Landroidx/sqlite/db/b;)V

    .line 136
    :cond_3
    :goto_1
    iget-object v0, p0, Landroidx/room/j;->c:Landroidx/room/j$a;

    invoke-virtual {v0, p1}, Landroidx/room/j$a;->c(Landroidx/sqlite/db/b;)V

    .line 138
    iput-object v1, p0, Landroidx/room/j;->b:Landroidx/room/DatabaseConfiguration;

    return-void

    .line 2163
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Pre-packaged database has an invalid schema: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Landroidx/room/j$b;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Landroidx/sqlite/db/b;II)V
    .locals 0

    .line 129
    invoke-virtual {p0, p1, p2, p3}, Landroidx/room/j;->a(Landroidx/sqlite/db/b;II)V

    return-void
.end method
