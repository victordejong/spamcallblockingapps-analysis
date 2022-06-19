.class public final Lcom/google/android/gms/internal/ads/ze2;
.super Ljava/util/AbstractList;
.source ""

# interfaces
.implements Ljava/util/RandomAccess;
.implements Lcom/google/android/gms/internal/ads/ad2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Lcom/google/android/gms/internal/ads/ad2;"
    }
.end annotation


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/ad2;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/ad2;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ze2;->b:Lcom/google/android/gms/internal/ads/ad2;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/ze2;)Lcom/google/android/gms/internal/ads/ad2;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ze2;->b:Lcom/google/android/gms/internal/ads/ad2;

    return-object p0
.end method


# virtual methods
.method public final a0(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ze2;->b:Lcom/google/android/gms/internal/ads/ad2;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/ad2;->a0(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ze2;->b:Lcom/google/android/gms/internal/ads/ad2;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ad2;->e()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final g(Lcom/google/android/gms/internal/ads/zzesf;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ze2;->b:Lcom/google/android/gms/internal/ads/ad2;

    check-cast v0, Lcom/google/android/gms/internal/ads/zc2;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zc2;->j(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final i()Lcom/google/android/gms/internal/ads/ad2;
    .locals 0

    return-object p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/ye2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/ye2;-><init>(Lcom/google/android/gms/internal/ads/ze2;)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/xe2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/xe2;-><init>(Lcom/google/android/gms/internal/ads/ze2;I)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ze2;->b:Lcom/google/android/gms/internal/ads/ad2;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
