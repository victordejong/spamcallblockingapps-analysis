.class public final Lcom/google/android/gms/internal/ads/zzchq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# instance fields
.field private final context:Landroid/content/Context;

.field private final zzbpn:Lcom/google/android/gms/internal/ads/zzazn;

.field private final zzbqa:Lcom/google/android/gms/internal/ads/zzbej;

.field private final zzeqv:Lcom/google/android/gms/internal/ads/zztu;

.field private final zzesm:Lcom/google/android/gms/internal/ads/zzei;

.field private final zzesn:Lcom/google/android/gms/internal/ads/zzacq;

.field private final zzesp:Lcom/google/android/gms/ads/internal/zzb;

.field private final zzgjw:Lcom/google/android/gms/internal/ads/zzbts;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbej;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzei;Lcom/google/android/gms/internal/ads/zzacq;Lcom/google/android/gms/internal/ads/zzazn;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zztu;Lcom/google/android/gms/internal/ads/zzbts;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzchq;->zzbqa:Lcom/google/android/gms/internal/ads/zzbej;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzchq;->context:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzchq;->zzesm:Lcom/google/android/gms/internal/ads/zzei;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzchq;->zzesn:Lcom/google/android/gms/internal/ads/zzacq;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzchq;->zzbpn:Lcom/google/android/gms/internal/ads/zzazn;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzchq;->zzesp:Lcom/google/android/gms/ads/internal/zzb;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzchq;->zzeqv:Lcom/google/android/gms/internal/ads/zztu;

    .line 9
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzchq;->zzgjw:Lcom/google/android/gms/internal/ads/zzbts;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzchq;)Lcom/google/android/gms/internal/ads/zzbts;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzchq;->zzgjw:Lcom/google/android/gms/internal/ads/zzbts;

    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzvs;Lcom/google/android/gms/internal/ads/zzdmw;Lcom/google/android/gms/internal/ads/zzdnb;)Lcom/google/android/gms/internal/ads/zzbeb;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzben;
        }
    .end annotation

    move-object v0, p0

    .line 12
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzchq;->context:Landroid/content/Context;

    .line 13
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzbft;->zzb(Lcom/google/android/gms/internal/ads/zzvs;)Lcom/google/android/gms/internal/ads/zzbft;

    move-result-object v2

    move-object/from16 v3, p1

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzvs;->zzacy:Ljava/lang/String;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzchq;->zzesm:Lcom/google/android/gms/internal/ads/zzei;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzchq;->zzesn:Lcom/google/android/gms/internal/ads/zzacq;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzchq;->zzbpn:Lcom/google/android/gms/internal/ads/zzazn;

    new-instance v10, Lcom/google/android/gms/internal/ads/zzchp;

    invoke-direct {v10, p0}, Lcom/google/android/gms/internal/ads/zzchp;-><init>(Lcom/google/android/gms/internal/ads/zzchq;)V

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzchq;->zzesp:Lcom/google/android/gms/ads/internal/zzb;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzchq;->zzeqv:Lcom/google/android/gms/internal/ads/zztu;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    .line 14
    invoke-static/range {v1 .. v14}, Lcom/google/android/gms/internal/ads/zzbej;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbft;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzei;Lcom/google/android/gms/internal/ads/zzacq;Lcom/google/android/gms/internal/ads/zzazn;Lcom/google/android/gms/internal/ads/zzacc;Lcom/google/android/gms/ads/internal/zzm;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zztu;Lcom/google/android/gms/internal/ads/zzdmw;Lcom/google/android/gms/internal/ads/zzdnb;)Lcom/google/android/gms/internal/ads/zzbeb;

    move-result-object v1

    return-object v1
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzvs;)Lcom/google/android/gms/internal/ads/zzbeb;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzben;
        }
    .end annotation

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, p1, v0, v0}, Lcom/google/android/gms/internal/ads/zzchq;->zza(Lcom/google/android/gms/internal/ads/zzvs;Lcom/google/android/gms/internal/ads/zzdmw;Lcom/google/android/gms/internal/ads/zzdnb;)Lcom/google/android/gms/internal/ads/zzbeb;

    move-result-object p1

    return-object p1
.end method
