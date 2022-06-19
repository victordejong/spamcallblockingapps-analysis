.class abstract Lcom/google/android/gms/internal/ads/cqs;
.super Lcom/google/android/gms/internal/ads/cqn;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/cqn",
        "<TV;TC;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/col",
            "<TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cpb;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/cpb",
            "<+",
            "Lcom/google/android/gms/internal/ads/crt",
            "<+TV;>;>;Z)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/gms/internal/ads/cqn;-><init>(Lcom/google/android/gms/internal/ads/cpb;ZZ)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cpb;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/cpc;->g()Lcom/google/android/gms/internal/ads/cpc;

    move-result-object v0

    .line 5
    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cqs;->a:Ljava/util/List;

    .line 6
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cpb;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cqs;->a:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cpb;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cpl;->a(I)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 9
    :cond_1
    return-void
.end method


# virtual methods
.method abstract a(Ljava/util/List;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/col",
            "<TV;>;>;)TC;"
        }
    .end annotation
.end method

.method final a(ILjava/lang/Object;)V
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    .prologue
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cqs;->a:Ljava/util/List;

    .line 11
    if-eqz v0, :cond_0

    .line 12
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/col;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/col;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 13
    :cond_0
    return-void
.end method

.method final a(Lcom/google/android/gms/internal/ads/cqn$a;)V
    .locals 1

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/cqn;->a(Lcom/google/android/gms/internal/ads/cqn$a;)V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cqs;->a:Ljava/util/List;

    .line 20
    return-void
.end method

.method final i()V
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cqs;->a:Ljava/util/List;

    .line 15
    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/cqs;->a(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/cqf;->b(Ljava/lang/Object;)Z

    .line 17
    :cond_0
    return-void
.end method
