.class final Lcom/google/android/gms/internal/ads/zzdoz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# instance fields
.field private final maxEntries:I

.field private final zzhmu:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/google/android/gms/internal/ads/zzdpm<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final zzhmv:I

.field private final zzhmw:Lcom/google/android/gms/internal/ads/zzdqc;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoz;->zzhmu:Ljava/util/LinkedList;

    .line 3
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdoz;->maxEntries:I

    .line 4
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzdoz;->zzhmv:I

    .line 5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdqc;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzdqc;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdoz;->zzhmw:Lcom/google/android/gms/internal/ads/zzdqc;

    return-void
.end method

.method private final zzavu()V
    .locals 5

    .line 28
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoz;->zzhmu:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoz;->zzhmu:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdpm;

    .line 31
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzky()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzdpm;->zzhoj:J

    sub-long/2addr v1, v3

    .line 32
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdoz;->zzhmv:I

    int-to-long v3, v0

    cmp-long v0, v1, v3

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_1

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoz;->zzhmw:Lcom/google/android/gms/internal/ads/zzdqc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdqc;->zzawp()V

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoz;->zzhmu:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final getCreationTimeMillis()J
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoz;->zzhmw:Lcom/google/android/gms/internal/ads/zzdqc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdqc;->getCreationTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public final size()I
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdoz;->zzavu()V

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoz;->zzhmu:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public final zzavp()Lcom/google/android/gms/internal/ads/zzdpm;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdpm<",
            "*>;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoz;->zzhmw:Lcom/google/android/gms/internal/ads/zzdqc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdqc;->zzawn()V

    .line 14
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdoz;->zzavu()V

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoz;->zzhmu:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoz;->zzhmu:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdpm;

    if-eqz v0, :cond_1

    .line 19
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdoz;->zzhmw:Lcom/google/android/gms/internal/ads/zzdqc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdqc;->zzawo()V

    :cond_1
    return-object v0
.end method

.method public final zzavq()J
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoz;->zzhmw:Lcom/google/android/gms/internal/ads/zzdqc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdqc;->zzavq()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzavr()I
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoz;->zzhmw:Lcom/google/android/gms/internal/ads/zzdqc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdqc;->zzavr()I

    move-result v0

    return v0
.end method

.method public final zzavs()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoz;->zzhmw:Lcom/google/android/gms/internal/ads/zzdqc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdqc;->zzawd()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzavt()Lcom/google/android/gms/internal/ads/zzdqb;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoz;->zzhmw:Lcom/google/android/gms/internal/ads/zzdqc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdqc;->zzawq()Lcom/google/android/gms/internal/ads/zzdqb;

    move-result-object v0

    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzdpm;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdpm<",
            "*>;)Z"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoz;->zzhmw:Lcom/google/android/gms/internal/ads/zzdqc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdqc;->zzawn()V

    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdoz;->zzavu()V

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoz;->zzhmu:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdoz;->maxEntries:I

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoz;->zzhmu:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method
