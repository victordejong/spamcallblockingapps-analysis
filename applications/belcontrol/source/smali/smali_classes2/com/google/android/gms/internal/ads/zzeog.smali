.class public final Lcom/google/android/gms/internal/ads/zzeog;
.super Ljava/util/AbstractList;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzelv;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzelv;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field private final zzive:Lcom/google/android/gms/internal/ads/zzelv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzelv;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeog;->zzive:Lcom/google/android/gms/internal/ads/zzelv;

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzeog;)Lcom/google/android/gms/internal/ads/zzelv;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzeog;->zzive:Lcom/google/android/gms/internal/ads/zzelv;

    return-object p0
.end method


# virtual methods
.method public final synthetic get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeog;->zzive:Lcom/google/android/gms/internal/ads/zzelv;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

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

    new-instance v0, Lcom/google/android/gms/internal/ads/zzeoi;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzeoi;-><init>(Lcom/google/android/gms/internal/ads/zzeog;)V

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

    new-instance v0, Lcom/google/android/gms/internal/ads/zzeof;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzeof;-><init>(Lcom/google/android/gms/internal/ads/zzeog;I)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeog;->zzive:Lcom/google/android/gms/internal/ads/zzelv;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final zzak(Lcom/google/android/gms/internal/ads/zzejr;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final zzbjm()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeog;->zzive:Lcom/google/android/gms/internal/ads/zzelv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzelv;->zzbjm()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final zzbjn()Lcom/google/android/gms/internal/ads/zzelv;
    .locals 0

    return-object p0
.end method

.method public final zzhj(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeog;->zzive:Lcom/google/android/gms/internal/ads/zzelv;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzelv;->zzhj(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
