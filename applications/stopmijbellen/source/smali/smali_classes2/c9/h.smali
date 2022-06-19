.class public Lc9/h;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"

# interfaces
.implements Lc9/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc9/h$a;
    }
.end annotation


# instance fields
.field public a:Lc9/d;

.field public b:Lc9/a;


# direct methods
.method public constructor <init>(Lcom/raizlabs/android/dbflow/config/c;Lc9/e;)V
    .locals 9

    .line 1
    invoke-static {}, Lcom/raizlabs/android/dbflow/config/FlowManager;->c()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/config/c;->g()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/config/c;->i()I

    move-result v1

    const/4 v2, 0x0

    .line 3
    invoke-direct {p0, p2, v0, v2, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 4
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/config/c;->d()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5
    new-instance p2, Lc9/h$a;

    invoke-static {}, Lcom/raizlabs/android/dbflow/config/FlowManager;->c()Landroid/content/Context;

    move-result-object v5

    .line 6
    invoke-static {p1}, Lc9/d;->j(Lcom/raizlabs/android/dbflow/config/c;)Ljava/lang/String;

    move-result-object v6

    .line 7
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/config/c;->i()I

    move-result v7

    move-object v3, p2

    move-object v4, p0

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lc9/h$a;-><init>(Lc9/h;Landroid/content/Context;Ljava/lang/String;ILcom/raizlabs/android/dbflow/config/c;)V

    goto :goto_0

    :cond_0
    move-object p2, v2

    .line 8
    :goto_0
    new-instance v0, Lc9/d;

    invoke-direct {v0, v2, p1, p2}, Lc9/d;-><init>(Lc9/e;Lcom/raizlabs/android/dbflow/config/c;Lc9/i;)V

    iput-object v0, p0, Lc9/h;->a:Lc9/d;

    return-void
.end method


# virtual methods
.method public d()Lc9/f;
    .locals 2

    .line 1
    iget-object v0, p0, Lc9/h;->b:Lc9/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lc9/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 5
    new-instance v1, Lc9/a;

    invoke-direct {v1, v0}, Lc9/a;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 6
    iput-object v1, p0, Lc9/h;->b:Lc9/a;

    .line 7
    :cond_1
    iget-object v0, p0, Lc9/h;->b:Lc9/a;

    return-object v0
.end method

.method public k()V
    .locals 5

    .line 1
    iget-object v0, p0, Lc9/h;->a:Lc9/d;

    .line 2
    iget-object v1, v0, Lc9/c;->a:Lcom/raizlabs/android/dbflow/config/c;

    .line 3
    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/config/c;->g()Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v2, v0, Lc9/c;->a:Lcom/raizlabs/android/dbflow/config/c;

    .line 5
    invoke-virtual {v2}, Lcom/raizlabs/android/dbflow/config/c;->g()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-static {}, Lcom/raizlabs/android/dbflow/config/FlowManager;->c()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8
    iget-object v3, v0, Lc9/c;->a:Lcom/raizlabs/android/dbflow/config/c;

    .line 9
    invoke-virtual {v3}, Lcom/raizlabs/android/dbflow/config/c;->c()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 10
    iget-object v3, v0, Lc9/c;->a:Lcom/raizlabs/android/dbflow/config/c;

    .line 11
    invoke-virtual {v3}, Lcom/raizlabs/android/dbflow/config/c;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 12
    iget-object v3, v0, Lc9/c;->a:Lcom/raizlabs/android/dbflow/config/c;

    .line 13
    invoke-virtual {v3}, Lcom/raizlabs/android/dbflow/config/c;->j()Lc9/f;

    move-result-object v3

    .line 14
    invoke-virtual {v0, v3}, Lc9/d;->k(Lc9/f;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 15
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 16
    :try_start_0
    invoke-static {}, Lcom/raizlabs/android/dbflow/config/FlowManager;->c()Landroid/content/Context;

    move-result-object v3

    .line 17
    iget-object v4, v0, Lc9/c;->a:Lcom/raizlabs/android/dbflow/config/c;

    .line 18
    invoke-static {v4}, Lc9/d;->j(Lcom/raizlabs/android/dbflow/config/c;)Ljava/lang/String;

    move-result-object v4

    .line 19
    invoke-virtual {v3, v4}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 20
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 21
    iget-object v4, v0, Lc9/c;->a:Lcom/raizlabs/android/dbflow/config/c;

    .line 22
    invoke-virtual {v4}, Lcom/raizlabs/android/dbflow/config/c;->d()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 23
    iget-object v4, v0, Lc9/c;->a:Lcom/raizlabs/android/dbflow/config/c;

    .line 24
    invoke-virtual {v4}, Lcom/raizlabs/android/dbflow/config/c;->d()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lc9/d;->c:Lc9/i;

    if-eqz v4, :cond_2

    .line 25
    invoke-interface {v4}, Lc9/i;->d()Lc9/f;

    move-result-object v4

    invoke-virtual {v0, v4}, Lc9/d;->k(Lc9/f;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 26
    :cond_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    goto :goto_0

    .line 27
    :cond_2
    invoke-static {}, Lcom/raizlabs/android/dbflow/config/FlowManager;->c()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 28
    :goto_0
    invoke-virtual {v0, v1, v2}, Lc9/d;->m(Ljava/io/File;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 29
    sget-object v2, Lcom/raizlabs/android/dbflow/config/f$b;->c:Lcom/raizlabs/android/dbflow/config/f$b;

    const-string v3, "Failed to open file"

    invoke-static {v2, v3, v1}, Lcom/raizlabs/android/dbflow/config/f;->a(Lcom/raizlabs/android/dbflow/config/f$b;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    :cond_3
    :goto_1
    iget-object v1, v0, Lc9/c;->a:Lcom/raizlabs/android/dbflow/config/c;

    .line 31
    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/config/c;->d()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 32
    iget-object v1, v0, Lc9/d;->c:Lc9/i;

    if-eqz v1, :cond_6

    .line 33
    iget-object v1, v0, Lc9/c;->a:Lcom/raizlabs/android/dbflow/config/c;

    .line 34
    invoke-static {v1}, Lc9/d;->j(Lcom/raizlabs/android/dbflow/config/c;)Ljava/lang/String;

    move-result-object v1

    .line 35
    iget-object v2, v0, Lc9/c;->a:Lcom/raizlabs/android/dbflow/config/c;

    .line 36
    invoke-virtual {v2}, Lcom/raizlabs/android/dbflow/config/c;->g()Ljava/lang/String;

    move-result-object v2

    .line 37
    invoke-static {}, Lcom/raizlabs/android/dbflow/config/FlowManager;->c()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 38
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_3

    .line 39
    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 40
    :try_start_1
    invoke-static {}, Lcom/raizlabs/android/dbflow/config/FlowManager;->c()Landroid/content/Context;

    move-result-object v3

    .line 41
    iget-object v4, v0, Lc9/c;->a:Lcom/raizlabs/android/dbflow/config/c;

    .line 42
    invoke-virtual {v4}, Lcom/raizlabs/android/dbflow/config/c;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 43
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 44
    iget-object v4, v0, Lc9/c;->a:Lcom/raizlabs/android/dbflow/config/c;

    .line 45
    invoke-virtual {v4}, Lcom/raizlabs/android/dbflow/config/c;->d()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, v0, Lc9/d;->c:Lc9/i;

    if-eqz v4, :cond_5

    .line 46
    invoke-interface {v4}, Lc9/i;->d()Lc9/f;

    move-result-object v4

    invoke-virtual {v0, v4}, Lc9/d;->k(Lc9/f;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 47
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    goto :goto_2

    .line 48
    :cond_5
    invoke-static {}, Lcom/raizlabs/android/dbflow/config/FlowManager;->c()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 49
    :goto_2
    invoke-virtual {v0, v1, v2}, Lc9/d;->m(Ljava/io/File;Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v1

    .line 50
    sget-object v2, Lcom/raizlabs/android/dbflow/config/f$b;->d:Lcom/raizlabs/android/dbflow/config/f$b;

    invoke-static {v2, v1}, Lcom/raizlabs/android/dbflow/config/f;->b(Lcom/raizlabs/android/dbflow/config/f$b;Ljava/lang/Throwable;)V

    .line 51
    :goto_3
    iget-object v0, v0, Lc9/d;->c:Lc9/i;

    invoke-interface {v0}, Lc9/i;->d()Lc9/f;

    goto :goto_4

    .line 52
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "the passed backup helper was null, even though backup is enabled. Ensure that its passed in."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_4
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc9/h;->a:Lc9/d;

    .line 2
    new-instance v1, Lc9/a;

    invoke-direct {v1, p1}, Lc9/a;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3
    invoke-virtual {v0, v1}, Lc9/d;->f(Lc9/f;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc9/h;->a:Lc9/d;

    .line 2
    new-instance v1, Lc9/a;

    invoke-direct {v1, p1}, Lc9/a;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3
    iget-object p1, v0, Lc9/d;->b:Lc9/e;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1, v1, p2, p3}, Lc9/e;->d(Lc9/f;II)V

    .line 5
    :cond_0
    invoke-virtual {v0, v1}, Lc9/c;->a(Lc9/f;)V

    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc9/h;->a:Lc9/d;

    .line 2
    new-instance v1, Lc9/a;

    invoke-direct {v1, p1}, Lc9/a;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3
    iget-object p1, v0, Lc9/d;->b:Lc9/e;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1, v1}, Lc9/e;->c(Lc9/f;)V

    .line 5
    :cond_0
    invoke-virtual {v0, v1}, Lc9/c;->a(Lc9/f;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc9/h;->a:Lc9/d;

    .line 2
    new-instance v1, Lc9/a;

    invoke-direct {v1, p1}, Lc9/a;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3
    iget-object p1, v0, Lc9/d;->b:Lc9/e;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1, v1, p2, p3}, Lc9/e;->b(Lc9/f;II)V

    .line 5
    :cond_0
    invoke-virtual {v0, v1}, Lc9/c;->a(Lc9/f;)V

    .line 6
    invoke-virtual {v0, v1}, Lc9/c;->d(Lc9/f;)V

    .line 7
    invoke-virtual {v0, v1, p2, p3}, Lc9/c;->b(Lc9/f;II)V

    .line 8
    invoke-virtual {v0, v1}, Lc9/c;->e(Lc9/f;)V

    return-void
.end method
