.class final Landroidx/sqlite/db/a/b$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/database/DatabaseErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/sqlite/db/a/b$a;-><init>(Landroid/content/Context;Ljava/lang/String;[Landroidx/sqlite/db/a/a;Landroidx/sqlite/db/SupportSQLiteOpenHelper$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/sqlite/db/SupportSQLiteOpenHelper$a;

.field final synthetic b:[Landroidx/sqlite/db/a/a;


# direct methods
.method constructor <init>(Landroidx/sqlite/db/SupportSQLiteOpenHelper$a;[Landroidx/sqlite/db/a/a;)V
    .locals 0

    .line 133
    iput-object p1, p0, Landroidx/sqlite/db/a/b$a$1;->a:Landroidx/sqlite/db/SupportSQLiteOpenHelper$a;

    iput-object p2, p0, Landroidx/sqlite/db/a/b$a$1;->b:[Landroidx/sqlite/db/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 136
    iget-object v0, p0, Landroidx/sqlite/db/a/b$a$1;->b:[Landroidx/sqlite/db/a/a;

    invoke-static {v0, p1}, Landroidx/sqlite/db/a/b$a;->a([Landroidx/sqlite/db/a/a;Landroid/database/sqlite/SQLiteDatabase;)Landroidx/sqlite/db/a/a;

    move-result-object p1

    .line 1236
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Corruption reported by sqlite on database: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Landroidx/sqlite/db/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SupportSQLite"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    invoke-interface {p1}, Landroidx/sqlite/db/b;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1245
    invoke-interface {p1}, Landroidx/sqlite/db/b;->f()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$a;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1254
    :try_start_0
    invoke-interface {p1}, Landroidx/sqlite/db/b;->g()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1259
    :catch_0
    :goto_0
    :try_start_1
    invoke-interface {p1}, Landroidx/sqlite/db/b;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_1
    if-eqz v0, :cond_1

    .line 1266
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 1267
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$a;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 1272
    :cond_1
    invoke-interface {p1}, Landroidx/sqlite/db/b;->f()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$a;->a(Ljava/lang/String;)V

    .line 1274
    :cond_2
    throw v1

    :catch_1
    nop

    :goto_3
    if-eqz v0, :cond_4

    .line 1266
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 1267
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$a;->a(Ljava/lang/String;)V

    goto :goto_4

    :cond_3
    return-void

    .line 1272
    :cond_4
    invoke-interface {p1}, Landroidx/sqlite/db/b;->f()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$a;->a(Ljava/lang/String;)V

    return-void
.end method
