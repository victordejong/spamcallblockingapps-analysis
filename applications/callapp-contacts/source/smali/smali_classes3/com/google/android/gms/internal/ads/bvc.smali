.class public final Lcom/google/android/gms/internal/ads/bvc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/buz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/buz<",
        "Lcom/google/android/gms/internal/ads/bcf;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/android/gms/internal/ads/bbe;

.field final b:Lcom/google/android/gms/internal/ads/dbs;

.field final c:Lcom/google/android/gms/internal/ads/cqd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/cqd<",
            "Lcom/google/android/gms/internal/ads/bgy;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/gms/internal/ads/bfe;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/bbe;Lcom/google/android/gms/internal/ads/dbs;Lcom/google/android/gms/internal/ads/bfe;Lcom/google/android/gms/internal/ads/cqd;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/bbe;",
            "Lcom/google/android/gms/internal/ads/dbs;",
            "Lcom/google/android/gms/internal/ads/bfe;",
            "Lcom/google/android/gms/internal/ads/cqd<",
            "Lcom/google/android/gms/internal/ads/bgy;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bvc;->a:Lcom/google/android/gms/internal/ads/bbe;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bvc;->b:Lcom/google/android/gms/internal/ads/dbs;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bvc;->d:Lcom/google/android/gms/internal/ads/bfe;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bvc;->c:Lcom/google/android/gms/internal/ads/cqd;

    return-void
.end method


# virtual methods
.method final a(Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/cpk;",
            "Lcom/google/android/gms/internal/ads/cov;",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "Lcom/google/android/gms/internal/ads/bcf;",
            ">;"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v6, p3

    .line 12
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/bvc;->c:Lcom/google/android/gms/internal/ads/cqd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cqd;->a()Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v3

    .line 13
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/bvc;->d:Lcom/google/android/gms/internal/ads/bfe;

    .line 3006
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/bfe;->a:Lcom/google/android/gms/internal/ads/dbs;

    new-instance v2, Lcom/google/android/gms/internal/ads/bfd;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-direct {v2, v0, v4, v5, v6}, Lcom/google/android/gms/internal/ads/bfd;-><init>(Lcom/google/android/gms/internal/ads/bfe;Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;Lorg/json/JSONObject;)V

    .line 3007
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/dbs;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v10

    .line 3008
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/bfe;->b:Lcom/google/android/gms/internal/ads/bfi;

    const-string v2, "images"

    .line 3045
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/bfi;->g:Lcom/google/android/gms/internal/ads/zzaei;

    iget-boolean v9, v9, Lcom/google/android/gms/internal/ads/zzaei;->zzdgx:Z

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/bfi;->g:Lcom/google/android/gms/internal/ads/zzaei;

    iget-boolean v11, v11, Lcom/google/android/gms/internal/ads/zzaei;->zzboe:Z

    .line 3046
    invoke-virtual {v1, v8, v9, v11}, Lcom/google/android/gms/internal/ads/bfi;->a(Lorg/json/JSONArray;ZZ)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v11

    .line 3010
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/bfe;->b:Lcom/google/android/gms/internal/ads/bfi;

    const-string v8, "secondary_image"

    .line 3011
    invoke-virtual {v1, v6, v8}, Lcom/google/android/gms/internal/ads/bfi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v13

    .line 3012
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/bfe;->b:Lcom/google/android/gms/internal/ads/bfi;

    const-string v8, "app_icon"

    invoke-virtual {v1, v6, v8}, Lcom/google/android/gms/internal/ads/bfi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v12

    .line 3013
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/bfe;->b:Lcom/google/android/gms/internal/ads/bfi;

    const-string v8, "attribution"

    .line 3076
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const/4 v15, 0x1

    const/4 v14, 0x0

    const/4 v9, 0x0

    if-nez v8, :cond_0

    .line 3078
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/dbh;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v1

    goto :goto_0

    .line 3079
    :cond_0
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const-string v9, "image"

    .line 3080
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    if-nez v2, :cond_1

    if-eqz v9, :cond_1

    .line 3082
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 3083
    invoke-virtual {v2, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 3085
    :cond_1
    invoke-virtual {v1, v2, v14, v15}, Lcom/google/android/gms/internal/ads/bfi;->a(Lorg/json/JSONArray;ZZ)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v2

    .line 3086
    new-instance v9, Lcom/google/android/gms/internal/ads/bfj;

    invoke-direct {v9, v1, v8}, Lcom/google/android/gms/internal/ads/bfj;-><init>(Lcom/google/android/gms/internal/ads/bfi;Lorg/json/JSONObject;)V

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/bfi;->f:Ljava/util/concurrent/Executor;

    .line 4020
    invoke-static {v2, v9, v1}, Lcom/google/android/gms/internal/ads/daj;->a(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/cxu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v1

    const-string v2, "require"

    .line 3089
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 3090
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/bfi;->a(ZLcom/google/android/gms/internal/ads/dbt;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v1

    .line 3015
    :goto_0
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/bfe;->b:Lcom/google/android/gms/internal/ads/bfi;

    const-string v8, "html_containers"

    const-string v9, "instream"

    .line 4099
    filled-new-array {v8, v9}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/google/android/gms/ads/internal/util/zzbh;->zza(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    if-nez v8, :cond_4

    const-string/jumbo v8, "video"

    .line 4102
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    if-nez v8, :cond_2

    const/4 v9, 0x0

    .line 4104
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/dbh;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v2

    goto/16 :goto_1

    :cond_2
    const/4 v9, 0x0

    const-string/jumbo v15, "vast_xml"

    .line 4105
    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 4106
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_3

    const-string v2, "Required field \'vast_xml\' is missing"

    .line 4107
    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    .line 4108
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/dbh;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v2

    goto :goto_1

    .line 4109
    :cond_3
    iget-object v15, v2, Lcom/google/android/gms/internal/ads/bfi;->h:Lcom/google/android/gms/internal/ads/bfv;

    .line 5009
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/dbh;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v14

    new-instance v9, Lcom/google/android/gms/internal/ads/bga;

    invoke-direct {v9, v15}, Lcom/google/android/gms/internal/ads/bga;-><init>(Lcom/google/android/gms/internal/ads/bfv;)V

    iget-object v4, v15, Lcom/google/android/gms/internal/ads/bfv;->b:Ljava/util/concurrent/Executor;

    .line 5019
    invoke-static {v14, v9, v4}, Lcom/google/android/gms/internal/ads/daj;->a(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/daq;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v4

    .line 5011
    new-instance v9, Lcom/google/android/gms/internal/ads/bfy;

    invoke-direct {v9, v15, v8}, Lcom/google/android/gms/internal/ads/bfy;-><init>(Lcom/google/android/gms/internal/ads/bfv;Lorg/json/JSONObject;)V

    iget-object v8, v15, Lcom/google/android/gms/internal/ads/bfv;->b:Ljava/util/concurrent/Executor;

    .line 6019
    invoke-static {v4, v9, v8}, Lcom/google/android/gms/internal/ads/daj;->a(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/daq;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v4

    .line 4110
    sget-object v8, Lcom/google/android/gms/internal/ads/aq;->bU:Lcom/google/android/gms/internal/ads/af;

    .line 4112
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v8

    .line 4113
    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-long v8, v8

    sget-object v14, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/bfi;->i:Ljava/util/concurrent/ScheduledExecutorService;

    .line 4114
    invoke-static {v4, v8, v9, v14, v2}, Lcom/google/android/gms/internal/ads/dbh;->a(Lcom/google/android/gms/internal/ads/dbt;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v2

    .line 4115
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/bfi;->a(Lcom/google/android/gms/internal/ads/dbt;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v2

    goto :goto_1

    .line 4118
    :cond_4
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/bfi;->h:Lcom/google/android/gms/internal/ads/bfv;

    const-string v4, "base_url"

    .line 4119
    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v9, "html"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    .line 7014
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/dbh;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v14

    new-instance v9, Lcom/google/android/gms/internal/ads/bfx;

    invoke-direct {v9, v2, v4, v8}, Lcom/google/android/gms/internal/ads/bfx;-><init>(Lcom/google/android/gms/internal/ads/bfv;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/bfv;->b:Ljava/util/concurrent/Executor;

    .line 7019
    invoke-static {v14, v9, v2}, Lcom/google/android/gms/internal/ads/daj;->a(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/daq;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v2

    .line 4121
    new-instance v4, Lcom/google/android/gms/internal/ads/bfl;

    invoke-direct {v4, v2}, Lcom/google/android/gms/internal/ads/bfl;-><init>(Lcom/google/android/gms/internal/ads/dbt;)V

    .line 4122
    sget-object v8, Lcom/google/android/gms/internal/ads/zd;->f:Lcom/google/android/gms/internal/ads/dbs;

    .line 8019
    invoke-static {v2, v4, v8}, Lcom/google/android/gms/internal/ads/daj;->a(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/daq;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v2

    .line 3016
    :goto_1
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/bfe;->b:Lcom/google/android/gms/internal/ads/bfi;

    const-string v8, "enable_omid"

    .line 3018
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    const/4 v8, 0x0

    .line 3020
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/dbh;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v4

    goto :goto_2

    :cond_5
    const/4 v8, 0x0

    const-string v9, "omid_settings"

    .line 3021
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    if-nez v9, :cond_6

    .line 3023
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/dbh;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v4

    goto :goto_2

    :cond_6
    const-string v14, "omid_html"

    .line 3024
    invoke-virtual {v9, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3025
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 3026
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/dbh;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v4

    goto :goto_2

    .line 3028
    :cond_7
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/dbh;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v14

    new-instance v8, Lcom/google/android/gms/internal/ads/bfm;

    invoke-direct {v8, v4, v9}, Lcom/google/android/gms/internal/ads/bfm;-><init>(Lcom/google/android/gms/internal/ads/bfi;Ljava/lang/String;)V

    sget-object v4, Lcom/google/android/gms/internal/ads/zd;->e:Lcom/google/android/gms/internal/ads/dbs;

    .line 9019
    invoke-static {v14, v8, v4}, Lcom/google/android/gms/internal/ads/daj;->a(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/daq;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v4

    .line 3031
    :goto_2
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/bfe;->c:Lcom/google/android/gms/internal/ads/bfs;

    const-string v9, "custom_assets"

    .line 3032
    invoke-virtual {v8, v6, v9}, Lcom/google/android/gms/internal/ads/bfs;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v19

    const/16 v8, 0x8

    new-array v8, v8, [Lcom/google/android/gms/internal/ads/dbt;

    const/4 v9, 0x0

    aput-object v10, v8, v9

    const/4 v15, 0x1

    aput-object v11, v8, v15

    const/4 v14, 0x2

    aput-object v13, v8, v14

    const/4 v9, 0x3

    aput-object v12, v8, v9

    const/4 v9, 0x4

    aput-object v1, v8, v9

    const/4 v9, 0x5

    aput-object v2, v8, v9

    const/4 v9, 0x6

    aput-object v4, v8, v9

    const/4 v9, 0x7

    aput-object v19, v8, v9

    .line 9022
    new-instance v9, Lcom/google/android/gms/internal/ads/dbm;

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/cyz;->a([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/cyz;

    move-result-object v8

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct {v9, v14, v8, v15}, Lcom/google/android/gms/internal/ads/dbm;-><init>(ZLcom/google/android/gms/internal/ads/cyz;Lcom/google/android/gms/internal/ads/dbk;)V

    .line 3033
    new-instance v15, Lcom/google/android/gms/internal/ads/bfg;

    move-object v8, v15

    move-object v5, v9

    move-object v9, v0

    const/4 v6, 0x2

    const/16 v20, 0x0

    move-object v14, v1

    move-object v1, v15

    const/16 v21, 0x1

    move-object/from16 v15, p3

    move-object/from16 v16, v2

    move-object/from16 v17, v4

    move-object/from16 v18, v19

    invoke-direct/range {v8 .. v18}, Lcom/google/android/gms/internal/ads/bfg;-><init>(Lcom/google/android/gms/internal/ads/bfe;Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/dbt;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/dbt;)V

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bfe;->a:Lcom/google/android/gms/internal/ads/dbs;

    .line 3034
    invoke-virtual {v5, v1, v0}, Lcom/google/android/gms/internal/ads/dbm;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v2

    new-array v0, v6, [Lcom/google/android/gms/internal/ads/dbt;

    aput-object v3, v0, v20

    aput-object v2, v0, v21

    .line 15
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dbh;->a([Lcom/google/android/gms/internal/ads/dbt;)Lcom/google/android/gms/internal/ads/dbm;

    move-result-object v8

    new-instance v9, Lcom/google/android/gms/internal/ads/bvf;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/bvf;-><init>(Lcom/google/android/gms/internal/ads/bvc;Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;Lorg/json/JSONObject;)V

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/bvc;->b:Lcom/google/android/gms/internal/ads/dbs;

    .line 16
    invoke-virtual {v8, v9, v0}, Lcom/google/android/gms/internal/ads/dbm;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;)Z
    .locals 0

    .line 7
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/cov;->r:Lcom/google/android/gms/internal/ads/cpc;

    if-eqz p1, :cond_0

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/cov;->r:Lcom/google/android/gms/internal/ads/cpc;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/cpc;->c:Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/cpk;",
            "Lcom/google/android/gms/internal/ads/cov;",
            ")",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "Lcom/google/android/gms/internal/ads/bcf;",
            ">;>;>;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bvc;->c:Lcom/google/android/gms/internal/ads/cqd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cqd;->a()Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v0

    .line 9
    new-instance v1, Lcom/google/android/gms/internal/ads/bvb;

    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/ads/bvb;-><init>(Lcom/google/android/gms/internal/ads/bvc;Lcom/google/android/gms/internal/ads/cov;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bvc;->b:Lcom/google/android/gms/internal/ads/dbs;

    .line 1019
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/daj;->a(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/daq;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v0

    .line 11
    new-instance v1, Lcom/google/android/gms/internal/ads/bve;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/bve;-><init>(Lcom/google/android/gms/internal/ads/bvc;Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bvc;->b:Lcom/google/android/gms/internal/ads/dbs;

    .line 2019
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/daj;->a(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/daq;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    return-object p1
.end method
