.class public abstract Lcom/google/android/gms/internal/ads/zzdys;
.super Lcom/google/android/gms/internal/ads/zzdyk$zzh;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzdys$zzb;,
        Lcom/google/android/gms/internal/ads/zzdys$zzc;,
        Lcom/google/android/gms/internal/ads/zzdys$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<OutputT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzdyk$zzh<",
        "TOutputT;>;"
    }
.end annotation


# static fields
.field private static final zzhzc:Ljava/util/logging/Logger;

.field private static final zzhzy:Lcom/google/android/gms/internal/ads/zzdys$zza;


# instance fields
.field private volatile remaining:I

.field private volatile seenExceptions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    const-class v0, Lcom/google/android/gms/internal/ads/zzdys;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdys;->zzhzc:Ljava/util/logging/Logger;

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdys$zzc;

    const-class v2, Lcom/google/android/gms/internal/ads/zzdys;

    const-class v3, Ljava/util/Set;

    const-string v4, "seenExceptions"

    invoke-static {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    const-class v3, Lcom/google/android/gms/internal/ads/zzdys;

    const-string v4, "remaining"

    invoke-static {v3, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdys$zzc;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v8, v0

    goto :goto_0

    :catchall_0
    move-exception v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdys$zzb;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzdys$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzdyt;)V

    move-object v8, v1

    move-object v1, v2

    :goto_0
    sput-object v1, Lcom/google/android/gms/internal/ads/zzdys;->zzhzy:Lcom/google/android/gms/internal/ads/zzdys$zza;

    if-eqz v8, :cond_0

    sget-object v3, Lcom/google/android/gms/internal/ads/zzdys;->zzhzc:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v5, "com.google.common.util.concurrent.AggregateFutureState"

    const-string v6, "<clinit>"

    const-string v7, "SafeAtomicHelper is broken!"

    invoke-virtual/range {v3 .. v8}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdyk$zzh;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdys;->seenExceptions:Ljava/util/Set;

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdys;->remaining:I

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzdys;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdys;->seenExceptions:Ljava/util/Set;

    return-object p0
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzdys;Ljava/util/Set;)Ljava/util/Set;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdys;->seenExceptions:Ljava/util/Set;

    return-object p1
.end method

.method public static synthetic zzb(Lcom/google/android/gms/internal/ads/zzdys;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdys;->remaining:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdys;->remaining:I

    return v0
.end method


# virtual methods
.method public final zzazy()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdys;->seenExceptions:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdys;->zzh(Ljava/util/Set;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdys;->zzhzy:Lcom/google/android/gms/internal/ads/zzdys$zza;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v0}, Lcom/google/android/gms/internal/ads/zzdys$zza;->zza(Lcom/google/android/gms/internal/ads/zzdys;Ljava/util/Set;Ljava/util/Set;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdys;->seenExceptions:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public final zzazz()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdys;->zzhzy:Lcom/google/android/gms/internal/ads/zzdys$zza;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzdys$zza;->zzc(Lcom/google/android/gms/internal/ads/zzdys;)I

    move-result v0

    return v0
.end method

.method public final zzbaa()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdys;->seenExceptions:Ljava/util/Set;

    return-void
.end method

.method public abstract zzh(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation
.end method
