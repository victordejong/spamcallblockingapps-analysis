.class final Lcom/google/android/gms/internal/ads/cua;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cty;


# instance fields
.field final a:Lcom/google/android/gms/internal/ads/cty;

.field final b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/google/android/gms/internal/ads/ctz;",
            ">;"
        }
    .end annotation
.end field

.field private final c:I

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/cty;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cua;->a:Lcom/google/android/gms/internal/ads/cty;

    .line 3
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cua;->b:Ljava/util/Queue;

    .line 4
    sget-object p1, Lcom/google/android/gms/internal/ads/aq;->fh:Lcom/google/android/gms/internal/ads/af;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object p1

    .line 6
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/cua;->c:I

    .line 7
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cua;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    sget-object p1, Lcom/google/android/gms/internal/ads/aq;->fg:Lcom/google/android/gms/internal/ads/af;

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object p1

    .line 10
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 11
    new-instance v1, Lcom/google/android/gms/internal/ads/cue;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/cue;-><init>(Lcom/google/android/gms/internal/ads/cua;)V

    int-to-long v4, p1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v0, p2

    move-wide v2, v4

    .line 12
    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/ctz;)V
    .locals 4

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cua;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/cua;->c:I

    if-lt v0, v1, :cond_1

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cua;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cua;->b:Ljava/util/Queue;

    const-string v1, "dropped_event"

    .line 17
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ctz;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ctz;

    move-result-object v1

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ctz;->a()Ljava/util/Map;

    move-result-object p1

    const-string v2, "action"

    .line 19
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 21
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v2, "dropped_action"

    .line 22
    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/ads/ctz;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ctz;

    .line 24
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-void

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cua;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ads/ctz;)Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cua;->a:Lcom/google/android/gms/internal/ads/cty;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/cty;->b(Lcom/google/android/gms/internal/ads/ctz;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
