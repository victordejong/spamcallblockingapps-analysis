.class public final Lcom/google/android/gms/internal/ads/zzdkj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdvz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdvz<",
        "Lcom/google/android/gms/internal/ads/zzcoc;",
        "Lcom/google/android/gms/internal/ads/zzdkl;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzhhr:Lcom/google/android/gms/internal/ads/zzdkh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdkh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdkj;->zzhhr:Lcom/google/android/gms/internal/ads/zzdkh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcoc;

    const-string v0, ""

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p1, "Failed to get a cache key, reverting to legacy flow."

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzeb(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdkj;->zzhhr:Lcom/google/android/gms/internal/ads/zzdkh;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdkl;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdkh;->zza(Lcom/google/android/gms/internal/ads/zzdkh;)Lcom/google/android/gms/internal/ads/zzdpl;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lcom/google/android/gms/internal/ads/zzdkl;-><init>(Lcom/google/android/gms/internal/ads/zzatq;Lcom/google/android/gms/internal/ads/zzdpl;Lcom/google/android/gms/internal/ads/zzdkj;)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzdkh;->zza(Lcom/google/android/gms/internal/ads/zzdkh;Lcom/google/android/gms/internal/ads/zzdkl;)Lcom/google/android/gms/internal/ads/zzdkl;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdkj;->zzhhr:Lcom/google/android/gms/internal/ads/zzdkh;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdkh;->zzb(Lcom/google/android/gms/internal/ads/zzdkh;)Lcom/google/android/gms/internal/ads/zzdkl;

    move-result-object p1

    return-object p1
.end method
