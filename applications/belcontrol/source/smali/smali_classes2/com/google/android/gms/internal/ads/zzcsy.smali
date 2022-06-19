.class public final synthetic Lcom/google/android/gms/internal/ads/zzcsy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcag;


# instance fields
.field private final zzbwd:Lcom/google/android/gms/internal/ads/zzbaa;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbaa;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcsy;->zzbwd:Lcom/google/android/gms/internal/ads/zzbaa;

    return-void
.end method


# virtual methods
.method public final zza(ZLandroid/content/Context;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcsy;->zzbwd:Lcom/google/android/gms/internal/ads/zzbaa;

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkq()Lcom/google/android/gms/ads/internal/overlay/zzm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbaa;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v0, 0x1

    invoke-static {p2, p1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
