.class public final synthetic Lcom/google/android/gms/internal/ads/zzcnb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyu;


# instance fields
.field private final zzgof:Lcom/google/android/gms/internal/ads/zzcnc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcnc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnb;->zzgof:Lcom/google/android/gms/internal/ads/zzcnc;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnb;->zzgof:Lcom/google/android/gms/internal/ads/zzcnc;

    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcnc;->zzd(Ljava/io/InputStream;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    return-object p1
.end method
