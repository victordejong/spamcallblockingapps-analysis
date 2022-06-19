.class public final Lcom/google/android/gms/location/h;
.super Lcom/google/android/gms/location/m;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/internal/i;

.field final synthetic b:Lcom/google/android/gms/location/b;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/location/b;Lcom/google/android/gms/common/api/internal/i;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/h;->b:Lcom/google/android/gms/location/b;

    iput-object p2, p0, Lcom/google/android/gms/location/h;->a:Lcom/google/android/gms/common/api/internal/i;

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/location/m;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/location/p;

    check-cast p2, Lcom/google/android/gms/tasks/i;

    .line 1000
    iget-boolean v0, p0, Lcom/google/android/gms/location/m;->c:Z

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/location/h;->b:Lcom/google/android/gms/location/b;

    new-instance v1, Lcom/google/android/gms/location/i;

    .line 2
    invoke-direct {v1, v0, p2}, Lcom/google/android/gms/location/i;-><init>(Lcom/google/android/gms/location/b;Lcom/google/android/gms/tasks/i;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/location/h;->a:Lcom/google/android/gms/common/api/internal/i;

    .line 2000
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/i;->b:Lcom/google/android/gms/common/api/internal/i$a;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/location/p;->a(Lcom/google/android/gms/common/api/internal/i$a;Lcom/google/android/gms/internal/location/f;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/i;->b(Ljava/lang/Exception;)Z

    :cond_0
    return-void
.end method
