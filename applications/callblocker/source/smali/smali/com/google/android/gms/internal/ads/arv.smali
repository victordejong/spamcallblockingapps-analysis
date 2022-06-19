.class public final Lcom/google/android/gms/internal/ads/arv;
.super Lcom/google/android/gms/internal/ads/ate;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/aqi;
.implements Lcom/google/android/gms/internal/ads/arl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/ate",
        "<",
        "Lcom/google/android/gms/internal/ads/arw;",
        ">;",
        "Lcom/google/android/gms/internal/ads/aqi;",
        "Lcom/google/android/gms/internal/ads/arl;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cgr;

.field private b:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Ljava/util/Set;Lcom/google/android/gms/internal/ads/cgr;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/ads/auq",
            "<",
            "Lcom/google/android/gms/internal/ads/arw;",
            ">;>;",
            "Lcom/google/android/gms/internal/ads/cgr;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/ate;-><init>(Ljava/util/Set;)V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/arv;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/arv;->a:Lcom/google/android/gms/internal/ads/cgr;

    .line 4
    return-void
.end method

.method private final a()V
    .locals 3

    .prologue
    .line 11
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->dI:Lcom/google/android/gms/internal/ads/ect;

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/arv;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 14
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/arv;->a:Lcom/google/android/gms/internal/ads/cgr;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cgr;->W:Lcom/google/android/gms/internal/ads/dyf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/arv;->a:Lcom/google/android/gms/internal/ads/cgr;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cgr;->W:Lcom/google/android/gms/internal/ads/dyf;

    iget v0, v0, Lcom/google/android/gms/internal/ads/dyf;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 15
    new-instance v0, Lcom/google/android/gms/internal/ads/art;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/art;-><init>(Lcom/google/android/gms/internal/ads/arv;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/ate;->a(Lcom/google/android/gms/internal/ads/atg;)V

    .line 16
    :cond_0
    return-void
.end method


# virtual methods
.method final synthetic a(Lcom/google/android/gms/internal/ads/arw;)V
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/arv;->a:Lcom/google/android/gms/internal/ads/cgr;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cgr;->W:Lcom/google/android/gms/internal/ads/dyf;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/arw;->a(Lcom/google/android/gms/internal/ads/dyf;)V

    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/arv;->a:Lcom/google/android/gms/internal/ads/cgr;

    iget v0, v0, Lcom/google/android/gms/internal/ads/cgr;->b:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/arv;->a:Lcom/google/android/gms/internal/ads/cgr;

    iget v0, v0, Lcom/google/android/gms/internal/ads/cgr;->b:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/arv;->a:Lcom/google/android/gms/internal/ads/cgr;

    iget v0, v0, Lcom/google/android/gms/internal/ads/cgr;->b:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/arv;->a()V

    .line 7
    :cond_1
    return-void
.end method

.method public final s()V
    .locals 2

    .prologue
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/arv;->a:Lcom/google/android/gms/internal/ads/cgr;

    iget v0, v0, Lcom/google/android/gms/internal/ads/cgr;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/arv;->a()V

    .line 10
    :cond_0
    return-void
.end method
