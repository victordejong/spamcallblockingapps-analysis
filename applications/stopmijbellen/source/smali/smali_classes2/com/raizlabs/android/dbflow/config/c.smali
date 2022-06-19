.class public abstract Lcom/raizlabs/android/dbflow/config/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ly8/c;",
            ">;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lb9/d;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lb9/e;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lb9/f;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lc9/i;

.field public g:Ld9/a;

.field public h:Lcom/raizlabs/android/dbflow/config/b;

.field public i:Lu8/d;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/config/c;->a:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/config/c;->b:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/config/c;->c:Ljava/util/Map;

    .line 5
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/config/c;->d:Ljava/util/Map;

    .line 6
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/config/c;->e:Ljava/util/Map;

    .line 7
    invoke-static {}, Lcom/raizlabs/android/dbflow/config/FlowManager;->b()Lcom/raizlabs/android/dbflow/config/e;

    move-result-object v0

    .line 8
    iget-object v0, v0, Lcom/raizlabs/android/dbflow/config/e;->b:Ljava/util/Map;

    .line 9
    const-class v1, Lh8/k;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/raizlabs/android/dbflow/config/b;

    .line 10
    iput-object v0, p0, Lcom/raizlabs/android/dbflow/config/c;->h:Lcom/raizlabs/android/dbflow/config/b;

    if-nez v0, :cond_0

    .line 11
    new-instance v0, Ld9/a;

    invoke-direct {v0, p0}, Ld9/a;-><init>(Lcom/raizlabs/android/dbflow/config/c;)V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/config/c;->g:Ld9/a;

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 12
    throw v0
.end method


# virtual methods
.method public a(ILy8/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/c;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/config/c;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lb9/d;Lcom/raizlabs/android/dbflow/config/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lb9/d<",
            "TT;>;",
            "Lcom/raizlabs/android/dbflow/config/d;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lb9/b;->b()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0, p0}, Lcom/raizlabs/android/dbflow/config/d;->putDatabaseForTable(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/config/c;)V

    .line 2
    iget-object p2, p0, Lcom/raizlabs/android/dbflow/config/c;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lb9/d;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lb9/b;->b()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p2, p0, Lcom/raizlabs/android/dbflow/config/c;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lb9/b;->b()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public abstract c()Z
.end method

.method public abstract d()Z
.end method

.method public e(Ld9/c;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/config/c;->j()Lc9/f;

    move-result-object v0

    .line 2
    :try_start_0
    move-object v1, v0

    check-cast v1, Lc9/a;

    .line 3
    iget-object v1, v1, Lc9/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 4
    invoke-interface {p1, v0}, Ld9/c;->c(Lc9/f;)V

    .line 5
    move-object p1, v0

    check-cast p1, Lc9/a;

    .line 6
    iget-object p1, p1, Lc9/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    check-cast v0, Lc9/a;

    .line 8
    iget-object p1, v0, Lc9/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    .line 9
    check-cast v0, Lc9/a;

    .line 10
    iget-object v0, v0, Lc9/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 11
    throw p1
.end method

.method public abstract f()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public g()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/config/c;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/config/c;->h:Lcom/raizlabs/android/dbflow/config/b;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const-string v1, ".db"

    .line 3
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/c;->h:Lcom/raizlabs/android/dbflow/config/b;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/config/c;->f()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public abstract i()I
.end method

.method public j()Lc9/f;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/c;->f:Lc9/i;

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/raizlabs/android/dbflow/config/FlowManager;->b()Lcom/raizlabs/android/dbflow/config/e;

    move-result-object v0

    .line 4
    iget-object v0, v0, Lcom/raizlabs/android/dbflow/config/e;->b:Ljava/util/Map;

    .line 5
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/config/c;->f()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/raizlabs/android/dbflow/config/b;

    .line 6
    new-instance v0, Lc9/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc9/h;-><init>(Lcom/raizlabs/android/dbflow/config/c;Lc9/e;)V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/config/c;->f:Lc9/i;

    .line 7
    invoke-virtual {v0}, Lc9/h;->k()V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/c;->f:Lc9/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 9
    invoke-interface {v0}, Lc9/i;->d()Lc9/f;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    .line 10
    monitor-exit p0

    throw v0
.end method

.method public abstract k()Z
.end method
