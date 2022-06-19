.class public final Lcom/google/android/gms/internal/location/k;
.super Lcom/google/android/gms/location/s;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/common/api/internal/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/i<",
            "Lcom/google/android/gms/location/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/i<",
            "Lcom/google/android/gms/location/d;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/location/s;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/location/k;->a:Lcom/google/android/gms/common/api/internal/i;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/location/k;->a:Lcom/google/android/gms/common/api/internal/i;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/i;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/google/android/gms/location/LocationAvailability;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/location/k;->a:Lcom/google/android/gms/common/api/internal/i;

    .line 1
    new-instance v1, Lcom/google/android/gms/internal/location/j;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/location/j;-><init>(Lcom/google/android/gms/internal/location/k;Lcom/google/android/gms/location/LocationAvailability;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/i;->a(Lcom/google/android/gms/common/api/internal/i$b;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/location/LocationResult;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/location/k;->a:Lcom/google/android/gms/common/api/internal/i;

    .line 1
    new-instance v1, Lcom/google/android/gms/internal/location/i;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/location/i;-><init>(Lcom/google/android/gms/internal/location/k;Lcom/google/android/gms/location/LocationResult;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/i;->a(Lcom/google/android/gms/common/api/internal/i$b;)V

    return-void
.end method
