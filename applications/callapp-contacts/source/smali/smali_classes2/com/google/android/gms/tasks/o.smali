.class final Lcom/google/android/gms/tasks/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/tasks/h;

.field final synthetic b:Lcom/google/android/gms/tasks/p;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tasks/p;Lcom/google/android/gms/tasks/h;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tasks/o;->b:Lcom/google/android/gms/tasks/p;

    iput-object p2, p0, Lcom/google/android/gms/tasks/o;->a:Lcom/google/android/gms/tasks/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/tasks/o;->a:Lcom/google/android/gms/tasks/h;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/h;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tasks/o;->b:Lcom/google/android/gms/tasks/p;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/tasks/p;->b:Lcom/google/android/gms/tasks/ah;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/ah;->f()Z

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tasks/o;->b:Lcom/google/android/gms/tasks/p;

    .line 2000
    iget-object v0, v0, Lcom/google/android/gms/tasks/p;->a:Lcom/google/android/gms/tasks/b;

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/tasks/o;->a:Lcom/google/android/gms/tasks/h;

    .line 3
    invoke-interface {v0, v1}, Lcom/google/android/gms/tasks/b;->then(Lcom/google/android/gms/tasks/h;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/tasks/RuntimeExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/google/android/gms/tasks/o;->b:Lcom/google/android/gms/tasks/p;

    .line 3000
    iget-object v1, v1, Lcom/google/android/gms/tasks/p;->b:Lcom/google/android/gms/tasks/ah;

    .line 8
    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/ah;->a(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/tasks/o;->b:Lcom/google/android/gms/tasks/p;

    .line 5000
    iget-object v1, v1, Lcom/google/android/gms/tasks/p;->b:Lcom/google/android/gms/tasks/ah;

    .line 4
    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/ah;->a(Ljava/lang/Exception;)V

    return-void

    :catch_1
    move-exception v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/RuntimeExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Exception;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/tasks/o;->b:Lcom/google/android/gms/tasks/p;

    .line 4000
    iget-object v1, v1, Lcom/google/android/gms/tasks/p;->b:Lcom/google/android/gms/tasks/ah;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/RuntimeExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/ah;->a(Ljava/lang/Exception;)V

    return-void

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/tasks/o;->b:Lcom/google/android/gms/tasks/p;

    .line 6000
    iget-object v1, v1, Lcom/google/android/gms/tasks/p;->b:Lcom/google/android/gms/tasks/ah;

    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/ah;->a(Ljava/lang/Exception;)V

    return-void
.end method
