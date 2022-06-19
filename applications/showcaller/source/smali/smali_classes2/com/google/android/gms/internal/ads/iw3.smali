.class public final Lcom/google/android/gms/internal/ads/iw3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/gw3;


# static fields
.field private static final a:[D


# instance fields
.field private b:Ljava/lang/String;

.field private c:Lcom/google/android/gms/internal/ads/yr3;

.field private final d:Lcom/google/android/gms/internal/ads/wx3;

.field private final e:Lcom/google/android/gms/internal/ads/la;

.field private final f:Lcom/google/android/gms/internal/ads/vw3;

.field private final g:[Z

.field private final h:Lcom/google/android/gms/internal/ads/hw3;

.field private i:J

.field private j:Z

.field private k:Z

.field private l:J

.field private m:J

.field private n:J

.field private o:J

.field private p:Z

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/iw3;->a:[D

    return-void

    :array_0
    .array-data 8
        0x4037f9dcb5112287L    # 23.976023976023978
        0x4038000000000000L    # 24.0
        0x4039000000000000L    # 25.0
        0x403df853e2556b28L    # 29.97002997002997
        0x403e000000000000L    # 30.0
        0x4049000000000000L    # 50.0
        0x404df853e2556b28L    # 59.94005994005994
        0x404e000000000000L    # 60.0
    .end array-data
.end method

.method constructor <init>(Lcom/google/android/gms/internal/ads/wx3;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/iw3;->d:Lcom/google/android/gms/internal/ads/wx3;

    const/4 v0, 0x4

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/iw3;->g:[Z

    new-instance v0, Lcom/google/android/gms/internal/ads/hw3;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/hw3;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/iw3;->h:Lcom/google/android/gms/internal/ads/hw3;

    if-eqz p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/vw3;

    const/16 v0, 0xb2

    .line 2
    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/vw3;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/iw3;->f:Lcom/google/android/gms/internal/ads/vw3;

    new-instance p1, Lcom/google/android/gms/internal/ads/la;

    .line 3
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/la;-><init>()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/iw3;->f:Lcom/google/android/gms/internal/ads/vw3;

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/iw3;->e:Lcom/google/android/gms/internal/ads/la;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/iw3;->m:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/iw3;->o:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ads/xq3;Lcom/google/android/gms/internal/ads/tx3;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/tx3;->a()V

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/tx3;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/iw3;->b:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/tx3;->b()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/xq3;->o(II)Lcom/google/android/gms/internal/ads/yr3;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/iw3;->c:Lcom/google/android/gms/internal/ads/yr3;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/iw3;->d:Lcom/google/android/gms/internal/ads/wx3;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/wx3;->a(Lcom/google/android/gms/internal/ads/xq3;Lcom/google/android/gms/internal/ads/tx3;)V

    :cond_0
    return-void
.end method

.method public final c(JI)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/iw3;->m:J

    return-void
.end method

.method public final d(Lcom/google/android/gms/internal/ads/la;)V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/iw3;->c:Lcom/google/android/gms/internal/ads/yr3;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/y8;->e(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/la;->o()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/la;->m()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/la;->q()[B

    move-result-object v3

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/iw3;->i:J

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/la;->l()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/iw3;->i:J

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/iw3;->c:Lcom/google/android/gms/internal/ads/yr3;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/la;->l()I

    move-result v5

    move-object/from16 v6, p1

    .line 2
    invoke-static {v4, v6, v5}, Lcom/google/android/gms/internal/ads/wr3;->b(Lcom/google/android/gms/internal/ads/yr3;Lcom/google/android/gms/internal/ads/la;I)V

    :goto_0
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/iw3;->g:[Z

    .line 3
    invoke-static {v3, v1, v2, v4}, Lcom/google/android/gms/internal/ads/ba;->d([BII[Z)I

    move-result v4

    if-ne v4, v2, :cond_2

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/iw3;->k:Z

    if-nez v4, :cond_0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/iw3;->h:Lcom/google/android/gms/internal/ads/hw3;

    .line 4
    invoke-virtual {v4, v3, v1, v2}, Lcom/google/android/gms/internal/ads/hw3;->c([BII)V

    :cond_0
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/iw3;->f:Lcom/google/android/gms/internal/ads/vw3;

    if-eqz v4, :cond_1

    .line 5
    invoke-virtual {v4, v3, v1, v2}, Lcom/google/android/gms/internal/ads/vw3;->d([BII)V

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v5, v4, 0x3

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/la;->q()[B

    move-result-object v7

    .line 6
    aget-byte v7, v7, v5

    and-int/lit16 v7, v7, 0xff

    sub-int v8, v4, v1

    iget-boolean v9, v0, Lcom/google/android/gms/internal/ads/iw3;->k:Z

    if-nez v9, :cond_a

    if-lez v8, :cond_3

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/iw3;->h:Lcom/google/android/gms/internal/ads/hw3;

    .line 7
    invoke-virtual {v9, v3, v1, v4}, Lcom/google/android/gms/internal/ads/hw3;->c([BII)V

    :cond_3
    if-gez v8, :cond_4

    neg-int v9, v8

    goto :goto_1

    :cond_4
    const/4 v9, 0x0

    :goto_1
    iget-object v12, v0, Lcom/google/android/gms/internal/ads/iw3;->h:Lcom/google/android/gms/internal/ads/hw3;

    .line 8
    invoke-virtual {v12, v7, v9}, Lcom/google/android/gms/internal/ads/hw3;->b(II)Z

    move-result v9

    if-eqz v9, :cond_a

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/iw3;->h:Lcom/google/android/gms/internal/ads/hw3;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/iw3;->b:Ljava/lang/String;

    .line 9
    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v13, v9, Lcom/google/android/gms/internal/ads/hw3;->e:[B

    iget v14, v9, Lcom/google/android/gms/internal/ads/hw3;->c:I

    .line 11
    invoke-static {v13, v14}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v13

    const/4 v14, 0x4

    .line 12
    aget-byte v15, v13, v14

    const/16 v16, 0x5

    .line 13
    aget-byte v10, v13, v16

    and-int/lit16 v10, v10, 0xff

    and-int/lit16 v15, v15, 0xff

    shl-int/2addr v15, v14

    shr-int/lit8 v17, v10, 0x4

    or-int v15, v15, v17

    and-int/lit8 v10, v10, 0xf

    const/16 v11, 0x8

    shl-int/2addr v10, v11

    const/16 v18, 0x6

    .line 14
    aget-byte v11, v13, v18

    and-int/lit16 v11, v11, 0xff

    or-int/2addr v10, v11

    const/4 v11, 0x7

    .line 15
    aget-byte v14, v13, v11

    and-int/lit16 v14, v14, 0xf0

    const/4 v11, 0x4

    shr-int/2addr v14, v11

    const/4 v11, 0x2

    if-eq v14, v11, :cond_7

    const/4 v11, 0x3

    if-eq v14, v11, :cond_6

    const/4 v11, 0x4

    if-eq v14, v11, :cond_5

    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_5
    mul-int/lit8 v11, v10, 0x79

    int-to-float v11, v11

    mul-int/lit8 v14, v15, 0x64

    goto :goto_2

    :cond_6
    mul-int/lit8 v11, v10, 0x10

    int-to-float v11, v11

    mul-int/lit8 v14, v15, 0x9

    goto :goto_2

    :cond_7
    mul-int/lit8 v11, v10, 0x4

    int-to-float v11, v11

    mul-int/lit8 v14, v15, 0x3

    :goto_2
    int-to-float v14, v14

    div-float/2addr v11, v14

    :goto_3
    new-instance v14, Lcom/google/android/gms/internal/ads/s4;

    .line 16
    invoke-direct {v14}, Lcom/google/android/gms/internal/ads/s4;-><init>()V

    .line 17
    invoke-virtual {v14, v12}, Lcom/google/android/gms/internal/ads/s4;->d(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/s4;

    const-string v12, "video/mpeg2"

    .line 18
    invoke-virtual {v14, v12}, Lcom/google/android/gms/internal/ads/s4;->n(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/s4;

    .line 19
    invoke-virtual {v14, v15}, Lcom/google/android/gms/internal/ads/s4;->s(I)Lcom/google/android/gms/internal/ads/s4;

    .line 20
    invoke-virtual {v14, v10}, Lcom/google/android/gms/internal/ads/s4;->t(I)Lcom/google/android/gms/internal/ads/s4;

    .line 21
    invoke-virtual {v14, v11}, Lcom/google/android/gms/internal/ads/s4;->w(F)Lcom/google/android/gms/internal/ads/s4;

    .line 22
    invoke-static {v13}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v14, v10}, Lcom/google/android/gms/internal/ads/s4;->p(Ljava/util/List;)Lcom/google/android/gms/internal/ads/s4;

    .line 23
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/s4;->I()Lcom/google/android/gms/internal/ads/u4;

    move-result-object v10

    const/4 v11, 0x7

    .line 24
    aget-byte v11, v13, v11

    and-int/lit8 v11, v11, 0xf

    add-int/lit8 v11, v11, -0x1

    const-wide/16 v14, 0x0

    if-ltz v11, :cond_9

    const/16 v12, 0x8

    if-ge v11, v12, :cond_9

    sget-object v12, Lcom/google/android/gms/internal/ads/iw3;->a:[D

    aget-wide v11, v12, v11

    iget v9, v9, Lcom/google/android/gms/internal/ads/hw3;->d:I

    add-int/lit8 v9, v9, 0x9

    .line 25
    aget-byte v9, v13, v9

    and-int/lit8 v13, v9, 0x60

    shr-int/lit8 v13, v13, 0x5

    and-int/lit8 v9, v9, 0x1f

    if-eq v13, v9, :cond_8

    int-to-double v13, v13

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    add-double/2addr v13, v15

    add-int/lit8 v9, v9, 0x1

    move/from16 v16, v5

    int-to-double v5, v9

    div-double/2addr v13, v5

    mul-double v11, v11, v13

    goto :goto_4

    :cond_8
    move/from16 v16, v5

    :goto_4
    const-wide v5, 0x412e848000000000L    # 1000000.0

    div-double/2addr v5, v11

    double-to-long v14, v5

    goto :goto_5

    :cond_9
    move/from16 v16, v5

    .line 26
    :goto_5
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/iw3;->c:Lcom/google/android/gms/internal/ads/yr3;

    .line 27
    iget-object v9, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Lcom/google/android/gms/internal/ads/u4;

    invoke-interface {v6, v9}, Lcom/google/android/gms/internal/ads/yr3;->d(Lcom/google/android/gms/internal/ads/u4;)V

    .line 28
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/iw3;->l:J

    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/google/android/gms/internal/ads/iw3;->k:Z

    goto :goto_6

    :cond_a
    move/from16 v16, v5

    :goto_6
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/iw3;->f:Lcom/google/android/gms/internal/ads/vw3;

    const/16 v6, 0xb2

    if-eqz v5, :cond_e

    if-lez v8, :cond_b

    .line 29
    invoke-virtual {v5, v3, v1, v4}, Lcom/google/android/gms/internal/ads/vw3;->d([BII)V

    const/4 v1, 0x0

    goto :goto_7

    :cond_b
    neg-int v1, v8

    :goto_7
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/iw3;->f:Lcom/google/android/gms/internal/ads/vw3;

    .line 30
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/vw3;->e(I)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/iw3;->f:Lcom/google/android/gms/internal/ads/vw3;

    .line 31
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/vw3;->d:[B

    iget v1, v1, Lcom/google/android/gms/internal/ads/vw3;->e:I

    invoke-static {v5, v1}, Lcom/google/android/gms/internal/ads/ba;->a([BI)I

    move-result v1

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/iw3;->e:Lcom/google/android/gms/internal/ads/la;

    .line 32
    sget v8, Lcom/google/android/gms/internal/ads/wa;->a:I

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/iw3;->f:Lcom/google/android/gms/internal/ads/vw3;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/vw3;->d:[B

    invoke-virtual {v5, v8, v1}, Lcom/google/android/gms/internal/ads/la;->j([BI)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/iw3;->d:Lcom/google/android/gms/internal/ads/wx3;

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/iw3;->o:J

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/iw3;->e:Lcom/google/android/gms/internal/ads/la;

    .line 33
    invoke-virtual {v1, v8, v9, v5}, Lcom/google/android/gms/internal/ads/wx3;->b(JLcom/google/android/gms/internal/ads/la;)V

    :cond_c
    if-ne v7, v6, :cond_e

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/la;->q()[B

    move-result-object v1

    add-int/lit8 v5, v4, 0x2

    .line 34
    aget-byte v1, v1, v5

    const/4 v5, 0x1

    if-ne v1, v5, :cond_d

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/iw3;->f:Lcom/google/android/gms/internal/ads/vw3;

    .line 35
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/vw3;->c(I)V

    :cond_d
    const/16 v7, 0xb2

    :cond_e
    if-eqz v7, :cond_10

    const/16 v1, 0xb3

    if-ne v7, v1, :cond_f

    goto :goto_8

    :cond_f
    const/16 v1, 0xb8

    if-ne v7, v1, :cond_17

    const/4 v1, 0x1

    .line 36
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/iw3;->p:Z

    goto :goto_d

    :cond_10
    :goto_8
    sub-int v1, v2, v4

    .line 37
    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/iw3;->q:Z

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v4, :cond_11

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/iw3;->k:Z

    if-eqz v4, :cond_11

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/iw3;->o:J

    cmp-long v4, v9, v5

    if-eqz v4, :cond_11

    iget-boolean v11, v0, Lcom/google/android/gms/internal/ads/iw3;->p:Z

    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/iw3;->i:J

    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/iw3;->n:J

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/iw3;->c:Lcom/google/android/gms/internal/ads/yr3;

    sub-long/2addr v12, v14

    long-to-int v4, v12

    sub-int v12, v4, v1

    const/4 v14, 0x0

    move v13, v1

    .line 38
    invoke-interface/range {v8 .. v14}, Lcom/google/android/gms/internal/ads/yr3;->c(JIIILcom/google/android/gms/internal/ads/xr3;)V

    :cond_11
    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/iw3;->j:Z

    if-eqz v4, :cond_13

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/iw3;->q:Z

    if-eqz v4, :cond_12

    goto :goto_9

    :cond_12
    const/4 v1, 0x0

    const/4 v4, 0x1

    goto :goto_b

    :cond_13
    :goto_9
    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/iw3;->i:J

    int-to-long v10, v1

    sub-long/2addr v8, v10

    iput-wide v8, v0, Lcom/google/android/gms/internal/ads/iw3;->n:J

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/iw3;->m:J

    cmp-long v1, v8, v5

    if-eqz v1, :cond_14

    goto :goto_a

    :cond_14
    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/iw3;->o:J

    cmp-long v1, v8, v5

    if-eqz v1, :cond_15

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/iw3;->l:J

    add-long/2addr v8, v10

    goto :goto_a

    :cond_15
    move-wide v8, v5

    :goto_a
    iput-wide v8, v0, Lcom/google/android/gms/internal/ads/iw3;->o:J

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/iw3;->p:Z

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/iw3;->m:J

    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/iw3;->j:Z

    :goto_b
    if-nez v7, :cond_16

    const/4 v10, 0x1

    goto :goto_c

    :cond_16
    const/4 v10, 0x0

    :goto_c
    iput-boolean v10, v0, Lcom/google/android/gms/internal/ads/iw3;->q:Z

    :cond_17
    :goto_d
    move-object/from16 v6, p1

    move/from16 v1, v16

    goto/16 :goto_0
.end method

.method public final zza()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/iw3;->g:[Z

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ba;->e([Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/iw3;->h:Lcom/google/android/gms/internal/ads/hw3;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hw3;->a()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/iw3;->f:Lcom/google/android/gms/internal/ads/vw3;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/vw3;->a()V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/iw3;->i:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/iw3;->j:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/iw3;->m:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/iw3;->o:J

    return-void
.end method
