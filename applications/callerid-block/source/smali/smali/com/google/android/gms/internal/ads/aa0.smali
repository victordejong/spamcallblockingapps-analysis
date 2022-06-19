.class public final Lcom/google/android/gms/internal/ads/aa0;
.super Lcom/google/android/gms/internal/ads/tc0;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/k80;
.implements Lcom/google/android/gms/internal/ads/r90;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/tc0<",
        "Lcom/google/android/gms/internal/ads/ca0;",
        ">;",
        "Lcom/google/android/gms/internal/ads/k80;",
        "Lcom/google/android/gms/internal/ads/r90;"
    }
.end annotation


# instance fields
.field private final c:Lcom/google/android/gms/internal/ads/al1;

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Ljava/util/Set;Lcom/google/android/gms/internal/ads/al1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/ne0<",
            "Lcom/google/android/gms/internal/ads/ca0;",
            ">;>;",
            "Lcom/google/android/gms/internal/ads/al1;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/tc0;-><init>(Ljava/util/Set;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aa0;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/aa0;->c:Lcom/google/android/gms/internal/ads/al1;

    return-void
.end method

.method private final c()V
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/ads/m3;->z4:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aa0;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aa0;->c:Lcom/google/android/gms/internal/ads/al1;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/al1;->Z:Lcom/google/android/gms/internal/ads/zzyz;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzyz;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/z90;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/z90;-><init>(Lcom/google/android/gms/internal/ads/aa0;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/tc0;->B0(Lcom/google/android/gms/internal/ads/sc0;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final E()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aa0;->c:Lcom/google/android/gms/internal/ads/al1;

    iget v0, v0, Lcom/google/android/gms/internal/ads/al1;->b:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aa0;->c()V

    return-void
.end method

.method final synthetic H0(Lcom/google/android/gms/internal/ads/ca0;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aa0;->c:Lcom/google/android/gms/internal/ads/al1;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/al1;->Z:Lcom/google/android/gms/internal/ads/zzyz;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/ca0;->k(Lcom/google/android/gms/internal/ads/zzyz;)V

    return-void
.end method

.method public final S()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aa0;->c:Lcom/google/android/gms/internal/ads/al1;

    iget v0, v0, Lcom/google/android/gms/internal/ads/al1;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aa0;->c()V

    :cond_0
    return-void
.end method
