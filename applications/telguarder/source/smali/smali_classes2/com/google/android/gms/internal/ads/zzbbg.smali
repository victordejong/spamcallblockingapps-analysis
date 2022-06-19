.class public final Lcom/google/android/gms/internal/ads/zzbbg;
.super Lcom/google/android/gms/internal/ads/zzbay;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbay;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbo;IZLcom/google/android/gms/internal/ads/zzacc;Lcom/google/android/gms/internal/ads/zzbbl;)Lcom/google/android/gms/internal/ads/zzbav;
    .locals 16

    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    const/4 v0, 0x0

    return-object v0

    .line 7
    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbbn;

    .line 8
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzbbo;->zzabj()Lcom/google/android/gms/internal/ads/zzazn;

    move-result-object v3

    .line 9
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzbbo;->getRequestId()Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzbbo;->zzabd()Lcom/google/android/gms/internal/ads/zzaca;

    move-result-object v6

    move-object v1, v0

    move-object/from16 v2, p1

    move-object/from16 v5, p5

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzbbn;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzazn;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzacc;Lcom/google/android/gms/internal/ads/zzaca;)V

    const/4 v1, 0x2

    move/from16 v2, p3

    if-ne v2, v1, :cond_3

    .line 13
    new-instance v8, Lcom/google/android/gms/internal/ads/zzbbr;

    .line 14
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzbbg;->zzb(Lcom/google/android/gms/internal/ads/zzbbo;)Z

    move-result v6

    move-object v1, v8

    move-object/from16 v2, p1

    move-object v3, v0

    move-object/from16 v4, p2

    move/from16 v5, p4

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzbbr;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbn;Lcom/google/android/gms/internal/ads/zzbbo;ZZLcom/google/android/gms/internal/ads/zzbbl;)V

    return-object v8

    .line 16
    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbam;

    .line 17
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzbbg;->zzb(Lcom/google/android/gms/internal/ads/zzbbo;)Z

    move-result v13

    new-instance v15, Lcom/google/android/gms/internal/ads/zzbbn;

    .line 18
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzbbo;->zzabj()Lcom/google/android/gms/internal/ads/zzazn;

    move-result-object v3

    .line 19
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzbbo;->getRequestId()Ljava/lang/String;

    move-result-object v4

    .line 20
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzbbo;->zzabd()Lcom/google/android/gms/internal/ads/zzaca;

    move-result-object v6

    move-object v1, v15

    move-object/from16 v2, p1

    move-object/from16 v5, p5

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzbbn;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzazn;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzacc;Lcom/google/android/gms/internal/ads/zzaca;)V

    move-object v9, v0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move/from16 v12, p4

    move-object/from16 v14, p6

    invoke-direct/range {v9 .. v15}, Lcom/google/android/gms/internal/ads/zzbam;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbo;ZZLcom/google/android/gms/internal/ads/zzbbl;Lcom/google/android/gms/internal/ads/zzbbn;)V

    return-object v0
.end method
