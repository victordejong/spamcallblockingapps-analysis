.class final Lcom/google/android/play/core/internal/k;
.super Lcom/google/android/play/core/internal/b;


# instance fields
.field final synthetic e:Landroid/os/IBinder;

.field final synthetic f:Lcom/google/android/play/core/internal/m;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/internal/m;Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/internal/k;->f:Lcom/google/android/play/core/internal/m;

    iput-object p2, p0, Lcom/google/android/play/core/internal/k;->e:Landroid/os/IBinder;

    invoke-direct {p0}, Lcom/google/android/play/core/internal/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/play/core/internal/k;->f:Lcom/google/android/play/core/internal/m;

    iget-object v0, v0, Lcom/google/android/play/core/internal/m;->a:Lcom/google/android/play/core/internal/n;

    invoke-static {v0}, Lcom/google/android/play/core/internal/n;->i(Lcom/google/android/play/core/internal/n;)Lcom/google/android/play/core/internal/j;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/play/core/internal/k;->e:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Lcom/google/android/play/core/internal/j;->a(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IInterface;

    invoke-static {v0, v1}, Lcom/google/android/play/core/internal/n;->o(Lcom/google/android/play/core/internal/n;Landroid/os/IInterface;)V

    iget-object v0, p0, Lcom/google/android/play/core/internal/k;->f:Lcom/google/android/play/core/internal/m;

    iget-object v0, v0, Lcom/google/android/play/core/internal/m;->a:Lcom/google/android/play/core/internal/n;

    invoke-static {v0}, Lcom/google/android/play/core/internal/n;->j(Lcom/google/android/play/core/internal/n;)V

    iget-object v0, p0, Lcom/google/android/play/core/internal/k;->f:Lcom/google/android/play/core/internal/m;

    iget-object v0, v0, Lcom/google/android/play/core/internal/m;->a:Lcom/google/android/play/core/internal/n;

    invoke-static {v0}, Lcom/google/android/play/core/internal/n;->q(Lcom/google/android/play/core/internal/n;)V

    iget-object v0, p0, Lcom/google/android/play/core/internal/k;->f:Lcom/google/android/play/core/internal/m;

    iget-object v0, v0, Lcom/google/android/play/core/internal/m;->a:Lcom/google/android/play/core/internal/n;

    invoke-static {v0}, Lcom/google/android/play/core/internal/n;->k(Lcom/google/android/play/core/internal/n;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/play/core/internal/k;->f:Lcom/google/android/play/core/internal/m;

    iget-object v0, v0, Lcom/google/android/play/core/internal/m;->a:Lcom/google/android/play/core/internal/n;

    invoke-static {v0}, Lcom/google/android/play/core/internal/n;->k(Lcom/google/android/play/core/internal/n;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
