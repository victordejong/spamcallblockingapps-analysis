.class final Lcom/google/android/gms/internal/ads/cpp;
.super Lcom/google/android/gms/internal/ads/cpk;
.source "com.google.android.gms:play-services-gass@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/cpk",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final transient a:Lcom/google/android/gms/internal/ads/cpg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/cpg",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final transient b:[Ljava/lang/Object;

.field private final transient c:I

.field private final transient d:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cpg;[Ljava/lang/Object;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/cpg",
            "<TK;TV;>;[",
            "Ljava/lang/Object;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cpk;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cpp;->a:Lcom/google/android/gms/internal/ads/cpg;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cpp;->b:[Ljava/lang/Object;

    .line 4
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/cpp;->c:I

    .line 5
    iput p4, p0, Lcom/google/android/gms/internal/ads/cpp;->d:I

    .line 6
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/cpp;)I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/google/android/gms/internal/ads/cpp;->d:I

    return v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/cpp;)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cpp;->b:[Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method final a([Ljava/lang/Object;I)I
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cpb;->e()Lcom/google/android/gms/internal/ads/cpc;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/cpb;->a([Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public final a()Lcom/google/android/gms/internal/ads/cpy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/cpy",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cpb;->e()Lcom/google/android/gms/internal/ads/cpc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cpb;->iterator()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cpy;

    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 10
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_0

    .line 11
    check-cast p1, Ljava/util/Map$Entry;

    .line 12
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 13
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 14
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/cpp;->a:Lcom/google/android/gms/internal/ads/cpg;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/cpg;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 15
    :cond_0
    return v0
.end method

.method final f()Z
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x1

    return v0
.end method

.method final h()Lcom/google/android/gms/internal/ads/cpc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/cpc",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 9
    new-instance v0, Lcom/google/android/gms/internal/ads/cps;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/cps;-><init>(Lcom/google/android/gms/internal/ads/cpp;)V

    return-object v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cpb;->a()Lcom/google/android/gms/internal/ads/cpy;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/google/android/gms/internal/ads/cpp;->d:I

    return v0
.end method
