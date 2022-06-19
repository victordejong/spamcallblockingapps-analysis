.class public final Lcom/google/android/gms/internal/ads/i51;
.super Lcom/google/android/gms/internal/ads/m81;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/s31;
.implements Lcom/google/android/gms/internal/ads/y41;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/m81<",
        "Lcom/google/android/gms/internal/ads/k51;",
        ">;",
        "Lcom/google/android/gms/internal/ads/s31;",
        "Lcom/google/android/gms/internal/ads/y41;"
    }
.end annotation


# instance fields
.field private final e:Lcom/google/android/gms/internal/ads/ej2;

.field private final f:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Ljava/util/Set;Lcom/google/android/gms/internal/ads/ej2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/ja1<",
            "Lcom/google/android/gms/internal/ads/k51;",
            ">;>;",
            "Lcom/google/android/gms/internal/ads/ej2;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/m81;-><init>(Ljava/util/Set;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/i51;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/i51;->e:Lcom/google/android/gms/internal/ads/ej2;

    return-void
.end method

.method private final b()V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/kw;->A5:Lcom/google/android/gms/internal/ads/cw;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/i51;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/i51;->e:Lcom/google/android/gms/internal/ads/ej2;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ej2;->b0:Lcom/google/android/gms/internal/ads/zzbdn;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzbdn;->d:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/h51;

    .line 5
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/h51;-><init>(Lcom/google/android/gms/internal/ads/i51;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/m81;->Q0(Lcom/google/android/gms/internal/ads/l81;)V

    :cond_0
    return-void
.end method


# virtual methods
.method final synthetic S0(Lcom/google/android/gms/internal/ads/k51;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/i51;->e:Lcom/google/android/gms/internal/ads/ej2;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ej2;->b0:Lcom/google/android/gms/internal/ads/zzbdn;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/k51;->p(Lcom/google/android/gms/internal/ads/zzbdn;)V

    return-void
.end method

.method public final c0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/i51;->e:Lcom/google/android/gms/internal/ads/ej2;

    iget v0, v0, Lcom/google/android/gms/internal/ads/ej2;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/i51;->b()V

    :cond_0
    return-void
.end method

.method public final zzg()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/i51;->e:Lcom/google/android/gms/internal/ads/ej2;

    iget v0, v0, Lcom/google/android/gms/internal/ads/ej2;->b:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/i51;->b()V

    return-void
.end method
