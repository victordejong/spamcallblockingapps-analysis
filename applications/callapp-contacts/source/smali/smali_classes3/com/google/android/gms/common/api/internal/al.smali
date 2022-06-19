.class final Lcom/google/android/gms/common/api/internal/al;
.super Lcom/google/android/gms/internal/base/j;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/internal/i;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/i;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/al;->a:Lcom/google/android/gms/common/api/internal/i;

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/base/j;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/common/internal/o;->b(Z)V

    .line 2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/api/internal/i$b;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/al;->a:Lcom/google/android/gms/common/api/internal/i;

    .line 3
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/i;->a:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 1001
    invoke-interface {p1}, Lcom/google/android/gms/common/api/internal/i$b;->a()V

    return-void

    .line 1002
    :cond_1
    :try_start_0
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/internal/i$b;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1003
    invoke-interface {p1}, Lcom/google/android/gms/common/api/internal/i$b;->a()V

    .line 1004
    throw v0
.end method
