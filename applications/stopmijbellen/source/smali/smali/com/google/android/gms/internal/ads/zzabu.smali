.class final Lcom/google/android/gms/internal/ads/zzabu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "OpusHead"

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfn;->zzW(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzabu;->zza:[B

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzabm;)Landroid/util/Pair;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzabm;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/google/android/gms/internal/ads/zzdd;",
            "Lcom/google/android/gms/internal/ads/zzdd;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzabm;->zza:Lcom/google/android/gms/internal/ads/zzfd;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfd;->zza()I

    move-result v4

    if-lt v4, v0, :cond_c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfd;->zzc()I

    move-result v4

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v5

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v6

    const v7, 0x6d657461

    if-ne v6, v7, :cond_5

    .line 4
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    add-int v2, v4, v5

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfd;->zzG(I)V

    .line 6
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzabu;->zzd(Lcom/google/android/gms/internal/ads/zzfd;)V

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfd;->zzc()I

    move-result v6

    if-ge v6, v2, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfd;->zzc()I

    move-result v6

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v7

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v8

    const v9, 0x696c7374

    if-ne v8, v9, :cond_3

    .line 9
    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    add-int/2addr v6, v7

    .line 10
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfd;->zzG(I)V

    new-instance v2, Ljava/util/ArrayList;

    .line 11
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfd;->zzc()I

    move-result v7

    if-ge v7, v6, :cond_1

    .line 12
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzacb;->zza(Lcom/google/android/gms/internal/ads/zzfd;)Lcom/google/android/gms/internal/ads/zzdc;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 13
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 14
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_3

    .line 15
    :cond_2
    new-instance v6, Lcom/google/android/gms/internal/ads/zzdd;

    .line 16
    invoke-direct {v6, v2}, Lcom/google/android/gms/internal/ads/zzdd;-><init>(Ljava/util/List;)V

    move-object v2, v6

    goto/16 :goto_6

    :cond_3
    add-int/2addr v6, v7

    .line 17
    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    goto :goto_1

    :cond_4
    :goto_3
    move-object v2, v1

    goto :goto_6

    :cond_5
    const v7, 0x736d7461

    if-ne v6, v7, :cond_b

    .line 18
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    add-int v3, v4, v5

    const/16 v6, 0xc

    .line 19
    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/ads/zzfd;->zzG(I)V

    :goto_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfd;->zzc()I

    move-result v7

    if-ge v7, v3, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfd;->zzc()I

    move-result v7

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v8

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v9

    const v10, 0x73617574

    if-ne v9, v10, :cond_9

    const/16 v3, 0xe

    if-ge v8, v3, :cond_6

    goto :goto_5

    :cond_6
    const/4 v3, 0x5

    .line 22
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/zzfd;->zzG(I)V

    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfd;->zzk()I

    move-result v3

    const/high16 v7, 0x42f00000    # 120.0f

    if-eq v3, v6, :cond_7

    const/16 v6, 0xd

    if-eq v3, v6, :cond_8

    goto :goto_5

    :cond_7
    if-ne v3, v6, :cond_8

    const/high16 v7, 0x43700000    # 240.0f

    :cond_8
    const/4 v3, 0x1

    .line 24
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/zzfd;->zzG(I)V

    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfd;->zzk()I

    move-result v6

    new-instance v8, Lcom/google/android/gms/internal/ads/zzdd;

    new-array v3, v3, [Lcom/google/android/gms/internal/ads/zzdc;

    new-instance v9, Lcom/google/android/gms/internal/ads/zzaan;

    invoke-direct {v9, v7, v6}, Lcom/google/android/gms/internal/ads/zzaan;-><init>(FI)V

    const/4 v6, 0x0

    aput-object v9, v3, v6

    invoke-direct {v8, v3}, Lcom/google/android/gms/internal/ads/zzdd;-><init>([Lcom/google/android/gms/internal/ads/zzdc;)V

    move-object v3, v8

    goto :goto_6

    :cond_9
    add-int/2addr v7, v8

    .line 26
    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    goto :goto_4

    :cond_a
    :goto_5
    move-object v3, v1

    :cond_b
    :goto_6
    add-int/2addr v4, v5

    .line 27
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    goto/16 :goto_0

    .line 28
    :cond_c
    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzabl;)Lcom/google/android/gms/internal/ads/zzdd;
    .locals 14

    const v0, 0x68646c72    # 4.3148E24f

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzabl;->zzb(I)Lcom/google/android/gms/internal/ads/zzabm;

    move-result-object v0

    const v1, 0x6b657973

    .line 2
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzabl;->zzb(I)Lcom/google/android/gms/internal/ads/zzabm;

    move-result-object v1

    const v2, 0x696c7374

    .line 3
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzabl;->zzb(I)Lcom/google/android/gms/internal/ads/zzabm;

    move-result-object p0

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    if-eqz v1, :cond_8

    if-eqz p0, :cond_8

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzabm;->zza:Lcom/google/android/gms/internal/ads/zzfd;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzabu;->zzg(Lcom/google/android/gms/internal/ads/zzfd;)I

    move-result v0

    const v3, 0x6d647461

    if-eq v0, v3, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzabm;->zza:Lcom/google/android/gms/internal/ads/zzfd;

    const/16 v1, 0xc

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v1

    .line 7
    new-array v3, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_1

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v6

    const/4 v7, 0x4

    .line 9
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzfd;->zzG(I)V

    add-int/lit8 v6, v6, -0x8

    .line 10
    sget-object v7, Lcom/google/android/gms/internal/ads/zzfpt;->zzc:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/internal/ads/zzfd;->zzx(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v6

    .line 11
    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzabm;->zza:Lcom/google/android/gms/internal/ads/zzfd;

    const/16 v0, 0x8

    .line 12
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    new-instance v5, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfd;->zza()I

    move-result v6

    if-le v6, v0, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfd;->zzc()I

    move-result v6

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v7

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ltz v8, :cond_4

    if-ge v8, v1, :cond_4

    .line 16
    aget-object v8, v3, v8

    add-int v9, v6, v7

    .line 17
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfd;->zzc()I

    move-result v10

    if-ge v10, v9, :cond_3

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v11

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v12

    const v13, 0x64617461

    if-ne v12, v13, :cond_2

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v9

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v10

    add-int/lit8 v11, v11, -0x10

    .line 22
    new-array v12, v11, [B

    .line 23
    invoke-virtual {p0, v12, v4, v11}, Lcom/google/android/gms/internal/ads/zzfd;->zzB([BII)V

    new-instance v11, Lcom/google/android/gms/internal/ads/zzaah;

    invoke-direct {v11, v8, v12, v10, v9}, Lcom/google/android/gms/internal/ads/zzaah;-><init>(Ljava/lang/String;[BII)V

    goto :goto_3

    :cond_2
    add-int/2addr v10, v11

    .line 24
    invoke-virtual {p0, v10}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    goto :goto_2

    :cond_3
    move-object v11, v2

    :goto_3
    if-eqz v11, :cond_5

    .line 25
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    const/16 v9, 0x34

    const-string v10, "Skipped metadata with unknown key index: "

    const-string v11, "AtomParsers"

    .line 26
    invoke-static {v9, v10, v8, v11}, La6/d;->g(ILjava/lang/String;ILjava/lang/String;)V

    :cond_5
    :goto_4
    add-int/2addr v6, v7

    .line 27
    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    goto :goto_1

    .line 28
    :cond_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_7

    return-object v2

    :cond_7
    new-instance p0, Lcom/google/android/gms/internal/ads/zzdd;

    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/ads/zzdd;-><init>(Ljava/util/List;)V

    return-object p0

    :cond_8
    :goto_5
    return-object v2
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzabl;Lcom/google/android/gms/internal/ads/zzxf;JLcom/google/android/gms/internal/ads/zzs;ZZLcom/google/android/gms/internal/ads/zzfpv;)Ljava/util/List;
    .locals 49
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzabl;",
            "Lcom/google/android/gms/internal/ads/zzxf;",
            "J",
            "Lcom/google/android/gms/internal/ads/zzs;",
            "ZZ",
            "Lcom/google/android/gms/internal/ads/zzfpv<",
            "Lcom/google/android/gms/internal/ads/zzack;",
            "Lcom/google/android/gms/internal/ads/zzack;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzacn;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbj;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v12, p4

    .line 1
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/4 v15, 0x0

    .line 2
    :goto_0
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzabl;->zzc:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v15, v2, :cond_94

    .line 3
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzabl;->zzc:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/google/android/gms/internal/ads/zzabl;

    .line 4
    iget v2, v11, Lcom/google/android/gms/internal/ads/zzabn;->zzd:I

    const v3, 0x7472616b

    if-eq v2, v3, :cond_0

    move-object v0, v13

    move/from16 v31, v15

    goto/16 :goto_68

    :cond_0
    const v2, 0x6d766864

    .line 5
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzabl;->zzb(I)Lcom/google/android/gms/internal/ads/zzabm;

    move-result-object v2

    .line 6
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v10, 0x6d646961

    .line 7
    invoke-virtual {v11, v10}, Lcom/google/android/gms/internal/ads/zzabl;->zza(I)Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v3

    .line 8
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v4, 0x68646c72    # 4.3148E24f

    .line 9
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzabl;->zzb(I)Lcom/google/android/gms/internal/ads/zzabm;

    move-result-object v4

    .line 10
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzabm;->zza:Lcom/google/android/gms/internal/ads/zzfd;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzabu;->zzg(Lcom/google/android/gms/internal/ads/zzfd;)I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzabu;->zze(I)I

    move-result v9

    const-string v7, "AtomParsers"

    const/4 v5, 0x4

    move/from16 v31, v15

    const/4 v6, -0x1

    if-ne v9, v6, :cond_1

    move-object/from16 v0, p7

    move-object/from16 v45, v7

    move-object v2, v11

    move-object/from16 v32, v13

    :goto_1
    const/4 v8, 0x0

    goto/16 :goto_3c

    :cond_1
    const v15, 0x746b6864

    .line 12
    invoke-virtual {v11, v15}, Lcom/google/android/gms/internal/ads/zzabl;->zzb(I)Lcom/google/android/gms/internal/ads/zzabm;

    move-result-object v15

    .line 13
    invoke-static {v15}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v15, v15, Lcom/google/android/gms/internal/ads/zzabm;->zza:Lcom/google/android/gms/internal/ads/zzfd;

    const/16 v14, 0x8

    .line 15
    invoke-virtual {v15, v14}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    .line 16
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v18

    invoke-static/range {v18 .. v18}, Lcom/google/android/gms/internal/ads/zzabn;->zze(I)I

    move-result v18

    const/16 v14, 0x10

    if-nez v18, :cond_2

    const/16 v4, 0x8

    goto :goto_2

    :cond_2
    const/16 v4, 0x10

    .line 17
    :goto_2
    invoke-virtual {v15, v4}, Lcom/google/android/gms/internal/ads/zzfd;->zzG(I)V

    .line 18
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v4

    .line 19
    invoke-virtual {v15, v5}, Lcom/google/android/gms/internal/ads/zzfd;->zzG(I)V

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzfd;->zzc()I

    move-result v21

    if-nez v18, :cond_3

    const/4 v8, 0x4

    goto :goto_3

    :cond_3
    const/16 v8, 0x8

    :goto_3
    const/4 v10, 0x0

    :goto_4
    const-wide v24, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v10, v8, :cond_7

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzfd;->zzH()[B

    move-result-object v26

    add-int v27, v21, v10

    .line 20
    aget-byte v5, v26, v27

    if-eq v5, v6, :cond_6

    if-nez v18, :cond_4

    .line 21
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzfd;->zzs()J

    move-result-wide v26

    goto :goto_5

    :cond_4
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzfd;->zzt()J

    move-result-wide v26

    :goto_5
    const-wide/16 v29, 0x0

    cmp-long v5, v26, v29

    if-nez v5, :cond_5

    goto :goto_6

    :cond_5
    move-object v8, v7

    move-wide/from16 v6, v26

    goto :goto_7

    :cond_6
    add-int/lit8 v10, v10, 0x1

    const/4 v5, 0x4

    goto :goto_4

    .line 22
    :cond_7
    invoke-virtual {v15, v8}, Lcom/google/android/gms/internal/ads/zzfd;->zzG(I)V

    :goto_6
    move-object v8, v7

    move-wide/from16 v6, v24

    .line 23
    :goto_7
    invoke-virtual {v15, v14}, Lcom/google/android/gms/internal/ads/zzfd;->zzG(I)V

    .line 24
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v5

    .line 25
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v10

    const/4 v14, 0x4

    .line 26
    invoke-virtual {v15, v14}, Lcom/google/android/gms/internal/ads/zzfd;->zzG(I)V

    .line 27
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v14

    .line 28
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v15

    const/high16 v0, 0x10000

    move-object/from16 v26, v8

    const/high16 v8, -0x10000

    if-nez v5, :cond_b

    if-ne v10, v0, :cond_a

    if-ne v14, v8, :cond_9

    if-nez v15, :cond_8

    const/16 v0, 0x5a

    goto :goto_a

    :cond_8
    const/4 v5, 0x0

    const/high16 v10, 0x10000

    const/high16 v14, -0x10000

    goto :goto_8

    :cond_9
    const/4 v5, 0x0

    const/high16 v10, 0x10000

    goto :goto_8

    :cond_a
    const/4 v5, 0x0

    :cond_b
    :goto_8
    if-nez v5, :cond_f

    if-ne v10, v8, :cond_e

    if-ne v14, v0, :cond_c

    if-nez v15, :cond_d

    const/16 v0, 0x10e

    goto :goto_a

    :cond_c
    move v0, v14

    :cond_d
    const/4 v5, 0x0

    const/high16 v10, -0x10000

    goto :goto_9

    :cond_e
    move v0, v14

    const/4 v5, 0x0

    goto :goto_9

    :cond_f
    move v0, v14

    :goto_9
    if-ne v5, v8, :cond_10

    if-nez v10, :cond_10

    if-nez v0, :cond_10

    if-ne v15, v8, :cond_10

    const/16 v0, 0xb4

    goto :goto_a

    :cond_10
    const/4 v0, 0x0

    :goto_a
    new-instance v14, Lcom/google/android/gms/internal/ads/zzabt;

    invoke-direct {v14, v4, v6, v7, v0}, Lcom/google/android/gms/internal/ads/zzabt;-><init>(IJI)V

    cmp-long v0, p2, v24

    if-nez v0, :cond_11

    invoke-static {v14}, Lcom/google/android/gms/internal/ads/zzabt;->zzc(Lcom/google/android/gms/internal/ads/zzabt;)J

    move-result-wide v4

    move-wide/from16 v32, v4

    goto :goto_b

    :cond_11
    move-wide/from16 v32, p2

    :goto_b
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzabm;->zza:Lcom/google/android/gms/internal/ads/zzfd;

    const/16 v2, 0x8

    .line 29
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    .line 30
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzabn;->zze(I)I

    move-result v2

    if-nez v2, :cond_12

    const/16 v2, 0x8

    goto :goto_c

    :cond_12
    const/16 v2, 0x10

    .line 31
    :goto_c
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfd;->zzG(I)V

    .line 32
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfd;->zzs()J

    move-result-wide v29

    cmp-long v0, v32, v24

    if-nez v0, :cond_13

    goto :goto_d

    :cond_13
    const-wide/32 v34, 0xf4240

    move-wide/from16 v36, v29

    .line 33
    invoke-static/range {v32 .. v37}, Lcom/google/android/gms/internal/ads/zzfn;->zzt(JJJ)J

    move-result-wide v4

    move-wide/from16 v24, v4

    :goto_d
    const v0, 0x6d696e66

    .line 34
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzabl;->zza(I)Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v2

    .line 35
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v4, 0x7374626c

    .line 36
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzabl;->zza(I)Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v2

    .line 37
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v4, 0x6d646864

    .line 38
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzabl;->zzb(I)Lcom/google/android/gms/internal/ads/zzabm;

    move-result-object v3

    .line 39
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzabm;->zza:Lcom/google/android/gms/internal/ads/zzfd;

    const/16 v4, 0x8

    .line 41
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    .line 42
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzabn;->zze(I)I

    move-result v4

    if-nez v4, :cond_14

    const/16 v5, 0x8

    goto :goto_e

    :cond_14
    const/16 v5, 0x10

    .line 43
    :goto_e
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzfd;->zzG(I)V

    .line 44
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfd;->zzs()J

    move-result-wide v5

    if-nez v4, :cond_15

    const/4 v4, 0x4

    goto :goto_f

    :cond_15
    const/16 v4, 0x8

    .line 45
    :goto_f
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzfd;->zzG(I)V

    .line 46
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfd;->zzo()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const/4 v15, 0x3

    .line 47
    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(I)V

    shr-int/lit8 v7, v3, 0xa

    and-int/lit8 v7, v7, 0x1f

    add-int/lit8 v7, v7, 0x60

    int-to-char v7, v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v7, v3, 0x5

    and-int/lit8 v7, v7, 0x1f

    add-int/lit8 v7, v7, 0x60

    int-to-char v7, v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v3, v3, 0x1f

    add-int/lit8 v3, v3, 0x60

    int-to-char v3, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v10

    const v3, 0x73747364

    .line 49
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzabl;->zzb(I)Lcom/google/android/gms/internal/ads/zzabm;

    move-result-object v2

    .line 50
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v8, v2, Lcom/google/android/gms/internal/ads/zzabm;->zza:Lcom/google/android/gms/internal/ads/zzfd;

    invoke-static {v14}, Lcom/google/android/gms/internal/ads/zzabt;->zza(Lcom/google/android/gms/internal/ads/zzabt;)I

    move-result v7

    invoke-static {v14}, Lcom/google/android/gms/internal/ads/zzabt;->zzb(Lcom/google/android/gms/internal/ads/zzabt;)I

    move-result v6

    iget-object v2, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    const/16 v4, 0xc

    .line 52
    invoke-virtual {v8, v4}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    .line 53
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v3

    new-instance v2, Lcom/google/android/gms/internal/ads/zzabq;

    .line 54
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzabq;-><init>(I)V

    const/4 v0, 0x0

    :goto_10
    if-ge v0, v3, :cond_50

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzfd;->zzc()I

    move-result v15

    move-object/from16 v32, v13

    .line 55
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v13

    if-lez v13, :cond_16

    move/from16 v33, v3

    const/4 v4, 0x1

    goto :goto_11

    :cond_16
    move/from16 v33, v3

    const/4 v4, 0x0

    :goto_11
    const-string v3, "childAtomSize must be positive"

    .line 56
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ads/zzwt;->zzb(ZLjava/lang/String;)V

    .line 57
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v3

    const v4, 0x61766331

    move/from16 v34, v6

    const v6, 0x656e6376

    if-eq v3, v4, :cond_22

    const v4, 0x61766333

    if-eq v3, v4, :cond_22

    if-eq v3, v6, :cond_22

    const v4, 0x6d317620

    if-eq v3, v4, :cond_22

    const v4, 0x6d703476

    if-eq v3, v4, :cond_22

    const v4, 0x68766331

    if-eq v3, v4, :cond_22

    const v4, 0x68657631

    if-eq v3, v4, :cond_22

    const v4, 0x73323633

    if-eq v3, v4, :cond_22

    const v4, 0x48323633

    if-eq v3, v4, :cond_22

    const v4, 0x76703038

    if-eq v3, v4, :cond_22

    const v4, 0x76703039

    if-eq v3, v4, :cond_22

    const v4, 0x61763031

    if-eq v3, v4, :cond_22

    const v4, 0x64766176

    if-eq v3, v4, :cond_22

    const v4, 0x64766131

    if-eq v3, v4, :cond_22

    const v4, 0x64766865

    if-eq v3, v4, :cond_22

    const v4, 0x64766831

    if-ne v3, v4, :cond_17

    goto/16 :goto_18

    :cond_17
    const v4, 0x6d703461

    if-eq v3, v4, :cond_21

    const v4, 0x656e6361

    if-eq v3, v4, :cond_21

    const v4, 0x61632d33

    if-eq v3, v4, :cond_21

    const v4, 0x65632d33

    if-eq v3, v4, :cond_21

    const v4, 0x61632d34

    if-eq v3, v4, :cond_21

    const v4, 0x64747363

    if-eq v3, v4, :cond_21

    const v4, 0x64747365

    if-eq v3, v4, :cond_21

    const v4, 0x64747368

    if-eq v3, v4, :cond_21

    const v4, 0x6474736c

    if-eq v3, v4, :cond_21

    const v4, 0x64747378

    if-eq v3, v4, :cond_21

    const v4, 0x73616d72

    if-eq v3, v4, :cond_21

    const v4, 0x73617762

    if-eq v3, v4, :cond_21

    const v4, 0x6c70636d

    if-eq v3, v4, :cond_21

    const v4, 0x736f7774

    if-eq v3, v4, :cond_21

    const v4, 0x74776f73

    if-eq v3, v4, :cond_21

    const v4, 0x2e6d7032

    if-eq v3, v4, :cond_21

    const v4, 0x2e6d7033

    if-eq v3, v4, :cond_21

    const v4, 0x6d686131

    if-eq v3, v4, :cond_21

    const v4, 0x6d686d31

    if-eq v3, v4, :cond_21

    const v4, 0x616c6163

    if-eq v3, v4, :cond_21

    const v4, 0x616c6177

    if-eq v3, v4, :cond_21

    const v4, 0x756c6177

    if-eq v3, v4, :cond_21

    const v4, 0x4f707573

    if-eq v3, v4, :cond_21

    const v4, 0x664c6143

    if-ne v3, v4, :cond_18

    goto/16 :goto_17

    :cond_18
    const v4, 0x54544d4c

    if-eq v3, v4, :cond_1c

    const v4, 0x74783367

    if-eq v3, v4, :cond_1c

    const v4, 0x77767474

    if-eq v3, v4, :cond_1c

    const v4, 0x73747070

    if-eq v3, v4, :cond_1c

    const v4, 0x63363038

    if-ne v3, v4, :cond_19

    goto :goto_13

    :cond_19
    const v4, 0x6d657474

    if-ne v3, v4, :cond_1a

    add-int/lit8 v3, v15, 0x10

    .line 58
    invoke-virtual {v8, v3}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    const/4 v3, 0x0

    .line 59
    invoke-virtual {v8, v3}, Lcom/google/android/gms/internal/ads/zzfd;->zzv(C)Ljava/lang/String;

    .line 60
    invoke-virtual {v8, v3}, Lcom/google/android/gms/internal/ads/zzfd;->zzv(C)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1b

    new-instance v3, Lcom/google/android/gms/internal/ads/zzz;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzz;-><init>()V

    .line 61
    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/ads/zzz;->zzG(I)Lcom/google/android/gms/internal/ads/zzz;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzz;->zzS(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzz;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzz;->zzY()Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/internal/ads/zzabq;->zzb:Lcom/google/android/gms/internal/ads/zzab;

    goto :goto_12

    :cond_1a
    const v4, 0x63616d6d

    if-ne v3, v4, :cond_1b

    new-instance v3, Lcom/google/android/gms/internal/ads/zzz;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzz;-><init>()V

    .line 62
    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/ads/zzz;->zzG(I)Lcom/google/android/gms/internal/ads/zzz;

    const-string v4, "application/x-camera-motion"

    .line 63
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzz;->zzS(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzz;

    .line 64
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzz;->zzY()Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/internal/ads/zzabq;->zzb:Lcom/google/android/gms/internal/ads/zzab;

    :cond_1b
    :goto_12
    move/from16 v17, v0

    move-object/from16 v20, v5

    move v1, v7

    move/from16 v22, v9

    move-object/from16 v39, v10

    move-object/from16 v40, v11

    move/from16 v23, v13

    move-object/from16 v18, v14

    move-object/from16 v45, v26

    move/from16 v3, v34

    move-object v9, v2

    goto/16 :goto_16

    :cond_1c
    :goto_13
    add-int/lit8 v4, v15, 0x10

    .line 65
    invoke-virtual {v8, v4}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    const v4, 0x54544d4c

    const-wide v35, 0x7fffffffffffffffL

    if-ne v3, v4, :cond_1d

    const-string v3, "application/ttml+xml"

    :goto_14
    move-object/from16 v37, v10

    const/4 v4, 0x0

    move-wide/from16 v46, v35

    move/from16 v36, v9

    move-wide/from16 v9, v46

    goto :goto_15

    :cond_1d
    const v4, 0x74783367

    if-ne v3, v4, :cond_1e

    add-int/lit8 v3, v13, -0x10

    .line 66
    new-array v4, v3, [B

    const/4 v6, 0x0

    .line 67
    invoke-virtual {v8, v4, v6, v3}, Lcom/google/android/gms/internal/ads/zzfd;->zzB([BII)V

    .line 68
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzfss;->zzp(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfss;

    move-result-object v3

    const-string v4, "application/x-quicktime-tx3g"

    move-object/from16 v37, v10

    move-object/from16 v46, v4

    move-object v4, v3

    move-object/from16 v3, v46

    move-wide/from16 v47, v35

    move/from16 v36, v9

    move-wide/from16 v9, v47

    goto :goto_15

    :cond_1e
    const v4, 0x77767474

    if-ne v3, v4, :cond_1f

    const-string v3, "application/x-mp4-vtt"

    goto :goto_14

    :cond_1f
    const v4, 0x73747070

    if-ne v3, v4, :cond_20

    const-string v3, "application/ttml+xml"

    move/from16 v36, v9

    move-object/from16 v37, v10

    const/4 v4, 0x0

    const-wide/16 v9, 0x0

    goto :goto_15

    :cond_20
    const/4 v3, 0x1

    iput v3, v2, Lcom/google/android/gms/internal/ads/zzabq;->zzd:I

    const-string v3, "application/x-mp4-cea-608"

    goto :goto_14

    .line 69
    :goto_15
    new-instance v6, Lcom/google/android/gms/internal/ads/zzz;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzz;-><init>()V

    .line 70
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzz;->zzG(I)Lcom/google/android/gms/internal/ads/zzz;

    .line 71
    invoke-virtual {v6, v3}, Lcom/google/android/gms/internal/ads/zzz;->zzS(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzz;

    .line 72
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzz;->zzK(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzz;

    .line 73
    invoke-virtual {v6, v9, v10}, Lcom/google/android/gms/internal/ads/zzz;->zzW(J)Lcom/google/android/gms/internal/ads/zzz;

    .line 74
    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzz;->zzI(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzz;

    .line 75
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzz;->zzY()Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/internal/ads/zzabq;->zzb:Lcom/google/android/gms/internal/ads/zzab;

    move/from16 v17, v0

    move-object v9, v2

    move-object/from16 v20, v5

    move v1, v7

    move-object/from16 v40, v11

    move/from16 v23, v13

    move-object/from16 v18, v14

    move-object/from16 v45, v26

    move/from16 v3, v34

    move/from16 v22, v36

    move-object/from16 v39, v37

    :goto_16
    move-object v14, v8

    goto/16 :goto_36

    :cond_21
    :goto_17
    move/from16 v36, v9

    move-object/from16 v37, v10

    move-object v10, v2

    move-object v2, v8

    const/16 v6, 0xc

    const/4 v9, 0x2

    move v4, v15

    move-object/from16 v20, v5

    const/4 v1, 0x4

    move v5, v13

    move/from16 v1, v34

    move v6, v7

    move-object/from16 v18, v14

    move v14, v7

    move-object/from16 v46, v26

    move/from16 v26, v1

    move-object/from16 v1, v46

    move-object/from16 v7, v20

    move/from16 v27, v14

    move-object v14, v8

    move/from16 v8, p6

    move/from16 v22, v36

    move-object/from16 v36, v1

    const/4 v1, 0x2

    move-object/from16 v9, p4

    move-object/from16 v17, v10

    move-object/from16 v39, v37

    move-object/from16 v40, v11

    move v11, v0

    .line 76
    invoke-static/range {v2 .. v11}, Lcom/google/android/gms/internal/ads/zzabu;->zzj(Lcom/google/android/gms/internal/ads/zzfd;IIIILjava/lang/String;ZLcom/google/android/gms/internal/ads/zzs;Lcom/google/android/gms/internal/ads/zzabq;I)V

    move/from16 v23, v13

    move-object/from16 v9, v17

    move/from16 v3, v26

    move/from16 v1, v27

    move-object/from16 v45, v36

    move/from16 v17, v0

    goto/16 :goto_36

    :cond_22
    :goto_18
    move-object/from16 v17, v2

    move-object/from16 v20, v5

    move/from16 v27, v7

    move/from16 v22, v9

    move-object/from16 v39, v10

    move-object/from16 v40, v11

    move-object/from16 v18, v14

    move-object/from16 v36, v26

    move/from16 v26, v34

    const/4 v1, 0x2

    move-object v14, v8

    add-int/lit8 v2, v15, 0x10

    .line 77
    invoke-virtual {v14, v2}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    const/16 v2, 0x10

    .line 78
    invoke-virtual {v14, v2}, Lcom/google/android/gms/internal/ads/zzfd;->zzG(I)V

    .line 79
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzfd;->zzo()I

    move-result v4

    .line 80
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzfd;->zzo()I

    move-result v5

    const/16 v7, 0x32

    .line 81
    invoke-virtual {v14, v7}, Lcom/google/android/gms/internal/ads/zzfd;->zzG(I)V

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzfd;->zzc()I

    move-result v7

    if-ne v3, v6, :cond_25

    .line 82
    invoke-static {v14, v15, v13}, Lcom/google/android/gms/internal/ads/zzabu;->zzi(Lcom/google/android/gms/internal/ads/zzfd;II)Landroid/util/Pair;

    move-result-object v3

    if-eqz v3, :cond_24

    .line 83
    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v12, :cond_23

    move-object/from16 v9, v17

    const/4 v8, 0x0

    goto :goto_19

    .line 84
    :cond_23
    iget-object v8, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Lcom/google/android/gms/internal/ads/zzacl;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzacl;->zzb:Ljava/lang/String;

    invoke-virtual {v12, v8}, Lcom/google/android/gms/internal/ads/zzs;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzs;

    move-result-object v8

    move-object/from16 v9, v17

    .line 85
    :goto_19
    iget-object v10, v9, Lcom/google/android/gms/internal/ads/zzabq;->zza:[Lcom/google/android/gms/internal/ads/zzacl;

    .line 86
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzacl;

    aput-object v3, v10, v0

    move v3, v6

    goto :goto_1a

    :cond_24
    move-object/from16 v9, v17

    move-object v8, v12

    const v3, 0x656e6376

    .line 87
    :goto_1a
    invoke-virtual {v14, v7}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    goto :goto_1b

    :cond_25
    move-object/from16 v9, v17

    move-object v8, v12

    :goto_1b
    const v6, 0x6d317620

    if-ne v3, v6, :cond_26

    const-string v6, "video/mpeg"

    move-object/from16 v46, v6

    move v6, v3

    move-object/from16 v3, v46

    goto :goto_1c

    :cond_26
    const v6, 0x48323633

    if-ne v3, v6, :cond_27

    const-string v3, "video/3gpp"

    goto :goto_1c

    :cond_27
    move v6, v3

    const/4 v3, 0x0

    :goto_1c
    const/high16 v10, 0x3f800000    # 1.0f

    move v11, v7

    const/4 v2, 0x0

    const/4 v10, -0x1

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/high16 v44, 0x3f800000    # 1.0f

    move-object v7, v3

    const/4 v3, 0x0

    :goto_1d
    sub-int v1, v11, v15

    if-ge v1, v13, :cond_4e

    .line 88
    invoke-virtual {v14, v11}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzfd;->zzc()I

    move-result v1

    .line 89
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v17

    if-nez v17, :cond_29

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzfd;->zzc()I

    move-result v17

    sub-int v12, v17, v15

    if-ne v12, v13, :cond_28

    goto/16 :goto_35

    :cond_28
    const/4 v12, 0x0

    goto :goto_1e

    :cond_29
    move/from16 v12, v17

    :goto_1e
    if-lez v12, :cond_2a

    move/from16 v17, v0

    move/from16 v23, v13

    const/4 v0, 0x1

    goto :goto_1f

    :cond_2a
    move/from16 v17, v0

    move/from16 v23, v13

    const/4 v0, 0x0

    :goto_1f
    const-string v13, "childAtomSize must be positive"

    .line 90
    invoke-static {v0, v13}, Lcom/google/android/gms/internal/ads/zzwt;->zzb(ZLjava/lang/String;)V

    .line 91
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v0

    const v13, 0x61766343

    if-ne v0, v13, :cond_2d

    if-nez v7, :cond_2b

    const/4 v0, 0x1

    goto :goto_20

    :cond_2b
    const/4 v0, 0x0

    :goto_20
    const/4 v2, 0x0

    .line 92
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzwt;->zzb(ZLjava/lang/String;)V

    add-int/lit8 v1, v1, 0x8

    .line 93
    invoke-virtual {v14, v1}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    .line 94
    invoke-static {v14}, Lcom/google/android/gms/internal/ads/zzvz;->zza(Lcom/google/android/gms/internal/ads/zzfd;)Lcom/google/android/gms/internal/ads/zzvz;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzvz;->zza:Ljava/util/List;

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzvz;->zzb:I

    iput v2, v9, Lcom/google/android/gms/internal/ads/zzabq;->zzc:I

    if-nez v3, :cond_2c

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzvz;->zze:F

    move/from16 v44, v2

    :cond_2c
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzvz;->zzf:Ljava/lang/String;

    const-string v2, "video/avc"

    :goto_21
    move-object/from16 v41, v0

    move-object v7, v2

    move-object/from16 v45, v36

    move-object v2, v1

    :goto_22
    move/from16 v36, v6

    goto/16 :goto_34

    :cond_2d
    const v13, 0x68766343

    if-ne v0, v13, :cond_30

    if-nez v7, :cond_2e

    const/4 v0, 0x1

    goto :goto_23

    :cond_2e
    const/4 v0, 0x0

    :goto_23
    const/4 v2, 0x0

    .line 95
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzwt;->zzb(ZLjava/lang/String;)V

    add-int/lit8 v1, v1, 0x8

    .line 96
    invoke-virtual {v14, v1}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    .line 97
    invoke-static {v14}, Lcom/google/android/gms/internal/ads/zzxg;->zza(Lcom/google/android/gms/internal/ads/zzfd;)Lcom/google/android/gms/internal/ads/zzxg;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzxg;->zza:Ljava/util/List;

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzxg;->zzb:I

    iput v2, v9, Lcom/google/android/gms/internal/ads/zzabq;->zzc:I

    if-nez v3, :cond_2f

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzxg;->zzc:F

    move/from16 v44, v2

    :cond_2f
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzxg;->zzd:Ljava/lang/String;

    const-string v2, "video/hevc"

    goto :goto_21

    :cond_30
    const v13, 0x64766343

    if-eq v0, v13, :cond_4c

    const v13, 0x64767643

    if-ne v0, v13, :cond_31

    goto/16 :goto_32

    :cond_31
    const v13, 0x76706343

    if-ne v0, v13, :cond_34

    if-nez v7, :cond_32

    const/4 v0, 0x1

    goto :goto_24

    :cond_32
    const/4 v0, 0x0

    :goto_24
    const/4 v1, 0x0

    .line 98
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzwt;->zzb(ZLjava/lang/String;)V

    const v0, 0x76703038

    if-ne v6, v0, :cond_33

    const-string v0, "video/x-vnd.on2.vp8"

    goto :goto_26

    :cond_33
    const-string v0, "video/x-vnd.on2.vp9"

    goto :goto_26

    :cond_34
    const v13, 0x61763143

    if-ne v0, v13, :cond_36

    if-nez v7, :cond_35

    const/4 v0, 0x1

    goto :goto_25

    :cond_35
    const/4 v0, 0x0

    :goto_25
    const/4 v13, 0x0

    .line 99
    invoke-static {v0, v13}, Lcom/google/android/gms/internal/ads/zzwt;->zzb(ZLjava/lang/String;)V

    const-string v0, "video/av01"

    :goto_26
    move-object v7, v0

    :goto_27
    move-object/from16 v45, v36

    goto :goto_22

    :cond_36
    const v13, 0x64323633

    if-ne v0, v13, :cond_38

    if-nez v7, :cond_37

    const/4 v0, 0x1

    goto :goto_28

    :cond_37
    const/4 v0, 0x0

    :goto_28
    const/4 v13, 0x0

    .line 100
    invoke-static {v0, v13}, Lcom/google/android/gms/internal/ads/zzwt;->zzb(ZLjava/lang/String;)V

    const-string v0, "video/3gpp"

    goto :goto_26

    :cond_38
    const v13, 0x65736473

    if-ne v0, v13, :cond_3b

    if-nez v7, :cond_39

    const/4 v0, 0x1

    goto :goto_29

    :cond_39
    const/4 v0, 0x0

    :goto_29
    const/4 v7, 0x0

    .line 101
    invoke-static {v0, v7}, Lcom/google/android/gms/internal/ads/zzwt;->zzb(ZLjava/lang/String;)V

    .line 102
    invoke-static {v14, v1}, Lcom/google/android/gms/internal/ads/zzabu;->zzh(Lcom/google/android/gms/internal/ads/zzfd;I)Landroid/util/Pair;

    move-result-object v0

    .line 103
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 104
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [B

    if-eqz v0, :cond_3a

    .line 105
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfss;->zzp(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfss;

    move-result-object v2

    :cond_3a
    move-object v7, v1

    goto :goto_27

    :cond_3b
    const v13, 0x70617370

    if-ne v0, v13, :cond_3c

    add-int/lit8 v1, v1, 0x8

    .line 106
    invoke-virtual {v14, v1}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    .line 107
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzfd;->zzn()I

    move-result v0

    int-to-float v0, v0

    .line 108
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzfd;->zzn()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    move/from16 v44, v0

    move-object/from16 v45, v36

    const/4 v3, 0x1

    goto/16 :goto_22

    :cond_3c
    const v13, 0x73763364

    if-ne v0, v13, :cond_3f

    add-int/lit8 v0, v1, 0x8

    :goto_2a
    sub-int v13, v0, v1

    if-ge v13, v12, :cond_3e

    .line 109
    invoke-virtual {v14, v0}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    .line 110
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v13

    move/from16 v28, v1

    .line 111
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v1

    move/from16 v37, v3

    const v3, 0x70726f6a

    if-ne v1, v3, :cond_3d

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzfd;->zzH()[B

    move-result-object v1

    add-int/2addr v13, v0

    .line 112
    invoke-static {v1, v0, v13}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    goto :goto_2b

    :cond_3d
    add-int/2addr v0, v13

    move/from16 v1, v28

    move/from16 v3, v37

    goto :goto_2a

    :cond_3e
    move/from16 v37, v3

    const/4 v0, 0x0

    :goto_2b
    move-object/from16 v42, v0

    goto :goto_2c

    :cond_3f
    move/from16 v37, v3

    const v1, 0x73743364

    if-ne v0, v1, :cond_45

    .line 113
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzfd;->zzk()I

    move-result v0

    const/4 v1, 0x3

    .line 114
    invoke-virtual {v14, v1}, Lcom/google/android/gms/internal/ads/zzfd;->zzG(I)V

    if-nez v0, :cond_44

    .line 115
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzfd;->zzk()I

    move-result v0

    if-eqz v0, :cond_43

    const/4 v3, 0x1

    if-eq v0, v3, :cond_42

    const/4 v3, 0x2

    if-eq v0, v3, :cond_41

    if-eq v0, v1, :cond_40

    goto :goto_2c

    :cond_40
    const/4 v10, 0x3

    goto :goto_2c

    :cond_41
    const/4 v10, 0x2

    goto :goto_2c

    :cond_42
    const/4 v10, 0x1

    goto :goto_2c

    :cond_43
    const/4 v10, 0x0

    :cond_44
    :goto_2c
    move-object/from16 v45, v36

    move/from16 v3, v37

    goto/16 :goto_22

    :cond_45
    const/4 v1, 0x3

    const v3, 0x636f6c72

    if-ne v0, v3, :cond_4b

    .line 116
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v0

    const v3, 0x6e636c78

    if-eq v0, v3, :cond_48

    const v3, 0x6e636c63

    if-ne v0, v3, :cond_46

    goto :goto_2e

    .line 117
    :cond_46
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzabn;->zzf(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Unsupported color type: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_47

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2d

    .line 118
    :cond_47
    new-instance v0, Ljava/lang/String;

    .line 119
    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2d
    move-object/from16 v3, v36

    .line 120
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v45, v3

    goto :goto_31

    :cond_48
    :goto_2e
    move-object/from16 v3, v36

    .line 121
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzfd;->zzo()I

    move-result v13

    .line 122
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzfd;->zzo()I

    move-result v16

    const/4 v1, 0x2

    .line 123
    invoke-virtual {v14, v1}, Lcom/google/android/gms/internal/ads/zzfd;->zzG(I)V

    const v1, 0x6e636c78

    if-ne v0, v1, :cond_49

    .line 124
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzfd;->zzk()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_49

    const/4 v0, 0x1

    goto :goto_2f

    :cond_49
    const/4 v0, 0x0

    :goto_2f
    invoke-static {v13}, Lcom/google/android/gms/internal/ads/zzm;->zza(I)I

    move-result v1

    const/4 v13, 0x1

    if-eq v13, v0, :cond_4a

    const/4 v0, 0x2

    goto :goto_30

    :cond_4a
    const/4 v0, 0x1

    :goto_30
    new-instance v13, Lcom/google/android/gms/internal/ads/zzm;

    move/from16 v36, v6

    invoke-static/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/zzm;->zzb(I)I

    move-result v6

    move-object/from16 v45, v3

    const/4 v3, 0x0

    .line 125
    invoke-direct {v13, v1, v0, v6, v3}, Lcom/google/android/gms/internal/ads/zzm;-><init>(III[B)V

    move-object/from16 v43, v13

    goto :goto_33

    :cond_4b
    move-object/from16 v45, v36

    :goto_31
    move/from16 v36, v6

    goto :goto_33

    :cond_4c
    :goto_32
    move/from16 v37, v3

    move-object/from16 v45, v36

    move/from16 v36, v6

    .line 126
    invoke-static {v14}, Lcom/google/android/gms/internal/ads/zzwm;->zza(Lcom/google/android/gms/internal/ads/zzfd;)Lcom/google/android/gms/internal/ads/zzwm;

    move-result-object v0

    if-eqz v0, :cond_4d

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzwm;->zza:Ljava/lang/String;

    const-string v7, "video/dolby-vision"

    move-object/from16 v41, v0

    :cond_4d
    :goto_33
    move/from16 v3, v37

    :goto_34
    add-int/2addr v11, v12

    move-object/from16 v12, p4

    move/from16 v0, v17

    move/from16 v13, v23

    move/from16 v6, v36

    move-object/from16 v36, v45

    goto/16 :goto_1d

    :cond_4e
    :goto_35
    move/from16 v17, v0

    move/from16 v23, v13

    move-object/from16 v45, v36

    if-eqz v7, :cond_4f

    .line 127
    new-instance v0, Lcom/google/android/gms/internal/ads/zzz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzz;-><init>()V

    move/from16 v1, v27

    .line 128
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzz;->zzG(I)Lcom/google/android/gms/internal/ads/zzz;

    .line 129
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzz;->zzS(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzz;

    move-object/from16 v3, v41

    .line 130
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzz;->zzx(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzz;

    .line 131
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzz;->zzX(I)Lcom/google/android/gms/internal/ads/zzz;

    .line 132
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzz;->zzF(I)Lcom/google/android/gms/internal/ads/zzz;

    move/from16 v3, v44

    .line 133
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzz;->zzP(F)Lcom/google/android/gms/internal/ads/zzz;

    move/from16 v3, v26

    .line 134
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzz;->zzR(I)Lcom/google/android/gms/internal/ads/zzz;

    move-object/from16 v4, v42

    .line 135
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzz;->zzQ([B)Lcom/google/android/gms/internal/ads/zzz;

    .line 136
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzz;->zzV(I)Lcom/google/android/gms/internal/ads/zzz;

    .line 137
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzz;->zzI(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzz;

    .line 138
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzz;->zzB(Lcom/google/android/gms/internal/ads/zzs;)Lcom/google/android/gms/internal/ads/zzz;

    move-object/from16 v2, v43

    .line 139
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzz;->zzy(Lcom/google/android/gms/internal/ads/zzm;)Lcom/google/android/gms/internal/ads/zzz;

    .line 140
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzz;->zzY()Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/gms/internal/ads/zzabq;->zzb:Lcom/google/android/gms/internal/ads/zzab;

    goto :goto_36

    :cond_4f
    move/from16 v3, v26

    move/from16 v1, v27

    :goto_36
    add-int v15, v15, v23

    .line 141
    invoke-virtual {v14, v15}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    add-int/lit8 v0, v17, 0x1

    move-object/from16 v12, p4

    move v7, v1

    move v6, v3

    move-object v2, v9

    move-object v8, v14

    move-object/from16 v14, v18

    move-object/from16 v5, v20

    move/from16 v9, v22

    move-object/from16 v13, v32

    move/from16 v3, v33

    move-object/from16 v10, v39

    move-object/from16 v11, v40

    move-object/from16 v26, v45

    const/16 v4, 0xc

    const/4 v15, 0x3

    move-object/from16 v1, p1

    goto/16 :goto_10

    :cond_50
    move/from16 v22, v9

    move-object/from16 v39, v10

    move-object/from16 v40, v11

    move-object/from16 v32, v13

    move-object/from16 v18, v14

    move-object/from16 v45, v26

    move-object v9, v2

    const v0, 0x65647473

    move-object/from16 v2, v40

    .line 142
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzabl;->zza(I)Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v0

    if-eqz v0, :cond_56

    const v1, 0x656c7374

    .line 143
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzabl;->zzb(I)Lcom/google/android/gms/internal/ads/zzabm;

    move-result-object v0

    if-nez v0, :cond_51

    const/4 v8, 0x0

    goto :goto_3a

    .line 144
    :cond_51
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzabm;->zza:Lcom/google/android/gms/internal/ads/zzfd;

    const/16 v1, 0x8

    .line 145
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    .line 146
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzabn;->zze(I)I

    move-result v1

    .line 147
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfd;->zzn()I

    move-result v3

    new-array v4, v3, [J

    new-array v5, v3, [J

    const/4 v6, 0x0

    :goto_37
    if-ge v6, v3, :cond_55

    const/4 v7, 0x1

    if-ne v1, v7, :cond_52

    .line 148
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfd;->zzt()J

    move-result-wide v10

    goto :goto_38

    :cond_52
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfd;->zzs()J

    move-result-wide v10

    :goto_38
    aput-wide v10, v4, v6

    if-ne v1, v7, :cond_53

    .line 149
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfd;->zzr()J

    move-result-wide v10

    goto :goto_39

    :cond_53
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v8

    int-to-long v10, v8

    :goto_39
    aput-wide v10, v5, v6

    .line 150
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfd;->zzy()S

    move-result v8

    if-ne v8, v7, :cond_54

    const/4 v7, 0x2

    .line 151
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzfd;->zzG(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_37

    .line 152
    :cond_54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported media rate."

    .line 153
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_55
    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    :goto_3a
    if-eqz v8, :cond_56

    .line 155
    iget-object v0, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, [J

    .line 156
    iget-object v1, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [J

    goto :goto_3b

    :cond_56
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_3b
    iget-object v3, v9, Lcom/google/android/gms/internal/ads/zzabq;->zzb:Lcom/google/android/gms/internal/ads/zzab;

    if-nez v3, :cond_57

    move-object/from16 v0, p7

    goto/16 :goto_1

    :cond_57
    new-instance v8, Lcom/google/android/gms/internal/ads/zzack;

    invoke-static/range {v18 .. v18}, Lcom/google/android/gms/internal/ads/zzabt;->zza(Lcom/google/android/gms/internal/ads/zzabt;)I

    move-result v17

    move-object/from16 v3, v39

    .line 157
    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    .line 158
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    iget-object v3, v9, Lcom/google/android/gms/internal/ads/zzabq;->zzb:Lcom/google/android/gms/internal/ads/zzab;

    iget v4, v9, Lcom/google/android/gms/internal/ads/zzabq;->zzd:I

    iget-object v5, v9, Lcom/google/android/gms/internal/ads/zzabq;->zza:[Lcom/google/android/gms/internal/ads/zzacl;

    iget v6, v9, Lcom/google/android/gms/internal/ads/zzabq;->zzc:I

    move-object/from16 v16, v8

    move/from16 v18, v22

    move-wide/from16 v21, v29

    move-wide/from16 v23, v24

    move-object/from16 v25, v3

    move/from16 v26, v4

    move-object/from16 v27, v5

    move/from16 v28, v6

    move-object/from16 v29, v0

    move-object/from16 v30, v1

    invoke-direct/range {v16 .. v30}, Lcom/google/android/gms/internal/ads/zzack;-><init>(IIJJJLcom/google/android/gms/internal/ads/zzab;I[Lcom/google/android/gms/internal/ads/zzacl;I[J[J)V

    move-object/from16 v0, p7

    .line 159
    :goto_3c
    invoke-interface {v0, v8}, Lcom/google/android/gms/internal/ads/zzfpv;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/google/android/gms/internal/ads/zzack;

    if-eqz v4, :cond_93

    const v1, 0x6d646961

    .line 160
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzabl;->zza(I)Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v1

    .line 161
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v2, 0x6d696e66

    .line 162
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzabl;->zza(I)Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v1

    .line 163
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v2, 0x7374626c

    .line 164
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzabl;->zza(I)Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v1

    .line 165
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v2, 0x7374737a

    .line 166
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzabl;->zzb(I)Lcom/google/android/gms/internal/ads/zzabm;

    move-result-object v2

    if-eqz v2, :cond_58

    new-instance v3, Lcom/google/android/gms/internal/ads/zzabr;

    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zzack;->zzf:Lcom/google/android/gms/internal/ads/zzab;

    .line 167
    invoke-direct {v3, v2, v5}, Lcom/google/android/gms/internal/ads/zzabr;-><init>(Lcom/google/android/gms/internal/ads/zzabm;Lcom/google/android/gms/internal/ads/zzab;)V

    goto :goto_3d

    :cond_58
    const v2, 0x73747a32

    .line 168
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzabl;->zzb(I)Lcom/google/android/gms/internal/ads/zzabm;

    move-result-object v2

    if-eqz v2, :cond_92

    .line 169
    new-instance v3, Lcom/google/android/gms/internal/ads/zzabs;

    .line 170
    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/zzabs;-><init>(Lcom/google/android/gms/internal/ads/zzabm;)V

    .line 171
    :goto_3d
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzabp;->zzb()I

    move-result v2

    if-nez v2, :cond_59

    new-instance v1, Lcom/google/android/gms/internal/ads/zzacn;

    const/4 v2, 0x0

    new-array v5, v2, [J

    new-array v6, v2, [I

    const/4 v7, 0x0

    new-array v8, v2, [J

    new-array v9, v2, [I

    const-wide/16 v10, 0x0

    move-object v3, v1

    .line 172
    invoke-direct/range {v3 .. v11}, Lcom/google/android/gms/internal/ads/zzacn;-><init>(Lcom/google/android/gms/internal/ads/zzack;[J[II[J[IJ)V

    :goto_3e
    move-object/from16 v0, v32

    goto/16 :goto_67

    :cond_59
    const v5, 0x7374636f

    .line 173
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzabl;->zzb(I)Lcom/google/android/gms/internal/ads/zzabm;

    move-result-object v5

    if-nez v5, :cond_5a

    const v5, 0x636f3634

    .line 174
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzabl;->zzb(I)Lcom/google/android/gms/internal/ads/zzabm;

    move-result-object v5

    .line 175
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v5

    const/4 v5, 0x1

    goto :goto_3f

    :cond_5a
    move-object v6, v5

    const/4 v5, 0x0

    .line 176
    :goto_3f
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzabm;->zza:Lcom/google/android/gms/internal/ads/zzfd;

    const v7, 0x73747363

    .line 177
    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzabl;->zzb(I)Lcom/google/android/gms/internal/ads/zzabm;

    move-result-object v7

    .line 178
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzabm;->zza:Lcom/google/android/gms/internal/ads/zzfd;

    const v8, 0x73747473

    .line 180
    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/zzabl;->zzb(I)Lcom/google/android/gms/internal/ads/zzabm;

    move-result-object v8

    .line 181
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzabm;->zza:Lcom/google/android/gms/internal/ads/zzfd;

    const v9, 0x73747373

    .line 183
    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/zzabl;->zzb(I)Lcom/google/android/gms/internal/ads/zzabm;

    move-result-object v9

    if-eqz v9, :cond_5b

    iget-object v9, v9, Lcom/google/android/gms/internal/ads/zzabm;->zza:Lcom/google/android/gms/internal/ads/zzfd;

    goto :goto_40

    :cond_5b
    const/4 v9, 0x0

    :goto_40
    const v10, 0x63747473

    .line 184
    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/ads/zzabl;->zzb(I)Lcom/google/android/gms/internal/ads/zzabm;

    move-result-object v1

    if-eqz v1, :cond_5c

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzabm;->zza:Lcom/google/android/gms/internal/ads/zzfd;

    goto :goto_41

    :cond_5c
    const/4 v1, 0x0

    :goto_41
    new-instance v10, Lcom/google/android/gms/internal/ads/zzabo;

    .line 185
    invoke-direct {v10, v7, v6, v5}, Lcom/google/android/gms/internal/ads/zzabo;-><init>(Lcom/google/android/gms/internal/ads/zzfd;Lcom/google/android/gms/internal/ads/zzfd;Z)V

    const/16 v5, 0xc

    .line 186
    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    .line 187
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzfd;->zzn()I

    move-result v6

    const/4 v7, -0x1

    add-int/2addr v6, v7

    .line 188
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzfd;->zzn()I

    move-result v7

    .line 189
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzfd;->zzn()I

    move-result v11

    if-eqz v1, :cond_5d

    .line 190
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    .line 191
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfd;->zzn()I

    move-result v12

    goto :goto_42

    :cond_5d
    const/4 v12, 0x0

    :goto_42
    if-eqz v9, :cond_5f

    .line 192
    invoke-virtual {v9, v5}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    .line 193
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzfd;->zzn()I

    move-result v5

    if-lez v5, :cond_5e

    .line 194
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzfd;->zzn()I

    move-result v13

    const/4 v14, -0x1

    add-int/2addr v13, v14

    goto :goto_44

    :cond_5e
    const/4 v14, -0x1

    const/4 v9, 0x0

    goto :goto_43

    :cond_5f
    const/4 v14, -0x1

    const/4 v5, 0x0

    :goto_43
    const/4 v13, -0x1

    :goto_44
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzabp;->zza()I

    move-result v15

    iget-object v0, v4, Lcom/google/android/gms/internal/ads/zzack;->zzf:Lcom/google/android/gms/internal/ads/zzab;

    .line 195
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzab;->zzm:Ljava/lang/String;

    if-eq v15, v14, :cond_66

    const-string v14, "audio/raw"

    .line 196
    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_60

    const-string v14, "audio/g711-mlaw"

    .line 197
    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_60

    const-string v14, "audio/g711-alaw"

    .line 198
    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    :cond_60
    if-nez v6, :cond_66

    if-nez v12, :cond_65

    if-nez v5, :cond_65

    iget v0, v10, Lcom/google/android/gms/internal/ads/zzabo;->zza:I

    new-array v1, v0, [J

    new-array v3, v0, [I

    .line 199
    :goto_45
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzabo;->zza()Z

    move-result v5

    if-eqz v5, :cond_61

    iget v5, v10, Lcom/google/android/gms/internal/ads/zzabo;->zzb:I

    iget-wide v6, v10, Lcom/google/android/gms/internal/ads/zzabo;->zzd:J

    .line 200
    aput-wide v6, v1, v5

    iget v6, v10, Lcom/google/android/gms/internal/ads/zzabo;->zzc:I

    .line 201
    aput v6, v3, v5

    goto :goto_45

    :cond_61
    int-to-long v5, v11

    const/16 v7, 0x2000

    .line 202
    div-int/2addr v7, v15

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_46
    if-ge v8, v0, :cond_62

    .line 203
    aget v10, v3, v8

    .line 204
    invoke-static {v10, v7}, Lcom/google/android/gms/internal/ads/zzfn;->zze(II)I

    move-result v10

    add-int/2addr v9, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_46

    .line 205
    :cond_62
    new-array v8, v9, [J

    .line 206
    new-array v10, v9, [I

    .line 207
    new-array v11, v9, [J

    .line 208
    new-array v9, v9, [I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    :goto_47
    if-ge v12, v0, :cond_64

    .line 209
    aget v17, v3, v12

    .line 210
    aget-wide v18, v1, v12

    move/from16 v46, v17

    move/from16 v17, v0

    move/from16 v0, v46

    :goto_48
    if-lez v0, :cond_63

    .line 211
    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v20

    .line 212
    aput-wide v18, v8, v16

    move-object/from16 v21, v1

    mul-int v1, v15, v20

    .line 213
    aput v1, v10, v16

    .line 214
    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v14

    move v1, v7

    move-object/from16 v22, v8

    int-to-long v7, v13

    mul-long v7, v7, v5

    .line 215
    aput-wide v7, v11, v16

    const/4 v7, 0x1

    .line 216
    aput v7, v9, v16

    .line 217
    aget v7, v10, v16

    int-to-long v7, v7

    add-long v18, v18, v7

    add-int v13, v13, v20

    sub-int v0, v0, v20

    add-int/lit8 v16, v16, 0x1

    move v7, v1

    move-object/from16 v1, v21

    move-object/from16 v8, v22

    goto :goto_48

    :cond_63
    move-object/from16 v21, v1

    move v1, v7

    move-object/from16 v22, v8

    add-int/lit8 v12, v12, 0x1

    move/from16 v0, v17

    move-object/from16 v1, v21

    goto :goto_47

    :cond_64
    move-object/from16 v22, v8

    int-to-long v0, v13

    mul-long v5, v5, v0

    move-wide v0, v5

    move-object v12, v9

    move-object v15, v11

    move-object/from16 v9, v22

    move-object v11, v4

    goto/16 :goto_57

    :cond_65
    const/4 v6, 0x0

    .line 218
    :cond_66
    new-array v0, v2, [J

    new-array v14, v2, [I

    new-array v15, v2, [J

    move/from16 v16, v5

    new-array v5, v2, [I

    move-object/from16 v19, v4

    move/from16 v17, v7

    move v4, v11

    move/from16 v20, v12

    move v12, v13

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/16 v18, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    move v13, v6

    const/4 v6, 0x0

    :goto_49
    if-ge v6, v2, :cond_72

    const/16 v26, 0x1

    :goto_4a
    if-nez v18, :cond_68

    .line 219
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzabo;->zza()Z

    move-result v26

    if-eqz v26, :cond_67

    move/from16 v27, v11

    move/from16 v28, v12

    iget-wide v11, v10, Lcom/google/android/gms/internal/ads/zzabo;->zzd:J

    move/from16 v29, v2

    iget v2, v10, Lcom/google/android/gms/internal/ads/zzabo;->zzc:I

    move/from16 v18, v2

    move-wide/from16 v22, v11

    move/from16 v11, v27

    move/from16 v12, v28

    move/from16 v2, v29

    goto :goto_4a

    :cond_67
    move/from16 v29, v2

    move/from16 v27, v11

    move/from16 v28, v12

    const/4 v2, 0x0

    goto :goto_4b

    :cond_68
    move/from16 v29, v2

    move/from16 v27, v11

    move/from16 v28, v12

    move/from16 v2, v18

    :goto_4b
    if-nez v26, :cond_69

    const-string v2, "Unexpected end of chunk data"

    move-object/from16 v11, v45

    .line 220
    invoke-static {v11, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-static {v0, v6}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    .line 222
    invoke-static {v14, v6}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v14

    .line 223
    invoke-static {v15, v6}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v15

    .line 224
    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v5

    move v2, v6

    move-object/from16 v36, v11

    move/from16 v12, v27

    goto/16 :goto_50

    :cond_69
    move-object/from16 v11, v45

    if-eqz v1, :cond_6c

    :goto_4c
    if-nez v21, :cond_6b

    if-lez v20, :cond_6a

    .line 225
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfd;->zzn()I

    move-result v21

    .line 226
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v27

    add-int/lit8 v20, v20, -0x1

    goto :goto_4c

    :cond_6a
    const/4 v12, -0x1

    const/16 v21, 0x0

    goto :goto_4d

    :cond_6b
    const/4 v12, -0x1

    :goto_4d
    add-int/lit8 v21, v21, -0x1

    :cond_6c
    move/from16 v12, v27

    .line 227
    aput-wide v22, v0, v6

    move-object/from16 v26, v0

    .line 228
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzabp;->zzc()I

    move-result v0

    aput v0, v14, v6

    if-le v0, v7, :cond_6d

    move v7, v0

    :cond_6d
    move-object v0, v10

    move-object/from16 v36, v11

    int-to-long v10, v12

    add-long v10, v24, v10

    .line 229
    aput-wide v10, v15, v6

    if-nez v9, :cond_6e

    const/4 v10, 0x1

    goto :goto_4e

    :cond_6e
    const/4 v10, 0x0

    .line 230
    :goto_4e
    aput v10, v5, v6

    move/from16 v10, v28

    if-ne v6, v10, :cond_6f

    const/4 v11, 0x1

    .line 231
    aput v11, v5, v6

    add-int/lit8 v16, v16, -0x1

    if-lez v16, :cond_6f

    .line 232
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzfd;->zzn()I

    move-result v10

    const/4 v11, -0x1

    add-int/2addr v10, v11

    :cond_6f
    move-object v11, v9

    move/from16 v18, v10

    int-to-long v9, v4

    add-long v24, v24, v9

    add-int/lit8 v9, v17, -0x1

    if-nez v9, :cond_71

    if-lez v13, :cond_70

    .line 234
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzfd;->zzn()I

    move-result v4

    .line 235
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v9

    add-int/lit8 v13, v13, -0x1

    move/from16 v17, v4

    move v4, v9

    goto :goto_4f

    :cond_70
    const/16 v17, 0x0

    goto :goto_4f

    :cond_71
    move/from16 v17, v9

    .line 236
    :goto_4f
    aget v9, v14, v6

    int-to-long v9, v9

    add-long v22, v22, v9

    const/4 v9, -0x1

    add-int/2addr v2, v9

    add-int/lit8 v6, v6, 0x1

    move-object v10, v0

    move-object v9, v11

    move v11, v12

    move/from16 v12, v18

    move-object/from16 v0, v26

    move-object/from16 v45, v36

    move/from16 v18, v2

    move/from16 v2, v29

    goto/16 :goto_49

    :cond_72
    move-object/from16 v26, v0

    move/from16 v29, v2

    move-object/from16 v36, v45

    move v12, v11

    :goto_50
    int-to-long v3, v12

    add-long v3, v24, v3

    if-eqz v1, :cond_74

    :goto_51
    if-lez v20, :cond_74

    .line 237
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfd;->zzn()I

    move-result v6

    if-eqz v6, :cond_73

    const/4 v1, 0x0

    goto :goto_52

    .line 238
    :cond_73
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    add-int/lit8 v20, v20, -0x1

    goto :goto_51

    :cond_74
    const/4 v1, 0x1

    :goto_52
    if-nez v16, :cond_7a

    if-nez v17, :cond_79

    if-nez v18, :cond_78

    if-nez v13, :cond_77

    if-nez v21, :cond_76

    if-nez v1, :cond_75

    move-object/from16 v11, v19

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    goto :goto_53

    :cond_75
    move-object/from16 v16, v0

    move/from16 v17, v2

    move-object/from16 v11, v19

    goto/16 :goto_56

    :cond_76
    move-object/from16 v11, v19

    move/from16 v10, v21

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_53
    const/4 v13, 0x0

    goto :goto_54

    :cond_77
    move-object/from16 v11, v19

    move/from16 v10, v21

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    goto :goto_54

    :cond_78
    move/from16 v9, v18

    move-object/from16 v11, v19

    move/from16 v10, v21

    const/4 v6, 0x0

    const/4 v8, 0x0

    goto :goto_54

    :cond_79
    move/from16 v8, v17

    move/from16 v9, v18

    move-object/from16 v11, v19

    move/from16 v10, v21

    const/4 v6, 0x0

    goto :goto_54

    :cond_7a
    move/from16 v6, v16

    move/from16 v8, v17

    move/from16 v9, v18

    move-object/from16 v11, v19

    move/from16 v10, v21

    .line 239
    :goto_54
    iget v12, v11, Lcom/google/android/gms/internal/ads/zzack;->zza:I

    move-object/from16 v16, v0

    const/4 v0, 0x1

    if-eq v0, v1, :cond_7b

    const-string v0, ", ctts invalid"

    goto :goto_55

    :cond_7b
    const-string v0, ""

    :goto_55
    new-instance v1, Ljava/lang/StringBuilder;

    move/from16 v17, v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit16 v2, v2, 0x106

    .line 240
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Inconsistent stbl box for track "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": remainingSynchronizationSamples "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", remainingSamplesAtTimestampDelta "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", remainingSamplesInChunk "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", remainingTimestampDeltaChanges "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", remainingSamplesAtTimestampOffset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v36

    .line 241
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_56
    move-wide v0, v3

    move-object v12, v5

    move-object v10, v14

    move-object/from16 v9, v16

    move/from16 v2, v17

    move v14, v7

    :goto_57
    const-wide/32 v5, 0xf4240

    .line 242
    iget-wide v7, v11, Lcom/google/android/gms/internal/ads/zzack;->zzc:J

    move-wide v3, v0

    .line 243
    invoke-static/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzfn;->zzt(JJJ)J

    move-result-wide v16

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzack;->zzh:[J

    if-nez v3, :cond_7c

    const-wide/32 v0, 0xf4240

    iget-wide v2, v11, Lcom/google/android/gms/internal/ads/zzack;->zzc:J

    .line 244
    invoke-static {v15, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfn;->zzN([JJJ)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzacn;

    move-object v3, v1

    move-object v4, v11

    move-object v5, v9

    move-object v6, v10

    move v7, v14

    move-object v8, v15

    move-object v9, v12

    move-wide/from16 v10, v16

    .line 245
    invoke-direct/range {v3 .. v11}, Lcom/google/android/gms/internal/ads/zzacn;-><init>(Lcom/google/android/gms/internal/ads/zzack;[J[II[J[IJ)V

    goto/16 :goto_3e

    :cond_7c
    array-length v4, v3

    const/4 v5, 0x1

    if-ne v4, v5, :cond_7f

    iget v4, v11, Lcom/google/android/gms/internal/ads/zzack;->zzb:I

    if-ne v4, v5, :cond_7f

    .line 246
    array-length v4, v15

    const/4 v5, 0x2

    if-lt v4, v5, :cond_7f

    iget-object v5, v11, Lcom/google/android/gms/internal/ads/zzack;->zzi:[J

    .line 247
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x0

    .line 248
    aget-wide v7, v5, v6

    .line 249
    aget-wide v16, v3, v6

    move-wide/from16 v22, v7

    iget-wide v6, v11, Lcom/google/android/gms/internal/ads/zzack;->zzc:J

    move v5, v2

    iget-wide v2, v11, Lcom/google/android/gms/internal/ads/zzack;->zzd:J

    move-wide/from16 v18, v6

    move-wide/from16 v20, v2

    .line 250
    invoke-static/range {v16 .. v21}, Lcom/google/android/gms/internal/ads/zzfn;->zzt(JJJ)J

    move-result-wide v2

    add-long v7, v22, v2

    add-int/lit8 v2, v4, -0x1

    const/4 v3, 0x4

    const/4 v6, 0x0

    .line 251
    invoke-static {v3, v6, v2}, Lcom/google/android/gms/internal/ads/zzfn;->zzf(III)I

    move-result v3

    add-int/lit8 v4, v4, -0x4

    .line 252
    invoke-static {v4, v6, v2}, Lcom/google/android/gms/internal/ads/zzfn;->zzf(III)I

    move-result v2

    .line 253
    aget-wide v16, v15, v6

    cmp-long v4, v16, v22

    if-gtz v4, :cond_7e

    aget-wide v3, v15, v3

    cmp-long v13, v22, v3

    if-gez v13, :cond_7e

    aget-wide v2, v15, v2

    cmp-long v4, v2, v7

    if-gez v4, :cond_7e

    cmp-long v2, v7, v0

    if-gtz v2, :cond_7e

    .line 254
    aget-wide v2, v15, v6

    sub-long v16, v22, v2

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzack;->zzf:Lcom/google/android/gms/internal/ads/zzab;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzab;->zzA:I

    int-to-long v2, v2

    move v6, v5

    iget-wide v4, v11, Lcom/google/android/gms/internal/ads/zzack;->zzc:J

    move-wide/from16 v18, v2

    move-wide/from16 v20, v4

    .line 255
    invoke-static/range {v16 .. v21}, Lcom/google/android/gms/internal/ads/zzfn;->zzt(JJJ)J

    move-result-wide v2

    sub-long v16, v0, v7

    iget-object v4, v11, Lcom/google/android/gms/internal/ads/zzack;->zzf:Lcom/google/android/gms/internal/ads/zzab;

    .line 256
    iget v4, v4, Lcom/google/android/gms/internal/ads/zzab;->zzA:I

    int-to-long v4, v4

    iget-wide v7, v11, Lcom/google/android/gms/internal/ads/zzack;->zzc:J

    move-wide/from16 v18, v4

    move-wide/from16 v20, v7

    .line 257
    invoke-static/range {v16 .. v21}, Lcom/google/android/gms/internal/ads/zzfn;->zzt(JJJ)J

    move-result-wide v4

    const-wide/16 v7, 0x0

    cmp-long v13, v2, v7

    if-nez v13, :cond_7d

    cmp-long v13, v4, v7

    if-eqz v13, :cond_80

    :cond_7d
    const-wide/32 v7, 0x7fffffff

    cmp-long v13, v2, v7

    if-gtz v13, :cond_80

    const-wide/32 v7, 0x7fffffff

    cmp-long v13, v4, v7

    if-gtz v13, :cond_80

    long-to-int v0, v2

    move-object/from16 v2, p1

    iput v0, v2, Lcom/google/android/gms/internal/ads/zzxf;->zza:I

    long-to-int v0, v4

    iput v0, v2, Lcom/google/android/gms/internal/ads/zzxf;->zzb:I

    const-wide/32 v0, 0xf4240

    iget-wide v3, v11, Lcom/google/android/gms/internal/ads/zzack;->zzc:J

    .line 258
    invoke-static {v15, v0, v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzfn;->zzN([JJJ)V

    iget-object v0, v11, Lcom/google/android/gms/internal/ads/zzack;->zzh:[J

    const/4 v1, 0x0

    .line 259
    aget-wide v3, v0, v1

    iget-wide v7, v11, Lcom/google/android/gms/internal/ads/zzack;->zzd:J

    const-wide/32 v5, 0xf4240

    .line 260
    invoke-static/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzfn;->zzt(JJJ)J

    move-result-wide v0

    new-instance v13, Lcom/google/android/gms/internal/ads/zzacn;

    move-object v3, v13

    move-object v4, v11

    move-object v5, v9

    move-object v6, v10

    move v7, v14

    move-object v8, v15

    move-object v9, v12

    move-wide v10, v0

    .line 261
    invoke-direct/range {v3 .. v11}, Lcom/google/android/gms/internal/ads/zzacn;-><init>(Lcom/google/android/gms/internal/ads/zzack;[J[II[J[IJ)V

    goto :goto_5a

    :cond_7e
    move-object/from16 v2, p1

    move v6, v5

    goto :goto_58

    :cond_7f
    move v6, v2

    :cond_80
    move-object/from16 v2, p1

    :goto_58
    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzack;->zzh:[J

    .line 262
    array-length v4, v3

    const/4 v5, 0x1

    if-ne v4, v5, :cond_83

    const/4 v5, 0x0

    aget-wide v7, v3, v5

    const-wide/16 v3, 0x0

    cmp-long v13, v7, v3

    if-nez v13, :cond_82

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzack;->zzi:[J

    .line 263
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    aget-wide v6, v3, v5

    const/4 v3, 0x0

    .line 265
    :goto_59
    array-length v4, v15

    if-ge v3, v4, :cond_81

    .line 266
    aget-wide v4, v15, v3

    sub-long v16, v4, v6

    const-wide/32 v18, 0xf4240

    iget-wide v4, v11, Lcom/google/android/gms/internal/ads/zzack;->zzc:J

    move-wide/from16 v20, v4

    .line 267
    invoke-static/range {v16 .. v21}, Lcom/google/android/gms/internal/ads/zzfn;->zzt(JJJ)J

    move-result-wide v4

    aput-wide v4, v15, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_59

    :cond_81
    iget-wide v3, v11, Lcom/google/android/gms/internal/ads/zzack;->zzc:J

    sub-long v16, v0, v6

    const-wide/32 v18, 0xf4240

    move-wide/from16 v20, v3

    .line 268
    invoke-static/range {v16 .. v21}, Lcom/google/android/gms/internal/ads/zzfn;->zzt(JJJ)J

    move-result-wide v0

    new-instance v13, Lcom/google/android/gms/internal/ads/zzacn;

    move-object v3, v13

    move-object v4, v11

    move-object v5, v9

    move-object v6, v10

    move v7, v14

    move-object v8, v15

    move-object v9, v12

    move-wide v10, v0

    .line 269
    invoke-direct/range {v3 .. v11}, Lcom/google/android/gms/internal/ads/zzacn;-><init>(Lcom/google/android/gms/internal/ads/zzack;[J[II[J[IJ)V

    :goto_5a
    move-object v1, v13

    goto/16 :goto_3e

    :cond_82
    const/4 v4, 0x1

    :cond_83
    iget v0, v11, Lcom/google/android/gms/internal/ads/zzack;->zzb:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_84

    const/4 v3, 0x1

    goto :goto_5b

    :cond_84
    const/4 v3, 0x0

    :goto_5b
    new-array v0, v4, [I

    new-array v1, v4, [I

    iget-object v4, v11, Lcom/google/android/gms/internal/ads/zzack;->zzi:[J

    .line 270
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v13, 0x0

    .line 271
    :goto_5c
    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzack;->zzh:[J

    move/from16 v16, v14

    .line 272
    array-length v14, v2

    if-ge v5, v14, :cond_88

    move-object v14, v9

    move-object/from16 v17, v10

    .line 273
    aget-wide v9, v4, v5

    const-wide/16 v18, -0x1

    cmp-long v20, v9, v18

    if-eqz v20, :cond_87

    .line 274
    aget-wide v21, v2, v5

    move v2, v13

    move-object/from16 v18, v14

    iget-wide v13, v11, Lcom/google/android/gms/internal/ads/zzack;->zzc:J

    move/from16 v19, v6

    move/from16 v20, v7

    iget-wide v6, v11, Lcom/google/android/gms/internal/ads/zzack;->zzd:J

    move-wide/from16 v23, v13

    move-wide/from16 v25, v6

    .line 275
    invoke-static/range {v21 .. v26}, Lcom/google/android/gms/internal/ads/zzfn;->zzt(JJJ)J

    move-result-wide v6

    const/4 v13, 0x1

    .line 276
    invoke-static {v15, v9, v10, v13, v13}, Lcom/google/android/gms/internal/ads/zzfn;->zzd([JJZZ)I

    move-result v14

    aput v14, v0, v5

    add-long/2addr v9, v6

    const/4 v14, 0x0

    .line 277
    invoke-static {v15, v9, v10, v3, v14}, Lcom/google/android/gms/internal/ads/zzfn;->zzb([JJZZ)I

    move-result v6

    aput v6, v1, v5

    .line 278
    :goto_5d
    aget v6, v0, v5

    aget v7, v1, v5

    if-ge v6, v7, :cond_85

    aget v9, v12, v6

    and-int/2addr v9, v13

    if-nez v9, :cond_85

    add-int/lit8 v6, v6, 0x1

    .line 279
    aput v6, v0, v5

    const/4 v13, 0x1

    goto :goto_5d

    :cond_85
    sub-int v9, v7, v6

    add-int v9, v9, v20

    if-eq v8, v6, :cond_86

    const/4 v6, 0x1

    goto :goto_5e

    :cond_86
    const/4 v6, 0x0

    :goto_5e
    or-int/2addr v2, v6

    move v13, v2

    move v8, v7

    move v7, v9

    goto :goto_5f

    :cond_87
    move/from16 v19, v6

    move/from16 v20, v7

    move v2, v13

    move-object/from16 v18, v14

    const/4 v14, 0x0

    :goto_5f
    add-int/lit8 v5, v5, 0x1

    move/from16 v14, v16

    move-object/from16 v10, v17

    move-object/from16 v9, v18

    move/from16 v6, v19

    goto :goto_5c

    :cond_88
    move v5, v6

    move-object/from16 v18, v9

    move-object/from16 v17, v10

    move v2, v13

    const/4 v14, 0x0

    if-eq v7, v5, :cond_89

    const/4 v3, 0x1

    goto :goto_60

    :cond_89
    const/4 v3, 0x0

    :goto_60
    or-int/2addr v2, v3

    if-eqz v2, :cond_8a

    .line 280
    new-array v3, v7, [J

    move-object v5, v3

    goto :goto_61

    :cond_8a
    move-object/from16 v5, v18

    :goto_61
    if-eqz v2, :cond_8b

    .line 281
    new-array v3, v7, [I

    move-object v6, v3

    goto :goto_62

    :cond_8b
    move-object/from16 v6, v17

    :goto_62
    const/4 v3, 0x1

    if-ne v3, v2, :cond_8c

    const/4 v3, 0x0

    goto :goto_63

    :cond_8c
    move/from16 v3, v16

    :goto_63
    if-eqz v2, :cond_8d

    .line 282
    new-array v4, v7, [I

    move-object v9, v4

    goto :goto_64

    :cond_8d
    move-object v9, v12

    .line 283
    :goto_64
    new-array v8, v7, [J

    move v7, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v25, 0x0

    :goto_65
    iget-object v10, v11, Lcom/google/android/gms/internal/ads/zzack;->zzh:[J

    .line 284
    array-length v10, v10

    if-ge v3, v10, :cond_91

    iget-object v10, v11, Lcom/google/android/gms/internal/ads/zzack;->zzi:[J

    .line 285
    aget-wide v27, v10, v3

    .line 286
    aget v10, v0, v3

    .line 287
    aget v13, v1, v3

    if-eqz v2, :cond_8e

    sub-int v14, v13, v10

    move-object/from16 v16, v0

    move-object/from16 v0, v18

    .line 288
    invoke-static {v0, v10, v5, v4, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v17

    .line 289
    invoke-static {v0, v10, v6, v4, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 290
    invoke-static {v12, v10, v9, v4, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_66

    :cond_8e
    move-object/from16 v16, v0

    move-object/from16 v0, v17

    :goto_66
    if-ge v10, v13, :cond_90

    const-wide/32 v21, 0xf4240

    move-object v14, v12

    move/from16 v17, v13

    iget-wide v12, v11, Lcom/google/android/gms/internal/ads/zzack;->zzd:J

    move-wide/from16 v19, v25

    move-wide/from16 v23, v12

    .line 291
    invoke-static/range {v19 .. v24}, Lcom/google/android/gms/internal/ads/zzfn;->zzt(JJJ)J

    move-result-wide v12

    .line 292
    aget-wide v19, v15, v10

    move-object/from16 v22, v14

    move-object/from16 v21, v15

    sub-long v14, v19, v27

    move-object/from16 v20, v0

    move-object/from16 v19, v1

    const-wide/16 v0, 0x0

    .line 293
    invoke-static {v0, v1, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v33

    const-wide/32 v35, 0xf4240

    iget-wide v14, v11, Lcom/google/android/gms/internal/ads/zzack;->zzc:J

    move-wide/from16 v37, v14

    .line 294
    invoke-static/range {v33 .. v38}, Lcom/google/android/gms/internal/ads/zzfn;->zzt(JJJ)J

    move-result-wide v14

    add-long/2addr v12, v14

    .line 295
    aput-wide v12, v8, v4

    if-eqz v2, :cond_8f

    .line 296
    aget v12, v6, v4

    if-le v12, v7, :cond_8f

    .line 297
    aget v7, v20, v10

    :cond_8f
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v10, v10, 0x1

    move/from16 v13, v17

    move-object/from16 v1, v19

    move-object/from16 v0, v20

    move-object/from16 v15, v21

    move-object/from16 v12, v22

    goto :goto_66

    :cond_90
    move-object/from16 v20, v0

    move-object/from16 v19, v1

    move-object/from16 v22, v12

    move-object/from16 v21, v15

    const-wide/16 v0, 0x0

    iget-object v10, v11, Lcom/google/android/gms/internal/ads/zzack;->zzh:[J

    .line 298
    aget-wide v12, v10, v3

    add-long v25, v25, v12

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v17, v20

    move-object/from16 v12, v22

    const/4 v14, 0x0

    goto/16 :goto_65

    :cond_91
    iget-wide v0, v11, Lcom/google/android/gms/internal/ads/zzack;->zzd:J

    const-wide/32 v21, 0xf4240

    move-wide/from16 v19, v25

    move-wide/from16 v23, v0

    .line 299
    invoke-static/range {v19 .. v24}, Lcom/google/android/gms/internal/ads/zzfn;->zzt(JJJ)J

    move-result-wide v0

    new-instance v2, Lcom/google/android/gms/internal/ads/zzacn;

    move-object v3, v2

    move-object v4, v11

    move-wide v10, v0

    .line 300
    invoke-direct/range {v3 .. v11}, Lcom/google/android/gms/internal/ads/zzacn;-><init>(Lcom/google/android/gms/internal/ads/zzack;[J[II[J[IJ)V

    move-object v1, v2

    goto/16 :goto_3e

    .line 301
    :goto_67
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_68

    :cond_92
    const-string v0, "Track has no sample table size information"

    const/4 v1, 0x0

    .line 302
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbj;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbj;

    move-result-object v0

    throw v0

    :cond_93
    move-object/from16 v0, v32

    :goto_68
    add-int/lit8 v15, v31, 0x1

    move-object/from16 v1, p1

    move-object/from16 v12, p4

    move-object v13, v0

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_94
    move-object v0, v13

    return-object v0
.end method

.method public static zzd(Lcom/google/android/gms/internal/ads/zzfd;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfd;->zzc()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzfd;->zzG(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v1

    const v2, 0x68646c72    # 4.3148E24f

    if-eq v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x4

    .line 3
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    return-void
.end method

.method private static zze(I)I
    .locals 1

    const v0, 0x736f756e

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const v0, 0x76696465

    if-ne p0, v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const v0, 0x74657874

    if-eq p0, v0, :cond_4

    const v0, 0x7362746c

    if-eq p0, v0, :cond_4

    const v0, 0x73756274

    if-eq p0, v0, :cond_4

    const v0, 0x636c6370

    if-ne p0, v0, :cond_2

    goto :goto_0

    :cond_2
    const v0, 0x6d657461

    if-ne p0, v0, :cond_3

    const/4 p0, 0x5

    return p0

    :cond_3
    const/4 p0, -0x1

    return p0

    :cond_4
    :goto_0
    const/4 p0, 0x3

    return p0
.end method

.method private static zzf(Lcom/google/android/gms/internal/ads/zzfd;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfd;->zzk()I

    move-result v0

    and-int/lit8 v1, v0, 0x7f

    :goto_0
    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfd;->zzk()I

    move-result v0

    shl-int/lit8 v1, v1, 0x7

    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method private static zzg(Lcom/google/android/gms/internal/ads/zzfd;)I
    .locals 1

    const/16 v0, 0x10

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result p0

    return p0
.end method

.method private static zzh(Lcom/google/android/gms/internal/ads/zzfd;I)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzfd;",
            "I)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    const/16 v0, 0xc

    add-int/2addr p1, v0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfd;->zzG(I)V

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzabu;->zzf(Lcom/google/android/gms/internal/ads/zzfd;)I

    const/4 v1, 0x2

    .line 4
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzfd;->zzG(I)V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfd;->zzk()I

    move-result v2

    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzfd;->zzG(I)V

    :cond_0
    and-int/lit8 v3, v2, 0x40

    if-eqz v3, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfd;->zzo()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/zzfd;->zzG(I)V

    :cond_1
    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_2

    .line 8
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzfd;->zzG(I)V

    .line 9
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfd;->zzG(I)V

    .line 10
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzabu;->zzf(Lcom/google/android/gms/internal/ads/zzfd;)I

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfd;->zzk()I

    move-result v1

    .line 12
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbi;->zzd(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "audio/mpeg"

    .line 13
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "audio/vnd.dts"

    .line 14
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "audio/vnd.dts.hd"

    .line 15
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 16
    :cond_3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfd;->zzG(I)V

    .line 17
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfd;->zzG(I)V

    .line 18
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzabu;->zzf(Lcom/google/android/gms/internal/ads/zzfd;)I

    move-result p1

    .line 19
    new-array v0, p1, [B

    const/4 v2, 0x0

    .line 20
    invoke-virtual {p0, v0, v2, p1}, Lcom/google/android/gms/internal/ads/zzfd;->zzB([BII)V

    .line 21
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_0
    const/4 p0, 0x0

    .line 22
    invoke-static {v1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static zzi(Lcom/google/android/gms/internal/ads/zzfd;II)Landroid/util/Pair;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzfd;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/internal/ads/zzacl;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbj;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfd;->zzc()I

    move-result v1

    :goto_0
    sub-int v2, v1, p1

    move/from16 v4, p2

    if-ge v2, v4, :cond_11

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lez v2, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    :goto_1
    const-string v8, "childAtomSize must be positive"

    .line 3
    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/zzwt;->zzb(ZLjava/lang/String;)V

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v7

    const v8, 0x73696e66

    if-ne v7, v8, :cond_10

    add-int/lit8 v7, v1, 0x8

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v15, 0x0

    :goto_2
    sub-int v12, v7, v1

    const/4 v13, 0x4

    if-ge v12, v2, :cond_4

    .line 5
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v12

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v14

    const v3, 0x66726d61

    if-ne v14, v3, :cond_1

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    goto :goto_3

    :cond_1
    const v3, 0x7363686d

    if-ne v14, v3, :cond_2

    .line 9
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzfd;->zzG(I)V

    .line 10
    sget-object v3, Lcom/google/android/gms/internal/ads/zzfpt;->zzc:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v13, v3}, Lcom/google/android/gms/internal/ads/zzfd;->zzx(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    :cond_2
    const v3, 0x73636869

    if-ne v14, v3, :cond_3

    move v9, v7

    move v10, v12

    :cond_3
    :goto_3
    add-int/2addr v7, v12

    goto :goto_2

    :cond_4
    const-string v3, "cenc"

    .line 11
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "cbc1"

    .line 12
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "cens"

    .line 13
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "cbcs"

    .line 14
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_d

    :cond_6
    :goto_4
    if-eqz v15, :cond_7

    const/4 v3, 0x1

    goto :goto_5

    :cond_7
    const/4 v3, 0x0

    :goto_5
    const-string v7, "frma atom is mandatory"

    .line 15
    invoke-static {v3, v7}, Lcom/google/android/gms/internal/ads/zzwt;->zzb(ZLjava/lang/String;)V

    if-eq v9, v8, :cond_8

    const/4 v3, 0x1

    goto :goto_6

    :cond_8
    const/4 v3, 0x0

    :goto_6
    const-string v7, "schi atom is mandatory"

    .line 16
    invoke-static {v3, v7}, Lcom/google/android/gms/internal/ads/zzwt;->zzb(ZLjava/lang/String;)V

    add-int/lit8 v3, v9, 0x8

    :goto_7
    sub-int v7, v3, v9

    if-ge v7, v10, :cond_d

    .line 17
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v7

    .line 19
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v8

    const v12, 0x74656e63

    if-ne v8, v12, :cond_c

    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v3

    .line 21
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzfd;->zzG(I)V

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzabn;->zze(I)I

    move-result v3

    if-nez v3, :cond_9

    .line 22
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzfd;->zzG(I)V

    const/4 v3, 0x0

    const/4 v14, 0x0

    goto :goto_8

    .line 23
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfd;->zzk()I

    move-result v3

    and-int/lit16 v7, v3, 0xf0

    shr-int/2addr v7, v13

    and-int/lit8 v3, v3, 0xf

    move v14, v7

    .line 24
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfd;->zzk()I

    move-result v7

    if-ne v7, v5, :cond_a

    const/4 v10, 0x1

    goto :goto_9

    :cond_a
    const/4 v10, 0x0

    .line 25
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfd;->zzk()I

    move-result v12

    const/16 v7, 0x10

    new-array v13, v7, [B

    .line 26
    invoke-virtual {v0, v13, v6, v7}, Lcom/google/android/gms/internal/ads/zzfd;->zzB([BII)V

    if-eqz v10, :cond_b

    if-nez v12, :cond_b

    .line 27
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfd;->zzk()I

    move-result v7

    new-array v8, v7, [B

    .line 28
    invoke-virtual {v0, v8, v6, v7}, Lcom/google/android/gms/internal/ads/zzfd;->zzB([BII)V

    move-object/from16 v16, v8

    goto :goto_a

    :cond_b
    const/16 v16, 0x0

    :goto_a
    new-instance v7, Lcom/google/android/gms/internal/ads/zzacl;

    move-object v9, v7

    move-object v8, v15

    move v15, v3

    .line 29
    invoke-direct/range {v9 .. v16}, Lcom/google/android/gms/internal/ads/zzacl;-><init>(ZLjava/lang/String;I[BII[B)V

    move-object v3, v7

    goto :goto_b

    :cond_c
    move-object v8, v15

    add-int/2addr v3, v7

    goto :goto_7

    :cond_d
    move-object v8, v15

    const/4 v3, 0x0

    :goto_b
    if-eqz v3, :cond_e

    goto :goto_c

    :cond_e
    const/4 v5, 0x0

    :goto_c
    const-string v6, "tenc atom is mandatory"

    .line 30
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzwt;->zzb(ZLjava/lang/String;)V

    .line 31
    sget v5, Lcom/google/android/gms/internal/ads/zzfn;->zza:I

    invoke-static {v8, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    :goto_d
    if-nez v3, :cond_f

    goto :goto_e

    :cond_f
    return-object v3

    :cond_10
    :goto_e
    add-int/2addr v1, v2

    goto/16 :goto_0

    :cond_11
    const/4 v1, 0x0

    return-object v1
.end method

.method private static zzj(Lcom/google/android/gms/internal/ads/zzfd;IIIILjava/lang/String;ZLcom/google/android/gms/internal/ads/zzs;Lcom/google/android/gms/internal/ads/zzabq;I)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbj;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    add-int/lit8 v7, v1, 0x10

    .line 1
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    const/4 v7, 0x6

    if-eqz p6, :cond_0

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfd;->zzo()I

    move-result v9

    .line 3
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzfd;->zzG(I)V

    goto :goto_0

    :cond_0
    const/16 v9, 0x8

    .line 4
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzfd;->zzG(I)V

    const/4 v9, 0x0

    :goto_0
    const/16 v10, 0x14

    const/16 v11, 0x10

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-eqz v9, :cond_3

    if-ne v9, v13, :cond_1

    goto :goto_1

    :cond_1
    if-ne v9, v12, :cond_2

    .line 5
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzfd;->zzG(I)V

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfd;->zzr()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v14

    .line 7
    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-int v7, v14

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfd;->zzn()I

    move-result v9

    .line 9
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzfd;->zzG(I)V

    goto :goto_2

    :cond_2
    return-void

    .line 10
    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfd;->zzo()I

    move-result v14

    .line 11
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzfd;->zzG(I)V

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfd;->zzl()I

    move-result v7

    if-ne v9, v13, :cond_4

    .line 13
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzfd;->zzG(I)V

    :cond_4
    move v9, v14

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfd;->zzc()I

    move-result v11

    const v14, 0x656e6361

    move/from16 v15, p1

    if-ne v15, v14, :cond_7

    .line 14
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzabu;->zzi(Lcom/google/android/gms/internal/ads/zzfd;II)Landroid/util/Pair;

    move-result-object v15

    if-eqz v15, :cond_6

    .line 15
    iget-object v14, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-nez v5, :cond_5

    const/4 v5, 0x0

    goto :goto_3

    .line 16
    :cond_5
    iget-object v10, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Lcom/google/android/gms/internal/ads/zzacl;

    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzacl;->zzb:Ljava/lang/String;

    invoke-virtual {v5, v10}, Lcom/google/android/gms/internal/ads/zzs;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzs;

    move-result-object v5

    .line 17
    :goto_3
    iget-object v10, v6, Lcom/google/android/gms/internal/ads/zzabq;->zza:[Lcom/google/android/gms/internal/ads/zzacl;

    .line 18
    iget-object v15, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, Lcom/google/android/gms/internal/ads/zzacl;

    aput-object v15, v10, p9

    .line 19
    :cond_6
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    goto :goto_4

    :cond_7
    move v14, v15

    :goto_4
    const v10, 0x61632d33

    const v15, 0x616c6163

    const-string v16, "audio/raw"

    const-string v12, "audio/ac4"

    if-ne v14, v10, :cond_8

    const-string v16, "audio/ac3"

    :goto_5
    const/4 v10, -0x1

    goto/16 :goto_9

    :cond_8
    const v10, 0x65632d33

    if-ne v14, v10, :cond_9

    const-string v16, "audio/eac3"

    goto :goto_5

    :cond_9
    const v10, 0x61632d34

    if-ne v14, v10, :cond_a

    move-object/from16 v16, v12

    goto :goto_5

    :cond_a
    const v10, 0x64747363

    if-ne v14, v10, :cond_b

    const-string v16, "audio/vnd.dts"

    goto :goto_5

    :cond_b
    const v10, 0x64747368

    if-eq v14, v10, :cond_1d

    const v10, 0x6474736c

    if-ne v14, v10, :cond_c

    goto/16 :goto_8

    :cond_c
    const v10, 0x64747365

    if-ne v14, v10, :cond_d

    const-string v16, "audio/vnd.dts.hd;profile=lbr"

    goto :goto_5

    :cond_d
    const v10, 0x64747378

    if-ne v14, v10, :cond_e

    const-string v16, "audio/vnd.dts.uhd;profile=p2"

    goto :goto_5

    :cond_e
    const v10, 0x73616d72

    if-ne v14, v10, :cond_f

    const-string v16, "audio/3gpp"

    goto :goto_5

    :cond_f
    const v10, 0x73617762

    if-ne v14, v10, :cond_10

    const-string v16, "audio/amr-wb"

    goto :goto_5

    :cond_10
    const v10, 0x6c70636d

    if-eq v14, v10, :cond_1c

    const v10, 0x736f7774

    if-ne v14, v10, :cond_11

    goto :goto_7

    :cond_11
    const v10, 0x74776f73

    if-ne v14, v10, :cond_12

    const/high16 v10, 0x10000000

    goto :goto_9

    :cond_12
    const v10, 0x2e6d7032

    if-eq v14, v10, :cond_1b

    const v10, 0x2e6d7033

    if-ne v14, v10, :cond_13

    goto :goto_6

    :cond_13
    const v10, 0x6d686131

    if-ne v14, v10, :cond_14

    const-string v16, "audio/mha1"

    goto :goto_5

    :cond_14
    const v10, 0x6d686d31

    if-ne v14, v10, :cond_15

    const-string v16, "audio/mhm1"

    goto :goto_5

    :cond_15
    if-ne v14, v15, :cond_16

    const-string v16, "audio/alac"

    goto :goto_5

    :cond_16
    const v10, 0x616c6177

    if-ne v14, v10, :cond_17

    const-string v16, "audio/g711-alaw"

    goto/16 :goto_5

    :cond_17
    const v10, 0x756c6177

    if-ne v14, v10, :cond_18

    const-string v16, "audio/g711-mlaw"

    goto/16 :goto_5

    :cond_18
    const v10, 0x4f707573

    if-ne v14, v10, :cond_19

    const-string v16, "audio/opus"

    goto/16 :goto_5

    :cond_19
    const v10, 0x664c6143

    if-ne v14, v10, :cond_1a

    const-string v16, "audio/flac"

    goto/16 :goto_5

    :cond_1a
    const/4 v10, -0x1

    const/16 v16, 0x0

    goto :goto_9

    :cond_1b
    :goto_6
    const-string v16, "audio/mpeg"

    goto/16 :goto_5

    :cond_1c
    :goto_7
    const/4 v10, 0x2

    goto :goto_9

    :cond_1d
    :goto_8
    const-string v16, "audio/vnd.dts.hd"

    goto/16 :goto_5

    :goto_9
    move-object/from16 v13, v16

    const/4 v14, 0x0

    const/16 v19, 0x0

    :goto_a
    sub-int v15, v11, v1

    if-ge v15, v2, :cond_2f

    .line 20
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v15

    if-lez v15, :cond_1e

    const/4 v8, 0x1

    goto :goto_b

    :cond_1e
    const/4 v8, 0x0

    :goto_b
    const-string v1, "childAtomSize must be positive"

    .line 22
    invoke-static {v8, v1}, Lcom/google/android/gms/internal/ads/zzwt;->zzb(ZLjava/lang/String;)V

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v8

    const v2, 0x6d686143

    if-ne v8, v2, :cond_1f

    add-int/lit8 v1, v15, -0xd

    .line 24
    new-array v2, v1, [B

    add-int/lit8 v8, v11, 0xd

    .line 25
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    const/4 v8, 0x0

    .line 26
    invoke-virtual {v0, v2, v8, v1}, Lcom/google/android/gms/internal/ads/zzfd;->zzB([BII)V

    .line 27
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfss;->zzp(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfss;

    move-result-object v1

    move-object/from16 v19, v1

    move/from16 v16, v10

    :goto_c
    const/4 v8, 0x0

    const/4 v10, 0x1

    const/16 v17, 0x2

    goto/16 :goto_14

    :cond_1f
    const v2, 0x65736473

    if-eq v8, v2, :cond_2c

    if-eqz p6, :cond_23

    const v2, 0x77617665

    if-ne v8, v2, :cond_23

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfd;->zzc()I

    move-result v2

    :goto_d
    sub-int v8, v2, v11

    if-ge v8, v15, :cond_22

    .line 28
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    .line 29
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v8

    if-lez v8, :cond_20

    move/from16 v16, v10

    const/4 v10, 0x1

    goto :goto_e

    :cond_20
    move/from16 v16, v10

    const/4 v10, 0x0

    .line 30
    :goto_e
    invoke-static {v10, v1}, Lcom/google/android/gms/internal/ads/zzwt;->zzb(ZLjava/lang/String;)V

    .line 31
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v10

    move-object/from16 v20, v1

    const v1, 0x65736473

    if-eq v10, v1, :cond_21

    add-int/2addr v2, v8

    move/from16 v10, v16

    move-object/from16 v1, v20

    goto :goto_d

    :cond_21
    const/4 v1, -0x1

    goto :goto_f

    :cond_22
    move/from16 v16, v10

    const/4 v1, -0x1

    const/4 v2, -0x1

    :goto_f
    const/4 v8, 0x0

    const/4 v10, 0x1

    const/16 v17, 0x2

    goto/16 :goto_13

    :cond_23
    move/from16 v16, v10

    const v1, 0x64616333

    if-ne v8, v1, :cond_24

    add-int/lit8 v1, v11, 0x8

    .line 32
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    .line 33
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzvv;->zzb(Lcom/google/android/gms/internal/ads/zzfd;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzs;)Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v1

    iput-object v1, v6, Lcom/google/android/gms/internal/ads/zzabq;->zzb:Lcom/google/android/gms/internal/ads/zzab;

    :goto_10
    const/16 v1, 0x14

    goto :goto_c

    :cond_24
    const v1, 0x64656333

    if-ne v8, v1, :cond_25

    add-int/lit8 v1, v11, 0x8

    .line 34
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    .line 35
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzvv;->zzc(Lcom/google/android/gms/internal/ads/zzfd;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzs;)Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v1

    iput-object v1, v6, Lcom/google/android/gms/internal/ads/zzabq;->zzb:Lcom/google/android/gms/internal/ads/zzab;

    goto :goto_10

    :cond_25
    const v1, 0x64616334

    if-ne v8, v1, :cond_27

    add-int/lit8 v1, v11, 0x8

    .line 36
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    .line 37
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 38
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfd;->zzG(I)V

    .line 39
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfd;->zzk()I

    move-result v8

    and-int/lit8 v8, v8, 0x20

    shr-int/lit8 v8, v8, 0x5

    if-eq v2, v8, :cond_26

    const v2, 0xac44

    goto :goto_11

    :cond_26
    const v2, 0xbb80

    :goto_11
    new-instance v8, Lcom/google/android/gms/internal/ads/zzz;

    invoke-direct {v8}, Lcom/google/android/gms/internal/ads/zzz;-><init>()V

    .line 40
    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/ads/zzz;->zzH(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzz;

    .line 41
    invoke-virtual {v8, v12}, Lcom/google/android/gms/internal/ads/zzz;->zzS(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzz;

    const/4 v1, 0x2

    .line 42
    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/ads/zzz;->zzw(I)Lcom/google/android/gms/internal/ads/zzz;

    .line 43
    invoke-virtual {v8, v2}, Lcom/google/android/gms/internal/ads/zzz;->zzT(I)Lcom/google/android/gms/internal/ads/zzz;

    .line 44
    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/ads/zzz;->zzB(Lcom/google/android/gms/internal/ads/zzs;)Lcom/google/android/gms/internal/ads/zzz;

    .line 45
    invoke-virtual {v8, v4}, Lcom/google/android/gms/internal/ads/zzz;->zzK(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzz;

    .line 46
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzz;->zzY()Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v1

    iput-object v1, v6, Lcom/google/android/gms/internal/ads/zzabq;->zzb:Lcom/google/android/gms/internal/ads/zzab;

    goto :goto_10

    :cond_27
    const v1, 0x64647473

    if-ne v8, v1, :cond_28

    new-instance v1, Lcom/google/android/gms/internal/ads/zzz;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzz;-><init>()V

    .line 47
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzz;->zzG(I)Lcom/google/android/gms/internal/ads/zzz;

    .line 48
    invoke-virtual {v1, v13}, Lcom/google/android/gms/internal/ads/zzz;->zzS(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzz;

    .line 49
    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/zzz;->zzw(I)Lcom/google/android/gms/internal/ads/zzz;

    .line 50
    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzz;->zzT(I)Lcom/google/android/gms/internal/ads/zzz;

    .line 51
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzz;->zzB(Lcom/google/android/gms/internal/ads/zzs;)Lcom/google/android/gms/internal/ads/zzz;

    .line 52
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzz;->zzK(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzz;

    .line 53
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzz;->zzY()Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v1

    iput-object v1, v6, Lcom/google/android/gms/internal/ads/zzabq;->zzb:Lcom/google/android/gms/internal/ads/zzab;

    goto :goto_10

    :cond_28
    const v1, 0x644f7073

    if-ne v8, v1, :cond_29

    add-int/lit8 v1, v15, -0x8

    sget-object v2, Lcom/google/android/gms/internal/ads/zzabu;->zza:[B

    .line 54
    array-length v8, v2

    add-int/2addr v8, v1

    invoke-static {v2, v8}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v8

    add-int/lit8 v10, v11, 0x8

    .line 55
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    .line 56
    array-length v2, v2

    invoke-virtual {v0, v8, v2, v1}, Lcom/google/android/gms/internal/ads/zzfd;->zzB([BII)V

    .line 57
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzxl;->zza([B)Ljava/util/List;

    move-result-object v1

    move-object/from16 v19, v1

    goto/16 :goto_c

    :cond_29
    const v1, 0x64664c61

    if-ne v8, v1, :cond_2a

    add-int/lit8 v1, v15, -0xc

    add-int/lit8 v2, v1, 0x4

    .line 58
    new-array v2, v2, [B

    const/16 v8, 0x66

    const/4 v10, 0x0

    .line 59
    aput-byte v8, v2, v10

    const/16 v8, 0x4c

    const/4 v10, 0x1

    .line 60
    aput-byte v8, v2, v10

    const/16 v8, 0x61

    const/16 v17, 0x2

    .line 61
    aput-byte v8, v2, v17

    const/4 v8, 0x3

    const/16 v18, 0x43

    .line 62
    aput-byte v18, v2, v8

    add-int/lit8 v8, v11, 0xc

    .line 63
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    const/4 v8, 0x4

    .line 64
    invoke-virtual {v0, v2, v8, v1}, Lcom/google/android/gms/internal/ads/zzfd;->zzB([BII)V

    .line 65
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfss;->zzp(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfss;

    move-result-object v1

    move-object/from16 v19, v1

    :goto_12
    const/4 v8, 0x0

    goto/16 :goto_14

    :cond_2a
    const v1, 0x616c6163

    const/4 v10, 0x1

    const/16 v17, 0x2

    if-ne v8, v1, :cond_2b

    add-int/lit8 v2, v15, -0xc

    .line 66
    new-array v7, v2, [B

    add-int/lit8 v8, v11, 0xc

    .line 67
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    const/4 v8, 0x0

    .line 68
    invoke-virtual {v0, v7, v8, v2}, Lcom/google/android/gms/internal/ads/zzfd;->zzB([BII)V

    .line 69
    new-instance v2, Lcom/google/android/gms/internal/ads/zzfd;

    .line 70
    invoke-direct {v2, v7}, Lcom/google/android/gms/internal/ads/zzfd;-><init>([B)V

    const/16 v9, 0x9

    .line 71
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    .line 72
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfd;->zzk()I

    move-result v9

    const/16 v1, 0x14

    .line 73
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    .line 74
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfd;->zzn()I

    move-result v2

    .line 75
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    .line 76
    iget-object v9, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 77
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 78
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzfss;->zzp(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfss;

    move-result-object v7

    move-object/from16 v19, v7

    move v7, v9

    move v9, v2

    goto :goto_14

    :cond_2b
    const/16 v1, 0x14

    goto :goto_12

    :cond_2c
    move/from16 v16, v10

    const/4 v8, 0x0

    const/4 v10, 0x1

    const/16 v17, 0x2

    move v2, v11

    const/4 v1, -0x1

    :goto_13
    if-eq v2, v1, :cond_2e

    .line 79
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzabu;->zzh(Lcom/google/android/gms/internal/ads/zzfd;I)Landroid/util/Pair;

    move-result-object v2

    .line 80
    iget-object v13, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    .line 81
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [B

    if-eqz v2, :cond_2e

    const-string v1, "audio/mp4a-latm"

    .line 82
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 83
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzvs;->zza([B)Lcom/google/android/gms/internal/ads/zzvr;

    move-result-object v1

    iget v7, v1, Lcom/google/android/gms/internal/ads/zzvr;->zza:I

    iget v9, v1, Lcom/google/android/gms/internal/ads/zzvr;->zzb:I

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/zzvr;->zzc:Ljava/lang/String;

    .line 84
    :cond_2d
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfss;->zzp(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfss;

    move-result-object v19

    :cond_2e
    :goto_14
    add-int/2addr v11, v15

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v10, v16

    goto/16 :goto_a

    :cond_2f
    move/from16 v16, v10

    .line 85
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzabq;->zzb:Lcom/google/android/gms/internal/ads/zzab;

    if-nez v0, :cond_30

    if-eqz v13, :cond_30

    new-instance v0, Lcom/google/android/gms/internal/ads/zzz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzz;-><init>()V

    .line 86
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzz;->zzG(I)Lcom/google/android/gms/internal/ads/zzz;

    .line 87
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzz;->zzS(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzz;

    .line 88
    invoke-virtual {v0, v14}, Lcom/google/android/gms/internal/ads/zzz;->zzx(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzz;

    .line 89
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzz;->zzw(I)Lcom/google/android/gms/internal/ads/zzz;

    .line 90
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzz;->zzT(I)Lcom/google/android/gms/internal/ads/zzz;

    move/from16 v13, v16

    .line 91
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzz;->zzN(I)Lcom/google/android/gms/internal/ads/zzz;

    move-object/from16 v1, v19

    .line 92
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzz;->zzI(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzz;

    .line 93
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzz;->zzB(Lcom/google/android/gms/internal/ads/zzs;)Lcom/google/android/gms/internal/ads/zzz;

    .line 94
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzz;->zzK(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzz;

    .line 95
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzz;->zzY()Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v0

    iput-object v0, v6, Lcom/google/android/gms/internal/ads/zzabq;->zzb:Lcom/google/android/gms/internal/ads/zzab;

    :cond_30
    return-void
.end method
