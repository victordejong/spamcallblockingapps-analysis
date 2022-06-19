.class public final Lcom/google/android/gms/internal/ads/att;
.super Lcom/google/android/gms/internal/ads/awl;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ash;
.implements Lcom/google/android/gms/internal/ads/atk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/awl<",
        "Lcom/google/android/gms/internal/ads/atu;",
        ">;",
        "Lcom/google/android/gms/internal/ads/ash;",
        "Lcom/google/android/gms/internal/ads/atk;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/android/gms/internal/ads/cov;

.field private b:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Ljava/util/Set;Lcom/google/android/gms/internal/ads/cov;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/ayi<",
            "Lcom/google/android/gms/internal/ads/atu;",
            ">;>;",
            "Lcom/google/android/gms/internal/ads/cov;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/awl;-><init>(Ljava/util/Set;)V

    .line 2
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/att;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/att;->a:Lcom/google/android/gms/internal/ads/cov;

    return-void
.end method

.method private final c()V
    .locals 3

    .line 11
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->ex:Lcom/google/android/gms/internal/ads/af;

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/att;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 14
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/att;->a:Lcom/google/android/gms/internal/ads/cov;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cov;->Z:Lcom/google/android/gms/internal/ads/zzvv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/att;->a:Lcom/google/android/gms/internal/ads/cov;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cov;->Z:Lcom/google/android/gms/internal/ads/zzvv;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzvv;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 15
    new-instance v0, Lcom/google/android/gms/internal/ads/atr;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/atr;-><init>(Lcom/google/android/gms/internal/ads/att;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/awl;->a(Lcom/google/android/gms/internal/ads/awn;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/att;->a:Lcom/google/android/gms/internal/ads/cov;

    iget v0, v0, Lcom/google/android/gms/internal/ads/cov;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/att;->c()V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/att;->a:Lcom/google/android/gms/internal/ads/cov;

    iget v0, v0, Lcom/google/android/gms/internal/ads/cov;->b:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/att;->a:Lcom/google/android/gms/internal/ads/cov;

    iget v0, v0, Lcom/google/android/gms/internal/ads/cov;->b:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/att;->a:Lcom/google/android/gms/internal/ads/cov;

    iget v0, v0, Lcom/google/android/gms/internal/ads/cov;->b:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/att;->a:Lcom/google/android/gms/internal/ads/cov;

    iget v0, v0, Lcom/google/android/gms/internal/ads/cov;->b:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/att;->c()V

    :cond_1
    return-void
.end method
