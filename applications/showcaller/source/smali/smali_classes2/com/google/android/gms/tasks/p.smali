.class final Lcom/google/android/gms/tasks/p;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tasks@@17.2.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic d:Lcom/google/android/gms/tasks/g;

.field final synthetic e:Lcom/google/android/gms/tasks/q;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tasks/q;Lcom/google/android/gms/tasks/g;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tasks/p;->e:Lcom/google/android/gms/tasks/q;

    iput-object p2, p0, Lcom/google/android/gms/tasks/p;->d:Lcom/google/android/gms/tasks/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tasks/p;->e:Lcom/google/android/gms/tasks/q;

    invoke-static {v0}, Lcom/google/android/gms/tasks/q;->d(Lcom/google/android/gms/tasks/q;)Lcom/google/android/gms/tasks/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/tasks/p;->d:Lcom/google/android/gms/tasks/g;

    .line 1
    invoke-interface {v0, v1}, Lcom/google/android/gms/tasks/a;->a(Lcom/google/android/gms/tasks/g;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tasks/g;
    :try_end_0
    .catch Lcom/google/android/gms/tasks/RuntimeExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tasks/p;->e:Lcom/google/android/gms/tasks/q;

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Continuation returned null"

    .line 2
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/q;->a(Ljava/lang/Exception;)V

    return-void

    .line 3
    :cond_0
    sget-object v1, Lcom/google/android/gms/tasks/i;->b:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/google/android/gms/tasks/p;->e:Lcom/google/android/gms/tasks/q;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/g;->g(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/e;)Lcom/google/android/gms/tasks/g;

    iget-object v2, p0, Lcom/google/android/gms/tasks/p;->e:Lcom/google/android/gms/tasks/q;

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/g;->e(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/d;)Lcom/google/android/gms/tasks/g;

    iget-object v2, p0, Lcom/google/android/gms/tasks/p;->e:Lcom/google/android/gms/tasks/q;

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/g;->a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/b;)Lcom/google/android/gms/tasks/g;

    return-void

    :catch_0
    move-exception v0

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/tasks/p;->e:Lcom/google/android/gms/tasks/q;

    invoke-static {v1}, Lcom/google/android/gms/tasks/q;->e(Lcom/google/android/gms/tasks/q;)Lcom/google/android/gms/tasks/f0;

    move-result-object v1

    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/f0;->v(Ljava/lang/Exception;)V

    return-void

    :catch_1
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Exception;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/tasks/p;->e:Lcom/google/android/gms/tasks/q;

    invoke-static {v1}, Lcom/google/android/gms/tasks/q;->e(Lcom/google/android/gms/tasks/q;)Lcom/google/android/gms/tasks/f0;

    move-result-object v1

    .line 9
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/f0;->v(Ljava/lang/Exception;)V

    return-void

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/tasks/p;->e:Lcom/google/android/gms/tasks/q;

    invoke-static {v1}, Lcom/google/android/gms/tasks/q;->e(Lcom/google/android/gms/tasks/q;)Lcom/google/android/gms/tasks/f0;

    move-result-object v1

    .line 11
    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/f0;->v(Ljava/lang/Exception;)V

    return-void
.end method
