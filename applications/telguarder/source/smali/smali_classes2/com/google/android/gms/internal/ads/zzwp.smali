.class final Lcom/google/android/gms/internal/ads/zzwp;
.super Lcom/google/android/gms/internal/ads/zzws;
.source "com.google.android.gms:play-services-ads-lite@@19.7.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzws<",
        "Lcom/google/android/gms/internal/ads/zzaur;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic zzciv:Lcom/google/android/gms/internal/ads/zzane;

.field private final synthetic zzciw:Lcom/google/android/gms/internal/ads/zzwc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzwc;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzane;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwp;->zzciw:Lcom/google/android/gms/internal/ads/zzwc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzwp;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzwp;->zzciv:Lcom/google/android/gms/internal/ads/zzane;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzws;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzxy;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwp;->val$context:Landroid/content/Context;

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwp;->zzciv:Lcom/google/android/gms/internal/ads/zzane;

    const v2, 0xc2be7e0

    .line 12
    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzxy;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzane;I)Lcom/google/android/gms/internal/ads/zzaur;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic zzqj()Ljava/lang/Object;
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwp;->val$context:Landroid/content/Context;

    const-string v1, "rewarded_video"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzwc;->zzb(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaak;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaak;-><init>()V

    return-object v0
.end method

.method public final synthetic zzqk()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwp;->zzciw:Lcom/google/android/gms/internal/ads/zzwc;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzwc;->zzf(Lcom/google/android/gms/internal/ads/zzwc;)Lcom/google/android/gms/internal/ads/zzauy;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwp;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzwp;->zzciv:Lcom/google/android/gms/internal/ads/zzane;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzauy;->zzc(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzane;)Lcom/google/android/gms/internal/ads/zzaur;

    move-result-object v0

    return-object v0
.end method
