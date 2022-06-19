.class final Lcom/google/android/gms/internal/ads/ctb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/csa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/csa;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ctb;->a:Lcom/google/android/gms/internal/ads/csa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ctb;->a:Lcom/google/android/gms/internal/ads/csa;

    .line 1186
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/csa;->i:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ctb;->a:Lcom/google/android/gms/internal/ads/csa;

    .line 1187
    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/csa;->j:Z

    if-nez v1, :cond_1b

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ctb;->a:Lcom/google/android/gms/internal/ads/csa;

    const/4 v2, 0x1

    .line 1188
    iput-boolean v2, v1, Lcom/google/android/gms/internal/ads/csa;->j:Z

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    .line 7
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ctb;->a:Lcom/google/android/gms/internal/ads/csa;

    .line 2055
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 2056
    sget v5, Lcom/google/android/gms/internal/ads/cwv;->a:I

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/csa;->a(I)Lcom/google/android/gms/internal/ads/cwn;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    .line 3007
    iget-object v6, v5, Lcom/google/android/gms/internal/ads/cwn;->a:Lcom/google/android/gms/internal/ads/dva;

    .line 4005
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/dva;->zzaci:Ljava/lang/String;

    .line 4007
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/cwn;->a:Lcom/google/android/gms/internal/ads/dva;

    .line 4010
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/dva;->zzacj:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v10, v5

    move-object v9, v6

    goto :goto_0

    :cond_0
    move-object v9, v6

    move-object v10, v9

    .line 2063
    :goto_0
    :try_start_2
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/csa;->a:Landroid/content/Context;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/csa;->f:Lcom/google/android/gms/internal/ads/duu;

    const-string v11, "1"

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/csa;->e:Lcom/google/android/gms/internal/ads/cuy;

    .line 5001
    new-instance v13, Lcom/google/android/gms/internal/ads/cvk;

    const/4 v7, 0x1

    move-object v5, v13

    invoke-direct/range {v5 .. v12}, Lcom/google/android/gms/internal/ads/cvk;-><init>(Landroid/content/Context;ILcom/google/android/gms/internal/ads/duu;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/cuy;)V

    .line 5002
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/cvk;->b()Lcom/google/android/gms/internal/ads/zzdwt;

    move-result-object v5

    .line 2065
    iget-object v6, v5, Lcom/google/android/gms/internal/ads/zzdwt;->zzhxp:[B

    if-eqz v6, :cond_19

    iget-object v6, v5, Lcom/google/android/gms/internal/ads/zzdwt;->zzhxp:[B

    array-length v6, v6
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzenn; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v6, :cond_1

    goto/16 :goto_b

    .line 2071
    :cond_1
    :try_start_3
    iget-object v6, v5, Lcom/google/android/gms/internal/ads/zzdwt;->zzhxp:[B

    .line 2072
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/dlw;->a([B)Lcom/google/android/gms/internal/ads/dlw;

    move-result-object v6

    .line 2073
    invoke-static {}, Lcom/google/android/gms/internal/ads/dmt;->a()Lcom/google/android/gms/internal/ads/dmt;

    move-result-object v7

    .line 2074
    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/duw;->a(Lcom/google/android/gms/internal/ads/dlw;Lcom/google/android/gms/internal/ads/dmt;)Lcom/google/android/gms/internal/ads/duw;

    move-result-object v6
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/google/android/gms/internal/ads/zzenn; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 2082
    :try_start_4
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/duw;->a()Lcom/google/android/gms/internal/ads/dva;

    move-result-object v7

    .line 5005
    iget-object v7, v7, Lcom/google/android/gms/internal/ads/dva;->zzaci:Ljava/lang/String;

    .line 2082
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    .line 2083
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/duw;->a()Lcom/google/android/gms/internal/ads/dva;

    move-result-object v7

    .line 5010
    iget-object v7, v7, Lcom/google/android/gms/internal/ads/dva;->zzacj:Ljava/lang/String;

    .line 2083
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    .line 6007
    iget-object v7, v6, Lcom/google/android/gms/internal/ads/duw;->zzacg:Lcom/google/android/gms/internal/ads/dlw;

    .line 2084
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/dlw;->d()[B

    move-result-object v7

    array-length v7, v7

    if-nez v7, :cond_2

    goto :goto_2

    .line 2086
    :cond_2
    sget v7, Lcom/google/android/gms/internal/ads/cwv;->a:I

    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/csa;->a(I)Lcom/google/android/gms/internal/ads/cwn;

    move-result-object v7

    if-nez v7, :cond_4

    :cond_3
    :goto_1
    const/4 v7, 0x1

    goto :goto_3

    .line 7007
    :cond_4
    iget-object v7, v7, Lcom/google/android/gms/internal/ads/cwn;->a:Lcom/google/android/gms/internal/ads/dva;

    if-nez v7, :cond_5

    goto :goto_1

    .line 2092
    :cond_5
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/duw;->a()Lcom/google/android/gms/internal/ads/dva;

    move-result-object v8

    .line 8005
    iget-object v8, v8, Lcom/google/android/gms/internal/ads/dva;->zzaci:Ljava/lang/String;

    .line 9005
    iget-object v9, v7, Lcom/google/android/gms/internal/ads/dva;->zzaci:Ljava/lang/String;

    .line 2092
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2093
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/duw;->a()Lcom/google/android/gms/internal/ads/dva;

    move-result-object v8

    .line 9010
    iget-object v8, v8, Lcom/google/android/gms/internal/ads/dva;->zzacj:Ljava/lang/String;

    .line 10010
    iget-object v7, v7, Lcom/google/android/gms/internal/ads/dva;->zzacj:Ljava/lang/String;

    .line 2093
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_1

    :cond_6
    :goto_2
    const/4 v7, 0x0

    :goto_3
    if-nez v7, :cond_7

    .line 2095
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/csa;->e:Lcom/google/android/gms/internal/ads/cuy;

    const/16 v5, 0x1392

    .line 2096
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v3

    .line 2097
    invoke-virtual {v2, v5, v6, v7}, Lcom/google/android/gms/internal/ads/cuy;->a(IJ)Lcom/google/android/gms/tasks/h;

    goto/16 :goto_c

    .line 2099
    :cond_7
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/csa;->g:Lcom/google/android/gms/internal/ads/cwu;

    iget v5, v5, Lcom/google/android/gms/internal/ads/zzdwt;->status:I

    .line 2100
    sget-object v8, Lcom/google/android/gms/internal/ads/aq;->bq:Lcom/google/android/gms/internal/ads/af;

    .line 2101
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v8

    .line 2102
    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_a

    const/4 v2, 0x3

    if-ne v5, v2, :cond_8

    .line 2104
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/csa;->c:Lcom/google/android/gms/internal/ads/cwt;

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/cwt;->a(Lcom/google/android/gms/internal/ads/duw;)Z

    move-result v2

    goto/16 :goto_a

    :cond_8
    const/4 v2, 0x4

    if-ne v5, v2, :cond_9

    .line 2106
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/csa;->c:Lcom/google/android/gms/internal/ads/cwt;

    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/internal/ads/cwt;->a(Lcom/google/android/gms/internal/ads/duw;Lcom/google/android/gms/internal/ads/cwu;)Z

    move-result v2

    goto/16 :goto_a

    :cond_9
    :goto_4
    const/4 v2, 0x0

    goto/16 :goto_a

    .line 2108
    :cond_a
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/csa;->b:Lcom/google/android/gms/internal/ads/cwq;

    .line 10022
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/duw;->a()Lcom/google/android/gms/internal/ads/dva;

    move-result-object v8

    .line 11005
    iget-object v8, v8, Lcom/google/android/gms/internal/ads/dva;->zzaci:Ljava/lang/String;

    .line 11006
    iget-object v9, v6, Lcom/google/android/gms/internal/ads/duw;->zzacf:Lcom/google/android/gms/internal/ads/dlw;

    .line 10023
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/dlw;->d()[B

    move-result-object v9

    .line 11007
    iget-object v10, v6, Lcom/google/android/gms/internal/ads/duw;->zzacg:Lcom/google/android/gms/internal/ads/dlw;

    .line 10024
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/dlw;->d()[B

    move-result-object v10

    .line 10025
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_d

    if-eqz v10, :cond_d

    array-length v11, v10

    if-nez v11, :cond_b

    goto :goto_5

    .line 10027
    :cond_b
    iget-object v11, v5, Lcom/google/android/gms/internal/ads/cwq;->a:Ljava/io/File;

    invoke-static {v11}, Lcom/google/android/gms/internal/ads/cwp;->a(Ljava/io/File;)Z

    .line 10028
    iget-object v11, v5, Lcom/google/android/gms/internal/ads/cwq;->a:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    .line 10029
    iget-object v11, v5, Lcom/google/android/gms/internal/ads/cwq;->a:Ljava/io/File;

    invoke-static {v8, v11}, Lcom/google/android/gms/internal/ads/cwp;->a(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v11

    .line 10030
    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    const-string v11, "pcam.jar"

    .line 10031
    iget-object v12, v5, Lcom/google/android/gms/internal/ads/cwq;->a:Ljava/io/File;

    invoke-static {v8, v11, v12}, Lcom/google/android/gms/internal/ads/cwp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v11

    if-eqz v9, :cond_c

    .line 10032
    array-length v12, v9

    if-lez v12, :cond_c

    .line 10033
    invoke-static {v11, v9}, Lcom/google/android/gms/internal/ads/cwp;->a(Ljava/io/File;[B)Z

    move-result v9

    if-nez v9, :cond_c

    goto :goto_5

    :cond_c
    const-string v9, "pcbc"

    .line 10035
    iget-object v11, v5, Lcom/google/android/gms/internal/ads/cwq;->a:Ljava/io/File;

    .line 10036
    invoke-static {v8, v9, v11}, Lcom/google/android/gms/internal/ads/cwp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v8

    .line 10037
    invoke-static {v8, v10}, Lcom/google/android/gms/internal/ads/cwp;->a(Ljava/io/File;[B)Z

    move-result v8

    goto :goto_6

    :cond_d
    :goto_5
    const/4 v8, 0x0

    :goto_6
    if-nez v8, :cond_e

    goto :goto_4

    .line 10041
    :cond_e
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/duw;->a()Lcom/google/android/gms/internal/ads/dva;

    move-result-object v8

    .line 12005
    iget-object v8, v8, Lcom/google/android/gms/internal/ads/dva;->zzaci:Ljava/lang/String;

    const-string v9, "pcam.jar"

    .line 10041
    iget-object v10, v5, Lcom/google/android/gms/internal/ads/cwq;->a:Ljava/io/File;

    invoke-static {v8, v9, v10}, Lcom/google/android/gms/internal/ads/cwp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v8

    .line 10042
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_f

    if-eqz v7, :cond_f

    invoke-interface {v7, v8}, Lcom/google/android/gms/internal/ads/cwu;->a(Ljava/io/File;)Z

    move-result v7

    if-nez v7, :cond_f

    goto :goto_4

    .line 10045
    :cond_f
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/duw;->a()Lcom/google/android/gms/internal/ads/dva;

    move-result-object v7

    .line 13005
    iget-object v7, v7, Lcom/google/android/gms/internal/ads/dva;->zzaci:Ljava/lang/String;

    .line 10046
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_11

    const-string v8, "pcam.jar"

    .line 10047
    iget-object v9, v5, Lcom/google/android/gms/internal/ads/cwq;->a:Ljava/io/File;

    invoke-static {v7, v8, v9}, Lcom/google/android/gms/internal/ads/cwp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v8

    const-string v9, "pcbc"

    .line 10048
    iget-object v10, v5, Lcom/google/android/gms/internal/ads/cwq;->a:Ljava/io/File;

    invoke-static {v7, v9, v10}, Lcom/google/android/gms/internal/ads/cwp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v9

    const-string v10, "pcam.jar"

    .line 10049
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/cwq;->a()Ljava/io/File;

    move-result-object v11

    invoke-static {v7, v10, v11}, Lcom/google/android/gms/internal/ads/cwp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v10

    const-string v11, "pcbc"

    .line 10050
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/cwq;->a()Ljava/io/File;

    move-result-object v12

    invoke-static {v7, v11, v12}, Lcom/google/android/gms/internal/ads/cwp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v7

    .line 10051
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_10

    invoke-virtual {v8, v10}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 10052
    :cond_10
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-virtual {v9, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_11

    const/4 v7, 0x1

    goto :goto_7

    :cond_11
    const/4 v7, 0x0

    :goto_7
    if-eqz v7, :cond_13

    .line 10054
    invoke-static {}, Lcom/google/android/gms/internal/ads/dva;->a()Lcom/google/android/gms/internal/ads/dva$a;

    move-result-object v7

    .line 10055
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/duw;->a()Lcom/google/android/gms/internal/ads/dva;

    move-result-object v8

    .line 14005
    iget-object v8, v8, Lcom/google/android/gms/internal/ads/dva;->zzaci:Ljava/lang/String;

    .line 10055
    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/dva$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/dva$a;

    move-result-object v7

    .line 10056
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/duw;->a()Lcom/google/android/gms/internal/ads/dva;

    move-result-object v8

    .line 14010
    iget-object v8, v8, Lcom/google/android/gms/internal/ads/dva;->zzacj:Ljava/lang/String;

    .line 10056
    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/dva$a;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/dva$a;

    move-result-object v7

    .line 10057
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/duw;->a()Lcom/google/android/gms/internal/ads/dva;

    move-result-object v8

    .line 14019
    iget-wide v8, v8, Lcom/google/android/gms/internal/ads/dva;->zzacl:J

    .line 10057
    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/internal/ads/dva$a;->b(J)Lcom/google/android/gms/internal/ads/dva$a;

    move-result-object v7

    .line 10058
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/duw;->a()Lcom/google/android/gms/internal/ads/dva;

    move-result-object v8

    .line 14023
    iget-wide v8, v8, Lcom/google/android/gms/internal/ads/dva;->zzacm:J

    .line 10058
    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/internal/ads/dva$a;->c(J)Lcom/google/android/gms/internal/ads/dva$a;

    move-result-object v7

    .line 10059
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/duw;->a()Lcom/google/android/gms/internal/ads/dva;

    move-result-object v6

    .line 15015
    iget-wide v8, v6, Lcom/google/android/gms/internal/ads/dva;->zzack:J

    .line 10059
    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/internal/ads/dva$a;->a(J)Lcom/google/android/gms/internal/ads/dva$a;

    move-result-object v6

    .line 15067
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/dnh$b;->d()Lcom/google/android/gms/internal/ads/dnh;

    move-result-object v6

    .line 10060
    check-cast v6, Lcom/google/android/gms/internal/ads/dnh;

    check-cast v6, Lcom/google/android/gms/internal/ads/dva;

    .line 10062
    sget v7, Lcom/google/android/gms/internal/ads/cwv;->a:I

    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/cwq;->b(I)Lcom/google/android/gms/internal/ads/dva;

    move-result-object v7

    .line 10063
    iget-object v8, v5, Lcom/google/android/gms/internal/ads/cwq;->b:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    if-eqz v7, :cond_12

    .line 16005
    iget-object v9, v6, Lcom/google/android/gms/internal/ads/dva;->zzaci:Ljava/lang/String;

    .line 17005
    iget-object v10, v7, Lcom/google/android/gms/internal/ads/dva;->zzaci:Ljava/lang/String;

    .line 10065
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_12

    .line 10066
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/cwq;->b()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/cwq;->a(Lcom/google/android/gms/internal/ads/dva;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v8, v9, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 10067
    :cond_12
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/cwq;->c()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/cwq;->a(Lcom/google/android/gms/internal/ads/dva;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v8, v7, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 10068
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v6

    if-eqz v6, :cond_13

    goto :goto_8

    :cond_13
    const/4 v2, 0x0

    .line 10071
    :goto_8
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 10072
    sget v7, Lcom/google/android/gms/internal/ads/cwv;->a:I

    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/cwq;->b(I)Lcom/google/android/gms/internal/ads/dva;

    move-result-object v7

    if-eqz v7, :cond_14

    .line 18005
    iget-object v7, v7, Lcom/google/android/gms/internal/ads/dva;->zzaci:Ljava/lang/String;

    .line 10074
    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 10075
    :cond_14
    sget v7, Lcom/google/android/gms/internal/ads/cwv;->b:I

    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/cwq;->b(I)Lcom/google/android/gms/internal/ads/dva;

    move-result-object v7

    if-eqz v7, :cond_15

    .line 19005
    iget-object v7, v7, Lcom/google/android/gms/internal/ads/dva;->zzaci:Ljava/lang/String;

    .line 10077
    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 10078
    :cond_15
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/cwq;->a()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    .line 10079
    array-length v8, v7

    const/4 v9, 0x0

    :goto_9
    if-ge v9, v8, :cond_17

    aget-object v10, v7, v9

    .line 10080
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    .line 10081
    invoke-interface {v6, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_16

    .line 10084
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/cwq;->a()Ljava/io/File;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/google/android/gms/internal/ads/cwp;->a(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v10

    .line 10085
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/cwp;->a(Ljava/io/File;)Z

    :cond_16
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    :cond_17
    :goto_a
    if-nez v2, :cond_18

    .line 2110
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/csa;->e:Lcom/google/android/gms/internal/ads/cuy;

    const/16 v5, 0xfa9

    .line 2111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v3

    .line 2112
    invoke-virtual {v2, v5, v6, v7}, Lcom/google/android/gms/internal/ads/cuy;->a(IJ)Lcom/google/android/gms/tasks/h;

    goto :goto_c

    .line 2114
    :cond_18
    sget v2, Lcom/google/android/gms/internal/ads/cwv;->a:I

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/csa;->a(I)Lcom/google/android/gms/internal/ads/cwn;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 2116
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/csa;->d:Lcom/google/android/gms/internal/ads/cwx;

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/cwx;->a(Lcom/google/android/gms/internal/ads/cwn;)V

    .line 2117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    iput-wide v5, v1, Lcom/google/android/gms/internal/ads/csa;->h:J

    goto :goto_c

    .line 2077
    :catch_0
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/csa;->e:Lcom/google/android/gms/internal/ads/cuy;

    const/16 v5, 0x7ee

    .line 2078
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v3

    .line 2079
    invoke-virtual {v2, v5, v6, v7}, Lcom/google/android/gms/internal/ads/cuy;->a(IJ)Lcom/google/android/gms/tasks/h;

    goto :goto_c

    .line 2066
    :cond_19
    :goto_b
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/csa;->e:Lcom/google/android/gms/internal/ads/cuy;

    const/16 v5, 0x1391

    .line 2067
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v3

    .line 2068
    invoke-virtual {v2, v5, v6, v7}, Lcom/google/android/gms/internal/ads/cuy;->a(IJ)Lcom/google/android/gms/tasks/h;
    :try_end_4
    .catch Lcom/google/android/gms/internal/ads/zzenn; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_c

    :catch_1
    move-exception v2

    .line 2120
    :try_start_5
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/csa;->e:Lcom/google/android/gms/internal/ads/cuy;

    const/16 v5, 0xfa2

    .line 2121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v3

    .line 2122
    invoke-virtual {v1, v5, v6, v7, v2}, Lcom/google/android/gms/internal/ads/cuy;->a(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/h;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_c

    :catch_2
    move-exception v1

    .line 10
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ctb;->a:Lcom/google/android/gms/internal/ads/csa;

    .line 19190
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/csa;->e:Lcom/google/android/gms/internal/ads/cuy;

    const/16 v3, 0x7e7

    const-wide/16 v4, -0x1

    .line 10
    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/google/android/gms/internal/ads/cuy;->a(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/h;

    .line 11
    :cond_1a
    :goto_c
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ctb;->a:Lcom/google/android/gms/internal/ads/csa;

    .line 20186
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/csa;->i:Ljava/lang/Object;

    .line 11
    monitor-enter v1

    .line 12
    :try_start_6
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ctb;->a:Lcom/google/android/gms/internal/ads/csa;

    .line 20188
    iput-boolean v0, v2, Lcom/google/android/gms/internal/ads/csa;->j:Z

    .line 13
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    .line 5
    :cond_1b
    :try_start_7
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    .line 6
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v1
.end method
