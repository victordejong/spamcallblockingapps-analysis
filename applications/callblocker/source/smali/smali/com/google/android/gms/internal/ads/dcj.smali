.class final Lcom/google/android/gms/internal/ads/dcj;
.super Lcom/google/android/gms/internal/ads/dck;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dck",
        "<",
        "Lcom/google/android/gms/internal/ads/dcw$e;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dck;-><init>()V

    return-void
.end method


# virtual methods
.method final a(Ljava/util/Map$Entry;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<**>;)I"
        }
    .end annotation

    .prologue
    .line 9
    .line 10
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dcw$e;

    .line 11
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method

.method final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dcl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/ads/dcl",
            "<",
            "Lcom/google/android/gms/internal/ads/dcw$e;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3
    check-cast p1, Lcom/google/android/gms/internal/ads/dcw$b;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/dcw$b;->zzhxy:Lcom/google/android/gms/internal/ads/dcl;

    return-object v0
.end method

.method final a(Lcom/google/android/gms/internal/ads/dci;Lcom/google/android/gms/internal/ads/deg;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/dci;->a(Lcom/google/android/gms/internal/ads/deg;I)Lcom/google/android/gms/internal/ads/dcw$d;

    move-result-object v0

    return-object v0
.end method

.method final a(Lcom/google/android/gms/internal/ads/dex;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/dci;Lcom/google/android/gms/internal/ads/dcl;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/dfv;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/dex;",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/ads/dci;",
            "Lcom/google/android/gms/internal/ads/dcl",
            "<",
            "Lcom/google/android/gms/internal/ads/dcw$e;",
            ">;TUB;",
            "Lcom/google/android/gms/internal/ads/dfv",
            "<TUT;TUB;>;)TUB;"
        }
    .end annotation

    .prologue
    .line 7
    check-cast p2, Lcom/google/android/gms/internal/ads/dcw$d;

    .line 8
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method

.method final a(Lcom/google/android/gms/internal/ads/dbi;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/dci;Lcom/google/android/gms/internal/ads/dcl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dbi;",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/ads/dci;",
            "Lcom/google/android/gms/internal/ads/dcl",
            "<",
            "Lcom/google/android/gms/internal/ads/dcw$e;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    check-cast p2, Lcom/google/android/gms/internal/ads/dcw$d;

    .line 19
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method

.method final a(Lcom/google/android/gms/internal/ads/dex;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/dci;Lcom/google/android/gms/internal/ads/dcl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dex;",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/ads/dci;",
            "Lcom/google/android/gms/internal/ads/dcl",
            "<",
            "Lcom/google/android/gms/internal/ads/dcw$e;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    check-cast p2, Lcom/google/android/gms/internal/ads/dcw$d;

    .line 17
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method

.method final a(Lcom/google/android/gms/internal/ads/dgo;Ljava/util/Map$Entry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dgo;",
            "Ljava/util/Map$Entry",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 12
    .line 13
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dcw$e;

    .line 14
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method

.method final a(Lcom/google/android/gms/internal/ads/deg;)Z
    .locals 1

    .prologue
    .line 2
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/dcw$b;

    return v0
.end method

.method final b(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dcl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/ads/dcl",
            "<",
            "Lcom/google/android/gms/internal/ads/dcw$e;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4
    check-cast p1, Lcom/google/android/gms/internal/ads/dcw$b;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dcw$b;->a()Lcom/google/android/gms/internal/ads/dcl;

    move-result-object v0

    return-object v0
.end method

.method final c(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/dck;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dcl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcl;->b()V

    .line 6
    return-void
.end method
