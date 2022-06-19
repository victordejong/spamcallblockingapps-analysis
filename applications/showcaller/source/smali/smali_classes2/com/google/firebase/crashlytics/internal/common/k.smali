.class public Lcom/google/firebase/crashlytics/internal/common/k;
.super Ljava/lang/Object;
.source "CrashlyticsCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/crashlytics/internal/common/k$e;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/firebase/c;

.field private final c:Lcom/google/firebase/crashlytics/internal/common/q;

.field private final d:J

.field private e:Lcom/google/firebase/crashlytics/internal/common/l;

.field private f:Lcom/google/firebase/crashlytics/internal/common/l;

.field private g:Z

.field private h:Lcom/google/firebase/crashlytics/internal/common/i;

.field private final i:Lcom/google/firebase/crashlytics/internal/common/t;

.field private final j:Lcom/google/firebase/crashlytics/d/f/b;

.field private final k:Lcom/google/firebase/crashlytics/d/e/a;

.field private final l:Ljava/util/concurrent/ExecutorService;

.field private final m:Lcom/google/firebase/crashlytics/internal/common/g;

.field private final n:Lcom/google/firebase/crashlytics/d/a;


# direct methods
.method public constructor <init>(Lcom/google/firebase/c;Lcom/google/firebase/crashlytics/internal/common/t;Lcom/google/firebase/crashlytics/d/a;Lcom/google/firebase/crashlytics/internal/common/q;Lcom/google/firebase/crashlytics/d/f/b;Lcom/google/firebase/crashlytics/d/e/a;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/k;->b:Lcom/google/firebase/c;

    .line 3
    iput-object p4, p0, Lcom/google/firebase/crashlytics/internal/common/k;->c:Lcom/google/firebase/crashlytics/internal/common/q;

    .line 4
    invoke-virtual {p1}, Lcom/google/firebase/c;->g()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/k;->a:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/k;->i:Lcom/google/firebase/crashlytics/internal/common/t;

    .line 6
    iput-object p3, p0, Lcom/google/firebase/crashlytics/internal/common/k;->n:Lcom/google/firebase/crashlytics/d/a;

    .line 7
    iput-object p5, p0, Lcom/google/firebase/crashlytics/internal/common/k;->j:Lcom/google/firebase/crashlytics/d/f/b;

    .line 8
    iput-object p6, p0, Lcom/google/firebase/crashlytics/internal/common/k;->k:Lcom/google/firebase/crashlytics/d/e/a;

    .line 9
    iput-object p7, p0, Lcom/google/firebase/crashlytics/internal/common/k;->l:Ljava/util/concurrent/ExecutorService;

    .line 10
    new-instance p1, Lcom/google/firebase/crashlytics/internal/common/g;

    invoke-direct {p1, p7}, Lcom/google/firebase/crashlytics/internal/common/g;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/k;->m:Lcom/google/firebase/crashlytics/internal/common/g;

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/firebase/crashlytics/internal/common/k;->d:J

    return-void
.end method

.method static synthetic a(Lcom/google/firebase/crashlytics/internal/common/k;Lcom/google/firebase/crashlytics/internal/settings/d;)Lcom/google/android/gms/tasks/g;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/internal/common/k;->f(Lcom/google/firebase/crashlytics/internal/settings/d;)Lcom/google/android/gms/tasks/g;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/google/firebase/crashlytics/internal/common/k;)Lcom/google/firebase/crashlytics/internal/common/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/common/k;->e:Lcom/google/firebase/crashlytics/internal/common/l;

    return-object p0
.end method

.method static synthetic c(Lcom/google/firebase/crashlytics/internal/common/k;)Lcom/google/firebase/crashlytics/internal/common/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/common/k;->h:Lcom/google/firebase/crashlytics/internal/common/i;

    return-object p0
.end method

.method private d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/k;->m:Lcom/google/firebase/crashlytics/internal/common/g;

    new-instance v1, Lcom/google/firebase/crashlytics/internal/common/k$d;

    invoke-direct {v1, p0}, Lcom/google/firebase/crashlytics/internal/common/k$d;-><init>(Lcom/google/firebase/crashlytics/internal/common/k;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/common/g;->g(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/g;

    move-result-object v0

    .line 3
    :try_start_0
    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/f0;->a(Lcom/google/android/gms/tasks/g;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/firebase/crashlytics/internal/common/k;->g:Z

    return-void

    :catch_0
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/google/firebase/crashlytics/internal/common/k;->g:Z

    return-void
.end method

.method private f(Lcom/google/firebase/crashlytics/internal/settings/d;)Lcom/google/android/gms/tasks/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/crashlytics/internal/settings/d;",
            ")",
            "Lcom/google/android/gms/tasks/g<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const-string v0, "Collection of crash reports disabled in Crashlytics settings."

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/k;->m()V

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/k;->j:Lcom/google/firebase/crashlytics/d/f/b;

    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/common/j;->b(Lcom/google/firebase/crashlytics/internal/common/k;)Lcom/google/firebase/crashlytics/d/f/a;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/firebase/crashlytics/d/f/b;->a(Lcom/google/firebase/crashlytics/d/f/a;)V

    .line 3
    invoke-interface {p1}, Lcom/google/firebase/crashlytics/internal/settings/d;->b()Lcom/google/firebase/crashlytics/internal/settings/h/d;

    move-result-object v1

    .line 4
    invoke-interface {v1}, Lcom/google/firebase/crashlytics/internal/settings/h/d;->a()Lcom/google/firebase/crashlytics/internal/settings/h/b;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/firebase/crashlytics/internal/settings/h/b;->a:Z

    if-nez v1, :cond_0

    .line 5
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/firebase/crashlytics/d/b;->b(Ljava/lang/String;)V

    .line 6
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/tasks/j;->d(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/g;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/k;->l()V

    return-object p1

    .line 8
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/k;->h:Lcom/google/firebase/crashlytics/internal/common/i;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/i;->v()Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    const-string v1, "Previous sessions could not be finalized."

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/d/b;->k(Ljava/lang/String;)V

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/k;->h:Lcom/google/firebase/crashlytics/internal/common/i;

    invoke-interface {p1}, Lcom/google/firebase/crashlytics/internal/settings/d;->a()Lcom/google/android/gms/tasks/g;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/common/i;->N(Lcom/google/android/gms/tasks/g;)Lcom/google/android/gms/tasks/g;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/k;->l()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    :try_start_2
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    const-string v1, "Crashlytics encountered a problem during asynchronous initialization."

    .line 13
    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/crashlytics/d/b;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    invoke-static {p1}, Lcom/google/android/gms/tasks/j;->d(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/g;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 15
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/k;->l()V

    return-object p1

    :goto_0
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/k;->l()V

    .line 16
    throw p1
.end method

.method private h(Lcom/google/firebase/crashlytics/internal/settings/d;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/firebase/crashlytics/internal/common/k$b;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/crashlytics/internal/common/k$b;-><init>(Lcom/google/firebase/crashlytics/internal/common/k;Lcom/google/firebase/crashlytics/internal/settings/d;)V

    .line 2
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/k;->l:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    const-string v1, "Crashlytics detected incomplete initialization on previous app launch. Will initialize synchronously."

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/d/b;->b(Ljava/lang/String;)V

    const-wide/16 v0, 0x4

    .line 5
    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, v1, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    const-string v1, "Crashlytics timed out during initialization."

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/crashlytics/d/b;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 7
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    const-string v1, "Crashlytics encountered a problem during initialization."

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/crashlytics/d/b;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 8
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    const-string v1, "Crashlytics was interrupted during initialization."

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/crashlytics/d/b;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static i()Ljava/lang/String;
    .locals 1

    const-string v0, "17.4.1"

    return-object v0
.end method

.method static j(Ljava/lang/String;Z)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 1
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object p0

    const-string p1, "Configured not to require a build ID."

    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/d/b;->i(Ljava/lang/String;)V

    return v0

    .line 2
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    const-string p0, "FirebaseCrashlytics"

    const-string p1, "."

    .line 3
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ".     |  | "

    .line 4
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ".     |  |"

    .line 5
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ".   \\ |  | /"

    .line 7
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ".    \\    /"

    .line 8
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ".     \\  /"

    .line 9
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ".      \\/"

    .line 10
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "The Crashlytics build ID is missing. This occurs when Crashlytics tooling is absent from your app\'s build configuration. Please review Crashlytics onboarding instructions and ensure you have a valid Crashlytics account."

    .line 12
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ".      /\\"

    .line 14
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ".     /  \\"

    .line 15
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ".    /    \\"

    .line 16
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ".   / |  | \\"

    .line 17
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/k;->e:Lcom/google/firebase/crashlytics/internal/common/l;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/l;->c()Z

    move-result v0

    return v0
.end method

.method public g(Lcom/google/firebase/crashlytics/internal/settings/d;)Lcom/google/android/gms/tasks/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/crashlytics/internal/settings/d;",
            ")",
            "Lcom/google/android/gms/tasks/g<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/k;->l:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/firebase/crashlytics/internal/common/k$a;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/crashlytics/internal/common/k$a;-><init>(Lcom/google/firebase/crashlytics/internal/common/k;Lcom/google/firebase/crashlytics/internal/settings/d;)V

    invoke-static {v0, v1}, Lcom/google/firebase/crashlytics/internal/common/f0;->b(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1
.end method

.method public k(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/firebase/crashlytics/internal/common/k;->d:J

    sub-long/2addr v0, v2

    .line 2
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/k;->h:Lcom/google/firebase/crashlytics/internal/common/i;

    invoke-virtual {v2, v0, v1, p1}, Lcom/google/firebase/crashlytics/internal/common/i;->T(JLjava/lang/String;)V

    return-void
.end method

.method l()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/k;->m:Lcom/google/firebase/crashlytics/internal/common/g;

    new-instance v1, Lcom/google/firebase/crashlytics/internal/common/k$c;

    invoke-direct {v1, p0}, Lcom/google/firebase/crashlytics/internal/common/k$c;-><init>(Lcom/google/firebase/crashlytics/internal/common/k;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/common/g;->g(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/g;

    return-void
.end method

.method m()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/k;->m:Lcom/google/firebase/crashlytics/internal/common/g;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/g;->b()V

    .line 2
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/k;->e:Lcom/google/firebase/crashlytics/internal/common/l;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/l;->a()Z

    .line 3
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    const-string v1, "Initialization marker file was created."

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/d/b;->i(Ljava/lang/String;)V

    return-void
.end method

.method public n(Lcom/google/firebase/crashlytics/internal/common/a;Lcom/google/firebase/crashlytics/internal/settings/d;)Z
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 1
    iget-object v2, v1, Lcom/google/firebase/crashlytics/internal/common/k;->a:Landroid/content/Context;

    const-string v3, "com.crashlytics.RequireBuildId"

    const/4 v10, 0x1

    .line 2
    invoke-static {v2, v3, v10}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->k(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v15, p1

    .line 3
    iget-object v3, v15, Lcom/google/firebase/crashlytics/internal/common/a;->b:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/google/firebase/crashlytics/internal/common/k;->j(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v25, 0x0

    .line 4
    :try_start_0
    new-instance v14, Lcom/google/firebase/crashlytics/d/j/i;

    iget-object v2, v1, Lcom/google/firebase/crashlytics/internal/common/k;->a:Landroid/content/Context;

    invoke-direct {v14, v2}, Lcom/google/firebase/crashlytics/d/j/i;-><init>(Landroid/content/Context;)V

    .line 5
    new-instance v2, Lcom/google/firebase/crashlytics/internal/common/l;

    const-string v3, "crash_marker"

    invoke-direct {v2, v3, v14}, Lcom/google/firebase/crashlytics/internal/common/l;-><init>(Ljava/lang/String;Lcom/google/firebase/crashlytics/d/j/h;)V

    iput-object v2, v1, Lcom/google/firebase/crashlytics/internal/common/k;->f:Lcom/google/firebase/crashlytics/internal/common/l;

    .line 6
    new-instance v2, Lcom/google/firebase/crashlytics/internal/common/l;

    const-string v3, "initialization_marker"

    invoke-direct {v2, v3, v14}, Lcom/google/firebase/crashlytics/internal/common/l;-><init>(Ljava/lang/String;Lcom/google/firebase/crashlytics/d/j/h;)V

    iput-object v2, v1, Lcom/google/firebase/crashlytics/internal/common/k;->e:Lcom/google/firebase/crashlytics/internal/common/l;

    .line 7
    new-instance v19, Lcom/google/firebase/crashlytics/internal/common/d0;

    invoke-direct/range {v19 .. v19}, Lcom/google/firebase/crashlytics/internal/common/d0;-><init>()V

    .line 8
    new-instance v13, Lcom/google/firebase/crashlytics/internal/common/k$e;

    invoke-direct {v13, v14}, Lcom/google/firebase/crashlytics/internal/common/k$e;-><init>(Lcom/google/firebase/crashlytics/d/j/h;)V

    .line 9
    new-instance v12, Lcom/google/firebase/crashlytics/d/g/b;

    iget-object v2, v1, Lcom/google/firebase/crashlytics/internal/common/k;->a:Landroid/content/Context;

    invoke-direct {v12, v2, v13}, Lcom/google/firebase/crashlytics/d/g/b;-><init>(Landroid/content/Context;Lcom/google/firebase/crashlytics/d/g/b$b;)V

    .line 10
    new-instance v8, Lcom/google/firebase/crashlytics/d/l/a;

    const/16 v2, 0x400

    new-array v3, v10, [Lcom/google/firebase/crashlytics/d/l/d;

    new-instance v4, Lcom/google/firebase/crashlytics/d/l/c;

    const/16 v5, 0xa

    invoke-direct {v4, v5}, Lcom/google/firebase/crashlytics/d/l/c;-><init>(I)V

    aput-object v4, v3, v25

    invoke-direct {v8, v2, v3}, Lcom/google/firebase/crashlytics/d/l/a;-><init>(I[Lcom/google/firebase/crashlytics/d/l/d;)V

    .line 11
    iget-object v2, v1, Lcom/google/firebase/crashlytics/internal/common/k;->a:Landroid/content/Context;

    iget-object v3, v1, Lcom/google/firebase/crashlytics/internal/common/k;->i:Lcom/google/firebase/crashlytics/internal/common/t;

    move-object v4, v14

    move-object/from16 v5, p1

    move-object v6, v12

    move-object/from16 v7, v19

    move-object/from16 v9, p2

    .line 12
    invoke-static/range {v2 .. v9}, Lcom/google/firebase/crashlytics/internal/common/b0;->b(Landroid/content/Context;Lcom/google/firebase/crashlytics/internal/common/t;Lcom/google/firebase/crashlytics/d/j/h;Lcom/google/firebase/crashlytics/internal/common/a;Lcom/google/firebase/crashlytics/d/g/b;Lcom/google/firebase/crashlytics/internal/common/d0;Lcom/google/firebase/crashlytics/d/l/d;Lcom/google/firebase/crashlytics/internal/settings/d;)Lcom/google/firebase/crashlytics/internal/common/b0;

    move-result-object v22

    .line 13
    new-instance v2, Lcom/google/firebase/crashlytics/internal/common/i;

    iget-object v3, v1, Lcom/google/firebase/crashlytics/internal/common/k;->a:Landroid/content/Context;

    iget-object v4, v1, Lcom/google/firebase/crashlytics/internal/common/k;->m:Lcom/google/firebase/crashlytics/internal/common/g;

    iget-object v5, v1, Lcom/google/firebase/crashlytics/internal/common/k;->i:Lcom/google/firebase/crashlytics/internal/common/t;

    iget-object v6, v1, Lcom/google/firebase/crashlytics/internal/common/k;->c:Lcom/google/firebase/crashlytics/internal/common/q;

    iget-object v7, v1, Lcom/google/firebase/crashlytics/internal/common/k;->f:Lcom/google/firebase/crashlytics/internal/common/l;

    iget-object v8, v1, Lcom/google/firebase/crashlytics/internal/common/k;->n:Lcom/google/firebase/crashlytics/d/a;

    iget-object v9, v1, Lcom/google/firebase/crashlytics/internal/common/k;->k:Lcom/google/firebase/crashlytics/d/e/a;

    move-object v11, v2

    move-object/from16 v20, v12

    move-object v12, v3

    move-object v3, v13

    move-object v13, v4

    move-object v4, v14

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v16, v4

    move-object/from16 v17, v7

    move-object/from16 v18, p1

    move-object/from16 v21, v3

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    invoke-direct/range {v11 .. v24}, Lcom/google/firebase/crashlytics/internal/common/i;-><init>(Landroid/content/Context;Lcom/google/firebase/crashlytics/internal/common/g;Lcom/google/firebase/crashlytics/internal/common/t;Lcom/google/firebase/crashlytics/internal/common/q;Lcom/google/firebase/crashlytics/d/j/h;Lcom/google/firebase/crashlytics/internal/common/l;Lcom/google/firebase/crashlytics/internal/common/a;Lcom/google/firebase/crashlytics/internal/common/d0;Lcom/google/firebase/crashlytics/d/g/b;Lcom/google/firebase/crashlytics/d/g/b$b;Lcom/google/firebase/crashlytics/internal/common/b0;Lcom/google/firebase/crashlytics/d/a;Lcom/google/firebase/crashlytics/d/e/a;)V

    iput-object v2, v1, Lcom/google/firebase/crashlytics/internal/common/k;->h:Lcom/google/firebase/crashlytics/internal/common/i;

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/crashlytics/internal/common/k;->e()Z

    move-result v2

    .line 15
    invoke-direct/range {p0 .. p0}, Lcom/google/firebase/crashlytics/internal/common/k;->d()V

    .line 16
    iget-object v3, v1, Lcom/google/firebase/crashlytics/internal/common/k;->h:Lcom/google/firebase/crashlytics/internal/common/i;

    .line 17
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v4

    .line 18
    invoke-virtual {v3, v4, v0}, Lcom/google/firebase/crashlytics/internal/common/i;->s(Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/google/firebase/crashlytics/internal/settings/d;)V

    if-eqz v2, :cond_0

    .line 19
    iget-object v2, v1, Lcom/google/firebase/crashlytics/internal/common/k;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->c(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 20
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v2

    const-string v3, "Crashlytics did not finish previous background initialization. Initializing synchronously."

    .line 21
    invoke-virtual {v2, v3}, Lcom/google/firebase/crashlytics/d/b;->b(Ljava/lang/String;)V

    .line 22
    invoke-direct {v1, v0}, Lcom/google/firebase/crashlytics/internal/common/k;->h(Lcom/google/firebase/crashlytics/internal/settings/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v25

    .line 23
    :cond_0
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    const-string v2, "Successfully configured exception handler."

    invoke-virtual {v0, v2}, Lcom/google/firebase/crashlytics/d/b;->b(Ljava/lang/String;)V

    return v10

    :catch_0
    move-exception v0

    .line 24
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v2

    const-string v3, "Crashlytics was not started due to an exception during initialization"

    .line 25
    invoke-virtual {v2, v3, v0}, Lcom/google/firebase/crashlytics/d/b;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 26
    iput-object v0, v1, Lcom/google/firebase/crashlytics/internal/common/k;->h:Lcom/google/firebase/crashlytics/internal/common/i;

    return v25

    .line 27
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "The Crashlytics build ID is missing. This occurs when Crashlytics tooling is absent from your app\'s build configuration. Please review Crashlytics onboarding instructions and ensure you have a valid Crashlytics account."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
