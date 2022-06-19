.class public final Lcom/google/android/gms/internal/ads/wg3;
.super Ljava/util/AbstractList;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Lcom/google/android/gms/internal/ads/we3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Lcom/google/android/gms/internal/ads/we3;"
    }
.end annotation


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/we3;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/we3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wg3;->d:Lcom/google/android/gms/internal/ads/we3;

    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/wg3;)Lcom/google/android/gms/internal/ads/we3;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/wg3;->d:Lcom/google/android/gms/internal/ads/we3;

    return-object p0
.end method


# virtual methods
.method public final Z(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wg3;->d:Lcom/google/android/gms/internal/ads/we3;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/we3;->Z(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wg3;->d:Lcom/google/android/gms/internal/ads/we3;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/we3;->f()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final g(Lcom/google/android/gms/internal/ads/zzgex;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wg3;->d:Lcom/google/android/gms/internal/ads/we3;

    check-cast v0, Lcom/google/android/gms/internal/ads/ve3;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ve3;->d(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
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

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/vg3;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/vg3;-><init>(Lcom/google/android/gms/internal/ads/wg3;)V

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

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/ug3;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/ug3;-><init>(Lcom/google/android/gms/internal/ads/wg3;I)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wg3;->d:Lcom/google/android/gms/internal/ads/we3;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final zzi()Lcom/google/android/gms/internal/ads/we3;
    .locals 0

    return-object p0
.end method
