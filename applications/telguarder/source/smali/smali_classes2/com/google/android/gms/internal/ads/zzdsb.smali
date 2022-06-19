.class final Lcom/google/android/gms/internal/ads/zzdsb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdrz;


# instance fields
.field private final zzhrl:Lcom/google/android/gms/internal/ads/zzdrz;

.field private final zzhrm:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/google/android/gms/internal/ads/zzdsa;",
            ">;"
        }
    .end annotation
.end field

.field private final zzhrn:I

.field private final zzhro:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdrz;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdsb;->zzhrl:Lcom/google/android/gms/internal/ads/zzdrz;

    .line 3
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdsb;->zzhrm:Ljava/util/Queue;

    .line 4
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabp;->zzdao:Lcom/google/android/gms/internal/ads/zzaba;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object p1

    .line 6
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdsb;->zzhrn:I

    .line 7
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdsb;->zzhro:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabp;->zzdan:Lcom/google/android/gms/internal/ads/zzaba;

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object p1

    .line 10
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 11
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdse;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdse;-><init>(Lcom/google/android/gms/internal/ads/zzdsb;)V

    int-to-long v4, p1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v0, p2

    move-wide v2, v4

    .line 12
    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method


# virtual methods
.method final synthetic zzaxk()V
    .locals 2

    .line 29
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsb;->zzhrm:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsb;->zzhrl:Lcom/google/android/gms/internal/ads/zzdrz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsb;->zzhrm:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdsa;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdrz;->zzb(Lcom/google/android/gms/internal/ads/zzdsa;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzdsa;)V
    .locals 4

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsb;->zzhrm:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdsb;->zzhrn:I

    if-lt v0, v1, :cond_1

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsb;->zzhro:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsb;->zzhrm:Ljava/util/Queue;

    const-string v1, "dropped_event"

    .line 17
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdsa;->zzgx(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsa;

    move-result-object v1

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdsa;->zzls()Ljava/util/Map;

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
    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzdsa;->zzu(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsa;

    .line 24
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-void

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsb;->zzhrm:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzdsa;)Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsb;->zzhrl:Lcom/google/android/gms/internal/ads/zzdrz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdrz;->zzc(Lcom/google/android/gms/internal/ads/zzdsa;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
