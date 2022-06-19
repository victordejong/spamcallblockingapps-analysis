.class public abstract Lw8/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv8/a;
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lv8/a;",
        "Lw8/a;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TTModel;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TTModel;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lw8/d;->a:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public abstract a()Lb9/a$a;
.end method

.method public c()J
    .locals 2

    .line 1
    iget-object v0, p0, Lw8/d;->a:Ljava/lang/Class;

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->j(Ljava/lang/Class;)Lc9/f;

    move-result-object v0

    invoke-virtual {p0, v0}, Lw8/d;->h(Lc9/f;)J

    move-result-wide v0

    return-wide v0
.end method

.method public d()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lw8/d;->i()Lc9/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/database/CursorWrapper;->close()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lu8/e;->c()Lu8/e;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lw8/d;->a:Ljava/lang/Class;

    .line 5
    invoke-virtual {p0}, Lw8/d;->a()Lb9/a$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lu8/e;->b(Ljava/lang/Class;Lb9/a$a;)V

    :goto_0
    return-void
.end method

.method public e(Lc9/f;)V
    .locals 3

    .line 1
    move-object v0, p0

    check-cast v0, Lw8/e;

    const/4 v1, 0x0

    new-array v1, v1, [Lw8/n;

    .line 2
    new-instance v2, Lw8/r;

    invoke-direct {v2, v0, v1}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 3
    invoke-virtual {v2, p1}, Lw8/r;->j(Lc9/f;)Lc9/g;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/database/CursorWrapper;->close()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lu8/e;->c()Lu8/e;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lw8/d;->a:Ljava/lang/Class;

    .line 7
    invoke-virtual {p0}, Lw8/d;->a()Lb9/a$a;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lu8/e;->b(Ljava/lang/Class;Lb9/a$a;)V

    :goto_0
    return-void
.end method

.method public g(Lc9/f;)Z
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lw8/d;->h(Lc9/f;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public h(Lc9/f;)J
    .locals 4

    .line 1
    :try_start_0
    invoke-interface {p0}, Lv8/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/raizlabs/android/dbflow/config/f$b;->a:Lcom/raizlabs/android/dbflow/config/f$b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Executing query: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 3
    invoke-static {v1, v2, v3}, Lcom/raizlabs/android/dbflow/config/f;->a(Lcom/raizlabs/android/dbflow/config/f$b;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    sget-object v1, Lv8/d;->a:[C

    .line 5
    check-cast p1, Lc9/a;

    .line 6
    iget-object p1, p1, Lc9/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :try_start_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :try_start_2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    return-wide v0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 9
    throw v0
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 10
    sget-object v0, Lcom/raizlabs/android/dbflow/config/f$b;->c:Lcom/raizlabs/android/dbflow/config/f$b;

    invoke-static {v0, p1}, Lcom/raizlabs/android/dbflow/config/f;->b(Lcom/raizlabs/android/dbflow/config/f$b;Ljava/lang/Throwable;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public i()Lc9/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lw8/d;->a:Ljava/lang/Class;

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->j(Ljava/lang/Class;)Lc9/f;

    move-result-object v0

    invoke-virtual {p0, v0}, Lw8/d;->j(Lc9/f;)Lc9/g;

    const/4 v0, 0x0

    return-object v0
.end method

.method public j(Lc9/f;)Lc9/g;
    .locals 6

    .line 1
    sget-object v0, Lcom/raizlabs/android/dbflow/config/f$b;->a:Lcom/raizlabs/android/dbflow/config/f$b;

    invoke-virtual {p0}, Lw8/d;->a()Lb9/a$a;

    move-result-object v1

    sget-object v2, Lb9/a$a;->b:Lb9/a$a;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2
    invoke-interface {p0}, Lv8/a;->b()Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Compiling Query Into Statement: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-static {v0, v3, v2}, Lcom/raizlabs/android/dbflow/config/f;->a(Lcom/raizlabs/android/dbflow/config/f$b;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    check-cast p1, Lc9/a;

    invoke-virtual {p1, v1}, Lc9/a;->a(Ljava/lang/String;)Landroid/support/v4/media/a;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroid/support/v4/media/a;->n()J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-lez v5, :cond_0

    .line 7
    invoke-static {}, Lu8/e;->c()Lu8/e;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lw8/d;->a:Ljava/lang/Class;

    .line 9
    invoke-virtual {p0}, Lw8/d;->a()Lb9/a$a;

    move-result-object v3

    .line 10
    invoke-virtual {v0, v1, v3}, Lu8/e;->b(Ljava/lang/Class;Lb9/a$a;)V

    .line 11
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/media/a;->l()V

    goto :goto_0

    .line 12
    :cond_1
    invoke-interface {p0}, Lv8/a;->b()Ljava/lang/String;

    move-result-object v1

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Executing query: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 14
    invoke-static {v0, v3, v2}, Lcom/raizlabs/android/dbflow/config/f;->a(Lcom/raizlabs/android/dbflow/config/f$b;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    check-cast p1, Lc9/a;

    .line 16
    iget-object p1, p1, Lc9/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :goto_0
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-interface {p0}, Lv8/a;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
