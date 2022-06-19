.class public La5/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Le5/v;

.field public final synthetic c:Ll5/c;


# direct methods
.method public constructor <init>(ZLe5/v;Ll5/c;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, La5/d;->a:Z

    iput-object p2, p0, La5/d;->b:Le5/v;

    iput-object p3, p0, La5/d;->c:Ll5/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, La5/d;->a:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, La5/d;->b:Le5/v;

    iget-object v1, p0, La5/d;->c:Ll5/c;

    .line 3
    iget-object v2, v0, Le5/v;->j:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Le5/t;

    invoke-direct {v3, v0, v1}, Le5/t;-><init>(Le5/v;Ll5/d;)V

    sget-object v0, Le5/l0;->a:Ljava/util/concurrent/ExecutorService;

    .line 4
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 5
    new-instance v1, Le5/k0;

    invoke-direct {v1, v3, v0}, Le5/k0;-><init>(Ljava/util/concurrent/Callable;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-interface {v2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
