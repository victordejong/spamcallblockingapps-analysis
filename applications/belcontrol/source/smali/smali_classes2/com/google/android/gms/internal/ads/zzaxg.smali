.class public final synthetic Lcom/google/android/gms/internal/ads/zzaxg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaxv;


# instance fields
.field private final zzdlh:Ljava/lang/String;

.field private final zzebn:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaxg;->zzdlh:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaxg;->zzebn:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzbfu;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxg;->zzdlh:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaxg;->zzebn:Landroid/os/Bundle;

    const-string v2, "am"

    invoke-interface {p1, v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzbfu;->logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
