.class public final Lcom/google/android/gms/internal/ads/zzbto;
.super Lcom/google/android/gms/internal/ads/zzbwf;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbse;
.implements Lcom/google/android/gms/internal/ads/zzbtg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbwf<",
        "Lcom/google/android/gms/internal/ads/zzbtt;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzbse;",
        "Lcom/google/android/gms/internal/ads/zzbtg;"
    }
.end annotation


# instance fields
.field private final zzfrj:Lcom/google/android/gms/internal/ads/zzdmw;

.field private zzfzo:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Ljava/util/Set;Lcom/google/android/gms/internal/ads/zzdmw;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/zzbya<",
            "Lcom/google/android/gms/internal/ads/zzbtt;",
            ">;>;",
            "Lcom/google/android/gms/internal/ads/zzdmw;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbwf;-><init>(Ljava/util/Set;)V

    .line 2
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbto;->zzfzo:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbto;->zzfrj:Lcom/google/android/gms/internal/ads/zzdmw;

    return-void
.end method

.method private final zzalr()V
    .locals 3

    .line 11
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabp;->zzczg:Lcom/google/android/gms/internal/ads/zzaba;

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbto;->zzfzo:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 14
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbto;->zzfrj:Lcom/google/android/gms/internal/ads/zzdmw;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdmw;->zzhjv:Lcom/google/android/gms/internal/ads/zzvu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbto;->zzfrj:Lcom/google/android/gms/internal/ads/zzdmw;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdmw;->zzhjv:Lcom/google/android/gms/internal/ads/zzvu;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzvu;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 15
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbtr;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbtr;-><init>(Lcom/google/android/gms/internal/ads/zzbto;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbwf;->zza(Lcom/google/android/gms/internal/ads/zzbwh;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final onAdImpression()V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbto;->zzfrj:Lcom/google/android/gms/internal/ads/zzdmw;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzdmw;->zzhiy:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbto;->zzfrj:Lcom/google/android/gms/internal/ads/zzdmw;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzdmw;->zzhiy:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbto;->zzfrj:Lcom/google/android/gms/internal/ads/zzdmw;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzdmw;->zzhiy:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbto;->zzalr()V

    :cond_1
    return-void
.end method

.method final synthetic zza(Lcom/google/android/gms/internal/ads/zzbtt;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbto;->zzfrj:Lcom/google/android/gms/internal/ads/zzdmw;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdmw;->zzhjv:Lcom/google/android/gms/internal/ads/zzvu;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzbtt;->zzb(Lcom/google/android/gms/internal/ads/zzvu;)V

    return-void
.end method

.method public final zzalq()V
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbto;->zzfrj:Lcom/google/android/gms/internal/ads/zzdmw;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzdmw;->zzhiy:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbto;->zzalr()V

    :cond_0
    return-void
.end method
