.class public final synthetic Lcom/google/android/gms/internal/ads/zzctc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzfva:Lcom/google/android/gms/internal/ads/zzdmw;

.field private final zzghw:Lcom/google/android/gms/internal/ads/zzdnl;

.field private final zzgub:Lcom/google/android/gms/internal/ads/zzcta;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcta;Lcom/google/android/gms/internal/ads/zzdnl;Lcom/google/android/gms/internal/ads/zzdmw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzctc;->zzgub:Lcom/google/android/gms/internal/ads/zzcta;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzctc;->zzghw:Lcom/google/android/gms/internal/ads/zzdnl;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzctc;->zzfva:Lcom/google/android/gms/internal/ads/zzdmw;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctc;->zzgub:Lcom/google/android/gms/internal/ads/zzcta;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzctc;->zzghw:Lcom/google/android/gms/internal/ads/zzdnl;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzctc;->zzfva:Lcom/google/android/gms/internal/ads/zzdmw;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcta;->zzd(Lcom/google/android/gms/internal/ads/zzdnl;Lcom/google/android/gms/internal/ads/zzdmw;)V

    return-void
.end method
