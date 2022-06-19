.class public final Lcom/google/android/gms/internal/ads/vv1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/pm;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/internal/ads/cv1;

.field private final d:Lcom/google/android/gms/internal/ads/zzcgz;

.field private final e:Ljava/lang/String;

.field private final f:Lcom/google/android/gms/internal/ads/jo2;

.field private final g:Lcom/google/android/gms/ads/internal/util/q1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcgz;Lcom/google/android/gms/internal/ads/pm;Lcom/google/android/gms/internal/ads/cv1;Ljava/lang/String;Lcom/google/android/gms/internal/ads/jo2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vv1;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/vv1;->d:Lcom/google/android/gms/internal/ads/zzcgz;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/vv1;->a:Lcom/google/android/gms/internal/ads/pm;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/vv1;->c:Lcom/google/android/gms/internal/ads/cv1;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/vv1;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/vv1;->f:Lcom/google/android/gms/internal/ads/jo2;

    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->h()Lcom/google/android/gms/internal/ads/ph0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ph0;->p()Lcom/google/android/gms/ads/internal/util/q1;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vv1;->g:Lcom/google/android/gms/ads/internal/util/q1;

    return-void
.end method

.method private static final c(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/internal/ads/xo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-wide v4, v1

    :goto_0
    if-ge v3, v0, :cond_1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/xo;

    .line 2
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/xo;->Y()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/xo;->E()J

    move-result-wide v7

    cmp-long v9, v7, v4

    if-lez v9, :cond_0

    .line 3
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/xo;->E()J

    move-result-wide v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    cmp-long p1, v4, v1

    if-eqz p1, :cond_2

    new-instance p1, Landroid/content/ContentValues;

    .line 4
    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 5
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "value"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v0, 0x0

    const-string v1, "offline_signal_statistics"

    const-string v2, "statistic_name = \'last_successful_request_time\'"

    .line 6
    invoke-virtual {p0, v1, p1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vv1;->c:Lcom/google/android/gms/internal/ads/cv1;

    new-instance v1, Lcom/google/android/gms/internal/ads/rv1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/rv1;-><init>(Lcom/google/android/gms/internal/ads/vv1;Z)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cv1;->a(Lcom/google/android/gms/internal/ads/cn2;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Error in offline signals database startup: "

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->c(Ljava/lang/String;)V

    return-void
.end method

.method final synthetic b(ZLandroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    if-eqz p1, :cond_0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/vv1;->b:Landroid/content/Context;

    const-string v3, "OfflineUpload.db"

    invoke-virtual {v1, v3}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    :goto_0
    const/4 v1, 0x0

    goto/16 :goto_6

    .line 2
    :cond_0
    sget-object v3, Lcom/google/android/gms/internal/ads/kw;->i6:Lcom/google/android/gms/internal/ads/cw;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v3

    .line 4
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_5

    const-string v3, "oa_upload"

    .line 5
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/io2;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/io2;

    move-result-object v3

    .line 6
    invoke-static {v1, v6}, Lcom/google/android/gms/internal/ads/qv1;->b(Landroid/database/sqlite/SQLiteDatabase;I)I

    move-result v7

    .line 7
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "oa_failed_reqs"

    .line 8
    invoke-virtual {v3, v8, v7}, Lcom/google/android/gms/internal/ads/io2;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/io2;

    .line 9
    invoke-static {v1, v5}, Lcom/google/android/gms/internal/ads/qv1;->b(Landroid/database/sqlite/SQLiteDatabase;I)I

    move-result v5

    .line 10
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v7, "oa_total_reqs"

    .line 11
    invoke-virtual {v3, v7, v5}, Lcom/google/android/gms/internal/ads/io2;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/io2;

    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->k()Lcom/google/android/gms/common/util/e;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const-string v7, "oa_upload_time"

    .line 13
    invoke-virtual {v3, v7, v5}, Lcom/google/android/gms/internal/ads/io2;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/io2;

    .line 14
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/ads/qv1;->c(Landroid/database/sqlite/SQLiteDatabase;I)J

    move-result-wide v7

    .line 15
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const-string v7, "oa_last_successful_time"

    .line 16
    invoke-virtual {v3, v7, v5}, Lcom/google/android/gms/internal/ads/io2;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/io2;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/vv1;->g:Lcom/google/android/gms/ads/internal/util/q1;

    .line 17
    invoke-interface {v5}, Lcom/google/android/gms/ads/internal/util/q1;->t()Z

    move-result v5

    const-string v7, ""

    if-eqz v5, :cond_1

    move-object v5, v7

    goto :goto_1

    .line 18
    :cond_1
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/vv1;->e:Ljava/lang/String;

    :goto_1
    const-string v8, "oa_session_id"

    .line 19
    invoke-virtual {v3, v8, v5}, Lcom/google/android/gms/internal/ads/io2;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/io2;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/vv1;->f:Lcom/google/android/gms/internal/ads/jo2;

    .line 20
    invoke-interface {v5, v3}, Lcom/google/android/gms/internal/ads/jo2;->b(Lcom/google/android/gms/internal/ads/io2;)V

    .line 21
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/qv1;->a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v3

    .line 22
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/vv1;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)V

    .line 23
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v5, :cond_7

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 24
    check-cast v10, Lcom/google/android/gms/internal/ads/xo;

    const-string v11, "oa_signals"

    .line 25
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/io2;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/io2;

    move-result-object v11

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/vv1;->g:Lcom/google/android/gms/ads/internal/util/q1;

    .line 26
    invoke-interface {v12}, Lcom/google/android/gms/ads/internal/util/q1;->t()Z

    move-result v12

    if-eqz v12, :cond_2

    move-object v12, v7

    goto :goto_3

    .line 27
    :cond_2
    iget-object v12, v0, Lcom/google/android/gms/internal/ads/vv1;->e:Ljava/lang/String;

    .line 28
    :goto_3
    invoke-virtual {v11, v8, v12}, Lcom/google/android/gms/internal/ads/io2;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/io2;

    .line 29
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/xo;->I()Lcom/google/android/gms/internal/ads/so;

    move-result-object v12

    .line 30
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/so;->C()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/so;->H()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_4

    :cond_3
    const-string v13, "-1"

    .line 31
    :goto_4
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/xo;->H()Ljava/util/List;

    move-result-object v14

    sget-object v15, Lcom/google/android/gms/internal/ads/uv1;->a:Lcom/google/android/gms/internal/ads/nu2;

    invoke-static {v14, v15}, Lcom/google/android/gms/internal/ads/mx2;->b(Ljava/util/List;Lcom/google/android/gms/internal/ads/nu2;)Ljava/util/List;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .line 32
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/xo;->E()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    const-string v2, "oa_sig_ts"

    invoke-virtual {v11, v2, v15}, Lcom/google/android/gms/internal/ads/io2;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/io2;

    .line 33
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/xo;->Y()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v15, "oa_sig_status"

    invoke-virtual {v11, v15, v2}, Lcom/google/android/gms/internal/ads/io2;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/io2;

    .line 34
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/xo;->F()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v15, "oa_sig_resp_lat"

    invoke-virtual {v11, v15, v2}, Lcom/google/android/gms/internal/ads/io2;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/io2;

    .line 35
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/xo;->G()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v15, "oa_sig_render_lat"

    invoke-virtual {v11, v15, v2}, Lcom/google/android/gms/internal/ads/io2;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/io2;

    const-string v2, "oa_sig_formats"

    .line 36
    invoke-virtual {v11, v2, v14}, Lcom/google/android/gms/internal/ads/io2;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/io2;

    const-string v2, "oa_sig_nw_type"

    .line 37
    invoke-virtual {v11, v2, v13}, Lcom/google/android/gms/internal/ads/io2;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/io2;

    .line 38
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/xo;->Z()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v13, "oa_sig_wifi"

    invoke-virtual {v11, v13, v2}, Lcom/google/android/gms/internal/ads/io2;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/io2;

    .line 39
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/xo;->a0()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v13, "oa_sig_airplane"

    .line 40
    invoke-virtual {v11, v13, v2}, Lcom/google/android/gms/internal/ads/io2;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/io2;

    .line 41
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/xo;->b0()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v13, "oa_sig_data"

    invoke-virtual {v11, v13, v2}, Lcom/google/android/gms/internal/ads/io2;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/io2;

    .line 42
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/xo;->J()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v13, "oa_sig_nw_resp"

    .line 43
    invoke-virtual {v11, v13, v2}, Lcom/google/android/gms/internal/ads/io2;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/io2;

    .line 44
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/xo;->c0()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v13, "oa_sig_offline"

    invoke-virtual {v11, v13, v2}, Lcom/google/android/gms/internal/ads/io2;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/io2;

    .line 45
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/xo;->L()Lcom/google/android/gms/internal/ads/zzbbm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbbm;->zza()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v10, "oa_sig_nw_state"

    .line 46
    invoke-virtual {v11, v10, v2}, Lcom/google/android/gms/internal/ads/io2;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/io2;

    .line 47
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/so;->D()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 48
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/so;->C()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 49
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/so;->H()I

    move-result v2

    if-ne v2, v4, :cond_4

    .line 50
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/so;->I()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v10, "oa_sig_cell_type"

    .line 51
    invoke-virtual {v11, v10, v2}, Lcom/google/android/gms/internal/ads/io2;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/io2;

    :cond_4
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/vv1;->f:Lcom/google/android/gms/internal/ads/jo2;

    .line 52
    invoke-interface {v2, v11}, Lcom/google/android/gms/internal/ads/jo2;->b(Lcom/google/android/gms/internal/ads/io2;)V

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 53
    :cond_5
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/qv1;->a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v2

    .line 54
    invoke-static {}, Lcom/google/android/gms/internal/ads/bp;->C()Lcom/google/android/gms/internal/ads/yo;

    move-result-object v3

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/vv1;->b:Landroid/content/Context;

    .line 55
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/ads/yo;->v(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/yo;

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 56
    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/ads/yo;->w(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/yo;

    .line 57
    invoke-static {v1, v6}, Lcom/google/android/gms/internal/ads/qv1;->b(Landroid/database/sqlite/SQLiteDatabase;I)I

    move-result v7

    .line 58
    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/ads/yo;->r(I)Lcom/google/android/gms/internal/ads/yo;

    .line 59
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/yo;->q(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/yo;

    .line 60
    invoke-static {v1, v5}, Lcom/google/android/gms/internal/ads/qv1;->b(Landroid/database/sqlite/SQLiteDatabase;I)I

    move-result v7

    .line 61
    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/ads/yo;->s(I)Lcom/google/android/gms/internal/ads/yo;

    .line 62
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->k()Lcom/google/android/gms/common/util/e;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Lcom/google/android/gms/internal/ads/yo;->t(J)Lcom/google/android/gms/internal/ads/yo;

    .line 63
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/ads/qv1;->c(Landroid/database/sqlite/SQLiteDatabase;I)J

    move-result-wide v7

    .line 64
    invoke-virtual {v3, v7, v8}, Lcom/google/android/gms/internal/ads/yo;->x(J)Lcom/google/android/gms/internal/ads/yo;

    .line 65
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/ee3;->n()Lcom/google/android/gms/internal/ads/ie3;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/bp;

    .line 66
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/vv1;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/vv1;->a:Lcom/google/android/gms/internal/ads/pm;

    new-instance v7, Lcom/google/android/gms/internal/ads/sv1;

    .line 67
    invoke-direct {v7, v3}, Lcom/google/android/gms/internal/ads/sv1;-><init>(Lcom/google/android/gms/internal/ads/bp;)V

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/pm;->b(Lcom/google/android/gms/internal/ads/om;)V

    .line 68
    invoke-static {}, Lcom/google/android/gms/internal/ads/np;->C()Lcom/google/android/gms/internal/ads/mp;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/vv1;->d:Lcom/google/android/gms/internal/ads/zzcgz;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzcgz;->e:I

    .line 69
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/mp;->q(I)Lcom/google/android/gms/internal/ads/mp;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/vv1;->d:Lcom/google/android/gms/internal/ads/zzcgz;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzcgz;->f:I

    .line 70
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/mp;->r(I)Lcom/google/android/gms/internal/ads/mp;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/vv1;->d:Lcom/google/android/gms/internal/ads/zzcgz;

    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/zzcgz;->g:Z

    if-eq v5, v3, :cond_6

    goto :goto_5

    :cond_6
    const/4 v4, 0x0

    .line 71
    :goto_5
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/mp;->s(I)Lcom/google/android/gms/internal/ads/mp;

    .line 72
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/ee3;->n()Lcom/google/android/gms/internal/ads/ie3;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/np;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/vv1;->a:Lcom/google/android/gms/internal/ads/pm;

    new-instance v4, Lcom/google/android/gms/internal/ads/tv1;

    .line 73
    invoke-direct {v4, v2}, Lcom/google/android/gms/internal/ads/tv1;-><init>(Lcom/google/android/gms/internal/ads/np;)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/pm;->b(Lcom/google/android/gms/internal/ads/om;)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/vv1;->a:Lcom/google/android/gms/internal/ads/pm;

    const/16 v3, 0x2714

    .line 74
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/pm;->c(I)V

    :cond_7
    const-string v2, "offline_signal_contents"

    const/4 v3, 0x0

    .line 75
    invoke-virtual {v1, v2, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance v2, Landroid/content/ContentValues;

    .line 76
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 77
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "value"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "failed_requests"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "offline_signal_statistics"

    const-string v7, "statistic_name = ?"

    .line 78
    invoke-virtual {v1, v6, v2, v7, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance v2, Landroid/content/ContentValues;

    .line 79
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 80
    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "total_requests"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 81
    invoke-virtual {v1, v6, v2, v7, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    :goto_6
    return-object v1
.end method
