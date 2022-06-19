.class final Lcom/google/android/play/core/internal/e;
.super Lcom/google/android/play/core/internal/b;
.source ""


# instance fields
.field final synthetic c:Lcom/google/android/play/core/internal/n;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/internal/n;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/internal/e;->c:Lcom/google/android/play/core/internal/n;

    invoke-direct {p0}, Lcom/google/android/play/core/internal/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/play/core/internal/e;->c:Lcom/google/android/play/core/internal/n;

    invoke-static {v0}, Lcom/google/android/play/core/internal/n;->e(Lcom/google/android/play/core/internal/n;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/play/core/internal/e;->c:Lcom/google/android/play/core/internal/n;

    invoke-static {v0}, Lcom/google/android/play/core/internal/n;->f(Lcom/google/android/play/core/internal/n;)Lcom/google/android/play/core/internal/a;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Unbind from service."

    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/core/internal/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/play/core/internal/e;->c:Lcom/google/android/play/core/internal/n;

    invoke-static {v0}, Lcom/google/android/play/core/internal/n;->h(Lcom/google/android/play/core/internal/n;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/internal/e;->c:Lcom/google/android/play/core/internal/n;

    invoke-static {v1}, Lcom/google/android/play/core/internal/n;->g(Lcom/google/android/play/core/internal/n;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/google/android/play/core/internal/e;->c:Lcom/google/android/play/core/internal/n;

    invoke-static {v0}, Lcom/google/android/play/core/internal/n;->q(Lcom/google/android/play/core/internal/n;)V

    iget-object v0, p0, Lcom/google/android/play/core/internal/e;->c:Lcom/google/android/play/core/internal/n;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/play/core/internal/n;->o(Lcom/google/android/play/core/internal/n;Landroid/os/IInterface;)V

    iget-object v0, p0, Lcom/google/android/play/core/internal/e;->c:Lcom/google/android/play/core/internal/n;

    invoke-static {v0}, Lcom/google/android/play/core/internal/n;->p(Lcom/google/android/play/core/internal/n;)V

    :cond_0
    return-void
.end method
