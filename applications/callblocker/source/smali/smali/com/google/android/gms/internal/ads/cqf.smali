.class public Lcom/google/android/gms/internal/ads/cqf;
.super Lcom/google/android/gms/internal/ads/csj;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/crt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/cqf$h;,
        Lcom/google/android/gms/internal/ads/cqf$f;,
        Lcom/google/android/gms/internal/ads/cqf$i;,
        Lcom/google/android/gms/internal/ads/cqf$a;,
        Lcom/google/android/gms/internal/ads/cqf$e;,
        Lcom/google/android/gms/internal/ads/cqf$c;,
        Lcom/google/android/gms/internal/ads/cqf$b;,
        Lcom/google/android/gms/internal/ads/cqf$d;,
        Lcom/google/android/gms/internal/ads/cqf$k;,
        Lcom/google/android/gms/internal/ads/cqf$j;,
        Lcom/google/android/gms/internal/ads/cqf$g;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/csj;",
        "Lcom/google/android/gms/internal/ads/crt",
        "<TV;>;"
    }
.end annotation


# static fields
.field private static final a:Z

.field private static final b:Ljava/util/logging/Logger;

.field private static final c:Lcom/google/android/gms/internal/ads/cqf$a;

.field private static final d:Ljava/lang/Object;


# instance fields
.field private volatile e:Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field private volatile f:Lcom/google/android/gms/internal/ads/cqf$d;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field private volatile g:Lcom/google/android/gms/internal/ads/cqf$k;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 339
    :try_start_0
    const-string/jumbo v0, "guava.concurrent.generate_cancellation_cause"

    const-string/jumbo v1, "false"

    .line 340
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 341
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 345
    :goto_0
    sput-boolean v0, Lcom/google/android/gms/internal/ads/cqf;->a:Z

    .line 346
    const-class v0, Lcom/google/android/gms/internal/ads/cqf;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/cqf;->b:Ljava/util/logging/Logger;

    .line 349
    :try_start_1
    new-instance v0, Lcom/google/android/gms/internal/ads/cqf$i;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/cqf$i;-><init>(Lcom/google/android/gms/internal/ads/cqf$1;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-object v6, v7

    move-object v5, v7

    move-object v1, v0

    .line 361
    :goto_1
    sput-object v1, Lcom/google/android/gms/internal/ads/cqf;->c:Lcom/google/android/gms/internal/ads/cqf$a;

    .line 362
    if-eqz v6, :cond_0

    .line 363
    sget-object v0, Lcom/google/android/gms/internal/ads/cqf;->b:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string/jumbo v2, "com.google.common.util.concurrent.AbstractFuture"

    const-string/jumbo v3, "<clinit>"

    const-string/jumbo v4, "UnsafeAtomicHelper is broken!"

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 364
    sget-object v0, Lcom/google/android/gms/internal/ads/cqf;->b:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string/jumbo v2, "com.google.common.util.concurrent.AbstractFuture"

    const-string/jumbo v3, "<clinit>"

    const-string/jumbo v4, "SafeAtomicHelper is broken!"

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 365
    :cond_0
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/cqf;->d:Ljava/lang/Object;

    return-void

    .line 344
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    .line 351
    :catch_1
    move-exception v8

    .line 352
    :try_start_2
    new-instance v0, Lcom/google/android/gms/internal/ads/cqf$f;

    const-class v1, Lcom/google/android/gms/internal/ads/cqf$k;

    const-class v2, Ljava/lang/Thread;

    const-string/jumbo v3, "b"

    .line 353
    invoke-static {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/internal/ads/cqf$k;

    const-class v3, Lcom/google/android/gms/internal/ads/cqf$k;

    const-string/jumbo v4, "c"

    .line 354
    invoke-static {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    const-class v3, Lcom/google/android/gms/internal/ads/cqf;

    const-class v4, Lcom/google/android/gms/internal/ads/cqf$k;

    const-string/jumbo v5, "g"

    .line 355
    invoke-static {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v3

    const-class v4, Lcom/google/android/gms/internal/ads/cqf;

    const-class v5, Lcom/google/android/gms/internal/ads/cqf$d;

    const-string/jumbo v6, "f"

    .line 356
    invoke-static {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v4

    const-class v5, Lcom/google/android/gms/internal/ads/cqf;

    const-class v6, Ljava/lang/Object;

    const-string/jumbo v9, "e"

    .line 357
    invoke-static {v5, v6, v9}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/cqf$f;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-object v6, v7

    move-object v5, v8

    move-object v1, v0

    .line 358
    goto :goto_1

    .line 359
    :catch_2
    move-exception v0

    .line 360
    new-instance v1, Lcom/google/android/gms/internal/ads/cqf$h;

    invoke-direct {v1, v7}, Lcom/google/android/gms/internal/ads/cqf$h;-><init>(Lcom/google/android/gms/internal/ads/cqf$1;)V

    move-object v6, v0

    move-object v5, v8

    goto :goto_1
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/csj;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/cqf;Lcom/google/android/gms/internal/ads/cqf$d;)Lcom/google/android/gms/internal/ads/cqf$d;
    .locals 0

    .prologue
    .line 337
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cqf;->f:Lcom/google/android/gms/internal/ads/cqf$d;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/cqf;Lcom/google/android/gms/internal/ads/cqf$k;)Lcom/google/android/gms/internal/ads/cqf$k;
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cqf;->g:Lcom/google/android/gms/internal/ads/cqf$k;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/cqf;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cqf;->e:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/cqf;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cqf;->e:Ljava/lang/Object;

    return-object p1
.end method

.method private static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 93
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/cqf$c;

    if-eqz v0, :cond_0

    .line 94
    const-string/jumbo v0, "Task was cancelled."

    check-cast p0, Lcom/google/android/gms/internal/ads/cqf$c;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cqf$c;->d:Ljava/lang/Throwable;

    .line 95
    new-instance v2, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CancellationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 98
    throw v2

    .line 99
    :cond_0
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/cqf$b;

    if-eqz v0, :cond_1

    .line 100
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    check-cast p0, Lcom/google/android/gms/internal/ads/cqf$b;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cqf$b;->b:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 101
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/cqf;->d:Ljava/lang/Object;

    if-ne p0, v0, :cond_2

    .line 102
    const/4 p0, 0x0

    .line 104
    :cond_2
    return-object p0
.end method

.method private final a(Lcom/google/android/gms/internal/ads/cqf$k;)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1
    iput-object v3, p1, Lcom/google/android/gms/internal/ads/cqf$k;->b:Ljava/lang/Thread;

    .line 3
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cqf;->g:Lcom/google/android/gms/internal/ads/cqf$k;

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/cqf$k;->a:Lcom/google/android/gms/internal/ads/cqf$k;

    if-ne v1, v0, :cond_5

    .line 16
    :cond_1
    return-void

    .line 6
    :goto_1
    if-eqz v1, :cond_1

    .line 7
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/cqf$k;->c:Lcom/google/android/gms/internal/ads/cqf$k;

    .line 8
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/cqf$k;->b:Ljava/lang/Thread;

    if-eqz v4, :cond_3

    move-object v0, v1

    :cond_2
    :goto_2
    move-object v1, v2

    .line 15
    goto :goto_1

    .line 10
    :cond_3
    if-eqz v0, :cond_4

    .line 11
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/cqf$k;->c:Lcom/google/android/gms/internal/ads/cqf$k;

    .line 12
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/cqf$k;->b:Ljava/lang/Thread;

    if-nez v1, :cond_2

    goto :goto_0

    .line 14
    :cond_4
    sget-object v4, Lcom/google/android/gms/internal/ads/cqf;->c:Lcom/google/android/gms/internal/ads/cqf$a;

    invoke-virtual {v4, p0, v1, v2}, Lcom/google/android/gms/internal/ads/cqf$a;->a(Lcom/google/android/gms/internal/ads/cqf;Lcom/google/android/gms/internal/ads/cqf$k;Lcom/google/android/gms/internal/ads/cqf$k;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_5
    move-object v0, v3

    goto :goto_1
.end method

.method private final a(Ljava/lang/StringBuilder;)V
    .locals 2

    .prologue
    .line 303
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/cqf;->b(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    .line 304
    const-string/jumbo v1, "SUCCESS, result=["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/cqf;->a(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 306
    const-string/jumbo v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 316
    :goto_0
    return-void

    .line 308
    :catch_0
    move-exception v0

    .line 309
    const-string/jumbo v1, "FAILURE, cause=["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 312
    :catch_1
    move-exception v0

    const-string/jumbo v0, "CANCELLED"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 314
    :catch_2
    move-exception v0

    .line 315
    const-string/jumbo v1, "UNKNOWN, cause=["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " thrown from get()]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private final a(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 317
    if-ne p2, p0, :cond_0

    .line 318
    :try_start_0
    const-string/jumbo v0, "this future"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    :goto_0
    return-void

    .line 319
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 321
    :catch_0
    move-exception v0

    .line 322
    :goto_1
    const-string/jumbo v1, "Exception thrown from implementation: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 321
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/crt;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 332
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/cqf;->c(Lcom/google/android/gms/internal/ads/crt;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future",
            "<TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 218
    const/4 v0, 0x0

    .line 219
    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 220
    if-eqz v0, :cond_0

    .line 221
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 222
    :cond_0
    return-object v1

    .line 224
    :catch_0
    move-exception v0

    const/4 v0, 0x1

    .line 225
    goto :goto_0

    .line 226
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 227
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 228
    :cond_1
    throw v1
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/cqf;)V
    .locals 0

    .prologue
    .line 333
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/cqf;->e(Lcom/google/android/gms/internal/ads/cqf;)V

    return-void
.end method

.method private static b(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 9

    .prologue
    .line 324
    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :goto_0
    return-void

    .line 326
    :catch_0
    move-exception v5

    .line 327
    sget-object v0, Lcom/google/android/gms/internal/ads/cqf;->b:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string/jumbo v2, "com.google.common.util.concurrent.AbstractFuture"

    const-string/jumbo v3, "executeListener"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x39

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v7, "RuntimeException while executing runnable "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, " with executor "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/cqf;)Lcom/google/android/gms/internal/ads/cqf$k;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cqf;->g:Lcom/google/android/gms/internal/ads/cqf$k;

    return-object v0
.end method

.method private static c(Lcom/google/android/gms/internal/ads/crt;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/crt",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 187
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/cqf$g;

    if-eqz v0, :cond_2

    .line 188
    check-cast p0, Lcom/google/android/gms/internal/ads/cqf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cqf;->e:Ljava/lang/Object;

    .line 189
    instance-of v0, v1, Lcom/google/android/gms/internal/ads/cqf$c;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 190
    check-cast v0, Lcom/google/android/gms/internal/ads/cqf$c;

    .line 191
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/cqf$c;->c:Z

    if-eqz v3, :cond_0

    .line 192
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/cqf$c;->d:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 193
    new-instance v1, Lcom/google/android/gms/internal/ads/cqf$c;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cqf$c;->d:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/cqf$c;-><init>(ZLjava/lang/Throwable;)V

    move-object v0, v1

    :goto_0
    move-object v1, v0

    .line 217
    :cond_0
    :goto_1
    return-object v1

    .line 194
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/cqf$c;->b:Lcom/google/android/gms/internal/ads/cqf$c;

    goto :goto_0

    .line 196
    :cond_2
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/csj;

    if-eqz v0, :cond_3

    move-object v0, p0

    .line 197
    check-cast v0, Lcom/google/android/gms/internal/ads/csj;

    .line 198
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/csn;->a(Lcom/google/android/gms/internal/ads/csj;)Ljava/lang/Throwable;

    move-result-object v0

    .line 199
    if-eqz v0, :cond_3

    .line 200
    new-instance v1, Lcom/google/android/gms/internal/ads/cqf$b;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/cqf$b;-><init>(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 201
    :cond_3
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/crt;->isCancelled()Z

    move-result v3

    .line 202
    sget-boolean v0, Lcom/google/android/gms/internal/ads/cqf;->a:Z

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :goto_2
    and-int/2addr v0, v3

    if-eqz v0, :cond_5

    .line 203
    sget-object v1, Lcom/google/android/gms/internal/ads/cqf$c;->b:Lcom/google/android/gms/internal/ads/cqf$c;

    goto :goto_1

    :cond_4
    move v0, v2

    .line 202
    goto :goto_2

    .line 204
    :cond_5
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/cqf;->b(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    .line 205
    if-eqz v3, :cond_6

    .line 206
    new-instance v1, Lcom/google/android/gms/internal/ads/cqf$c;

    const/4 v0, 0x0

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

    const-string/jumbo v6, "get() did not throw CancellationException, despite reporting isCancelled() == true: "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v0, v4}, Lcom/google/android/gms/internal/ads/cqf$c;-><init>(ZLjava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 208
    :catch_0
    move-exception v0

    .line 209
    if-eqz v3, :cond_7

    .line 210
    new-instance v1, Lcom/google/android/gms/internal/ads/cqf$c;

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x54

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v5, "get() did not throw CancellationException, despite reporting isCancelled() == true: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/cqf$c;-><init>(ZLjava/lang/Throwable;)V

    goto/16 :goto_1

    .line 207
    :cond_6
    if-nez v1, :cond_0

    :try_start_1
    sget-object v1, Lcom/google/android/gms/internal/ads/cqf;->d:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_1

    .line 211
    :cond_7
    new-instance v1, Lcom/google/android/gms/internal/ads/cqf$b;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/cqf$b;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 212
    :catch_1
    move-exception v0

    .line 213
    if-nez v3, :cond_8

    .line 214
    new-instance v1, Lcom/google/android/gms/internal/ads/cqf$b;

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x4d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "get() threw CancellationException, despite reporting isCancelled() == false: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/cqf$b;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 215
    :cond_8
    new-instance v1, Lcom/google/android/gms/internal/ads/cqf$c;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/cqf$c;-><init>(ZLjava/lang/Throwable;)V

    goto/16 :goto_1

    .line 216
    :catch_2
    move-exception v0

    .line 217
    new-instance v1, Lcom/google/android/gms/internal/ads/cqf$b;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/cqf$b;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_1
.end method

.method static synthetic d(Lcom/google/android/gms/internal/ads/cqf;)Lcom/google/android/gms/internal/ads/cqf$d;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cqf;->f:Lcom/google/android/gms/internal/ads/cqf$d;

    return-object v0
.end method

.method private static e(Lcom/google/android/gms/internal/ads/cqf;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/cqf",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 229
    move-object v0, v1

    .line 231
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cqf;->g:Lcom/google/android/gms/internal/ads/cqf$k;

    .line 232
    sget-object v3, Lcom/google/android/gms/internal/ads/cqf;->c:Lcom/google/android/gms/internal/ads/cqf$a;

    sget-object v4, Lcom/google/android/gms/internal/ads/cqf$k;->a:Lcom/google/android/gms/internal/ads/cqf$k;

    invoke-virtual {v3, p0, v2, v4}, Lcom/google/android/gms/internal/ads/cqf$a;->a(Lcom/google/android/gms/internal/ads/cqf;Lcom/google/android/gms/internal/ads/cqf$k;Lcom/google/android/gms/internal/ads/cqf$k;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 233
    :goto_1
    if-eqz v2, :cond_2

    .line 235
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/cqf$k;->b:Ljava/lang/Thread;

    .line 236
    if-eqz v3, :cond_1

    .line 237
    iput-object v1, v2, Lcom/google/android/gms/internal/ads/cqf$k;->b:Ljava/lang/Thread;

    .line 238
    invoke-static {v3}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 239
    :cond_1
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/cqf$k;->c:Lcom/google/android/gms/internal/ads/cqf$k;

    goto :goto_1

    .line 240
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cqf;->b()V

    .line 242
    :cond_3
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/cqf;->f:Lcom/google/android/gms/internal/ads/cqf$d;

    .line 243
    sget-object v2, Lcom/google/android/gms/internal/ads/cqf;->c:Lcom/google/android/gms/internal/ads/cqf$a;

    sget-object v4, Lcom/google/android/gms/internal/ads/cqf$d;->a:Lcom/google/android/gms/internal/ads/cqf$d;

    invoke-virtual {v2, p0, v3, v4}, Lcom/google/android/gms/internal/ads/cqf$a;->a(Lcom/google/android/gms/internal/ads/cqf;Lcom/google/android/gms/internal/ads/cqf$d;Lcom/google/android/gms/internal/ads/cqf$d;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, v0

    .line 245
    :goto_2
    if-eqz v3, :cond_4

    .line 247
    iget-object v0, v3, Lcom/google/android/gms/internal/ads/cqf$d;->d:Lcom/google/android/gms/internal/ads/cqf$d;

    .line 248
    iput-object v2, v3, Lcom/google/android/gms/internal/ads/cqf$d;->d:Lcom/google/android/gms/internal/ads/cqf$d;

    move-object v2, v3

    move-object v3, v0

    .line 250
    goto :goto_2

    :cond_4
    move-object v3, v2

    .line 253
    :goto_3
    if-eqz v3, :cond_7

    .line 255
    iget-object v2, v3, Lcom/google/android/gms/internal/ads/cqf$d;->d:Lcom/google/android/gms/internal/ads/cqf$d;

    .line 256
    iget-object v0, v3, Lcom/google/android/gms/internal/ads/cqf$d;->b:Ljava/lang/Runnable;

    .line 257
    instance-of v4, v0, Lcom/google/android/gms/internal/ads/cqf$e;

    if-eqz v4, :cond_6

    .line 258
    check-cast v0, Lcom/google/android/gms/internal/ads/cqf$e;

    .line 259
    iget-object p0, v0, Lcom/google/android/gms/internal/ads/cqf$e;->a:Lcom/google/android/gms/internal/ads/cqf;

    .line 260
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/cqf;->e:Ljava/lang/Object;

    if-ne v3, v0, :cond_5

    .line 261
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/cqf$e;->b:Lcom/google/android/gms/internal/ads/crt;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/cqf;->c(Lcom/google/android/gms/internal/ads/crt;)Ljava/lang/Object;

    move-result-object v3

    .line 262
    sget-object v4, Lcom/google/android/gms/internal/ads/cqf;->c:Lcom/google/android/gms/internal/ads/cqf$a;

    invoke-virtual {v4, p0, v0, v3}, Lcom/google/android/gms/internal/ads/cqf$a;->a(Lcom/google/android/gms/internal/ads/cqf;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_5
    move-object v3, v2

    .line 263
    goto :goto_3

    .line 264
    :cond_6
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/cqf$d;->c:Ljava/util/concurrent/Executor;

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/cqf;->b(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    move-object v3, v2

    .line 265
    goto :goto_3

    .line 266
    :cond_7
    return-void

    :cond_8
    move-object v0, v2

    goto :goto_0
.end method

.method static synthetic f()Lcom/google/android/gms/internal/ads/cqf$a;
    .locals 1

    .prologue
    .line 329
    sget-object v0, Lcom/google/android/gms/internal/ads/cqf;->c:Lcom/google/android/gms/internal/ads/cqf$a;

    return-object v0
.end method

.method static synthetic g()Z
    .locals 1

    .prologue
    .line 330
    sget-boolean v0, Lcom/google/android/gms/internal/ads/cqf;->a:Z

    return v0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 4
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .prologue
    .line 298
    instance-of v0, p0, Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 299
    check-cast p0, Ljava/util/concurrent/ScheduledFuture;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 300
    invoke-interface {p0, v0}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    const/16 v2, 0x29

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "remaining delay=["

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ms]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 302
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 3

    .prologue
    .line 140
    const-string/jumbo v0, "Runnable was null."

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/cor;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string/jumbo v0, "Executor was null."

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/cor;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cqf;->isDone()Z

    move-result v0

    if-nez v0, :cond_2

    .line 143
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cqf;->f:Lcom/google/android/gms/internal/ads/cqf$d;

    .line 144
    sget-object v1, Lcom/google/android/gms/internal/ads/cqf$d;->a:Lcom/google/android/gms/internal/ads/cqf$d;

    if-eq v0, v1, :cond_2

    .line 145
    new-instance v1, Lcom/google/android/gms/internal/ads/cqf$d;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/ads/cqf$d;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 146
    :cond_0
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/cqf$d;->d:Lcom/google/android/gms/internal/ads/cqf$d;

    .line 147
    sget-object v2, Lcom/google/android/gms/internal/ads/cqf;->c:Lcom/google/android/gms/internal/ads/cqf$a;

    invoke-virtual {v2, p0, v0, v1}, Lcom/google/android/gms/internal/ads/cqf$a;->a(Lcom/google/android/gms/internal/ads/cqf;Lcom/google/android/gms/internal/ads/cqf$d;Lcom/google/android/gms/internal/ads/cqf$d;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    :goto_0
    return-void

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cqf;->f:Lcom/google/android/gms/internal/ads/cqf$d;

    .line 150
    sget-object v2, Lcom/google/android/gms/internal/ads/cqf$d;->a:Lcom/google/android/gms/internal/ads/cqf$d;

    if-ne v0, v2, :cond_0

    .line 151
    :cond_2
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/cqf;->b(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_0
.end method

.method final a(Ljava/util/concurrent/Future;)V
    .locals 2
    .param p1    # Ljava/util/concurrent/Future;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 273
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cqf;->isCancelled()Z

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cqf;->d()Z

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 275
    :cond_0
    return-void

    .line 273
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final a(Lcom/google/android/gms/internal/ads/crt;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/crt",
            "<+TV;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 163
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/cor;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cqf;->e:Ljava/lang/Object;

    .line 165
    if-nez v0, :cond_3

    .line 166
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/crt;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/cqf;->c(Lcom/google/android/gms/internal/ads/crt;)Ljava/lang/Object;

    move-result-object v0

    .line 168
    sget-object v3, Lcom/google/android/gms/internal/ads/cqf;->c:Lcom/google/android/gms/internal/ads/cqf$a;

    invoke-virtual {v3, p0, v4, v0}, Lcom/google/android/gms/internal/ads/cqf$a;->a(Lcom/google/android/gms/internal/ads/cqf;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/cqf;->e(Lcom/google/android/gms/internal/ads/cqf;)V

    move v0, v1

    .line 186
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 171
    goto :goto_0

    .line 172
    :cond_1
    new-instance v3, Lcom/google/android/gms/internal/ads/cqf$e;

    invoke-direct {v3, p0, p1}, Lcom/google/android/gms/internal/ads/cqf$e;-><init>(Lcom/google/android/gms/internal/ads/cqf;Lcom/google/android/gms/internal/ads/crt;)V

    .line 173
    sget-object v0, Lcom/google/android/gms/internal/ads/cqf;->c:Lcom/google/android/gms/internal/ads/cqf$a;

    invoke-virtual {v0, p0, v4, v3}, Lcom/google/android/gms/internal/ads/cqf$a;->a(Lcom/google/android/gms/internal/ads/cqf;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 174
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/cqz;->a:Lcom/google/android/gms/internal/ads/cqz;

    invoke-interface {p1, v3, v0}, Lcom/google/android/gms/internal/ads/crt;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v0, v1

    .line 182
    goto :goto_0

    .line 176
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 177
    :try_start_1
    new-instance v0, Lcom/google/android/gms/internal/ads/cqf$b;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/cqf$b;-><init>(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 181
    :goto_2
    sget-object v2, Lcom/google/android/gms/internal/ads/cqf;->c:Lcom/google/android/gms/internal/ads/cqf$a;

    invoke-virtual {v2, p0, v3, v0}, Lcom/google/android/gms/internal/ads/cqf$a;->a(Lcom/google/android/gms/internal/ads/cqf;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1

    .line 180
    :catch_1
    move-exception v0

    sget-object v0, Lcom/google/android/gms/internal/ads/cqf$b;->a:Lcom/google/android/gms/internal/ads/cqf$b;

    goto :goto_2

    .line 183
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cqf;->e:Ljava/lang/Object;

    .line 184
    :cond_3
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/cqf$c;

    if-eqz v1, :cond_4

    .line 185
    check-cast v0, Lcom/google/android/gms/internal/ads/cqf$c;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/cqf$c;->c:Z

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/crt;->cancel(Z)Z

    :cond_4
    move v0, v2

    .line 186
    goto :goto_0
.end method

.method protected a(Ljava/lang/Throwable;)Z
    .locals 3

    .prologue
    .line 158
    new-instance v1, Lcom/google/android/gms/internal/ads/cqf$b;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/cor;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/cqf$b;-><init>(Ljava/lang/Throwable;)V

    .line 159
    sget-object v0, Lcom/google/android/gms/internal/ads/cqf;->c:Lcom/google/android/gms/internal/ads/cqf$a;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Lcom/google/android/gms/internal/ads/cqf$a;->a(Lcom/google/android/gms/internal/ads/cqf;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/cqf;->e(Lcom/google/android/gms/internal/ads/cqf;)V

    .line 161
    const/4 v0, 0x1

    .line 162
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b()V
    .locals 0

    .prologue
    .line 267
    return-void
.end method

.method protected b(Ljava/lang/Object;)Z
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

    .prologue
    .line 153
    if-nez p1, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/ads/cqf;->d:Ljava/lang/Object;

    .line 154
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/cqf;->c:Lcom/google/android/gms/internal/ads/cqf$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lcom/google/android/gms/internal/ads/cqf$a;->a(Lcom/google/android/gms/internal/ads/cqf;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/cqf;->e(Lcom/google/android/gms/internal/ads/cqf;)V

    .line 156
    const/4 v0, 0x1

    .line 157
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected c()V
    .locals 0

    .prologue
    .line 137
    return-void
.end method

.method public cancel(Z)Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 109
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cqf;->e:Ljava/lang/Object;

    .line 111
    if-nez v1, :cond_2

    move v0, v2

    :goto_0
    instance-of v4, v1, Lcom/google/android/gms/internal/ads/cqf$e;

    or-int/2addr v0, v4

    if-eqz v0, :cond_9

    .line 112
    sget-boolean v0, Lcom/google/android/gms/internal/ads/cqf;->a:Z

    if-eqz v0, :cond_3

    .line 113
    new-instance v0, Lcom/google/android/gms/internal/ads/cqf$c;

    new-instance v4, Ljava/util/concurrent/CancellationException;

    const-string/jumbo v5, "Future.cancel() was called."

    invoke-direct {v4, v5}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p1, v4}, Lcom/google/android/gms/internal/ads/cqf$c;-><init>(ZLjava/lang/Throwable;)V

    move-object v4, v0

    :goto_1
    move v5, v3

    move-object v0, v1

    .line 118
    :cond_0
    :goto_2
    sget-object v1, Lcom/google/android/gms/internal/ads/cqf;->c:Lcom/google/android/gms/internal/ads/cqf$a;

    invoke-virtual {v1, p0, v0, v4}, Lcom/google/android/gms/internal/ads/cqf$a;->a(Lcom/google/android/gms/internal/ads/cqf;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 120
    if-eqz p1, :cond_1

    .line 121
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cqf;->c()V

    .line 122
    :cond_1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/cqf;->e(Lcom/google/android/gms/internal/ads/cqf;)V

    .line 123
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/cqf$e;

    if-eqz v1, :cond_7

    .line 124
    check-cast v0, Lcom/google/android/gms/internal/ads/cqf$e;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cqf$e;->b:Lcom/google/android/gms/internal/ads/crt;

    .line 125
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/cqf$g;

    if-eqz v1, :cond_6

    move-object v1, v0

    .line 126
    check-cast v1, Lcom/google/android/gms/internal/ads/cqf;

    .line 127
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/cqf;->e:Ljava/lang/Object;

    .line 128
    if-nez v0, :cond_5

    move v5, v2

    :goto_3
    instance-of v6, v0, Lcom/google/android/gms/internal/ads/cqf$e;

    or-int/2addr v5, v6

    if-eqz v5, :cond_7

    move-object p0, v1

    move v5, v2

    .line 130
    goto :goto_2

    :cond_2
    move v0, v3

    .line 111
    goto :goto_0

    .line 114
    :cond_3
    if-eqz p1, :cond_4

    .line 115
    sget-object v0, Lcom/google/android/gms/internal/ads/cqf$c;->a:Lcom/google/android/gms/internal/ads/cqf$c;

    move-object v4, v0

    goto :goto_1

    .line 116
    :cond_4
    sget-object v0, Lcom/google/android/gms/internal/ads/cqf$c;->b:Lcom/google/android/gms/internal/ads/cqf$c;

    move-object v4, v0

    goto :goto_1

    :cond_5
    move v5, v3

    .line 128
    goto :goto_3

    .line 132
    :cond_6
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/crt;->cancel(Z)Z

    .line 136
    :cond_7
    :goto_4
    return v2

    .line 134
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cqf;->e:Ljava/lang/Object;

    .line 135
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/cqf$e;

    if-nez v1, :cond_0

    move v2, v5

    goto :goto_4

    :cond_9
    move v2, v3

    goto :goto_4
.end method

.method protected final d()Z
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cqf;->e:Ljava/lang/Object;

    .line 139
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/cqf$c;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/gms/internal/ads/cqf$c;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/cqf$c;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final e()Ljava/lang/Throwable;
    .locals 2
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .prologue
    .line 268
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/cqf$g;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cqf;->e:Ljava/lang/Object;

    .line 270
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/cqf$b;

    if-eqz v1, :cond_0

    .line 271
    check-cast v0, Lcom/google/android/gms/internal/ads/cqf$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cqf$b;->b:Ljava/lang/Throwable;

    .line 272
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 73
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 75
    :cond_0
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/cqf;->e:Ljava/lang/Object;

    .line 76
    if-eqz v4, :cond_1

    move v0, v1

    :goto_0
    instance-of v3, v4, Lcom/google/android/gms/internal/ads/cqf$e;

    if-nez v3, :cond_2

    move v3, v1

    :goto_1
    and-int/2addr v0, v3

    if-eqz v0, :cond_3

    .line 77
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/cqf;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 92
    :goto_2
    return-object v0

    :cond_1
    move v0, v2

    .line 76
    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    .line 78
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cqf;->g:Lcom/google/android/gms/internal/ads/cqf$k;

    .line 79
    sget-object v3, Lcom/google/android/gms/internal/ads/cqf$k;->a:Lcom/google/android/gms/internal/ads/cqf$k;

    if-eq v0, v3, :cond_a

    .line 80
    new-instance v4, Lcom/google/android/gms/internal/ads/cqf$k;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/cqf$k;-><init>()V

    .line 81
    :cond_4
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/cqf$k;->a(Lcom/google/android/gms/internal/ads/cqf$k;)V

    .line 82
    sget-object v3, Lcom/google/android/gms/internal/ads/cqf;->c:Lcom/google/android/gms/internal/ads/cqf$a;

    invoke-virtual {v3, p0, v0, v4}, Lcom/google/android/gms/internal/ads/cqf$a;->a(Lcom/google/android/gms/internal/ads/cqf;Lcom/google/android/gms/internal/ads/cqf$k;Lcom/google/android/gms/internal/ads/cqf$k;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 83
    :cond_5
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 84
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 85
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/cqf;->a(Lcom/google/android/gms/internal/ads/cqf$k;)V

    .line 86
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 87
    :cond_6
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/cqf;->e:Ljava/lang/Object;

    .line 88
    if-eqz v5, :cond_7

    move v0, v1

    :goto_3
    instance-of v3, v5, Lcom/google/android/gms/internal/ads/cqf$e;

    if-nez v3, :cond_8

    move v3, v1

    :goto_4
    and-int/2addr v0, v3

    if-eqz v0, :cond_5

    .line 89
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/cqf;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    :cond_7
    move v0, v2

    .line 88
    goto :goto_3

    :cond_8
    move v3, v2

    goto :goto_4

    .line 90
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cqf;->g:Lcom/google/android/gms/internal/ads/cqf$k;

    .line 91
    sget-object v3, Lcom/google/android/gms/internal/ads/cqf$k;->a:Lcom/google/android/gms/internal/ads/cqf$k;

    if-ne v0, v3, :cond_4

    .line 92
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cqf;->e:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cqf;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 18
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    .line 20
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 22
    :cond_0
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/cqf;->e:Ljava/lang/Object;

    .line 23
    if-eqz v4, :cond_1

    const/4 v0, 0x1

    :goto_0
    instance-of v1, v4, Lcom/google/android/gms/internal/ads/cqf$e;

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    .line 24
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/cqf;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 49
    :goto_2
    return-object v0

    .line 23
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 25
    :cond_3
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    add-long/2addr v0, v2

    move-wide v4, v0

    .line 26
    :goto_3
    const-wide/16 v0, 0x3e8

    cmp-long v0, v2, v0

    if-ltz v0, :cond_b

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cqf;->g:Lcom/google/android/gms/internal/ads/cqf$k;

    .line 28
    sget-object v1, Lcom/google/android/gms/internal/ads/cqf$k;->a:Lcom/google/android/gms/internal/ads/cqf$k;

    if-eq v0, v1, :cond_d

    .line 29
    new-instance v6, Lcom/google/android/gms/internal/ads/cqf$k;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/cqf$k;-><init>()V

    .line 30
    :cond_4
    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/ads/cqf$k;->a(Lcom/google/android/gms/internal/ads/cqf$k;)V

    .line 31
    sget-object v1, Lcom/google/android/gms/internal/ads/cqf;->c:Lcom/google/android/gms/internal/ads/cqf$a;

    invoke-virtual {v1, p0, v0, v6}, Lcom/google/android/gms/internal/ads/cqf$a;->a(Lcom/google/android/gms/internal/ads/cqf;Lcom/google/android/gms/internal/ads/cqf$k;Lcom/google/android/gms/internal/ads/cqf$k;)Z

    move-result v0

    if-eqz v0, :cond_c

    move-wide v0, v2

    .line 32
    :cond_5
    invoke-static {p0, v0, v1}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 33
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 34
    invoke-direct {p0, v6}, Lcom/google/android/gms/internal/ads/cqf;->a(Lcom/google/android/gms/internal/ads/cqf$k;)V

    .line 35
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 25
    :cond_6
    const-wide/16 v0, 0x0

    move-wide v4, v0

    goto :goto_3

    .line 36
    :cond_7
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cqf;->e:Ljava/lang/Object;

    .line 37
    if-eqz v2, :cond_8

    const/4 v0, 0x1

    :goto_4
    instance-of v1, v2, Lcom/google/android/gms/internal/ads/cqf$e;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    :goto_5
    and-int/2addr v0, v1

    if-eqz v0, :cond_a

    .line 38
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/cqf;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    .line 37
    :cond_8
    const/4 v0, 0x0

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    goto :goto_5

    .line 39
    :cond_a
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long v0, v4, v0

    .line 40
    const-wide/16 v2, 0x3e8

    cmp-long v2, v0, v2

    if-gez v2, :cond_5

    .line 41
    invoke-direct {p0, v6}, Lcom/google/android/gms/internal/ads/cqf;->a(Lcom/google/android/gms/internal/ads/cqf$k;)V

    move-wide v2, v0

    .line 46
    :cond_b
    :goto_6
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_12

    .line 47
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cqf;->e:Ljava/lang/Object;

    .line 48
    if-eqz v2, :cond_e

    const/4 v0, 0x1

    :goto_7
    instance-of v1, v2, Lcom/google/android/gms/internal/ads/cqf$e;

    if-nez v1, :cond_f

    const/4 v1, 0x1

    :goto_8
    and-int/2addr v0, v1

    if-eqz v0, :cond_10

    .line 49
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/cqf;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_2

    .line 43
    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cqf;->g:Lcom/google/android/gms/internal/ads/cqf$k;

    .line 44
    sget-object v1, Lcom/google/android/gms/internal/ads/cqf$k;->a:Lcom/google/android/gms/internal/ads/cqf$k;

    if-ne v0, v1, :cond_4

    .line 45
    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cqf;->e:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cqf;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_2

    .line 48
    :cond_e
    const/4 v0, 0x0

    goto :goto_7

    :cond_f
    const/4 v1, 0x0

    goto :goto_8

    .line 50
    :cond_10
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 51
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 52
    :cond_11
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long v0, v4, v0

    move-wide v2, v0

    goto :goto_6

    .line 53
    :cond_12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cqf;->toString()Ljava/lang/String;

    move-result-object v4

    .line 54
    invoke-virtual {p3}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 55
    invoke-virtual {p3}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1c

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "Waited "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    const-wide/16 v6, 0x3e8

    add-long/2addr v6, v2

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-gez v1, :cond_17

    .line 57
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, " (plus "

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    neg-long v2, v2

    .line 59
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    .line 60
    invoke-virtual {p3, v6, v7}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v8

    sub-long/2addr v2, v8

    .line 61
    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-eqz v1, :cond_13

    const-wide/16 v8, 0x3e8

    cmp-long v1, v2, v8

    if-lez v1, :cond_18

    :cond_13
    const/4 v1, 0x1

    .line 62
    :goto_9
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_15

    .line 63
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x15

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    if-eqz v1, :cond_14

    .line 65
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    :cond_14
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    :cond_15
    if-eqz v1, :cond_16

    .line 68
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x21

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " nanoseconds "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    :cond_16
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "delay)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    :cond_17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cqf;->isDone()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 71
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, " but future completed as timeout expired"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 61
    :cond_18
    const/4 v1, 0x0

    goto/16 :goto_9

    .line 72
    :cond_19
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cqf;->e:Ljava/lang/Object;

    .line 108
    instance-of v0, v0, Lcom/google/android/gms/internal/ads/cqf$c;

    return v0
.end method

.method public isDone()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 105
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/cqf;->e:Ljava/lang/Object;

    .line 106
    if-eqz v3, :cond_0

    move v0, v1

    :goto_0
    instance-of v3, v3, Lcom/google/android/gms/internal/ads/cqf$e;

    if-nez v3, :cond_1

    :goto_1
    and-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "[status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 277
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cqf;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 278
    const-string/jumbo v0, "CANCELLED"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    :cond_0
    :goto_0
    const-string/jumbo v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 279
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cqf;->isDone()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 280
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/cqf;->a(Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 282
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 283
    const-string/jumbo v0, "PENDING"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cqf;->e:Ljava/lang/Object;

    .line 285
    instance-of v3, v0, Lcom/google/android/gms/internal/ads/cqf$e;

    if-eqz v3, :cond_4

    .line 286
    const-string/jumbo v3, ", setFuture=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    check-cast v0, Lcom/google/android/gms/internal/ads/cqf$e;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cqf$e;->b:Lcom/google/android/gms/internal/ads/crt;

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/ads/cqf;->a(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 288
    const-string/jumbo v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cqf;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 296
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/cqf;->a(Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 289
    :cond_4
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cqf;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cos;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 292
    :goto_2
    if-eqz v0, :cond_3

    .line 293
    const-string/jumbo v3, ", info=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 291
    :catch_0
    move-exception v0

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x26

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Exception thrown from implementation: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3
.end method
