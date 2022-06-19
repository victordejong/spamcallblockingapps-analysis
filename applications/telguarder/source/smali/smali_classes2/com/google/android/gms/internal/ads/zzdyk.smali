.class public Lcom/google/android/gms/internal/ads/zzdyk;
.super Lcom/google/android/gms/internal/ads/zzeao;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdzw;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzdyk$zzf;,
        Lcom/google/android/gms/internal/ads/zzdyk$zzd;,
        Lcom/google/android/gms/internal/ads/zzdyk$zzj;,
        Lcom/google/android/gms/internal/ads/zzdyk$zzb;,
        Lcom/google/android/gms/internal/ads/zzdyk$zzg;,
        Lcom/google/android/gms/internal/ads/zzdyk$zza;,
        Lcom/google/android/gms/internal/ads/zzdyk$zzc;,
        Lcom/google/android/gms/internal/ads/zzdyk$zze;,
        Lcom/google/android/gms/internal/ads/zzdyk$zzk;,
        Lcom/google/android/gms/internal/ads/zzdyk$zzh;,
        Lcom/google/android/gms/internal/ads/zzdyk$zzi;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzeao;",
        "Lcom/google/android/gms/internal/ads/zzdzw<",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final GENERATE_CANCELLATION_CAUSES:Z

.field private static final NULL:Ljava/lang/Object;

.field private static final zzhzc:Ljava/util/logging/Logger;

.field private static final zzhzd:Lcom/google/android/gms/internal/ads/zzdyk$zzb;


# instance fields
.field private volatile listeners:Lcom/google/android/gms/internal/ads/zzdyk$zze;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field private volatile value:Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field private volatile waiters:Lcom/google/android/gms/internal/ads/zzdyk$zzk;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 344
    const-class v0, Lcom/google/android/gms/internal/ads/zzdyk;

    :try_start_0
    const-string v1, "guava.concurrent.generate_cancellation_cause"

    const-string v2, "false"

    .line 345
    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 346
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    .line 350
    :goto_0
    sput-boolean v1, Lcom/google/android/gms/internal/ads/zzdyk;->GENERATE_CANCELLATION_CAUSES:Z

    .line 351
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzdyk;->zzhzc:Ljava/util/logging/Logger;

    const/4 v1, 0x0

    .line 354
    :try_start_1
    new-instance v2, Lcom/google/android/gms/internal/ads/zzdyk$zzj;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzdyk$zzj;-><init>(Lcom/google/android/gms/internal/ads/zzdyk$1;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v1

    move-object v9, v5

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 357
    :try_start_2
    new-instance v9, Lcom/google/android/gms/internal/ads/zzdyk$zzd;

    const-class v3, Lcom/google/android/gms/internal/ads/zzdyk$zzk;

    const-class v4, Ljava/lang/Thread;

    const-string v5, "thread"

    .line 358
    invoke-static {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v4

    const-class v3, Lcom/google/android/gms/internal/ads/zzdyk$zzk;

    const-class v5, Lcom/google/android/gms/internal/ads/zzdyk$zzk;

    const-string v6, "next"

    .line 359
    invoke-static {v3, v5, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v5

    const-class v3, Lcom/google/android/gms/internal/ads/zzdyk$zzk;

    const-string v6, "waiters"

    .line 360
    invoke-static {v0, v3, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v6

    const-class v3, Lcom/google/android/gms/internal/ads/zzdyk$zze;

    const-string v7, "listeners"

    .line 361
    invoke-static {v0, v3, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v7

    const-class v3, Ljava/lang/Object;

    const-string v8, "value"

    .line 362
    invoke-static {v0, v3, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v8

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzdyk$zzd;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v5, v2

    move-object v2, v9

    move-object v9, v1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 365
    new-instance v3, Lcom/google/android/gms/internal/ads/zzdyk$zzf;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/zzdyk$zzf;-><init>(Lcom/google/android/gms/internal/ads/zzdyk$1;)V

    move-object v9, v0

    move-object v5, v2

    move-object v2, v3

    .line 366
    :goto_1
    sput-object v2, Lcom/google/android/gms/internal/ads/zzdyk;->zzhzd:Lcom/google/android/gms/internal/ads/zzdyk$zzb;

    if-eqz v9, :cond_0

    .line 368
    sget-object v6, Lcom/google/android/gms/internal/ads/zzdyk;->zzhzc:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v2, "com.google.common.util.concurrent.AbstractFuture"

    const-string v3, "<clinit>"

    const-string v4, "UnsafeAtomicHelper is broken!"

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 369
    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v0, "com.google.common.util.concurrent.AbstractFuture"

    const-string v7, "<clinit>"

    const-string v8, "SafeAtomicHelper is broken!"

    move-object v4, v6

    move-object v6, v0

    invoke-virtual/range {v4 .. v9}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 370
    :cond_0
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdyk;->NULL:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzeao;-><init>()V

    return-void
.end method

.method private static getFutureValue(Lcom/google/android/gms/internal/ads/zzdzw;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "get() did not throw CancellationException, despite reporting isCancelled() == true: "

    .line 188
    instance-of v1, p0, Lcom/google/android/gms/internal/ads/zzdyk$zzi;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 189
    check-cast p0, Lcom/google/android/gms/internal/ads/zzdyk;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdyk;->value:Ljava/lang/Object;

    .line 190
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzdyk$zza;

    if-eqz v0, :cond_1

    .line 191
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdyk$zza;

    .line 192
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzdyk$zza;->wasInterrupted:Z

    if-eqz v1, :cond_1

    .line 193
    iget-object p0, v0, Lcom/google/android/gms/internal/ads/zzdyk$zza;->cause:Ljava/lang/Throwable;

    if-eqz p0, :cond_0

    .line 194
    new-instance p0, Lcom/google/android/gms/internal/ads/zzdyk$zza;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdyk$zza;->cause:Ljava/lang/Throwable;

    invoke-direct {p0, v2, v0}, Lcom/google/android/gms/internal/ads/zzdyk$zza;-><init>(ZLjava/lang/Throwable;)V

    goto :goto_0

    .line 195
    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzdyk$zza;->zzhzf:Lcom/google/android/gms/internal/ads/zzdyk$zza;

    :cond_1
    :goto_0
    return-object p0

    .line 197
    :cond_2
    instance-of v1, p0, Lcom/google/android/gms/internal/ads/zzeao;

    if-eqz v1, :cond_3

    .line 198
    move-object v1, p0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzeao;

    .line 199
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzean;->zza(Lcom/google/android/gms/internal/ads/zzeao;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 201
    new-instance p0, Lcom/google/android/gms/internal/ads/zzdyk$zzc;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzdyk$zzc;-><init>(Ljava/lang/Throwable;)V

    return-object p0

    .line 202
    :cond_3
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzdzw;->isCancelled()Z

    move-result v1

    .line 203
    sget-boolean v3, Lcom/google/android/gms/internal/ads/zzdyk;->GENERATE_CANCELLATION_CAUSES:Z

    xor-int/lit8 v3, v3, 0x1

    and-int/2addr v3, v1

    if-eqz v3, :cond_4

    .line 204
    sget-object p0, Lcom/google/android/gms/internal/ads/zzdyk$zza;->zzhzf:Lcom/google/android/gms/internal/ads/zzdyk$zza;

    return-object p0

    .line 205
    :cond_4
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdyk;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v1, :cond_5

    .line 207
    new-instance v3, Lcom/google/android/gms/internal/ads/zzdyk$zza;

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x54

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v2, v4}, Lcom/google/android/gms/internal/ads/zzdyk$zza;-><init>(ZLjava/lang/Throwable;)V

    return-object v3

    :cond_5
    if-nez v3, :cond_6

    .line 208
    sget-object p0, Lcom/google/android/gms/internal/ads/zzdyk;->NULL:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :cond_6
    return-object v3

    :catchall_0
    move-exception p0

    .line 218
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdyk$zzc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdyk$zzc;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    :catch_0
    move-exception v0

    if-nez v1, :cond_7

    .line 215
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdyk$zzc;

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x4d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "get() threw CancellationException, despite reporting isCancelled() == false: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzdyk$zzc;-><init>(Ljava/lang/Throwable;)V

    return-object v1

    .line 216
    :cond_7
    new-instance p0, Lcom/google/android/gms/internal/ads/zzdyk$zza;

    invoke-direct {p0, v2, v0}, Lcom/google/android/gms/internal/ads/zzdyk$zza;-><init>(ZLjava/lang/Throwable;)V

    return-object p0

    :catch_1
    move-exception v3

    if-eqz v1, :cond_8

    .line 211
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdyk$zza;

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x54

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v4, p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzdyk$zza;-><init>(ZLjava/lang/Throwable;)V

    return-object v1

    .line 212
    :cond_8
    new-instance p0, Lcom/google/android/gms/internal/ads/zzdyk$zzc;

    invoke-virtual {v3}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdyk$zzc;-><init>(Ljava/lang/Throwable;)V

    return-object p0
.end method

.method private static getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 220
    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 222
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_1

    .line 228
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 229
    :cond_1
    throw p0

    :catch_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdyk;Lcom/google/android/gms/internal/ads/zzdyk$zze;)Lcom/google/android/gms/internal/ads/zzdyk$zze;
    .locals 0

    .line 342
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyk;->listeners:Lcom/google/android/gms/internal/ads/zzdyk$zze;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdyk;Lcom/google/android/gms/internal/ads/zzdyk$zzk;)Lcom/google/android/gms/internal/ads/zzdyk$zzk;
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyk;->waiters:Lcom/google/android/gms/internal/ads/zzdyk$zzk;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdyk;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 343
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyk;->value:Ljava/lang/Object;

    return-object p1
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzdyk$zzk;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-object v0, p1, Lcom/google/android/gms/internal/ads/zzdyk$zzk;->thread:Ljava/lang/Thread;

    .line 3
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyk;->waiters:Lcom/google/android/gms/internal/ads/zzdyk$zzk;

    .line 4
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdyk$zzk;->zzhzp:Lcom/google/android/gms/internal/ads/zzdyk$zzk;

    if-ne p1, v1, :cond_1

    return-void

    :cond_1
    move-object v1, v0

    :goto_1
    if-eqz p1, :cond_5

    .line 7
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzdyk$zzk;->next:Lcom/google/android/gms/internal/ads/zzdyk$zzk;

    .line 8
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzdyk$zzk;->thread:Ljava/lang/Thread;

    if-eqz v3, :cond_2

    move-object v1, p1

    goto :goto_2

    :cond_2
    if-eqz v1, :cond_3

    .line 11
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzdyk$zzk;->next:Lcom/google/android/gms/internal/ads/zzdyk$zzk;

    .line 12
    iget-object p1, v1, Lcom/google/android/gms/internal/ads/zzdyk$zzk;->thread:Ljava/lang/Thread;

    if-nez p1, :cond_4

    goto :goto_0

    .line 14
    :cond_3
    sget-object v3, Lcom/google/android/gms/internal/ads/zzdyk;->zzhzd:Lcom/google/android/gms/internal/ads/zzdyk$zzb;

    invoke-virtual {v3, p0, p1, v2}, Lcom/google/android/gms/internal/ads/zzdyk$zzb;->zza(Lcom/google/android/gms/internal/ads/zzdyk;Lcom/google/android/gms/internal/ads/zzdyk$zzk;Lcom/google/android/gms/internal/ads/zzdyk$zzk;)Z

    move-result p1

    if-eqz p1, :cond_0

    :cond_4
    :goto_2
    move-object p1, v2

    goto :goto_1

    :cond_5
    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzdyk;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdyk<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, v0

    .line 232
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdyk;->waiters:Lcom/google/android/gms/internal/ads/zzdyk$zzk;

    .line 233
    sget-object v3, Lcom/google/android/gms/internal/ads/zzdyk;->zzhzd:Lcom/google/android/gms/internal/ads/zzdyk$zzb;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzdyk$zzk;->zzhzp:Lcom/google/android/gms/internal/ads/zzdyk$zzk;

    invoke-virtual {v3, p0, v2, v4}, Lcom/google/android/gms/internal/ads/zzdyk$zzb;->zza(Lcom/google/android/gms/internal/ads/zzdyk;Lcom/google/android/gms/internal/ads/zzdyk$zzk;Lcom/google/android/gms/internal/ads/zzdyk$zzk;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    if-eqz v2, :cond_2

    .line 236
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzdyk$zzk;->thread:Ljava/lang/Thread;

    if-eqz v3, :cond_1

    .line 238
    iput-object v0, v2, Lcom/google/android/gms/internal/ads/zzdyk$zzk;->thread:Ljava/lang/Thread;

    .line 239
    invoke-static {v3}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 240
    :cond_1
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzdyk$zzk;->next:Lcom/google/android/gms/internal/ads/zzdyk$zzk;

    goto :goto_0

    .line 241
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdyk;->afterDone()V

    .line 243
    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdyk;->listeners:Lcom/google/android/gms/internal/ads/zzdyk$zze;

    .line 244
    sget-object v3, Lcom/google/android/gms/internal/ads/zzdyk;->zzhzd:Lcom/google/android/gms/internal/ads/zzdyk$zzb;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzdyk$zze;->zzhzh:Lcom/google/android/gms/internal/ads/zzdyk$zze;

    invoke-virtual {v3, p0, v2, v4}, Lcom/google/android/gms/internal/ads/zzdyk$zzb;->zza(Lcom/google/android/gms/internal/ads/zzdyk;Lcom/google/android/gms/internal/ads/zzdyk$zze;Lcom/google/android/gms/internal/ads/zzdyk$zze;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    move-object p0, v1

    move-object v1, v2

    if-eqz v1, :cond_4

    .line 248
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzdyk$zze;->next:Lcom/google/android/gms/internal/ads/zzdyk$zze;

    .line 249
    iput-object p0, v1, Lcom/google/android/gms/internal/ads/zzdyk$zze;->next:Lcom/google/android/gms/internal/ads/zzdyk$zze;

    goto :goto_1

    :cond_4
    :goto_2
    if-eqz p0, :cond_7

    .line 256
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdyk$zze;->next:Lcom/google/android/gms/internal/ads/zzdyk$zze;

    .line 257
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdyk$zze;->task:Ljava/lang/Runnable;

    .line 258
    instance-of v3, v2, Lcom/google/android/gms/internal/ads/zzdyk$zzg;

    if-eqz v3, :cond_5

    .line 259
    check-cast v2, Lcom/google/android/gms/internal/ads/zzdyk$zzg;

    .line 260
    iget-object p0, v2, Lcom/google/android/gms/internal/ads/zzdyk$zzg;->zzhzi:Lcom/google/android/gms/internal/ads/zzdyk;

    .line 261
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdyk;->value:Ljava/lang/Object;

    if-ne v3, v2, :cond_6

    .line 262
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzdyk$zzg;->future:Lcom/google/android/gms/internal/ads/zzdzw;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdyk;->getFutureValue(Lcom/google/android/gms/internal/ads/zzdzw;)Ljava/lang/Object;

    move-result-object v3

    .line 263
    sget-object v4, Lcom/google/android/gms/internal/ads/zzdyk;->zzhzd:Lcom/google/android/gms/internal/ads/zzdyk$zzb;

    invoke-virtual {v4, p0, v2, v3}, Lcom/google/android/gms/internal/ads/zzdyk$zzb;->zza(Lcom/google/android/gms/internal/ads/zzdyk;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_3

    .line 265
    :cond_5
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdyk$zze;->executor:Ljava/util/concurrent/Executor;

    invoke-static {v2, p0}, Lcom/google/android/gms/internal/ads/zzdyk;->zza(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_6
    :goto_3
    move-object p0, v1

    goto :goto_2

    :cond_7
    return-void
.end method

.method private static zza(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 6

    .line 329
    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v5

    .line 332
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdyk;->zzhzc:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x39

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "RuntimeException while executing runnable "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " with executor "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v2, "com.google.common.util.concurrent.AbstractFuture"

    const-string v3, "executeListener"

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final zza(Ljava/lang/StringBuilder;)V
    .locals 3

    const-string v0, "]"

    .line 308
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdyk;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "SUCCESS, result=["

    .line 309
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdyk;->zza(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 311
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "UNKNOWN, cause=["

    .line 320
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " thrown from get()]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :catch_1
    const-string v0, "CANCELLED"

    .line 317
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :catch_2
    move-exception v1

    const-string v2, "FAILURE, cause=["

    .line 314
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private final zza(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .locals 1

    if-ne p2, p0, :cond_0

    :try_start_0
    const-string p2, "this future"

    .line 323
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 324
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    :goto_0
    const-string v0, "Exception thrown from implementation: "

    .line 327
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static zzaf(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 94
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzdyk$zza;

    if-nez v0, :cond_2

    .line 100
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzdyk$zzc;

    if-nez v0, :cond_1

    .line 102
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdyk;->NULL:Ljava/lang/Object;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0

    .line 101
    :cond_1
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    check-cast p0, Lcom/google/android/gms/internal/ads/zzdyk$zzc;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdyk$zzc;->exception:Ljava/lang/Throwable;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 95
    :cond_2
    check-cast p0, Lcom/google/android/gms/internal/ads/zzdyk$zza;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdyk$zza;->cause:Ljava/lang/Throwable;

    .line 96
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Task was cancelled."

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0, p0}, Ljava/util/concurrent/CancellationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 99
    throw v0
.end method

.method static synthetic zzazu()Lcom/google/android/gms/internal/ads/zzdyk$zzb;
    .locals 1

    .line 334
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdyk;->zzhzd:Lcom/google/android/gms/internal/ads/zzdyk$zzb;

    return-object v0
.end method

.method static synthetic zzazv()Z
    .locals 1

    .line 335
    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzdyk;->GENERATE_CANCELLATION_CAUSES:Z

    return v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzdyk;)Ljava/lang/Object;
    .locals 0

    .line 336
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdyk;->value:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzdyk;)V
    .locals 0

    .line 338
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdyk;->zza(Lcom/google/android/gms/internal/ads/zzdyk;)V

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzdyk;)Lcom/google/android/gms/internal/ads/zzdyk$zzk;
    .locals 0

    .line 339
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdyk;->waiters:Lcom/google/android/gms/internal/ads/zzdyk$zzk;

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/ads/zzdyk;)Lcom/google/android/gms/internal/ads/zzdyk$zze;
    .locals 0

    .line 341
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdyk;->listeners:Lcom/google/android/gms/internal/ads/zzdyk$zze;

    return-object p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/ads/zzdzw;)Ljava/lang/Object;
    .locals 0

    .line 337
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdyk;->getFutureValue(Lcom/google/android/gms/internal/ads/zzdzw;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 3

    const-string v0, "Runnable was null."

    .line 141
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzdwl;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Executor was null."

    .line 142
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzdwl;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdyk;->isDone()Z

    move-result v0

    if-nez v0, :cond_2

    .line 144
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyk;->listeners:Lcom/google/android/gms/internal/ads/zzdyk$zze;

    .line 145
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdyk$zze;->zzhzh:Lcom/google/android/gms/internal/ads/zzdyk$zze;

    if-eq v0, v1, :cond_2

    .line 146
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdyk$zze;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzdyk$zze;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 147
    :cond_0
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzdyk$zze;->next:Lcom/google/android/gms/internal/ads/zzdyk$zze;

    .line 148
    sget-object v2, Lcom/google/android/gms/internal/ads/zzdyk;->zzhzd:Lcom/google/android/gms/internal/ads/zzdyk$zzb;

    invoke-virtual {v2, p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzdyk$zzb;->zza(Lcom/google/android/gms/internal/ads/zzdyk;Lcom/google/android/gms/internal/ads/zzdyk$zze;Lcom/google/android/gms/internal/ads/zzdyk$zze;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyk;->listeners:Lcom/google/android/gms/internal/ads/zzdyk$zze;

    .line 151
    sget-object v2, Lcom/google/android/gms/internal/ads/zzdyk$zze;->zzhzh:Lcom/google/android/gms/internal/ads/zzdyk$zze;

    if-ne v0, v2, :cond_0

    .line 152
    :cond_2
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzdyk;->zza(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method protected afterDone()V
    .locals 0

    return-void
.end method

.method public cancel(Z)Z
    .locals 7

    .line 110
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyk;->value:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 112
    :goto_0
    instance-of v4, v0, Lcom/google/android/gms/internal/ads/zzdyk$zzg;

    or-int/2addr v3, v4

    if-eqz v3, :cond_8

    .line 113
    sget-boolean v3, Lcom/google/android/gms/internal/ads/zzdyk;->GENERATE_CANCELLATION_CAUSES:Z

    if-eqz v3, :cond_1

    .line 114
    new-instance v3, Lcom/google/android/gms/internal/ads/zzdyk$zza;

    new-instance v4, Ljava/util/concurrent/CancellationException;

    const-string v5, "Future.cancel() was called."

    invoke-direct {v4, v5}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, p1, v4}, Lcom/google/android/gms/internal/ads/zzdyk$zza;-><init>(ZLjava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 116
    sget-object v3, Lcom/google/android/gms/internal/ads/zzdyk$zza;->zzhze:Lcom/google/android/gms/internal/ads/zzdyk$zza;

    goto :goto_1

    .line 117
    :cond_2
    sget-object v3, Lcom/google/android/gms/internal/ads/zzdyk$zza;->zzhzf:Lcom/google/android/gms/internal/ads/zzdyk$zza;

    :goto_1
    const/4 v5, 0x0

    move-object v4, p0

    .line 119
    :cond_3
    :goto_2
    sget-object v6, Lcom/google/android/gms/internal/ads/zzdyk;->zzhzd:Lcom/google/android/gms/internal/ads/zzdyk$zzb;

    invoke-virtual {v6, v4, v0, v3}, Lcom/google/android/gms/internal/ads/zzdyk$zzb;->zza(Lcom/google/android/gms/internal/ads/zzdyk;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    if-eqz p1, :cond_4

    .line 122
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzdyk;->interruptTask()V

    .line 123
    :cond_4
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzdyk;->zza(Lcom/google/android/gms/internal/ads/zzdyk;)V

    .line 124
    instance-of v4, v0, Lcom/google/android/gms/internal/ads/zzdyk$zzg;

    if-eqz v4, :cond_9

    .line 125
    check-cast v0, Lcom/google/android/gms/internal/ads/zzdyk$zzg;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdyk$zzg;->future:Lcom/google/android/gms/internal/ads/zzdzw;

    .line 126
    instance-of v4, v0, Lcom/google/android/gms/internal/ads/zzdyk$zzi;

    if-eqz v4, :cond_6

    .line 127
    move-object v4, v0

    check-cast v4, Lcom/google/android/gms/internal/ads/zzdyk;

    .line 128
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/zzdyk;->value:Ljava/lang/Object;

    if-nez v0, :cond_5

    const/4 v5, 0x1

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    .line 129
    :goto_3
    instance-of v6, v0, Lcom/google/android/gms/internal/ads/zzdyk$zzg;

    or-int/2addr v5, v6

    if-eqz v5, :cond_9

    const/4 v5, 0x1

    goto :goto_2

    .line 133
    :cond_6
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdzw;->cancel(Z)Z

    goto :goto_4

    .line 135
    :cond_7
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/zzdyk;->value:Ljava/lang/Object;

    .line 136
    instance-of v6, v0, Lcom/google/android/gms/internal/ads/zzdyk$zzg;

    if-nez v6, :cond_3

    move v1, v5

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    :cond_9
    :goto_4
    return v1
.end method

.method public get()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 74
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_8

    .line 76
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyk;->value:Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 77
    :goto_0
    instance-of v4, v0, Lcom/google/android/gms/internal/ads/zzdyk$zzg;

    xor-int/2addr v4, v2

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    .line 78
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdyk;->zzaf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyk;->waiters:Lcom/google/android/gms/internal/ads/zzdyk$zzk;

    .line 80
    sget-object v3, Lcom/google/android/gms/internal/ads/zzdyk$zzk;->zzhzp:Lcom/google/android/gms/internal/ads/zzdyk$zzk;

    if-eq v0, v3, :cond_7

    .line 81
    new-instance v3, Lcom/google/android/gms/internal/ads/zzdyk$zzk;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzdyk$zzk;-><init>()V

    .line 82
    :cond_2
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzdyk$zzk;->zzb(Lcom/google/android/gms/internal/ads/zzdyk$zzk;)V

    .line 83
    sget-object v4, Lcom/google/android/gms/internal/ads/zzdyk;->zzhzd:Lcom/google/android/gms/internal/ads/zzdyk$zzb;

    invoke-virtual {v4, p0, v0, v3}, Lcom/google/android/gms/internal/ads/zzdyk$zzb;->zza(Lcom/google/android/gms/internal/ads/zzdyk;Lcom/google/android/gms/internal/ads/zzdyk$zzk;Lcom/google/android/gms/internal/ads/zzdyk$zzk;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 84
    :cond_3
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 85
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_5

    .line 88
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyk;->value:Ljava/lang/Object;

    if-eqz v0, :cond_4

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    .line 89
    :goto_1
    instance-of v5, v0, Lcom/google/android/gms/internal/ads/zzdyk$zzg;

    xor-int/2addr v5, v2

    and-int/2addr v4, v5

    if-eqz v4, :cond_3

    .line 90
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdyk;->zzaf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 86
    :cond_5
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzdyk;->zza(Lcom/google/android/gms/internal/ads/zzdyk$zzk;)V

    .line 87
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 91
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyk;->waiters:Lcom/google/android/gms/internal/ads/zzdyk$zzk;

    .line 92
    sget-object v4, Lcom/google/android/gms/internal/ads/zzdyk$zzk;->zzhzp:Lcom/google/android/gms/internal/ads/zzdyk$zzk;

    if-ne v0, v4, :cond_2

    .line 93
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyk;->value:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdyk;->zzaf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 75
    :cond_8
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    .line 18
    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    .line 20
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-nez v6, :cond_16

    .line 22
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzdyk;->value:Ljava/lang/Object;

    const/4 v8, 0x1

    if-eqz v6, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    .line 23
    :goto_0
    instance-of v10, v6, Lcom/google/android/gms/internal/ads/zzdyk$zzg;

    xor-int/2addr v10, v8

    and-int/2addr v9, v10

    if-eqz v9, :cond_1

    .line 24
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzdyk;->zzaf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_1
    const-wide/16 v9, 0x0

    cmp-long v6, v4, v9

    if-lez v6, :cond_2

    .line 25
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    add-long/2addr v11, v4

    goto :goto_1

    :cond_2
    move-wide v11, v9

    :goto_1
    const-wide/16 v13, 0x3e8

    cmp-long v6, v4, v13

    if-ltz v6, :cond_a

    .line 27
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzdyk;->waiters:Lcom/google/android/gms/internal/ads/zzdyk$zzk;

    .line 28
    sget-object v15, Lcom/google/android/gms/internal/ads/zzdyk$zzk;->zzhzp:Lcom/google/android/gms/internal/ads/zzdyk$zzk;

    if-eq v6, v15, :cond_9

    .line 29
    new-instance v15, Lcom/google/android/gms/internal/ads/zzdyk$zzk;

    invoke-direct {v15}, Lcom/google/android/gms/internal/ads/zzdyk$zzk;-><init>()V

    .line 30
    :cond_3
    invoke-virtual {v15, v6}, Lcom/google/android/gms/internal/ads/zzdyk$zzk;->zzb(Lcom/google/android/gms/internal/ads/zzdyk$zzk;)V

    .line 31
    sget-object v7, Lcom/google/android/gms/internal/ads/zzdyk;->zzhzd:Lcom/google/android/gms/internal/ads/zzdyk$zzb;

    invoke-virtual {v7, v0, v6, v15}, Lcom/google/android/gms/internal/ads/zzdyk$zzb;->zza(Lcom/google/android/gms/internal/ads/zzdyk;Lcom/google/android/gms/internal/ads/zzdyk$zzk;Lcom/google/android/gms/internal/ads/zzdyk$zzk;)Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_4
    const-wide v6, 0x1dcd64ffffffffffL    # 3.98785104510193E-165

    .line 33
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 34
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_7

    .line 37
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzdyk;->value:Ljava/lang/Object;

    if-eqz v4, :cond_5

    const/4 v5, 0x1

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    .line 38
    :goto_2
    instance-of v6, v4, Lcom/google/android/gms/internal/ads/zzdyk$zzg;

    xor-int/2addr v6, v8

    and-int/2addr v5, v6

    if-eqz v5, :cond_6

    .line 39
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzdyk;->zzaf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 40
    :cond_6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v11, v4

    cmp-long v6, v4, v13

    if-gez v6, :cond_4

    .line 42
    invoke-direct {v0, v15}, Lcom/google/android/gms/internal/ads/zzdyk;->zza(Lcom/google/android/gms/internal/ads/zzdyk$zzk;)V

    goto :goto_3

    .line 35
    :cond_7
    invoke-direct {v0, v15}, Lcom/google/android/gms/internal/ads/zzdyk;->zza(Lcom/google/android/gms/internal/ads/zzdyk$zzk;)V

    .line 36
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 44
    :cond_8
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzdyk;->waiters:Lcom/google/android/gms/internal/ads/zzdyk$zzk;

    .line 45
    sget-object v7, Lcom/google/android/gms/internal/ads/zzdyk$zzk;->zzhzp:Lcom/google/android/gms/internal/ads/zzdyk$zzk;

    if-ne v6, v7, :cond_3

    .line 46
    :cond_9
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdyk;->value:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdyk;->zzaf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_a
    :goto_3
    cmp-long v6, v4, v9

    if-lez v6, :cond_e

    .line 48
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzdyk;->value:Ljava/lang/Object;

    if-eqz v4, :cond_b

    const/4 v5, 0x1

    goto :goto_4

    :cond_b
    const/4 v5, 0x0

    .line 49
    :goto_4
    instance-of v6, v4, Lcom/google/android/gms/internal/ads/zzdyk$zzg;

    xor-int/2addr v6, v8

    and-int/2addr v5, v6

    if-eqz v5, :cond_c

    .line 50
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzdyk;->zzaf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 51
    :cond_c
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_d

    .line 53
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v11, v4

    goto :goto_3

    .line 52
    :cond_d
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 54
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzdyk;->toString()Ljava/lang/String;

    move-result-object v6

    .line 55
    invoke-virtual/range {p3 .. p3}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v7, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 56
    invoke-virtual/range {p3 .. p3}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v11, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, 0x1c

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v12, "Waited "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-long v11, v4, v13

    cmp-long v15, v11, v9

    if-gez v15, :cond_14

    .line 58
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v11, " (plus "

    invoke-virtual {v2, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    neg-long v4, v4

    .line 60
    sget-object v11, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v11}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v11

    .line 61
    invoke-virtual {v3, v11, v12}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v17

    sub-long v4, v4, v17

    cmp-long v3, v11, v9

    if-eqz v3, :cond_10

    cmp-long v9, v4, v13

    if-lez v9, :cond_f

    goto :goto_5

    :cond_f
    const/16 v16, 0x0

    goto :goto_6

    :cond_10
    :goto_5
    const/16 v16, 0x1

    :goto_6
    if-lez v3, :cond_12

    .line 64
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x15

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v3, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v16, :cond_11

    .line 66
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 67
    :cond_11
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_12
    if-eqz v16, :cond_13

    .line 69
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x21

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " nanoseconds "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 70
    :cond_13
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "delay)"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 71
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzdyk;->isDone()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 72
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, " but future completed as timeout expired"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 73
    :cond_15
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 21
    :cond_16
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1
.end method

.method protected interruptTask()V
    .locals 0

    return-void
.end method

.method public isCancelled()Z
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyk;->value:Ljava/lang/Object;

    .line 109
    instance-of v0, v0, Lcom/google/android/gms/internal/ads/zzdyk$zza;

    return v0
.end method

.method public isDone()Z
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyk;->value:Ljava/lang/Object;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 107
    :goto_0
    instance-of v0, v0, Lcom/google/android/gms/internal/ads/zzdyk$zzg;

    xor-int/2addr v0, v1

    and-int/2addr v0, v2

    return v0
.end method

.method final maybePropagateCancellationTo(Ljava/util/concurrent/Future;)V
    .locals 2
    .param p1    # Ljava/util/concurrent/Future;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 274
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdyk;->isCancelled()Z

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 275
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdyk;->wasInterrupted()Z

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_1
    return-void
.end method

.method protected pendingToString()Ljava/lang/String;
    .locals 4
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 303
    instance-of v0, p0, Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 304
    move-object v0, p0

    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 305
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    const/16 v2, 0x29

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "remaining delay=["

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected set(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 154
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdyk;->NULL:Ljava/lang/Object;

    .line 155
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdyk;->zzhzd:Lcom/google/android/gms/internal/ads/zzdyk$zzb;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdyk$zzb;->zza(Lcom/google/android/gms/internal/ads/zzdyk;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 156
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdyk;->zza(Lcom/google/android/gms/internal/ads/zzdyk;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected setException(Ljava/lang/Throwable;)Z
    .locals 2

    .line 159
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdyk$zzc;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdwl;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzdyk$zzc;-><init>(Ljava/lang/Throwable;)V

    .line 160
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdyk;->zzhzd:Lcom/google/android/gms/internal/ads/zzdyk$zzb;

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzdyk$zzb;->zza(Lcom/google/android/gms/internal/ads/zzdyk;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 161
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdyk;->zza(Lcom/google/android/gms/internal/ads/zzdyk;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected final setFuture(Lcom/google/android/gms/internal/ads/zzdzw;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "+TV;>;)Z"
        }
    .end annotation

    .line 164
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdwl;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyk;->value:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 167
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdzw;->isDone()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 168
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdyk;->getFutureValue(Lcom/google/android/gms/internal/ads/zzdzw;)Ljava/lang/Object;

    move-result-object p1

    .line 169
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdyk;->zzhzd:Lcom/google/android/gms/internal/ads/zzdyk$zzb;

    invoke-virtual {v0, p0, v3, p1}, Lcom/google/android/gms/internal/ads/zzdyk$zzb;->zza(Lcom/google/android/gms/internal/ads/zzdyk;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 170
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdyk;->zza(Lcom/google/android/gms/internal/ads/zzdyk;)V

    return v2

    :cond_0
    return v1

    .line 173
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdyk$zzg;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzdyk$zzg;-><init>(Lcom/google/android/gms/internal/ads/zzdyk;Lcom/google/android/gms/internal/ads/zzdzw;)V

    .line 174
    sget-object v4, Lcom/google/android/gms/internal/ads/zzdyk;->zzhzd:Lcom/google/android/gms/internal/ads/zzdyk$zzb;

    invoke-virtual {v4, p0, v3, v0}, Lcom/google/android/gms/internal/ads/zzdyk$zzb;->zza(Lcom/google/android/gms/internal/ads/zzdyk;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 175
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdzd;->zziaj:Lcom/google/android/gms/internal/ads/zzdzd;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzdzw;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 178
    :try_start_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdyk$zzc;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzdyk$zzc;-><init>(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 181
    :catchall_1
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdyk$zzc;->zzhzg:Lcom/google/android/gms/internal/ads/zzdyk$zzc;

    .line 182
    :goto_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdyk;->zzhzd:Lcom/google/android/gms/internal/ads/zzdyk$zzb;

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzdyk$zzb;->zza(Lcom/google/android/gms/internal/ads/zzdyk;Ljava/lang/Object;Ljava/lang/Object;)Z

    :goto_1
    return v2

    .line 184
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyk;->value:Ljava/lang/Object;

    .line 185
    :cond_3
    instance-of v2, v0, Lcom/google/android/gms/internal/ads/zzdyk$zza;

    if-eqz v2, :cond_4

    .line 186
    check-cast v0, Lcom/google/android/gms/internal/ads/zzdyk$zza;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzdyk$zza;->wasInterrupted:Z

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzdzw;->cancel(Z)Z

    :cond_4
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 278
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.common.util.concurrent."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 279
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 280
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/16 v1, 0x40

    .line 281
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdyk;->isCancelled()Z

    move-result v1

    const-string v2, "]"

    if-eqz v1, :cond_1

    const-string v1, "CANCELLED"

    .line 283
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 284
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdyk;->isDone()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 285
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdyk;->zza(Ljava/lang/StringBuilder;)V

    goto :goto_4

    .line 287
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const-string v3, "PENDING"

    .line 288
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdyk;->value:Ljava/lang/Object;

    .line 290
    instance-of v4, v3, Lcom/google/android/gms/internal/ads/zzdyk$zzg;

    if-eqz v4, :cond_3

    const-string v4, ", setFuture=["

    .line 291
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    check-cast v3, Lcom/google/android/gms/internal/ads/zzdyk$zzg;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzdyk$zzg;->future:Lcom/google/android/gms/internal/ads/zzdzw;

    invoke-direct {p0, v0, v3}, Lcom/google/android/gms/internal/ads/zzdyk;->zza(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 293
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 294
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdyk;->pendingToString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdwt;->emptyToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_1

    :catch_1
    move-exception v3

    .line 296
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x26

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Exception thrown from implementation: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    if-eqz v3, :cond_4

    const-string v4, ", info=["

    .line 298
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    :cond_4
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdyk;->isDone()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 300
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 301
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdyk;->zza(Ljava/lang/StringBuilder;)V

    .line 302
    :cond_5
    :goto_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final wasInterrupted()Z
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyk;->value:Ljava/lang/Object;

    .line 140
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzdyk$zza;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdyk$zza;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzdyk$zza;->wasInterrupted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final zzazt()Ljava/lang/Throwable;
    .locals 2
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 269
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzdyk$zzi;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyk;->value:Ljava/lang/Object;

    .line 271
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzdyk$zzc;

    if-eqz v1, :cond_0

    .line 272
    check-cast v0, Lcom/google/android/gms/internal/ads/zzdyk$zzc;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdyk$zzc;->exception:Ljava/lang/Throwable;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
