.class final synthetic Lcom/google/android/play/core/internal/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field private final a:Lcom/google/android/play/core/internal/r;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/internal/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/internal/j;->a:Lcom/google/android/play/core/internal/r;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/play/core/internal/j;->a:Lcom/google/android/play/core/internal/r;

    .line 1000
    iget-object v1, v0, Lcom/google/android/play/core/internal/r;->a:Lcom/google/android/play/core/internal/h;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "reportBinderDeath"

    invoke-virtual {v1, v4, v3}, Lcom/google/android/play/core/internal/h;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/google/android/play/core/internal/r;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/play/core/internal/m;

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/google/android/play/core/internal/r;->a:Lcom/google/android/play/core/internal/h;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, v0, Lcom/google/android/play/core/internal/r;->b:Ljava/lang/String;

    aput-object v4, v3, v2

    const-string v2, "%s : Binder has died."

    invoke-virtual {v1, v2, v3}, Lcom/google/android/play/core/internal/h;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/google/android/play/core/internal/r;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/play/core/internal/i;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xf

    if-ge v3, v4, :cond_0

    new-instance v3, Landroid/os/RemoteException;

    invoke-direct {v3}, Landroid/os/RemoteException;-><init>()V

    goto :goto_1

    :cond_0
    new-instance v3, Landroid/os/RemoteException;

    iget-object v4, v0, Lcom/google/android/play/core/internal/r;->b:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, " : Binder has died."

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v2, v3}, Lcom/google/android/play/core/internal/i;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/google/android/play/core/internal/r;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    :cond_2
    iget-object v0, v0, Lcom/google/android/play/core/internal/r;->a:Lcom/google/android/play/core/internal/h;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "calling onBinderDied"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/core/internal/h;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
