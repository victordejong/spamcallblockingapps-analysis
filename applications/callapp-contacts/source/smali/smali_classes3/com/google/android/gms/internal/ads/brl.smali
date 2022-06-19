.class final synthetic Lcom/google/android/gms/internal/ads/brl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/css;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/brm;

.field private final b:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/brm;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/brl;->a:Lcom/google/android/gms/internal/ads/brm;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/brl;->b:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/brl;->a:Lcom/google/android/gms/internal/ads/brm;

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/brl;->b:Z

    move-object/from16 v3, p1

    check-cast v3, Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_0

    .line 1027
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/brm;->b:Landroid/content/Context;

    const-string v2, "OfflineUpload.db"

    invoke-virtual {v1, v2}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    :goto_0
    const/4 v1, 0x0

    goto/16 :goto_7

    .line 1029
    :cond_0
    sget-object v2, Lcom/google/android/gms/internal/ads/aq;->fe:Lcom/google/android/gms/internal/ads/af;

    .line 1030
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v2

    .line 1031
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_d

    const-string v2, "oa_upload"

    .line 1034
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/ctz;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ctz;

    move-result-object v2

    .line 1035
    invoke-static {v3, v7}, Lcom/google/android/gms/internal/ads/bri;->a(Landroid/database/sqlite/SQLiteDatabase;I)I

    move-result v8

    .line 1036
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "oa_failed_reqs"

    .line 1037
    invoke-virtual {v2, v9, v8}, Lcom/google/android/gms/internal/ads/ctz;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ctz;

    move-result-object v2

    .line 1038
    invoke-static {v3, v6}, Lcom/google/android/gms/internal/ads/bri;->a(Landroid/database/sqlite/SQLiteDatabase;I)I

    move-result v8

    .line 1039
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "oa_total_reqs"

    .line 1040
    invoke-virtual {v2, v9, v8}, Lcom/google/android/gms/internal/ads/ctz;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ctz;

    move-result-object v2

    .line 1041
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lcom/google/android/gms/common/util/f;

    move-result-object v8

    invoke-interface {v8}, Lcom/google/android/gms/common/util/f;->a()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    const-string v9, "oa_upload_time"

    .line 1042
    invoke-virtual {v2, v9, v8}, Lcom/google/android/gms/internal/ads/ctz;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ctz;

    move-result-object v2

    .line 1043
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/bri;->b(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v8

    .line 1044
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    const-string v9, "oa_last_successful_time"

    .line 1045
    invoke-virtual {v2, v9, v8}, Lcom/google/android/gms/internal/ads/ctz;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ctz;

    move-result-object v2

    .line 1046
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/brm;->g:Lcom/google/android/gms/ads/internal/util/zzf;

    invoke-interface {v8}, Lcom/google/android/gms/ads/internal/util/zzf;->zzzn()Z

    move-result v8

    const-string v9, ""

    if-eqz v8, :cond_1

    move-object v8, v9

    goto :goto_1

    :cond_1
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/brm;->e:Ljava/lang/String;

    :goto_1
    const-string v10, "oa_session_id"

    invoke-virtual {v2, v10, v8}, Lcom/google/android/gms/internal/ads/ctz;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ctz;

    move-result-object v2

    .line 1047
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/brm;->f:Lcom/google/android/gms/internal/ads/cty;

    invoke-interface {v8, v2}, Lcom/google/android/gms/internal/ads/cty;->a(Lcom/google/android/gms/internal/ads/ctz;)V

    .line 1048
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/bri;->a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1049
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/brm;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)V

    .line 1050
    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v8, :cond_f

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v11, v11, 0x1

    check-cast v12, Lcom/google/android/gms/internal/ads/eht$t$a;

    const-string v13, "oa_signals"

    .line 1052
    invoke-static {v13}, Lcom/google/android/gms/internal/ads/ctz;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ctz;

    move-result-object v13

    .line 1053
    iget-object v14, v1, Lcom/google/android/gms/internal/ads/brm;->g:Lcom/google/android/gms/ads/internal/util/zzf;

    invoke-interface {v14}, Lcom/google/android/gms/ads/internal/util/zzf;->zzzn()Z

    move-result v14

    if-eqz v14, :cond_2

    move-object v14, v9

    goto :goto_3

    :cond_2
    iget-object v14, v1, Lcom/google/android/gms/internal/ads/brm;->e:Ljava/lang/String;

    :goto_3
    invoke-virtual {v13, v10, v14}, Lcom/google/android/gms/internal/ads/ctz;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ctz;

    move-result-object v13

    .line 2031
    iget-object v14, v12, Lcom/google/android/gms/internal/ads/eht$t$a;->zzceh:Lcom/google/android/gms/internal/ads/eht$r;

    if-nez v14, :cond_3

    invoke-static {}, Lcom/google/android/gms/internal/ads/eht$r;->d()Lcom/google/android/gms/internal/ads/eht$r;

    move-result-object v14

    goto :goto_4

    :cond_3
    iget-object v14, v12, Lcom/google/android/gms/internal/ads/eht$t$a;->zzceh:Lcom/google/android/gms/internal/ads/eht$r;

    .line 1056
    :goto_4
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/eht$r;->a()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/eht$r;->b()Lcom/google/android/gms/internal/ads/eht$r$c;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/eht$r$c;->zzv()I

    move-result v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    goto :goto_5

    :cond_4
    const-string v15, "-1"

    .line 3021
    :goto_5
    new-instance v4, Lcom/google/android/gms/internal/ads/dnq;

    iget-object v6, v12, Lcom/google/android/gms/internal/ads/eht$t$a;->zzcef:Lcom/google/android/gms/internal/ads/dnn;

    sget-object v7, Lcom/google/android/gms/internal/ads/eht$t$a;->zzceg:Lcom/google/android/gms/internal/ads/dnp;

    invoke-direct {v4, v6, v7}, Lcom/google/android/gms/internal/ads/dnq;-><init>(Ljava/util/List;Lcom/google/android/gms/internal/ads/dnp;)V

    .line 1057
    sget-object v6, Lcom/google/android/gms/internal/ads/brq;->a:Lcom/google/android/gms/internal/ads/cxu;

    .line 4005
    new-instance v7, Lcom/google/android/gms/internal/ads/czh;

    invoke-direct {v7, v4, v6}, Lcom/google/android/gms/internal/ads/czh;-><init>(Ljava/util/List;Lcom/google/android/gms/internal/ads/cxu;)V

    .line 1057
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5004
    iget-wide v6, v12, Lcom/google/android/gms/internal/ads/eht$t$a;->zzceb:J

    .line 1059
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const-string v7, "oa_sig_ts"

    invoke-virtual {v13, v7, v6}, Lcom/google/android/gms/internal/ads/ctz;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ctz;

    move-result-object v6

    .line 1060
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/eht$t$a;->a()Lcom/google/android/gms/internal/ads/eid;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/eid;->zzv()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const-string v5, "oa_sig_status"

    invoke-virtual {v6, v5, v7}, Lcom/google/android/gms/internal/ads/ctz;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ctz;

    move-result-object v5

    .line 5013
    iget-wide v6, v12, Lcom/google/android/gms/internal/ads/eht$t$a;->zzced:J

    .line 1061
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const-string v7, "oa_sig_resp_lat"

    invoke-virtual {v5, v7, v6}, Lcom/google/android/gms/internal/ads/ctz;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ctz;

    move-result-object v5

    .line 5017
    iget-wide v6, v12, Lcom/google/android/gms/internal/ads/eht$t$a;->zzcee:J

    .line 1062
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const-string v7, "oa_sig_render_lat"

    invoke-virtual {v5, v7, v6}, Lcom/google/android/gms/internal/ads/ctz;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ctz;

    move-result-object v5

    const-string v6, "oa_sig_formats"

    .line 1063
    invoke-virtual {v5, v6, v4}, Lcom/google/android/gms/internal/ads/ctz;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ctz;

    move-result-object v4

    const-string v5, "oa_sig_nw_type"

    .line 1064
    invoke-virtual {v4, v5, v15}, Lcom/google/android/gms/internal/ads/ctz;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ctz;

    move-result-object v4

    .line 5036
    iget v5, v12, Lcom/google/android/gms/internal/ads/eht$t$a;->zzcei:I

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/eid;->zzcg(I)Lcom/google/android/gms/internal/ads/eid;

    move-result-object v5

    if-nez v5, :cond_5

    .line 5037
    sget-object v5, Lcom/google/android/gms/internal/ads/eid;->zzccl:Lcom/google/android/gms/internal/ads/eid;

    .line 1065
    :cond_5
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/eid;->zzv()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "oa_sig_wifi"

    invoke-virtual {v4, v6, v5}, Lcom/google/android/gms/internal/ads/ctz;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ctz;

    move-result-object v4

    .line 5041
    iget v5, v12, Lcom/google/android/gms/internal/ads/eht$t$a;->zzcej:I

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/eid;->zzcg(I)Lcom/google/android/gms/internal/ads/eid;

    move-result-object v5

    if-nez v5, :cond_6

    .line 5042
    sget-object v5, Lcom/google/android/gms/internal/ads/eid;->zzccl:Lcom/google/android/gms/internal/ads/eid;

    .line 1066
    :cond_6
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/eid;->zzv()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "oa_sig_airplane"

    .line 1067
    invoke-virtual {v4, v6, v5}, Lcom/google/android/gms/internal/ads/ctz;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ctz;

    move-result-object v4

    .line 5046
    iget v5, v12, Lcom/google/android/gms/internal/ads/eht$t$a;->zzcek:I

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/eid;->zzcg(I)Lcom/google/android/gms/internal/ads/eid;

    move-result-object v5

    if-nez v5, :cond_7

    .line 5047
    sget-object v5, Lcom/google/android/gms/internal/ads/eid;->zzccl:Lcom/google/android/gms/internal/ads/eid;

    .line 1068
    :cond_7
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/eid;->zzv()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "oa_sig_data"

    invoke-virtual {v4, v6, v5}, Lcom/google/android/gms/internal/ads/ctz;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ctz;

    move-result-object v4

    .line 5051
    iget v5, v12, Lcom/google/android/gms/internal/ads/eht$t$a;->zzcel:I

    .line 1069
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "oa_sig_nw_resp"

    .line 1070
    invoke-virtual {v4, v6, v5}, Lcom/google/android/gms/internal/ads/ctz;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ctz;

    move-result-object v4

    .line 5055
    iget v5, v12, Lcom/google/android/gms/internal/ads/eht$t$a;->zzcem:I

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/eid;->zzcg(I)Lcom/google/android/gms/internal/ads/eid;

    move-result-object v5

    if-nez v5, :cond_8

    .line 5056
    sget-object v5, Lcom/google/android/gms/internal/ads/eid;->zzccl:Lcom/google/android/gms/internal/ads/eid;

    .line 1071
    :cond_8
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/eid;->zzv()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "oa_sig_offline"

    invoke-virtual {v4, v6, v5}, Lcom/google/android/gms/internal/ads/ctz;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ctz;

    move-result-object v4

    .line 5060
    iget v5, v12, Lcom/google/android/gms/internal/ads/eht$t$a;->zzcen:I

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/eht$t$b;->zzcn(I)Lcom/google/android/gms/internal/ads/eht$t$b;

    move-result-object v5

    if-nez v5, :cond_9

    .line 5061
    sget-object v5, Lcom/google/android/gms/internal/ads/eht$t$b;->zzcev:Lcom/google/android/gms/internal/ads/eht$t$b;

    .line 1072
    :cond_9
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/eht$t$b;->zzv()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "oa_sig_nw_state"

    .line 1073
    invoke-virtual {v4, v6, v5}, Lcom/google/android/gms/internal/ads/ctz;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ctz;

    .line 6009
    iget v4, v14, Lcom/google/android/gms/internal/ads/eht$r;->zzdv:I

    const/4 v5, 0x2

    and-int/2addr v4, v5

    if-eqz v4, :cond_a

    const/4 v4, 0x1

    goto :goto_6

    :cond_a
    const/4 v4, 0x0

    :goto_6
    if-eqz v4, :cond_c

    .line 1075
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/eht$r;->a()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1076
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/eht$r;->b()Lcom/google/android/gms/internal/ads/eht$r$c;

    move-result-object v4

    sget-object v6, Lcom/google/android/gms/internal/ads/eht$r$c;->zzcdv:Lcom/google/android/gms/internal/ads/eht$r$c;

    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/ads/eht$r$c;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 6010
    iget v4, v14, Lcom/google/android/gms/internal/ads/eht$r;->zzcdn:I

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/eht$r$b;->zzch(I)Lcom/google/android/gms/internal/ads/eht$r$b;

    move-result-object v4

    if-nez v4, :cond_b

    .line 6011
    sget-object v4, Lcom/google/android/gms/internal/ads/eht$r$b;->zzcdp:Lcom/google/android/gms/internal/ads/eht$r$b;

    .line 1078
    :cond_b
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/eht$r$b;->zzv()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "oa_sig_cell_type"

    .line 1079
    invoke-virtual {v13, v6, v4}, Lcom/google/android/gms/internal/ads/ctz;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ctz;

    .line 1080
    :cond_c
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/brm;->f:Lcom/google/android/gms/internal/ads/cty;

    invoke-interface {v4, v13}, Lcom/google/android/gms/internal/ads/cty;->a(Lcom/google/android/gms/internal/ads/ctz;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    goto/16 :goto_2

    :cond_d
    const/4 v5, 0x2

    .line 1084
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/bri;->a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1085
    invoke-static {}, Lcom/google/android/gms/internal/ads/eht$t;->a()Lcom/google/android/gms/internal/ads/eht$t$c;

    move-result-object v4

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/brm;->b:Landroid/content/Context;

    .line 1086
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/ads/eht$t$c;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/eht$t$c;

    move-result-object v4

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 1087
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/ads/eht$t$c;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/eht$t$c;

    move-result-object v4

    const/4 v6, 0x0

    .line 1088
    invoke-static {v3, v6}, Lcom/google/android/gms/internal/ads/bri;->a(Landroid/database/sqlite/SQLiteDatabase;I)I

    move-result v7

    .line 1089
    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/ads/eht$t$c;->a(I)Lcom/google/android/gms/internal/ads/eht$t$c;

    move-result-object v4

    .line 1090
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/eht$t$c;->a(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/eht$t$c;

    move-result-object v4

    const/4 v6, 0x1

    .line 1091
    invoke-static {v3, v6}, Lcom/google/android/gms/internal/ads/bri;->a(Landroid/database/sqlite/SQLiteDatabase;I)I

    move-result v6

    .line 1092
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/ads/eht$t$c;->b(I)Lcom/google/android/gms/internal/ads/eht$t$c;

    move-result-object v4

    .line 1093
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lcom/google/android/gms/common/util/f;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/common/util/f;->a()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/internal/ads/eht$t$c;->a(J)Lcom/google/android/gms/internal/ads/eht$t$c;

    move-result-object v4

    .line 1094
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/bri;->b(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v6

    .line 1095
    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/internal/ads/eht$t$c;->b(J)Lcom/google/android/gms/internal/ads/eht$t$c;

    move-result-object v4

    .line 6067
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/dnh$b;->d()Lcom/google/android/gms/internal/ads/dnh;

    move-result-object v4

    .line 1096
    check-cast v4, Lcom/google/android/gms/internal/ads/dnh;

    check-cast v4, Lcom/google/android/gms/internal/ads/eht$t;

    .line 1097
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/brm;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)V

    .line 1098
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/brm;->a:Lcom/google/android/gms/internal/ads/ehk;

    new-instance v6, Lcom/google/android/gms/internal/ads/bro;

    invoke-direct {v6, v4}, Lcom/google/android/gms/internal/ads/bro;-><init>(Lcom/google/android/gms/internal/ads/eht$t;)V

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/ehk;->a(Lcom/google/android/gms/internal/ads/ehj;)V

    .line 1099
    invoke-static {}, Lcom/google/android/gms/internal/ads/eht$z;->a()Lcom/google/android/gms/internal/ads/eht$z$a;

    move-result-object v2

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/brm;->d:Lcom/google/android/gms/internal/ads/zzbar;

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzbar;->zzeka:I

    .line 1100
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/eht$z$a;->a(I)Lcom/google/android/gms/internal/ads/eht$z$a;

    move-result-object v2

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/brm;->d:Lcom/google/android/gms/internal/ads/zzbar;

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzbar;->zzekb:I

    .line 1101
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/eht$z$a;->b(I)Lcom/google/android/gms/internal/ads/eht$z$a;

    move-result-object v2

    .line 1102
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/brm;->d:Lcom/google/android/gms/internal/ads/zzbar;

    iget-boolean v4, v4, Lcom/google/android/gms/internal/ads/zzbar;->zzekc:Z

    if-eqz v4, :cond_e

    const/4 v5, 0x0

    :cond_e
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/eht$z$a;->c(I)Lcom/google/android/gms/internal/ads/eht$z$a;

    move-result-object v2

    .line 7067
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/dnh$b;->d()Lcom/google/android/gms/internal/ads/dnh;

    move-result-object v2

    .line 1103
    check-cast v2, Lcom/google/android/gms/internal/ads/dnh;

    check-cast v2, Lcom/google/android/gms/internal/ads/eht$z;

    .line 1104
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/brm;->a:Lcom/google/android/gms/internal/ads/ehk;

    new-instance v5, Lcom/google/android/gms/internal/ads/brn;

    invoke-direct {v5, v2}, Lcom/google/android/gms/internal/ads/brn;-><init>(Lcom/google/android/gms/internal/ads/eht$z;)V

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/ehk;->a(Lcom/google/android/gms/internal/ads/ehj;)V

    .line 1105
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/brm;->a:Lcom/google/android/gms/internal/ads/ehk;

    sget-object v2, Lcom/google/android/gms/internal/ads/ehn$a$b;->zzbyp:Lcom/google/android/gms/internal/ads/ehn$a$b;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/ehk;->a(Lcom/google/android/gms/internal/ads/ehn$a$b;)V

    :cond_f
    const-string v1, "offline_signal_contents"

    const/4 v2, 0x0

    .line 1107
    invoke-virtual {v3, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1108
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v2, 0x0

    .line 1109
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "value"

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "failed_requests"

    .line 1110
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "offline_signal_statistics"

    const-string v7, "statistic_name = ?"

    invoke-virtual {v3, v6, v1, v7, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1111
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1112
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "total_requests"

    .line 1113
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v6, v1, v7, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    :goto_7
    return-object v1
.end method
