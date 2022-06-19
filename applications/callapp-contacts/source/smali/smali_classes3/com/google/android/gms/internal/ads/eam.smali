.class final Lcom/google/android/gms/internal/ads/eam;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ebc;


# instance fields
.field final a:I

.field private final synthetic b:Lcom/google/android/gms/internal/ads/eah;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/eah;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eam;->b:Lcom/google/android/gms/internal/ads/eah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lcom/google/android/gms/internal/ads/eam;->a:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/dvw;Lcom/google/android/gms/internal/ads/dxm;Z)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v8, p2

    .line 7
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/eam;->b:Lcom/google/android/gms/internal/ads/eah;

    iget v2, v0, Lcom/google/android/gms/internal/ads/eam;->a:I

    .line 2130
    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/eah;->o:Z

    const/4 v9, -0x3

    if-nez v3, :cond_16

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/eah;->g()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_4

    .line 2132
    :cond_0
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/eah;->j:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/google/android/gms/internal/ads/ebb;

    iget-boolean v5, v1, Lcom/google/android/gms/internal/ads/eah;->v:Z

    iget-wide v11, v1, Lcom/google/android/gms/internal/ads/eah;->u:J

    .line 3034
    iget-object v1, v10, Lcom/google/android/gms/internal/ads/ebb;->c:Lcom/google/android/gms/internal/ads/eaz;

    iget-object v6, v10, Lcom/google/android/gms/internal/ads/ebb;->g:Lcom/google/android/gms/internal/ads/zzht;

    iget-object v7, v10, Lcom/google/android/gms/internal/ads/ebb;->d:Lcom/google/android/gms/internal/ads/eay;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/eaz;->a(Lcom/google/android/gms/internal/ads/dvw;Lcom/google/android/gms/internal/ads/dxm;ZZLcom/google/android/gms/internal/ads/zzht;Lcom/google/android/gms/internal/ads/eay;)I

    move-result v1

    const/4 v2, -0x5

    if-eq v1, v2, :cond_15

    const/4 v2, -0x4

    if-eq v1, v2, :cond_2

    if-ne v1, v9, :cond_1

    return v9

    .line 3104
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 3038
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/dxg;->c()Z

    move-result v1

    if-nez v1, :cond_14

    .line 3039
    iget-wide v3, v8, Lcom/google/android/gms/internal/ads/dxm;->d:J

    cmp-long v1, v3, v11

    if-gez v1, :cond_3

    .line 4009
    iget v1, v8, Lcom/google/android/gms/internal/ads/dxg;->a:I

    const/high16 v3, -0x80000000

    or-int/2addr v1, v3

    iput v1, v8, Lcom/google/android/gms/internal/ads/dxg;->a:I

    .line 3041
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/dxm;->e()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_e

    .line 3042
    iget-object v1, v10, Lcom/google/android/gms/internal/ads/ebb;->d:Lcom/google/android/gms/internal/ads/eay;

    .line 3043
    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/eay;->b:J

    .line 3044
    iget-object v6, v10, Lcom/google/android/gms/internal/ads/ebb;->e:Lcom/google/android/gms/internal/ads/ecy;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/ecy;->a(I)V

    .line 3045
    iget-object v6, v10, Lcom/google/android/gms/internal/ads/ebb;->e:Lcom/google/android/gms/internal/ads/ecy;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/ecy;->a:[B

    invoke-virtual {v10, v4, v5, v6, v7}, Lcom/google/android/gms/internal/ads/ebb;->a(J[BI)V

    const-wide/16 v11, 0x1

    add-long/2addr v4, v11

    .line 3047
    iget-object v6, v10, Lcom/google/android/gms/internal/ads/ebb;->e:Lcom/google/android/gms/internal/ads/ecy;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/ecy;->a:[B

    aget-byte v6, v6, v3

    and-int/lit16 v9, v6, 0x80

    if-eqz v9, :cond_4

    const/4 v9, 0x1

    goto :goto_0

    :cond_4
    const/4 v9, 0x0

    :goto_0
    and-int/lit8 v6, v6, 0x7f

    .line 3050
    iget-object v11, v8, Lcom/google/android/gms/internal/ads/dxm;->b:Lcom/google/android/gms/internal/ads/dxj;

    iget-object v11, v11, Lcom/google/android/gms/internal/ads/dxj;->a:[B

    const/16 v12, 0x10

    if-nez v11, :cond_5

    .line 3051
    iget-object v11, v8, Lcom/google/android/gms/internal/ads/dxm;->b:Lcom/google/android/gms/internal/ads/dxj;

    new-array v13, v12, [B

    iput-object v13, v11, Lcom/google/android/gms/internal/ads/dxj;->a:[B

    .line 3052
    :cond_5
    iget-object v11, v8, Lcom/google/android/gms/internal/ads/dxm;->b:Lcom/google/android/gms/internal/ads/dxj;

    iget-object v11, v11, Lcom/google/android/gms/internal/ads/dxj;->a:[B

    invoke-virtual {v10, v4, v5, v11, v6}, Lcom/google/android/gms/internal/ads/ebb;->a(J[BI)V

    int-to-long v13, v6

    add-long/2addr v4, v13

    if-eqz v9, :cond_6

    .line 3055
    iget-object v6, v10, Lcom/google/android/gms/internal/ads/ebb;->e:Lcom/google/android/gms/internal/ads/ecy;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/ecy;->a(I)V

    .line 3056
    iget-object v6, v10, Lcom/google/android/gms/internal/ads/ebb;->e:Lcom/google/android/gms/internal/ads/ecy;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/ecy;->a:[B

    invoke-virtual {v10, v4, v5, v6, v7}, Lcom/google/android/gms/internal/ads/ebb;->a(J[BI)V

    const-wide/16 v6, 0x2

    add-long/2addr v4, v6

    .line 3058
    iget-object v6, v10, Lcom/google/android/gms/internal/ads/ebb;->e:Lcom/google/android/gms/internal/ads/ecy;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/ecy;->e()I

    move-result v7

    .line 3060
    :cond_6
    iget-object v6, v8, Lcom/google/android/gms/internal/ads/dxm;->b:Lcom/google/android/gms/internal/ads/dxj;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/dxj;->d:[I

    if-eqz v6, :cond_7

    .line 3061
    array-length v11, v6

    if-ge v11, v7, :cond_8

    .line 3062
    :cond_7
    new-array v6, v7, [I

    .line 3063
    :cond_8
    iget-object v11, v8, Lcom/google/android/gms/internal/ads/dxm;->b:Lcom/google/android/gms/internal/ads/dxj;

    iget-object v11, v11, Lcom/google/android/gms/internal/ads/dxj;->e:[I

    if-eqz v11, :cond_9

    .line 3064
    array-length v13, v11

    if-ge v13, v7, :cond_a

    .line 3065
    :cond_9
    new-array v11, v7, [I

    :cond_a
    if-eqz v9, :cond_b

    mul-int/lit8 v9, v7, 0x6

    .line 3068
    iget-object v13, v10, Lcom/google/android/gms/internal/ads/ebb;->e:Lcom/google/android/gms/internal/ads/ecy;

    invoke-virtual {v13, v9}, Lcom/google/android/gms/internal/ads/ecy;->a(I)V

    .line 3069
    iget-object v13, v10, Lcom/google/android/gms/internal/ads/ebb;->e:Lcom/google/android/gms/internal/ads/ecy;

    iget-object v13, v13, Lcom/google/android/gms/internal/ads/ecy;->a:[B

    invoke-virtual {v10, v4, v5, v13, v9}, Lcom/google/android/gms/internal/ads/ebb;->a(J[BI)V

    int-to-long v13, v9

    add-long/2addr v4, v13

    .line 3071
    iget-object v9, v10, Lcom/google/android/gms/internal/ads/ebb;->e:Lcom/google/android/gms/internal/ads/ecy;

    invoke-virtual {v9, v3}, Lcom/google/android/gms/internal/ads/ecy;->c(I)V

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v7, :cond_c

    .line 3073
    iget-object v13, v10, Lcom/google/android/gms/internal/ads/ebb;->e:Lcom/google/android/gms/internal/ads/ecy;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/ecy;->e()I

    move-result v13

    aput v13, v6, v9

    .line 3074
    iget-object v13, v10, Lcom/google/android/gms/internal/ads/ebb;->e:Lcom/google/android/gms/internal/ads/ecy;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/ecy;->i()I

    move-result v13

    aput v13, v11, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 3077
    :cond_b
    aput v3, v6, v3

    .line 3078
    iget v9, v1, Lcom/google/android/gms/internal/ads/eay;->a:I

    iget-wide v13, v1, Lcom/google/android/gms/internal/ads/eay;->b:J

    sub-long v13, v4, v13

    long-to-int v14, v13

    sub-int/2addr v9, v14

    aput v9, v11, v3

    .line 3079
    :cond_c
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/eay;->d:Lcom/google/android/gms/internal/ads/dyf;

    .line 3080
    iget-object v13, v8, Lcom/google/android/gms/internal/ads/dxm;->b:Lcom/google/android/gms/internal/ads/dxj;

    iget-object v14, v9, Lcom/google/android/gms/internal/ads/dyf;->b:[B

    iget-object v15, v8, Lcom/google/android/gms/internal/ads/dxm;->b:Lcom/google/android/gms/internal/ads/dxj;

    iget-object v15, v15, Lcom/google/android/gms/internal/ads/dxj;->a:[B

    iget v9, v9, Lcom/google/android/gms/internal/ads/dyf;->a:I

    .line 5007
    iput v7, v13, Lcom/google/android/gms/internal/ads/dxj;->f:I

    .line 5008
    iput-object v6, v13, Lcom/google/android/gms/internal/ads/dxj;->d:[I

    .line 5009
    iput-object v11, v13, Lcom/google/android/gms/internal/ads/dxj;->e:[I

    .line 5010
    iput-object v14, v13, Lcom/google/android/gms/internal/ads/dxj;->b:[B

    .line 5011
    iput-object v15, v13, Lcom/google/android/gms/internal/ads/dxj;->a:[B

    .line 5012
    iput v9, v13, Lcom/google/android/gms/internal/ads/dxj;->c:I

    .line 5013
    iput v3, v13, Lcom/google/android/gms/internal/ads/dxj;->g:I

    .line 5014
    iput v3, v13, Lcom/google/android/gms/internal/ads/dxj;->h:I

    .line 5015
    sget v6, Lcom/google/android/gms/internal/ads/ede;->a:I

    if-lt v6, v12, :cond_d

    .line 5017
    iget-object v6, v13, Lcom/google/android/gms/internal/ads/dxj;->i:Landroid/media/MediaCodec$CryptoInfo;

    iget v7, v13, Lcom/google/android/gms/internal/ads/dxj;->f:I

    iput v7, v6, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    .line 5018
    iget-object v6, v13, Lcom/google/android/gms/internal/ads/dxj;->i:Landroid/media/MediaCodec$CryptoInfo;

    iget-object v7, v13, Lcom/google/android/gms/internal/ads/dxj;->d:[I

    iput-object v7, v6, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 5019
    iget-object v6, v13, Lcom/google/android/gms/internal/ads/dxj;->i:Landroid/media/MediaCodec$CryptoInfo;

    iget-object v7, v13, Lcom/google/android/gms/internal/ads/dxj;->e:[I

    iput-object v7, v6, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    .line 5020
    iget-object v6, v13, Lcom/google/android/gms/internal/ads/dxj;->i:Landroid/media/MediaCodec$CryptoInfo;

    iget-object v7, v13, Lcom/google/android/gms/internal/ads/dxj;->b:[B

    iput-object v7, v6, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    .line 5021
    iget-object v6, v13, Lcom/google/android/gms/internal/ads/dxj;->i:Landroid/media/MediaCodec$CryptoInfo;

    iget-object v7, v13, Lcom/google/android/gms/internal/ads/dxj;->a:[B

    iput-object v7, v6, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    .line 5022
    iget-object v6, v13, Lcom/google/android/gms/internal/ads/dxj;->i:Landroid/media/MediaCodec$CryptoInfo;

    iget v7, v13, Lcom/google/android/gms/internal/ads/dxj;->c:I

    iput v7, v6, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    .line 5023
    sget v6, Lcom/google/android/gms/internal/ads/ede;->a:I

    const/16 v7, 0x18

    if-lt v6, v7, :cond_d

    .line 5024
    iget-object v6, v13, Lcom/google/android/gms/internal/ads/dxj;->j:Lcom/google/android/gms/internal/ads/dxl;

    .line 7005
    iget-object v7, v6, Lcom/google/android/gms/internal/ads/dxl;->b:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    invoke-virtual {v7, v3, v3}, Landroid/media/MediaCodec$CryptoInfo$Pattern;->set(II)V

    .line 7006
    iget-object v7, v6, Lcom/google/android/gms/internal/ads/dxl;->a:Landroid/media/MediaCodec$CryptoInfo;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/dxl;->b:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    invoke-virtual {v7, v6}, Landroid/media/MediaCodec$CryptoInfo;->setPattern(Landroid/media/MediaCodec$CryptoInfo$Pattern;)V

    .line 3081
    :cond_d
    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/eay;->b:J

    sub-long/2addr v4, v6

    long-to-int v5, v4

    .line 3082
    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/eay;->b:J

    int-to-long v11, v5

    add-long/2addr v6, v11

    iput-wide v6, v1, Lcom/google/android/gms/internal/ads/eay;->b:J

    .line 3083
    iget v4, v1, Lcom/google/android/gms/internal/ads/eay;->a:I

    sub-int/2addr v4, v5

    iput v4, v1, Lcom/google/android/gms/internal/ads/eay;->a:I

    .line 3084
    :cond_e
    iget-object v1, v10, Lcom/google/android/gms/internal/ads/ebb;->d:Lcom/google/android/gms/internal/ads/eay;

    iget v1, v1, Lcom/google/android/gms/internal/ads/eay;->a:I

    .line 8005
    iget-object v4, v8, Lcom/google/android/gms/internal/ads/dxm;->c:Ljava/nio/ByteBuffer;

    if-nez v4, :cond_f

    .line 8006
    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/ads/dxm;->b(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v8, Lcom/google/android/gms/internal/ads/dxm;->c:Ljava/nio/ByteBuffer;

    goto :goto_2

    .line 8008
    :cond_f
    iget-object v4, v8, Lcom/google/android/gms/internal/ads/dxm;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    .line 8009
    iget-object v5, v8, Lcom/google/android/gms/internal/ads/dxm;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v1, v5

    if-ge v4, v1, :cond_11

    .line 8013
    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/ads/dxm;->b(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    if-lez v5, :cond_10

    .line 8015
    iget-object v4, v8, Lcom/google/android/gms/internal/ads/dxm;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 8016
    iget-object v4, v8, Lcom/google/android/gms/internal/ads/dxm;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 8017
    iget-object v4, v8, Lcom/google/android/gms/internal/ads/dxm;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 8018
    :cond_10
    iput-object v1, v8, Lcom/google/android/gms/internal/ads/dxm;->c:Ljava/nio/ByteBuffer;

    .line 3085
    :cond_11
    :goto_2
    iget-object v1, v10, Lcom/google/android/gms/internal/ads/ebb;->d:Lcom/google/android/gms/internal/ads/eay;

    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/eay;->b:J

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/dxm;->c:Ljava/nio/ByteBuffer;

    iget-object v6, v10, Lcom/google/android/gms/internal/ads/ebb;->d:Lcom/google/android/gms/internal/ads/eay;

    iget v6, v6, Lcom/google/android/gms/internal/ads/eay;->a:I

    .line 3087
    invoke-virtual {v10, v4, v5}, Lcom/google/android/gms/internal/ads/ebb;->a(J)V

    :cond_12
    :goto_3
    if-lez v6, :cond_13

    .line 3089
    iget-object v7, v10, Lcom/google/android/gms/internal/ads/ebb;->f:Lcom/google/android/gms/internal/ads/eba;

    iget-wide v7, v7, Lcom/google/android/gms/internal/ads/eba;->a:J

    sub-long v7, v4, v7

    long-to-int v8, v7

    .line 3090
    iget v7, v10, Lcom/google/android/gms/internal/ads/ebb;->b:I

    sub-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 3091
    iget-object v9, v10, Lcom/google/android/gms/internal/ads/ebb;->f:Lcom/google/android/gms/internal/ads/eba;

    iget-object v9, v9, Lcom/google/android/gms/internal/ads/eba;->d:Lcom/google/android/gms/internal/ads/eca;

    .line 3092
    iget-object v11, v9, Lcom/google/android/gms/internal/ads/eca;->a:[B

    add-int/2addr v8, v3

    .line 3094
    invoke-virtual {v1, v11, v8, v7}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    int-to-long v11, v7

    add-long/2addr v4, v11

    sub-int/2addr v6, v7

    .line 3097
    iget-object v7, v10, Lcom/google/android/gms/internal/ads/ebb;->f:Lcom/google/android/gms/internal/ads/eba;

    iget-wide v7, v7, Lcom/google/android/gms/internal/ads/eba;->b:J

    cmp-long v11, v4, v7

    if-nez v11, :cond_12

    .line 3098
    iget-object v7, v10, Lcom/google/android/gms/internal/ads/ebb;->a:Lcom/google/android/gms/internal/ads/ebz;

    invoke-interface {v7, v9}, Lcom/google/android/gms/internal/ads/ebz;->a(Lcom/google/android/gms/internal/ads/eca;)V

    .line 3099
    iget-object v7, v10, Lcom/google/android/gms/internal/ads/ebb;->f:Lcom/google/android/gms/internal/ads/eba;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/eba;->a()Lcom/google/android/gms/internal/ads/eba;

    move-result-object v7

    iput-object v7, v10, Lcom/google/android/gms/internal/ads/ebb;->f:Lcom/google/android/gms/internal/ads/eba;

    goto :goto_3

    .line 3101
    :cond_13
    iget-object v1, v10, Lcom/google/android/gms/internal/ads/ebb;->d:Lcom/google/android/gms/internal/ads/eay;

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/eay;->c:J

    invoke-virtual {v10, v3, v4}, Lcom/google/android/gms/internal/ads/ebb;->a(J)V

    :cond_14
    return v2

    :cond_15
    move-object/from16 v1, p1

    .line 3036
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/dvw;->a:Lcom/google/android/gms/internal/ads/zzht;

    iput-object v1, v10, Lcom/google/android/gms/internal/ads/ebb;->g:Lcom/google/android/gms/internal/ads/zzht;

    return v2

    :cond_16
    :goto_4
    return v9
.end method

.method public final a(J)V
    .locals 4

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eam;->b:Lcom/google/android/gms/internal/ads/eah;

    iget v1, p0, Lcom/google/android/gms/internal/ads/eam;->a:I

    .line 8133
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/eah;->j:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/ebb;

    .line 8134
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/eah;->v:Z

    if-eqz v0, :cond_1

    .line 9024
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/ebb;->c:Lcom/google/android/gms/internal/ads/eaz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/eaz;->f()J

    move-result-wide v2

    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    .line 9025
    iget-object p1, v1, Lcom/google/android/gms/internal/ads/ebb;->c:Lcom/google/android/gms/internal/ads/eaz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/eaz;->g()J

    move-result-wide p1

    const-wide/16 v2, -0x1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_0

    .line 9027
    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/ads/ebb;->a(J)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    .line 8136
    invoke-virtual {v1, p1, p2, v0}, Lcom/google/android/gms/internal/ads/ebb;->a(JZ)Z

    return-void
.end method

.method public final a()Z
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eam;->b:Lcom/google/android/gms/internal/ads/eah;

    iget v1, p0, Lcom/google/android/gms/internal/ads/eam;->a:I

    .line 1126
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/eah;->v:Z

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/eah;->g()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/eah;->j:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/ebb;

    .line 2022
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ebb;->c:Lcom/google/android/gms/internal/ads/eaz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/eaz;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eam;->b:Lcom/google/android/gms/internal/ads/eah;

    .line 2127
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/eah;->e:Lcom/google/android/gms/internal/ads/ecm;

    .line 2128
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ecm;->c()V

    return-void
.end method
