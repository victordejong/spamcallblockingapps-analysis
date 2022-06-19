.class public final Lcom/google/android/gms/internal/ads/zzama;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final zzdko:Ljava/lang/Object;

.field private final zzdkp:Ljava/lang/Object;

.field private zzdkq:Lcom/google/android/gms/internal/ads/zzamj;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lockClient"
    .end annotation
.end field

.field private zzdkr:Lcom/google/android/gms/internal/ads/zzamj;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lockService"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzama;->zzdko:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzama;->zzdkp:Ljava/lang/Object;

    return-void
.end method

.method private static zzl(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzazn;)Lcom/google/android/gms/internal/ads/zzamj;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzama;->zzdkp:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzama;->zzdkr:Lcom/google/android/gms/internal/ads/zzamj;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzamj;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzama;->zzl(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzadq;->zzdeo:Lcom/google/android/gms/internal/ads/zzacx;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzacx;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzamj;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzazn;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzama;->zzdkr:Lcom/google/android/gms/internal/ads/zzamj;

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzama;->zzdkr:Lcom/google/android/gms/internal/ads/zzamj;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzb(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzazn;)Lcom/google/android/gms/internal/ads/zzamj;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzama;->zzdko:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzama;->zzdkq:Lcom/google/android/gms/internal/ads/zzamj;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzamj;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzama;->zzl(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzabp;->zzcmj:Lcom/google/android/gms/internal/ads/zzaba;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzamj;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzazn;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzama;->zzdkq:Lcom/google/android/gms/internal/ads/zzamj;

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzama;->zzdkq:Lcom/google/android/gms/internal/ads/zzamj;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
