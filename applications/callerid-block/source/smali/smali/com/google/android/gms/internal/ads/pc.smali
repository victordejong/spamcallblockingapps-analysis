.class public final Lcom/google/android/gms/internal/ads/pc;
.super Lcom/google/android/gms/internal/ads/mp;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/mp<",
        "Lcom/google/android/gms/internal/ads/wc;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:Ljava/lang/Object;

.field private final d:Lcom/google/android/gms/internal/ads/uc;

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/uc;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/mp;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/pc;->c:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/pc;->d:Lcom/google/android/gms/internal/ads/uc;

    return-void
.end method

.method static synthetic g(Lcom/google/android/gms/internal/ads/pc;)Lcom/google/android/gms/internal/ads/uc;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/pc;->d:Lcom/google/android/gms/internal/ads/uc;

    return-object p0
.end method


# virtual methods
.method public final f()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pc;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/pc;->e:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/pc;->e:Z

    new-instance v1, Lcom/google/android/gms/internal/ads/mc;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/mc;-><init>(Lcom/google/android/gms/internal/ads/pc;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/ip;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/ip;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/mp;->a(Lcom/google/android/gms/internal/ads/jp;Lcom/google/android/gms/internal/ads/hp;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/nc;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/nc;-><init>(Lcom/google/android/gms/internal/ads/pc;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/oc;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/oc;-><init>(Lcom/google/android/gms/internal/ads/pc;)V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/mp;->a(Lcom/google/android/gms/internal/ads/jp;Lcom/google/android/gms/internal/ads/hp;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
