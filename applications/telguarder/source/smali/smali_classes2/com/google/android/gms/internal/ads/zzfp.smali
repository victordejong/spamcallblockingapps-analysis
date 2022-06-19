.class public final Lcom/google/android/gms/internal/ads/zzfp;
.super Lcom/google/android/gms/internal/ads/zzgn;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# static fields
.field private static final zzaau:Lcom/google/android/gms/internal/ads/zzgq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzgq<",
            "Lcom/google/android/gms/internal/ads/zzcx;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzaav:Landroid/content/Context;

.field private zzaaw:Lcom/google/android/gms/internal/ads/zzcb$zza;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfp;->zzaau:Lcom/google/android/gms/internal/ads/zzgq;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfc;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcf$zza$zzb;IILandroid/content/Context;Lcom/google/android/gms/internal/ads/zzcb$zza;)V
    .locals 7

    const/16 v6, 0x1b

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzgn;-><init>(Lcom/google/android/gms/internal/ads/zzfc;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcf$zza$zzb;II)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzaaw:Lcom/google/android/gms/internal/ads/zzcb$zza;

    .line 3
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzaav:Landroid/content/Context;

    .line 4
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzaaw:Lcom/google/android/gms/internal/ads/zzcb$zza;

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzcb$zza;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcb$zza;->zzz()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcb$zza;->zzaa()Lcom/google/android/gms/internal/ads/zzcb$zzc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcb$zzc;->zzaf()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfh;->zzar(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcb$zza;->zzaa()Lcom/google/android/gms/internal/ads/zzcb$zzc;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcb$zzc;->zzaf()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private final zzcx()Ljava/lang/String;
    .locals 2

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzwc:Lcom/google/android/gms/internal/ads/zzfc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfc;->zzcp()Ljava/util/concurrent/Future;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzwc:Lcom/google/android/gms/internal/ads/zzfc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfc;->zzcp()Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzwc:Lcom/google/android/gms/internal/ads/zzfc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfc;->zzco()Lcom/google/android/gms/internal/ads/zzcf$zza;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 62
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcf$zza;->zzai()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcf$zza;->zzaf()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected final zzcw()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfp;->zzaau:Lcom/google/android/gms/internal/ads/zzgq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzaav:Landroid/content/Context;

    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgq;->zzas(Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcx;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 10
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzcx;->zznn:Ljava/lang/String;

    .line 11
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzfh;->zzar(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzcx;->zznn:Ljava/lang/String;

    const-string v5, "E"

    .line 12
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzcx;->zznn:Ljava/lang/String;

    const-string v4, "0000000000000000000000000000000000000000000000000000000000000000"

    .line 13
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_a

    .line 16
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzaaw:Lcom/google/android/gms/internal/ads/zzcb$zza;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfp;->zza(Lcom/google/android/gms/internal/ads/zzcb$zza;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfh;->zzar(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 17
    sget-object v1, Lcom/google/android/gms/internal/ads/zzcd;->zzfe:Lcom/google/android/gms/internal/ads/zzcd;

    goto :goto_3

    .line 18
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzaaw:Lcom/google/android/gms/internal/ads/zzcb$zza;

    .line 19
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfp;->zza(Lcom/google/android/gms/internal/ads/zzcb$zza;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzfh;->zzar(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v1, :cond_3

    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcb$zza;->zzx()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 22
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcb$zza;->zzy()Lcom/google/android/gms/internal/ads/zzcb$zzb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcb$zzb;->zzac()Lcom/google/android/gms/internal/ads/zzcd;

    move-result-object v1

    sget-object v4, Lcom/google/android/gms/internal/ads/zzcd;->zzfd:Lcom/google/android/gms/internal/ads/zzcd;

    if-ne v1, v4, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    .line 23
    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 24
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 25
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzwc:Lcom/google/android/gms/internal/ads/zzfc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfc;->zzcm()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 27
    sget-object v1, Lcom/google/android/gms/internal/ads/zzcd;->zzfd:Lcom/google/android/gms/internal/ads/zzcd;

    goto :goto_3

    .line 28
    :cond_4
    sget-object v1, Lcom/google/android/gms/internal/ads/zzcd;->zzfc:Lcom/google/android/gms/internal/ads/zzcd;

    .line 30
    :goto_3
    sget-object v4, Lcom/google/android/gms/internal/ads/zzcd;->zzfc:Lcom/google/android/gms/internal/ads/zzcd;

    if-ne v1, v4, :cond_5

    const/4 v4, 0x1

    goto :goto_4

    :cond_5
    const/4 v4, 0x0

    :goto_4
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 31
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzabl:Ljava/lang/reflect/Method;

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzaav:Landroid/content/Context;

    aput-object v9, v8, v2

    aput-object v4, v8, v3

    .line 32
    invoke-virtual {v5, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 33
    new-instance v4, Lcom/google/android/gms/internal/ads/zzcx;

    invoke-direct {v4, v2}, Lcom/google/android/gms/internal/ads/zzcx;-><init>(Ljava/lang/String;)V

    .line 34
    iget-object v2, v4, Lcom/google/android/gms/internal/ads/zzcx;->zznn:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfh;->zzar(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, v4, Lcom/google/android/gms/internal/ads/zzcx;->zznn:Ljava/lang/String;

    const-string v5, "E"

    .line 35
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 36
    :cond_6
    sget-object v2, Lcom/google/android/gms/internal/ads/zzfs;->zzaay:[I

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcd;->ordinal()I

    move-result v1

    aget v1, v2, v1

    if-eq v1, v3, :cond_8

    if-eq v1, v7, :cond_7

    goto :goto_5

    .line 39
    :cond_7
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfp;->zzcx()Ljava/lang/String;

    move-result-object v1

    .line 40
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfh;->zzar(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 41
    iput-object v1, v4, Lcom/google/android/gms/internal/ads/zzcx;->zznn:Ljava/lang/String;

    goto :goto_5

    .line 37
    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzaaw:Lcom/google/android/gms/internal/ads/zzcb$zza;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcb$zza;->zzaa()Lcom/google/android/gms/internal/ads/zzcb$zzc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcb$zzc;->zzaf()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/google/android/gms/internal/ads/zzcx;->zznn:Ljava/lang/String;

    .line 43
    :cond_9
    :goto_5
    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 44
    :cond_a
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcx;

    .line 45
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 46
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzabb:Lcom/google/android/gms/internal/ads/zzcf$zza$zzb;

    monitor-enter v2

    if-eqz v1, :cond_b

    .line 48
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzabb:Lcom/google/android/gms/internal/ads/zzcf$zza$zzb;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzcx;->zznn:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzcf$zza$zzb;->zzae(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcf$zza$zzb;

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzabb:Lcom/google/android/gms/internal/ads/zzcf$zza$zzb;

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzcx;->zzno:J

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzcf$zza$zzb;->zzba(J)Lcom/google/android/gms/internal/ads/zzcf$zza$zzb;

    .line 50
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzabb:Lcom/google/android/gms/internal/ads/zzcf$zza$zzb;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzcx;->zznp:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzcf$zza$zzb;->zzag(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcf$zza$zzb;

    .line 51
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzabb:Lcom/google/android/gms/internal/ads/zzcf$zza$zzb;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzcx;->zznq:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzcf$zza$zzb;->zzah(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcf$zza$zzb;

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzabb:Lcom/google/android/gms/internal/ads/zzcf$zza$zzb;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzcx;->zznr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcf$zza$zzb;->zzai(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcf$zza$zzb;

    .line 53
    :cond_b
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 45
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
