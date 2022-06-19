.class public final Lcom/google/android/gms/internal/ads/zzdtm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-gass@@19.7.0"


# instance fields
.field private final context:Landroid/content/Context;

.field private final zzhsz:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdtm;->context:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdtm;->zzhsz:Landroid/os/Looper;

    return-void
.end method


# virtual methods
.method public final zzhf(Ljava/lang/String;)V
    .locals 3

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdua;->zzayc()Lcom/google/android/gms/internal/ads/zzdua$zzb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdtm;->context:Landroid/content/Context;

    .line 6
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdua$zzb;->zzhi(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdua$zzb;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdua$zza;->zzhtu:Lcom/google/android/gms/internal/ads/zzdua$zza;

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdua$zzb;->zzb(Lcom/google/android/gms/internal/ads/zzdua$zza;)Lcom/google/android/gms/internal/ads/zzdua$zzb;

    move-result-object v0

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdtt;->zzaya()Lcom/google/android/gms/internal/ads/zzdtt$zzb;

    move-result-object v1

    .line 9
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzdtt$zzb;->zzhh(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdtt$zzb;

    move-result-object p1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdtt$zza;->zzhtn:Lcom/google/android/gms/internal/ads/zzdtt$zza;

    .line 10
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzdtt$zzb;->zzb(Lcom/google/android/gms/internal/ads/zzdtt$zza;)Lcom/google/android/gms/internal/ads/zzdtt$zzb;

    move-result-object p1

    .line 11
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdua$zzb;->zza(Lcom/google/android/gms/internal/ads/zzdtt$zzb;)Lcom/google/android/gms/internal/ads/zzdua$zzb;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zzbiw()Lcom/google/android/gms/internal/ads/zzemo;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzelb;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdua;

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtm;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdtm;->zzhsz:Landroid/os/Looper;

    .line 14
    new-instance v2, Lcom/google/android/gms/internal/ads/zzdtl;

    invoke-direct {v2, v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdtl;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zzdua;)V

    .line 15
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdtl;->zzaxv()V

    return-void
.end method
