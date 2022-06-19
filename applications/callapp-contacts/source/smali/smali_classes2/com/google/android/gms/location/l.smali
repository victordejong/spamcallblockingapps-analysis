.class Lcom/google/android/gms/location/l;
.super Lcom/google/android/gms/internal/location/e;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/tasks/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/i<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tasks/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/i<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/location/e;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/location/l;->a:Lcom/google/android/gms/tasks/i;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/location/zzaa;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/location/zzaa;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/location/l;->a:Lcom/google/android/gms/tasks/i;

    .line 1002
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    .line 1003
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/i;->a(Ljava/lang/Object;)V

    return-void

    .line 1004
    :cond_0
    new-instance v1, Lcom/google/android/gms/common/api/ApiException;

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/i;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
