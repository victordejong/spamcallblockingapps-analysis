.class public final Landroidx/work/impl/WorkDatabase_Impl;
.super Landroidx/work/impl/WorkDatabase;
.source "SourceFile"


# instance fields
.field private volatile i:Landroidx/work/impl/model/WorkSpecDao;

.field private volatile j:Landroidx/work/impl/model/DependencyDao;

.field private volatile k:Landroidx/work/impl/model/WorkTagDao;

.field private volatile l:Landroidx/work/impl/model/SystemIdInfoDao;

.field private volatile m:Landroidx/work/impl/model/WorkNameDao;

.field private volatile n:Landroidx/work/impl/model/WorkProgressDao;

.field private volatile o:Landroidx/work/impl/model/PreferenceDao;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Landroidx/work/impl/WorkDatabase;-><init>()V

    return-void
.end method

.method static synthetic a(Landroidx/work/impl/WorkDatabase_Impl;Landroidx/sqlite/db/b;)Landroidx/sqlite/db/b;
    .locals 0

    .line 42
    iput-object p1, p0, Landroidx/work/impl/WorkDatabase_Impl;->a:Landroidx/sqlite/db/b;

    return-object p1
.end method

.method static synthetic a(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 42
    iget-object p0, p0, Landroidx/work/impl/WorkDatabase_Impl;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 42
    iget-object p0, p0, Landroidx/work/impl/WorkDatabase_Impl;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Landroidx/work/impl/WorkDatabase_Impl;Landroidx/sqlite/db/b;)V
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Landroidx/work/impl/WorkDatabase_Impl;->a(Landroidx/sqlite/db/b;)V

    return-void
.end method

.method static synthetic c(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 42
    iget-object p0, p0, Landroidx/work/impl/WorkDatabase_Impl;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic d(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 42
    iget-object p0, p0, Landroidx/work/impl/WorkDatabase_Impl;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic e(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 42
    iget-object p0, p0, Landroidx/work/impl/WorkDatabase_Impl;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic f(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 42
    iget-object p0, p0, Landroidx/work/impl/WorkDatabase_Impl;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic g(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 42
    iget-object p0, p0, Landroidx/work/impl/WorkDatabase_Impl;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic h(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 42
    iget-object p0, p0, Landroidx/work/impl/WorkDatabase_Impl;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic i(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 42
    iget-object p0, p0, Landroidx/work/impl/WorkDatabase_Impl;->g:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final a()Landroidx/room/e;
    .locals 10

    .line 260
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 261
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 262
    new-instance v1, Landroidx/room/e;

    const-string v3, "Dependency"

    const-string v4, "WorkSpec"

    const-string v5, "WorkTag"

    const-string v6, "SystemIdInfo"

    const-string v7, "WorkName"

    const-string v8, "WorkProgress"

    const-string v9, "Preference"

    filled-new-array/range {v3 .. v9}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v0, v2, v3}, Landroidx/room/e;-><init>(Landroidx/room/h;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v1
.end method

.method public final b(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 4

    .line 61
    new-instance v0, Landroidx/room/j;

    new-instance v1, Landroidx/work/impl/WorkDatabase_Impl$1;

    const/16 v2, 0xb

    invoke-direct {v1, p0, v2}, Landroidx/work/impl/WorkDatabase_Impl$1;-><init>(Landroidx/work/impl/WorkDatabase_Impl;I)V

    const-string v2, "cf029002fffdcadf079e8d0a1c9a70ac"

    const-string v3, "8aff2efc47fafe870c738f727dfcfc6e"

    invoke-direct {v0, p1, v1, v2, v3}, Landroidx/room/j;-><init>(Landroidx/room/DatabaseConfiguration;Landroidx/room/j$a;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v1, p1, Landroidx/room/DatabaseConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->builder(Landroid/content/Context;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    iget-object v2, p1, Landroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    .line 251
    invoke-virtual {v1, v2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->name(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    .line 252
    invoke-virtual {v1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->callback(Landroidx/sqlite/db/SupportSQLiteOpenHelper$a;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v0

    .line 253
    invoke-virtual {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->build()Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;

    move-result-object v0

    .line 254
    iget-object p1, p1, Landroidx/room/DatabaseConfiguration;->sqliteOpenHelperFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$b;

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$b;->a(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object p1

    return-object p1
.end method

.method public final j()Landroidx/work/impl/model/WorkSpecDao;
    .locals 1

    .line 300
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->i:Landroidx/work/impl/model/WorkSpecDao;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->i:Landroidx/work/impl/model/WorkSpecDao;

    return-object v0

    .line 303
    :cond_0
    monitor-enter p0

    .line 304
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->i:Landroidx/work/impl/model/WorkSpecDao;

    if-nez v0, :cond_1

    .line 305
    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl;

    invoke-direct {v0, p0}, Landroidx/work/impl/model/WorkSpecDao_Impl;-><init>(Landroidx/room/h;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->i:Landroidx/work/impl/model/WorkSpecDao;

    .line 307
    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->i:Landroidx/work/impl/model/WorkSpecDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 308
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final k()Landroidx/work/impl/model/DependencyDao;
    .locals 1

    .line 314
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->j:Landroidx/work/impl/model/DependencyDao;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->j:Landroidx/work/impl/model/DependencyDao;

    return-object v0

    .line 317
    :cond_0
    monitor-enter p0

    .line 318
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->j:Landroidx/work/impl/model/DependencyDao;

    if-nez v0, :cond_1

    .line 319
    new-instance v0, Landroidx/work/impl/model/DependencyDao_Impl;

    invoke-direct {v0, p0}, Landroidx/work/impl/model/DependencyDao_Impl;-><init>(Landroidx/room/h;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->j:Landroidx/work/impl/model/DependencyDao;

    .line 321
    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->j:Landroidx/work/impl/model/DependencyDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 322
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final l()Landroidx/work/impl/model/WorkTagDao;
    .locals 1

    .line 328
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->k:Landroidx/work/impl/model/WorkTagDao;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->k:Landroidx/work/impl/model/WorkTagDao;

    return-object v0

    .line 331
    :cond_0
    monitor-enter p0

    .line 332
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->k:Landroidx/work/impl/model/WorkTagDao;

    if-nez v0, :cond_1

    .line 333
    new-instance v0, Landroidx/work/impl/model/WorkTagDao_Impl;

    invoke-direct {v0, p0}, Landroidx/work/impl/model/WorkTagDao_Impl;-><init>(Landroidx/room/h;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->k:Landroidx/work/impl/model/WorkTagDao;

    .line 335
    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->k:Landroidx/work/impl/model/WorkTagDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 336
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final m()Landroidx/work/impl/model/SystemIdInfoDao;
    .locals 1

    .line 342
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->l:Landroidx/work/impl/model/SystemIdInfoDao;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->l:Landroidx/work/impl/model/SystemIdInfoDao;

    return-object v0

    .line 345
    :cond_0
    monitor-enter p0

    .line 346
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->l:Landroidx/work/impl/model/SystemIdInfoDao;

    if-nez v0, :cond_1

    .line 347
    new-instance v0, Landroidx/work/impl/model/SystemIdInfoDao_Impl;

    invoke-direct {v0, p0}, Landroidx/work/impl/model/SystemIdInfoDao_Impl;-><init>(Landroidx/room/h;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->l:Landroidx/work/impl/model/SystemIdInfoDao;

    .line 349
    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->l:Landroidx/work/impl/model/SystemIdInfoDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 350
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final n()Landroidx/work/impl/model/WorkNameDao;
    .locals 1

    .line 356
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->m:Landroidx/work/impl/model/WorkNameDao;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->m:Landroidx/work/impl/model/WorkNameDao;

    return-object v0

    .line 359
    :cond_0
    monitor-enter p0

    .line 360
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->m:Landroidx/work/impl/model/WorkNameDao;

    if-nez v0, :cond_1

    .line 361
    new-instance v0, Landroidx/work/impl/model/WorkNameDao_Impl;

    invoke-direct {v0, p0}, Landroidx/work/impl/model/WorkNameDao_Impl;-><init>(Landroidx/room/h;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->m:Landroidx/work/impl/model/WorkNameDao;

    .line 363
    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->m:Landroidx/work/impl/model/WorkNameDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 364
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final o()Landroidx/work/impl/model/WorkProgressDao;
    .locals 1

    .line 370
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->n:Landroidx/work/impl/model/WorkProgressDao;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->n:Landroidx/work/impl/model/WorkProgressDao;

    return-object v0

    .line 373
    :cond_0
    monitor-enter p0

    .line 374
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->n:Landroidx/work/impl/model/WorkProgressDao;

    if-nez v0, :cond_1

    .line 375
    new-instance v0, Landroidx/work/impl/model/WorkProgressDao_Impl;

    invoke-direct {v0, p0}, Landroidx/work/impl/model/WorkProgressDao_Impl;-><init>(Landroidx/room/h;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->n:Landroidx/work/impl/model/WorkProgressDao;

    .line 377
    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->n:Landroidx/work/impl/model/WorkProgressDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 378
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final p()Landroidx/work/impl/model/PreferenceDao;
    .locals 1

    .line 384
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->o:Landroidx/work/impl/model/PreferenceDao;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->o:Landroidx/work/impl/model/PreferenceDao;

    return-object v0

    .line 387
    :cond_0
    monitor-enter p0

    .line 388
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->o:Landroidx/work/impl/model/PreferenceDao;

    if-nez v0, :cond_1

    .line 389
    new-instance v0, Landroidx/work/impl/model/PreferenceDao_Impl;

    invoke-direct {v0, p0}, Landroidx/work/impl/model/PreferenceDao_Impl;-><init>(Landroidx/room/h;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->o:Landroidx/work/impl/model/PreferenceDao;

    .line 391
    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->o:Landroidx/work/impl/model/PreferenceDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 392
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
