.class Lcom/google/common/util/concurrent/CycleDetectingLockFactory$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/CycleDetectingLockFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/common/util/concurrent/CycleDetectingLockFactory$b;",
            "Lcom/google/common/util/concurrent/CycleDetectingLockFactory$a;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/common/util/concurrent/CycleDetectingLockFactory$b;",
            "Lcom/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 581
    new-instance v0, Lcom/google/common/collect/ad;

    invoke-direct {v0}, Lcom/google/common/collect/ad;-><init>()V

    .line 1205
    sget-object v1, Lcom/google/common/collect/ae$n;->WEAK:Lcom/google/common/collect/ae$n;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ad;->a(Lcom/google/common/collect/ae$n;)Lcom/google/common/collect/ad;

    move-result-object v0

    .line 582
    invoke-virtual {v0}, Lcom/google/common/collect/ad;->e()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$b;->a:Ljava/util/Map;

    .line 588
    new-instance v0, Lcom/google/common/collect/ad;

    invoke-direct {v0}, Lcom/google/common/collect/ad;-><init>()V

    .line 2205
    sget-object v1, Lcom/google/common/collect/ae$n;->WEAK:Lcom/google/common/collect/ae$n;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ad;->a(Lcom/google/common/collect/ae$n;)Lcom/google/common/collect/ad;

    move-result-object v0

    .line 589
    invoke-virtual {v0}, Lcom/google/common/collect/ad;->e()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$b;->b:Ljava/util/Map;

    .line 594
    invoke-static {p1}, Lcom/google/common/base/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$b;->c:Ljava/lang/String;

    return-void
.end method
