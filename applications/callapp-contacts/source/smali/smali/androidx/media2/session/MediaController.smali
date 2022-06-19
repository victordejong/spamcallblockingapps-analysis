.class public Landroidx/media2/session/MediaController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/session/MediaController$PlaybackInfo;,
        Landroidx/media2/session/MediaController$a;,
        Landroidx/media2/session/MediaController$c;,
        Landroidx/media2/session/MediaController$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/core/e/b<",
            "Landroidx/media2/session/MediaController$a;",
            "Ljava/util/concurrent/Executor;",
            ">;>;"
        }
    .end annotation
.end field

.field final b:Ljava/lang/Object;

.field c:Landroidx/media2/session/MediaController$c;

.field d:Z

.field final e:Landroidx/media2/session/MediaController$a;

.field final f:Ljava/util/concurrent/Executor;

.field g:Ljava/lang/Long;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroid/os/Bundle;Ljava/util/concurrent/Executor;Landroidx/media2/session/MediaController$a;)V
    .locals 1

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media2/session/MediaController;->b:Ljava/lang/Object;

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media2/session/MediaController;->a:Ljava/util/List;

    const-string v0, "context shouldn\'t be null"

    .line 219
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "token shouldn\'t be null"

    .line 222
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 224
    iput-object p5, p0, Landroidx/media2/session/MediaController;->e:Landroidx/media2/session/MediaController$a;

    .line 225
    iput-object p4, p0, Landroidx/media2/session/MediaController;->f:Ljava/util/concurrent/Executor;

    .line 226
    new-instance p4, Landroidx/media2/session/-$$Lambda$MediaController$v61gmz4WmEkdr6ZHTFodXPcO2L8;

    invoke-direct {p4, p0, p1, p3}, Landroidx/media2/session/-$$Lambda$MediaController$v61gmz4WmEkdr6ZHTFodXPcO2L8;-><init>(Landroidx/media2/session/MediaController;Landroid/content/Context;Landroid/os/Bundle;)V

    invoke-static {p1, p2, p4}, Landroidx/media2/session/SessionToken;->a(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroidx/media2/session/SessionToken$a;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroidx/media2/session/SessionToken;Landroid/os/Bundle;Ljava/util/concurrent/Executor;Landroidx/media2/session/MediaController$a;)V
    .locals 2

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media2/session/MediaController;->b:Ljava/lang/Object;

    .line 176
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/media2/session/MediaController;->a:Ljava/util/List;

    const-string v1, "context shouldn\'t be null"

    .line 195
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "token shouldn\'t be null"

    .line 198
    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 200
    iput-object p5, p0, Landroidx/media2/session/MediaController;->e:Landroidx/media2/session/MediaController$a;

    .line 201
    iput-object p4, p0, Landroidx/media2/session/MediaController;->f:Ljava/util/concurrent/Executor;

    .line 202
    monitor-enter v0

    .line 203
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/media2/session/MediaController;->a(Landroid/content/Context;Landroidx/media2/session/SessionToken;Landroid/os/Bundle;)Landroidx/media2/session/MediaController$c;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/session/MediaController;->c:Landroidx/media2/session/MediaController$c;

    .line 204
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private synthetic a(Landroid/content/Context;Landroid/os/Bundle;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroidx/media2/session/SessionToken;)V
    .locals 1

    .line 228
    iget-object p3, p0, Landroidx/media2/session/MediaController;->b:Ljava/lang/Object;

    monitor-enter p3

    .line 229
    :try_start_0
    iget-boolean v0, p0, Landroidx/media2/session/MediaController;->d:Z

    if-nez v0, :cond_0

    .line 231
    invoke-virtual {p0, p1, p4, p2}, Landroidx/media2/session/MediaController;->a(Landroid/content/Context;Landroidx/media2/session/SessionToken;Landroid/os/Bundle;)Landroidx/media2/session/MediaController$c;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/session/MediaController;->c:Landroidx/media2/session/MediaController$c;

    .line 233
    :cond_0
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 235
    new-instance p1, Landroidx/media2/session/-$$Lambda$MediaController$pmI3LxPWPMnxlQTUrm7yyqt9-Z0;

    invoke-direct {p1, p0}, Landroidx/media2/session/-$$Lambda$MediaController$pmI3LxPWPMnxlQTUrm7yyqt9-Z0;-><init>(Landroidx/media2/session/MediaController;)V

    invoke-virtual {p0, p1}, Landroidx/media2/session/MediaController;->b(Landroidx/media2/session/MediaController$b;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 233
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private synthetic b(Landroidx/media2/session/MediaController$a;)V
    .locals 0

    return-void
.end method

.method public static synthetic lambda$pmI3LxPWPMnxlQTUrm7yyqt9-Z0(Landroidx/media2/session/MediaController;Landroidx/media2/session/MediaController$a;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media2/session/MediaController;->b(Landroidx/media2/session/MediaController$a;)V

    return-void
.end method

.method public static synthetic lambda$v61gmz4WmEkdr6ZHTFodXPcO2L8(Landroidx/media2/session/MediaController;Landroid/content/Context;Landroid/os/Bundle;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroidx/media2/session/SessionToken;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media2/session/MediaController;->a(Landroid/content/Context;Landroid/os/Bundle;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroidx/media2/session/SessionToken;)V

    return-void
.end method

.method public static n()Lcom/google/common/util/concurrent/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    const/16 v0, -0x64

    .line 1407
    invoke-static {v0}, Landroidx/media2/session/SessionResult;->a(I)Lcom/google/common/util/concurrent/a;

    move-result-object v0

    return-object v0
.end method

.method private o()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/core/e/b<",
            "Landroidx/media2/session/MediaController$a;",
            "Ljava/util/concurrent/Executor;",
            ">;>;"
        }
    .end annotation

    .line 1386
    iget-object v0, p0, Landroidx/media2/session/MediaController;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 1387
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/media2/session/MediaController;->a:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1388
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final a(I)Landroidx/media2/common/SessionPlayer$TrackInfo;
    .locals 1

    .line 1303
    invoke-virtual {p0}, Landroidx/media2/session/MediaController;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/media2/session/MediaController;->a()Landroidx/media2/session/MediaController$c;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/media2/session/MediaController$c;->a(I)Landroidx/media2/common/SessionPlayer$TrackInfo;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()Landroidx/media2/session/MediaController$c;
    .locals 2

    .line 250
    iget-object v0, p0, Landroidx/media2/session/MediaController;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 251
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/MediaController;->c:Landroidx/media2/session/MediaController$c;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 252
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method a(Landroid/content/Context;Landroidx/media2/session/SessionToken;Landroid/os/Bundle;)Landroidx/media2/session/MediaController$c;
    .locals 1

    .line 242
    invoke-virtual {p2}, Landroidx/media2/session/SessionToken;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    new-instance p3, Landroidx/media2/session/i;

    invoke-direct {p3, p1, p0, p2}, Landroidx/media2/session/i;-><init>(Landroid/content/Context;Landroidx/media2/session/MediaController;Landroidx/media2/session/SessionToken;)V

    return-object p3

    .line 245
    :cond_0
    new-instance v0, Landroidx/media2/session/h;

    invoke-direct {v0, p1, p0, p2, p3}, Landroidx/media2/session/h;-><init>(Landroid/content/Context;Landroidx/media2/session/MediaController;Landroidx/media2/session/SessionToken;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public final a(J)Lcom/google/common/util/concurrent/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 468
    invoke-virtual {p0}, Landroidx/media2/session/MediaController;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    invoke-virtual {p0}, Landroidx/media2/session/MediaController;->a()Landroidx/media2/session/MediaController$c;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroidx/media2/session/MediaController$c;->a(J)Lcom/google/common/util/concurrent/a;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 p1, -0x64

    .line 4407
    invoke-static {p1}, Landroidx/media2/session/SessionResult;->a(I)Lcom/google/common/util/concurrent/a;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroidx/media2/common/SessionPlayer$TrackInfo;)Lcom/google/common/util/concurrent/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ")",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    const-string v0, "TrackInfo shouldn\'t be null"

    .line 1250
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1252
    invoke-virtual {p0}, Landroidx/media2/session/MediaController;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/media2/session/MediaController;->a()Landroidx/media2/session/MediaController$c;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/media2/session/MediaController$c;->a(Landroidx/media2/common/SessionPlayer$TrackInfo;)Lcom/google/common/util/concurrent/a;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 p1, -0x64

    .line 5407
    invoke-static {p1}, Landroidx/media2/session/SessionResult;->a(I)Lcom/google/common/util/concurrent/a;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroidx/media2/session/MediaController$a;)V
    .locals 5

    const-string v0, "callback shouldn\'t be null"

    .line 1364
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 1367
    iget-object v1, p0, Landroidx/media2/session/MediaController;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 1368
    :try_start_0
    iget-object v2, p0, Landroidx/media2/session/MediaController;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_1

    .line 1369
    iget-object v4, p0, Landroidx/media2/session/MediaController;->a:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/core/e/b;

    iget-object v4, v4, Landroidx/core/e/b;->a:Ljava/lang/Object;

    if-ne v4, p1, :cond_0

    .line 1371
    iget-object p1, p0, Landroidx/media2/session/MediaController;->a:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1375
    :cond_1
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    const-string p1, "MediaController"

    const-string v0, "unregisterExtraCallback: no such callback found"

    .line 1377
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 1375
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method final a(Landroidx/media2/session/MediaController$b;)V
    .locals 2

    .line 1413
    iget-object v0, p0, Landroidx/media2/session/MediaController;->e:Landroidx/media2/session/MediaController$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media2/session/MediaController;->f:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    .line 1414
    new-instance v1, Landroidx/media2/session/MediaController$1;

    invoke-direct {v1, p0, p1}, Landroidx/media2/session/MediaController$1;-><init>(Landroidx/media2/session/MediaController;Landroidx/media2/session/MediaController$b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/util/concurrent/Executor;Landroidx/media2/session/MediaController$a;)V
    .locals 4

    const-string v0, "executor shouldn\'t be null"

    .line 1329
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "callback shouldn\'t be null"

    .line 1332
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 1335
    iget-object v1, p0, Landroidx/media2/session/MediaController;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 1336
    :try_start_0
    iget-object v2, p0, Landroidx/media2/session/MediaController;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/e/b;

    .line 1337
    iget-object v3, v3, Landroidx/core/e/b;->a:Ljava/lang/Object;

    if-ne v3, p2, :cond_0

    const/4 v0, 0x1

    :cond_1
    if-nez v0, :cond_2

    .line 1343
    iget-object v2, p0, Landroidx/media2/session/MediaController;->a:Ljava/util/List;

    new-instance v3, Landroidx/core/e/b;

    invoke-direct {v3, p2, p1}, Landroidx/core/e/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1345
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    const-string p1, "MediaController"

    const-string p2, "registerExtraCallback: the callback already exists"

    .line 1347
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 1345
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final b(Landroidx/media2/session/MediaController$b;)V
    .locals 4

    .line 1427
    invoke-virtual {p0, p1}, Landroidx/media2/session/MediaController;->a(Landroidx/media2/session/MediaController$b;)V

    .line 1429
    invoke-direct {p0}, Landroidx/media2/session/MediaController;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/e/b;

    .line 1430
    iget-object v2, v1, Landroidx/core/e/b;->a:Ljava/lang/Object;

    check-cast v2, Landroidx/media2/session/MediaController$a;

    .line 1431
    iget-object v1, v1, Landroidx/core/e/b;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/Executor;

    const-string v3, "MediaController"

    if-nez v2, :cond_0

    const-string v1, "notifyAllControllerCallbacks: mExtraControllerCallbacks contains a null ControllerCallback! Ignoring."

    .line 1433
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    const-string v1, "notifyAllControllerCallbacks: mExtraControllerCallbacks contains a null Executor! Ignoring."

    .line 1438
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1442
    :cond_1
    new-instance v3, Landroidx/media2/session/MediaController$2;

    invoke-direct {v3, p0, p1, v2}, Landroidx/media2/session/MediaController$2;-><init>(Landroidx/media2/session/MediaController;Landroidx/media2/session/MediaController$b;Landroidx/media2/session/MediaController$a;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final b()Z
    .locals 1

    .line 297
    invoke-virtual {p0}, Landroidx/media2/session/MediaController;->a()Landroidx/media2/session/MediaController$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 298
    invoke-interface {v0}, Landroidx/media2/session/MediaController$c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Lcom/google/common/util/concurrent/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 319
    invoke-virtual {p0}, Landroidx/media2/session/MediaController;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    invoke-virtual {p0}, Landroidx/media2/session/MediaController;->a()Landroidx/media2/session/MediaController$c;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media2/session/MediaController$c;->b()Lcom/google/common/util/concurrent/a;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v0, -0x64

    .line 2407
    invoke-static {v0}, Landroidx/media2/session/SessionResult;->a(I)Lcom/google/common/util/concurrent/a;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 2

    .line 263
    :try_start_0
    iget-object v0, p0, Landroidx/media2/session/MediaController;->b:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :try_start_1
    iget-boolean v1, p0, Landroidx/media2/session/MediaController;->d:Z

    if-eqz v1, :cond_0

    .line 265
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 267
    iput-boolean v1, p0, Landroidx/media2/session/MediaController;->d:Z

    .line 268
    iget-object v1, p0, Landroidx/media2/session/MediaController;->c:Landroidx/media2/session/MediaController$c;

    .line 269
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 271
    :try_start_2
    invoke-interface {v1}, Landroidx/media2/session/MediaController$c;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 269
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    return-void
.end method

.method public final d()Lcom/google/common/util/concurrent/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 339
    invoke-virtual {p0}, Landroidx/media2/session/MediaController;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {p0}, Landroidx/media2/session/MediaController;->a()Landroidx/media2/session/MediaController$c;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media2/session/MediaController$c;->c()Lcom/google/common/util/concurrent/a;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v0, -0x64

    .line 3407
    invoke-static {v0}, Landroidx/media2/session/SessionResult;->a(I)Lcom/google/common/util/concurrent/a;

    move-result-object v0

    return-object v0
.end method

.method public final e()I
    .locals 1

    .line 553
    invoke-virtual {p0}, Landroidx/media2/session/MediaController;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/media2/session/MediaController;->a()Landroidx/media2/session/MediaController$c;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media2/session/MediaController$c;->d()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final f()J
    .locals 2

    .line 566
    invoke-virtual {p0}, Landroidx/media2/session/MediaController;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/media2/session/MediaController;->a()Landroidx/media2/session/MediaController$c;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media2/session/MediaController$c;->e()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public final g()J
    .locals 2

    .line 580
    invoke-virtual {p0}, Landroidx/media2/session/MediaController;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/media2/session/MediaController;->a()Landroidx/media2/session/MediaController$c;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media2/session/MediaController$c;->f()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public final h()J
    .locals 2

    .line 649
    invoke-virtual {p0}, Landroidx/media2/session/MediaController;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/media2/session/MediaController;->a()Landroidx/media2/session/MediaController$c;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media2/session/MediaController$c;->h()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public final i()Landroidx/media2/common/MediaItem;
    .locals 1

    .line 991
    invoke-virtual {p0}, Landroidx/media2/session/MediaController;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/media2/session/MediaController;->a()Landroidx/media2/session/MediaController$c;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media2/session/MediaController$c;->i()Landroidx/media2/common/MediaItem;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final j()I
    .locals 1

    .line 1021
    invoke-virtual {p0}, Landroidx/media2/session/MediaController;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/media2/session/MediaController;->a()Landroidx/media2/session/MediaController$c;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media2/session/MediaController$c;->j()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public final k()I
    .locals 1

    .line 1038
    invoke-virtual {p0}, Landroidx/media2/session/MediaController;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/media2/session/MediaController;->a()Landroidx/media2/session/MediaController$c;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media2/session/MediaController$c;->k()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public final l()Landroidx/media2/common/VideoSize;
    .locals 2

    .line 1184
    invoke-virtual {p0}, Landroidx/media2/session/MediaController;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/media2/session/MediaController;->a()Landroidx/media2/session/MediaController$c;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media2/session/MediaController$c;->n()Landroidx/media2/common/VideoSize;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroidx/media2/common/VideoSize;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroidx/media2/common/VideoSize;-><init>(II)V

    return-object v0
.end method

.method public final m()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ">;"
        }
    .end annotation

    .line 1224
    invoke-virtual {p0}, Landroidx/media2/session/MediaController;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/media2/session/MediaController;->a()Landroidx/media2/session/MediaController$c;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media2/session/MediaController$c;->o()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
