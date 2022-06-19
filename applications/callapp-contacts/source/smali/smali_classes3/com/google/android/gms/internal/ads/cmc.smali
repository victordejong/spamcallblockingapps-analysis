.class public final Lcom/google/android/gms/internal/ads/cmc;
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
.field private final a:Lcom/google/android/gms/internal/ads/cmh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/cmh<",
            "TRequestComponentT;TAdT;>;"
        }
    .end annotation
.end field

.field private b:Lcom/google/android/gms/internal/ads/aqx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TRequestComponentT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/cmh;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/cmh<",
            "TRequestComponentT;TAdT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cmc;->a:Lcom/google/android/gms/internal/ads/cmh;

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

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cmc;->b:Lcom/google/android/gms/internal/ads/aqx;
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
    .locals 1
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

    .line 5
    :try_start_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/cmm;->a:Lcom/google/android/gms/internal/ads/zzauj;

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/cmm;->b:Lcom/google/android/gms/internal/ads/cmk;

    .line 7
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/cmj;->a(Lcom/google/android/gms/internal/ads/cmk;)Lcom/google/android/gms/internal/ads/aqw;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/aqw;->b()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/aqx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cmc;->b:Lcom/google/android/gms/internal/ads/aqx;

    .line 8
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/aqx;->c()Lcom/google/android/gms/internal/ads/aor;

    move-result-object p2

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/cmm;->a:Lcom/google/android/gms/internal/ads/zzauj;

    .line 1046
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/aor;->a(Lcom/google/android/gms/internal/ads/zzauj;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/aor;->a(Lcom/google/android/gms/internal/ads/dbt;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    return-object p1

    .line 9
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cmc;->a:Lcom/google/android/gms/internal/ads/cmh;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/cmh;->a(Lcom/google/android/gms/internal/ads/cmm;Lcom/google/android/gms/internal/ads/cmj;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    .line 10
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/cmc;->a:Lcom/google/android/gms/internal/ads/cmh;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/cmh;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/aqx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cmc;->b:Lcom/google/android/gms/internal/ads/aqx;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cmc;->b()Lcom/google/android/gms/internal/ads/aqx;

    move-result-object v0

    return-object v0
.end method
