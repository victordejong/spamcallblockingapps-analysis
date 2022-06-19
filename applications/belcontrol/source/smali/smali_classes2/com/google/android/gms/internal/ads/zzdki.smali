.class public final Lcom/google/android/gms/internal/ads/zzdki;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdvz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdvz<",
        "Lcom/google/android/gms/internal/ads/zzatq;",
        "Lcom/google/android/gms/internal/ads/zzdkl;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzhhr:Lcom/google/android/gms/internal/ads/zzdkh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdkh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdki;->zzhhr:Lcom/google/android/gms/internal/ads/zzdkh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/ads/zzatq;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdki;->zzhhr:Lcom/google/android/gms/internal/ads/zzdkh;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdkl;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdpn;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzatq;->zzdxl:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzdpn;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdkl;-><init>(Lcom/google/android/gms/internal/ads/zzatq;Lcom/google/android/gms/internal/ads/zzdpl;Lcom/google/android/gms/internal/ads/zzdkj;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdkh;->zza(Lcom/google/android/gms/internal/ads/zzdkh;Lcom/google/android/gms/internal/ads/zzdkl;)Lcom/google/android/gms/internal/ads/zzdkl;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdki;->zzhhr:Lcom/google/android/gms/internal/ads/zzdkh;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdkh;->zzb(Lcom/google/android/gms/internal/ads/zzdkh;)Lcom/google/android/gms/internal/ads/zzdkl;

    move-result-object p1

    return-object p1
.end method
