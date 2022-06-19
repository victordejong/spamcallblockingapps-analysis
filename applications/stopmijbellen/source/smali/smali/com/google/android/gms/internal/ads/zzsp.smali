.class public final Lcom/google/android/gms/internal/ads/zzsp;
.super Lcom/google/android/gms/internal/ads/zzst;
.source "SourceFile"


# static fields
.field public static final synthetic zza:I

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzfuf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzfuf<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzc:Lcom/google/android/gms/internal/ads/zzfuf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzfuf<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzd:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/ads/zzsi;",
            ">;"
        }
    .end annotation
.end field

.field private final zze:Lcom/google/android/gms/internal/ads/zzry;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzsc;->zza:Lcom/google/android/gms/internal/ads/zzsc;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfuf;->zzb(Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfuf;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzsp;->zzb:Lcom/google/android/gms/internal/ads/zzfuf;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzsd;->zza:Lcom/google/android/gms/internal/ads/zzsd;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfuf;->zzb(Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfuf;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzsp;->zzc:Lcom/google/android/gms/internal/ads/zzfuf;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzsi;->zzB:Lcom/google/android/gms/internal/ads/zzsi;

    const/4 v0, 0x0

    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzry;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzry;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzsi;->zzc(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzsi;

    move-result-object p1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzst;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsp;->zze:Lcom/google/android/gms/internal/ads/zzry;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsp;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzab;Ljava/lang/String;Z)I
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzab;->zzd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    return p0

    .line 2
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzsp;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzab;->zzd:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzsp;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    if-nez p1, :cond_2

    goto :goto_2

    .line 4
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    const-string p2, "-"

    .line 5
    invoke-static {p0, p2}, Lcom/google/android/gms/internal/ads/zzfn;->zzad(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v0

    .line 6
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzfn;->zzad(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v0

    .line 7
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x2

    return p0

    :cond_4
    return v0

    :cond_5
    :goto_1
    const/4 p0, 0x3

    return p0

    :cond_6
    :goto_2
    if-eqz p2, :cond_7

    if-nez p0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    return v0
.end method

.method public static bridge synthetic zzd()Lcom/google/android/gms/internal/ads/zzfuf;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzsp;->zzb:Lcom/google/android/gms/internal/ads/zzfuf;

    return-object v0
.end method

.method public static bridge synthetic zze()Lcom/google/android/gms/internal/ads/zzfuf;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzsp;->zzc:Lcom/google/android/gms/internal/ads/zzfuf;

    return-object v0
.end method

.method public static zzf(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "und"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static zzh(IZ)Z
    .locals 3

    and-int/lit8 p0, p0, 0x7

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-eq p0, v2, :cond_1

    if-eqz p1, :cond_2

    const/4 p1, 0x3

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :cond_2
    return v0
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzss;[[[I[ILcom/google/android/gms/internal/ads/zzpz;Lcom/google/android/gms/internal/ads/zzcd;)Landroid/util/Pair;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzss;",
            "[[[I[I",
            "Lcom/google/android/gms/internal/ads/zzpz;",
            "Lcom/google/android/gms/internal/ads/zzcd;",
            ")",
            "Landroid/util/Pair<",
            "[",
            "Lcom/google/android/gms/internal/ads/zzin;",
            "[",
            "Lcom/google/android/gms/internal/ads/zzsb;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgg;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzsp;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzsi;

    const/4 v3, 0x2

    new-array v4, v3, [Lcom/google/android/gms/internal/ads/zzsq;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    const/4 v11, 0x1

    if-ge v6, v3, :cond_1a

    .line 2
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzss;->zza(I)I

    move-result v12

    if-ne v12, v3, :cond_19

    if-nez v7, :cond_17

    .line 3
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzss;->zzc(I)Lcom/google/android/gms/internal/ads/zzch;

    move-result-object v7

    aget-object v12, p2, v6

    aget v13, p3, v6

    .line 4
    iget-boolean v13, v2, Lcom/google/android/gms/internal/ads/zzcn;->zzy:Z

    const/4 v13, 0x0

    .line 5
    :goto_1
    iget v14, v7, Lcom/google/android/gms/internal/ads/zzch;->zzc:I

    if-ge v13, v14, :cond_0

    .line 6
    invoke-virtual {v7, v13}, Lcom/google/android/gms/internal/ads/zzch;->zzb(I)Lcom/google/android/gms/internal/ads/zzcf;

    move-result-object v14

    .line 7
    aget-object v15, v12, v13

    .line 8
    iget v14, v14, Lcom/google/android/gms/internal/ads/zzcf;->zzb:I

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_0
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, 0x0

    .line 9
    :goto_2
    iget v10, v7, Lcom/google/android/gms/internal/ads/zzch;->zzc:I

    if-ge v13, v10, :cond_14

    .line 10
    invoke-virtual {v7, v13}, Lcom/google/android/gms/internal/ads/zzch;->zzb(I)Lcom/google/android/gms/internal/ads/zzcf;

    move-result-object v10

    .line 11
    iget v3, v2, Lcom/google/android/gms/internal/ads/zzcn;->zzl:I

    iget v5, v2, Lcom/google/android/gms/internal/ads/zzcn;->zzm:I

    iget-boolean v9, v2, Lcom/google/android/gms/internal/ads/zzcn;->zzn:Z

    move-object/from16 v17, v7

    new-instance v7, Ljava/util/ArrayList;

    .line 12
    iget v0, v10, Lcom/google/android/gms/internal/ads/zzcf;->zzb:I

    invoke-direct {v7, v11}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_3
    if-gtz v0, :cond_1

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    const/4 v11, 0x1

    goto :goto_3

    :cond_1
    const v0, 0x7fffffff

    if-eq v3, v0, :cond_e

    if-ne v5, v0, :cond_2

    goto/16 :goto_c

    :cond_2
    const/4 v11, 0x0

    :goto_4
    if-gtz v11, :cond_b

    move/from16 v19, v8

    .line 14
    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/ads/zzcf;->zzb(I)Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v8

    .line 15
    iget v1, v8, Lcom/google/android/gms/internal/ads/zzab;->zzr:I

    if-lez v1, :cond_9

    move-object/from16 v20, v4

    iget v4, v8, Lcom/google/android/gms/internal/ads/zzab;->zzs:I

    if-lez v4, :cond_8

    if-eqz v9, :cond_5

    if-gt v1, v4, :cond_3

    move/from16 v21, v9

    const/4 v9, 0x0

    goto :goto_5

    :cond_3
    move/from16 v21, v9

    const/4 v9, 0x1

    :goto_5
    if-gt v3, v5, :cond_4

    move/from16 v22, v3

    const/4 v3, 0x0

    goto :goto_6

    :cond_4
    move/from16 v22, v3

    const/4 v3, 0x1

    :goto_6
    if-eq v9, v3, :cond_6

    move v9, v5

    move/from16 v23, v9

    move/from16 v3, v22

    goto :goto_7

    :cond_5
    move/from16 v22, v3

    move/from16 v21, v9

    :cond_6
    move v3, v5

    move/from16 v23, v3

    move/from16 v9, v22

    :goto_7
    mul-int v5, v1, v3

    move/from16 v24, v6

    mul-int v6, v4, v9

    if-lt v5, v6, :cond_7

    new-instance v3, Landroid/graphics/Point;

    .line 16
    invoke-static {v6, v1}, Lcom/google/android/gms/internal/ads/zzfn;->zze(II)I

    move-result v1

    invoke-direct {v3, v9, v1}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_8

    .line 17
    :cond_7
    new-instance v1, Landroid/graphics/Point;

    .line 18
    invoke-static {v5, v4}, Lcom/google/android/gms/internal/ads/zzfn;->zze(II)I

    move-result v4

    invoke-direct {v1, v4, v3}, Landroid/graphics/Point;-><init>(II)V

    move-object v3, v1

    .line 19
    :goto_8
    iget v1, v8, Lcom/google/android/gms/internal/ads/zzab;->zzr:I

    iget v4, v8, Lcom/google/android/gms/internal/ads/zzab;->zzs:I

    mul-int v5, v1, v4

    .line 20
    iget v6, v3, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    const v8, 0x3f7ae148    # 0.98f

    mul-float v6, v6, v8

    float-to-int v6, v6

    if-lt v1, v6, :cond_a

    iget v1, v3, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    mul-float v1, v1, v8

    float-to-int v1, v1

    if-lt v4, v1, :cond_a

    if-ge v5, v0, :cond_a

    move v0, v5

    goto :goto_a

    :cond_8
    move/from16 v22, v3

    goto :goto_9

    :cond_9
    move/from16 v22, v3

    move-object/from16 v20, v4

    :goto_9
    move/from16 v23, v5

    move/from16 v24, v6

    move/from16 v21, v9

    :cond_a
    :goto_a
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p1

    move/from16 v8, v19

    move-object/from16 v4, v20

    move/from16 v9, v21

    move/from16 v3, v22

    move/from16 v5, v23

    move/from16 v6, v24

    goto/16 :goto_4

    :cond_b
    move-object/from16 v20, v4

    move/from16 v24, v6

    move/from16 v19, v8

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_f

    .line 21
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, -0x1

    add-int/2addr v1, v3

    :goto_b
    if-ltz v1, :cond_f

    .line 22
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v10, v4}, Lcom/google/android/gms/internal/ads/zzcf;->zzb(I)Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v4

    .line 23
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzab;->zza()I

    move-result v4

    if-eq v4, v3, :cond_c

    if-le v4, v0, :cond_d

    .line 24
    :cond_c
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_d
    add-int/lit8 v1, v1, -0x1

    const/4 v3, -0x1

    goto :goto_b

    :cond_e
    :goto_c
    move-object/from16 v20, v4

    move/from16 v24, v6

    move/from16 v19, v8

    .line 25
    :cond_f
    aget-object v0, v12, v13

    move-object/from16 v1, v16

    const/4 v3, 0x0

    :goto_d
    if-gtz v3, :cond_13

    .line 26
    invoke-virtual {v10, v3}, Lcom/google/android/gms/internal/ads/zzcf;->zzb(I)Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v4

    .line 27
    iget v5, v4, Lcom/google/android/gms/internal/ads/zzab;->zzf:I

    .line 28
    aget v5, v0, v3

    iget-boolean v6, v2, Lcom/google/android/gms/internal/ads/zzsi;->zzM:Z

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzsp;->zzh(IZ)Z

    move-result v5

    if-eqz v5, :cond_12

    new-instance v5, Lcom/google/android/gms/internal/ads/zzso;

    .line 29
    aget v6, v0, v3

    .line 30
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    invoke-direct {v5, v4, v2, v6, v8}, Lcom/google/android/gms/internal/ads/zzso;-><init>(Lcom/google/android/gms/internal/ads/zzab;Lcom/google/android/gms/internal/ads/zzsi;IZ)V

    iget-boolean v4, v5, Lcom/google/android/gms/internal/ads/zzso;->zza:Z

    if-nez v4, :cond_10

    .line 31
    iget-boolean v4, v2, Lcom/google/android/gms/internal/ads/zzsi;->zzF:Z

    if-nez v4, :cond_10

    goto :goto_e

    :cond_10
    if-eqz v1, :cond_11

    .line 32
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzso;->zza(Lcom/google/android/gms/internal/ads/zzso;)I

    move-result v4

    if-lez v4, :cond_12

    :cond_11
    move v15, v3

    move-object v1, v5

    move-object v14, v10

    :cond_12
    :goto_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_13
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move-object/from16 v16, v1

    move-object/from16 v7, v17

    move/from16 v8, v19

    move-object/from16 v4, v20

    move/from16 v6, v24

    const/4 v3, 0x2

    const/4 v11, 0x1

    move-object/from16 v1, p1

    goto/16 :goto_2

    :cond_14
    move-object/from16 v20, v4

    move/from16 v24, v6

    move/from16 v19, v8

    if-nez v14, :cond_15

    const/4 v10, 0x0

    goto :goto_f

    .line 33
    :cond_15
    new-instance v10, Lcom/google/android/gms/internal/ads/zzsq;

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v0, 0x0

    aput v15, v1, v0

    invoke-direct {v10, v14, v1, v0}, Lcom/google/android/gms/internal/ads/zzsq;-><init>(Lcom/google/android/gms/internal/ads/zzcf;[II)V

    .line 34
    :goto_f
    aput-object v10, v20, v24

    if-eqz v10, :cond_16

    move-object/from16 v0, p1

    move/from16 v5, v24

    const/4 v7, 0x1

    goto :goto_10

    :cond_16
    move-object/from16 v0, p1

    move/from16 v5, v24

    const/4 v7, 0x0

    goto :goto_10

    :cond_17
    move-object/from16 v20, v4

    move/from16 v19, v8

    move-object/from16 v0, p1

    move v5, v6

    .line 35
    :goto_10
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzss;->zzc(I)Lcom/google/android/gms/internal/ads/zzch;

    move-result-object v1

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzch;->zzc:I

    if-lez v1, :cond_18

    const/4 v11, 0x1

    goto :goto_11

    :cond_18
    const/4 v11, 0x0

    :goto_11
    or-int v8, v19, v11

    goto :goto_12

    :cond_19
    move-object v0, v1

    move-object/from16 v20, v4

    move v5, v6

    move/from16 v19, v8

    :goto_12
    add-int/lit8 v6, v5, 0x1

    move-object v1, v0

    move-object/from16 v4, v20

    const/4 v3, 0x2

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_1a
    move-object v0, v1

    move-object/from16 v20, v4

    move/from16 v19, v8

    const/4 v1, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_13
    const/4 v6, 0x2

    if-ge v4, v6, :cond_2c

    .line 36
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzss;->zza(I)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2b

    .line 37
    iget-boolean v6, v2, Lcom/google/android/gms/internal/ads/zzsi;->zzO:Z

    if-nez v6, :cond_1c

    if-nez v19, :cond_1b

    goto :goto_14

    :cond_1b
    const/4 v6, 0x0

    goto :goto_15

    :cond_1c
    :goto_14
    const/4 v6, 0x1

    .line 38
    :goto_15
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzss;->zzc(I)Lcom/google/android/gms/internal/ads/zzch;

    move-result-object v7

    aget-object v8, p2, v4

    aget v9, p3, v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, -0x1

    .line 39
    :goto_16
    iget v13, v7, Lcom/google/android/gms/internal/ads/zzch;->zzc:I

    if-ge v10, v13, :cond_21

    .line 40
    invoke-virtual {v7, v10}, Lcom/google/android/gms/internal/ads/zzch;->zzb(I)Lcom/google/android/gms/internal/ads/zzcf;

    move-result-object v13

    .line 41
    aget-object v14, v8, v10

    move/from16 v16, v11

    const/4 v15, 0x0

    .line 42
    :goto_17
    iget v11, v13, Lcom/google/android/gms/internal/ads/zzcf;->zzb:I

    if-gtz v15, :cond_20

    .line 43
    aget v11, v14, v15

    move/from16 v17, v12

    iget-boolean v12, v2, Lcom/google/android/gms/internal/ads/zzsi;->zzM:Z

    invoke-static {v11, v12}, Lcom/google/android/gms/internal/ads/zzsp;->zzh(IZ)Z

    move-result v11

    if-eqz v11, :cond_1e

    .line 44
    invoke-virtual {v13, v15}, Lcom/google/android/gms/internal/ads/zzcf;->zzb(I)Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v11

    new-instance v12, Lcom/google/android/gms/internal/ads/zzse;

    move-object/from16 v18, v13

    .line 45
    aget v13, v14, v15

    invoke-direct {v12, v11, v2, v13}, Lcom/google/android/gms/internal/ads/zzse;-><init>(Lcom/google/android/gms/internal/ads/zzab;Lcom/google/android/gms/internal/ads/zzsi;I)V

    if-eqz v9, :cond_1d

    .line 46
    invoke-virtual {v12, v9}, Lcom/google/android/gms/internal/ads/zzse;->zza(Lcom/google/android/gms/internal/ads/zzse;)I

    move-result v11

    if-lez v11, :cond_1f

    :cond_1d
    move/from16 v16, v10

    move-object v9, v12

    move v12, v15

    goto :goto_18

    :cond_1e
    move-object/from16 v18, v13

    :cond_1f
    move/from16 v12, v17

    :goto_18
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v13, v18

    goto :goto_17

    :cond_20
    move/from16 v17, v12

    add-int/lit8 v10, v10, 0x1

    move/from16 v11, v16

    goto :goto_16

    :cond_21
    const/4 v10, -0x1

    if-ne v11, v10, :cond_22

    const/4 v6, 0x0

    goto/16 :goto_1c

    .line 47
    :cond_22
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/ads/zzch;->zzb(I)Lcom/google/android/gms/internal/ads/zzcf;

    move-result-object v7

    if-eqz v6, :cond_26

    .line 48
    aget-object v6, v8, v11

    .line 49
    invoke-virtual {v7, v12}, Lcom/google/android/gms/internal/ads/zzcf;->zzb(I)Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v8

    const/4 v10, 0x1

    new-array v11, v10, [I

    const/4 v10, 0x0

    const/4 v13, 0x0

    :goto_19
    if-gtz v10, :cond_25

    if-eq v10, v12, :cond_23

    .line 50
    invoke-virtual {v7, v10}, Lcom/google/android/gms/internal/ads/zzcf;->zzb(I)Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v14

    aget v15, v6, v10

    move-object/from16 v16, v6

    const/4 v6, 0x0

    invoke-static {v15, v6}, Lcom/google/android/gms/internal/ads/zzsp;->zzh(IZ)Z

    move-result v15

    if-eqz v15, :cond_24

    .line 51
    iget v6, v14, Lcom/google/android/gms/internal/ads/zzab;->zzi:I

    const/4 v15, -0x1

    if-eq v6, v15, :cond_24

    iget v6, v14, Lcom/google/android/gms/internal/ads/zzab;->zzz:I

    if-eq v6, v15, :cond_24

    iget v15, v8, Lcom/google/android/gms/internal/ads/zzab;->zzz:I

    if-ne v6, v15, :cond_24

    iget-object v6, v14, Lcom/google/android/gms/internal/ads/zzab;->zzm:Ljava/lang/String;

    if-eqz v6, :cond_24

    iget-object v15, v8, Lcom/google/android/gms/internal/ads/zzab;->zzm:Ljava/lang/String;

    .line 52
    invoke-static {v6, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_24

    iget v6, v14, Lcom/google/android/gms/internal/ads/zzab;->zzA:I

    const/4 v14, -0x1

    if-eq v6, v14, :cond_24

    iget v14, v8, Lcom/google/android/gms/internal/ads/zzab;->zzA:I

    if-ne v6, v14, :cond_24

    goto :goto_1a

    :cond_23
    move-object/from16 v16, v6

    :goto_1a
    add-int/lit8 v6, v13, 0x1

    .line 53
    aput v10, v11, v13

    move v13, v6

    :cond_24
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v6, v16

    goto :goto_19

    .line 54
    :cond_25
    invoke-static {v11, v13}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v6

    .line 55
    array-length v8, v6

    const/4 v10, 0x1

    if-le v8, v10, :cond_27

    new-instance v8, Lcom/google/android/gms/internal/ads/zzsq;

    const/4 v11, 0x0

    .line 56
    invoke-direct {v8, v7, v6, v11}, Lcom/google/android/gms/internal/ads/zzsq;-><init>(Lcom/google/android/gms/internal/ads/zzcf;[II)V

    goto :goto_1b

    :cond_26
    const/4 v10, 0x1

    :cond_27
    const/4 v11, 0x0

    const/4 v8, 0x0

    :goto_1b
    if-nez v8, :cond_28

    new-instance v8, Lcom/google/android/gms/internal/ads/zzsq;

    new-array v6, v10, [I

    aput v12, v6, v11

    .line 57
    invoke-direct {v8, v7, v6, v11}, Lcom/google/android/gms/internal/ads/zzsq;-><init>(Lcom/google/android/gms/internal/ads/zzcf;[II)V

    .line 58
    :cond_28
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-static {v8, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    :goto_1c
    if-eqz v6, :cond_2b

    if-eqz v1, :cond_29

    .line 60
    iget-object v7, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Lcom/google/android/gms/internal/ads/zzse;

    .line 61
    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/zzse;->zza(Lcom/google/android/gms/internal/ads/zzse;)I

    move-result v7

    if-lez v7, :cond_2b

    :cond_29
    const/4 v1, -0x1

    if-eq v3, v1, :cond_2a

    const/4 v1, 0x0

    .line 62
    aput-object v1, v20, v3

    .line 63
    :cond_2a
    iget-object v1, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzsq;

    .line 64
    aput-object v1, v20, v4

    .line 65
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzsq;->zza:Lcom/google/android/gms/internal/ads/zzcf;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzsq;->zzb:[I

    const/4 v5, 0x0

    aget v1, v1, v5

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzcf;->zzb(I)Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzab;->zzd:Ljava/lang/String;

    .line 66
    iget-object v3, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzse;

    move-object v5, v1

    move-object v1, v3

    move v3, v4

    :cond_2b
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_13

    :cond_2c
    const/4 v1, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    :goto_1d
    if-ge v4, v6, :cond_3d

    .line 67
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzss;->zza(I)I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_3c

    if-eq v7, v6, :cond_3c

    const/4 v6, 0x3

    if-eq v7, v6, :cond_33

    .line 68
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzss;->zzc(I)Lcom/google/android/gms/internal/ads/zzch;

    move-result-object v6

    aget-object v7, p2, v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 69
    :goto_1e
    iget v12, v6, Lcom/google/android/gms/internal/ads/zzch;->zzc:I

    if-ge v10, v12, :cond_31

    .line 70
    invoke-virtual {v6, v10}, Lcom/google/android/gms/internal/ads/zzch;->zzb(I)Lcom/google/android/gms/internal/ads/zzcf;

    move-result-object v12

    .line 71
    aget-object v13, v7, v10

    const/4 v14, 0x0

    .line 72
    :goto_1f
    iget v15, v12, Lcom/google/android/gms/internal/ads/zzcf;->zzb:I

    if-gtz v14, :cond_30

    .line 73
    aget v15, v13, v14

    move-object/from16 p3, v6

    iget-boolean v6, v2, Lcom/google/android/gms/internal/ads/zzsi;->zzM:Z

    invoke-static {v15, v6}, Lcom/google/android/gms/internal/ads/zzsp;->zzh(IZ)Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 74
    invoke-virtual {v12, v14}, Lcom/google/android/gms/internal/ads/zzcf;->zzb(I)Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v6

    new-instance v15, Lcom/google/android/gms/internal/ads/zzsf;

    move-object/from16 v16, v7

    .line 75
    aget v7, v13, v14

    invoke-direct {v15, v6, v7}, Lcom/google/android/gms/internal/ads/zzsf;-><init>(Lcom/google/android/gms/internal/ads/zzab;I)V

    if-eqz v9, :cond_2d

    .line 76
    invoke-virtual {v15, v9}, Lcom/google/android/gms/internal/ads/zzsf;->zza(Lcom/google/android/gms/internal/ads/zzsf;)I

    move-result v6

    if-lez v6, :cond_2f

    :cond_2d
    move-object v8, v12

    move v11, v14

    move-object v9, v15

    goto :goto_20

    :cond_2e
    move-object/from16 v16, v7

    :cond_2f
    :goto_20
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v6, p3

    move-object/from16 v7, v16

    goto :goto_1f

    :cond_30
    move-object/from16 p3, v6

    move-object/from16 v16, v7

    add-int/lit8 v10, v10, 0x1

    goto :goto_1e

    :cond_31
    if-nez v8, :cond_32

    const/4 v6, 0x0

    goto :goto_21

    .line 77
    :cond_32
    new-instance v6, Lcom/google/android/gms/internal/ads/zzsq;

    const/4 v7, 0x1

    new-array v9, v7, [I

    const/4 v7, 0x0

    aput v11, v9, v7

    invoke-direct {v6, v8, v9, v7}, Lcom/google/android/gms/internal/ads/zzsq;-><init>(Lcom/google/android/gms/internal/ads/zzcf;[II)V

    :goto_21
    aput-object v6, v20, v4

    goto/16 :goto_26

    .line 78
    :cond_33
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzss;->zzc(I)Lcom/google/android/gms/internal/ads/zzch;

    move-result-object v6

    aget-object v7, p2, v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    .line 79
    :goto_22
    iget v12, v6, Lcom/google/android/gms/internal/ads/zzch;->zzc:I

    if-ge v11, v12, :cond_38

    .line 80
    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/ads/zzch;->zzb(I)Lcom/google/android/gms/internal/ads/zzcf;

    move-result-object v12

    .line 81
    aget-object v13, v7, v11

    const/4 v14, 0x0

    .line 82
    :goto_23
    iget v15, v12, Lcom/google/android/gms/internal/ads/zzcf;->zzb:I

    if-gtz v14, :cond_37

    .line 83
    aget v15, v13, v14

    move-object/from16 p3, v6

    iget-boolean v6, v2, Lcom/google/android/gms/internal/ads/zzsi;->zzM:Z

    invoke-static {v15, v6}, Lcom/google/android/gms/internal/ads/zzsp;->zzh(IZ)Z

    move-result v6

    if-eqz v6, :cond_35

    .line 84
    invoke-virtual {v12, v14}, Lcom/google/android/gms/internal/ads/zzcf;->zzb(I)Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v6

    new-instance v15, Lcom/google/android/gms/internal/ads/zzsn;

    move-object/from16 v16, v7

    .line 85
    aget v7, v13, v14

    invoke-direct {v15, v6, v2, v7, v5}, Lcom/google/android/gms/internal/ads/zzsn;-><init>(Lcom/google/android/gms/internal/ads/zzab;Lcom/google/android/gms/internal/ads/zzsi;ILjava/lang/String;)V

    iget-boolean v6, v15, Lcom/google/android/gms/internal/ads/zzsn;->zza:Z

    if-eqz v6, :cond_36

    if-eqz v9, :cond_34

    .line 86
    invoke-virtual {v15, v9}, Lcom/google/android/gms/internal/ads/zzsn;->zza(Lcom/google/android/gms/internal/ads/zzsn;)I

    move-result v6

    if-lez v6, :cond_36

    :cond_34
    move-object v8, v12

    move v10, v14

    move-object v9, v15

    goto :goto_24

    :cond_35
    move-object/from16 v16, v7

    :cond_36
    :goto_24
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v6, p3

    move-object/from16 v7, v16

    goto :goto_23

    :cond_37
    move-object/from16 p3, v6

    move-object/from16 v16, v7

    add-int/lit8 v11, v11, 0x1

    goto :goto_22

    :cond_38
    if-nez v8, :cond_39

    const/4 v6, 0x0

    goto :goto_25

    .line 87
    :cond_39
    new-instance v6, Lcom/google/android/gms/internal/ads/zzsq;

    const/4 v7, 0x1

    new-array v11, v7, [I

    const/4 v7, 0x0

    aput v10, v11, v7

    invoke-direct {v6, v8, v11, v7}, Lcom/google/android/gms/internal/ads/zzsq;-><init>(Lcom/google/android/gms/internal/ads/zzcf;[II)V

    .line 88
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-static {v6, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    :goto_25
    if-eqz v6, :cond_3c

    if-eqz v1, :cond_3a

    .line 90
    iget-object v7, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Lcom/google/android/gms/internal/ads/zzsn;

    .line 91
    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/zzsn;->zza(Lcom/google/android/gms/internal/ads/zzsn;)I

    move-result v7

    if-lez v7, :cond_3c

    :cond_3a
    const/4 v7, -0x1

    if-eq v3, v7, :cond_3b

    const/4 v1, 0x0

    .line 92
    aput-object v1, v20, v3

    .line 93
    :cond_3b
    iget-object v1, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzsq;

    aput-object v1, v20, v4

    .line 94
    iget-object v1, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzsn;

    move v3, v4

    goto :goto_27

    :cond_3c
    :goto_26
    const/4 v7, -0x1

    :goto_27
    add-int/lit8 v4, v4, 0x1

    const/4 v6, 0x2

    goto/16 :goto_1d

    :cond_3d
    const/4 v1, 0x0

    :goto_28
    const/4 v3, 0x2

    if-ge v1, v3, :cond_45

    .line 95
    aget-object v3, v20, v1

    .line 96
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzss;->zza(I)I

    move-result v4

    .line 97
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzsi;->zzf(I)Z

    move-result v5

    if-nez v5, :cond_43

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzcn;->zzA:Lcom/google/android/gms/internal/ads/zzftc;

    .line 98
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzfsn;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    :goto_29
    const/4 v3, 0x0

    const/4 v6, 0x0

    goto :goto_2c

    .line 99
    :cond_3e
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzss;->zzc(I)Lcom/google/android/gms/internal/ads/zzch;

    move-result-object v4

    .line 100
    invoke-virtual {v2, v1, v4}, Lcom/google/android/gms/internal/ads/zzsi;->zzg(ILcom/google/android/gms/internal/ads/zzch;)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 101
    invoke-virtual {v2, v1, v4}, Lcom/google/android/gms/internal/ads/zzsi;->zze(ILcom/google/android/gms/internal/ads/zzch;)Lcom/google/android/gms/internal/ads/zzsm;

    move-result-object v3

    if-nez v3, :cond_3f

    goto :goto_29

    :cond_3f
    new-instance v3, Lcom/google/android/gms/internal/ads/zzsq;

    const/4 v5, 0x0

    .line 102
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzch;->zzb(I)Lcom/google/android/gms/internal/ads/zzcf;

    move-result-object v4

    const/4 v6, 0x0

    invoke-direct {v3, v4, v6, v5}, Lcom/google/android/gms/internal/ads/zzsq;-><init>(Lcom/google/android/gms/internal/ads/zzcf;[II)V

    goto :goto_2c

    :cond_40
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 103
    :goto_2a
    iget v7, v4, Lcom/google/android/gms/internal/ads/zzch;->zzc:I

    if-ge v5, v7, :cond_44

    .line 104
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzch;->zzb(I)Lcom/google/android/gms/internal/ads/zzcf;

    move-result-object v7

    .line 105
    iget-object v8, v2, Lcom/google/android/gms/internal/ads/zzcn;->zzz:Lcom/google/android/gms/internal/ads/zzfsw;

    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/zzfsw;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/ads/zzcm;

    if-eqz v8, :cond_42

    new-instance v3, Lcom/google/android/gms/internal/ads/zzsq;

    iget-object v4, v8, Lcom/google/android/gms/internal/ads/zzcm;->zzc:Lcom/google/android/gms/internal/ads/zzftc;

    .line 106
    invoke-interface {v4}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v4

    .line 107
    array-length v5, v4

    new-array v8, v5, [I

    const/4 v9, 0x0

    :goto_2b
    if-ge v9, v5, :cond_41

    .line 108
    aget-object v10, v4, v9

    .line 109
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    aput v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_2b

    :cond_41
    const/4 v9, 0x0

    invoke-direct {v3, v7, v8, v9}, Lcom/google/android/gms/internal/ads/zzsq;-><init>(Lcom/google/android/gms/internal/ads/zzcf;[II)V

    goto :goto_2c

    :cond_42
    add-int/lit8 v5, v5, 0x1

    goto :goto_2a

    :cond_43
    const/4 v6, 0x0

    move-object v3, v6

    .line 111
    :cond_44
    :goto_2c
    aput-object v3, v20, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    :cond_45
    move-object/from16 v1, p0

    const/4 v6, 0x0

    .line 112
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzsp;->zze:Lcom/google/android/gms/internal/ads/zzry;

    .line 113
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzsv;->zzk()Lcom/google/android/gms/internal/ads/zzte;

    move-result-object v4

    .line 114
    invoke-static/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/zzrz;->zza([Lcom/google/android/gms/internal/ads/zzsq;)Lcom/google/android/gms/internal/ads/zzfss;

    move-result-object v5

    const/4 v7, 0x2

    new-array v13, v7, [Lcom/google/android/gms/internal/ads/zzsb;

    const/4 v14, 0x0

    :goto_2d
    if-ge v14, v7, :cond_49

    .line 115
    aget-object v7, v20, v14

    if-eqz v7, :cond_48

    iget-object v9, v7, Lcom/google/android/gms/internal/ads/zzsq;->zzb:[I

    .line 116
    array-length v8, v9

    if-nez v8, :cond_46

    goto :goto_2f

    :cond_46
    const/4 v15, 0x1

    if-ne v8, v15, :cond_47

    new-instance v8, Lcom/google/android/gms/internal/ads/zzsr;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzsq;->zza:Lcom/google/android/gms/internal/ads/zzcf;

    const/16 v16, 0x0

    .line 117
    aget v23, v9, v16

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v21, v8

    move-object/from16 v22, v7

    .line 118
    invoke-direct/range {v21 .. v26}, Lcom/google/android/gms/internal/ads/zzsr;-><init>(Lcom/google/android/gms/internal/ads/zzcf;IIILjava/lang/Object;)V

    goto :goto_2e

    :cond_47
    const/16 v16, 0x0

    .line 119
    iget-object v8, v7, Lcom/google/android/gms/internal/ads/zzsq;->zza:Lcom/google/android/gms/internal/ads/zzcf;

    const/4 v10, 0x0

    .line 120
    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v12, v7

    check-cast v12, Lcom/google/android/gms/internal/ads/zzfss;

    move-object v7, v3

    move-object v11, v4

    .line 121
    invoke-virtual/range {v7 .. v12}, Lcom/google/android/gms/internal/ads/zzry;->zza(Lcom/google/android/gms/internal/ads/zzcf;[IILcom/google/android/gms/internal/ads/zzte;Lcom/google/android/gms/internal/ads/zzfss;)Lcom/google/android/gms/internal/ads/zzrz;

    move-result-object v8

    :goto_2e
    aput-object v8, v13, v14

    goto :goto_30

    :cond_48
    :goto_2f
    const/4 v15, 0x1

    const/16 v16, 0x0

    :goto_30
    add-int/lit8 v14, v14, 0x1

    const/4 v7, 0x2

    goto :goto_2d

    :cond_49
    const/16 v16, 0x0

    new-array v3, v7, [Lcom/google/android/gms/internal/ads/zzin;

    const/4 v5, 0x0

    :goto_31
    if-ge v5, v7, :cond_4d

    .line 122
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzss;->zza(I)I

    move-result v4

    .line 123
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzsi;->zzf(I)Z

    move-result v8

    if-nez v8, :cond_4c

    iget-object v8, v2, Lcom/google/android/gms/internal/ads/zzcn;->zzA:Lcom/google/android/gms/internal/ads/zzftc;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/google/android/gms/internal/ads/zzfsn;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4a

    goto :goto_32

    .line 124
    :cond_4a
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzss;->zza(I)I

    move-result v4

    const/4 v8, -0x2

    if-eq v4, v8, :cond_4b

    aget-object v4, v13, v5

    if-eqz v4, :cond_4c

    :cond_4b
    sget-object v4, Lcom/google/android/gms/internal/ads/zzin;->zza:Lcom/google/android/gms/internal/ads/zzin;

    goto :goto_33

    :cond_4c
    :goto_32
    move-object v4, v6

    .line 125
    :goto_33
    aput-object v4, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_31

    .line 126
    :cond_4d
    iget-boolean v0, v2, Lcom/google/android/gms/internal/ads/zzsi;->zzN:Z

    .line 127
    invoke-static {v3, v13}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzsi;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsp;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzsi;

    return-object v0
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzsk;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzsi;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzsi;-><init>(Lcom/google/android/gms/internal/ads/zzsk;Lcom/google/android/gms/internal/ads/zzsh;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsp;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzsi;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzsi;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsv;->zzm()V

    :cond_0
    return-void
.end method
