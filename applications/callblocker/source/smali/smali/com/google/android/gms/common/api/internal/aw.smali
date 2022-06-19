.class abstract Lcom/google/android/gms/common/api/internal/aw;
.super Lcom/google/android/gms/common/api/internal/x;
.source "com.google.android.gms:play-services-base@@17.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/common/api/internal/x;"
    }
.end annotation


# instance fields
.field protected final a:Lcom/google/android/gms/tasks/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/h",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/google/android/gms/tasks/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/tasks/h",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/x;-><init>(I)V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/aw;->a:Lcom/google/android/gms/tasks/h;

    .line 3
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    .prologue
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aw;->a:Lcom/google/android/gms/tasks/h;

    new-instance v1, Lcom/google/android/gms/common/api/ApiException;

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/h;->b(Ljava/lang/Exception;)Z

    .line 5
    return-void
.end method

.method public a(Lcom/google/android/gms/common/api/internal/bg;Z)V
    .locals 0

    .prologue
    .line 8
    return-void
.end method

.method public a(Ljava/lang/RuntimeException;)V
    .locals 1

    .prologue
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aw;->a:Lcom/google/android/gms/tasks/h;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/h;->b(Ljava/lang/Exception;)Z

    .line 7
    return-void
.end method

.method public final c(Lcom/google/android/gms/common/api/internal/f$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/f$a",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 9
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/aw;->d(Lcom/google/android/gms/common/api/internal/f$a;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 19
    :goto_0
    return-void

    .line 11
    :catch_0
    move-exception v0

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/aj;->a(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/api/internal/aj;->a(Lcom/google/android/gms/common/api/Status;)V

    .line 13
    throw v0

    .line 14
    :catch_1
    move-exception v0

    .line 15
    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/aj;->a(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/aj;->a(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    .line 17
    :catch_2
    move-exception v0

    .line 18
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/aj;->a(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method protected abstract d(Lcom/google/android/gms/common/api/internal/f$a;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/f$a",
            "<*>;)V"
        }
    .end annotation
.end method
