.class abstract Lcom/google/android/gms/internal/ads/dat;
.super Lcom/google/android/gms/internal/ads/dak;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/dak<",
        "TV;TC;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/dav<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cyt;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/cyt<",
            "+",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "+TV;>;>;Z)V"
        }
    .end annotation

    const/4 p2, 0x1

    .line 1
    invoke-direct {p0, p1, p2, p2}, Lcom/google/android/gms/internal/ads/dak;-><init>(Lcom/google/android/gms/internal/ads/cyt;ZZ)V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cyt;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/cyz;->g()Lcom/google/android/gms/internal/ads/cyz;

    move-result-object p2

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cyt;->size()I

    move-result p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/czg;->a(I)Ljava/util/ArrayList;

    move-result-object p2

    :goto_0
    const/4 v0, 0x0

    .line 5
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cyt;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v1, 0x0

    .line 6
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 8
    :cond_1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/dat;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method abstract a(Ljava/util/List;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/dav<",
            "TV;>;>;)TC;"
        }
    .end annotation
.end method

.method final a(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dat;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 12
    new-instance v1, Lcom/google/android/gms/internal/ads/dav;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/ads/dav;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method final a(Lcom/google/android/gms/internal/ads/dak$a;)V
    .locals 0

    .line 18
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/dak;->a(Lcom/google/android/gms/internal/ads/dak$a;)V

    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dat;->a:Ljava/util/List;

    return-void
.end method

.method final i()V
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dat;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/dat;->a(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/dag;->b(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
