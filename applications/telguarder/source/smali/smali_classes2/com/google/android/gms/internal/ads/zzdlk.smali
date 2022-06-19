.class final synthetic Lcom/google/android/gms/internal/ads/zzdlk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdkc;


# instance fields
.field private final zzdjf:Ljava/lang/String;

.field private final zzdlo:Ljava/lang/String;

.field private final zzfzl:Lcom/google/android/gms/internal/ads/zzauk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzauk;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdlk;->zzfzl:Lcom/google/android/gms/internal/ads/zzauk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdlk;->zzdjf:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdlk;->zzdlo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzp(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlk;->zzfzl:Lcom/google/android/gms/internal/ads/zzauk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdlk;->zzdjf:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdlk;->zzdlo:Ljava/lang/String;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzavz;

    .line 2
    new-instance v3, Lcom/google/android/gms/internal/ads/zzawi;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzauk;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzauk;->getAmount()I

    move-result v0

    invoke-direct {v3, v4, v0}, Lcom/google/android/gms/internal/ads/zzawi;-><init>(Ljava/lang/String;I)V

    .line 4
    invoke-interface {p1, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzavz;->zza(Lcom/google/android/gms/internal/ads/zzavl;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
