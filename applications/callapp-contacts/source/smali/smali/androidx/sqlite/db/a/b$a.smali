.class final Landroidx/sqlite/db/a/b$a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/sqlite/db/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:[Landroidx/sqlite/db/a/a;

.field final b:Landroidx/sqlite/db/SupportSQLiteOpenHelper$a;

.field private c:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;[Landroidx/sqlite/db/a/a;Landroidx/sqlite/db/SupportSQLiteOpenHelper$a;)V
    .locals 6

    .line 132
    iget v4, p4, Landroidx/sqlite/db/SupportSQLiteOpenHelper$a;->a:I

    new-instance v5, Landroidx/sqlite/db/a/b$a$1;

    invoke-direct {v5, p4, p3}, Landroidx/sqlite/db/a/b$a$1;-><init>(Landroidx/sqlite/db/SupportSQLiteOpenHelper$a;[Landroidx/sqlite/db/a/a;)V

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V

    .line 139
    iput-object p4, p0, Landroidx/sqlite/db/a/b$a;->b:Landroidx/sqlite/db/SupportSQLiteOpenHelper$a;

    .line 140
    iput-object p3, p0, Landroidx/sqlite/db/a/b$a;->a:[Landroidx/sqlite/db/a/a;

    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;)Landroidx/sqlite/db/a/a;
    .locals 1

    .line 166
    iget-object v0, p0, Landroidx/sqlite/db/a/b$a;->a:[Landroidx/sqlite/db/a/a;

    invoke-static {v0, p1}, Landroidx/sqlite/db/a/b$a;->a([Landroidx/sqlite/db/a/a;Landroid/database/sqlite/SQLiteDatabase;)Landroidx/sqlite/db/a/a;

    move-result-object p1

    return-object p1
.end method

.method static a([Landroidx/sqlite/db/a/a;Landroid/database/sqlite/SQLiteDatabase;)Landroidx/sqlite/db/a/a;
    .locals 2

    const/4 v0, 0x0

    .line 207
    aget-object v1, p0, v0

    if-eqz v1, :cond_0

    .line 208
    invoke-virtual {v1, p1}, Landroidx/sqlite/db/a/a;->a(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 209
    :cond_0
    new-instance v1, Landroidx/sqlite/db/a/a;

    invoke-direct {v1, p1}, Landroidx/sqlite/db/a/a;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    aput-object v1, p0, v0

    .line 211
    :cond_1
    aget-object p0, p0, v0

    return-object p0
.end method


# virtual methods
.method final declared-synchronized a()Landroidx/sqlite/db/b;
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 144
    :try_start_0
    iput-boolean v0, p0, Landroidx/sqlite/db/a/b$a;->c:Z

    .line 145
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 146
    iget-boolean v1, p0, Landroidx/sqlite/db/a/b$a;->c:Z

    if-eqz v1, :cond_0

    .line 148
    invoke-virtual {p0}, Landroidx/sqlite/db/a/b$a;->close()V

    .line 149
    invoke-virtual {p0}, Landroidx/sqlite/db/a/b$a;->a()Landroidx/sqlite/db/b;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 151
    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Landroidx/sqlite/db/a/b$a;->a(Landroid/database/sqlite/SQLiteDatabase;)Landroidx/sqlite/db/a/a;

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

.method public final declared-synchronized close()V
    .locals 3

    monitor-enter p0

    .line 201
    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 202
    iget-object v0, p0, Landroidx/sqlite/db/a/b$a;->a:[Landroidx/sqlite/db/a/a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 182
    invoke-direct {p0, p1}, Landroidx/sqlite/db/a/b$a;->a(Landroid/database/sqlite/SQLiteDatabase;)Landroidx/sqlite/db/a/a;

    return-void
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 171
    iget-object v0, p0, Landroidx/sqlite/db/a/b$a;->b:Landroidx/sqlite/db/SupportSQLiteOpenHelper$a;

    invoke-direct {p0, p1}, Landroidx/sqlite/db/a/b$a;->a(Landroid/database/sqlite/SQLiteDatabase;)Landroidx/sqlite/db/a/a;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$a;->a(Landroidx/sqlite/db/b;)V

    return-void
.end method

.method public final onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    const/4 v0, 0x1

    .line 187
    iput-boolean v0, p0, Landroidx/sqlite/db/a/b$a;->c:Z

    .line 188
    iget-object v0, p0, Landroidx/sqlite/db/a/b$a;->b:Landroidx/sqlite/db/SupportSQLiteOpenHelper$a;

    invoke-direct {p0, p1}, Landroidx/sqlite/db/a/b$a;->a(Landroid/database/sqlite/SQLiteDatabase;)Landroidx/sqlite/db/a/a;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$a;->b(Landroidx/sqlite/db/b;II)V

    return-void
.end method

.method public final onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 193
    iget-boolean v0, p0, Landroidx/sqlite/db/a/b$a;->c:Z

    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Landroidx/sqlite/db/a/b$a;->b:Landroidx/sqlite/db/SupportSQLiteOpenHelper$a;

    invoke-direct {p0, p1}, Landroidx/sqlite/db/a/b$a;->a(Landroid/database/sqlite/SQLiteDatabase;)Landroidx/sqlite/db/a/a;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$a;->b(Landroidx/sqlite/db/b;)V

    :cond_0
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    const/4 v0, 0x1

    .line 176
    iput-boolean v0, p0, Landroidx/sqlite/db/a/b$a;->c:Z

    .line 177
    iget-object v0, p0, Landroidx/sqlite/db/a/b$a;->b:Landroidx/sqlite/db/SupportSQLiteOpenHelper$a;

    invoke-direct {p0, p1}, Landroidx/sqlite/db/a/b$a;->a(Landroid/database/sqlite/SQLiteDatabase;)Landroidx/sqlite/db/a/a;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$a;->a(Landroidx/sqlite/db/b;II)V

    return-void
.end method
