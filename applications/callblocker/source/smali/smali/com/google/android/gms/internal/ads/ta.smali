.class public final Lcom/google/android/gms/internal/ads/ta;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/util/concurrent/ThreadPoolExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/Object;

.field private c:Ljava/lang/String;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "gmpAppIdLock"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "gmpAppIdLock"
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final f:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final g:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/google/android/gms/internal/ads/afb;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/util/concurrent/FutureTask",
            "<*>;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "proxyReference"
    .end annotation
.end field

.field private final l:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ta;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ta;->b:Ljava/lang/Object;

    .line 4
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/ta;->c:Ljava/lang/String;

    .line 5
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/ta;->d:Ljava/lang/String;

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ta;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ta;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ta;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 9
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ta;->h:Ljava/util/concurrent/atomic/AtomicReference;

    .line 10
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ta;->i:Ljava/util/concurrent/ConcurrentMap;

    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ta;->j:Ljava/util/concurrent/atomic/AtomicReference;

    .line 12
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ta;->k:Ljava/util/concurrent/BlockingQueue;

    .line 13
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ta;->l:Ljava/lang/Object;

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6

    .prologue
    .line 203
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 204
    :try_start_0
    const-string/jumbo v0, "_aeid"

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 208
    :goto_0
    const-string/jumbo v0, "_ac"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    const-string/jumbo v0, "_r"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 210
    :cond_0
    return-object v2

    .line 206
    :catch_0
    move-exception v0

    .line 207
    :goto_1
    const-string/jumbo v3, "Invalid event ID: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 206
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private final a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 263
    const-string/jumbo v1, "com.google.android.gms.measurement.AppMeasurement"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ta;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0, p2, v1, v2, v4}, Lcom/google/android/gms/internal/ads/ta;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 269
    :goto_0
    return-object v0

    .line 265
    :cond_0
    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/ads/ta;->i(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 266
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ta;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 267
    :catch_0
    move-exception v1

    .line 268
    invoke-direct {p0, v1, p1, v4}, Lcom/google/android/gms/internal/ads/ta;->a(Ljava/lang/Exception;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private final a(Ljava/lang/String;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/to;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Lcom/google/android/gms/internal/ads/to",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 305
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ta;->j:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    .line 306
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ta;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/afb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    if-eqz v0, :cond_0

    .line 308
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ta;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/afb;

    invoke-interface {p3, v0}, Lcom/google/android/gms/internal/ads/to;->a(Lcom/google/android/gms/internal/ads/afb;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object p2

    :try_start_2
    monitor-exit v1

    .line 311
    :goto_0
    return-object p2

    .line 309
    :catch_0
    move-exception v0

    .line 310
    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v2}, Lcom/google/android/gms/internal/ads/ta;->a(Ljava/lang/Exception;Ljava/lang/String;Z)V

    .line 311
    :cond_0
    monitor-exit v1

    goto :goto_0

    .line 312
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 254
    const-string/jumbo v0, "com.google.android.gms.measurement.AppMeasurement"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ta;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/ta;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    :goto_0
    return-void

    .line 256
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/ta;->h(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 257
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ta;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x25

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v0, "Invoke Firebase method "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", Ad Unit Id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 260
    :catch_0
    move-exception v0

    .line 261
    invoke-direct {p0, v0, p3, v4}, Lcom/google/android/gms/internal/ads/ta;->a(Ljava/lang/Exception;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 188
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/ta;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    invoke-static {p3, p2}, Lcom/google/android/gms/internal/ads/ta;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 191
    if-eqz p4, :cond_2

    .line 192
    invoke-virtual {v0, p4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 193
    :cond_2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ta;->h(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 194
    const-string/jumbo v1, "logEventInternal"

    new-instance v2, Lcom/google/android/gms/internal/ads/tb;

    invoke-direct {v2, p2, v0}, Lcom/google/android/gms/internal/ads/tb;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/ads/ta;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/tr;)V

    goto :goto_0

    .line 195
    :cond_3
    const-string/jumbo v1, "com.google.android.gms.measurement.AppMeasurement"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ta;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0, p1, v1, v2, v6}, Lcom/google/android/gms/internal/ads/ta;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/ta;->i(Landroid/content/Context;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 198
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ta;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "am"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    const-string/jumbo v1, "logEventInternal"

    invoke-direct {p0, v0, v1, v6}, Lcom/google/android/gms/internal/ads/ta;->a(Ljava/lang/Exception;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private final a(Ljava/lang/Exception;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ta;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v0, "Invoke Firebase method "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " error."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    .line 272
    if-eqz p3, :cond_0

    .line 273
    const-string/jumbo v0, "The Google Mobile Ads SDK will not integrate with Firebase. Admob/Firebase integration requires the latest Firebase SDK jar, but Firebase SDK is either missing or out of date"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ta;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 275
    :cond_0
    return-void
.end method

.method private final a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/tr;)V
    .locals 4

    .prologue
    .line 299
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ta;->j:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    .line 300
    :try_start_0
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lcom/google/android/gms/internal/ads/te;

    invoke-direct {v2, p0, p2, p1}, Lcom/google/android/gms/internal/ads/te;-><init>(Lcom/google/android/gms/internal/ads/ta;Lcom/google/android/gms/internal/ads/tr;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 301
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ta;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 302
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->run()V

    .line 304
    :goto_0
    monitor-exit v1

    return-void

    .line 303
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ta;->k:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, v0}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    .line 304
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final a(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Z)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Object;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 289
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 290
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 291
    const-string/jumbo v3, "getInstance"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    .line 292
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 293
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p3, v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move v0, v1

    .line 298
    :goto_0
    return v0

    .line 295
    :catch_0
    move-exception v1

    .line 296
    const-string/jumbo v2, "getInstance"

    invoke-direct {p0, v1, v2, p4}, Lcom/google/android/gms/internal/ads/ta;->a(Ljava/lang/Exception;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private final b()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 11

    .prologue
    .line 276
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ta;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 277
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/ta;->a:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v10, 0x0

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->W:Lcom/google/android/gms/internal/ads/ect;

    .line 279
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 280
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->W:Lcom/google/android/gms/internal/ads/ect;

    .line 282
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 283
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 285
    new-instance v8, Lcom/google/android/gms/internal/ads/tp;

    invoke-direct {v8, p0}, Lcom/google/android/gms/internal/ads/tp;-><init>(Lcom/google/android/gms/internal/ads/ta;)V

    .line 286
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 287
    invoke-virtual {v9, v10, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ta;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method private final h(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 222
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ta;->i:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 223
    if-eqz v0, :cond_0

    .line 231
    :goto_0
    return-object v0

    .line 225
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string/jumbo v1, "com.google.android.gms.measurement.AppMeasurement"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 226
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, p2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 227
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ta;->i:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p2, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 229
    :catch_0
    move-exception v0

    .line 230
    invoke-direct {p0, v0, p2, v4}, Lcom/google/android/gms/internal/ads/ta;->a(Ljava/lang/Exception;Ljava/lang/String;Z)V

    .line 231
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static h(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 33
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->X:Lcom/google/android/gms/internal/ads/ect;

    .line 34
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 35
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 51
    :goto_0
    return v0

    .line 38
    :cond_0
    const-string/jumbo v0, "com.google.android.gms.ads.dynamite"

    invoke-static {p0, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 39
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->Y:Lcom/google/android/gms/internal/ads/ect;

    .line 41
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 42
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v3, v0, :cond_1

    move v0, v1

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->Z:Lcom/google/android/gms/internal/ads/ect;

    .line 45
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 46
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string/jumbo v3, "com.google.firebase.analytics.FirebaseAnalytics"

    invoke-virtual {v0, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 48
    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 51
    goto :goto_0
.end method

.method private final i(Landroid/content/Context;)Ljava/lang/reflect/Method;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 211
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ta;->i:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v1, "logEventInternal"

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 212
    if-eqz v0, :cond_0

    .line 221
    :goto_0
    return-object v0

    .line 214
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string/jumbo v1, "com.google.android.gms.measurement.AppMeasurement"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 215
    const-string/jumbo v1, "logEventInternal"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Landroid/os/Bundle;

    aput-object v4, v2, v3

    .line 216
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 217
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ta;->i:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v2, "logEventInternal"

    invoke-interface {v1, v2, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 219
    :catch_0
    move-exception v0

    .line 220
    const-string/jumbo v1, "logEventInternal"

    invoke-direct {p0, v0, v1, v5}, Lcom/google/android/gms/internal/ads/ta;->a(Ljava/lang/Exception;Ljava/lang/String;Z)V

    .line 221
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final i(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 232
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ta;->i:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 233
    if-eqz v0, :cond_0

    .line 241
    :goto_0
    return-object v0

    .line 235
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string/jumbo v1, "com.google.android.gms.measurement.AppMeasurement"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 236
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, p2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 237
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ta;->i:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p2, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 239
    :catch_0
    move-exception v0

    .line 240
    invoke-direct {p0, v0, p2, v2}, Lcom/google/android/gms/internal/ads/ta;->a(Ljava/lang/Exception;Ljava/lang/String;Z)V

    .line 241
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final j(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 242
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ta;->i:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 243
    if-eqz v0, :cond_0

    .line 253
    :goto_0
    return-object v0

    .line 246
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string/jumbo v1, "com.google.firebase.analytics.FirebaseAnalytics"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 247
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/app/Activity;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    .line 248
    invoke-virtual {v0, p2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 249
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ta;->i:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p2, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 251
    :catch_0
    move-exception v0

    .line 252
    invoke-direct {p0, v0, p2, v4}, Lcom/google/android/gms/internal/ads/ta;->a(Ljava/lang/Exception;Ljava/lang/String;Z)V

    .line 253
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method final synthetic a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 321
    const-string/jumbo v0, "getAppInstanceId"

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/gms/internal/ads/td;->a:Lcom/google/android/gms/internal/ads/to;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/ta;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/to;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/dya;)V
    .locals 2

    .prologue
    .line 60
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->ad:Lcom/google/android/gms/internal/ads/ect;

    .line 61
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 62
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/ta;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ta;->h(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ta;->l:Ljava/lang/Object;

    monitor-enter v1

    .line 67
    :try_start_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ech;)V
    .locals 2

    .prologue
    .line 52
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->ad:Lcom/google/android/gms/internal/ads/ect;

    .line 53
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 54
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/ta;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ta;->h(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ta;->l:Ljava/lang/Object;

    monitor-enter v1

    .line 59
    :try_start_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/ta;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ta;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    const-string/jumbo v0, "beginAdUnitExposure"

    new-instance v1, Lcom/google/android/gms/internal/ads/sz;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/ads/sz;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/ta;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/tr;)V

    goto :goto_0

    .line 72
    :cond_1
    const-string/jumbo v0, "beginAdUnitExposure"

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/ta;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 179
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/ta;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    :goto_0
    return-void

    .line 181
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 182
    const-string/jumbo v1, "_ai"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string/jumbo v1, "reward_type"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string/jumbo v1, "reward_value"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 185
    const-string/jumbo v1, "_ar"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/google/android/gms/internal/ads/ta;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 186
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v0, "Log a Firebase reward video event, reward type: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", reward value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method final synthetic a(Lcom/google/android/gms/internal/ads/tr;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ta;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/afb;

    .line 314
    if-eqz v0, :cond_0

    .line 315
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ta;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/afb;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/tr;->a(Lcom/google/android/gms/internal/ads/afb;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 317
    :catch_0
    move-exception v0

    .line 318
    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lcom/google/android/gms/internal/ads/ta;->a(Ljava/lang/Exception;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 14
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->Q:Lcom/google/android/gms/internal/ads/ect;

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ta;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    .line 32
    :goto_0
    return v0

    .line 20
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->aa:Lcom/google/android/gms/internal/ads/ect;

    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 22
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 23
    goto :goto_0

    .line 24
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ta;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_3

    .line 25
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->a()Lcom/google/android/gms/internal/ads/xr;

    .line 26
    const v0, 0xbdfcb8

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/xr;->c(Landroid/content/Context;I)Z

    move-result v0

    .line 27
    if-nez v0, :cond_4

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->a()Lcom/google/android/gms/internal/ads/xr;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/xr;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 29
    const-string/jumbo v0, "Google Play Service is out of date, the Google Mobile Ads SDK will not integrate with Firebase. Admob/Firebase integration requires updated Google Play Service."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ta;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 32
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ta;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne v0, v1, :cond_5

    move v0, v1

    goto :goto_0

    .line 31
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ta;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_1

    :cond_5
    move v0, v2

    .line 32
    goto :goto_0
.end method

.method public final b(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 80
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/ta;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 81
    const-string/jumbo v0, ""

    .line 94
    :cond_0
    :goto_0
    return-object v0

    .line 82
    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ta;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    const-string/jumbo v0, "getCurrentScreenNameOrScreenClass"

    const-string/jumbo v1, ""

    sget-object v2, Lcom/google/android/gms/internal/ads/tf;->a:Lcom/google/android/gms/internal/ads/to;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/ta;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/to;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 84
    :cond_2
    const-string/jumbo v0, "com.google.android.gms.measurement.AppMeasurement"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ta;->g:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/ta;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 85
    const-string/jumbo v0, ""

    goto :goto_0

    .line 86
    :cond_3
    :try_start_0
    const-string/jumbo v0, "getCurrentScreenName"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ta;->i(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ta;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 88
    if-nez v0, :cond_4

    .line 89
    const-string/jumbo v0, "getCurrentScreenClass"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ta;->i(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ta;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 91
    :cond_4
    if-nez v0, :cond_0

    const-string/jumbo v0, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    const-string/jumbo v1, "getCurrentScreenName"

    invoke-direct {p0, v0, v1, v3}, Lcom/google/android/gms/internal/ads/ta;->a(Ljava/lang/Exception;Ljava/lang/String;Z)V

    .line 94
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/ta;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ta;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    const-string/jumbo v0, "endAdUnitExposure"

    new-instance v1, Lcom/google/android/gms/internal/ads/th;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/ads/th;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/ta;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/tr;)V

    goto :goto_0

    .line 78
    :cond_1
    const-string/jumbo v0, "endAdUnitExposure"

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/ta;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final c(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 113
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/ta;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    const/4 v0, 0x0

    .line 122
    :goto_0
    return-object v0

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ta;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ta;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ta;->c:Ljava/lang/String;

    monitor-exit v1

    goto :goto_0

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 118
    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ta;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 119
    const-string/jumbo v0, "getGmpAppId"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ta;->c:Ljava/lang/String;

    sget-object v3, Lcom/google/android/gms/internal/ads/ti;->a:Lcom/google/android/gms/internal/ads/to;

    .line 120
    invoke-direct {p0, v0, v2, v3}, Lcom/google/android/gms/internal/ads/ta;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/to;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ta;->c:Ljava/lang/String;

    .line 122
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ta;->c:Ljava/lang/String;

    monitor-exit v1

    goto :goto_0

    .line 121
    :cond_2
    const-string/jumbo v0, "getGmpAppId"

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/ta;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ta;->c:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public final c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 95
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/ta;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 99
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ta;->h(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 100
    const-string/jumbo v1, "setScreenName"

    new-instance v2, Lcom/google/android/gms/internal/ads/tj;

    invoke-direct {v2, p1, p2}, Lcom/google/android/gms/internal/ads/tj;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/ads/ta;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/tr;)V

    goto :goto_0

    .line 101
    :cond_2
    const-string/jumbo v1, "com.google.firebase.analytics.FirebaseAnalytics"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ta;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0, p1, v1, v2, v6}, Lcom/google/android/gms/internal/ads/ta;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    const-string/jumbo v1, "setCurrentScreen"

    .line 104
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/ta;->j(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 105
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    .line 106
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ta;->h:Ljava/util/concurrent/atomic/AtomicReference;

    .line 107
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object p2, v4, v1

    const/4 v1, 0x2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 108
    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 110
    :catch_0
    move-exception v1

    .line 111
    const-string/jumbo v2, "setCurrentScreen"

    invoke-direct {p0, v1, v2, v6}, Lcom/google/android/gms/internal/ads/ta;->a(Ljava/lang/Exception;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public final d(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 124
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/ta;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 149
    :goto_0
    return-object v0

    .line 126
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->V:Lcom/google/android/gms/internal/ads/ect;

    .line 127
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 128
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 129
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ta;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 130
    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    .line 131
    :try_start_0
    const-string/jumbo v0, "getAppInstanceId"

    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/gms/internal/ads/tl;->a:Lcom/google/android/gms/internal/ads/to;

    invoke-direct {p0, v0, v2, v3}, Lcom/google/android/gms/internal/ads/ta;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/to;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 133
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ta;->b()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v4, Lcom/google/android/gms/internal/ads/tk;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/ads/tk;-><init>(Lcom/google/android/gms/internal/ads/ta;)V

    .line 134
    invoke-virtual {v0, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 135
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    const-string/jumbo v0, "TIME_OUT"

    goto :goto_0

    .line 139
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 140
    :cond_2
    cmp-long v0, v2, v4

    if-gez v0, :cond_3

    .line 141
    const-string/jumbo v0, "getAppInstanceId"

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/ta;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 143
    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ta;->b()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v4, Lcom/google/android/gms/internal/ads/tn;

    invoke-direct {v4, p0, p1}, Lcom/google/android/gms/internal/ads/tn;-><init>(Lcom/google/android/gms/internal/ads/ta;Landroid/content/Context;)V

    .line 144
    invoke-virtual {v0, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 145
    :try_start_1
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 147
    :catch_2
    move-exception v0

    const-string/jumbo v0, "TIME_OUT"

    goto :goto_0

    .line 149
    :catch_3
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public final d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 171
    const-string/jumbo v0, "_ac"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/google/android/gms/internal/ads/ta;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 172
    return-void
.end method

.method public final e(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 150
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/ta;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 159
    :goto_0
    return-object v0

    .line 152
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ta;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 153
    const-string/jumbo v0, "getAdEventId"

    sget-object v2, Lcom/google/android/gms/internal/ads/tm;->a:Lcom/google/android/gms/internal/ads/to;

    .line 154
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/ta;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/to;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 155
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0

    .line 156
    :cond_2
    const-string/jumbo v0, "generateEventId"

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/ta;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    .line 157
    if-eqz v0, :cond_3

    .line 158
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 159
    goto :goto_0
.end method

.method public final e(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 173
    const-string/jumbo v0, "_ai"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/google/android/gms/internal/ads/ta;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 174
    return-void
.end method

.method public final f(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 160
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/ta;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    const/4 v0, 0x0

    .line 169
    :goto_0
    return-object v0

    .line 162
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ta;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ta;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ta;->d:Ljava/lang/String;

    monitor-exit v1

    goto :goto_0

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 165
    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ta;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 166
    const-string/jumbo v0, "getAppIdOrigin"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ta;->d:Ljava/lang/String;

    sget-object v3, Lcom/google/android/gms/internal/ads/tc;->a:Lcom/google/android/gms/internal/ads/to;

    .line 167
    invoke-direct {p0, v0, v2, v3}, Lcom/google/android/gms/internal/ads/ta;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/to;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ta;->d:Ljava/lang/String;

    .line 169
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ta;->d:Ljava/lang/String;

    monitor-exit v1

    goto :goto_0

    .line 168
    :cond_2
    const-string/jumbo v0, "fa"

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ta;->d:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public final f(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 175
    const-string/jumbo v0, "_aq"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/google/android/gms/internal/ads/ta;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 176
    return-void
.end method

.method final synthetic g(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 320
    const-string/jumbo v0, "getAppInstanceId"

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/ta;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final g(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 177
    const-string/jumbo v0, "_aa"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/google/android/gms/internal/ads/ta;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 178
    return-void
.end method
