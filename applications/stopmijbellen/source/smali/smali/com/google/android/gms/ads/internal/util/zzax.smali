.class final Lcom/google/android/gms/ads/internal/util/zzax;
.super Lcom/google/android/gms/internal/ads/zzbim;
.source "SourceFile"


# instance fields
.field public final synthetic zza:Landroid/content/Context;

.field public final synthetic zzb:Lcom/google/android/gms/ads/internal/util/zzba;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/util/zzba;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzax;->zzb:Lcom/google/android/gms/ads/internal/util/zzba;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/util/zzax;->zza:Landroid/content/Context;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbim;-><init>()V

    return-void
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/internal/ads/zzbew;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzax;->zzb:Lcom/google/android/gms/ads/internal/util/zzba;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzax;->zza:Landroid/content/Context;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbew;->zzb:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2, v2}, Lcom/google/android/gms/ads/internal/util/zzba;->zzi(Landroid/content/Context;Ljava/lang/String;ZZ)V

    return-void
.end method
