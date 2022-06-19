.class public Lcom/google/firebase/installations/c;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-installations@@16.2.1"

# interfaces
.implements Lcom/google/firebase/installations/h;


# static fields
.field private static final k:Ljava/lang/Object;

.field private static final l:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final a:Lcom/google/firebase/b;

.field private final b:Lcom/google/firebase/installations/b/c;

.field private final c:Lcom/google/firebase/installations/a/c;

.field private final d:Lcom/google/firebase/installations/o;

.field private final e:Lcom/google/firebase/installations/a/b;

.field private final f:Lcom/google/firebase/installations/m;

.field private final g:Ljava/lang/Object;

.field private final h:Ljava/util/concurrent/ExecutorService;

.field private final i:Ljava/util/concurrent/ExecutorService;

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/firebase/installations/n;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/firebase/installations/c;->k:Ljava/lang/Object;

    .line 82
    new-instance v0, Lcom/google/firebase/installations/c$1;

    invoke-direct {v0}, Lcom/google/firebase/installations/c$1;-><init>()V

    sput-object v0, Lcom/google/firebase/installations/c;->l:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/b;Lcom/google/firebase/e/h;Lcom/google/firebase/b/c;)V
    .locals 9

    .prologue
    .line 98
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x1e

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sget-object v8, Lcom/google/firebase/installations/c;->l:Ljava/util/concurrent/ThreadFactory;

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    new-instance v3, Lcom/google/firebase/installations/b/c;

    .line 108
    invoke-virtual {p1}, Lcom/google/firebase/b;->a()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0, p2, p3}, Lcom/google/firebase/installations/b/c;-><init>(Landroid/content/Context;Lcom/google/firebase/e/h;Lcom/google/firebase/b/c;)V

    new-instance v4, Lcom/google/firebase/installations/a/c;

    invoke-direct {v4, p1}, Lcom/google/firebase/installations/a/c;-><init>(Lcom/google/firebase/b;)V

    new-instance v5, Lcom/google/firebase/installations/o;

    invoke-direct {v5}, Lcom/google/firebase/installations/o;-><init>()V

    new-instance v6, Lcom/google/firebase/installations/a/b;

    invoke-direct {v6, p1}, Lcom/google/firebase/installations/a/b;-><init>(Lcom/google/firebase/b;)V

    new-instance v7, Lcom/google/firebase/installations/m;

    invoke-direct {v7}, Lcom/google/firebase/installations/m;-><init>()V

    move-object v0, p0

    move-object v2, p1

    .line 98
    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/installations/c;-><init>(Ljava/util/concurrent/ExecutorService;Lcom/google/firebase/b;Lcom/google/firebase/installations/b/c;Lcom/google/firebase/installations/a/c;Lcom/google/firebase/installations/o;Lcom/google/firebase/installations/a/b;Lcom/google/firebase/installations/m;)V

    .line 113
    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/ExecutorService;Lcom/google/firebase/b;Lcom/google/firebase/installations/b/c;Lcom/google/firebase/installations/a/c;Lcom/google/firebase/installations/o;Lcom/google/firebase/installations/a/b;Lcom/google/firebase/installations/m;)V
    .locals 11

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/google/firebase/installations/c;->g:Ljava/lang/Object;

    .line 71
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/firebase/installations/c;->j:Ljava/util/List;

    .line 123
    iput-object p2, p0, Lcom/google/firebase/installations/c;->a:Lcom/google/firebase/b;

    .line 124
    iput-object p3, p0, Lcom/google/firebase/installations/c;->b:Lcom/google/firebase/installations/b/c;

    .line 125
    iput-object p4, p0, Lcom/google/firebase/installations/c;->c:Lcom/google/firebase/installations/a/c;

    .line 126
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/google/firebase/installations/c;->d:Lcom/google/firebase/installations/o;

    .line 127
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/google/firebase/installations/c;->e:Lcom/google/firebase/installations/a/b;

    .line 128
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/google/firebase/installations/c;->f:Lcom/google/firebase/installations/m;

    .line 129
    iput-object p1, p0, Lcom/google/firebase/installations/c;->h:Ljava/util/concurrent/ExecutorService;

    .line 130
    new-instance v3, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/16 v6, 0x1e

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v9, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v9}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sget-object v10, Lcom/google/firebase/installations/c;->l:Ljava/util/concurrent/ThreadFactory;

    invoke-direct/range {v3 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v3, p0, Lcom/google/firebase/installations/c;->i:Ljava/util/concurrent/ExecutorService;

    .line 138
    return-void
.end method

.method private a(Lcom/google/firebase/installations/a/d;)V
    .locals 3

    .prologue
    .line 265
    iget-object v1, p0, Lcom/google/firebase/installations/c;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 266
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/installations/c;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 267
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/installations/n;

    .line 269
    invoke-interface {v0, p1}, Lcom/google/firebase/installations/n;->a(Lcom/google/firebase/installations/a/d;)Z

    move-result v0

    .line 270
    if-eqz v0, :cond_0

    .line 271
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 274
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 275
    return-void
.end method

.method private a(Lcom/google/firebase/installations/a/d;Ljava/lang/Exception;)V
    .locals 3

    .prologue
    .line 278
    iget-object v1, p0, Lcom/google/firebase/installations/c;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 279
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/installations/c;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 280
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 281
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/installations/n;

    .line 282
    invoke-interface {v0, p1, p2}, Lcom/google/firebase/installations/n;->a(Lcom/google/firebase/installations/a/d;Ljava/lang/Exception;)Z

    move-result v0

    .line 283
    if-eqz v0, :cond_0

    .line 284
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 287
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 288
    return-void
.end method

.method static synthetic a(Lcom/google/firebase/installations/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/installations/c;->h()V

    return-void
.end method

.method static synthetic a(Lcom/google/firebase/installations/c;Z)V
    .locals 0

    .prologue
    .line 323
    invoke-direct {p0, p1}, Lcom/google/firebase/installations/c;->c(Z)V

    return-void
.end method

.method private b(Lcom/google/firebase/installations/a/d;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/google/firebase/installations/c;->a:Lcom/google/firebase/b;

    invoke-virtual {v0}, Lcom/google/firebase/b;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "CHIME_ANDROID_SDK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/installations/c;->a:Lcom/google/firebase/b;

    invoke-virtual {v0}, Lcom/google/firebase/b;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 408
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/installations/a/d;->m()Z

    move-result v0

    if-nez v0, :cond_3

    .line 409
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/installations/c;->f:Lcom/google/firebase/installations/m;

    invoke-virtual {v0}, Lcom/google/firebase/installations/m;->a()Ljava/lang/String;

    move-result-object v0

    .line 416
    :cond_2
    :goto_0
    return-object v0

    .line 412
    :cond_3
    iget-object v0, p0, Lcom/google/firebase/installations/c;->e:Lcom/google/firebase/installations/a/b;

    invoke-virtual {v0}, Lcom/google/firebase/installations/a/b;->b()Ljava/lang/String;

    move-result-object v0

    .line 413
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 414
    iget-object v0, p0, Lcom/google/firebase/installations/c;->f:Lcom/google/firebase/installations/m;

    invoke-virtual {v0}, Lcom/google/firebase/installations/m;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/firebase/installations/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/installations/c;->j()V

    return-void
.end method

.method private final b(Z)V
    .locals 2

    .prologue
    .line 312
    invoke-direct {p0}, Lcom/google/firebase/installations/c;->k()Lcom/google/firebase/installations/a/d;

    move-result-object v0

    .line 316
    if-eqz p1, :cond_0

    .line 317
    invoke-virtual {v0}, Lcom/google/firebase/installations/a/d;->o()Lcom/google/firebase/installations/a/d;

    move-result-object v0

    .line 320
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/installations/c;->a(Lcom/google/firebase/installations/a/d;)V

    .line 323
    iget-object v0, p0, Lcom/google/firebase/installations/c;->i:Ljava/util/concurrent/ExecutorService;

    invoke-static {p0, p1}, Lcom/google/firebase/installations/g;->a(Lcom/google/firebase/installations/c;Z)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 324
    return-void
.end method

.method private c(Lcom/google/firebase/installations/a/d;)Lcom/google/firebase/installations/a/d;
    .locals 8

    .prologue
    .line 424
    const/4 v5, 0x0

    .line 426
    invoke-virtual {p1}, Lcom/google/firebase/installations/a/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 429
    iget-object v0, p0, Lcom/google/firebase/installations/c;->e:Lcom/google/firebase/installations/a/b;

    invoke-virtual {v0}, Lcom/google/firebase/installations/a/b;->a()Ljava/lang/String;

    move-result-object v5

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/installations/c;->b:Lcom/google/firebase/installations/b/c;

    .line 434
    invoke-virtual {p0}, Lcom/google/firebase/installations/c;->c()Ljava/lang/String;

    move-result-object v1

    .line 435
    invoke-virtual {p1}, Lcom/google/firebase/installations/a/d;->a()Ljava/lang/String;

    move-result-object v2

    .line 436
    invoke-virtual {p0}, Lcom/google/firebase/installations/c;->a()Ljava/lang/String;

    move-result-object v3

    .line 437
    invoke-virtual {p0}, Lcom/google/firebase/installations/c;->b()Ljava/lang/String;

    move-result-object v4

    .line 433
    invoke-virtual/range {v0 .. v5}, Lcom/google/firebase/installations/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/installations/b/d;

    move-result-object v0

    .line 440
    sget-object v1, Lcom/google/firebase/installations/c$2;->a:[I

    invoke-virtual {v0}, Lcom/google/firebase/installations/b/d;->e()Lcom/google/firebase/installations/b/d$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/installations/b/d$b;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 451
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 443
    :pswitch_0
    invoke-virtual {v0}, Lcom/google/firebase/installations/b/d;->b()Ljava/lang/String;

    move-result-object v1

    .line 444
    invoke-virtual {v0}, Lcom/google/firebase/installations/b/d;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/installations/c;->d:Lcom/google/firebase/installations/o;

    .line 445
    invoke-virtual {v3}, Lcom/google/firebase/installations/o;->a()J

    move-result-wide v3

    .line 446
    invoke-virtual {v0}, Lcom/google/firebase/installations/b/d;->d()Lcom/google/firebase/installations/b/e;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/firebase/installations/b/e;->a()Ljava/lang/String;

    move-result-object v5

    .line 447
    invoke-virtual {v0}, Lcom/google/firebase/installations/b/d;->d()Lcom/google/firebase/installations/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/installations/b/e;->b()J

    move-result-wide v6

    move-object v0, p1

    .line 442
    invoke-virtual/range {v0 .. v7}, Lcom/google/firebase/installations/a/d;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;J)Lcom/google/firebase/installations/a/d;

    move-result-object v0

    .line 449
    :goto_0
    return-object v0

    :pswitch_1
    const-string/jumbo v0, "BAD CONFIG"

    invoke-virtual {p1, v0}, Lcom/google/firebase/installations/a/d;->b(Ljava/lang/String;)Lcom/google/firebase/installations/a/d;

    move-result-object v0

    goto :goto_0

    .line 440
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic c(Lcom/google/firebase/installations/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/installations/c;->i()V

    return-void
.end method

.method private c(Z)V
    .locals 3

    .prologue
    .line 327
    invoke-direct {p0}, Lcom/google/firebase/installations/c;->k()Lcom/google/firebase/installations/a/d;

    move-result-object v1

    .line 332
    :try_start_0
    invoke-virtual {v1}, Lcom/google/firebase/installations/a/d;->j()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/google/firebase/installations/a/d;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 333
    :cond_0
    invoke-direct {p0, v1}, Lcom/google/firebase/installations/c;->c(Lcom/google/firebase/installations/a/d;)Lcom/google/firebase/installations/a/d;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 346
    :goto_0
    iget-object v1, p0, Lcom/google/firebase/installations/c;->c:Lcom/google/firebase/installations/a/c;

    invoke-virtual {v1, v0}, Lcom/google/firebase/installations/a/c;->a(Lcom/google/firebase/installations/a/d;)Lcom/google/firebase/installations/a/d;

    .line 349
    invoke-virtual {v0}, Lcom/google/firebase/installations/a/d;->j()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 350
    new-instance v1, Lcom/google/firebase/installations/FirebaseInstallationsException;

    sget-object v2, Lcom/google/firebase/installations/FirebaseInstallationsException$a;->a:Lcom/google/firebase/installations/FirebaseInstallationsException$a;

    invoke-direct {v1, v2}, Lcom/google/firebase/installations/FirebaseInstallationsException;-><init>(Lcom/google/firebase/installations/FirebaseInstallationsException$a;)V

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/installations/c;->a(Lcom/google/firebase/installations/a/d;Ljava/lang/Exception;)V

    .line 358
    :cond_1
    :goto_1
    return-void

    .line 334
    :cond_2
    if-nez p1, :cond_3

    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/installations/c;->d:Lcom/google/firebase/installations/o;

    invoke-virtual {v0, v1}, Lcom/google/firebase/installations/o;->a(Lcom/google/firebase/installations/a/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 335
    :cond_3
    invoke-direct {p0, v1}, Lcom/google/firebase/installations/c;->d(Lcom/google/firebase/installations/a/d;)Lcom/google/firebase/installations/a/d;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 340
    :catch_0
    move-exception v0

    .line 341
    invoke-direct {p0, v1, v0}, Lcom/google/firebase/installations/c;->a(Lcom/google/firebase/installations/a/d;Ljava/lang/Exception;)V

    goto :goto_1

    .line 351
    :cond_4
    invoke-virtual {v0}, Lcom/google/firebase/installations/a/d;->l()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 354
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "cleared fid due to auth error"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/installations/c;->a(Lcom/google/firebase/installations/a/d;Ljava/lang/Exception;)V

    goto :goto_1

    .line 356
    :cond_5
    invoke-direct {p0, v0}, Lcom/google/firebase/installations/c;->a(Lcom/google/firebase/installations/a/d;)V

    goto :goto_1
.end method

.method private d(Lcom/google/firebase/installations/a/d;)Lcom/google/firebase/installations/a/d;
    .locals 6

    .prologue
    .line 463
    iget-object v0, p0, Lcom/google/firebase/installations/c;->b:Lcom/google/firebase/installations/b/c;

    .line 465
    invoke-virtual {p0}, Lcom/google/firebase/installations/c;->c()Ljava/lang/String;

    move-result-object v1

    .line 466
    invoke-virtual {p1}, Lcom/google/firebase/installations/a/d;->a()Ljava/lang/String;

    move-result-object v2

    .line 467
    invoke-virtual {p0}, Lcom/google/firebase/installations/c;->a()Ljava/lang/String;

    move-result-object v3

    .line 468
    invoke-virtual {p1}, Lcom/google/firebase/installations/a/d;->d()Ljava/lang/String;

    move-result-object v4

    .line 464
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/firebase/installations/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/installations/b/e;

    move-result-object v0

    .line 470
    sget-object v1, Lcom/google/firebase/installations/c$2;->b:[I

    invoke-virtual {v0}, Lcom/google/firebase/installations/b/e;->c()Lcom/google/firebase/installations/b/e$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/installations/b/e$b;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 483
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 473
    :pswitch_0
    invoke-virtual {v0}, Lcom/google/firebase/installations/b/e;->a()Ljava/lang/String;

    move-result-object v1

    .line 474
    invoke-virtual {v0}, Lcom/google/firebase/installations/b/e;->b()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/firebase/installations/c;->d:Lcom/google/firebase/installations/o;

    .line 475
    invoke-virtual {v0}, Lcom/google/firebase/installations/o;->a()J

    move-result-wide v4

    move-object v0, p1

    .line 472
    invoke-virtual/range {v0 .. v5}, Lcom/google/firebase/installations/a/d;->a(Ljava/lang/String;JJ)Lcom/google/firebase/installations/a/d;

    move-result-object v0

    .line 481
    :goto_0
    return-object v0

    .line 477
    :pswitch_1
    const-string/jumbo v0, "BAD CONFIG"

    invoke-virtual {p1, v0}, Lcom/google/firebase/installations/a/d;->b(Ljava/lang/String;)Lcom/google/firebase/installations/a/d;

    move-result-object v0

    goto :goto_0

    .line 481
    :pswitch_2
    invoke-virtual {p1}, Lcom/google/firebase/installations/a/d;->n()Lcom/google/firebase/installations/a/d;

    move-result-object v0

    goto :goto_0

    .line 470
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private e()V
    .locals 1

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/google/firebase/installations/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 147
    invoke-virtual {p0}, Lcom/google/firebase/installations/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 148
    invoke-virtual {p0}, Lcom/google/firebase/installations/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 149
    return-void
.end method

.method private f()Lcom/google/android/gms/tasks/g;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/g",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 246
    new-instance v0, Lcom/google/android/gms/tasks/h;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/h;-><init>()V

    .line 247
    new-instance v1, Lcom/google/firebase/installations/k;

    invoke-direct {v1, v0}, Lcom/google/firebase/installations/k;-><init>(Lcom/google/android/gms/tasks/h;)V

    .line 248
    iget-object v2, p0, Lcom/google/firebase/installations/c;->g:Ljava/lang/Object;

    monitor-enter v2

    .line 249
    :try_start_0
    iget-object v3, p0, Lcom/google/firebase/installations/c;->j:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/h;->a()Lcom/google/android/gms/tasks/g;

    move-result-object v0

    return-object v0

    .line 250
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private g()Lcom/google/android/gms/tasks/g;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/g",
            "<",
            "Lcom/google/firebase/installations/l;",
            ">;"
        }
    .end annotation

    .prologue
    .line 255
    new-instance v0, Lcom/google/android/gms/tasks/h;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/h;-><init>()V

    .line 257
    new-instance v1, Lcom/google/firebase/installations/j;

    iget-object v2, p0, Lcom/google/firebase/installations/c;->d:Lcom/google/firebase/installations/o;

    invoke-direct {v1, v2, v0}, Lcom/google/firebase/installations/j;-><init>(Lcom/google/firebase/installations/o;Lcom/google/android/gms/tasks/h;)V

    .line 258
    iget-object v2, p0, Lcom/google/firebase/installations/c;->g:Ljava/lang/Object;

    monitor-enter v2

    .line 259
    :try_start_0
    iget-object v3, p0, Lcom/google/firebase/installations/c;->j:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/h;->a()Lcom/google/android/gms/tasks/g;

    move-result-object v0

    return-object v0

    .line 260
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private final h()V
    .locals 1

    .prologue
    .line 291
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/firebase/installations/c;->b(Z)V

    .line 292
    return-void
.end method

.method private final i()V
    .locals 1

    .prologue
    .line 295
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/firebase/installations/c;->b(Z)V

    .line 296
    return-void
.end method

.method private final j()V
    .locals 1

    .prologue
    .line 299
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/firebase/installations/c;->b(Z)V

    .line 300
    return-void
.end method

.method private k()Lcom/google/firebase/installations/a/d;
    .locals 5

    .prologue
    .line 374
    sget-object v1, Lcom/google/firebase/installations/c;->k:Ljava/lang/Object;

    monitor-enter v1

    .line 375
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/installations/c;->a:Lcom/google/firebase/b;

    .line 376
    invoke-virtual {v0}, Lcom/google/firebase/b;->a()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "generatefid.lock"

    invoke-static {v0, v2}, Lcom/google/firebase/installations/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/installations/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 378
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/installations/c;->c:Lcom/google/firebase/installations/a/c;

    .line 379
    invoke-virtual {v0}, Lcom/google/firebase/installations/a/c;->a()Lcom/google/firebase/installations/a/d;

    move-result-object v0

    .line 381
    invoke-virtual {v0}, Lcom/google/firebase/installations/a/d;->l()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 387
    invoke-direct {p0, v0}, Lcom/google/firebase/installations/c;->b(Lcom/google/firebase/installations/a/d;)Ljava/lang/String;

    move-result-object v3

    .line 388
    iget-object v4, p0, Lcom/google/firebase/installations/c;->c:Lcom/google/firebase/installations/a/c;

    .line 390
    invoke-virtual {v0, v3}, Lcom/google/firebase/installations/a/d;->a(Ljava/lang/String;)Lcom/google/firebase/installations/a/d;

    move-result-object v0

    .line 389
    invoke-virtual {v4, v0}, Lcom/google/firebase/installations/a/c;->a(Lcom/google/firebase/installations/a/d;)Lcom/google/firebase/installations/a/d;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 398
    :cond_0
    if-eqz v2, :cond_1

    .line 399
    :try_start_2
    invoke-virtual {v2}, Lcom/google/firebase/installations/b;->a()V

    :cond_1
    monitor-exit v1

    .line 392
    return-object v0

    .line 398
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_2

    .line 399
    invoke-virtual {v2}, Lcom/google/firebase/installations/b;->a()V

    :cond_2
    throw v0

    .line 402
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method


# virtual methods
.method public a(Z)Lcom/google/android/gms/tasks/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/android/gms/tasks/g",
            "<",
            "Lcom/google/firebase/installations/l;",
            ">;"
        }
    .end annotation

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/google/firebase/installations/c;->e()V

    .line 225
    invoke-direct {p0}, Lcom/google/firebase/installations/c;->g()Lcom/google/android/gms/tasks/g;

    move-result-object v0

    .line 226
    if-eqz p1, :cond_0

    .line 227
    iget-object v1, p0, Lcom/google/firebase/installations/c;->h:Ljava/util/concurrent/ExecutorService;

    invoke-static {p0}, Lcom/google/firebase/installations/e;->a(Lcom/google/firebase/installations/c;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 231
    :goto_0
    return-object v0

    .line 229
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/installations/c;->h:Ljava/util/concurrent/ExecutorService;

    invoke-static {p0}, Lcom/google/firebase/installations/f;->a(Lcom/google/firebase/installations/c;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/firebase/installations/c;->a:Lcom/google/firebase/b;

    invoke-virtual {v0}, Lcom/google/firebase/b;->c()Lcom/google/firebase/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/d;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/google/firebase/installations/c;->a:Lcom/google/firebase/b;

    invoke-virtual {v0}, Lcom/google/firebase/b;->c()Lcom/google/firebase/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/d;->c()Ljava/lang/String;

    move-result-object v0

    .line 154
    :goto_0
    return-object v0

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/installations/c;->a:Lcom/google/firebase/b;

    invoke-virtual {v0}, Lcom/google/firebase/b;->c()Lcom/google/firebase/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/d;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/firebase/installations/c;->a:Lcom/google/firebase/b;

    invoke-virtual {v0}, Lcom/google/firebase/b;->c()Lcom/google/firebase/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/d;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/firebase/installations/c;->a:Lcom/google/firebase/b;

    invoke-virtual {v0}, Lcom/google/firebase/b;->c()Lcom/google/firebase/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/d;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/google/android/gms/tasks/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/g",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    invoke-direct {p0}, Lcom/google/firebase/installations/c;->e()V

    .line 208
    invoke-direct {p0}, Lcom/google/firebase/installations/c;->f()Lcom/google/android/gms/tasks/g;

    move-result-object v0

    .line 209
    iget-object v1, p0, Lcom/google/firebase/installations/c;->h:Ljava/util/concurrent/ExecutorService;

    invoke-static {p0}, Lcom/google/firebase/installations/d;->a(Lcom/google/firebase/installations/c;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 210
    return-object v0
.end method
