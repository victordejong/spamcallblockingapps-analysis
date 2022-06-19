.class public final Landroidx/work/impl/WorkDatabase_Impl;
.super Landroidx/work/impl/WorkDatabase;
.source "WorkDatabase_Impl.java"


# instance fields
.field private volatile d:Landroidx/work/impl/b/q;

.field private volatile e:Landroidx/work/impl/b/b;

.field private volatile f:Landroidx/work/impl/b/t;

.field private volatile g:Landroidx/work/impl/b/h;

.field private volatile h:Landroidx/work/impl/b/k;

.field private volatile i:Landroidx/work/impl/b/n;

.field private volatile j:Landroidx/work/impl/b/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroidx/work/impl/WorkDatabase;-><init>()V

    return-void
.end method

.method static synthetic a(Landroidx/work/impl/WorkDatabase_Impl;Landroidx/i/a/b;)Landroidx/i/a/b;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Landroidx/work/impl/WorkDatabase_Impl;->a:Landroidx/i/a/b;

    return-object p1
.end method

.method static synthetic a(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Landroidx/work/impl/WorkDatabase_Impl;Landroidx/i/a/b;)V
    .locals 0

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Landroidx/work/impl/WorkDatabase_Impl;->a(Landroidx/i/a/b;)V

    return-void
.end method

.method static synthetic c(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic g(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic h(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic i(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->c:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method protected b(Landroidx/room/a;)Landroidx/i/a/c;
    .locals 4

    .prologue
    .line 57
    new-instance v0, Landroidx/room/k;

    new-instance v1, Landroidx/work/impl/WorkDatabase_Impl$1;

    const/16 v2, 0xb

    invoke-direct {v1, p0, v2}, Landroidx/work/impl/WorkDatabase_Impl$1;-><init>(Landroidx/work/impl/WorkDatabase_Impl;I)V

    const-string/jumbo v2, "cf029002fffdcadf079e8d0a1c9a70ac"

    const-string/jumbo v3, "8aff2efc47fafe870c738f727dfcfc6e"

    invoke-direct {v0, p1, v1, v2, v3}, Landroidx/room/k;-><init>(Landroidx/room/a;Landroidx/room/k$a;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v1, p1, Landroidx/room/a;->b:Landroid/content/Context;

    invoke-static {v1}, Landroidx/i/a/c$b;->a(Landroid/content/Context;)Landroidx/i/a/c$b$a;

    move-result-object v1

    iget-object v2, p1, Landroidx/room/a;->c:Ljava/lang/String;

    .line 247
    invoke-virtual {v1, v2}, Landroidx/i/a/c$b$a;->a(Ljava/lang/String;)Landroidx/i/a/c$b$a;

    move-result-object v1

    .line 248
    invoke-virtual {v1, v0}, Landroidx/i/a/c$b$a;->a(Landroidx/i/a/c$a;)Landroidx/i/a/c$b$a;

    move-result-object v0

    .line 249
    invoke-virtual {v0}, Landroidx/i/a/c$b$a;->a()Landroidx/i/a/c$b;

    move-result-object v0

    .line 250
    iget-object v1, p1, Landroidx/room/a;->a:Landroidx/i/a/c$c;

    invoke-interface {v1, v0}, Landroidx/i/a/c$c;->a(Landroidx/i/a/c$b;)Landroidx/i/a/c;

    move-result-object v0

    .line 251
    return-object v0
.end method

.method protected c()Landroidx/room/f;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 256
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 257
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 258
    new-instance v2, Landroidx/room/f;

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "Dependency"

    aput-object v4, v3, v5

    const/4 v4, 0x1

    const-string/jumbo v5, "WorkSpec"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "WorkTag"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string/jumbo v5, "SystemIdInfo"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string/jumbo v5, "WorkName"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string/jumbo v5, "WorkProgress"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string/jumbo v5, "Preference"

    aput-object v5, v3, v4

    invoke-direct {v2, p0, v0, v1, v3}, Landroidx/room/f;-><init>(Landroidx/room/i;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v2
.end method

.method public o()Landroidx/work/impl/b/q;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->d:Landroidx/work/impl/b/q;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->d:Landroidx/work/impl/b/q;

    .line 303
    :goto_0
    return-object v0

    .line 299
    :cond_0
    monitor-enter p0

    .line 300
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->d:Landroidx/work/impl/b/q;

    if-nez v0, :cond_1

    .line 301
    new-instance v0, Landroidx/work/impl/b/r;

    invoke-direct {v0, p0}, Landroidx/work/impl/b/r;-><init>(Landroidx/room/i;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->d:Landroidx/work/impl/b/q;

    .line 303
    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->d:Landroidx/work/impl/b/q;

    monitor-exit p0

    goto :goto_0

    .line 304
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public p()Landroidx/work/impl/b/b;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->e:Landroidx/work/impl/b/b;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->e:Landroidx/work/impl/b/b;

    .line 317
    :goto_0
    return-object v0

    .line 313
    :cond_0
    monitor-enter p0

    .line 314
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->e:Landroidx/work/impl/b/b;

    if-nez v0, :cond_1

    .line 315
    new-instance v0, Landroidx/work/impl/b/c;

    invoke-direct {v0, p0}, Landroidx/work/impl/b/c;-><init>(Landroidx/room/i;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->e:Landroidx/work/impl/b/b;

    .line 317
    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->e:Landroidx/work/impl/b/b;

    monitor-exit p0

    goto :goto_0

    .line 318
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public q()Landroidx/work/impl/b/t;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->f:Landroidx/work/impl/b/t;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->f:Landroidx/work/impl/b/t;

    .line 331
    :goto_0
    return-object v0

    .line 327
    :cond_0
    monitor-enter p0

    .line 328
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->f:Landroidx/work/impl/b/t;

    if-nez v0, :cond_1

    .line 329
    new-instance v0, Landroidx/work/impl/b/u;

    invoke-direct {v0, p0}, Landroidx/work/impl/b/u;-><init>(Landroidx/room/i;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->f:Landroidx/work/impl/b/t;

    .line 331
    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->f:Landroidx/work/impl/b/t;

    monitor-exit p0

    goto :goto_0

    .line 332
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public r()Landroidx/work/impl/b/h;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->g:Landroidx/work/impl/b/h;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->g:Landroidx/work/impl/b/h;

    .line 345
    :goto_0
    return-object v0

    .line 341
    :cond_0
    monitor-enter p0

    .line 342
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->g:Landroidx/work/impl/b/h;

    if-nez v0, :cond_1

    .line 343
    new-instance v0, Landroidx/work/impl/b/i;

    invoke-direct {v0, p0}, Landroidx/work/impl/b/i;-><init>(Landroidx/room/i;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->g:Landroidx/work/impl/b/h;

    .line 345
    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->g:Landroidx/work/impl/b/h;

    monitor-exit p0

    goto :goto_0

    .line 346
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public s()Landroidx/work/impl/b/k;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->h:Landroidx/work/impl/b/k;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->h:Landroidx/work/impl/b/k;

    .line 359
    :goto_0
    return-object v0

    .line 355
    :cond_0
    monitor-enter p0

    .line 356
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->h:Landroidx/work/impl/b/k;

    if-nez v0, :cond_1

    .line 357
    new-instance v0, Landroidx/work/impl/b/l;

    invoke-direct {v0, p0}, Landroidx/work/impl/b/l;-><init>(Landroidx/room/i;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->h:Landroidx/work/impl/b/k;

    .line 359
    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->h:Landroidx/work/impl/b/k;

    monitor-exit p0

    goto :goto_0

    .line 360
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public t()Landroidx/work/impl/b/n;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->i:Landroidx/work/impl/b/n;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->i:Landroidx/work/impl/b/n;

    .line 373
    :goto_0
    return-object v0

    .line 369
    :cond_0
    monitor-enter p0

    .line 370
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->i:Landroidx/work/impl/b/n;

    if-nez v0, :cond_1

    .line 371
    new-instance v0, Landroidx/work/impl/b/o;

    invoke-direct {v0, p0}, Landroidx/work/impl/b/o;-><init>(Landroidx/room/i;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->i:Landroidx/work/impl/b/n;

    .line 373
    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->i:Landroidx/work/impl/b/n;

    monitor-exit p0

    goto :goto_0

    .line 374
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public u()Landroidx/work/impl/b/e;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->j:Landroidx/work/impl/b/e;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->j:Landroidx/work/impl/b/e;

    .line 387
    :goto_0
    return-object v0

    .line 383
    :cond_0
    monitor-enter p0

    .line 384
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->j:Landroidx/work/impl/b/e;

    if-nez v0, :cond_1

    .line 385
    new-instance v0, Landroidx/work/impl/b/f;

    invoke-direct {v0, p0}, Landroidx/work/impl/b/f;-><init>(Landroidx/room/i;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->j:Landroidx/work/impl/b/e;

    .line 387
    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->j:Landroidx/work/impl/b/e;

    monitor-exit p0

    goto :goto_0

    .line 388
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
