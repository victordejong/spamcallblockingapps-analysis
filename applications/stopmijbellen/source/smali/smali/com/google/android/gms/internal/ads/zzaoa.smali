.class public abstract Lcom/google/android/gms/internal/ads/zzaoa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final zza:Ljava/lang/String;

.field public final zzb:Lcom/google/android/gms/internal/ads/zzams;

.field public final zzc:Ljava/lang/String;

.field public final zzd:Ljava/lang/String;

.field public final zze:Lcom/google/android/gms/internal/ads/zzaiz;

.field public zzf:Ljava/lang/reflect/Method;

.field public final zzg:I

.field public final zzh:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzams;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaiz;II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoa;->zza:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoa;->zzb:Lcom/google/android/gms/internal/ads/zzams;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaoa;->zzc:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzaoa;->zzd:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzaoa;->zze:Lcom/google/android/gms/internal/ads/zzaiz;

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzaoa;->zzg:I

    iput p6, p0, Lcom/google/android/gms/internal/ads/zzaoa;->zzh:I

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaoa;->zzk()Ljava/lang/Void;

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract zza()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation
.end method

.method public zzk()Ljava/lang/Void;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaoa;->zzb:Lcom/google/android/gms/internal/ads/zzams;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzaoa;->zzc:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzaoa;->zzd:Ljava/lang/String;

    .line 2
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzams;->zzj(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzaoa;->zzf:Ljava/lang/reflect/Method;

    if-nez v3, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaoa;->zza()V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaoa;->zzb:Lcom/google/android/gms/internal/ads/zzams;

    .line 4
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzams;->zzd()Lcom/google/android/gms/internal/ads/zzalo;

    move-result-object v4

    if-eqz v4, :cond_1

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzaoa;->zzg:I

    const/high16 v3, -0x80000000

    if-eq v6, v3, :cond_1

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaoa;->zzh:I

    .line 5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    sub-long/2addr v7, v1

    const-wide/16 v1, 0x3e8

    div-long/2addr v7, v1

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 6
    invoke-virtual/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzalo;->zzc(IIJLjava/lang/String;Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-object v0
.end method
