.class Lcom/google/android/gms/internal/ads/cpa;
.super Lcom/google/android/gms/internal/ads/cpd;
.source "com.google.android.gms:play-services-gass@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/cpd",
        "<TE;>;"
    }
.end annotation


# instance fields
.field a:[Ljava/lang/Object;

.field b:I

.field c:Z


# direct methods
.method constructor <init>(I)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cpd;-><init>()V

    .line 2
    const-string/jumbo v0, "initialCapacity"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/cow;->a(ILjava/lang/String;)I

    .line 3
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cpa;->a:[Ljava/lang/Object;

    .line 4
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/cpa;->b:I

    .line 5
    return-void
.end method

.method private final a(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cpa;->a:[Ljava/lang/Object;

    array-length v0, v0

    if-ge v0, p1, :cond_4

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cpa;->a:[Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cpa;->a:[Ljava/lang/Object;

    array-length v0, v0

    .line 9
    if-gez p1, :cond_0

    .line 10
    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "cannot store more than MAX_VALUE elements"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 11
    :cond_0
    shr-int/lit8 v2, v0, 0x1

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    .line 12
    if-ge v0, p1, :cond_1

    .line 13
    add-int/lit8 v0, p1, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    .line 14
    :cond_1
    if-gez v0, :cond_2

    .line 15
    const v0, 0x7fffffff

    .line 17
    :cond_2
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cpa;->a:[Ljava/lang/Object;

    .line 18
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/cpa;->c:Z

    .line 22
    :cond_3
    :goto_0
    return-void

    .line 19
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/cpa;->c:Z

    if-eqz v0, :cond_3

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cpa;->a:[Ljava/lang/Object;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cpa;->a:[Ljava/lang/Object;

    .line 21
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/cpa;->c:Z

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/cpa;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/android/gms/internal/ads/cpa",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 23
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/cor;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget v0, p0, Lcom/google/android/gms/internal/ads/cpa;->b:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/cpa;->a(I)V

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cpa;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/ads/cpa;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/cpa;->b:I

    aput-object p1, v0, v1

    .line 26
    return-object p0
.end method

.method public a(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/cpd;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Lcom/google/android/gms/internal/ads/cpd",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 27
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 28
    check-cast v0, Ljava/util/Collection;

    .line 29
    iget v1, p0, Lcom/google/android/gms/internal/ads/cpa;->b:I

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/cpa;->a(I)V

    .line 30
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/cpb;

    if-eqz v1, :cond_0

    .line 31
    check-cast v0, Lcom/google/android/gms/internal/ads/cpb;

    .line 32
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cpa;->a:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/gms/internal/ads/cpa;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/cpb;->a([Ljava/lang/Object;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/cpa;->b:I

    .line 35
    :goto_0
    return-object p0

    .line 34
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/cpd;->a(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/cpd;

    goto :goto_0
.end method

.method public synthetic b(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/cpd;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/cpa;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/cpa;

    move-result-object v0

    return-object v0
.end method
