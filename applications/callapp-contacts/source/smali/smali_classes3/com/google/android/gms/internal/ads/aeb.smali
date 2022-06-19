.class public final Lcom/google/android/gms/internal/ads/aeb;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/afh;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/die;Lcom/google/android/gms/internal/ads/bw;Lcom/google/android/gms/internal/ads/zzbar;Lcom/google/android/gms/ads/internal/zzm;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/ehk;Lcom/google/android/gms/internal/ads/cov;Lcom/google/android/gms/internal/ads/coz;)Lcom/google/android/gms/internal/ads/adt;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbfu;
        }
    .end annotation

    .line 5
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/aq;->a(Landroid/content/Context;)V

    .line 6
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/aed;

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

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    invoke-direct/range {v1 .. v15}, Lcom/google/android/gms/internal/ads/aed;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/afh;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/die;Lcom/google/android/gms/internal/ads/bw;Lcom/google/android/gms/internal/ads/zzbar;Lcom/google/android/gms/internal/ads/bi;Lcom/google/android/gms/ads/internal/zzm;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/ehk;Lcom/google/android/gms/internal/ads/cov;Lcom/google/android/gms/internal/ads/coz;)V

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzbr;->zza(Lcom/google/android/gms/internal/ads/cyn;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/adt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 8
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbfu;

    const-string v2, "Webview initialization failed."

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbfu;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static final synthetic b(Landroid/content/Context;Lcom/google/android/gms/internal/ads/afh;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/die;Lcom/google/android/gms/internal/ads/bw;Lcom/google/android/gms/internal/ads/zzbar;Lcom/google/android/gms/ads/internal/zzm;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/ehk;Lcom/google/android/gms/internal/ads/cov;Lcom/google/android/gms/internal/ads/coz;)Lcom/google/android/gms/internal/ads/adt;
    .locals 15

    const/16 v0, 0x108

    .line 9
    :try_start_0
    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 10
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbft;

    const/4 v9, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    .line 11
    invoke-static/range {v1 .. v14}, Lcom/google/android/gms/internal/ads/aeh;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/afh;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/die;Lcom/google/android/gms/internal/ads/bw;Lcom/google/android/gms/internal/ads/zzbar;Lcom/google/android/gms/internal/ads/bi;Lcom/google/android/gms/ads/internal/zzm;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/ehk;Lcom/google/android/gms/internal/ads/cov;Lcom/google/android/gms/internal/ads/coz;)Lcom/google/android/gms/internal/ads/aeh;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzbft;-><init>(Lcom/google/android/gms/internal/ads/adt;)V

    .line 13
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkx()Lcom/google/android/gms/ads/internal/util/zzr;

    move-result-object v1

    move/from16 v2, p4

    move-object/from16 v3, p10

    .line 14
    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/gms/ads/internal/util/zzr;->zza(Lcom/google/android/gms/internal/ads/adt;Lcom/google/android/gms/internal/ads/ehk;Z)Lcom/google/android/gms/internal/ads/ads;

    move-result-object v1

    .line 15
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/adt;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 16
    new-instance v1, Lcom/google/android/gms/internal/ads/adl;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/adl;-><init>(Lcom/google/android/gms/internal/ads/adt;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/adt;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    return-object v0

    :catchall_0
    move-exception v0

    .line 20
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 21
    throw v0
.end method
