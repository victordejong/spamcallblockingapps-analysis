.class final Lcom/google/android/gms/internal/ads/ddq;
.super Lcom/google/android/gms/internal/ads/ddp;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/ddp;-><init>(Lcom/google/android/gms/internal/ads/ddo;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/ddo;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ddq;-><init>()V

    return-void
.end method

.method private static c(Ljava/lang/Object;J)Lcom/google/android/gms/internal/ads/dde;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Lcom/google/android/gms/internal/ads/dde",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 24
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dde;

    return-object v0
.end method


# virtual methods
.method final a(Ljava/lang/Object;J)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List",
            "<T",
            "L;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/ddq;->c(Ljava/lang/Object;J)Lcom/google/android/gms/internal/ads/dde;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/dde;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/dde;->size()I

    move-result v0

    .line 6
    if-nez v0, :cond_0

    const/16 v0, 0xa

    .line 7
    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/dde;->a(I)Lcom/google/android/gms/internal/ads/dde;

    move-result-object v0

    .line 8
    invoke-static {p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 9
    :goto_1
    return-object v0

    .line 6
    :cond_0
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method final a(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-static {p1, p3, p4}, Lcom/google/android/gms/internal/ads/ddq;->c(Ljava/lang/Object;J)Lcom/google/android/gms/internal/ads/dde;

    move-result-object v0

    .line 14
    invoke-static {p2, p3, p4}, Lcom/google/android/gms/internal/ads/ddq;->c(Ljava/lang/Object;J)Lcom/google/android/gms/internal/ads/dde;

    move-result-object v1

    .line 15
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dde;->size()I

    move-result v2

    .line 16
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/dde;->size()I

    move-result v3

    .line 17
    if-lez v2, :cond_1

    if-lez v3, :cond_1

    .line 18
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dde;->a()Z

    move-result v4

    if-nez v4, :cond_0

    .line 19
    add-int/2addr v3, v2

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/dde;->a(I)Lcom/google/android/gms/internal/ads/dde;

    move-result-object v0

    .line 20
    :cond_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/dde;->addAll(Ljava/util/Collection;)Z

    .line 21
    :cond_1
    if-lez v2, :cond_2

    .line 22
    :goto_0
    invoke-static {p1, p3, p4, v0}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 23
    return-void

    :cond_2
    move-object v0, v1

    .line 21
    goto :goto_0
.end method

.method final b(Ljava/lang/Object;J)V
    .locals 2

    .prologue
    .line 10
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/ddq;->c(Ljava/lang/Object;J)Lcom/google/android/gms/internal/ads/dde;

    move-result-object v0

    .line 11
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dde;->b()V

    .line 12
    return-void
.end method
