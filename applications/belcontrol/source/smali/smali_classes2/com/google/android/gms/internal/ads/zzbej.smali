.class public final Lcom/google/android/gms/internal/ads/zzbej;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbft;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzei;Lcom/google/android/gms/internal/ads/zzacq;Lcom/google/android/gms/internal/ads/zzazn;Lcom/google/android/gms/internal/ads/zzacc;Lcom/google/android/gms/ads/internal/zzm;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zztu;Lcom/google/android/gms/internal/ads/zzdmw;Lcom/google/android/gms/internal/ads/zzdnb;)Lcom/google/android/gms/internal/ads/zzbeb;
    .locals 16

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzabp;->initialize(Landroid/content/Context;)V

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbel;

    const/4 v10, 0x0

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    invoke-direct/range {v1 .. v15}, Lcom/google/android/gms/internal/ads/zzbel;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbft;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzei;Lcom/google/android/gms/internal/ads/zzacq;Lcom/google/android/gms/internal/ads/zzazn;Lcom/google/android/gms/internal/ads/zzacc;Lcom/google/android/gms/ads/internal/zzm;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zztu;Lcom/google/android/gms/internal/ads/zzdmw;Lcom/google/android/gms/internal/ads/zzdnb;)V

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzbr;->zza(Lcom/google/android/gms/internal/ads/zzdws;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbeb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzben;

    const-string v2, "Webview initialization failed."

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzben;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzazn;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzei;Lcom/google/android/gms/ads/internal/zzb;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/zzazn;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzei;",
            "Lcom/google/android/gms/ads/internal/zzb;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "Lcom/google/android/gms/internal/ads/zzbeb;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdzk;->zzag(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object v0

    new-instance v7, Lcom/google/android/gms/internal/ads/zzbem;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p3

    move-object v4, p1

    move-object v5, p4

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzbem;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzei;Lcom/google/android/gms/internal/ads/zzazn;Lcom/google/android/gms/ads/internal/zzb;Ljava/lang/String;)V

    sget-object p0, Lcom/google/android/gms/internal/ads/zzazp;->zzeig:Lcom/google/android/gms/internal/ads/zzdzv;

    invoke-static {v0, v7, p0}, Lcom/google/android/gms/internal/ads/zzdzk;->zzb(Lcom/google/android/gms/internal/ads/zzdzw;Lcom/google/android/gms/internal/ads/zzdyu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic zzb(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbft;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzei;Lcom/google/android/gms/internal/ads/zzacq;Lcom/google/android/gms/internal/ads/zzazn;Lcom/google/android/gms/internal/ads/zzacc;Lcom/google/android/gms/ads/internal/zzm;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zztu;Lcom/google/android/gms/internal/ads/zzdmw;Lcom/google/android/gms/internal/ads/zzdnb;)Lcom/google/android/gms/internal/ads/zzbeb;
    .locals 1

    const/16 v0, 0x108

    :try_start_0
    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbeq;

    invoke-static/range {p0 .. p13}, Lcom/google/android/gms/internal/ads/zzber;->zzc(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbft;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzei;Lcom/google/android/gms/internal/ads/zzacq;Lcom/google/android/gms/internal/ads/zzazn;Lcom/google/android/gms/internal/ads/zzacc;Lcom/google/android/gms/ads/internal/zzm;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zztu;Lcom/google/android/gms/internal/ads/zzdmw;Lcom/google/android/gms/internal/ads/zzdnb;)Lcom/google/android/gms/internal/ads/zzber;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbeq;-><init>(Lcom/google/android/gms/internal/ads/zzbeb;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkt()Lcom/google/android/gms/ads/internal/util/zzr;

    move-result-object p0

    invoke-virtual {p0, v0, p11, p4}, Lcom/google/android/gms/ads/internal/util/zzr;->zza(Lcom/google/android/gms/internal/ads/zzbeb;Lcom/google/android/gms/internal/ads/zztu;Z)Lcom/google/android/gms/internal/ads/zzbee;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzbeb;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance p0, Lcom/google/android/gms/internal/ads/zzbdt;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbdt;-><init>(Lcom/google/android/gms/internal/ads/zzbeb;)V

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzbeb;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    return-object v0

    :catchall_0
    move-exception p0

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    throw p0
.end method
