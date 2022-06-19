.class public Le5/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/google/android/gms/tasks/Task<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Boolean;

.field public final synthetic b:Le5/p$a;


# direct methods
.method public constructor <init>(Le5/p$a;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le5/o;->b:Le5/p$a;

    iput-object p2, p0, Le5/o;->a:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le5/o;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "FirebaseCrashlytics"

    const/4 v2, 0x0

    if-nez v0, :cond_3

    const/4 v0, 0x2

    .line 2
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 3
    iget-object v0, p0, Le5/o;->b:Le5/p$a;

    iget-object v0, v0, Le5/p$a;->b:Le5/p;

    .line 4
    sget-object v1, Le5/i;->b:Le5/i;

    .line 5
    invoke-virtual {v0}, Le5/p;->g()Ljava/io/File;

    move-result-object v0

    .line 6
    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/io/File;

    .line 7
    :cond_0
    array-length v3, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v0, v1

    .line 8
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Le5/o;->b:Le5/p$a;

    iget-object v0, v0, Le5/p$a;->b:Le5/p;

    .line 10
    iget-object v0, v0, Le5/p;->l:Le5/h0;

    .line 11
    iget-object v0, v0, Le5/h0;->b:Lj5/f;

    .line 12
    invoke-virtual {v0}, Lj5/f;->c()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 13
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 14
    :cond_2
    iget-object v0, p0, Le5/o;->b:Le5/p$a;

    iget-object v0, v0, Le5/p$a;->b:Le5/p;

    iget-object v0, v0, Le5/p;->p:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    .line 15
    invoke-static {v2}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    goto :goto_2

    :cond_3
    const/4 v0, 0x3

    .line 16
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 17
    iget-object v0, p0, Le5/o;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 18
    iget-object v1, p0, Le5/o;->b:Le5/p$a;

    iget-object v1, v1, Le5/p$a;->b:Le5/p;

    .line 19
    iget-object v1, v1, Le5/p;->b:Le5/a0;

    .line 20
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_4

    .line 21
    iget-object v0, v1, Le5/a0;->g:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    .line 22
    iget-object v0, p0, Le5/o;->b:Le5/p$a;

    iget-object v1, v0, Le5/p$a;->b:Le5/p;

    .line 23
    iget-object v1, v1, Le5/p;->d:Le5/f;

    .line 24
    iget-object v1, v1, Le5/f;->a:Ljava/util/concurrent/Executor;

    .line 25
    iget-object v0, v0, Le5/p$a;->a:Lcom/google/android/gms/tasks/Task;

    new-instance v2, Le5/n;

    invoke-direct {v2, p0, v1}, Le5/n;-><init>(Le5/o;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    :goto_2
    return-object v0

    .line 26
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "An invalid data collection token was used."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
