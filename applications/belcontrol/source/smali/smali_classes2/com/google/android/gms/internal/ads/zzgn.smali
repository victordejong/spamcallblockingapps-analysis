.class public abstract Lcom/google/android/gms/internal/ads/zzgn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final className:Ljava/lang/String;

.field public final zzabb:Lcom/google/android/gms/internal/ads/zzcf$zza$zzb;

.field private final zzabj:Ljava/lang/String;

.field public zzabl:Ljava/lang/reflect/Method;

.field private final zzabo:I

.field private final zzabp:I

.field public final zzwc:Lcom/google/android/gms/internal/ads/zzfc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfc;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcf$zza$zzb;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgn;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgn;->zzwc:Lcom/google/android/gms/internal/ads/zzfc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgn;->className:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgn;->zzabj:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzgn;->zzabb:Lcom/google/android/gms/internal/ads/zzcf$zza$zzb;

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzgn;->zzabo:I

    iput p6, p0, Lcom/google/android/gms/internal/ads/zzgn;->zzabp:I

    return-void
.end method


# virtual methods
.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgn;->zzcy()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public abstract zzcw()V
.end method

.method public zzcy()Ljava/lang/Void;
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgn;->zzwc:Lcom/google/android/gms/internal/ads/zzfc;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzgn;->className:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzgn;->zzabj:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzfc;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzgn;->zzabl:Ljava/lang/reflect/Method;

    if-nez v3, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgn;->zzcw()V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgn;->zzwc:Lcom/google/android/gms/internal/ads/zzfc;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfc;->zzcl()Lcom/google/android/gms/internal/ads/zzdw;

    move-result-object v3

    if-eqz v3, :cond_1

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzgn;->zzabo:I

    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_1

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzgn;->zzabp:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long/2addr v6, v1

    const-wide/16 v1, 0x3e8

    div-long/2addr v6, v1

    invoke-virtual {v3, v5, v4, v6, v7}, Lcom/google/android/gms/internal/ads/zzdw;->zza(IIJ)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-object v0
.end method
