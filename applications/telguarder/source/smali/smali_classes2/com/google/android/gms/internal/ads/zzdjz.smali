.class final synthetic Lcom/google/android/gms/internal/ads/zzdjz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyu;


# instance fields
.field private final zzhgw:Lcom/google/android/gms/internal/ads/zzdko;

.field private final zzhhl:Lcom/google/android/gms/internal/ads/zzdjw;

.field private final zzhhm:Lcom/google/android/gms/internal/ads/zzdkp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdjw;Lcom/google/android/gms/internal/ads/zzdko;Lcom/google/android/gms/internal/ads/zzdkp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdjz;->zzhhl:Lcom/google/android/gms/internal/ads/zzdjw;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdjz;->zzhgw:Lcom/google/android/gms/internal/ads/zzdko;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdjz;->zzhhm:Lcom/google/android/gms/internal/ads/zzdkp;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjz;->zzhhl:Lcom/google/android/gms/internal/ads/zzdjw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdjz;->zzhgw:Lcom/google/android/gms/internal/ads/zzdko;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdjz;->zzhhm:Lcom/google/android/gms/internal/ads/zzdkp;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdkl;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzdjw;->zza(Lcom/google/android/gms/internal/ads/zzdko;Lcom/google/android/gms/internal/ads/zzdkp;Lcom/google/android/gms/internal/ads/zzdkl;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    return-object p1
.end method
