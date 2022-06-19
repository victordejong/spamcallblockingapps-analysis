.class public final synthetic Lcom/google/android/gms/internal/ads/zzdgp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdvz;


# instance fields
.field private final zzheh:Lcom/google/android/gms/internal/ads/zzdgk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdgk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdgp;->zzheh:Lcom/google/android/gms/internal/ads/zzdgk;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgp;->zzheh:Lcom/google/android/gms/internal/ads/zzdgk;

    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdgk;->zzb(Ljava/lang/Exception;)Lcom/google/android/gms/internal/ads/zzdgl;

    move-result-object p1

    return-object p1
.end method
