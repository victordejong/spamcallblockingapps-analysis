.class final Lcom/google/android/play/core/internal/o;
.super Lcom/google/android/play/core/internal/i;


# instance fields
.field final synthetic a:Landroid/os/IBinder;

.field final synthetic b:Lcom/google/android/play/core/internal/q;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/internal/q;Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/internal/o;->b:Lcom/google/android/play/core/internal/q;

    iput-object p2, p0, Lcom/google/android/play/core/internal/o;->a:Landroid/os/IBinder;

    invoke-direct {p0}, Lcom/google/android/play/core/internal/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/play/core/internal/o;->b:Lcom/google/android/play/core/internal/q;

    iget-object v0, v0, Lcom/google/android/play/core/internal/q;->a:Lcom/google/android/play/core/internal/r;

    invoke-static {v0}, Lcom/google/android/play/core/internal/r;->e(Lcom/google/android/play/core/internal/r;)Lcom/google/android/play/core/internal/n;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/play/core/internal/o;->a:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Lcom/google/android/play/core/internal/n;->a(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IInterface;

    invoke-static {v0, v1}, Lcom/google/android/play/core/internal/r;->a(Lcom/google/android/play/core/internal/r;Landroid/os/IInterface;)V

    iget-object v0, p0, Lcom/google/android/play/core/internal/o;->b:Lcom/google/android/play/core/internal/q;

    iget-object v0, v0, Lcom/google/android/play/core/internal/q;->a:Lcom/google/android/play/core/internal/r;

    invoke-static {v0}, Lcom/google/android/play/core/internal/r;->f(Lcom/google/android/play/core/internal/r;)V

    iget-object v0, p0, Lcom/google/android/play/core/internal/o;->b:Lcom/google/android/play/core/internal/q;

    iget-object v0, v0, Lcom/google/android/play/core/internal/q;->a:Lcom/google/android/play/core/internal/r;

    invoke-static {v0}, Lcom/google/android/play/core/internal/r;->j(Lcom/google/android/play/core/internal/r;)V

    iget-object v0, p0, Lcom/google/android/play/core/internal/o;->b:Lcom/google/android/play/core/internal/q;

    iget-object v0, v0, Lcom/google/android/play/core/internal/q;->a:Lcom/google/android/play/core/internal/r;

    invoke-static {v0}, Lcom/google/android/play/core/internal/r;->g(Lcom/google/android/play/core/internal/r;)Ljava/util/List;

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
    iget-object v0, p0, Lcom/google/android/play/core/internal/o;->b:Lcom/google/android/play/core/internal/q;

    iget-object v0, v0, Lcom/google/android/play/core/internal/q;->a:Lcom/google/android/play/core/internal/r;

    invoke-static {v0}, Lcom/google/android/play/core/internal/r;->g(Lcom/google/android/play/core/internal/r;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
