.class public Le5/v;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le5/v$b;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le5/a0;

.field public final c:J

.field public d:Landroidx/appcompat/widget/z;

.field public e:Landroidx/appcompat/widget/z;

.field public f:Le5/p;

.field public final g:Le5/e0;

.field public final h:Ld5/b;

.field public final i:Lc5/a;

.field public final j:Ljava/util/concurrent/ExecutorService;

.field public final k:Le5/f;

.field public final l:Lb5/a;


# direct methods
.method public constructor <init>(Lt4/c;Le5/e0;Lb5/a;Le5/a0;Ld5/b;Lc5/a;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p4, p0, Le5/v;->b:Le5/a0;

    .line 3
    invoke-virtual {p1}, Lt4/c;->a()V

    .line 4
    iget-object p1, p1, Lt4/c;->a:Landroid/content/Context;

    .line 5
    iput-object p1, p0, Le5/v;->a:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Le5/v;->g:Le5/e0;

    .line 7
    iput-object p3, p0, Le5/v;->l:Lb5/a;

    .line 8
    iput-object p5, p0, Le5/v;->h:Ld5/b;

    .line 9
    iput-object p6, p0, Le5/v;->i:Lc5/a;

    .line 10
    iput-object p7, p0, Le5/v;->j:Ljava/util/concurrent/ExecutorService;

    .line 11
    new-instance p1, Le5/f;

    invoke-direct {p1, p7}, Le5/f;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Le5/v;->k:Le5/f;

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Le5/v;->c:J

    return-void
.end method

.method public static a(Le5/v;Ll5/d;)Lcom/google/android/gms/tasks/Task;
    .locals 3

    .line 1
    iget-object v0, p0, Le5/v;->k:Le5/f;

    invoke-virtual {v0}, Le5/f;->a()V

    .line 2
    iget-object v0, p0, Le5/v;->d:Landroidx/appcompat/widget/z;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :try_start_0
    invoke-virtual {v0}, Landroidx/appcompat/widget/z;->a()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    const-string v1, "FirebaseCrashlytics"

    .line 4
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    :try_start_1
    iget-object v0, p0, Le5/v;->h:Ld5/b;

    new-instance v2, Le5/s;

    invoke-direct {v2, p0}, Le5/s;-><init>(Le5/v;)V

    invoke-interface {v0, v2}, Ld5/b;->d(Ld5/a;)V

    .line 6
    check-cast p1, Ll5/c;

    invoke-virtual {p1}, Ll5/c;->b()Lm5/d;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Lm5/d;->b()Lm5/b;

    move-result-object v0

    iget-boolean v0, v0, Lm5/b;->a:Z

    if-nez v0, :cond_0

    const/4 p1, 0x3

    .line 8
    invoke-static {v1, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 9
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Collection of crash reports disabled in Crashlytics settings."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Le5/v;->f:Le5/p;

    invoke-virtual {v0}, Le5/p;->e()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Previous sessions could not be finalized."

    const/4 v2, 0x0

    .line 11
    invoke-static {v1, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12
    :cond_1
    iget-object v0, p0, Le5/v;->f:Le5/p;

    .line 13
    iget-object p1, p1, Ll5/c;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 14
    invoke-virtual {v0, p1}, Le5/p;->h(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 15
    :try_start_2
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 16
    :goto_0
    invoke-virtual {p0}, Le5/v;->b()V

    return-object p1

    :goto_1
    invoke-virtual {p0}, Le5/v;->b()V

    .line 17
    throw p1
.end method


# virtual methods
.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Le5/v;->k:Le5/f;

    new-instance v1, Le5/v$a;

    invoke-direct {v1, p0}, Le5/v$a;-><init>(Le5/v;)V

    invoke-virtual {v0, v1}, Le5/f;->b(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
