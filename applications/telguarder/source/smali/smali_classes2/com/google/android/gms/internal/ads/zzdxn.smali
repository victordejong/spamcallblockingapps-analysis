.class final Lcom/google/android/gms/internal/ads/zzdxn;
.super Lcom/google/android/gms/internal/ads/zzdyb;
.source "com.google.android.gms:play-services-gass@@19.7.0"


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
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdxk;Ljava/util/ListIterator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxn;->zzhyd:Lcom/google/android/gms/internal/ads/zzdxk;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzdyb;-><init>(Ljava/util/ListIterator;)V

    return-void
.end method


# virtual methods
.method final zzae(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)TT;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxn;->zzhyd:Lcom/google/android/gms/internal/ads/zzdxk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdxk;->zzhyc:Lcom/google/android/gms/internal/ads/zzdvz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdvz;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
