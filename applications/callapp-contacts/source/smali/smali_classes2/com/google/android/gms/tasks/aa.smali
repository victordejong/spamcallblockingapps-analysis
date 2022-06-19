.class final Lcom/google/android/gms/tasks/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/tasks/h;

.field final synthetic b:Lcom/google/android/gms/tasks/ab;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tasks/ab;Lcom/google/android/gms/tasks/h;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tasks/aa;->b:Lcom/google/android/gms/tasks/ab;

    iput-object p2, p0, Lcom/google/android/gms/tasks/aa;->a:Lcom/google/android/gms/tasks/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tasks/aa;->b:Lcom/google/android/gms/tasks/ab;

    invoke-static {v0}, Lcom/google/android/gms/tasks/ab;->a(Lcom/google/android/gms/tasks/ab;)Lcom/google/android/gms/tasks/g;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/tasks/aa;->a:Lcom/google/android/gms/tasks/h;

    .line 1
    invoke-virtual {v1}, Lcom/google/android/gms/tasks/h;->d()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/tasks/g;->then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/h;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/tasks/RuntimeExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tasks/aa;->b:Lcom/google/android/gms/tasks/ab;

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Continuation returned null"

    .line 7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/ab;->onFailure(Ljava/lang/Exception;)V

    return-void

    .line 8
    :cond_0
    sget-object v1, Lcom/google/android/gms/tasks/j;->b:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/google/android/gms/tasks/aa;->b:Lcom/google/android/gms/tasks/ab;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/h;->a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/f;)Lcom/google/android/gms/tasks/h;

    sget-object v1, Lcom/google/android/gms/tasks/j;->b:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/google/android/gms/tasks/aa;->b:Lcom/google/android/gms/tasks/ab;

    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/h;->a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/e;)Lcom/google/android/gms/tasks/h;

    sget-object v1, Lcom/google/android/gms/tasks/j;->b:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/google/android/gms/tasks/aa;->b:Lcom/google/android/gms/tasks/ab;

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/h;->a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/c;)Lcom/google/android/gms/tasks/h;

    return-void

    :catch_0
    move-exception v0

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/tasks/aa;->b:Lcom/google/android/gms/tasks/ab;

    .line 2
    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/ab;->onFailure(Ljava/lang/Exception;)V

    return-void

    .line 5
    :catch_1
    iget-object v0, p0, Lcom/google/android/gms/tasks/aa;->b:Lcom/google/android/gms/tasks/ab;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/ab;->a()V

    return-void

    :catch_2
    move-exception v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/RuntimeExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Exception;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/tasks/aa;->b:Lcom/google/android/gms/tasks/ab;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/RuntimeExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/ab;->onFailure(Ljava/lang/Exception;)V

    return-void

    .line 2
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/tasks/aa;->b:Lcom/google/android/gms/tasks/ab;

    .line 6
    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/ab;->onFailure(Ljava/lang/Exception;)V

    return-void
.end method
