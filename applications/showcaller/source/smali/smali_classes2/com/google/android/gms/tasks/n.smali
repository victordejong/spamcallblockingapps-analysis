.class final Lcom/google/android/gms/tasks/n;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tasks@@17.2.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic d:Lcom/google/android/gms/tasks/g;

.field final synthetic e:Lcom/google/android/gms/tasks/o;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tasks/o;Lcom/google/android/gms/tasks/g;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tasks/n;->e:Lcom/google/android/gms/tasks/o;

    iput-object p2, p0, Lcom/google/android/gms/tasks/n;->d:Lcom/google/android/gms/tasks/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/tasks/n;->d:Lcom/google/android/gms/tasks/g;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/g;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tasks/n;->e:Lcom/google/android/gms/tasks/o;

    invoke-static {v0}, Lcom/google/android/gms/tasks/o;->a(Lcom/google/android/gms/tasks/o;)Lcom/google/android/gms/tasks/f0;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/f0;->x()Z

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tasks/n;->e:Lcom/google/android/gms/tasks/o;

    invoke-static {v0}, Lcom/google/android/gms/tasks/o;->c(Lcom/google/android/gms/tasks/o;)Lcom/google/android/gms/tasks/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/tasks/n;->d:Lcom/google/android/gms/tasks/g;

    .line 3
    invoke-interface {v0, v1}, Lcom/google/android/gms/tasks/a;->a(Lcom/google/android/gms/tasks/g;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/tasks/RuntimeExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/google/android/gms/tasks/n;->e:Lcom/google/android/gms/tasks/o;

    invoke-static {v1}, Lcom/google/android/gms/tasks/o;->a(Lcom/google/android/gms/tasks/o;)Lcom/google/android/gms/tasks/f0;

    move-result-object v1

    .line 4
    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/f0;->t(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/tasks/n;->e:Lcom/google/android/gms/tasks/o;

    invoke-static {v1}, Lcom/google/android/gms/tasks/o;->a(Lcom/google/android/gms/tasks/o;)Lcom/google/android/gms/tasks/f0;

    move-result-object v1

    .line 6
    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/f0;->v(Ljava/lang/Exception;)V

    return-void

    :catch_1
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Exception;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/tasks/n;->e:Lcom/google/android/gms/tasks/o;

    invoke-static {v1}, Lcom/google/android/gms/tasks/o;->a(Lcom/google/android/gms/tasks/o;)Lcom/google/android/gms/tasks/f0;

    move-result-object v1

    .line 8
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/f0;->v(Ljava/lang/Exception;)V

    return-void

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/tasks/n;->e:Lcom/google/android/gms/tasks/o;

    invoke-static {v1}, Lcom/google/android/gms/tasks/o;->a(Lcom/google/android/gms/tasks/o;)Lcom/google/android/gms/tasks/f0;

    move-result-object v1

    .line 10
    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/f0;->v(Ljava/lang/Exception;)V

    return-void
.end method
