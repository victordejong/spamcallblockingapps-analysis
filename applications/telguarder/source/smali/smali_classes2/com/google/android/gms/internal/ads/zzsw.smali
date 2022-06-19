.class public final Lcom/google/android/gms/internal/ads/zzsw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.7.0"


# instance fields
.field private final context:Landroid/content/Context;

.field private final orientation:I

.field private final zzact:Lcom/google/android/gms/internal/ads/zzvq;

.field private final zzacw:Lcom/google/android/gms/internal/ads/zzzk;

.field private final zzbut:Ljava/lang/String;

.field private zzbuz:Lcom/google/android/gms/internal/ads/zzxl;

.field private final zzbva:Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;

.field private final zzbvb:Lcom/google/android/gms/internal/ads/zzanf;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzzk;ILcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzanf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzanf;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzbvb:Lcom/google/android/gms/internal/ads/zzanf;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsw;->context:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzbut:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzacw:Lcom/google/android/gms/internal/ads/zzzk;

    .line 6
    iput p4, p0, Lcom/google/android/gms/internal/ads/zzsw;->orientation:I

    .line 7
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzbva:Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;

    .line 9
    sget-object p1, Lcom/google/android/gms/internal/ads/zzvq;->zzcif:Lcom/google/android/gms/internal/ads/zzvq;

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzact:Lcom/google/android/gms/internal/ads/zzvq;

    return-void
.end method


# virtual methods
.method public final zzmu()V
    .locals 5

    .line 13
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzvs;->zzqg()Lcom/google/android/gms/internal/ads/zzvs;

    move-result-object v0

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqo()Lcom/google/android/gms/internal/ads/zzwc;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzsw;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzbut:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzbvb:Lcom/google/android/gms/internal/ads/zzanf;

    .line 15
    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzwc;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzvs;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzane;)Lcom/google/android/gms/internal/ads/zzxl;

    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzbuz:Lcom/google/android/gms/internal/ads/zzxl;

    .line 17
    new-instance v0, Lcom/google/android/gms/internal/ads/zzvx;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzsw;->orientation:I

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzvx;-><init>(I)V

    .line 18
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzbuz:Lcom/google/android/gms/internal/ads/zzxl;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzxl;->zza(Lcom/google/android/gms/internal/ads/zzvx;)V

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzbuz:Lcom/google/android/gms/internal/ads/zzxl;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzsg;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzbva:Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzbut:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzsg;-><init>(Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzxl;->zza(Lcom/google/android/gms/internal/ads/zzsp;)V

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzbuz:Lcom/google/android/gms/internal/ads/zzxl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsw;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzacw:Lcom/google/android/gms/internal/ads/zzzk;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzvq;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzzk;)Lcom/google/android/gms/internal/ads/zzvl;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzxl;->zza(Lcom/google/android/gms/internal/ads/zzvl;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 23
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzazk;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
