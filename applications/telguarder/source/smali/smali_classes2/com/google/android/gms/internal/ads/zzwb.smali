.class final Lcom/google/android/gms/internal/ads/zzwb;
.super Lcom/google/android/gms/internal/ads/zzws;
.source "com.google.android.gms:play-services-ads-lite@@19.7.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzws<",
        "Lcom/google/android/gms/internal/ads/zzxl;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic zzcit:Lcom/google/android/gms/internal/ads/zzvs;

.field private final synthetic zzciu:Ljava/lang/String;

.field private final synthetic zzciv:Lcom/google/android/gms/internal/ads/zzane;

.field private final synthetic zzciw:Lcom/google/android/gms/internal/ads/zzwc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzwc;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzvs;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzane;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwb;->zzciw:Lcom/google/android/gms/internal/ads/zzwc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzwb;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzwb;->zzcit:Lcom/google/android/gms/internal/ads/zzvs;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzwb;->zzciu:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzwb;->zzciv:Lcom/google/android/gms/internal/ads/zzane;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzws;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzxy;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwb;->val$context:Landroid/content/Context;

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzwb;->zzcit:Lcom/google/android/gms/internal/ads/zzvs;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzwb;->zzciu:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzwb;->zzciv:Lcom/google/android/gms/internal/ads/zzane;

    const v6, 0xc2be7e0

    move-object v1, p1

    .line 12
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzxy;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzvs;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzane;I)Lcom/google/android/gms/internal/ads/zzxl;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zzqj()Ljava/lang/Object;
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwb;->val$context:Landroid/content/Context;

    const-string v1, "banner"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzwc;->zzb(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaac;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaac;-><init>()V

    return-object v0
.end method

.method public final synthetic zzqk()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwb;->zzciw:Lcom/google/android/gms/internal/ads/zzwc;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzwc;->zza(Lcom/google/android/gms/internal/ads/zzwc;)Lcom/google/android/gms/internal/ads/zzvj;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzwb;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzwb;->zzcit:Lcom/google/android/gms/internal/ads/zzvs;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzwb;->zzciu:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzwb;->zzciv:Lcom/google/android/gms/internal/ads/zzane;

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzvj;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzvs;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzane;I)Lcom/google/android/gms/internal/ads/zzxl;

    move-result-object v0

    return-object v0
.end method
