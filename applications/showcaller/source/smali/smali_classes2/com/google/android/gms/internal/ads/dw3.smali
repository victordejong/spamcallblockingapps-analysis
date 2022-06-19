.class public final Lcom/google/android/gms/internal/ads/dw3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/gw3;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/la;

.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/google/android/gms/internal/ads/yr3;

.field private e:I

.field private f:I

.field private g:I

.field private h:J

.field private i:Lcom/google/android/gms/internal/ads/u4;

.field private j:I

.field private k:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/la;

    const/16 v1, 0x12

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/la;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dw3;->a:Lcom/google/android/gms/internal/ads/la;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dw3;->e:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dw3;->k:J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dw3;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ads/xq3;Lcom/google/android/gms/internal/ads/tx3;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/tx3;->a()V

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/tx3;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dw3;->c:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/tx3;->b()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/ads/xq3;->o(II)Lcom/google/android/gms/internal/ads/yr3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dw3;->d:Lcom/google/android/gms/internal/ads/yr3;

    return-void
.end method

.method public final c(JI)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/dw3;->k:J

    :cond_0
    return-void
.end method

.method public final d(Lcom/google/android/gms/internal/ads/la;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/dw3;->d:Lcom/google/android/gms/internal/ads/yr3;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/y8;->e(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/la;->l()I

    move-result v2

    if-lez v2, :cond_d

    iget v2, v0, Lcom/google/android/gms/internal/ads/dw3;->e:I

    const/16 v3, 0x8

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x4

    if-eqz v2, :cond_b

    if-eq v2, v7, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/la;->l()I

    move-result v2

    iget v3, v0, Lcom/google/android/gms/internal/ads/dw3;->j:I

    iget v4, v0, Lcom/google/android/gms/internal/ads/dw3;->f:I

    sub-int/2addr v3, v4

    .line 2
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/dw3;->d:Lcom/google/android/gms/internal/ads/yr3;

    .line 3
    invoke-static {v3, v1, v2}, Lcom/google/android/gms/internal/ads/wr3;->b(Lcom/google/android/gms/internal/ads/yr3;Lcom/google/android/gms/internal/ads/la;I)V

    iget v3, v0, Lcom/google/android/gms/internal/ads/dw3;->f:I

    add-int/2addr v3, v2

    iput v3, v0, Lcom/google/android/gms/internal/ads/dw3;->f:I

    iget v11, v0, Lcom/google/android/gms/internal/ads/dw3;->j:I

    if-ne v3, v11, :cond_0

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/dw3;->k:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v8, v2

    if-eqz v4, :cond_1

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/dw3;->d:Lcom/google/android/gms/internal/ads/yr3;

    const/4 v10, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 4
    invoke-interface/range {v7 .. v13}, Lcom/google/android/gms/internal/ads/yr3;->c(JIIILcom/google/android/gms/internal/ads/xr3;)V

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/dw3;->k:J

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/dw3;->h:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/dw3;->k:J

    :cond_1
    iput v6, v0, Lcom/google/android/gms/internal/ads/dw3;->e:I

    goto :goto_0

    .line 5
    :cond_2
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/dw3;->a:Lcom/google/android/gms/internal/ads/la;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/la;->q()[B

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/la;->l()I

    move-result v9

    iget v10, v0, Lcom/google/android/gms/internal/ads/dw3;->f:I

    const/16 v11, 0x12

    rsub-int/lit8 v10, v10, 0x12

    .line 6
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    iget v10, v0, Lcom/google/android/gms/internal/ads/dw3;->f:I

    .line 7
    invoke-virtual {v1, v2, v10, v9}, Lcom/google/android/gms/internal/ads/la;->u([BII)V

    iget v2, v0, Lcom/google/android/gms/internal/ads/dw3;->f:I

    add-int/2addr v2, v9

    iput v2, v0, Lcom/google/android/gms/internal/ads/dw3;->f:I

    if-ne v2, v11, :cond_0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/dw3;->a:Lcom/google/android/gms/internal/ads/la;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/la;->q()[B

    move-result-object v2

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/dw3;->i:Lcom/google/android/gms/internal/ads/u4;

    if-nez v9, :cond_3

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/dw3;->c:Ljava/lang/String;

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/dw3;->b:Ljava/lang/String;

    const/4 v12, 0x0

    .line 8
    invoke-static {v2, v9, v10, v12}, Lcom/google/android/gms/internal/ads/sq3;->a([BLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzn;)Lcom/google/android/gms/internal/ads/u4;

    move-result-object v9

    iput-object v9, v0, Lcom/google/android/gms/internal/ads/dw3;->i:Lcom/google/android/gms/internal/ads/u4;

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/dw3;->d:Lcom/google/android/gms/internal/ads/yr3;

    .line 9
    invoke-interface {v10, v9}, Lcom/google/android/gms/internal/ads/yr3;->d(Lcom/google/android/gms/internal/ads/u4;)V

    .line 10
    :cond_3
    sget v9, Lcom/google/android/gms/internal/ads/sq3;->d:I

    .line 11
    aget-byte v9, v2, v6

    const/16 v10, 0x1f

    const/4 v12, -0x1

    const/4 v13, -0x2

    const/4 v14, 0x5

    const/4 v15, 0x6

    const/16 v16, 0x7

    if-eq v9, v13, :cond_6

    if-eq v9, v12, :cond_5

    if-eq v9, v10, :cond_4

    .line 12
    aget-byte v3, v2, v14

    and-int/2addr v3, v4

    shl-int/lit8 v3, v3, 0xc

    aget-byte v4, v2, v15

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v8

    or-int/2addr v3, v4

    aget-byte v4, v2, v16

    goto :goto_2

    .line 13
    :cond_4
    aget-byte v9, v2, v15

    and-int/2addr v4, v9

    shl-int/lit8 v4, v4, 0xc

    aget-byte v9, v2, v16

    and-int/lit16 v9, v9, 0xff

    shl-int/2addr v9, v8

    or-int/2addr v4, v9

    aget-byte v3, v2, v3

    and-int/lit8 v3, v3, 0x3c

    shr-int/2addr v3, v5

    or-int/2addr v3, v4

    goto :goto_1

    .line 14
    :cond_5
    aget-byte v3, v2, v16

    and-int/2addr v3, v4

    shl-int/lit8 v3, v3, 0xc

    aget-byte v4, v2, v15

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v8

    or-int/2addr v3, v4

    const/16 v4, 0x9

    aget-byte v4, v2, v4

    and-int/lit8 v4, v4, 0x3c

    shr-int/2addr v4, v5

    or-int/2addr v3, v4

    :goto_1
    add-int/2addr v3, v7

    const/4 v4, 0x1

    goto :goto_3

    .line 15
    :cond_6
    aget-byte v3, v2, v8

    and-int/2addr v3, v4

    shl-int/lit8 v3, v3, 0xc

    aget-byte v4, v2, v16

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v8

    or-int/2addr v3, v4

    aget-byte v4, v2, v15

    :goto_2
    and-int/lit16 v4, v4, 0xf0

    shr-int/2addr v4, v8

    or-int/2addr v3, v4

    add-int/2addr v3, v7

    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_7

    mul-int/lit8 v3, v3, 0x10

    .line 16
    div-int/lit8 v3, v3, 0xe

    :cond_7
    iput v3, v0, Lcom/google/android/gms/internal/ads/dw3;->j:I

    .line 17
    aget-byte v3, v2, v6

    if-eq v3, v13, :cond_a

    if-eq v3, v12, :cond_9

    if-eq v3, v10, :cond_8

    .line 18
    aget-byte v3, v2, v8

    and-int/2addr v3, v7

    shl-int/2addr v3, v15

    aget-byte v2, v2, v14

    goto :goto_5

    .line 19
    :cond_8
    aget-byte v3, v2, v14

    and-int/lit8 v3, v3, 0x7

    shl-int/2addr v3, v8

    aget-byte v2, v2, v15

    goto :goto_4

    .line 20
    :cond_9
    aget-byte v3, v2, v8

    and-int/lit8 v3, v3, 0x7

    shl-int/2addr v3, v8

    aget-byte v2, v2, v16

    :goto_4
    and-int/lit8 v2, v2, 0x3c

    goto :goto_6

    .line 21
    :cond_a
    aget-byte v3, v2, v14

    and-int/2addr v3, v7

    shl-int/2addr v3, v15

    aget-byte v2, v2, v8

    :goto_5
    and-int/lit16 v2, v2, 0xfc

    :goto_6
    shr-int/2addr v2, v5

    or-int/2addr v2, v3

    add-int/2addr v2, v7

    mul-int/lit8 v2, v2, 0x20

    int-to-long v2, v2

    const-wide/32 v7, 0xf4240

    mul-long v2, v2, v7

    .line 22
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dw3;->i:Lcom/google/android/gms/internal/ads/u4;

    .line 23
    iget v4, v4, Lcom/google/android/gms/internal/ads/u4;->B:I

    int-to-long v7, v4

    div-long/2addr v2, v7

    long-to-int v3, v2

    int-to-long v2, v3

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/dw3;->h:J

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/dw3;->a:Lcom/google/android/gms/internal/ads/la;

    .line 24
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/dw3;->d:Lcom/google/android/gms/internal/ads/yr3;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/dw3;->a:Lcom/google/android/gms/internal/ads/la;

    .line 25
    invoke-static {v2, v3, v11}, Lcom/google/android/gms/internal/ads/wr3;->b(Lcom/google/android/gms/internal/ads/yr3;Lcom/google/android/gms/internal/ads/la;I)V

    iput v5, v0, Lcom/google/android/gms/internal/ads/dw3;->e:I

    goto/16 :goto_0

    .line 26
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/la;->l()I

    move-result v2

    if-lez v2, :cond_0

    iget v2, v0, Lcom/google/android/gms/internal/ads/dw3;->g:I

    shl-int/2addr v2, v3

    iput v2, v0, Lcom/google/android/gms/internal/ads/dw3;->g:I

    .line 27
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/la;->v()I

    move-result v9

    or-int/2addr v2, v9

    iput v2, v0, Lcom/google/android/gms/internal/ads/dw3;->g:I

    .line 28
    sget v9, Lcom/google/android/gms/internal/ads/sq3;->d:I

    const v9, 0x7ffe8001

    if-eq v2, v9, :cond_c

    const v9, -0x180fe80

    if-eq v2, v9, :cond_c

    const v9, 0x1fffe800

    if-eq v2, v9, :cond_c

    const v9, -0xe0ff18

    if-ne v2, v9, :cond_b

    :cond_c
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/dw3;->a:Lcom/google/android/gms/internal/ads/la;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/la;->q()[B

    move-result-object v2

    iget v3, v0, Lcom/google/android/gms/internal/ads/dw3;->g:I

    shr-int/lit8 v9, v3, 0x18

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    .line 29
    aput-byte v9, v2, v6

    shr-int/lit8 v9, v3, 0x10

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    .line 30
    aput-byte v9, v2, v7

    shr-int/lit8 v9, v3, 0x8

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    .line 31
    aput-byte v9, v2, v5

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 32
    aput-byte v3, v2, v4

    iput v8, v0, Lcom/google/android/gms/internal/ads/dw3;->f:I

    iput v6, v0, Lcom/google/android/gms/internal/ads/dw3;->g:I

    iput v7, v0, Lcom/google/android/gms/internal/ads/dw3;->e:I

    goto/16 :goto_0

    :cond_d
    return-void
.end method

.method public final zza()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dw3;->e:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/dw3;->f:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/dw3;->g:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dw3;->k:J

    return-void
.end method
