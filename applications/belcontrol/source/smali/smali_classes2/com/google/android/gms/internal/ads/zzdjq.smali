.class public final synthetic Lcom/google/android/gms/internal/ads/zzdjq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyu;


# instance fields
.field private final zzhgv:Lcom/google/android/gms/internal/ads/zzdjr;

.field private final zzhgw:Lcom/google/android/gms/internal/ads/zzdko;

.field private final zzhgx:Lcom/google/android/gms/internal/ads/zzdju;

.field private final zzhgy:Lcom/google/android/gms/internal/ads/zzdkp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdjr;Lcom/google/android/gms/internal/ads/zzdko;Lcom/google/android/gms/internal/ads/zzdju;Lcom/google/android/gms/internal/ads/zzdkp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdjq;->zzhgv:Lcom/google/android/gms/internal/ads/zzdjr;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdjq;->zzhgw:Lcom/google/android/gms/internal/ads/zzdko;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdjq;->zzhgx:Lcom/google/android/gms/internal/ads/zzdju;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdjq;->zzhgy:Lcom/google/android/gms/internal/ads/zzdkp;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjq;->zzhgv:Lcom/google/android/gms/internal/ads/zzdjr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdjq;->zzhgw:Lcom/google/android/gms/internal/ads/zzdko;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdjq;->zzhgx:Lcom/google/android/gms/internal/ads/zzdju;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdjq;->zzhgy:Lcom/google/android/gms/internal/ads/zzdkp;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdka;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzdjr;->zza(Lcom/google/android/gms/internal/ads/zzdko;Lcom/google/android/gms/internal/ads/zzdju;Lcom/google/android/gms/internal/ads/zzdkp;Lcom/google/android/gms/internal/ads/zzdka;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    return-object p1
.end method
