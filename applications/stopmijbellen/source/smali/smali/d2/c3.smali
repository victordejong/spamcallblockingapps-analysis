.class public Ld2/c3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ld2/f4;

.field public final synthetic b:Ld2/a;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Ld2/d3;


# direct methods
.method public constructor <init>(Ld2/d3;Ld2/f4;Ld2/a;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/c3;->d:Ld2/d3;

    iput-object p2, p0, Ld2/c3;->a:Ld2/f4;

    iput-object p3, p0, Ld2/c3;->b:Ld2/a;

    iput-object p4, p0, Ld2/c3;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Ld2/c3;->a:Ld2/f4;

    const/4 v1, 0x0

    .line 2
    :try_start_0
    new-instance v2, Ld2/o1;

    invoke-direct {v2, v0}, Ld2/o1;-><init>(Ld2/f4;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_6

    .line 3
    iget-object v0, p0, Ld2/c3;->d:Ld2/d3;

    iget-object v3, p0, Ld2/c3;->b:Ld2/a;

    iget-object v4, p0, Ld2/c3;->c:Landroid/content/Context;

    .line 4
    monitor-enter v0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 5
    :try_start_1
    iget-object v7, v0, Ld2/d3;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    const-string v7, "adc_events_db"

    .line 6
    invoke-virtual {v4, v7, v6, v1}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, v0, Ld2/d3;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 7
    :cond_1
    iget-object v1, v0, Ld2/d3;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 8
    iget v4, v2, Ld2/o1;->a:I

    .line 9
    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->needUpgrade(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    invoke-virtual {v0, v2}, Ld2/d3;->c(Ld2/o1;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Ld2/d3;->d:Ld2/d3$b;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, v0, Ld2/d3;->c:Z

    if-eqz v1, :cond_4

    .line 11
    iget-object v1, v0, Ld2/d3;->d:Ld2/d3$b;

    check-cast v1, Ld2/f1$m;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {}, Ld2/r1;->c()Ld2/r1;

    move-result-object v1

    .line 13
    iput-boolean v6, v1, Ld2/r1;->d:Z

    goto :goto_2

    .line 14
    :cond_3
    iput-boolean v5, v0, Ld2/d3;->c:Z

    .line 15
    :cond_4
    :goto_2
    iget-boolean v1, v0, Ld2/d3;->c:Z

    if-eqz v1, :cond_5

    .line 16
    invoke-interface {v3, v2}, Ld2/a;->accept(Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    .line 17
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Database cannot be opened"

    .line 18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v1

    .line 20
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 22
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v2

    invoke-virtual {v2}, Ld2/f1;->p()Ld2/h0;

    move-result-object v2

    .line 23
    invoke-virtual {v2, v6, v5, v1, v5}, Ld2/h0;->e(IILjava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 24
    :cond_5
    :goto_3
    monitor-exit v0

    goto :goto_5

    :goto_4
    monitor-exit v0

    throw v1

    :cond_6
    :goto_5
    return-void
.end method
