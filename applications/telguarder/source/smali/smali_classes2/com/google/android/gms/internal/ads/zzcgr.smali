.class public final Lcom/google/android/gms/internal/ads/zzcgr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# instance fields
.field private final zzesr:Lcom/google/android/gms/internal/ads/zzdmw;

.field private final zzess:Lcom/google/android/gms/internal/ads/zzdnb;

.field private final zzfwu:Lcom/google/android/gms/internal/ads/zzbsm;

.field private final zzgbl:Lcom/google/android/gms/internal/ads/zzbtj;

.field private final zzgcj:Lcom/google/android/gms/internal/ads/zzbrl;

.field private final zzgjf:Lcom/google/android/gms/internal/ads/zzbta;

.field private final zzgjg:Lcom/google/android/gms/internal/ads/zzbvt;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbrl;Lcom/google/android/gms/internal/ads/zzbsm;Lcom/google/android/gms/internal/ads/zzbta;Lcom/google/android/gms/internal/ads/zzbtj;Lcom/google/android/gms/internal/ads/zzbvt;Lcom/google/android/gms/internal/ads/zzdmw;Lcom/google/android/gms/internal/ads/zzdnb;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgr;->zzgcj:Lcom/google/android/gms/internal/ads/zzbrl;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcgr;->zzfwu:Lcom/google/android/gms/internal/ads/zzbsm;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcgr;->zzgjf:Lcom/google/android/gms/internal/ads/zzbta;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcgr;->zzgbl:Lcom/google/android/gms/internal/ads/zzbtj;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcgr;->zzgjg:Lcom/google/android/gms/internal/ads/zzbvt;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzcgr;->zzesr:Lcom/google/android/gms/internal/ads/zzdmw;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzcgr;->zzess:Lcom/google/android/gms/internal/ads/zzdnb;

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzcgk;)V
    .locals 6

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcgk;->zza(Lcom/google/android/gms/internal/ads/zzcgk;)Lcom/google/android/gms/internal/ads/zzcgs;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcgr;->zzgcj:Lcom/google/android/gms/internal/ads/zzbrl;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcgr;->zzgjf:Lcom/google/android/gms/internal/ads/zzbta;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcgr;->zzgbl:Lcom/google/android/gms/internal/ads/zzbtj;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcgr;->zzgjg:Lcom/google/android/gms/internal/ads/zzbvt;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcgr;->zzfwu:Lcom/google/android/gms/internal/ads/zzbsm;

    .line 11
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzcgu;->zza(Lcom/google/android/gms/internal/ads/zzbsm;)Lcom/google/android/gms/ads/internal/overlay/zzv;

    move-result-object v5

    .line 12
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzcgs;->zza(Lcom/google/android/gms/internal/ads/zzcgs;Lcom/google/android/gms/internal/ads/zzvc;Lcom/google/android/gms/internal/ads/zzahi;Lcom/google/android/gms/ads/internal/overlay/zzq;Lcom/google/android/gms/internal/ads/zzahk;Lcom/google/android/gms/ads/internal/overlay/zzv;)V

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgr;->zzesr:Lcom/google/android/gms/internal/ads/zzdmw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcgr;->zzess:Lcom/google/android/gms/internal/ads/zzdnb;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzcgk;->zza(Lcom/google/android/gms/internal/ads/zzdmw;Lcom/google/android/gms/internal/ads/zzdnb;)V

    return-void
.end method
