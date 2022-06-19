.class public final Lcom/google/android/gms/internal/ads/zzdxn;
.super Lcom/google/android/gms/internal/ads/zzdyb;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdyb<",
        "TF;TT;>;"
    }
.end annotation


# instance fields
.field private final synthetic zzhyd:Lcom/google/android/gms/internal/ads/zzdxk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdxk;Ljava/util/ListIterator;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxn;->zzhyd:Lcom/google/android/gms/internal/ads/zzdxk;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzdyb;-><init>(Ljava/util/ListIterator;)V

    return-void
.end method


# virtual methods
.method public final zzae(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxn;->zzhyd:Lcom/google/android/gms/internal/ads/zzdxk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdxk;->zzhyc:Lcom/google/android/gms/internal/ads/zzdvz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdvz;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
