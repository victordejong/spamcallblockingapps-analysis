.class public final Lcom/google/firebase/installations/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/installations/h;


# static fields
.field private static final m:Ljava/lang/Object;

.field private static final n:Ljava/util/concurrent/ThreadFactory;


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

.field private j:Ljava/lang/String;

.field private k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/installations/n;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 86
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/firebase/installations/c;->m:Ljava/lang/Object;

    .line 94
    new-instance v0, Lcom/google/firebase/installations/c$1;

    invoke-direct {v0}, Lcom/google/firebase/installations/c$1;-><init>()V

    sput-object v0, Lcom/google/firebase/installations/c;->n:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/b;Lcom/google/firebase/d/b;Lcom/google/firebase/d/b;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/b;",
            "Lcom/google/firebase/d/b<",
            "Lcom/google/firebase/f/i;",
            ">;",
            "Lcom/google/firebase/d/b<",
            "Lcom/google/firebase/c/f;",
            ">;)V"
        }
    .end annotation

    .line 130
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sget-object v7, Lcom/google/firebase/installations/c;->n:Ljava/util/concurrent/ThreadFactory;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x1e

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    new-instance v3, Lcom/google/firebase/installations/b/c;

    .line 140
    invoke-virtual {p1}, Lcom/google/firebase/b;->a()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0, p2, p3}, Lcom/google/firebase/installations/b/c;-><init>(Landroid/content/Context;Lcom/google/firebase/d/b;Lcom/google/firebase/d/b;)V

    new-instance v4, Lcom/google/firebase/installations/a/c;

    invoke-direct {v4, p1}, Lcom/google/firebase/installations/a/c;-><init>(Lcom/google/firebase/b;)V

    .line 142
    invoke-static {}, Lcom/google/firebase/installations/o;->a()Lcom/google/firebase/installations/o;

    move-result-object v5

    new-instance v6, Lcom/google/firebase/installations/a/b;

    invoke-direct {v6, p1}, Lcom/google/firebase/installations/a/b;-><init>(Lcom/google/firebase/b;)V

    new-instance v7, Lcom/google/firebase/installations/m;

    invoke-direct {v7}, Lcom/google/firebase/installations/m;-><init>()V

    move-object v0, p0

    move-object v1, v8

    move-object v2, p1

    .line 130
    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/installations/c;-><init>(Ljava/util/concurrent/ExecutorService;Lcom/google/firebase/b;Lcom/google/firebase/installations/b/c;Lcom/google/firebase/installations/a/c;Lcom/google/firebase/installations/o;Lcom/google/firebase/installations/a/b;Lcom/google/firebase/installations/m;)V

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/ExecutorService;Lcom/google/firebase/b;Lcom/google/firebase/installations/b/c;Lcom/google/firebase/installations/a/c;Lcom/google/firebase/installations/o;Lcom/google/firebase/installations/a/b;Lcom/google/firebase/installations/m;)V
    .locals 10

    move-object v0, p0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/google/firebase/installations/c;->g:Ljava/lang/Object;

    .line 79
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, v0, Lcom/google/firebase/installations/c;->k:Ljava/util/Set;

    .line 82
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/firebase/installations/c;->l:Ljava/util/List;

    move-object v1, p2

    .line 155
    iput-object v1, v0, Lcom/google/firebase/installations/c;->a:Lcom/google/firebase/b;

    move-object v1, p3

    .line 156
    iput-object v1, v0, Lcom/google/firebase/installations/c;->b:Lcom/google/firebase/installations/b/c;

    move-object v1, p4

    .line 157
    iput-object v1, v0, Lcom/google/firebase/installations/c;->c:Lcom/google/firebase/installations/a/c;

    move-object v1, p5

    .line 158
    iput-object v1, v0, Lcom/google/firebase/installations/c;->d:Lcom/google/firebase/installations/o;

    move-object/from16 v1, p6

    .line 159
    iput-object v1, v0, Lcom/google/firebase/installations/c;->e:Lcom/google/firebase/installations/a/b;

    move-object/from16 v1, p7

    .line 160
    iput-object v1, v0, Lcom/google/firebase/installations/c;->f:Lcom/google/firebase/installations/m;

    move-object v1, p1

    .line 161
    iput-object v1, v0, Lcom/google/firebase/installations/c;->h:Ljava/util/concurrent/ExecutorService;

    .line 162
    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sget-object v8, Lcom/google/firebase/installations/c;->n:Ljava/util/concurrent/ThreadFactory;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x1e

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v9, v0, Lcom/google/firebase/installations/c;->i:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static a()Lcom/google/firebase/installations/c;
    .locals 1

    .line 199
    invoke-static {}, Lcom/google/firebase/b;->d()Lcom/google/firebase/b;

    move-result-object v0

    .line 200
    invoke-static {v0}, Lcom/google/firebase/installations/c;->a(Lcom/google/firebase/b;)Lcom/google/firebase/installations/c;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/firebase/b;)Lcom/google/firebase/installations/c;
    .locals 2

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Null is not a valid value of FirebaseApp."

    .line 211
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/o;->b(ZLjava/lang/Object;)V

    .line 212
    const-class v0, Lcom/google/firebase/installations/h;

    invoke-virtual {p0, v0}, Lcom/google/firebase/b;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/installations/c;

    return-object p0
.end method

.method private a(Lcom/google/firebase/installations/a/d;)V
    .locals 3

    .line 322
    iget-object v0, p0, Lcom/google/firebase/installations/c;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 323
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/installations/c;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 324
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 325
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/installations/n;

    .line 326
    invoke-interface {v2, p1}, Lcom/google/firebase/installations/n;->a(Lcom/google/firebase/installations/a/d;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 328
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 331
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private declared-synchronized a(Lcom/google/firebase/installations/a/d;Lcom/google/firebase/installations/a/d;)V
    .locals 1

    monitor-enter p0

    .line 427
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/installations/c;->k:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    invoke-virtual {p1}, Lcom/google/firebase/installations/a/d;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/google/firebase/installations/a/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 430
    iget-object p1, p0, Lcom/google/firebase/installations/c;->k:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 431
    invoke-virtual {p2}, Lcom/google/firebase/installations/a/d;->a()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 434
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lcom/google/firebase/installations/c;)V
    .locals 1

    const/4 v0, 0x0

    .line 249
    invoke-direct {p0, v0}, Lcom/google/firebase/installations/c;->a(Z)V

    return-void
.end method

.method static synthetic a(Lcom/google/firebase/installations/c;Z)V
    .locals 12

    .line 5381
    invoke-direct {p0}, Lcom/google/firebase/installations/c;->m()Lcom/google/firebase/installations/a/d;

    move-result-object v0

    .line 5387
    :try_start_0
    invoke-virtual {v0}, Lcom/google/firebase/installations/a/d;->j()Z

    move-result v1
    :try_end_0
    .catch Lcom/google/firebase/installations/FirebaseInstallationsException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "Firebase Installations Service is unavailable. Please try again later."

    const-string v3, "BAD CONFIG"

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v1, :cond_6

    :try_start_1
    invoke-virtual {v0}, Lcom/google/firebase/installations/a/d;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_2

    .line 5389
    iget-object p1, p0, Lcom/google/firebase/installations/c;->d:Lcom/google/firebase/installations/o;

    invoke-virtual {p1, v0}, Lcom/google/firebase/installations/o;->a(Lcom/google/firebase/installations/a/d;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return-void

    .line 6565
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/google/firebase/installations/c;->b:Lcom/google/firebase/installations/b/c;

    .line 6567
    invoke-direct {p0}, Lcom/google/firebase/installations/c;->h()Ljava/lang/String;

    move-result-object v1

    .line 6568
    invoke-virtual {v0}, Lcom/google/firebase/installations/a/d;->a()Ljava/lang/String;

    move-result-object v7

    .line 6569
    invoke-direct {p0}, Lcom/google/firebase/installations/c;->f()Ljava/lang/String;

    move-result-object v8

    .line 6570
    invoke-virtual {v0}, Lcom/google/firebase/installations/a/d;->d()Ljava/lang/String;

    move-result-object v9

    .line 6566
    invoke-virtual {p1, v1, v7, v8, v9}, Lcom/google/firebase/installations/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/installations/b/f;

    move-result-object p1

    .line 6572
    sget-object v1, Lcom/google/firebase/installations/c$2;->b:[I

    invoke-virtual {p1}, Lcom/google/firebase/installations/b/f;->c()Lcom/google/firebase/installations/b/f$b;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/firebase/installations/b/f$b;->ordinal()I

    move-result v7

    aget v1, v1, v7

    if-eq v1, v5, :cond_5

    if-eq v1, v4, :cond_4

    const/4 p1, 0x3

    if-ne v1, p1, :cond_3

    .line 6583
    invoke-direct {p0, v6}, Lcom/google/firebase/installations/c;->a(Ljava/lang/String;)V

    .line 6584
    invoke-virtual {v0}, Lcom/google/firebase/installations/a/d;->m()Lcom/google/firebase/installations/a/d;

    move-result-object p1

    goto/16 :goto_2

    .line 6586
    :cond_3
    new-instance p1, Lcom/google/firebase/installations/FirebaseInstallationsException;

    sget-object v0, Lcom/google/firebase/installations/FirebaseInstallationsException$a;->UNAVAILABLE:Lcom/google/firebase/installations/FirebaseInstallationsException$a;

    invoke-direct {p1, v2, v0}, Lcom/google/firebase/installations/FirebaseInstallationsException;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/FirebaseInstallationsException$a;)V

    throw p1

    .line 6579
    :cond_4
    invoke-virtual {v0, v3}, Lcom/google/firebase/installations/a/d;->a(Ljava/lang/String;)Lcom/google/firebase/installations/a/d;

    move-result-object p1

    goto/16 :goto_2

    .line 6575
    :cond_5
    invoke-virtual {p1}, Lcom/google/firebase/installations/b/f;->a()Ljava/lang/String;

    move-result-object v1

    .line 6576
    invoke-virtual {p1}, Lcom/google/firebase/installations/b/f;->b()J

    move-result-wide v2

    iget-object p1, p0, Lcom/google/firebase/installations/c;->d:Lcom/google/firebase/installations/o;

    .line 6577
    invoke-virtual {p1}, Lcom/google/firebase/installations/o;->b()J

    move-result-wide v4

    .line 7115
    invoke-virtual {v0}, Lcom/google/firebase/installations/a/d;->h()Lcom/google/firebase/installations/a/d$a;

    move-result-object p1

    .line 7116
    invoke-virtual {p1, v1}, Lcom/google/firebase/installations/a/d$a;->b(Ljava/lang/String;)Lcom/google/firebase/installations/a/d$a;

    move-result-object p1

    .line 7117
    invoke-virtual {p1, v2, v3}, Lcom/google/firebase/installations/a/d$a;->a(J)Lcom/google/firebase/installations/a/d$a;

    move-result-object p1

    .line 7118
    invoke-virtual {p1, v4, v5}, Lcom/google/firebase/installations/a/d$a;->b(J)Lcom/google/firebase/installations/a/d$a;

    move-result-object p1

    .line 7119
    invoke-virtual {p1}, Lcom/google/firebase/installations/a/d$a;->a()Lcom/google/firebase/installations/a/d;

    move-result-object p1

    goto/16 :goto_2

    .line 5525
    :cond_6
    :goto_1
    invoke-virtual {v0}, Lcom/google/firebase/installations/a/d;->a()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 5526
    invoke-virtual {v0}, Lcom/google/firebase/installations/a/d;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v1, 0xb

    if-ne p1, v1, :cond_7

    .line 5529
    iget-object p1, p0, Lcom/google/firebase/installations/c;->e:Lcom/google/firebase/installations/a/b;

    invoke-virtual {p1}, Lcom/google/firebase/installations/a/b;->a()Ljava/lang/String;

    move-result-object v6

    :cond_7
    move-object v11, v6

    .line 5532
    iget-object v6, p0, Lcom/google/firebase/installations/c;->b:Lcom/google/firebase/installations/b/c;

    .line 5534
    invoke-direct {p0}, Lcom/google/firebase/installations/c;->h()Ljava/lang/String;

    move-result-object v7

    .line 5535
    invoke-virtual {v0}, Lcom/google/firebase/installations/a/d;->a()Ljava/lang/String;

    move-result-object v8

    .line 5536
    invoke-direct {p0}, Lcom/google/firebase/installations/c;->f()Ljava/lang/String;

    move-result-object v9

    .line 5537
    invoke-direct {p0}, Lcom/google/firebase/installations/c;->g()Ljava/lang/String;

    move-result-object v10

    .line 5533
    invoke-virtual/range {v6 .. v11}, Lcom/google/firebase/installations/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/installations/b/d;

    move-result-object p1

    .line 5540
    sget-object v1, Lcom/google/firebase/installations/c$2;->a:[I

    invoke-virtual {p1}, Lcom/google/firebase/installations/b/d;->e()Lcom/google/firebase/installations/b/d$b;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/firebase/installations/b/d$b;->ordinal()I

    move-result v6

    aget v1, v1, v6

    if-eq v1, v5, :cond_9

    if-ne v1, v4, :cond_8

    .line 5549
    invoke-virtual {v0, v3}, Lcom/google/firebase/installations/a/d;->a(Ljava/lang/String;)Lcom/google/firebase/installations/a/d;

    move-result-object p1

    goto :goto_2

    .line 5551
    :cond_8
    new-instance p1, Lcom/google/firebase/installations/FirebaseInstallationsException;

    sget-object v0, Lcom/google/firebase/installations/FirebaseInstallationsException$a;->UNAVAILABLE:Lcom/google/firebase/installations/FirebaseInstallationsException$a;

    invoke-direct {p1, v2, v0}, Lcom/google/firebase/installations/FirebaseInstallationsException;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/FirebaseInstallationsException$a;)V

    throw p1

    .line 5543
    :cond_9
    invoke-virtual {p1}, Lcom/google/firebase/installations/b/d;->b()Ljava/lang/String;

    move-result-object v1

    .line 5544
    invoke-virtual {p1}, Lcom/google/firebase/installations/b/d;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/installations/c;->d:Lcom/google/firebase/installations/o;

    .line 5545
    invoke-virtual {v3}, Lcom/google/firebase/installations/o;->b()J

    move-result-wide v3

    .line 5546
    invoke-virtual {p1}, Lcom/google/firebase/installations/b/d;->d()Lcom/google/firebase/installations/b/f;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/firebase/installations/b/f;->a()Ljava/lang/String;

    move-result-object v5

    .line 5547
    invoke-virtual {p1}, Lcom/google/firebase/installations/b/d;->d()Lcom/google/firebase/installations/b/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/installations/b/f;->b()J

    move-result-wide v6

    .line 6089
    invoke-virtual {v0}, Lcom/google/firebase/installations/a/d;->h()Lcom/google/firebase/installations/a/d$a;

    move-result-object p1

    .line 6090
    invoke-virtual {p1, v1}, Lcom/google/firebase/installations/a/d$a;->a(Ljava/lang/String;)Lcom/google/firebase/installations/a/d$a;

    move-result-object p1

    sget-object v1, Lcom/google/firebase/installations/a/c$a;->REGISTERED:Lcom/google/firebase/installations/a/c$a;

    .line 6091
    invoke-virtual {p1, v1}, Lcom/google/firebase/installations/a/d$a;->a(Lcom/google/firebase/installations/a/c$a;)Lcom/google/firebase/installations/a/d$a;

    move-result-object p1

    .line 6092
    invoke-virtual {p1, v5}, Lcom/google/firebase/installations/a/d$a;->b(Ljava/lang/String;)Lcom/google/firebase/installations/a/d$a;

    move-result-object p1

    .line 6093
    invoke-virtual {p1, v2}, Lcom/google/firebase/installations/a/d$a;->c(Ljava/lang/String;)Lcom/google/firebase/installations/a/d$a;

    move-result-object p1

    .line 6094
    invoke-virtual {p1, v6, v7}, Lcom/google/firebase/installations/a/d$a;->a(J)Lcom/google/firebase/installations/a/d$a;

    move-result-object p1

    .line 6095
    invoke-virtual {p1, v3, v4}, Lcom/google/firebase/installations/a/d$a;->b(J)Lcom/google/firebase/installations/a/d$a;

    move-result-object p1

    .line 6096
    invoke-virtual {p1}, Lcom/google/firebase/installations/a/d$a;->a()Lcom/google/firebase/installations/a/d;

    move-result-object p1
    :try_end_1
    .catch Lcom/google/firebase/installations/FirebaseInstallationsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5401
    :goto_2
    invoke-direct {p0, p1}, Lcom/google/firebase/installations/c;->b(Lcom/google/firebase/installations/a/d;)V

    .line 5404
    invoke-direct {p0, v0, p1}, Lcom/google/firebase/installations/c;->a(Lcom/google/firebase/installations/a/d;Lcom/google/firebase/installations/a/d;)V

    .line 5409
    invoke-virtual {p1}, Lcom/google/firebase/installations/a/d;->i()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5410
    invoke-virtual {p1}, Lcom/google/firebase/installations/a/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/installations/c;->a(Ljava/lang/String;)V

    .line 5414
    :cond_a
    invoke-virtual {p1}, Lcom/google/firebase/installations/a/d;->j()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 5415
    new-instance p1, Lcom/google/firebase/installations/FirebaseInstallationsException;

    sget-object v0, Lcom/google/firebase/installations/FirebaseInstallationsException$a;->BAD_CONFIG:Lcom/google/firebase/installations/FirebaseInstallationsException$a;

    invoke-direct {p1, v0}, Lcom/google/firebase/installations/FirebaseInstallationsException;-><init>(Lcom/google/firebase/installations/FirebaseInstallationsException$a;)V

    invoke-direct {p0, p1}, Lcom/google/firebase/installations/c;->a(Ljava/lang/Exception;)V

    return-void

    .line 5416
    :cond_b
    invoke-virtual {p1}, Lcom/google/firebase/installations/a/d;->l()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 5419
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Installation ID could not be validated with the Firebase servers (maybe it was deleted). Firebase Installations will need to create a new Installation ID and auth token. Please retry your last request."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/google/firebase/installations/c;->a(Ljava/lang/Exception;)V

    return-void

    .line 5421
    :cond_c
    invoke-direct {p0, p1}, Lcom/google/firebase/installations/c;->a(Lcom/google/firebase/installations/a/d;)V

    return-void

    :catch_0
    move-exception p1

    .line 5396
    invoke-direct {p0, p1}, Lcom/google/firebase/installations/c;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method private a(Lcom/google/firebase/installations/n;)V
    .locals 2

    .line 316
    iget-object v0, p0, Lcom/google/firebase/installations/c;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 317
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/installations/c;->l:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 3

    .line 335
    iget-object v0, p0, Lcom/google/firebase/installations/c;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 336
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/installations/c;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 337
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 338
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/installations/n;

    .line 339
    invoke-interface {v2, p1}, Lcom/google/firebase/installations/n;->a(Ljava/lang/Exception;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 341
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 344
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private declared-synchronized a(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 348
    :try_start_0
    iput-object p1, p0, Lcom/google/firebase/installations/c;->j:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final a(Z)V
    .locals 2

    .line 366
    invoke-direct {p0}, Lcom/google/firebase/installations/c;->k()Lcom/google/firebase/installations/a/d;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 4124
    invoke-virtual {v0}, Lcom/google/firebase/installations/a/d;->h()Lcom/google/firebase/installations/a/d$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/firebase/installations/a/d$a;->b(Ljava/lang/String;)Lcom/google/firebase/installations/a/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/installations/a/d$a;->a()Lcom/google/firebase/installations/a/d;

    move-result-object v0

    .line 374
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/installations/c;->a(Lcom/google/firebase/installations/a/d;)V

    .line 377
    iget-object v0, p0, Lcom/google/firebase/installations/c;->i:Ljava/util/concurrent/ExecutorService;

    invoke-static {p0, p1}, Lcom/google/firebase/installations/g;->a(Lcom/google/firebase/installations/c;Z)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lcom/google/firebase/installations/c;)Ljava/lang/Void;
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/installations/c;->l()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method private b(Lcom/google/firebase/installations/a/d;)V
    .locals 3

    .line 442
    sget-object v0, Lcom/google/firebase/installations/c;->m:Ljava/lang/Object;

    monitor-enter v0

    .line 443
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/installations/c;->a:Lcom/google/firebase/b;

    .line 444
    invoke-virtual {v1}, Lcom/google/firebase/b;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "generatefid.lock"

    invoke-static {v1, v2}, Lcom/google/firebase/installations/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/installations/b;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 447
    :try_start_1
    iget-object v2, p0, Lcom/google/firebase/installations/c;->c:Lcom/google/firebase/installations/a/c;

    invoke-virtual {v2, p1}, Lcom/google/firebase/installations/a/c;->a(Lcom/google/firebase/installations/a/d;)Lcom/google/firebase/installations/a/d;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 453
    :try_start_2
    invoke-virtual {v1}, Lcom/google/firebase/installations/b;->a()V

    .line 456
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_1

    .line 453
    invoke-virtual {v1}, Lcom/google/firebase/installations/b;->a()V

    .line 455
    :cond_1
    throw p1

    :catchall_1
    move-exception p1

    .line 456
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method static synthetic b(Lcom/google/firebase/installations/c;Z)V
    .locals 0

    .line 266
    invoke-direct {p0, p1}, Lcom/google/firebase/installations/c;->a(Z)V

    return-void
.end method

.method private e()V
    .locals 3

    .line 178
    invoke-direct {p0}, Lcom/google/firebase/installations/c;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 179
    invoke-direct {p0}, Lcom/google/firebase/installations/c;->f()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Please set your Project ID. A valid Firebase Project ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 180
    invoke-direct {p0}, Lcom/google/firebase/installations/c;->h()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 182
    invoke-direct {p0}, Lcom/google/firebase/installations/c;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/installations/o;->a(Ljava/lang/String;)Z

    move-result v0

    .line 181
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/o;->b(ZLjava/lang/Object;)V

    .line 183
    invoke-direct {p0}, Lcom/google/firebase/installations/c;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/installations/o;->b(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/o;->b(ZLjava/lang/Object;)V

    return-void
.end method

.method private f()Ljava/lang/String;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/google/firebase/installations/c;->a:Lcom/google/firebase/b;

    invoke-virtual {v0}, Lcom/google/firebase/b;->c()Lcom/google/firebase/h;

    move-result-object v0

    .line 1222
    iget-object v0, v0, Lcom/google/firebase/h;->d:Ljava/lang/String;

    return-object v0
.end method

.method private g()Ljava/lang/String;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/google/firebase/installations/c;->a:Lcom/google/firebase/b;

    invoke-virtual {v0}, Lcom/google/firebase/b;->c()Lcom/google/firebase/h;

    move-result-object v0

    .line 2183
    iget-object v0, v0, Lcom/google/firebase/h;->b:Ljava/lang/String;

    return-object v0
.end method

.method private h()Ljava/lang/String;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/google/firebase/installations/c;->a:Lcom/google/firebase/b;

    invoke-virtual {v0}, Lcom/google/firebase/b;->c()Lcom/google/firebase/h;

    move-result-object v0

    .line 3177
    iget-object v0, v0, Lcom/google/firebase/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method private i()Lcom/google/android/gms/tasks/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/h<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 301
    new-instance v0, Lcom/google/android/gms/tasks/i;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/i;-><init>()V

    .line 302
    new-instance v1, Lcom/google/firebase/installations/k;

    invoke-direct {v1, v0}, Lcom/google/firebase/installations/k;-><init>(Lcom/google/android/gms/tasks/i;)V

    .line 303
    invoke-direct {p0, v1}, Lcom/google/firebase/installations/c;->a(Lcom/google/firebase/installations/n;)V

    .line 304
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/i;->a()Lcom/google/android/gms/tasks/h;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized j()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 352
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/installations/c;->j:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private k()Lcom/google/firebase/installations/a/d;
    .locals 5

    .line 473
    sget-object v0, Lcom/google/firebase/installations/c;->m:Ljava/lang/Object;

    monitor-enter v0

    .line 474
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/installations/c;->a:Lcom/google/firebase/b;

    .line 475
    invoke-virtual {v1}, Lcom/google/firebase/b;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "generatefid.lock"

    invoke-static {v1, v2}, Lcom/google/firebase/installations/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/installations/b;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 477
    :try_start_1
    iget-object v2, p0, Lcom/google/firebase/installations/c;->c:Lcom/google/firebase/installations/a/c;

    .line 478
    invoke-virtual {v2}, Lcom/google/firebase/installations/a/c;->a()Lcom/google/firebase/installations/a/d;

    move-result-object v2

    .line 480
    invoke-virtual {v2}, Lcom/google/firebase/installations/a/d;->l()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 4506
    iget-object v3, p0, Lcom/google/firebase/installations/c;->a:Lcom/google/firebase/b;

    invoke-virtual {v3}, Lcom/google/firebase/b;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CHIME_ANDROID_SDK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/google/firebase/installations/c;->a:Lcom/google/firebase/b;

    invoke-virtual {v3}, Lcom/google/firebase/b;->f()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5071
    :cond_0
    invoke-virtual {v2}, Lcom/google/firebase/installations/a/d;->b()Lcom/google/firebase/installations/a/c$a;

    move-result-object v3

    sget-object v4, Lcom/google/firebase/installations/a/c$a;->ATTEMPT_MIGRATION:Lcom/google/firebase/installations/a/c$a;

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_3

    .line 4508
    :cond_2
    invoke-static {}, Lcom/google/firebase/installations/m;->a()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 4511
    :cond_3
    iget-object v3, p0, Lcom/google/firebase/installations/c;->e:Lcom/google/firebase/installations/a/b;

    invoke-virtual {v3}, Lcom/google/firebase/installations/a/b;->b()Ljava/lang/String;

    move-result-object v3

    .line 4512
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 4513
    invoke-static {}, Lcom/google/firebase/installations/m;->a()Ljava/lang/String;

    move-result-object v3

    .line 487
    :cond_4
    :goto_1
    iget-object v4, p0, Lcom/google/firebase/installations/c;->c:Lcom/google/firebase/installations/a/c;

    .line 5076
    invoke-virtual {v2}, Lcom/google/firebase/installations/a/d;->h()Lcom/google/firebase/installations/a/d$a;

    move-result-object v2

    .line 5077
    invoke-virtual {v2, v3}, Lcom/google/firebase/installations/a/d$a;->a(Ljava/lang/String;)Lcom/google/firebase/installations/a/d$a;

    move-result-object v2

    sget-object v3, Lcom/google/firebase/installations/a/c$a;->UNREGISTERED:Lcom/google/firebase/installations/a/c$a;

    .line 5078
    invoke-virtual {v2, v3}, Lcom/google/firebase/installations/a/d$a;->a(Lcom/google/firebase/installations/a/c$a;)Lcom/google/firebase/installations/a/d$a;

    move-result-object v2

    .line 5079
    invoke-virtual {v2}, Lcom/google/firebase/installations/a/d$a;->a()Lcom/google/firebase/installations/a/d;

    move-result-object v2

    .line 488
    invoke-virtual {v4, v2}, Lcom/google/firebase/installations/a/c;->a(Lcom/google/firebase/installations/a/d;)Lcom/google/firebase/installations/a/d;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    if-eqz v1, :cond_6

    .line 498
    :try_start_2
    invoke-virtual {v1}, Lcom/google/firebase/installations/b;->a()V

    :cond_6
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/google/firebase/installations/b;->a()V

    .line 500
    :cond_7
    throw v2

    :catchall_1
    move-exception v1

    .line 501
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private l()Ljava/lang/Void;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/installations/FirebaseInstallationsException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 597
    invoke-direct {p0, v0}, Lcom/google/firebase/installations/c;->a(Ljava/lang/String;)V

    .line 598
    invoke-direct {p0}, Lcom/google/firebase/installations/c;->m()Lcom/google/firebase/installations/a/d;

    move-result-object v1

    .line 599
    invoke-virtual {v1}, Lcom/google/firebase/installations/a/d;->i()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 601
    iget-object v2, p0, Lcom/google/firebase/installations/c;->b:Lcom/google/firebase/installations/b/c;

    .line 602
    invoke-direct {p0}, Lcom/google/firebase/installations/c;->h()Ljava/lang/String;

    move-result-object v3

    .line 603
    invoke-virtual {v1}, Lcom/google/firebase/installations/a/d;->a()Ljava/lang/String;

    move-result-object v4

    .line 604
    invoke-direct {p0}, Lcom/google/firebase/installations/c;->f()Ljava/lang/String;

    move-result-object v5

    .line 605
    invoke-virtual {v1}, Lcom/google/firebase/installations/a/d;->d()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    const/4 v9, 0x1

    aput-object v4, v7, v9

    const-string v4, "projects/%s/installations/%s"

    .line 5307
    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 5308
    invoke-static {v4}, Lcom/google/firebase/installations/b/c;->a(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v4

    :goto_0
    if-gt v8, v9, :cond_4

    .line 5312
    invoke-virtual {v2, v4, v3}, Lcom/google/firebase/installations/b/c;->a(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v7

    :try_start_0
    const-string v10, "DELETE"

    .line 5314
    invoke-virtual {v7, v10}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v10, "Authorization"

    const-string v11, "FIS_v2 "

    .line 5315
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 5317
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    const/16 v11, 0xc8

    if-eq v10, v11, :cond_2

    const/16 v11, 0x191

    if-eq v10, v11, :cond_2

    const/16 v11, 0x194

    if-ne v10, v11, :cond_0

    goto :goto_1

    .line 5323
    :cond_0
    invoke-static {v7, v0, v3, v5}, Lcom/google/firebase/installations/b/c;->a(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v11, 0x1ad

    if-eq v10, v11, :cond_3

    const/16 v11, 0x1f4

    if-lt v10, v11, :cond_1

    const/16 v11, 0x258

    if-ge v10, v11, :cond_1

    goto :goto_2

    .line 5330
    :cond_1
    invoke-static {}, Lcom/google/firebase/installations/b/c;->a()V

    .line 5332
    new-instance v10, Lcom/google/firebase/installations/FirebaseInstallationsException;

    const-string v11, "Bad config while trying to delete FID"

    sget-object v12, Lcom/google/firebase/installations/FirebaseInstallationsException$a;->BAD_CONFIG:Lcom/google/firebase/installations/FirebaseInstallationsException$a;

    invoke-direct {v10, v11, v12}, Lcom/google/firebase/installations/FirebaseInstallationsException;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/FirebaseInstallationsException$a;)V

    throw v10
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5337
    :cond_2
    :goto_1
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_3

    :catchall_0
    move-exception v0

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 5338
    throw v0

    :catch_0
    :cond_3
    :goto_2
    add-int/lit8 v8, v8, 0x1

    .line 5337
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 5341
    :cond_4
    new-instance v0, Lcom/google/firebase/installations/FirebaseInstallationsException;

    sget-object v1, Lcom/google/firebase/installations/FirebaseInstallationsException$a;->UNAVAILABLE:Lcom/google/firebase/installations/FirebaseInstallationsException$a;

    const-string v2, "Firebase Installations Service is unavailable. Please try again later."

    invoke-direct {v0, v2, v1}, Lcom/google/firebase/installations/FirebaseInstallationsException;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/FirebaseInstallationsException$a;)V

    throw v0

    .line 607
    :cond_5
    :goto_3
    invoke-virtual {v1}, Lcom/google/firebase/installations/a/d;->m()Lcom/google/firebase/installations/a/d;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/firebase/installations/c;->b(Lcom/google/firebase/installations/a/d;)V

    return-object v0
.end method

.method private m()Lcom/google/firebase/installations/a/d;
    .locals 3

    .line 619
    sget-object v0, Lcom/google/firebase/installations/c;->m:Ljava/lang/Object;

    monitor-enter v0

    .line 620
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/installations/c;->a:Lcom/google/firebase/b;

    .line 621
    invoke-virtual {v1}, Lcom/google/firebase/b;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "generatefid.lock"

    invoke-static {v1, v2}, Lcom/google/firebase/installations/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/installations/b;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 623
    :try_start_1
    iget-object v2, p0, Lcom/google/firebase/installations/c;->c:Lcom/google/firebase/installations/a/c;

    .line 624
    invoke-virtual {v2}, Lcom/google/firebase/installations/a/c;->a()Lcom/google/firebase/installations/a/d;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 632
    :try_start_2
    invoke-virtual {v1}, Lcom/google/firebase/installations/b;->a()V

    :cond_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/firebase/installations/b;->a()V

    .line 634
    :cond_1
    throw v2

    :catchall_1
    move-exception v1

    .line 635
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method


# virtual methods
.method public final b()Lcom/google/android/gms/tasks/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/h<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 240
    invoke-direct {p0}, Lcom/google/firebase/installations/c;->e()V

    .line 243
    invoke-direct {p0}, Lcom/google/firebase/installations/c;->j()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 245
    invoke-static {v0}, Lcom/google/android/gms/tasks/k;->a(Ljava/lang/Object;)Lcom/google/android/gms/tasks/h;

    move-result-object v0

    return-object v0

    .line 248
    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/installations/c;->i()Lcom/google/android/gms/tasks/h;

    move-result-object v0

    .line 249
    iget-object v1, p0, Lcom/google/firebase/installations/c;->h:Ljava/util/concurrent/ExecutorService;

    invoke-static {p0}, Lcom/google/firebase/installations/d;->a(Lcom/google/firebase/installations/c;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/tasks/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/h<",
            "Lcom/google/firebase/installations/l;",
            ">;"
        }
    .end annotation

    .line 264
    invoke-direct {p0}, Lcom/google/firebase/installations/c;->e()V

    .line 3308
    new-instance v0, Lcom/google/android/gms/tasks/i;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/i;-><init>()V

    .line 3310
    new-instance v1, Lcom/google/firebase/installations/j;

    iget-object v2, p0, Lcom/google/firebase/installations/c;->d:Lcom/google/firebase/installations/o;

    invoke-direct {v1, v2, v0}, Lcom/google/firebase/installations/j;-><init>(Lcom/google/firebase/installations/o;Lcom/google/android/gms/tasks/i;)V

    .line 3311
    invoke-direct {p0, v1}, Lcom/google/firebase/installations/c;->a(Lcom/google/firebase/installations/n;)V

    .line 3312
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/i;->a()Lcom/google/android/gms/tasks/h;

    move-result-object v0

    .line 266
    iget-object v1, p0, Lcom/google/firebase/installations/c;->h:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/google/firebase/installations/e;->a(Lcom/google/firebase/installations/c;Z)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public final d()Lcom/google/android/gms/tasks/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 278
    iget-object v0, p0, Lcom/google/firebase/installations/c;->h:Ljava/util/concurrent/ExecutorService;

    invoke-static {p0}, Lcom/google/firebase/installations/f;->a(Lcom/google/firebase/installations/c;)Ljava/util/concurrent/Callable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/tasks/k;->a(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/h;

    move-result-object v0

    return-object v0
.end method
