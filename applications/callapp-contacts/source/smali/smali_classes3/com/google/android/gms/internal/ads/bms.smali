.class final synthetic Lcom/google/android/gms/internal/ads/bms;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bmt;

.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bmt;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bms;->a:Lcom/google/android/gms/internal/ads/bmt;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bms;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    move-object/from16 v1, p0

    const-string v2, "data"

    .line 1
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/bms;->a:Lcom/google/android/gms/internal/ads/bmt;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/bms;->b:Ljava/lang/String;

    .line 2
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/bmt;->a:Lcom/google/android/gms/internal/ads/bmi;

    .line 2072
    :try_start_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 2073
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "initializer_settings"

    .line 2074
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "config"

    .line 2075
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 2076
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v13

    .line 2077
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2078
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2079
    new-instance v15, Ljava/lang/Object;

    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    .line 2080
    new-instance v9, Lcom/google/android/gms/internal/ads/zp;

    invoke-direct {v9}, Lcom/google/android/gms/internal/ads/zp;-><init>()V

    .line 2082
    sget-object v4, Lcom/google/android/gms/internal/ads/aq;->bj:Lcom/google/android/gms/internal/ads/af;

    .line 2084
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v4

    .line 2085
    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v7, v11, Lcom/google/android/gms/internal/ads/bmi;->j:Ljava/util/concurrent/ScheduledExecutorService;

    .line 2086
    invoke-static {v9, v4, v5, v6, v7}, Lcom/google/android/gms/internal/ads/dbh;->a(Lcom/google/android/gms/internal/ads/dbt;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v10

    .line 2087
    iget-object v4, v11, Lcom/google/android/gms/internal/ads/bmi;->k:Lcom/google/android/gms/internal/ads/blr;

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/blr;->a(Ljava/lang/String;)V

    .line 2088
    iget-object v4, v11, Lcom/google/android/gms/internal/ads/bmi;->l:Lcom/google/android/gms/internal/ads/axn;

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/axn;->a(Ljava/lang/String;)V

    .line 2089
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lcom/google/android/gms/common/util/f;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/f;->b()J

    move-result-wide v16

    .line 2090
    new-instance v8, Lcom/google/android/gms/internal/ads/bmp;

    move-object v4, v8

    move-object v5, v11

    move-object v6, v15

    move-object v7, v9

    move-object v14, v8

    move-object v8, v0

    move-object/from16 v18, v9

    move-object v1, v10

    move-wide/from16 v9, v16

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/bmp;-><init>(Lcom/google/android/gms/internal/ads/bmi;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zp;Ljava/lang/String;J)V

    iget-object v4, v11, Lcom/google/android/gms/internal/ads/bmi;->h:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v14, v4}, Lcom/google/android/gms/internal/ads/dbt;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 2091
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2092
    new-instance v1, Lcom/google/android/gms/internal/ads/bmv;

    move-object v4, v1

    move-object v5, v11

    move-object v6, v15

    move-object v7, v0

    move-wide/from16 v8, v16

    move-object/from16 v10, v18

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/bmv;-><init>(Lcom/google/android/gms/internal/ads/bmi;Ljava/lang/Object;Ljava/lang/String;JLcom/google/android/gms/internal/ads/zp;)V

    .line 2093
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 2094
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_4

    const-string v10, ""

    if-eqz v4, :cond_1

    .line 2096
    :try_start_1
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v5, 0x0

    .line 2097
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 2098
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "format"

    .line 2099
    invoke-virtual {v6, v7, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2100
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 2101
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    if-eqz v6, :cond_0

    .line 2103
    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v14

    .line 2104
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 2105
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v16, v2

    .line 2106
    :try_start_2
    invoke-virtual {v6, v15, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v15, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, v16

    goto :goto_2

    :cond_0
    move-object/from16 v16, v2

    .line 2110
    new-instance v2, Lcom/google/android/gms/internal/ads/zzajw;

    invoke-direct {v2, v7, v9}, Lcom/google/android/gms/internal/ads/zzajw;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, v16

    goto :goto_1

    :catch_0
    :cond_1
    move-object/from16 v16, v2

    :catch_1
    const/4 v2, 0x0

    .line 2114
    :try_start_3
    invoke-virtual {v11, v0, v2, v10, v2}, Lcom/google/android/gms/internal/ads/bmi;->a(Ljava/lang/String;ZLjava/lang/String;I)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_4

    .line 2116
    :try_start_4
    iget-object v2, v11, Lcom/google/android/gms/internal/ads/bmi;->g:Lcom/google/android/gms/internal/ads/bjg;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v2, v0, v4}, Lcom/google/android/gms/internal/ads/bjg;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/cqe;

    move-result-object v6

    .line 2117
    iget-object v2, v11, Lcom/google/android/gms/internal/ads/bmi;->i:Ljava/util/concurrent/Executor;

    new-instance v14, Lcom/google/android/gms/internal/ads/bmr;

    move-object v4, v14

    move-object v5, v11

    move-object v7, v1

    move-object v9, v0

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/bmr;-><init>(Lcom/google/android/gms/internal/ads/bmi;Lcom/google/android/gms/internal/ads/cqe;Lcom/google/android/gms/internal/ads/io;Ljava/util/List;Ljava/lang/String;)V

    invoke-interface {v2, v14}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_4
    .catch Lcom/google/android/gms/internal/ads/zzdpq; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_3

    :catch_2
    :try_start_5
    const-string v0, "Failed to create Adapter."

    .line 2120
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/io;->a(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_4

    :goto_3
    move-object/from16 v1, p0

    move-object/from16 v2, v16

    goto/16 :goto_0

    :catch_3
    move-exception v0

    .line 2123
    :try_start_6
    invoke-static {v10, v0}, Lcom/google/android/gms/internal/ads/za;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 3023
    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ads/dbm;

    invoke-static {v12}, Lcom/google/android/gms/internal/ads/cyz;->a(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/cyz;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/dbm;-><init>(ZLcom/google/android/gms/internal/ads/cyz;Lcom/google/android/gms/internal/ads/dbk;)V

    .line 2126
    new-instance v1, Lcom/google/android/gms/internal/ads/bmo;

    invoke-direct {v1, v11}, Lcom/google/android/gms/internal/ads/bmo;-><init>(Lcom/google/android/gms/internal/ads/bmi;)V

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/bmi;->h:Ljava/util/concurrent/Executor;

    .line 2127
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/dbm;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbt;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_4

    return-void

    :catch_4
    move-exception v0

    const-string v1, "Malformed CLD response"

    .line 2130
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zza(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
