.class public final Lcom/google/android/gms/internal/ads/zzcql;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# instance fields
.field private context:Landroid/content/Context;

.field private final zzdic:Lcom/google/android/gms/internal/ads/zzdrz;

.field private zzdtx:Lcom/google/android/gms/internal/ads/zzazn;

.field private final zzeaw:Lcom/google/android/gms/ads/internal/util/zzf;

.field private zzgrg:Lcom/google/android/gms/internal/ads/zzcpv;

.field private zzgro:Lcom/google/android/gms/internal/ads/zztu;

.field private final zzgrp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzazn;Lcom/google/android/gms/internal/ads/zztu;Lcom/google/android/gms/internal/ads/zzcpv;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdrz;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcql;->context:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcql;->zzdtx:Lcom/google/android/gms/internal/ads/zzazn;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcql;->zzgro:Lcom/google/android/gms/internal/ads/zztu;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcql;->zzgrg:Lcom/google/android/gms/internal/ads/zzcpv;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcql;->zzgrp:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzcql;->zzdic:Lcom/google/android/gms/internal/ads/zzdrz;

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/internal/ads/zzayo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzayo;->zzxs()Lcom/google/android/gms/ads/internal/util/zzf;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcql;->zzeaw:Lcom/google/android/gms/ads/internal/util/zzf;

    return-void
.end method

.method private static zza(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/internal/ads/zzug$zzo$zza;",
            ">;)V"
        }
    .end annotation

    .line 16
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-wide v4, v1

    :cond_0
    :goto_0
    if-ge v3, v0, :cond_1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v3, v3, 0x1

    check-cast v6, Lcom/google/android/gms/internal/ads/zzug$zzo$zza;

    .line 17
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzug$zzo$zza;->zzov()Lcom/google/android/gms/internal/ads/zzuq;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/internal/ads/zzuq;->zzcca:Lcom/google/android/gms/internal/ads/zzuq;

    if-ne v7, v8, :cond_0

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzug$zzo$zza;->getTimestamp()J

    move-result-wide v7

    cmp-long v9, v7, v4

    if-lez v9, :cond_0

    .line 18
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzug$zzo$zza;->getTimestamp()J

    move-result-wide v4

    goto :goto_0

    :cond_1
    cmp-long p1, v4, v1

    if-eqz p1, :cond_2

    .line 22
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 23
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "value"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v0, 0x0

    const-string v1, "offline_signal_statistics"

    const-string v2, "statistic_name = \'last_successful_request_time\'"

    .line 24
    invoke-virtual {p0, v1, p1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_2
    return-void
.end method


# virtual methods
.method final synthetic zza(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 27
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabp;->zzdal:Lcom/google/android/gms/internal/ads/zzaba;

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v0

    .line 29
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 107
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v0, :cond_4

    const-string v0, "oa_upload"

    .line 32
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdsa;->zzgx(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsa;

    move-result-object v0

    .line 33
    invoke-static {p1, v3}, Lcom/google/android/gms/internal/ads/zzcqm;->zza(Landroid/database/sqlite/SQLiteDatabase;I)I

    move-result v5

    .line 34
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "oa_failed_reqs"

    .line 35
    invoke-virtual {v0, v6, v5}, Lcom/google/android/gms/internal/ads/zzdsa;->zzu(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsa;

    move-result-object v0

    .line 36
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ads/zzcqm;->zza(Landroid/database/sqlite/SQLiteDatabase;I)I

    move-result v2

    .line 37
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "oa_total_reqs"

    .line 38
    invoke-virtual {v0, v5, v2}, Lcom/google/android/gms/internal/ads/zzdsa;->zzu(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsa;

    move-result-object v0

    .line 39
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzky()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v5, "oa_upload_time"

    .line 40
    invoke-virtual {v0, v5, v2}, Lcom/google/android/gms/internal/ads/zzdsa;->zzu(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsa;

    move-result-object v0

    .line 41
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzcqm;->zzb(Landroid/database/sqlite/SQLiteDatabase;I)J

    move-result-wide v1

    .line 42
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "oa_last_successful_time"

    .line 43
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzdsa;->zzu(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsa;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcql;->zzeaw:Lcom/google/android/gms/ads/internal/util/zzf;

    invoke-interface {v1}, Lcom/google/android/gms/ads/internal/util/zzf;->zzyu()Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcql;->zzgrp:Ljava/lang/String;

    :goto_0
    const-string v5, "oa_session_id"

    invoke-virtual {v0, v5, v1}, Lcom/google/android/gms/internal/ads/zzdsa;->zzu(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsa;

    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcql;->zzdic:Lcom/google/android/gms/internal/ads/zzdrz;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzdrz;->zzb(Lcom/google/android/gms/internal/ads/zzdsa;)V

    .line 46
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcqm;->zzb(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v0

    .line 47
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzcql;->zza(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)V

    .line 48
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_1
    if-ge v3, v1, :cond_6

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v3, v3, 0x1

    check-cast v6, Lcom/google/android/gms/internal/ads/zzug$zzo$zza;

    const-string v7, "oa_signals"

    .line 50
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzdsa;->zzgx(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsa;

    move-result-object v7

    .line 51
    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzcql;->zzeaw:Lcom/google/android/gms/ads/internal/util/zzf;

    invoke-interface {v8}, Lcom/google/android/gms/ads/internal/util/zzf;->zzyu()Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v8, v2

    goto :goto_2

    :cond_1
    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzcql;->zzgrp:Ljava/lang/String;

    :goto_2
    invoke-virtual {v7, v5, v8}, Lcom/google/android/gms/internal/ads/zzdsa;->zzu(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsa;

    move-result-object v7

    .line 53
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzug$zzo$zza;->zzoz()Lcom/google/android/gms/internal/ads/zzug$zzm;

    move-result-object v8

    .line 54
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzug$zzm;->zzol()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzug$zzm;->zzom()Lcom/google/android/gms/internal/ads/zzug$zzm$zzc;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzug$zzm$zzc;->zzv()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    :cond_2
    const-string v9, "-1"

    .line 55
    :goto_3
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzug$zzo$zza;->zzoy()Ljava/util/List;

    move-result-object v10

    sget-object v11, Lcom/google/android/gms/internal/ads/zzcqp;->zzeaj:Lcom/google/android/gms/internal/ads/zzdvz;

    invoke-static {v10, v11}, Lcom/google/android/gms/internal/ads/zzdxl;->zza(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzdvz;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 57
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzug$zzo$zza;->getTimestamp()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    const-string v12, "oa_sig_ts"

    invoke-virtual {v7, v12, v11}, Lcom/google/android/gms/internal/ads/zzdsa;->zzu(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsa;

    move-result-object v11

    .line 58
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzug$zzo$zza;->zzov()Lcom/google/android/gms/internal/ads/zzuq;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzuq;->zzv()I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "oa_sig_status"

    invoke-virtual {v11, v13, v12}, Lcom/google/android/gms/internal/ads/zzdsa;->zzu(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsa;

    move-result-object v11

    .line 59
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzug$zzo$zza;->zzow()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    const-string v13, "oa_sig_resp_lat"

    invoke-virtual {v11, v13, v12}, Lcom/google/android/gms/internal/ads/zzdsa;->zzu(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsa;

    move-result-object v11

    .line 60
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzug$zzo$zza;->zzox()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    const-string v13, "oa_sig_render_lat"

    invoke-virtual {v11, v13, v12}, Lcom/google/android/gms/internal/ads/zzdsa;->zzu(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsa;

    move-result-object v11

    const-string v12, "oa_sig_formats"

    .line 61
    invoke-virtual {v11, v12, v10}, Lcom/google/android/gms/internal/ads/zzdsa;->zzu(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsa;

    move-result-object v10

    const-string v11, "oa_sig_nw_type"

    .line 62
    invoke-virtual {v10, v11, v9}, Lcom/google/android/gms/internal/ads/zzdsa;->zzu(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsa;

    move-result-object v9

    .line 63
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzug$zzo$zza;->zzpa()Lcom/google/android/gms/internal/ads/zzuq;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzuq;->zzv()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "oa_sig_wifi"

    invoke-virtual {v9, v11, v10}, Lcom/google/android/gms/internal/ads/zzdsa;->zzu(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsa;

    move-result-object v9

    .line 64
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzug$zzo$zza;->zzpb()Lcom/google/android/gms/internal/ads/zzuq;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzuq;->zzv()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "oa_sig_airplane"

    .line 65
    invoke-virtual {v9, v11, v10}, Lcom/google/android/gms/internal/ads/zzdsa;->zzu(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsa;

    move-result-object v9

    .line 66
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzug$zzo$zza;->zzpc()Lcom/google/android/gms/internal/ads/zzuq;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzuq;->zzv()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "oa_sig_data"

    invoke-virtual {v9, v11, v10}, Lcom/google/android/gms/internal/ads/zzdsa;->zzu(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsa;

    move-result-object v9

    .line 67
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzug$zzo$zza;->zzpd()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "oa_sig_nw_resp"

    .line 68
    invoke-virtual {v9, v11, v10}, Lcom/google/android/gms/internal/ads/zzdsa;->zzu(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsa;

    move-result-object v9

    .line 69
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzug$zzo$zza;->zzpe()Lcom/google/android/gms/internal/ads/zzuq;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzuq;->zzv()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "oa_sig_offline"

    invoke-virtual {v9, v11, v10}, Lcom/google/android/gms/internal/ads/zzdsa;->zzu(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsa;

    move-result-object v9

    .line 70
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzug$zzo$zza;->zzpf()Lcom/google/android/gms/internal/ads/zzug$zzo$zzc;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzug$zzo$zzc;->zzv()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v10, "oa_sig_nw_state"

    .line 71
    invoke-virtual {v9, v10, v6}, Lcom/google/android/gms/internal/ads/zzdsa;->zzu(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsa;

    .line 72
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzug$zzm;->zzon()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 73
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzug$zzm;->zzol()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 74
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzug$zzm;->zzom()Lcom/google/android/gms/internal/ads/zzug$zzm$zzc;

    move-result-object v6

    sget-object v9, Lcom/google/android/gms/internal/ads/zzug$zzm$zzc;->zzcdj:Lcom/google/android/gms/internal/ads/zzug$zzm$zzc;

    invoke-virtual {v6, v9}, Lcom/google/android/gms/internal/ads/zzug$zzm$zzc;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 76
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzug$zzm;->zzoo()Lcom/google/android/gms/internal/ads/zzug$zzm$zza;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzug$zzm$zza;->zzv()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v8, "oa_sig_cell_type"

    .line 77
    invoke-virtual {v7, v8, v6}, Lcom/google/android/gms/internal/ads/zzdsa;->zzu(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsa;

    .line 78
    :cond_3
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzcql;->zzdic:Lcom/google/android/gms/internal/ads/zzdrz;

    invoke-interface {v6, v7}, Lcom/google/android/gms/internal/ads/zzdrz;->zzb(Lcom/google/android/gms/internal/ads/zzdsa;)V

    goto/16 :goto_1

    .line 82
    :cond_4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcqm;->zzb(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v0

    .line 83
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzug$zzo;->zzot()Lcom/google/android/gms/internal/ads/zzug$zzo$zzb;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzcql;->context:Landroid/content/Context;

    .line 84
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzug$zzo$zzb;->zzca(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzug$zzo$zzb;

    move-result-object v5

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 85
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzug$zzo$zzb;->zzcb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzug$zzo$zzb;

    move-result-object v5

    .line 86
    invoke-static {p1, v3}, Lcom/google/android/gms/internal/ads/zzcqm;->zza(Landroid/database/sqlite/SQLiteDatabase;I)I

    move-result v6

    .line 87
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzug$zzo$zzb;->zzcj(I)Lcom/google/android/gms/internal/ads/zzug$zzo$zzb;

    move-result-object v5

    .line 88
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/zzug$zzo$zzb;->zze(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzug$zzo$zzb;

    move-result-object v5

    .line 89
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ads/zzcqm;->zza(Landroid/database/sqlite/SQLiteDatabase;I)I

    move-result v2

    .line 90
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzug$zzo$zzb;->zzck(I)Lcom/google/android/gms/internal/ads/zzug$zzo$zzb;

    move-result-object v2

    .line 91
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzky()Lcom/google/android/gms/common/util/Clock;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzug$zzo$zzb;->zzes(J)Lcom/google/android/gms/internal/ads/zzug$zzo$zzb;

    move-result-object v2

    .line 92
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzcqm;->zzb(Landroid/database/sqlite/SQLiteDatabase;I)J

    move-result-wide v5

    .line 93
    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzug$zzo$zzb;->zzet(J)Lcom/google/android/gms/internal/ads/zzug$zzo$zzb;

    move-result-object v2

    .line 94
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zzbiw()Lcom/google/android/gms/internal/ads/zzemo;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzelb;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzug$zzo;

    .line 95
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzcql;->zza(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)V

    .line 96
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcql;->zzgro:Lcom/google/android/gms/internal/ads/zztu;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzcqn;

    invoke-direct {v5, v2}, Lcom/google/android/gms/internal/ads/zzcqn;-><init>(Lcom/google/android/gms/internal/ads/zzug$zzo;)V

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zztu;->zza(Lcom/google/android/gms/internal/ads/zztx;)V

    .line 97
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzug$zzu;->zzpn()Lcom/google/android/gms/internal/ads/zzug$zzu$zza;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcql;->zzdtx:Lcom/google/android/gms/internal/ads/zzazn;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzazn;->zzehy:I

    .line 98
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzug$zzu$zza;->zzcq(I)Lcom/google/android/gms/internal/ads/zzug$zzu$zza;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcql;->zzdtx:Lcom/google/android/gms/internal/ads/zzazn;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzazn;->zzehz:I

    .line 99
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzug$zzu$zza;->zzcr(I)Lcom/google/android/gms/internal/ads/zzug$zzu$zza;

    move-result-object v0

    .line 100
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcql;->zzdtx:Lcom/google/android/gms/internal/ads/zzazn;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzazn;->zzeia:Z

    if-eqz v2, :cond_5

    const/4 v1, 0x0

    :cond_5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzug$zzu$zza;->zzcs(I)Lcom/google/android/gms/internal/ads/zzug$zzu$zza;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zzbiw()Lcom/google/android/gms/internal/ads/zzemo;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzelb;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzug$zzu;

    .line 102
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcql;->zzgro:Lcom/google/android/gms/internal/ads/zztu;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcqq;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzcqq;-><init>(Lcom/google/android/gms/internal/ads/zzug$zzu;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zztu;->zza(Lcom/google/android/gms/internal/ads/zztx;)V

    .line 103
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcql;->zzgro:Lcom/google/android/gms/internal/ads/zztu;

    sget-object v1, Lcom/google/android/gms/internal/ads/zztw$zza$zza;->zzbyd:Lcom/google/android/gms/internal/ads/zztw$zza$zza;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zztu;->zza(Lcom/google/android/gms/internal/ads/zztw$zza$zza;)V

    :cond_6
    const-string v0, "offline_signal_contents"

    const/4 v1, 0x0

    .line 105
    invoke-virtual {p1, v0, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 106
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "value"

    .line 107
    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "failed_requests"

    .line 108
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const-string v5, "offline_signal_statistics"

    const-string v6, "statistic_name = ?"

    invoke-virtual {p1, v5, v0, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 109
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 110
    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "total_requests"

    .line 111
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v5, v0, v6, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-object v1
.end method

.method public final zzarx()V
    .locals 3

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcql;->zzgrg:Lcom/google/android/gms/internal/ads/zzcpv;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcqo;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcqo;-><init>(Lcom/google/android/gms/internal/ads/zzcql;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcpv;->zza(Lcom/google/android/gms/internal/ads/zzdqu;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Error in offline signals database startup: "

    .line 13
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzev(Ljava/lang/String;)V

    return-void
.end method
