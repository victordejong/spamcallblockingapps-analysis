.class public final Lcom/google/android/gms/internal/ads/zzchq;
.super Ljava/lang/Object;
.source ""


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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzchq;->zzbqa:Lcom/google/android/gms/internal/ads/zzbej;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzchq;->context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzchq;->zzesm:Lcom/google/android/gms/internal/ads/zzei;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzchq;->zzesn:Lcom/google/android/gms/internal/ads/zzacq;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzchq;->zzbpn:Lcom/google/android/gms/internal/ads/zzazn;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzchq;->zzesp:Lcom/google/android/gms/ads/internal/zzb;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzchq;->zzeqv:Lcom/google/android/gms/internal/ads/zztu;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzchq;->zzgjw:Lcom/google/android/gms/internal/ads/zzbts;

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzchq;)Lcom/google/android/gms/internal/ads/zzbts;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzchq;->zzgjw:Lcom/google/android/gms/internal/ads/zzbts;

    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzvs;Lcom/google/android/gms/internal/ads/zzdmw;Lcom/google/android/gms/internal/ads/zzdnb;)Lcom/google/android/gms/internal/ads/zzbeb;
    .locals 15

    move-object v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzchq;->context:Landroid/content/Context;

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

    invoke-static/range {v1 .. v14}, Lcom/google/android/gms/internal/ads/zzbej;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbft;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzei;Lcom/google/android/gms/internal/ads/zzacq;Lcom/google/android/gms/internal/ads/zzazn;Lcom/google/android/gms/internal/ads/zzacc;Lcom/google/android/gms/ads/internal/zzm;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zztu;Lcom/google/android/gms/internal/ads/zzdmw;Lcom/google/android/gms/internal/ads/zzdnb;)Lcom/google/android/gms/internal/ads/zzbeb;

    move-result-object v1

    return-object v1
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzvs;)Lcom/google/android/gms/internal/ads/zzbeb;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/google/android/gms/internal/ads/zzchq;->zza(Lcom/google/android/gms/internal/ads/zzvs;Lcom/google/android/gms/internal/ads/zzdmw;Lcom/google/android/gms/internal/ads/zzdnb;)Lcom/google/android/gms/internal/ads/zzbeb;

    move-result-object p1

    return-object p1
.end method
