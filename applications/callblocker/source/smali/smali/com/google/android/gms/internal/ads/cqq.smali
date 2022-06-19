.class abstract Lcom/google/android/gms/internal/ads/cqq;
.super Lcom/google/android/gms/internal/ads/cqf$j;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/cqq$c;,
        Lcom/google/android/gms/internal/ads/cqq$a;,
        Lcom/google/android/gms/internal/ads/cqq$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<OutputT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/cqf$j",
        "<TOutputT;>;"
    }
.end annotation


# static fields
.field private static final c:Lcom/google/android/gms/internal/ads/cqq$b;

.field private static final d:Ljava/util/logging/Logger;


# instance fields
.field private volatile a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private volatile b:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 19
    const-class v0, Lcom/google/android/gms/internal/ads/cqq;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/cqq;->d:Ljava/util/logging/Logger;

    .line 21
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/cqq$a;

    const-class v1, Lcom/google/android/gms/internal/ads/cqq;

    const-class v2, Ljava/util/Set;

    const-string/jumbo v3, "a"

    .line 22
    invoke-static {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/internal/ads/cqq;

    const-string/jumbo v3, "b"

    .line 23
    invoke-static {v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/cqq$a;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 27
    :goto_0
    sput-object v1, Lcom/google/android/gms/internal/ads/cqq;->c:Lcom/google/android/gms/internal/ads/cqq$b;

    .line 28
    if-eqz v5, :cond_0

    .line 29
    sget-object v0, Lcom/google/android/gms/internal/ads/cqq;->d:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string/jumbo v2, "com.google.common.util.concurrent.AggregateFutureState"

    const-string/jumbo v3, "<clinit>"

    const-string/jumbo v4, "SafeAtomicHelper is broken!"

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    :cond_0
    return-void

    .line 25
    :catch_0
    move-exception v0

    .line 26
    new-instance v1, Lcom/google/android/gms/internal/ads/cqq$c;

    invoke-direct {v1, v5}, Lcom/google/android/gms/internal/ads/cqq$c;-><init>(Lcom/google/android/gms/internal/ads/cqp;)V

    move-object v5, v0

    goto :goto_0
.end method

.method constructor <init>(I)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cqf$j;-><init>()V

    .line 2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cqq;->a:Ljava/util/Set;

    .line 3
    iput p1, p0, Lcom/google/android/gms/internal/ads/cqq;->b:I

    .line 4
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/cqq;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cqq;->a:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/cqq;Ljava/util/Set;)Ljava/util/Set;
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cqq;->a:Ljava/util/Set;

    return-object p1
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/cqq;)I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/google/android/gms/internal/ads/cqq;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/cqq;->b:I

    return v0
.end method


# virtual methods
.method abstract a(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation
.end method

.method final j()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cqq;->a:Ljava/util/Set;

    .line 6
    if-nez v0, :cond_0

    .line 7
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/cqq;->a(Ljava/util/Set;)V

    .line 10
    sget-object v1, Lcom/google/android/gms/internal/ads/cqq;->c:Lcom/google/android/gms/internal/ads/cqq$b;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v0}, Lcom/google/android/gms/internal/ads/cqq$b;->a(Lcom/google/android/gms/internal/ads/cqq;Ljava/util/Set;Ljava/util/Set;)V

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cqq;->a:Ljava/util/Set;

    .line 12
    :cond_0
    return-object v0
.end method

.method final k()I
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/google/android/gms/internal/ads/cqq;->c:Lcom/google/android/gms/internal/ads/cqq$b;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/cqq$b;->a(Lcom/google/android/gms/internal/ads/cqq;)I

    move-result v0

    return v0
.end method

.method final l()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cqq;->a:Ljava/util/Set;

    .line 15
    return-void
.end method
