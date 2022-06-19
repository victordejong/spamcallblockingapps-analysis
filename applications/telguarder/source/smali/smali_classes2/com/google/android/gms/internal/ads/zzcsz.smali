.class final synthetic Lcom/google/android/gms/internal/ads/zzcsz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzfva:Lcom/google/android/gms/internal/ads/zzdmw;

.field private final zzghw:Lcom/google/android/gms/internal/ads/zzdnl;

.field private final zzgub:Lcom/google/android/gms/internal/ads/zzcta;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcta;Lcom/google/android/gms/internal/ads/zzdnl;Lcom/google/android/gms/internal/ads/zzdmw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcsz;->zzgub:Lcom/google/android/gms/internal/ads/zzcta;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcsz;->zzghw:Lcom/google/android/gms/internal/ads/zzdnl;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcsz;->zzfva:Lcom/google/android/gms/internal/ads/zzdmw;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsz;->zzgub:Lcom/google/android/gms/internal/ads/zzcta;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcsz;->zzghw:Lcom/google/android/gms/internal/ads/zzdnl;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcsz;->zzfva:Lcom/google/android/gms/internal/ads/zzdmw;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcta;->zzc(Lcom/google/android/gms/internal/ads/zzdnl;Lcom/google/android/gms/internal/ads/zzdmw;)Lcom/google/android/gms/internal/ads/zzblv;

    move-result-object v0

    return-object v0
.end method
