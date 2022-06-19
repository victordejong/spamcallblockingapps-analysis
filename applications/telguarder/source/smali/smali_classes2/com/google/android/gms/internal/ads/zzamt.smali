.class final synthetic Lcom/google/android/gms/internal/ads/zzamt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyu;


# instance fields
.field private final zzdlh:Ljava/lang/String;

.field private final zzdli:Lcom/google/android/gms/internal/ads/zzaif;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaif;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzdlh:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzdli:Lcom/google/android/gms/internal/ads/zzaif;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzdlh:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzamt;->zzdli:Lcom/google/android/gms/internal/ads/zzaif;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzalx;

    .line 2
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzalx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaif;)V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdzk;->zzag(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    return-object p1
.end method
