.class public final Lcom/google/android/gms/internal/ads/zzans;
.super Lcom/google/android/gms/internal/ads/zzaoa;
.source "SourceFile"


# instance fields
.field private final zzi:[Ljava/lang/StackTraceElement;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzams;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaiz;II[Ljava/lang/StackTraceElement;)V
    .locals 7

    const-string v2, "xd283h5qAcacM5zVZnbCaCYEYmyBvCzSWmcoDFc838gJ/DBCdoedE0EgOC5ZJs5s"

    const-string v3, "KFN28huBDzw/UNPPRO5YgG4GEIzzfegN1j75wmksmGk="

    const/16 v6, 0x2d

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzaoa;-><init>(Lcom/google/android/gms/internal/ads/zzams;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaiz;II)V

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzans;->zzi:[Ljava/lang/StackTraceElement;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzans;->zzi:[Ljava/lang/StackTraceElement;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaoa;->zzf:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzamk;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzamk;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoa;->zze:Lcom/google/android/gms/internal/ads/zzaiz;

    .line 3
    monitor-enter v0

    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaoa;->zze:Lcom/google/android/gms/internal/ads/zzaiz;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzamk;->zza:Ljava/lang/Long;

    .line 4
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzaiz;->zzB(J)Lcom/google/android/gms/internal/ads/zzaiz;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzamk;->zzb:Ljava/lang/Boolean;

    .line 5
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaoa;->zze:Lcom/google/android/gms/internal/ads/zzaiz;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzamk;->zzc:Ljava/lang/Boolean;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v2, v1, :cond_0

    const/4 v2, 0x2

    .line 7
    :cond_0
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzaiz;->zzX(I)Lcom/google/android/gms/internal/ads/zzaiz;

    goto :goto_0

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaoa;->zze:Lcom/google/android/gms/internal/ads/zzaiz;

    const/4 v2, 0x3

    .line 9
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzaiz;->zzX(I)Lcom/google/android/gms/internal/ads/zzaiz;

    .line 10
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    return-void
.end method
