.class public final Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;
.super Lorg/mistergroup/shouldianswer/model/AppDatabase;
.source "AppDatabase_Impl.java"


# instance fields
.field private volatile e:Lorg/mistergroup/shouldianswer/model/y;

.field private volatile f:Lorg/mistergroup/shouldianswer/model/p;

.field private volatile g:Lorg/mistergroup/shouldianswer/model/e;

.field private volatile h:Lorg/mistergroup/shouldianswer/model/u;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/model/AppDatabase;-><init>()V

    return-void
.end method

.method static synthetic a(Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;Landroidx/i/a/b;)Landroidx/i/a/b;
    .locals 0

    .line 26
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;->a:Landroidx/i/a/b;

    return-object p1
.end method

.method static synthetic a(Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;Landroidx/i/a/b;)V
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;->a(Landroidx/i/a/b;)V

    return-void
.end method

.method static synthetic c(Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic d(Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic e(Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic f(Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic g(Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic h(Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic i(Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;->c:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method protected b(Landroidx/room/a;)Landroidx/i/a/c;
    .locals 4

    .line 37
    new-instance v0, Landroidx/room/l;

    new-instance v1, Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl$1;-><init>(Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;I)V

    const-string v2, "6bade78ef8f8a6e000f22374dd6afb53"

    const-string v3, "901c62d37498f3656a2f7a4adb1ffa90"

    invoke-direct {v0, p1, v1, v2, v3}, Landroidx/room/l;-><init>(Landroidx/room/a;Landroidx/room/l$a;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v1, p1, Landroidx/room/a;->b:Landroid/content/Context;

    invoke-static {v1}, Landroidx/i/a/c$b;->a(Landroid/content/Context;)Landroidx/i/a/c$b$a;

    move-result-object v1

    iget-object v2, p1, Landroidx/room/a;->c:Ljava/lang/String;

    .line 194
    invoke-virtual {v1, v2}, Landroidx/i/a/c$b$a;->a(Ljava/lang/String;)Landroidx/i/a/c$b$a;

    move-result-object v1

    .line 195
    invoke-virtual {v1, v0}, Landroidx/i/a/c$b$a;->a(Landroidx/i/a/c$a;)Landroidx/i/a/c$b$a;

    move-result-object v0

    .line 196
    invoke-virtual {v0}, Landroidx/i/a/c$b$a;->a()Landroidx/i/a/c$b;

    move-result-object v0

    .line 197
    iget-object p1, p1, Landroidx/room/a;->a:Landroidx/i/a/c$c;

    invoke-interface {p1, v0}, Landroidx/i/a/c$c;->a(Landroidx/i/a/c$b;)Landroidx/i/a/c;

    move-result-object p1

    return-object p1
.end method

.method protected c()Landroidx/room/g;
    .locals 7

    .line 203
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 204
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 205
    new-instance v1, Landroidx/room/g;

    const-string v3, "NumberReport"

    const-string v4, "CheckedCall"

    const-string v5, "BlockException"

    const-string v6, "NumberCaption"

    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v0, v2, v3}, Landroidx/room/g;-><init>(Landroidx/room/j;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v1
.end method

.method public l()Lorg/mistergroup/shouldianswer/model/y;
    .locals 1

    .line 230
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;->e:Lorg/mistergroup/shouldianswer/model/y;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;->e:Lorg/mistergroup/shouldianswer/model/y;

    return-object v0

    .line 233
    :cond_0
    monitor-enter p0

    .line 234
    :try_start_0
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;->e:Lorg/mistergroup/shouldianswer/model/y;

    if-nez v0, :cond_1

    .line 235
    new-instance v0, Lorg/mistergroup/shouldianswer/model/z;

    invoke-direct {v0, p0}, Lorg/mistergroup/shouldianswer/model/z;-><init>(Landroidx/room/j;)V

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;->e:Lorg/mistergroup/shouldianswer/model/y;

    .line 237
    :cond_1
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;->e:Lorg/mistergroup/shouldianswer/model/y;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 238
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public m()Lorg/mistergroup/shouldianswer/model/p;
    .locals 1

    .line 244
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;->f:Lorg/mistergroup/shouldianswer/model/p;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;->f:Lorg/mistergroup/shouldianswer/model/p;

    return-object v0

    .line 247
    :cond_0
    monitor-enter p0

    .line 248
    :try_start_0
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;->f:Lorg/mistergroup/shouldianswer/model/p;

    if-nez v0, :cond_1

    .line 249
    new-instance v0, Lorg/mistergroup/shouldianswer/model/q;

    invoke-direct {v0, p0}, Lorg/mistergroup/shouldianswer/model/q;-><init>(Landroidx/room/j;)V

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;->f:Lorg/mistergroup/shouldianswer/model/p;

    .line 251
    :cond_1
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;->f:Lorg/mistergroup/shouldianswer/model/p;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 252
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public n()Lorg/mistergroup/shouldianswer/model/e;
    .locals 1

    .line 258
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;->g:Lorg/mistergroup/shouldianswer/model/e;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;->g:Lorg/mistergroup/shouldianswer/model/e;

    return-object v0

    .line 261
    :cond_0
    monitor-enter p0

    .line 262
    :try_start_0
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;->g:Lorg/mistergroup/shouldianswer/model/e;

    if-nez v0, :cond_1

    .line 263
    new-instance v0, Lorg/mistergroup/shouldianswer/model/f;

    invoke-direct {v0, p0}, Lorg/mistergroup/shouldianswer/model/f;-><init>(Landroidx/room/j;)V

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;->g:Lorg/mistergroup/shouldianswer/model/e;

    .line 265
    :cond_1
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;->g:Lorg/mistergroup/shouldianswer/model/e;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 266
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public o()Lorg/mistergroup/shouldianswer/model/u;
    .locals 1

    .line 272
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;->h:Lorg/mistergroup/shouldianswer/model/u;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;->h:Lorg/mistergroup/shouldianswer/model/u;

    return-object v0

    .line 275
    :cond_0
    monitor-enter p0

    .line 276
    :try_start_0
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;->h:Lorg/mistergroup/shouldianswer/model/u;

    if-nez v0, :cond_1

    .line 277
    new-instance v0, Lorg/mistergroup/shouldianswer/model/v;

    invoke-direct {v0, p0}, Lorg/mistergroup/shouldianswer/model/v;-><init>(Landroidx/room/j;)V

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;->h:Lorg/mistergroup/shouldianswer/model/u;

    .line 279
    :cond_1
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/AppDatabase_Impl;->h:Lorg/mistergroup/shouldianswer/model/u;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 280
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
