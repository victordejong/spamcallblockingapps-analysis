.class public final Lcom/google/android/gms/internal/ads/zzgf;
.super Lcom/google/android/gms/internal/ads/zzgn;
.source ""


# instance fields
.field private final zzabg:[Ljava/lang/StackTraceElement;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfc;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcf$zza$zzb;II[Ljava/lang/StackTraceElement;)V
    .locals 7

    const/16 v6, 0x2d

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzgn;-><init>(Lcom/google/android/gms/internal/ads/zzfc;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcf$zza$zzb;II)V

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzgf;->zzabg:[Ljava/lang/StackTraceElement;

    return-void
.end method


# virtual methods
.method public final zzcw()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgf;->zzabg:[Ljava/lang/StackTraceElement;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgn;->zzabl:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzey;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzey;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgn;->zzabb:Lcom/google/android/gms/internal/ads/zzcf$zza$zzb;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgn;->zzabb:Lcom/google/android/gms/internal/ads/zzcf$zza$zzb;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzey;->zzyq:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzcf$zza$zzb;->zzbi(J)Lcom/google/android/gms/internal/ads/zzcf$zza$zzb;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzey;->zzyr:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgn;->zzabb:Lcom/google/android/gms/internal/ads/zzcf$zza$zzb;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzey;->zzys:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzcq;->zzls:Lcom/google/android/gms/internal/ads/zzcq;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzcq;->zzlt:Lcom/google/android/gms/internal/ads/zzcq;

    :goto_0
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzcf$zza$zzb;->zzh(Lcom/google/android/gms/internal/ads/zzcq;)Lcom/google/android/gms/internal/ads/zzcf$zza$zzb;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgn;->zzabb:Lcom/google/android/gms/internal/ads/zzcf$zza$zzb;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzcq;->zzlu:Lcom/google/android/gms/internal/ads/zzcq;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzcf$zza$zzb;->zzh(Lcom/google/android/gms/internal/ads/zzcq;)Lcom/google/android/gms/internal/ads/zzcf$zza$zzb;

    :goto_1
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
