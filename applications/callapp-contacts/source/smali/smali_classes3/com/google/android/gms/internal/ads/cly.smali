.class public final Lcom/google/android/gms/internal/ads/cly;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cmh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RequestComponentT::",
        "Lcom/google/android/gms/internal/ads/aqx<",
        "TAdT;>;AdT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/cmh<",
        "TRequestComponentT;TAdT;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/aqx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TRequestComponentT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final declared-synchronized b()Lcom/google/android/gms/internal/ads/aqx;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TRequestComponentT;"
        }
    .end annotation

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cly;->a:Lcom/google/android/gms/internal/ads/aqx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/google/android/gms/internal/ads/cmm;Lcom/google/android/gms/internal/ads/cmj;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/cmm;",
            "Lcom/google/android/gms/internal/ads/cmj<",
            "TRequestComponentT;>;)",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "TAdT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 3
    :try_start_0
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/cmm;->b:Lcom/google/android/gms/internal/ads/cmk;

    .line 4
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/cmj;->a(Lcom/google/android/gms/internal/ads/cmk;)Lcom/google/android/gms/internal/ads/aqw;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/aqw;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/aqx;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cly;->a:Lcom/google/android/gms/internal/ads/aqx;

    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/aqx;->c()Lcom/google/android/gms/internal/ads/aor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/aor;->b()Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cly;->b()Lcom/google/android/gms/internal/ads/aqx;

    move-result-object v0

    return-object v0
.end method
