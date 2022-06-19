.class final Lcom/google/android/gms/internal/ads/dpl;
.super Lcom/google/android/gms/internal/ads/dlx;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/dpn;

.field private b:Lcom/google/android/gms/internal/ads/dmb;

.field private final synthetic c:Lcom/google/android/gms/internal/ads/dpm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/dpm;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dpl;->c:Lcom/google/android/gms/internal/ads/dpm;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dlx;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/dpn;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/dpn;-><init>(Lcom/google/android/gms/internal/ads/dlw;Lcom/google/android/gms/internal/ads/dpl;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dpl;->a:Lcom/google/android/gms/internal/ads/dpn;

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dpl;->b()Lcom/google/android/gms/internal/ads/dmb;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dpl;->b:Lcom/google/android/gms/internal/ads/dmb;

    return-void
.end method

.method private final b()Lcom/google/android/gms/internal/ads/dmb;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpl;->a:Lcom/google/android/gms/internal/ads/dpn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dpn;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpl;->a:Lcom/google/android/gms/internal/ads/dpn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dpn;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dmd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dlw;->iterator()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dmb;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final a()B
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpl;->b:Lcom/google/android/gms/internal/ads/dmb;

    if-eqz v0, :cond_1

    .line 8
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dmb;->a()B

    move-result v0

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dpl;->b:Lcom/google/android/gms/internal/ads/dmb;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/dmb;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dpl;->b()Lcom/google/android/gms/internal/ads/dmb;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/dpl;->b:Lcom/google/android/gms/internal/ads/dmb;

    :cond_0
    return v0

    .line 7
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final hasNext()Z
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpl;->b:Lcom/google/android/gms/internal/ads/dmb;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
