.class public Lc9/d;
.super Lc9/c;
.source "SourceFile"


# instance fields
.field public b:Lc9/e;

.field public final c:Lc9/i;


# direct methods
.method public constructor <init>(Lc9/e;Lcom/raizlabs/android/dbflow/config/c;Lc9/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lc9/c;-><init>(Lcom/raizlabs/android/dbflow/config/c;)V

    .line 2
    iput-object p1, p0, Lc9/d;->b:Lc9/e;

    .line 3
    iput-object p3, p0, Lc9/d;->c:Lc9/i;

    return-void
.end method

.method public static j(Lcom/raizlabs/android/dbflow/config/c;)Ljava/lang/String;
    .locals 1

    const-string v0, "temp-"

    .line 1
    invoke-static {v0}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/config/c;->h()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".db"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public f(Lc9/f;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc9/d;->b:Lc9/e;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lc9/e;->a(Lc9/f;)V

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lc9/c;->f(Lc9/f;)V

    return-void
.end method

.method public g(Lc9/f;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc9/d;->b:Lc9/e;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lc9/e;->d(Lc9/f;II)V

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lc9/c;->a(Lc9/f;)V

    return-void
.end method

.method public h(Lc9/f;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc9/d;->b:Lc9/e;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lc9/e;->c(Lc9/f;)V

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lc9/c;->a(Lc9/f;)V

    return-void
.end method

.method public i(Lc9/f;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc9/d;->b:Lc9/e;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lc9/e;->b(Lc9/f;II)V

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lc9/c;->a(Lc9/f;)V

    .line 4
    invoke-virtual {p0, p1}, Lc9/c;->d(Lc9/f;)V

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lc9/c;->b(Lc9/f;II)V

    .line 6
    invoke-virtual {p0, p1}, Lc9/c;->e(Lc9/f;)V

    return-void
.end method

.method public k(Lc9/f;)Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "PRAGMA quick_check(1)"

    .line 1
    check-cast p1, Lc9/a;

    .line 2
    iget-object v2, p1, Lc9/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iget-object p1, p1, Lc9/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 3
    new-instance v2, Lc9/b;

    invoke-direct {v2, v1, p1}, Lc9/b;-><init>(Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "ok"

    .line 5
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 6
    sget-object v3, Lcom/raizlabs/android/dbflow/config/f$b;->d:Lcom/raizlabs/android/dbflow/config/f$b;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PRAGMA integrity_check on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-object v5, p0, Lc9/c;->a:Lcom/raizlabs/android/dbflow/config/c;

    .line 8
    invoke-virtual {v5}, Lcom/raizlabs/android/dbflow/config/c;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " returned: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {v3, p1, v0}, Lcom/raizlabs/android/dbflow/config/f;->a(Lcom/raizlabs/android/dbflow/config/f$b;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 10
    iget-object v0, p0, Lc9/c;->a:Lcom/raizlabs/android/dbflow/config/c;

    .line 11
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/c;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p0}, Lc9/d;->l()Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 13
    :cond_1
    :goto_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    return p1

    :catchall_0
    move-exception p1

    move-object v0, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v0, :cond_2

    iget-object v0, v0, Lc9/b;->a:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 14
    :cond_2
    throw p1
.end method

.method public l()Z
    .locals 4

    .line 1
    sget-object v0, Lcom/raizlabs/android/dbflow/config/f$b;->d:Lcom/raizlabs/android/dbflow/config/f$b;

    .line 2
    invoke-static {}, Lcom/raizlabs/android/dbflow/config/FlowManager;->c()Landroid/content/Context;

    move-result-object v1

    const-string v2, "temp-"

    invoke-static {v2}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3
    iget-object v3, p0, Lc9/c;->a:Lcom/raizlabs/android/dbflow/config/c;

    .line 4
    invoke-virtual {v3}, Lcom/raizlabs/android/dbflow/config/c;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 5
    invoke-static {}, Lcom/raizlabs/android/dbflow/config/FlowManager;->c()Landroid/content/Context;

    move-result-object v2

    .line 6
    iget-object v3, p0, Lc9/c;->a:Lcom/raizlabs/android/dbflow/config/c;

    .line 7
    invoke-virtual {v3}, Lcom/raizlabs/android/dbflow/config/c;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 8
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 9
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v2, v3}, Lc9/d;->m(Ljava/io/File;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 10
    invoke-static {v0, v1}, Lcom/raizlabs/android/dbflow/config/f;->b(Lcom/raizlabs/android/dbflow/config/f$b;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    const-string v2, "Failed to delete DB"

    .line 11
    invoke-static {v0, v2, v1}, Lcom/raizlabs/android/dbflow/config/f;->a(Lcom/raizlabs/android/dbflow/config/f$b;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final m(Ljava/io/File;Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 p1, 0x400

    new-array p1, p1, [B

    .line 2
    :goto_0
    invoke-virtual {p2, p1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, p1, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 5
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 6
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    return-void
.end method
