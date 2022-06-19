.class public Lcom/google/firebase/messaging/FirebaseMessaging;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/messaging/FirebaseMessaging$a;
    }
.end annotation


# static fields
.field static f:Lcom/google/android/datatransport/g;

.field static g:Ljava/util/concurrent/ScheduledExecutorService;

.field private static final h:J

.field private static i:Lcom/google/firebase/messaging/ao;


# instance fields
.field final a:Landroid/content/Context;

.field final b:Lcom/google/firebase/messaging/z;

.field final c:Lcom/google/firebase/messaging/aj;

.field final d:Lcom/google/firebase/messaging/FirebaseMessaging$a;

.field final e:Lcom/google/firebase/messaging/ag;

.field private final j:Lcom/google/firebase/b;

.field private final k:Lcom/google/firebase/iid/a/a;

.field private final l:Lcom/google/firebase/installations/h;

.field private final m:Ljava/util/concurrent/Executor;

.field private final n:Ljava/util/concurrent/Executor;

.field private final o:Lcom/google/android/gms/tasks/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/h<",
            "Lcom/google/firebase/messaging/as;",
            ">;"
        }
    .end annotation
.end field

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x8

    .line 1
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/firebase/messaging/FirebaseMessaging;->h:J

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/b;Lcom/google/firebase/iid/a/a;Lcom/google/firebase/d/b;Lcom/google/firebase/d/b;Lcom/google/firebase/installations/h;Lcom/google/android/datatransport/g;Lcom/google/firebase/b/d;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/b;",
            "Lcom/google/firebase/iid/a/a;",
            "Lcom/google/firebase/d/b<",
            "Lcom/google/firebase/f/i;",
            ">;",
            "Lcom/google/firebase/d/b<",
            "Lcom/google/firebase/c/f;",
            ">;",
            "Lcom/google/firebase/installations/h;",
            "Lcom/google/android/datatransport/g;",
            "Lcom/google/firebase/b/d;",
            ")V"
        }
    .end annotation

    new-instance v8, Lcom/google/firebase/messaging/ag;

    .line 1
    invoke-virtual {p1}, Lcom/google/firebase/b;->a()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/google/firebase/messaging/ag;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 2
    invoke-direct/range {v0 .. v8}, Lcom/google/firebase/messaging/FirebaseMessaging;-><init>(Lcom/google/firebase/b;Lcom/google/firebase/iid/a/a;Lcom/google/firebase/d/b;Lcom/google/firebase/d/b;Lcom/google/firebase/installations/h;Lcom/google/android/datatransport/g;Lcom/google/firebase/b/d;Lcom/google/firebase/messaging/ag;)V

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/b;Lcom/google/firebase/iid/a/a;Lcom/google/firebase/d/b;Lcom/google/firebase/d/b;Lcom/google/firebase/installations/h;Lcom/google/android/datatransport/g;Lcom/google/firebase/b/d;Lcom/google/firebase/messaging/ag;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/b;",
            "Lcom/google/firebase/iid/a/a;",
            "Lcom/google/firebase/d/b<",
            "Lcom/google/firebase/f/i;",
            ">;",
            "Lcom/google/firebase/d/b<",
            "Lcom/google/firebase/c/f;",
            ">;",
            "Lcom/google/firebase/installations/h;",
            "Lcom/google/android/datatransport/g;",
            "Lcom/google/firebase/b/d;",
            "Lcom/google/firebase/messaging/ag;",
            ")V"
        }
    .end annotation

    new-instance v7, Lcom/google/firebase/messaging/z;

    move-object v0, v7

    move-object v1, p1

    move-object/from16 v2, p8

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/messaging/z;-><init>(Lcom/google/firebase/b;Lcom/google/firebase/messaging/ag;Lcom/google/firebase/d/b;Lcom/google/firebase/d/b;Lcom/google/firebase/installations/h;)V

    .line 1001
    new-instance v0, Lcom/google/android/gms/common/util/a/a;

    const-string v1, "Firebase-Messaging-Task"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/util/a/a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    .line 2001
    new-instance v9, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v0, Lcom/google/android/gms/common/util/a/a;

    const-string v1, "Firebase-Messaging-Init"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/util/a/a;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {v9, v1, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    .line 3
    invoke-direct/range {v0 .. v9}, Lcom/google/firebase/messaging/FirebaseMessaging;-><init>(Lcom/google/firebase/b;Lcom/google/firebase/iid/a/a;Lcom/google/firebase/installations/h;Lcom/google/android/datatransport/g;Lcom/google/firebase/b/d;Lcom/google/firebase/messaging/ag;Lcom/google/firebase/messaging/z;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/b;Lcom/google/firebase/iid/a/a;Lcom/google/firebase/installations/h;Lcom/google/android/datatransport/g;Lcom/google/firebase/b/d;Lcom/google/firebase/messaging/ag;Lcom/google/firebase/messaging/z;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->p:Z

    sput-object p4, Lcom/google/firebase/messaging/FirebaseMessaging;->f:Lcom/google/android/datatransport/g;

    iput-object p1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->j:Lcom/google/firebase/b;

    iput-object p2, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->k:Lcom/google/firebase/iid/a/a;

    iput-object p3, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->l:Lcom/google/firebase/installations/h;

    new-instance p4, Lcom/google/firebase/messaging/FirebaseMessaging$a;

    .line 6
    invoke-direct {p4, p0, p5}, Lcom/google/firebase/messaging/FirebaseMessaging$a;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;Lcom/google/firebase/b/d;)V

    iput-object p4, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->d:Lcom/google/firebase/messaging/FirebaseMessaging$a;

    .line 7
    invoke-virtual {p1}, Lcom/google/firebase/b;->a()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Landroid/content/Context;

    iput-object p6, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->e:Lcom/google/firebase/messaging/ag;

    iput-object p8, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->n:Ljava/util/concurrent/Executor;

    iput-object p7, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->b:Lcom/google/firebase/messaging/z;

    new-instance p1, Lcom/google/firebase/messaging/aj;

    .line 8
    invoke-direct {p1, p8}, Lcom/google/firebase/messaging/aj;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->c:Lcom/google/firebase/messaging/aj;

    iput-object p9, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->m:Ljava/util/concurrent/Executor;

    if-eqz p2, :cond_0

    .line 9
    new-instance p1, Lcom/google/firebase/messaging/p;

    invoke-direct {p1, p0}, Lcom/google/firebase/messaging/p;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;)V

    invoke-interface {p2, p1}, Lcom/google/firebase/iid/a/a;->a(Lcom/google/firebase/iid/a/a$a;)V

    :cond_0
    const-class p1, Lcom/google/firebase/messaging/FirebaseMessaging;

    monitor-enter p1

    :try_start_0
    sget-object p2, Lcom/google/firebase/messaging/FirebaseMessaging;->i:Lcom/google/firebase/messaging/ao;

    if-nez p2, :cond_1

    new-instance p2, Lcom/google/firebase/messaging/ao;

    .line 10
    invoke-direct {p2, v4}, Lcom/google/firebase/messaging/ao;-><init>(Landroid/content/Context;)V

    sput-object p2, Lcom/google/firebase/messaging/FirebaseMessaging;->i:Lcom/google/firebase/messaging/ao;

    .line 11
    :cond_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p1, Lcom/google/firebase/messaging/q;

    .line 12
    invoke-direct {p1, p0}, Lcom/google/firebase/messaging/q;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;)V

    invoke-interface {p9, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 3001
    new-instance v5, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance p1, Lcom/google/android/gms/common/util/a/a;

    const-string p2, "Firebase-Messaging-Topics-Io"

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/util/a/a;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x1

    invoke-direct {v5, p2, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    move-object v0, p0

    move-object v1, p3

    move-object v2, p6

    move-object v3, p7

    .line 14
    invoke-static/range {v0 .. v5}, Lcom/google/firebase/messaging/as;->a(Lcom/google/firebase/messaging/FirebaseMessaging;Lcom/google/firebase/installations/h;Lcom/google/firebase/messaging/ag;Lcom/google/firebase/messaging/z;Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/tasks/h;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->o:Lcom/google/android/gms/tasks/h;

    .line 4001
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object p7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance p8, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 5001
    invoke-direct {p8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance p9, Lcom/google/android/gms/common/util/a/a;

    const-string p2, "Firebase-Messaging-Trigger-Topics-Io"

    invoke-direct {p9, p2}, Lcom/google/android/gms/common/util/a/a;-><init>(Ljava/lang/String;)V

    const/4 p3, 0x0

    const/4 p4, 0x1

    const-wide/16 p5, 0x1e

    move-object p2, v0

    invoke-direct/range {p2 .. p9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 15
    new-instance p2, Lcom/google/firebase/messaging/r;

    invoke-direct {p2, p0}, Lcom/google/firebase/messaging/r;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;)V

    .line 16
    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/tasks/h;->a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/f;)Lcom/google/android/gms/tasks/h;

    return-void

    :catchall_0
    move-exception p2

    .line 11
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method static synthetic a(Lcom/google/firebase/messaging/FirebaseMessaging;)Lcom/google/firebase/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->j:Lcom/google/firebase/b;

    return-object p0
.end method

.method public static declared-synchronized a()Lcom/google/firebase/messaging/FirebaseMessaging;
    .locals 2

    const-class v0, Lcom/google/firebase/messaging/FirebaseMessaging;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/firebase/b;->d()Lcom/google/firebase/b;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance(Lcom/google/firebase/b;)Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static a(Ljava/lang/Runnable;J)V
    .locals 4

    const-class v0, Lcom/google/firebase/messaging/FirebaseMessaging;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/firebase/messaging/FirebaseMessaging;->g:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v1, :cond_0

    .line 1
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v2, Lcom/google/android/gms/common/util/a/a;

    const-string v3, "TAG"

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/util/a/a;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcom/google/firebase/messaging/FirebaseMessaging;->g:Ljava/util/concurrent/ScheduledExecutorService;

    :cond_0
    sget-object v1, Lcom/google/firebase/messaging/FirebaseMessaging;->g:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    invoke-interface {v1, p0, p1, p2, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private a(Lcom/google/firebase/messaging/ao$a;)Z
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->e:Lcom/google/firebase/messaging/ag;

    .line 1
    invoke-virtual {v0}, Lcom/google/firebase/messaging/ag;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/ao$a;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method static synthetic b(Lcom/google/firebase/messaging/FirebaseMessaging;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->d()V

    return-void
.end method

.method public static c()Lcom/google/android/datatransport/g;
    .locals 1

    sget-object v0, Lcom/google/firebase/messaging/FirebaseMessaging;->f:Lcom/google/android/datatransport/g;

    return-object v0
.end method

.method private declared-synchronized f()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->p:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/messaging/FirebaseMessaging;->a(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private g()Lcom/google/firebase/messaging/ao$a;
    .locals 3

    sget-object v0, Lcom/google/firebase/messaging/FirebaseMessaging;->i:Lcom/google/firebase/messaging/ao;

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->h()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->j:Lcom/google/firebase/b;

    invoke-static {v2}, Lcom/google/firebase/messaging/ag;->a(Lcom/google/firebase/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/messaging/ao;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/messaging/ao$a;

    move-result-object v0

    return-object v0
.end method

.method static declared-synchronized getInstance(Lcom/google/firebase/b;)Lcom/google/firebase/messaging/FirebaseMessaging;
    .locals 2

    const-class v0, Lcom/google/firebase/messaging/FirebaseMessaging;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/firebase/b;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/messaging/FirebaseMessaging;

    const-string v1, "Firebase Messaging component is not present"

    .line 3
    invoke-static {p0, v1}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private h()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->j:Lcom/google/firebase/b;

    .line 1
    invoke-virtual {v0}, Lcom/google/firebase/b;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[DEFAULT]"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->j:Lcom/google/firebase/b;

    .line 2
    invoke-virtual {v0}, Lcom/google/firebase/b;->g()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method final declared-synchronized a(J)V
    .locals 4

    monitor-enter p0

    const-wide/16 v0, 0x1e

    add-long v2, p1, p1

    .line 1
    :try_start_0
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    sget-wide v2, Lcom/google/firebase/messaging/FirebaseMessaging;->h:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    new-instance v2, Lcom/google/firebase/messaging/ap;

    .line 2
    invoke-direct {v2, p0, v0, v1}, Lcom/google/firebase/messaging/ap;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;J)V

    .line 3
    invoke-static {v2, p1, p2}, Lcom/google/firebase/messaging/FirebaseMessaging;->a(Ljava/lang/Runnable;J)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->p:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->j:Lcom/google/firebase/b;

    .line 1
    invoke-virtual {v0}, Lcom/google/firebase/b;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[DEFAULT]"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    const-string v1, "FirebaseMessaging"

    .line 2
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->j:Lcom/google/firebase/b;

    .line 3
    invoke-virtual {v0}, Lcom/google/firebase/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Invoking onNewToken for app: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/String;

    .line 3
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :cond_1
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.firebase.messaging.NEW_TOKEN"

    .line 4
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "token"

    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance p1, Lcom/google/firebase/messaging/g;

    iget-object v1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Landroid/content/Context;

    .line 6
    invoke-direct {p1, v1}, Lcom/google/firebase/messaging/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/g;->a(Landroid/content/Intent;)Lcom/google/android/gms/tasks/h;

    :cond_2
    return-void
.end method

.method final declared-synchronized a(Z)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->p:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

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

    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->k:Lcom/google/firebase/iid/a/a;

    if-eqz v0, :cond_0

    .line 1
    invoke-interface {v0}, Lcom/google/firebase/iid/a/a;->b()Lcom/google/android/gms/tasks/h;

    move-result-object v0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Lcom/google/android/gms/tasks/i;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/i;-><init>()V

    iget-object v1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->m:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/firebase/messaging/s;

    .line 3
    invoke-direct {v2, p0, v0}, Lcom/google/firebase/messaging/s;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;Lcom/google/android/gms/tasks/i;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 6000
    iget-object v0, v0, Lcom/google/android/gms/tasks/i;->a:Lcom/google/android/gms/tasks/ah;

    return-object v0
.end method

.method final d()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->k:Lcom/google/firebase/iid/a/a;

    if-eqz v0, :cond_0

    .line 1
    invoke-interface {v0}, Lcom/google/firebase/iid/a/a;->a()Ljava/lang/String;

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->g()Lcom/google/firebase/messaging/ao$a;

    move-result-object v0

    .line 3
    invoke-direct {p0, v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->a(Lcom/google/firebase/messaging/ao$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->f()V

    :cond_1
    return-void
.end method

.method final e()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->k:Lcom/google/firebase/iid/a/a;

    if-eqz v0, :cond_0

    .line 1
    :try_start_0
    invoke-interface {v0}, Lcom/google/firebase/iid/a/a;->b()Lcom/google/android/gms/tasks/h;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tasks/k;->a(Lcom/google/android/gms/tasks/h;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 14
    :goto_0
    new-instance v1, Ljava/io/IOException;

    .line 2
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->g()Lcom/google/firebase/messaging/ao$a;

    move-result-object v0

    .line 4
    invoke-direct {p0, v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->a(Lcom/google/firebase/messaging/ao$a;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    iget-object v0, v0, Lcom/google/firebase/messaging/ao$a;->a:Ljava/lang/String;

    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->j:Lcom/google/firebase/b;

    .line 6
    invoke-static {v1}, Lcom/google/firebase/messaging/ag;->a(Lcom/google/firebase/b;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->l:Lcom/google/firebase/installations/h;

    .line 7
    invoke-interface {v2}, Lcom/google/firebase/installations/h;->b()Lcom/google/android/gms/tasks/h;

    move-result-object v2

    .line 8
    invoke-static {}, Lcom/google/firebase/messaging/o;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    new-instance v4, Lcom/google/firebase/messaging/t;

    invoke-direct {v4, p0, v1}, Lcom/google/firebase/messaging/t;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/tasks/h;->b(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/b;)Lcom/google/android/gms/tasks/h;

    move-result-object v2

    .line 10
    :try_start_1
    invoke-static {v2}, Lcom/google/android/gms/tasks/k;->a(Lcom/google/android/gms/tasks/h;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/google/firebase/messaging/FirebaseMessaging;->i:Lcom/google/firebase/messaging/ao;

    .line 11
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->h()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->e:Lcom/google/firebase/messaging/ag;

    invoke-virtual {v5}, Lcom/google/firebase/messaging/ag;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v1, v2, v5}, Lcom/google/firebase/messaging/ao;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/google/firebase/messaging/ao$a;->a:Ljava/lang/String;

    .line 12
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 13
    :cond_2
    invoke-virtual {p0, v2}, Lcom/google/firebase/messaging/FirebaseMessaging;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_3
    return-object v2

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    :goto_1
    new-instance v1, Ljava/io/IOException;

    .line 14
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
