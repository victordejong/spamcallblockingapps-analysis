.class final Lcom/google/android/gms/internal/ads/zzqu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zztz;
.implements Lcom/google/android/gms/internal/ads/zzpp;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzqz;

.field private final zzb:J

.field private final zzc:Landroid/net/Uri;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzul;

.field private final zze:Lcom/google/android/gms/internal/ads/zzqq;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzws;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzeb;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzxm;

.field private volatile zzi:Z

.field private zzj:Z

.field private zzk:J

.field private zzl:Lcom/google/android/gms/internal/ads/zzdm;

.field private zzm:J

.field private zzn:Lcom/google/android/gms/internal/ads/zzxt;

.field private zzo:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzqz;Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzdi;Lcom/google/android/gms/internal/ads/zzqq;Lcom/google/android/gms/internal/ads/zzws;Lcom/google/android/gms/internal/ads/zzeb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqu;->zza:Lcom/google/android/gms/internal/ads/zzqz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzqu;->zzc:Landroid/net/Uri;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzul;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzul;-><init>(Lcom/google/android/gms/internal/ads/zzdi;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqu;->zzd:Lcom/google/android/gms/internal/ads/zzul;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzqu;->zze:Lcom/google/android/gms/internal/ads/zzqq;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzqu;->zzf:Lcom/google/android/gms/internal/ads/zzws;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzqu;->zzg:Lcom/google/android/gms/internal/ads/zzeb;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzxm;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzxm;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqu;->zzh:Lcom/google/android/gms/internal/ads/zzxm;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzqu;->zzj:Z

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzqu;->zzm:J

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzpr;->zza()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzqu;->zzb:J

    const-wide/16 p1, 0x0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzqu;->zzj(J)Lcom/google/android/gms/internal/ads/zzdm;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqu;->zzl:Lcom/google/android/gms/internal/ads/zzdm;

    return-void
.end method

.method public static bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzqu;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqu;->zzm:J

    return-wide v0
.end method

.method public static bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzqu;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqu;->zzb:J

    return-wide v0
.end method

.method public static bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzqu;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqu;->zzk:J

    return-wide v0
.end method

.method public static bridge synthetic zze(Lcom/google/android/gms/internal/ads/zzqu;)Lcom/google/android/gms/internal/ads/zzdm;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzqu;->zzl:Lcom/google/android/gms/internal/ads/zzdm;

    return-object p0
.end method

.method public static bridge synthetic zzf(Lcom/google/android/gms/internal/ads/zzqu;)Lcom/google/android/gms/internal/ads/zzul;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzqu;->zzd:Lcom/google/android/gms/internal/ads/zzul;

    return-object p0
.end method

.method public static bridge synthetic zzg(Lcom/google/android/gms/internal/ads/zzqu;JJ)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqu;->zzh:Lcom/google/android/gms/internal/ads/zzxm;

    iput-wide p1, v0, Lcom/google/android/gms/internal/ads/zzxm;->zza:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzqu;->zzk:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzqu;->zzj:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzqu;->zzo:Z

    return-void
.end method

.method private final zzj(J)Lcom/google/android/gms/internal/ads/zzdm;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdk;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqu;->zzc:Landroid/net/Uri;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdk;->zzd(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzdk;

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdk;->zzc(J)Lcom/google/android/gms/internal/ads/zzdk;

    const/4 p1, 0x6

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdk;->zza(I)Lcom/google/android/gms/internal/ads/zzdk;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzqz;->zzy()Ljava/util/Map;

    move-result-object p1

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdk;->zzb(Ljava/util/Map;)Lcom/google/android/gms/internal/ads/zzdk;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdk;->zze()Lcom/google/android/gms/internal/ads/zzdm;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfd;)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqu;->zzo:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqu;->zzk:J

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqu;->zza:Lcom/google/android/gms/internal/ads/zzqz;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzqz;->zzp(Lcom/google/android/gms/internal/ads/zzqz;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqu;->zzk:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_0
    move-wide v3, v0

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfd;->zza()I

    move-result v6

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzqu;->zzn:Lcom/google/android/gms/internal/ads/zzxt;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {v2, p1, v6}, Lcom/google/android/gms/internal/ads/zzxr;->zzb(Lcom/google/android/gms/internal/ads/zzxt;Lcom/google/android/gms/internal/ads/zzfd;I)V

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 6
    invoke-interface/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzxt;->zzs(JIIILcom/google/android/gms/internal/ads/zzxs;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzqu;->zzo:Z

    return-void
.end method

.method public final zzh()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqu;->zzi:Z

    return-void
.end method

.method public final zzi()V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "Invalid metadata interval: "

    .line 1
    :cond_0
    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzqu;->zzi:Z

    if-nez v2, :cond_18

    const-wide/16 v2, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzqu;->zzh:Lcom/google/android/gms/internal/ads/zzxm;

    iget-wide v13, v6, Lcom/google/android/gms/internal/ads/zzxm;->zza:J

    invoke-direct {v1, v13, v14}, Lcom/google/android/gms/internal/ads/zzqu;->zzj(J)Lcom/google/android/gms/internal/ads/zzdm;

    move-result-object v6

    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zzqu;->zzl:Lcom/google/android/gms/internal/ads/zzdm;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzqu;->zzd:Lcom/google/android/gms/internal/ads/zzul;

    .line 2
    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzul;->zzh(Lcom/google/android/gms/internal/ads/zzdm;)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/google/android/gms/internal/ads/zzqu;->zzm:J

    cmp-long v8, v6, v2

    if-eqz v8, :cond_1

    add-long/2addr v6, v13

    iput-wide v6, v1, Lcom/google/android/gms/internal/ads/zzqu;->zzm:J

    :cond_1
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzqu;->zza:Lcom/google/android/gms/internal/ads/zzqz;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzqu;->zzd:Lcom/google/android/gms/internal/ads/zzul;

    .line 3
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzul;->zza()Ljava/util/Map;

    move-result-object v7

    const-string v8, "icy-br"

    .line 4
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v9, "IcyHeaders"

    const/4 v10, -0x1

    if-eqz v8, :cond_5

    .line 5
    :try_start_1
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6
    :try_start_2
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    mul-int/lit16 v11, v11, 0x3e8

    if-lez v11, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    :try_start_3
    const-string v12, "Invalid bitrate: "

    .line 7
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v16

    if-eqz v16, :cond_3

    invoke-virtual {v12, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    .line 8
    :cond_3
    new-instance v15, Ljava/lang/String;

    .line 9
    invoke-direct {v15, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v12, v15

    .line 10
    :goto_0
    invoke-static {v9, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v8, 0x0

    const/4 v11, -0x1

    :goto_1
    move/from16 v16, v11

    goto :goto_3

    :catch_0
    const/4 v11, -0x1

    :catch_1
    :try_start_4
    const-string v12, "Invalid bitrate header: "

    .line 11
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v15

    if-eqz v15, :cond_4

    invoke-virtual {v12, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 12
    :cond_4
    new-instance v8, Ljava/lang/String;

    .line 13
    invoke-direct {v8, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 14
    :goto_2
    invoke-static {v9, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v16, v11

    const/4 v8, 0x0

    goto :goto_3

    :cond_5
    const/4 v8, 0x0

    const/16 v16, -0x1

    :goto_3
    const-string v11, "icy-genre"

    .line 15
    invoke-interface {v7, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    const/4 v12, 0x0

    if-eqz v11, :cond_6

    .line 16
    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object/from16 v17, v8

    const/4 v8, 0x1

    goto :goto_4

    :cond_6
    move-object/from16 v17, v12

    :goto_4
    const-string v11, "icy-name"

    .line 17
    invoke-interface {v7, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    if-eqz v11, :cond_7

    .line 18
    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object/from16 v18, v8

    const/4 v8, 0x1

    goto :goto_5

    :cond_7
    move-object/from16 v18, v12

    :goto_5
    const-string v11, "icy-url"

    .line 19
    invoke-interface {v7, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    if-eqz v11, :cond_8

    .line 20
    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object/from16 v19, v8

    const/4 v8, 0x1

    goto :goto_6

    :cond_8
    move-object/from16 v19, v12

    :goto_6
    const-string v11, "icy-pub"

    .line 21
    invoke-interface {v7, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    if-eqz v11, :cond_9

    .line 22
    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v11, "1"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    move/from16 v20, v8

    const/4 v8, 0x1

    goto :goto_7

    :cond_9
    const/16 v20, 0x0

    :goto_7
    const-string v11, "icy-metaint"

    .line 23
    invoke-interface {v7, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-eqz v7, :cond_d

    .line 24
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 25
    :try_start_5
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-lez v11, :cond_a

    const/4 v8, 0x1

    goto :goto_9

    .line 26
    :cond_a
    :try_start_6
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v21

    if-eqz v21, :cond_b

    invoke-virtual {v0, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    goto :goto_8

    .line 27
    :cond_b
    new-instance v15, Ljava/lang/String;

    .line 28
    invoke-direct {v15, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 29
    :goto_8
    invoke-static {v9, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/4 v11, -0x1

    :goto_9
    move/from16 v21, v11

    goto :goto_b

    :catch_2
    const/4 v11, -0x1

    .line 30
    :catch_3
    :try_start_7
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v15

    if-eqz v15, :cond_c

    invoke-virtual {v0, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_a

    .line 31
    :cond_c
    new-instance v7, Ljava/lang/String;

    .line 32
    invoke-direct {v7, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 33
    :goto_a
    invoke-static {v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_d
    const/16 v21, -0x1

    :goto_b
    if-eqz v8, :cond_e

    .line 34
    new-instance v12, Lcom/google/android/gms/internal/ads/zzzd;

    move-object v15, v12

    .line 35
    invoke-direct/range {v15 .. v21}, Lcom/google/android/gms/internal/ads/zzzd;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 36
    :cond_e
    invoke-static {v6, v12}, Lcom/google/android/gms/internal/ads/zzqz;->zzA(Lcom/google/android/gms/internal/ads/zzqz;Lcom/google/android/gms/internal/ads/zzzd;)V

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzqu;->zzd:Lcom/google/android/gms/internal/ads/zzul;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzqu;->zza:Lcom/google/android/gms/internal/ads/zzqz;

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzqz;->zzw(Lcom/google/android/gms/internal/ads/zzqz;)Lcom/google/android/gms/internal/ads/zzzd;

    move-result-object v7

    if-eqz v7, :cond_f

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzqu;->zza:Lcom/google/android/gms/internal/ads/zzqz;

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzqz;->zzw(Lcom/google/android/gms/internal/ads/zzqz;)Lcom/google/android/gms/internal/ads/zzzd;

    move-result-object v7

    .line 37
    iget v7, v7, Lcom/google/android/gms/internal/ads/zzzd;->zzf:I

    if-eq v7, v10, :cond_f

    new-instance v6, Lcom/google/android/gms/internal/ads/zzpq;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzqu;->zzd:Lcom/google/android/gms/internal/ads/zzul;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzqu;->zza:Lcom/google/android/gms/internal/ads/zzqz;

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzqz;->zzw(Lcom/google/android/gms/internal/ads/zzqz;)Lcom/google/android/gms/internal/ads/zzzd;

    move-result-object v8

    .line 38
    iget v8, v8, Lcom/google/android/gms/internal/ads/zzzd;->zzf:I

    invoke-direct {v6, v7, v8, v1}, Lcom/google/android/gms/internal/ads/zzpq;-><init>(Lcom/google/android/gms/internal/ads/zzdi;ILcom/google/android/gms/internal/ads/zzpp;)V

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzqu;->zza:Lcom/google/android/gms/internal/ads/zzqz;

    .line 39
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzqz;->zzu()Lcom/google/android/gms/internal/ads/zzxt;

    move-result-object v7

    iput-object v7, v1, Lcom/google/android/gms/internal/ads/zzqu;->zzn:Lcom/google/android/gms/internal/ads/zzxt;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzqz;->zzs()Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v8

    .line 40
    invoke-interface {v7, v8}, Lcom/google/android/gms/internal/ads/zzxt;->zzk(Lcom/google/android/gms/internal/ads/zzab;)V

    :cond_f
    move-object v8, v6

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzqu;->zze:Lcom/google/android/gms/internal/ads/zzqq;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzqu;->zzc:Landroid/net/Uri;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzqu;->zzd:Lcom/google/android/gms/internal/ads/zzul;

    .line 41
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzul;->zza()Ljava/util/Map;

    move-result-object v10

    iget-wide v11, v1, Lcom/google/android/gms/internal/ads/zzqu;->zzm:J

    iget-object v15, v1, Lcom/google/android/gms/internal/ads/zzqu;->zzf:Lcom/google/android/gms/internal/ads/zzws;

    move-wide/from16 v16, v11

    move-wide v11, v13

    move-wide v2, v13

    move-wide/from16 v13, v16

    .line 42
    invoke-interface/range {v7 .. v15}, Lcom/google/android/gms/internal/ads/zzqq;->zzd(Lcom/google/android/gms/internal/ads/zzdg;Landroid/net/Uri;Ljava/util/Map;JJLcom/google/android/gms/internal/ads/zzws;)V

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzqu;->zza:Lcom/google/android/gms/internal/ads/zzqz;

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzqz;->zzw(Lcom/google/android/gms/internal/ads/zzqz;)Lcom/google/android/gms/internal/ads/zzzd;

    move-result-object v6

    if-eqz v6, :cond_10

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzqu;->zze:Lcom/google/android/gms/internal/ads/zzqq;

    .line 43
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzqq;->zzc()V

    :cond_10
    iget-boolean v6, v1, Lcom/google/android/gms/internal/ads/zzqu;->zzj:Z

    if-eqz v6, :cond_11

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzqu;->zze:Lcom/google/android/gms/internal/ads/zzqq;

    iget-wide v7, v1, Lcom/google/android/gms/internal/ads/zzqu;->zzk:J

    .line 44
    invoke-interface {v6, v2, v3, v7, v8}, Lcom/google/android/gms/internal/ads/zzqq;->zzf(JJ)V

    iput-boolean v5, v1, Lcom/google/android/gms/internal/ads/zzqu;->zzj:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_11
    move-wide v13, v2

    const/4 v2, 0x0

    :cond_12
    :goto_c
    if-nez v2, :cond_14

    :try_start_8
    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzqu;->zzi:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-nez v3, :cond_13

    :try_start_9
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzqu;->zzg:Lcom/google/android/gms/internal/ads/zzeb;

    .line 45
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzeb;->zza()V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzqu;->zze:Lcom/google/android/gms/internal/ads/zzqq;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzqu;->zzh:Lcom/google/android/gms/internal/ads/zzxm;

    .line 46
    invoke-interface {v3, v6}, Lcom/google/android/gms/internal/ads/zzqq;->zza(Lcom/google/android/gms/internal/ads/zzxm;)I

    move-result v2

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzqu;->zze:Lcom/google/android/gms/internal/ads/zzqq;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzqq;->zzb()J

    move-result-wide v6

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzqu;->zza:Lcom/google/android/gms/internal/ads/zzqz;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzqz;->zzm(Lcom/google/android/gms/internal/ads/zzqz;)J

    move-result-wide v8

    add-long/2addr v8, v13

    cmp-long v3, v6, v8

    if-lez v3, :cond_12

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzqu;->zzg:Lcom/google/android/gms/internal/ads/zzeb;

    .line 47
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzeb;->zzc()Z

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzqu;->zza:Lcom/google/android/gms/internal/ads/zzqz;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzqz;->zzr(Lcom/google/android/gms/internal/ads/zzqz;)Landroid/os/Handler;

    move-result-object v3

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzqu;->zza:Lcom/google/android/gms/internal/ads/zzqz;

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzqz;->zzx(Lcom/google/android/gms/internal/ads/zzqz;)Ljava/lang/Runnable;

    move-result-object v8

    .line 48
    invoke-virtual {v3, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-wide v13, v6

    goto :goto_c

    .line 49
    :catch_4
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_13
    const/4 v2, 0x0

    goto :goto_d

    :catchall_0
    move-exception v0

    move v5, v2

    goto :goto_f

    :cond_14
    :goto_d
    if-ne v2, v4, :cond_15

    goto :goto_e

    .line 50
    :cond_15
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzqu;->zze:Lcom/google/android/gms/internal/ads/zzqq;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzqq;->zzb()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-eqz v7, :cond_16

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzqu;->zzh:Lcom/google/android/gms/internal/ads/zzxm;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzqu;->zze:Lcom/google/android/gms/internal/ads/zzqq;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzqq;->zzb()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/google/android/gms/internal/ads/zzxm;->zza:J

    :cond_16
    move v5, v2

    .line 51
    :goto_e
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzqu;->zzd:Lcom/google/android/gms/internal/ads/zzul;

    .line 52
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfn;->zzM(Lcom/google/android/gms/internal/ads/zzdi;)V

    if-eqz v5, :cond_0

    goto :goto_10

    :catchall_1
    move-exception v0

    :goto_f
    if-eq v5, v4, :cond_17

    .line 53
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzqu;->zze:Lcom/google/android/gms/internal/ads/zzqq;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzqq;->zzb()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_17

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzqu;->zzh:Lcom/google/android/gms/internal/ads/zzxm;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzqu;->zze:Lcom/google/android/gms/internal/ads/zzqq;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzqq;->zzb()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/google/android/gms/internal/ads/zzxm;->zza:J

    .line 54
    :cond_17
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzqu;->zzd:Lcom/google/android/gms/internal/ads/zzul;

    .line 55
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfn;->zzM(Lcom/google/android/gms/internal/ads/zzdi;)V

    .line 56
    throw v0

    :cond_18
    :goto_10
    return-void
.end method
