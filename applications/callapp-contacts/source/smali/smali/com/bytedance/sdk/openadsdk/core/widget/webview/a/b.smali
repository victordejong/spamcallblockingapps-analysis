.class public Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/io/File;

.field private static volatile b:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;


# instance fields
.field private c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private e:Z

.field private f:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/bytedance/sdk/adnet/b/c;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/bytedance/sdk/adnet/b/i;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private i:Ljava/util/concurrent/atomic/AtomicInteger;

.field private j:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 42
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->e:Z

    .line 43
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 44
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->j:Ljava/util/concurrent/atomic/AtomicLong;

    .line 61
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->h()V

    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;
    .locals 2

    .line 50
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->b:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;

    if-nez v0, :cond_1

    .line 51
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;

    monitor-enter v0

    .line 52
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->b:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;

    if-nez v1, :cond_0

    .line 53
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->b:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;

    .line 55
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 57
    :cond_1
    :goto_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->b:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;

    return-object v0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private a(I)V
    .locals 1

    .line 345
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/a/b;->b()Lcom/bytedance/sdk/openadsdk/i/a/b;

    move-result-object v0

    .line 346
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/i/a/b;->b(I)Lcom/bytedance/sdk/openadsdk/i/a/b;

    move-result-object v0

    .line 347
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/f;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/i/a/b;->f(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/i/a/b;

    move-result-object p1

    .line 348
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/a;->a()Lcom/bytedance/sdk/openadsdk/i/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/i/a;->b(Lcom/bytedance/sdk/openadsdk/i/a/b;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/e/l$a;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 362
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 366
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/e/l$a;

    .line 367
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/l$a;->a()Ljava/lang/String;

    move-result-object v0

    .line 368
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 369
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->f()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 370
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 372
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 374
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    nop

    .line 378
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 380
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    nop

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->i()V

    return-void
.end method

.method public static f()Ljava/io/File;
    .locals 3

    .line 393
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->a:Ljava/io/File;

    if-nez v0, :cond_0

    .line 396
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 405
    new-instance v1, Ljava/io/File;

    const-string v2, "tt_tmpl_pkg"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 406
    new-instance v0, Ljava/io/File;

    const-string v2, "template"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 407
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 408
    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->a:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "TemplateManager"

    const-string v2, "getTemplateDir error"

    .line 410
    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 413
    :cond_0
    :goto_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->a:Ljava/io/File;

    return-object v0
.end method

.method private h()V
    .locals 2

    const-string v0, "TemplateManager"

    const-string v1, "init......1"

    .line 70
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b$1;

    const-string v1, "TemplateManager_init"

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;Ljava/lang/String;)V

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/l/e;->a(Lcom/bytedance/sdk/openadsdk/l/g;I)V

    return-void
.end method

.method private i()V
    .locals 8

    const-string v0, "TemplateManager"

    const-string v1, "check template usable1"

    .line 89
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/f;->b()Lcom/bytedance/sdk/openadsdk/core/e/l;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 91
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/l;->e()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 97
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/l;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/openadsdk/core/e/l$a;

    .line 99
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/e/l$a;->a()Ljava/lang/String;

    move-result-object v4

    .line 100
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/utils/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 101
    new-instance v6, Ljava/io/File;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->f()Ljava/io/File;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 103
    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/utils/i;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    .line 104
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/e/l$a;->b()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/e/l$a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_2
    const/4 v2, 0x0

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "check template usable3: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-nez v2, :cond_4

    .line 113
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/f;->d()V

    .line 116
    :cond_4
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v3, "check template usable4: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->e:Z

    return-void

    :cond_5
    :goto_0
    const-string v1, "check template usable2"

    .line 92
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private j()V
    .locals 2

    const-string v0, "TemplateManager"

    const-string/jumbo v1, "\u4efb\u52a1\u6267\u884c\u5b8c\uff0c\uff0c\uff0cclearCurrentExecuteTaskList"

    .line 334
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_1

    .line 340
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    :cond_1
    return-void
.end method

.method private k()V
    .locals 5

    .line 353
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 355
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->j:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x927c0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 356
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->e()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 10

    .line 144
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "TemplateManager"

    if-eqz v0, :cond_0

    const-string p1, "loadTemplate error1"

    .line 146
    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 151
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 154
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    :cond_1
    const-string v0, "loadTemplate error2: "

    .line 156
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p1, "init......5"

    .line 160
    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 164
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->f()Lcom/bytedance/sdk/openadsdk/core/o;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Lcom/bytedance/sdk/openadsdk/core/e/l;

    move-result-object p1

    .line 165
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/f;->b()Lcom/bytedance/sdk/openadsdk/core/e/l;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    .line 168
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/l;->e()Z

    move-result v3

    if-nez v3, :cond_3

    goto/16 :goto_6

    :cond_3
    const-string v3, "init......7"

    .line 174
    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/l;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/f;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 179
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 180
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->j:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    const-string p1, "loadTemplate error4"

    .line 181
    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    const-string v3, "init......8"

    .line 184
    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 189
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_c

    .line 191
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/l;->d()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    goto/16 :goto_2

    .line 195
    :cond_5
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/l;->d()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 197
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/l;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string v0, "loadTemplate update2"

    .line 198
    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 201
    :cond_6
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/l;->d()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/bytedance/sdk/openadsdk/core/e/l$a;

    .line 202
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/l;->d()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 205
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 209
    :cond_8
    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/e/l$a;->a()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/f;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/e/l$a;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 211
    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/e/l$a;->b()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_7

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/e/l$a;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/e/l$a;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 212
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 220
    :cond_9
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/l;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bytedance/sdk/openadsdk/core/e/l$a;

    .line 221
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/l;->d()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 223
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_b
    const-string v0, "loadTemplate update3"

    .line 227
    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 193
    :cond_c
    :goto_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/l;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string v0, "loadTemplate update1"

    .line 194
    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    const-string v0, "init......9"

    .line 229
    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    const-string v6, ".tmp"

    if-eqz v5, :cond_12

    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bytedance/sdk/openadsdk/core/e/l$a;

    .line 235
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-eqz v7, :cond_e

    const-string p1, "isCancel\uff0c\uff0c\uff0c\u4efb\u52a1\u7ed3\u675f\u662f\u3002\u3002\u3002\u3002\u30020"

    .line 236
    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 240
    :cond_e
    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/e/l$a;->a()Ljava/lang/String;

    move-result-object v5

    .line 241
    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/utils/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 242
    new-instance v8, Ljava/io/File;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->f()Ljava/io/File;

    move-result-object v9

    invoke-direct {v8, v9, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 243
    new-instance v7, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    if-eqz v6, :cond_f

    .line 247
    :try_start_2
    invoke-virtual {v8}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 251
    :catchall_0
    :cond_f
    :try_start_3
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    if-eqz v6, :cond_10

    .line 253
    :try_start_4
    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 258
    :catchall_1
    :cond_10
    :try_start_5
    invoke-static {}, Lcom/bytedance/sdk/adnet/b/i;->a()Lcom/bytedance/sdk/adnet/b/i;

    move-result-object v6

    .line 259
    new-instance v7, Lcom/bytedance/sdk/adnet/b/c;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v5, v6}, Lcom/bytedance/sdk/adnet/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/adnet/core/m$a;)V

    .line 260
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/e;->c()Lcom/bytedance/sdk/openadsdk/j/e;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/j/e;->d()Lcom/bytedance/sdk/adnet/core/l;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/bytedance/sdk/adnet/b/c;->build(Lcom/bytedance/sdk/adnet/core/l;)V

    .line 261
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 266
    :try_start_6
    invoke-virtual {v6}, Lcom/bytedance/sdk/adnet/b/i;->b()Lcom/bytedance/sdk/adnet/core/m;

    move-result-object v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_4

    :catchall_2
    const/4 v5, 0x0

    :goto_4
    if-eqz v5, :cond_11

    .line 271
    :try_start_7
    invoke-virtual {v5}, Lcom/bytedance/sdk/adnet/core/m;->a()Z

    move-result v5

    if-nez v5, :cond_d

    .line 272
    :cond_11
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 274
    invoke-direct {p0, v4}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->a(Ljava/util/List;)V

    const-string p1, "loadTemplate error5"

    .line 275
    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->j()V

    return-void

    .line 280
    :cond_12
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->j()V

    .line 283
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catchall_3
    :cond_13
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/openadsdk/core/e/l$a;

    .line 284
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_14

    const-string p1, "isCancel\uff0c\uff0c\uff0c\u4efb\u52a1\u7ed3\u675f\u662f\u3002\u3002\u3002\u3002\u30021"

    .line 285
    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 289
    :cond_14
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/e/l$a;->a()Ljava/lang/String;

    move-result-object v3

    .line 290
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 291
    new-instance v4, Ljava/io/File;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->f()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 292
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 294
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    if-eqz v5, :cond_15

    .line 296
    :try_start_8
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 300
    :catchall_4
    :cond_15
    :try_start_9
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    if-eqz v4, :cond_13

    .line 302
    :try_start_a
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_5

    .line 308
    :cond_16
    :try_start_b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_17

    const-string p1, "isCancel\uff0c\uff0c\uff0c\u4efb\u52a1\u7ed3\u675f\u662f\u3002\u3002\u3002\u3002\u30022"

    .line 309
    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 314
    :cond_17
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/f;->a(Lcom/bytedance/sdk/openadsdk/core/e/l;)V

    .line 315
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/f;->c()V

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "loadTemplate update success: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/l;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->i()V

    .line 322
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 323
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->j:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 326
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->k()V

    return-void

    .line 169
    :cond_18
    :goto_6
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 p1, 0x6d

    .line 170
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->a(I)V

    const-string p1, "loadTemplate error3"

    .line 171
    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    return-void

    :catchall_5
    move-exception p1

    const-string v0, "loadTemplate error: "

    .line 328
    invoke-static {v1, v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public b()V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->h()V

    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 417
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public c()Z
    .locals 1

    .line 127
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->e:Z

    return v0
.end method

.method public d()Lcom/bytedance/sdk/openadsdk/core/e/l;
    .locals 1

    .line 131
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/f;->b()Lcom/bytedance/sdk/openadsdk/core/e/l;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    .line 135
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->a(Z)V

    return-void
.end method

.method public g()V
    .locals 4

    .line 421
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 423
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 424
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/adnet/b/i;

    if-eqz v2, :cond_0

    .line 427
    :try_start_0
    invoke-virtual {v2}, Lcom/bytedance/sdk/adnet/b/i;->isDone()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/bytedance/sdk/adnet/b/i;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 428
    :cond_1
    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/adnet/b/i;->cancel(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    goto :goto_0

    .line 436
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 437
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/adnet/b/c;

    if-eqz v1, :cond_3

    .line 439
    invoke-virtual {v1}, Lcom/bytedance/sdk/adnet/b/c;->cancel()V

    goto :goto_1

    .line 444
    :cond_4
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->j()V

    const/4 v0, 0x0

    .line 445
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->e:Z

    .line 446
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
