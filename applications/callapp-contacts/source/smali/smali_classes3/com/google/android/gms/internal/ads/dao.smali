.class abstract Lcom/google/android/gms/internal/ads/dao;
.super Lcom/google/android/gms/internal/ads/dag$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/dao$b;,
        Lcom/google/android/gms/internal/ads/dao$c;,
        Lcom/google/android/gms/internal/ads/dao$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<OutputT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/dag$h<",
        "TOutputT;>;"
    }
.end annotation


# static fields
.field private static final c:Lcom/google/android/gms/internal/ads/dao$a;

.field private static final d:Ljava/util/logging/Logger;


# instance fields
.field private volatile a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private volatile b:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 19
    const-class v0, Lcom/google/android/gms/internal/ads/dao;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/dao;->d:Ljava/util/logging/Logger;

    const/4 v1, 0x0

    .line 21
    :try_start_0
    new-instance v2, Lcom/google/android/gms/internal/ads/dao$c;

    const-class v3, Ljava/util/Set;

    const-string v4, "a"

    .line 22
    invoke-static {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v3

    const-string v4, "b"

    .line 23
    invoke-static {v0, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/internal/ads/dao$c;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v8, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 26
    new-instance v2, Lcom/google/android/gms/internal/ads/dao$b;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/dao$b;-><init>(Lcom/google/android/gms/internal/ads/dap;)V

    move-object v8, v0

    .line 27
    :goto_0
    sput-object v2, Lcom/google/android/gms/internal/ads/dao;->c:Lcom/google/android/gms/internal/ads/dao$a;

    if-eqz v8, :cond_0

    .line 29
    sget-object v3, Lcom/google/android/gms/internal/ads/dao;->d:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v5, "com.google.common.util.concurrent.AggregateFutureState"

    const-string v6, "<clinit>"

    const-string v7, "SafeAtomicHelper is broken!"

    invoke-virtual/range {v3 .. v8}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dag$h;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dao;->a:Ljava/util/Set;

    .line 3
    iput p1, p0, Lcom/google/android/gms/internal/ads/dao;->b:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dao;)Ljava/util/Set;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/dao;->a:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dao;Ljava/util/Set;)Ljava/util/Set;
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dao;->a:Ljava/util/Set;

    return-object p1
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/dao;)I
    .locals 1

    .line 18
    iget v0, p0, Lcom/google/android/gms/internal/ads/dao;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dao;->b:I

    return v0
.end method


# virtual methods
.method abstract a(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation
.end method

.method final j()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dao;->a:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 7
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/dao;->a(Ljava/util/Set;)V

    .line 10
    sget-object v1, Lcom/google/android/gms/internal/ads/dao;->c:Lcom/google/android/gms/internal/ads/dao$a;

    invoke-virtual {v1, p0, v0}, Lcom/google/android/gms/internal/ads/dao$a;->a(Lcom/google/android/gms/internal/ads/dao;Ljava/util/Set;)V

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dao;->a:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method final k()I
    .locals 1

    .line 13
    sget-object v0, Lcom/google/android/gms/internal/ads/dao;->c:Lcom/google/android/gms/internal/ads/dao$a;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/dao$a;->a(Lcom/google/android/gms/internal/ads/dao;)I

    move-result v0

    return v0
.end method

.method final l()V
    .locals 1

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dao;->a:Ljava/util/Set;

    return-void
.end method
