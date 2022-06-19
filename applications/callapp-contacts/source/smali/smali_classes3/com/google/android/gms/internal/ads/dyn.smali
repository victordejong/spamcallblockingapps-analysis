.class final Lcom/google/android/gms/internal/ads/dyn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dyi;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/dyl;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/dyl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dyn;->a:Lcom/google/android/gms/internal/ads/dyl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/dyl;Lcom/google/android/gms/internal/ads/dyk;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/dyn;-><init>(Lcom/google/android/gms/internal/ads/dyl;)V

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dyl;->a(I)I

    move-result p1

    return p1
.end method

.method public final a(ID)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhw;
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dyn;->a:Lcom/google/android/gms/internal/ads/dyl;

    const/16 v1, 0xb5

    if-eq p1, v1, :cond_1

    const/16 v1, 0x4489

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 5299
    :pswitch_0
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/dyl;->k:Lcom/google/android/gms/internal/ads/dym;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/gms/internal/ads/dym;->F:F

    :goto_0
    return-void

    .line 5297
    :pswitch_1
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/dyl;->k:Lcom/google/android/gms/internal/ads/dym;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/gms/internal/ads/dym;->E:F

    return-void

    .line 5295
    :pswitch_2
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/dyl;->k:Lcom/google/android/gms/internal/ads/dym;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/gms/internal/ads/dym;->D:F

    return-void

    .line 5293
    :pswitch_3
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/dyl;->k:Lcom/google/android/gms/internal/ads/dym;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/gms/internal/ads/dym;->C:F

    return-void

    .line 5291
    :pswitch_4
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/dyl;->k:Lcom/google/android/gms/internal/ads/dym;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/gms/internal/ads/dym;->B:F

    return-void

    .line 5289
    :pswitch_5
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/dyl;->k:Lcom/google/android/gms/internal/ads/dym;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/gms/internal/ads/dym;->A:F

    return-void

    .line 5287
    :pswitch_6
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/dyl;->k:Lcom/google/android/gms/internal/ads/dym;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/gms/internal/ads/dym;->z:F

    return-void

    .line 5285
    :pswitch_7
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/dyl;->k:Lcom/google/android/gms/internal/ads/dym;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/gms/internal/ads/dym;->y:F

    return-void

    .line 5283
    :pswitch_8
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/dyl;->k:Lcom/google/android/gms/internal/ads/dym;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/gms/internal/ads/dym;->x:F

    return-void

    .line 5281
    :pswitch_9
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/dyl;->k:Lcom/google/android/gms/internal/ads/dym;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/gms/internal/ads/dym;->w:F

    return-void

    :cond_0
    double-to-long p1, p2

    .line 5277
    iput-wide p1, v0, Lcom/google/android/gms/internal/ads/dyl;->i:J

    return-void

    .line 5279
    :cond_1
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/dyl;->k:Lcom/google/android/gms/internal/ads/dym;

    double-to-int p2, p2

    iput p2, p1, Lcom/google/android/gms/internal/ads/dym;->I:I

    return-void

    :pswitch_data_0
    .packed-switch 0x55d1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(IILcom/google/android/gms/internal/ads/dxt;)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p0

    move-object/from16 v3, p3

    .line 14
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/dyn;->a:Lcom/google/android/gms/internal/ads/dyl;

    const/16 v5, 0xa1

    const/16 v6, 0xa3

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v0, v5, :cond_5

    if-eq v0, v6, :cond_5

    const/16 v5, 0x4255

    if-eq v0, v5, :cond_4

    const/16 v5, 0x47e2

    if-eq v0, v5, :cond_3

    const/16 v5, 0x53ab

    if-eq v0, v5, :cond_2

    const/16 v5, 0x63a2

    if-eq v0, v5, :cond_1

    const/16 v5, 0x7672

    if-ne v0, v5, :cond_0

    .line 6317
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/dyl;->k:Lcom/google/android/gms/internal/ads/dym;

    new-array v5, v1, [B

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/dym;->o:[B

    .line 6318
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/dyl;->k:Lcom/google/android/gms/internal/ads/dym;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dym;->o:[B

    invoke-interface {v3, v0, v7, v1}, Lcom/google/android/gms/internal/ads/dxt;->b([BII)V

    return-void

    .line 6416
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzhw;

    const/16 v3, 0x1a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected id: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzhw;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6314
    :cond_1
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/dyl;->k:Lcom/google/android/gms/internal/ads/dym;

    new-array v5, v1, [B

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/dym;->h:[B

    .line 6315
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/dyl;->k:Lcom/google/android/gms/internal/ads/dym;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dym;->h:[B

    invoke-interface {v3, v0, v7, v1}, Lcom/google/android/gms/internal/ads/dxt;->b([BII)V

    return-void

    .line 6309
    :cond_2
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/dyl;->e:Lcom/google/android/gms/internal/ads/ecy;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ecy;->a:[B

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([BB)V

    .line 6310
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/dyl;->e:Lcom/google/android/gms/internal/ads/ecy;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ecy;->a:[B

    rsub-int/lit8 v5, v1, 0x4

    invoke-interface {v3, v0, v5, v1}, Lcom/google/android/gms/internal/ads/dxt;->b([BII)V

    .line 6311
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/dyl;->e:Lcom/google/android/gms/internal/ads/ecy;

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/ecy;->c(I)V

    .line 6312
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/dyl;->e:Lcom/google/android/gms/internal/ads/ecy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ecy;->f()J

    move-result-wide v0

    long-to-int v1, v0

    iput v1, v4, Lcom/google/android/gms/internal/ads/dyl;->m:I

    return-void

    .line 6323
    :cond_3
    new-array v0, v1, [B

    .line 6324
    invoke-interface {v3, v0, v7, v1}, Lcom/google/android/gms/internal/ads/dxt;->b([BII)V

    .line 6325
    iget-object v1, v4, Lcom/google/android/gms/internal/ads/dyl;->k:Lcom/google/android/gms/internal/ads/dym;

    new-instance v3, Lcom/google/android/gms/internal/ads/dyf;

    invoke-direct {v3, v8, v0}, Lcom/google/android/gms/internal/ads/dyf;-><init>(I[B)V

    iput-object v3, v1, Lcom/google/android/gms/internal/ads/dym;->g:Lcom/google/android/gms/internal/ads/dyf;

    return-void

    .line 6320
    :cond_4
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/dyl;->k:Lcom/google/android/gms/internal/ads/dym;

    new-array v5, v1, [B

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/dym;->f:[B

    .line 6321
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/dyl;->k:Lcom/google/android/gms/internal/ads/dym;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dym;->f:[B

    invoke-interface {v3, v0, v7, v1}, Lcom/google/android/gms/internal/ads/dxt;->b([BII)V

    return-void

    .line 6327
    :cond_5
    iget v5, v4, Lcom/google/android/gms/internal/ads/dyl;->u:I

    const/16 v9, 0x8

    if-nez v5, :cond_6

    .line 6328
    iget-object v5, v4, Lcom/google/android/gms/internal/ads/dyl;->a:Lcom/google/android/gms/internal/ads/dyo;

    invoke-virtual {v5, v3, v7, v8, v9}, Lcom/google/android/gms/internal/ads/dyo;->a(Lcom/google/android/gms/internal/ads/dxt;ZZI)J

    move-result-wide v10

    long-to-int v5, v10

    iput v5, v4, Lcom/google/android/gms/internal/ads/dyl;->A:I

    .line 6329
    iget-object v5, v4, Lcom/google/android/gms/internal/ads/dyl;->a:Lcom/google/android/gms/internal/ads/dyo;

    .line 7022
    iget v5, v5, Lcom/google/android/gms/internal/ads/dyo;->a:I

    .line 6329
    iput v5, v4, Lcom/google/android/gms/internal/ads/dyl;->B:I

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 6330
    iput-wide v10, v4, Lcom/google/android/gms/internal/ads/dyl;->w:J

    .line 6331
    iput v8, v4, Lcom/google/android/gms/internal/ads/dyl;->u:I

    .line 6332
    iget-object v5, v4, Lcom/google/android/gms/internal/ads/dyl;->d:Lcom/google/android/gms/internal/ads/ecy;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/ecy;->a()V

    .line 6333
    :cond_6
    iget-object v5, v4, Lcom/google/android/gms/internal/ads/dyl;->b:Landroid/util/SparseArray;

    iget v10, v4, Lcom/google/android/gms/internal/ads/dyl;->A:I

    invoke-virtual {v5, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/dym;

    if-nez v5, :cond_7

    .line 6335
    iget v0, v4, Lcom/google/android/gms/internal/ads/dyl;->B:I

    sub-int v0, v1, v0

    invoke-interface {v3, v0}, Lcom/google/android/gms/internal/ads/dxt;->b(I)V

    .line 6336
    iput v7, v4, Lcom/google/android/gms/internal/ads/dyl;->u:I

    return-void

    .line 6338
    :cond_7
    iget v10, v4, Lcom/google/android/gms/internal/ads/dyl;->u:I

    if-ne v10, v8, :cond_1a

    const/4 v10, 0x3

    .line 6339
    invoke-virtual {v4, v3, v10}, Lcom/google/android/gms/internal/ads/dyl;->a(Lcom/google/android/gms/internal/ads/dxt;I)V

    .line 6340
    iget-object v11, v4, Lcom/google/android/gms/internal/ads/dyl;->d:Lcom/google/android/gms/internal/ads/ecy;

    iget-object v11, v11, Lcom/google/android/gms/internal/ads/ecy;->a:[B

    const/4 v12, 0x2

    aget-byte v11, v11, v12

    and-int/lit8 v11, v11, 0x6

    shr-int/2addr v11, v8

    const/16 v13, 0xff

    if-nez v11, :cond_8

    .line 6342
    iput v8, v4, Lcom/google/android/gms/internal/ads/dyl;->y:I

    .line 6343
    iget-object v11, v4, Lcom/google/android/gms/internal/ads/dyl;->z:[I

    invoke-static {v11, v8}, Lcom/google/android/gms/internal/ads/dyl;->a([II)[I

    move-result-object v11

    iput-object v11, v4, Lcom/google/android/gms/internal/ads/dyl;->z:[I

    .line 6344
    iget-object v11, v4, Lcom/google/android/gms/internal/ads/dyl;->z:[I

    iget v14, v4, Lcom/google/android/gms/internal/ads/dyl;->B:I

    sub-int/2addr v1, v14

    sub-int/2addr v1, v10

    aput v1, v11, v7

    goto/16 :goto_6

    :cond_8
    if-ne v0, v6, :cond_19

    const/4 v14, 0x4

    .line 6347
    invoke-virtual {v4, v3, v14}, Lcom/google/android/gms/internal/ads/dyl;->a(Lcom/google/android/gms/internal/ads/dxt;I)V

    .line 6348
    iget-object v15, v4, Lcom/google/android/gms/internal/ads/dyl;->d:Lcom/google/android/gms/internal/ads/ecy;

    iget-object v15, v15, Lcom/google/android/gms/internal/ads/ecy;->a:[B

    aget-byte v15, v15, v10

    and-int/2addr v15, v13

    add-int/2addr v15, v8

    iput v15, v4, Lcom/google/android/gms/internal/ads/dyl;->y:I

    .line 6349
    iget-object v15, v4, Lcom/google/android/gms/internal/ads/dyl;->z:[I

    iget v6, v4, Lcom/google/android/gms/internal/ads/dyl;->y:I

    .line 6350
    invoke-static {v15, v6}, Lcom/google/android/gms/internal/ads/dyl;->a([II)[I

    move-result-object v6

    iput-object v6, v4, Lcom/google/android/gms/internal/ads/dyl;->z:[I

    if-ne v11, v12, :cond_9

    .line 6352
    iget v6, v4, Lcom/google/android/gms/internal/ads/dyl;->B:I

    sub-int/2addr v1, v6

    sub-int/2addr v1, v14

    iget v6, v4, Lcom/google/android/gms/internal/ads/dyl;->y:I

    div-int/2addr v1, v6

    .line 6353
    iget-object v6, v4, Lcom/google/android/gms/internal/ads/dyl;->z:[I

    iget v10, v4, Lcom/google/android/gms/internal/ads/dyl;->y:I

    invoke-static {v6, v7, v10, v1}, Ljava/util/Arrays;->fill([IIII)V

    goto/16 :goto_6

    :cond_9
    if-ne v11, v8, :cond_c

    const/4 v6, 0x0

    const/4 v10, 0x0

    .line 6357
    :goto_0
    iget v11, v4, Lcom/google/android/gms/internal/ads/dyl;->y:I

    sub-int/2addr v11, v8

    if-ge v6, v11, :cond_b

    .line 6358
    iget-object v11, v4, Lcom/google/android/gms/internal/ads/dyl;->z:[I

    aput v7, v11, v6

    :cond_a
    add-int/2addr v14, v8

    .line 6359
    invoke-virtual {v4, v3, v14}, Lcom/google/android/gms/internal/ads/dyl;->a(Lcom/google/android/gms/internal/ads/dxt;I)V

    .line 6360
    iget-object v11, v4, Lcom/google/android/gms/internal/ads/dyl;->d:Lcom/google/android/gms/internal/ads/ecy;

    iget-object v11, v11, Lcom/google/android/gms/internal/ads/ecy;->a:[B

    add-int/lit8 v15, v14, -0x1

    aget-byte v11, v11, v15

    and-int/2addr v11, v13

    .line 6361
    iget-object v15, v4, Lcom/google/android/gms/internal/ads/dyl;->z:[I

    aget v16, v15, v6

    add-int v16, v16, v11

    aput v16, v15, v6

    if-eq v11, v13, :cond_a

    .line 6363
    iget-object v11, v4, Lcom/google/android/gms/internal/ads/dyl;->z:[I

    aget v11, v11, v6

    add-int/2addr v10, v11

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 6365
    :cond_b
    iget-object v6, v4, Lcom/google/android/gms/internal/ads/dyl;->z:[I

    iget v11, v4, Lcom/google/android/gms/internal/ads/dyl;->y:I

    sub-int/2addr v11, v8

    iget v15, v4, Lcom/google/android/gms/internal/ads/dyl;->B:I

    sub-int/2addr v1, v15

    sub-int/2addr v1, v14

    sub-int/2addr v1, v10

    aput v1, v6, v11

    goto/16 :goto_6

    :cond_c
    if-ne v11, v10, :cond_18

    const/4 v6, 0x0

    const/4 v10, 0x0

    .line 6369
    :goto_1
    iget v11, v4, Lcom/google/android/gms/internal/ads/dyl;->y:I

    sub-int/2addr v11, v8

    if-ge v6, v11, :cond_13

    .line 6370
    iget-object v11, v4, Lcom/google/android/gms/internal/ads/dyl;->z:[I

    aput v7, v11, v6

    add-int/lit8 v14, v14, 0x1

    .line 6371
    invoke-virtual {v4, v3, v14}, Lcom/google/android/gms/internal/ads/dyl;->a(Lcom/google/android/gms/internal/ads/dxt;I)V

    .line 6372
    iget-object v11, v4, Lcom/google/android/gms/internal/ads/dyl;->d:Lcom/google/android/gms/internal/ads/ecy;

    iget-object v11, v11, Lcom/google/android/gms/internal/ads/ecy;->a:[B

    add-int/lit8 v15, v14, -0x1

    aget-byte v11, v11, v15

    if-eqz v11, :cond_12

    const-wide/16 v16, 0x0

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v9, :cond_f

    rsub-int/lit8 v18, v11, 0x7

    shl-int v12, v8, v18

    .line 6377
    iget-object v7, v4, Lcom/google/android/gms/internal/ads/dyl;->d:Lcom/google/android/gms/internal/ads/ecy;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/ecy;->a:[B

    aget-byte v7, v7, v15

    and-int/2addr v7, v12

    if-eqz v7, :cond_e

    add-int/2addr v14, v11

    .line 6380
    invoke-virtual {v4, v3, v14}, Lcom/google/android/gms/internal/ads/dyl;->a(Lcom/google/android/gms/internal/ads/dxt;I)V

    .line 6381
    iget-object v7, v4, Lcom/google/android/gms/internal/ads/dyl;->d:Lcom/google/android/gms/internal/ads/ecy;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/ecy;->a:[B

    add-int/lit8 v16, v15, 0x1

    aget-byte v7, v7, v15

    and-int/2addr v7, v13

    not-int v12, v12

    and-int/2addr v7, v12

    int-to-long v8, v7

    move/from16 v7, v16

    move-wide/from16 v16, v8

    :goto_3
    if-ge v7, v14, :cond_d

    const/16 v8, 0x8

    shl-long v16, v16, v8

    .line 6384
    iget-object v8, v4, Lcom/google/android/gms/internal/ads/dyl;->d:Lcom/google/android/gms/internal/ads/ecy;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/ecy;->a:[B

    add-int/lit8 v9, v7, 0x1

    aget-byte v7, v8, v7

    and-int/2addr v7, v13

    int-to-long v7, v7

    or-long v16, v16, v7

    move v7, v9

    goto :goto_3

    :cond_d
    if-lez v6, :cond_f

    mul-int/lit8 v11, v11, 0x7

    add-int/lit8 v11, v11, 0x6

    const-wide/16 v7, 0x1

    shl-long v19, v7, v11

    sub-long v19, v19, v7

    sub-long v16, v16, v19

    goto :goto_4

    :cond_e
    add-int/lit8 v11, v11, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v9, 0x8

    const/4 v12, 0x2

    goto :goto_2

    :cond_f
    :goto_4
    move-wide/from16 v7, v16

    const-wide/32 v16, -0x80000000

    cmp-long v9, v7, v16

    if-ltz v9, :cond_11

    const-wide/32 v16, 0x7fffffff

    cmp-long v9, v7, v16

    if-gtz v9, :cond_11

    long-to-int v8, v7

    .line 6391
    iget-object v7, v4, Lcom/google/android/gms/internal/ads/dyl;->z:[I

    if-nez v6, :cond_10

    goto :goto_5

    .line 6392
    :cond_10
    iget-object v9, v4, Lcom/google/android/gms/internal/ads/dyl;->z:[I

    add-int/lit8 v11, v6, -0x1

    aget v9, v9, v11

    add-int/2addr v8, v9

    :goto_5
    aput v8, v7, v6

    .line 6393
    iget-object v7, v4, Lcom/google/android/gms/internal/ads/dyl;->z:[I

    aget v7, v7, v6

    add-int/2addr v10, v7

    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v9, 0x8

    const/4 v12, 0x2

    goto/16 :goto_1

    .line 6389
    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhw;

    const-string v1, "EBML lacing sample size out of range."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhw;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6373
    :cond_12
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhw;

    const-string v1, "No valid varint length mask found"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhw;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6395
    :cond_13
    iget-object v6, v4, Lcom/google/android/gms/internal/ads/dyl;->z:[I

    iget v7, v4, Lcom/google/android/gms/internal/ads/dyl;->y:I

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    iget v8, v4, Lcom/google/android/gms/internal/ads/dyl;->B:I

    sub-int/2addr v1, v8

    sub-int/2addr v1, v14

    sub-int/2addr v1, v10

    aput v1, v6, v7

    .line 6398
    :goto_6
    iget-object v1, v4, Lcom/google/android/gms/internal/ads/dyl;->d:Lcom/google/android/gms/internal/ads/ecy;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/ecy;->a:[B

    const/4 v6, 0x0

    aget-byte v1, v1, v6

    const/16 v6, 0x8

    shl-int/2addr v1, v6

    iget-object v6, v4, Lcom/google/android/gms/internal/ads/dyl;->d:Lcom/google/android/gms/internal/ads/ecy;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/ecy;->a:[B

    const/4 v7, 0x1

    aget-byte v6, v6, v7

    and-int/2addr v6, v13

    or-int/2addr v1, v6

    .line 6399
    iget-wide v6, v4, Lcom/google/android/gms/internal/ads/dyl;->q:J

    int-to-long v8, v1

    invoke-virtual {v4, v8, v9}, Lcom/google/android/gms/internal/ads/dyl;->a(J)J

    move-result-wide v8

    add-long/2addr v6, v8

    iput-wide v6, v4, Lcom/google/android/gms/internal/ads/dyl;->v:J

    .line 6400
    iget-object v1, v4, Lcom/google/android/gms/internal/ads/dyl;->d:Lcom/google/android/gms/internal/ads/ecy;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/ecy;->a:[B

    const/4 v6, 0x2

    aget-byte v1, v1, v6

    const/16 v7, 0x8

    and-int/2addr v1, v7

    if-ne v1, v7, :cond_14

    const/4 v1, 0x1

    goto :goto_7

    :cond_14
    const/4 v1, 0x0

    .line 6401
    :goto_7
    iget v7, v5, Lcom/google/android/gms/internal/ads/dym;->c:I

    if-eq v7, v6, :cond_16

    const/16 v7, 0xa3

    if-ne v0, v7, :cond_15

    iget-object v7, v4, Lcom/google/android/gms/internal/ads/dyl;->d:Lcom/google/android/gms/internal/ads/ecy;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/ecy;->a:[B

    aget-byte v7, v7, v6

    const/16 v6, 0x80

    and-int/2addr v7, v6

    if-ne v7, v6, :cond_15

    goto :goto_8

    :cond_15
    const/4 v6, 0x0

    goto :goto_9

    :cond_16
    :goto_8
    const/4 v6, 0x1

    :goto_9
    if-eqz v1, :cond_17

    const/high16 v1, -0x80000000

    goto :goto_a

    :cond_17
    const/4 v1, 0x0

    :goto_a
    or-int/2addr v1, v6

    .line 6403
    iput v1, v4, Lcom/google/android/gms/internal/ads/dyl;->C:I

    const/4 v1, 0x2

    .line 6404
    iput v1, v4, Lcom/google/android/gms/internal/ads/dyl;->u:I

    const/4 v1, 0x0

    .line 6405
    iput v1, v4, Lcom/google/android/gms/internal/ads/dyl;->x:I

    goto :goto_b

    .line 6397
    :cond_18
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhw;

    const/16 v1, 0x24

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unexpected lacing value: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhw;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6346
    :cond_19
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhw;

    const-string v1, "Lacing only supported in SimpleBlocks."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhw;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    :goto_b
    const/16 v1, 0xa3

    if-ne v0, v1, :cond_1c

    .line 6407
    :goto_c
    iget v0, v4, Lcom/google/android/gms/internal/ads/dyl;->x:I

    iget v1, v4, Lcom/google/android/gms/internal/ads/dyl;->y:I

    if-ge v0, v1, :cond_1b

    .line 6408
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/dyl;->z:[I

    iget v1, v4, Lcom/google/android/gms/internal/ads/dyl;->x:I

    aget v0, v0, v1

    invoke-virtual {v4, v3, v5, v0}, Lcom/google/android/gms/internal/ads/dyl;->a(Lcom/google/android/gms/internal/ads/dxt;Lcom/google/android/gms/internal/ads/dym;I)V

    .line 6409
    iget-wide v0, v4, Lcom/google/android/gms/internal/ads/dyl;->v:J

    iget v6, v4, Lcom/google/android/gms/internal/ads/dyl;->x:I

    iget v7, v5, Lcom/google/android/gms/internal/ads/dym;->d:I

    mul-int v6, v6, v7

    div-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    add-long/2addr v0, v6

    .line 6410
    invoke-virtual {v4, v5, v0, v1}, Lcom/google/android/gms/internal/ads/dyl;->a(Lcom/google/android/gms/internal/ads/dym;J)V

    .line 6411
    iget v0, v4, Lcom/google/android/gms/internal/ads/dyl;->x:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v4, Lcom/google/android/gms/internal/ads/dyl;->x:I

    goto :goto_c

    :cond_1b
    const/4 v0, 0x0

    .line 6413
    iput v0, v4, Lcom/google/android/gms/internal/ads/dyl;->u:I

    return-void

    :cond_1c
    const/4 v0, 0x0

    .line 6414
    iget-object v1, v4, Lcom/google/android/gms/internal/ads/dyl;->z:[I

    aget v0, v1, v0

    invoke-virtual {v4, v3, v5, v0}, Lcom/google/android/gms/internal/ads/dyl;->a(Lcom/google/android/gms/internal/ads/dxt;Lcom/google/android/gms/internal/ads/dym;I)V

    return-void
.end method

.method public final a(IJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhw;
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dyn;->a:Lcom/google/android/gms/internal/ads/dyl;

    const/16 v1, 0x5031

    const/16 v2, 0x37

    const-string v3, " not supported"

    if-eq p1, v1, :cond_15

    const/16 v1, 0x5032

    const-wide/16 v4, 0x1

    if-eq p1, v1, :cond_13

    const/16 v1, 0x32

    const/4 v2, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    sparse-switch p1, :sswitch_data_0

    const/4 v1, 0x7

    const/4 v2, 0x6

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 5274
    :pswitch_0
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/dyl;->k:Lcom/google/android/gms/internal/ads/dym;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/gms/internal/ads/dym;->v:I

    goto/16 :goto_0

    .line 5272
    :pswitch_1
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/dyl;->k:Lcom/google/android/gms/internal/ads/dym;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/gms/internal/ads/dym;->u:I

    return-void

    .line 5249
    :pswitch_2
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/dyl;->k:Lcom/google/android/gms/internal/ads/dym;

    iput-boolean v8, p1, Lcom/google/android/gms/internal/ads/dym;->q:Z

    long-to-int p1, p2

    if-eq p1, v8, :cond_2

    const/16 p2, 0x9

    if-eq p1, p2, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    if-eq p1, v2, :cond_0

    if-eq p1, v1, :cond_0

    return-void

    .line 5253
    :cond_0
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/dyl;->k:Lcom/google/android/gms/internal/ads/dym;

    iput v7, p1, Lcom/google/android/gms/internal/ads/dym;->r:I

    return-void

    .line 5255
    :cond_1
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/dyl;->k:Lcom/google/android/gms/internal/ads/dym;

    iput v2, p1, Lcom/google/android/gms/internal/ads/dym;->r:I

    return-void

    .line 5251
    :cond_2
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/dyl;->k:Lcom/google/android/gms/internal/ads/dym;

    iput v8, p1, Lcom/google/android/gms/internal/ads/dym;->r:I

    return-void

    :pswitch_3
    long-to-int p1, p2

    if-eq p1, v8, :cond_5

    const/16 p2, 0x10

    if-eq p1, p2, :cond_4

    const/16 p2, 0x12

    if-eq p1, p2, :cond_3

    if-eq p1, v2, :cond_5

    if-eq p1, v1, :cond_5

    return-void

    .line 5263
    :cond_3
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/dyl;->k:Lcom/google/android/gms/internal/ads/dym;

    iput v1, p1, Lcom/google/android/gms/internal/ads/dym;->s:I

    return-void

    .line 5261
    :cond_4
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/dyl;->k:Lcom/google/android/gms/internal/ads/dym;

    iput v2, p1, Lcom/google/android/gms/internal/ads/dym;->s:I

    return-void

    .line 5259
    :cond_5
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/dyl;->k:Lcom/google/android/gms/internal/ads/dym;

    iput v6, p1, Lcom/google/android/gms/internal/ads/dym;->s:I

    return-void

    :pswitch_4
    long-to-int p1, p2

    if-eq p1, v8, :cond_7

    if-eq p1, v7, :cond_6

    return-void

    .line 5269
    :cond_6
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/dyl;->k:Lcom/google/android/gms/internal/ads/dym;

    iput v8, p1, Lcom/google/android/gms/internal/ads/dym;->t:I

    return-void

    .line 5267
    :cond_7
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/dyl;->k:Lcom/google/android/gms/internal/ads/dym;

    iput v7, p1, Lcom/google/android/gms/internal/ads/dym;->t:I

    return-void

    .line 5187
    :sswitch_0
    iput-wide p2, v0, Lcom/google/android/gms/internal/ads/dyl;->h:J

    return-void

    .line 5207
    :sswitch_1
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/dyl;->k:Lcom/google/android/gms/internal/ads/dym;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/gms/internal/ads/dym;->d:I

    return-void

    .line 5215
    :sswitch_2
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/dyl;->k:Lcom/google/android/gms/internal/ads/dym;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/gms/internal/ads/dym;->H:I

    return-void

    .line 5211
    :sswitch_3
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/dyl;->k:Lcom/google/android/gms/internal/ads/dym;

    iput-wide p2, p1, Lcom/google/android/gms/internal/ads/dym;->K:J

    return-void

    .line 5209
    :sswitch_4
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/dyl;->k:Lcom/google/android/gms/internal/ads/dym;

    iput-wide p2, p1, Lcom/google/android/gms/internal/ads/dym;->J:J

    return-void

    .line 5203
    :sswitch_5
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/dyl;->k:Lcom/google/android/gms/internal/ads/dym;

    cmp-long v0, p2, v4

    if-nez v0, :cond_8

    const/4 v2, 0x1

    :cond_8
    iput-boolean v2, p1, Lcom/google/android/gms/internal/ads/dym;->M:Z

    return-void

    .line 5195
    :sswitch_6
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/dyl;->k:Lcom/google/android/gms/internal/ads/dym;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/gms/internal/ads/dym;->m:I

    return-void

    .line 5197
    :sswitch_7
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/dyl;->k:Lcom/google/android/gms/internal/ads/dym;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/gms/internal/ads/dym;->n:I

    return-void

    .line 5193
    :sswitch_8
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/dyl;->k:Lcom/google/android/gms/internal/ads/dym;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/gms/internal/ads/dym;->l:I

    return-void

    :sswitch_9
    long-to-int p1, p2

    if-eqz p1, :cond_c

    if-eq p1, v8, :cond_b

    if-eq p1, v6, :cond_a

    const/16 p2, 0xf

    if-eq p1, p2, :cond_9

    return-void

    .line 5246
    :cond_9
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/dyl;->k:Lcom/google/android/gms/internal/ads/dym;

    iput v6, p1, Lcom/google/android/gms/internal/ads/dym;->p:I

    return-void

    .line 5244
    :cond_a
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/dyl;->k:Lcom/google/android/gms/internal/ads/dym;

    iput v8, p1, Lcom/google/android/gms/internal/ads/dym;->p:I

    return-void

    .line 5242
    :cond_b
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/dyl;->k:Lcom/google/android/gms/internal/ads/dym;

    iput v7, p1, Lcom/google/android/gms/internal/ads/dym;->p:I

    return-void

    .line 5240
    :cond_c
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/dyl;->k:Lcom/google/android/gms/internal/ads/dym;

    iput v2, p1, Lcom/google/android/gms/internal/ads/dym;->p:I

    return-void

    .line 5185
    :sswitch_a
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/dyl;->g:J

    add-long/2addr p2, v1

    iput-wide p2, v0, Lcom/google/android/gms/internal/ads/dyl;->n:J

    return-void

    :sswitch_b
    cmp-long p1, p2, v4

    if-nez p1, :cond_d

    goto/16 :goto_0

    .line 5228
    :cond_d
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhw;

    const/16 v0, 0x38

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "AESSettingsCipherMode "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzhw;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_c
    const-wide/16 v0, 0x5

    cmp-long p1, p2, v0

    if-nez p1, :cond_e

    goto/16 :goto_0

    .line 5226
    :cond_e
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhw;

    const/16 v0, 0x31

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "ContentEncAlgo "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzhw;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_d
    cmp-long p1, p2, v4

    if-nez p1, :cond_f

    goto/16 :goto_0

    .line 5182
    :cond_f
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhw;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "EBMLReadVersion "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzhw;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_e
    cmp-long p1, p2, v4

    if-ltz p1, :cond_10

    const-wide/16 v0, 0x2

    cmp-long p1, p2, v0

    if-gtz p1, :cond_10

    goto/16 :goto_0

    .line 5184
    :cond_10
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhw;

    const/16 v0, 0x35

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "DocTypeReadVersion "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzhw;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_f
    const-wide/16 v4, 0x3

    cmp-long p1, p2, v4

    if-nez p1, :cond_11

    goto/16 :goto_0

    .line 5224
    :cond_11
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhw;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ContentCompAlgo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzhw;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5217
    :sswitch_10
    iput-boolean v8, v0, Lcom/google/android/gms/internal/ads/dyl;->D:Z

    return-void

    .line 5231
    :sswitch_11
    iget-boolean p1, v0, Lcom/google/android/gms/internal/ads/dyl;->t:Z

    if-nez p1, :cond_16

    .line 5232
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/dyl;->s:Lcom/google/android/gms/internal/ads/ecs;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/ecs;->a(J)V

    .line 5233
    iput-boolean v8, v0, Lcom/google/android/gms/internal/ads/dyl;->t:Z

    return-void

    .line 5234
    :sswitch_12
    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/ads/dyl;->a(J)J

    move-result-wide p1

    iput-wide p1, v0, Lcom/google/android/gms/internal/ads/dyl;->q:J

    return-void

    .line 5199
    :sswitch_13
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/dyl;->k:Lcom/google/android/gms/internal/ads/dym;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/gms/internal/ads/dym;->b:I

    return-void

    .line 5191
    :sswitch_14
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/dyl;->k:Lcom/google/android/gms/internal/ads/dym;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/gms/internal/ads/dym;->k:I

    return-void

    .line 5229
    :sswitch_15
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/dyl;->r:Lcom/google/android/gms/internal/ads/ecs;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/ads/dyl;->a(J)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/ecs;->a(J)V

    return-void

    .line 5189
    :sswitch_16
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/dyl;->k:Lcom/google/android/gms/internal/ads/dym;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/gms/internal/ads/dym;->j:I

    return-void

    .line 5213
    :sswitch_17
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/dyl;->k:Lcom/google/android/gms/internal/ads/dym;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/gms/internal/ads/dym;->G:I

    return-void

    .line 5236
    :sswitch_18
    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/ads/dyl;->a(J)J

    move-result-wide p1

    iput-wide p1, v0, Lcom/google/android/gms/internal/ads/dyl;->w:J

    return-void

    .line 5201
    :sswitch_19
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/dyl;->k:Lcom/google/android/gms/internal/ads/dym;

    cmp-long v0, p2, v4

    if-nez v0, :cond_12

    const/4 v2, 0x1

    :cond_12
    iput-boolean v2, p1, Lcom/google/android/gms/internal/ads/dym;->L:Z

    return-void

    .line 5205
    :sswitch_1a
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/dyl;->k:Lcom/google/android/gms/internal/ads/dym;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/gms/internal/ads/dym;->c:I

    return-void

    :cond_13
    cmp-long p1, p2, v4

    if-nez p1, :cond_14

    goto :goto_0

    .line 5222
    :cond_14
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhw;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ContentEncodingScope "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzhw;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_15
    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-nez p1, :cond_17

    :cond_16
    :goto_0
    return-void

    .line 5220
    :cond_17
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhw;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ContentEncodingOrder "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzhw;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_1a
        0x88 -> :sswitch_19
        0x9b -> :sswitch_18
        0x9f -> :sswitch_17
        0xb0 -> :sswitch_16
        0xb3 -> :sswitch_15
        0xba -> :sswitch_14
        0xd7 -> :sswitch_13
        0xe7 -> :sswitch_12
        0xf1 -> :sswitch_11
        0xfb -> :sswitch_10
        0x4254 -> :sswitch_f
        0x4285 -> :sswitch_e
        0x42f7 -> :sswitch_d
        0x47e1 -> :sswitch_c
        0x47e8 -> :sswitch_b
        0x53ac -> :sswitch_a
        0x53b8 -> :sswitch_9
        0x54b0 -> :sswitch_8
        0x54b2 -> :sswitch_7
        0x54ba -> :sswitch_6
        0x55aa -> :sswitch_5
        0x56aa -> :sswitch_4
        0x56bb -> :sswitch_3
        0x6264 -> :sswitch_2
        0x23e383 -> :sswitch_1
        0x2ad7b1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x55b9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(IJJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhw;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dyn;->a:Lcom/google/android/gms/internal/ads/dyl;

    const/16 v1, 0xa0

    const/4 v2, 0x0

    if-eq p1, v1, :cond_c

    const/16 v1, 0xae

    if-eq p1, v1, :cond_b

    const/16 v1, 0xbb

    if-eq p1, v1, :cond_a

    const/16 v1, 0x4dbb

    const-wide/16 v2, -0x1

    if-eq p1, v1, :cond_9

    const/16 v1, 0x5035

    const/4 v4, 0x1

    if-eq p1, v1, :cond_8

    const/16 v1, 0x55d0

    if-eq p1, v1, :cond_6

    const v1, 0x18538067

    if-eq p1, v1, :cond_3

    const p2, 0x1c53bb6b

    if-eq p1, p2, :cond_2

    const p2, 0x1f43b675

    if-eq p1, p2, :cond_0

    goto :goto_1

    .line 1078
    :cond_0
    iget-boolean p1, v0, Lcom/google/android/gms/internal/ads/dyl;->l:Z

    if-nez p1, :cond_7

    .line 1079
    iget-boolean p1, v0, Lcom/google/android/gms/internal/ads/dyl;->c:Z

    if-eqz p1, :cond_1

    iget-wide p1, v0, Lcom/google/android/gms/internal/ads/dyl;->p:J

    cmp-long p3, p1, v2

    if-eqz p3, :cond_1

    .line 1080
    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/dyl;->o:Z

    return-void

    .line 1081
    :cond_1
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/dyl;->E:Lcom/google/android/gms/internal/ads/dxx;

    new-instance p2, Lcom/google/android/gms/internal/ads/dyd;

    iget-wide p3, v0, Lcom/google/android/gms/internal/ads/dyl;->j:J

    invoke-direct {p2, p3, p4}, Lcom/google/android/gms/internal/ads/dyd;-><init>(J)V

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/dxx;->a(Lcom/google/android/gms/internal/ads/dya;)V

    .line 1082
    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/dyl;->l:Z

    return-void

    .line 1073
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/ecs;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/ecs;-><init>()V

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/dyl;->r:Lcom/google/android/gms/internal/ads/ecs;

    .line 1074
    new-instance p1, Lcom/google/android/gms/internal/ads/ecs;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/ecs;-><init>()V

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/dyl;->s:Lcom/google/android/gms/internal/ads/ecs;

    return-void

    .line 1065
    :cond_3
    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/dyl;->g:J

    cmp-long p1, v4, v2

    if-eqz p1, :cond_5

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/dyl;->g:J

    cmp-long p1, v1, p2

    if-nez p1, :cond_4

    goto :goto_0

    .line 1066
    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhw;

    const-string p2, "Multiple Segment elements not supported"

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzhw;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1067
    :cond_5
    :goto_0
    iput-wide p2, v0, Lcom/google/android/gms/internal/ads/dyl;->g:J

    .line 1068
    iput-wide p4, v0, Lcom/google/android/gms/internal/ads/dyl;->f:J

    return-void

    .line 1090
    :cond_6
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/dyl;->k:Lcom/google/android/gms/internal/ads/dym;

    iput-boolean v4, p1, Lcom/google/android/gms/internal/ads/dym;->q:Z

    :cond_7
    :goto_1
    return-void

    .line 1086
    :cond_8
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/dyl;->k:Lcom/google/android/gms/internal/ads/dym;

    iput-boolean v4, p1, Lcom/google/android/gms/internal/ads/dym;->e:Z

    return-void

    :cond_9
    const/4 p1, -0x1

    .line 1070
    iput p1, v0, Lcom/google/android/gms/internal/ads/dyl;->m:I

    .line 1071
    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/dyl;->n:J

    return-void

    .line 1076
    :cond_a
    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/dyl;->t:Z

    return-void

    .line 1088
    :cond_b
    new-instance p1, Lcom/google/android/gms/internal/ads/dym;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/dym;-><init>(Lcom/google/android/gms/internal/ads/dyk;)V

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/dyl;->k:Lcom/google/android/gms/internal/ads/dym;

    return-void

    .line 1083
    :cond_c
    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/dyl;->D:Z

    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhw;
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dyn;->a:Lcom/google/android/gms/internal/ads/dyl;

    const/16 v1, 0x86

    if-eq p1, v1, :cond_4

    const/16 v1, 0x4282

    if-eq p1, v1, :cond_1

    const v1, 0x22b59c

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 5306
    :cond_0
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/dyl;->k:Lcom/google/android/gms/internal/ads/dym;

    .line 6234
    iput-object p2, p1, Lcom/google/android/gms/internal/ads/dym;->N:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p1, "webm"

    .line 5302
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "matroska"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 5303
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhw;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x16

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "DocType "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not supported"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzhw;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    return-void

    .line 5304
    :cond_4
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/dyl;->k:Lcom/google/android/gms/internal/ads/dym;

    iput-object p2, p1, Lcom/google/android/gms/internal/ads/dym;->a:Ljava/lang/String;

    return-void
.end method

.method public final b(I)Z
    .locals 0

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dyl;->b(I)Z

    move-result p1

    return p1
.end method

.method public final c(I)V
    .locals 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhw;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 6
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/dyn;->a:Lcom/google/android/gms/internal/ads/dyl;

    const/16 v3, 0xa0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v1, v3, :cond_42

    const/16 v3, 0xae

    const/4 v7, 0x0

    const/4 v8, -0x1

    if-eq v1, v3, :cond_f

    const/16 v3, 0x4dbb

    const-wide/16 v9, -0x1

    const v4, 0x1c53bb6b

    if-eq v1, v3, :cond_d

    const/16 v3, 0x6240

    if-eq v1, v3, :cond_b

    const/16 v3, 0x6d80

    if-eq v1, v3, :cond_9

    const v3, 0x1549a966

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v1, v3, :cond_7

    const v3, 0x1654ae6b

    if-eq v1, v3, :cond_5

    if-eq v1, v4, :cond_0

    goto/16 :goto_1d

    .line 1101
    :cond_0
    iget-boolean v1, v2, Lcom/google/android/gms/internal/ads/dyl;->l:Z

    if-nez v1, :cond_44

    .line 1102
    iget-object v1, v2, Lcom/google/android/gms/internal/ads/dyl;->E:Lcom/google/android/gms/internal/ads/dxx;

    .line 1103
    iget-wide v3, v2, Lcom/google/android/gms/internal/ads/dyl;->g:J

    cmp-long v8, v3, v9

    if-eqz v8, :cond_4

    iget-wide v3, v2, Lcom/google/android/gms/internal/ads/dyl;->j:J

    cmp-long v8, v3, v11

    if-eqz v8, :cond_4

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/dyl;->r:Lcom/google/android/gms/internal/ads/ecs;

    if-eqz v3, :cond_4

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/dyl;->r:Lcom/google/android/gms/internal/ads/ecs;

    .line 2013
    iget v3, v3, Lcom/google/android/gms/internal/ads/ecs;->a:I

    if-eqz v3, :cond_4

    .line 1104
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/dyl;->s:Lcom/google/android/gms/internal/ads/ecs;

    if-eqz v3, :cond_4

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/dyl;->s:Lcom/google/android/gms/internal/ads/ecs;

    .line 3013
    iget v3, v3, Lcom/google/android/gms/internal/ads/ecs;->a:I

    .line 1105
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/dyl;->r:Lcom/google/android/gms/internal/ads/ecs;

    .line 4013
    iget v4, v4, Lcom/google/android/gms/internal/ads/ecs;->a:I

    if-eq v3, v4, :cond_1

    goto :goto_2

    .line 1109
    :cond_1
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/dyl;->r:Lcom/google/android/gms/internal/ads/ecs;

    .line 5013
    iget v3, v3, Lcom/google/android/gms/internal/ads/ecs;->a:I

    .line 1110
    new-array v4, v3, [I

    .line 1111
    new-array v8, v3, [J

    .line 1112
    new-array v9, v3, [J

    .line 1113
    new-array v10, v3, [J

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v3, :cond_2

    .line 1115
    iget-object v12, v2, Lcom/google/android/gms/internal/ads/dyl;->r:Lcom/google/android/gms/internal/ads/ecs;

    invoke-virtual {v12, v11}, Lcom/google/android/gms/internal/ads/ecs;->a(I)J

    move-result-wide v12

    aput-wide v12, v10, v11

    .line 1116
    iget-wide v12, v2, Lcom/google/android/gms/internal/ads/dyl;->g:J

    iget-object v14, v2, Lcom/google/android/gms/internal/ads/dyl;->s:Lcom/google/android/gms/internal/ads/ecs;

    invoke-virtual {v14, v11}, Lcom/google/android/gms/internal/ads/ecs;->a(I)J

    move-result-wide v14

    add-long/2addr v12, v14

    aput-wide v12, v8, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    add-int/lit8 v11, v3, -0x1

    if-ge v6, v11, :cond_3

    add-int/lit8 v11, v6, 0x1

    .line 1119
    aget-wide v12, v8, v11

    aget-wide v14, v8, v6

    sub-long/2addr v12, v14

    long-to-int v13, v12

    aput v13, v4, v6

    .line 1120
    aget-wide v12, v10, v11

    aget-wide v14, v10, v6

    sub-long/2addr v12, v14

    aput-wide v12, v9, v6

    move v6, v11

    goto :goto_1

    .line 1122
    :cond_3
    iget-wide v12, v2, Lcom/google/android/gms/internal/ads/dyl;->g:J

    iget-wide v14, v2, Lcom/google/android/gms/internal/ads/dyl;->f:J

    add-long/2addr v12, v14

    aget-wide v14, v8, v11

    sub-long/2addr v12, v14

    long-to-int v3, v12

    aput v3, v4, v11

    .line 1123
    iget-wide v12, v2, Lcom/google/android/gms/internal/ads/dyl;->j:J

    aget-wide v14, v10, v11

    sub-long/2addr v12, v14

    aput-wide v12, v9, v11

    .line 1124
    iput-object v7, v2, Lcom/google/android/gms/internal/ads/dyl;->r:Lcom/google/android/gms/internal/ads/ecs;

    .line 1125
    iput-object v7, v2, Lcom/google/android/gms/internal/ads/dyl;->s:Lcom/google/android/gms/internal/ads/ecs;

    .line 1126
    new-instance v3, Lcom/google/android/gms/internal/ads/dxs;

    invoke-direct {v3, v4, v8, v9, v10}, Lcom/google/android/gms/internal/ads/dxs;-><init>([I[J[J[J)V

    goto :goto_3

    .line 1106
    :cond_4
    :goto_2
    iput-object v7, v2, Lcom/google/android/gms/internal/ads/dyl;->r:Lcom/google/android/gms/internal/ads/ecs;

    .line 1107
    iput-object v7, v2, Lcom/google/android/gms/internal/ads/dyl;->s:Lcom/google/android/gms/internal/ads/ecs;

    .line 1108
    new-instance v3, Lcom/google/android/gms/internal/ads/dyd;

    iget-wide v6, v2, Lcom/google/android/gms/internal/ads/dyl;->j:J

    invoke-direct {v3, v6, v7}, Lcom/google/android/gms/internal/ads/dyd;-><init>(J)V

    .line 1127
    :goto_3
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/dxx;->a(Lcom/google/android/gms/internal/ads/dya;)V

    .line 1128
    iput-boolean v5, v2, Lcom/google/android/gms/internal/ads/dyl;->l:Z

    return-void

    .line 1176
    :cond_5
    iget-object v1, v2, Lcom/google/android/gms/internal/ads/dyl;->b:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-eqz v1, :cond_6

    .line 1178
    iget-object v1, v2, Lcom/google/android/gms/internal/ads/dyl;->E:Lcom/google/android/gms/internal/ads/dxx;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/dxx;->a()V

    goto/16 :goto_1d

    .line 1177
    :cond_6
    new-instance v1, Lcom/google/android/gms/internal/ads/zzhw;

    const-string v2, "No valid tracks were found"

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzhw;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1093
    :cond_7
    iget-wide v3, v2, Lcom/google/android/gms/internal/ads/dyl;->h:J

    cmp-long v1, v3, v11

    if-nez v1, :cond_8

    const-wide/32 v3, 0xf4240

    .line 1094
    iput-wide v3, v2, Lcom/google/android/gms/internal/ads/dyl;->h:J

    .line 1095
    :cond_8
    iget-wide v3, v2, Lcom/google/android/gms/internal/ads/dyl;->i:J

    cmp-long v1, v3, v11

    if-eqz v1, :cond_44

    .line 1096
    iget-wide v3, v2, Lcom/google/android/gms/internal/ads/dyl;->i:J

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/dyl;->a(J)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/google/android/gms/internal/ads/dyl;->j:J

    return-void

    .line 1140
    :cond_9
    iget-object v1, v2, Lcom/google/android/gms/internal/ads/dyl;->k:Lcom/google/android/gms/internal/ads/dym;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/dym;->e:Z

    if-eqz v1, :cond_44

    iget-object v1, v2, Lcom/google/android/gms/internal/ads/dyl;->k:Lcom/google/android/gms/internal/ads/dym;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/dym;->f:[B

    if-nez v1, :cond_a

    goto/16 :goto_1d

    .line 1141
    :cond_a
    new-instance v1, Lcom/google/android/gms/internal/ads/zzhw;

    const-string v2, "Combining encryption and compression is not supported"

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzhw;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1136
    :cond_b
    iget-object v1, v2, Lcom/google/android/gms/internal/ads/dyl;->k:Lcom/google/android/gms/internal/ads/dym;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/dym;->e:Z

    if-eqz v1, :cond_44

    .line 1137
    iget-object v1, v2, Lcom/google/android/gms/internal/ads/dyl;->k:Lcom/google/android/gms/internal/ads/dym;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/dym;->g:Lcom/google/android/gms/internal/ads/dyf;

    if-eqz v1, :cond_c

    .line 1139
    iget-object v1, v2, Lcom/google/android/gms/internal/ads/dyl;->k:Lcom/google/android/gms/internal/ads/dym;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzjo;

    new-array v4, v5, [Lcom/google/android/gms/internal/ads/zzjo$zza;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzjo$zza;

    sget-object v7, Lcom/google/android/gms/internal/ads/dvj;->b:Ljava/util/UUID;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/dyl;->k:Lcom/google/android/gms/internal/ads/dym;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/dym;->g:Lcom/google/android/gms/internal/ads/dyf;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/dyf;->b:[B

    const-string v8, "video/webm"

    invoke-direct {v5, v7, v8, v2}, Lcom/google/android/gms/internal/ads/zzjo$zza;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    aput-object v5, v4, v6

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/ads/zzjo;-><init>([Lcom/google/android/gms/internal/ads/zzjo$zza;)V

    iput-object v3, v1, Lcom/google/android/gms/internal/ads/dym;->i:Lcom/google/android/gms/internal/ads/zzjo;

    return-void

    .line 1138
    :cond_c
    new-instance v1, Lcom/google/android/gms/internal/ads/zzhw;

    const-string v2, "Encrypted Track found but ContentEncKeyID was not found"

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzhw;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1097
    :cond_d
    iget v1, v2, Lcom/google/android/gms/internal/ads/dyl;->m:I

    if-eq v1, v8, :cond_e

    iget-wide v5, v2, Lcom/google/android/gms/internal/ads/dyl;->n:J

    cmp-long v1, v5, v9

    if-eqz v1, :cond_e

    .line 1099
    iget v1, v2, Lcom/google/android/gms/internal/ads/dyl;->m:I

    if-ne v1, v4, :cond_44

    .line 1100
    iget-wide v3, v2, Lcom/google/android/gms/internal/ads/dyl;->n:J

    iput-wide v3, v2, Lcom/google/android/gms/internal/ads/dyl;->p:J

    return-void

    .line 1098
    :cond_e
    new-instance v1, Lcom/google/android/gms/internal/ads/zzhw;

    const-string v2, "Mandatory element SeekID or SeekPosition not found"

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzhw;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1142
    :cond_f
    iget-object v1, v2, Lcom/google/android/gms/internal/ads/dyl;->k:Lcom/google/android/gms/internal/ads/dym;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/dym;->a:Ljava/lang/String;

    const-string v3, "V_VP8"

    .line 1143
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-string v10, "A_TRUEHD"

    const-string v11, "A_MS/ACM"

    const-string v12, "V_MPEG4/ISO/SP"

    const-string v13, "V_MPEG4/ISO/AP"

    const-string v14, "V_MPEG2"

    const-string v15, "V_VP9"

    if-nez v9, :cond_11

    .line 1144
    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    .line 1145
    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    .line 1146
    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    const-string v9, "V_MPEG4/ISO/ASP"

    .line 1147
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    .line 1148
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    const-string v9, "V_MPEG4/ISO/AVC"

    .line 1149
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    const-string v9, "V_MPEGH/ISO/HEVC"

    .line 1150
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    const-string v9, "V_MS/VFW/FOURCC"

    .line 1151
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    const-string v9, "V_THEORA"

    .line 1152
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    const-string v9, "A_OPUS"

    .line 1153
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    const-string v9, "A_VORBIS"

    .line 1154
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    const-string v9, "A_AAC"

    .line 1155
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    const-string v9, "A_MPEG/L2"

    .line 1156
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    const-string v9, "A_MPEG/L3"

    .line 1157
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    const-string v9, "A_AC3"

    .line 1158
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    const-string v9, "A_EAC3"

    .line 1159
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    .line 1160
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    const-string v9, "A_DTS"

    .line 1161
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    const-string v9, "A_DTS/EXPRESS"

    .line 1162
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    const-string v9, "A_DTS/LOSSLESS"

    .line 1163
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    const-string v9, "A_FLAC"

    .line 1164
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    .line 1165
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    const-string v9, "A_PCM/INT/LIT"

    .line 1166
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    const-string v9, "S_TEXT/UTF8"

    .line 1167
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    const-string v9, "S_VOBSUB"

    .line 1168
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    const-string v9, "S_HDMV/PGS"

    .line 1169
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    const-string v9, "S_DVBSUB"

    .line 1170
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_4

    :cond_10
    const/4 v1, 0x0

    goto :goto_5

    :cond_11
    :goto_4
    const/4 v1, 0x1

    :goto_5
    if-eqz v1, :cond_41

    .line 1172
    iget-object v1, v2, Lcom/google/android/gms/internal/ads/dyl;->k:Lcom/google/android/gms/internal/ads/dym;

    iget-object v9, v2, Lcom/google/android/gms/internal/ads/dyl;->E:Lcom/google/android/gms/internal/ads/dxx;

    iget-object v7, v2, Lcom/google/android/gms/internal/ads/dyl;->k:Lcom/google/android/gms/internal/ads/dym;

    iget v7, v7, Lcom/google/android/gms/internal/ads/dym;->b:I

    .line 5035
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/dym;->a:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v16

    const/16 v17, 0x8

    const/4 v4, 0x3

    sparse-switch v16, :sswitch_data_0

    :goto_6
    const/4 v3, -0x1

    goto/16 :goto_7

    :sswitch_0
    const-string v3, "A_OPUS"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    goto :goto_6

    :cond_12
    const/16 v3, 0x1b

    goto/16 :goto_7

    :sswitch_1
    const-string v3, "A_FLAC"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    goto :goto_6

    :cond_13
    const/16 v3, 0x1a

    goto/16 :goto_7

    :sswitch_2
    const-string v3, "A_EAC3"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    goto :goto_6

    :cond_14
    const/16 v3, 0x19

    goto/16 :goto_7

    :sswitch_3
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    goto :goto_6

    :cond_15
    const/16 v3, 0x18

    goto/16 :goto_7

    :sswitch_4
    const-string v3, "S_TEXT/UTF8"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    goto :goto_6

    :cond_16
    const/16 v3, 0x17

    goto/16 :goto_7

    :sswitch_5
    const-string v3, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    goto :goto_6

    :cond_17
    const/16 v3, 0x16

    goto/16 :goto_7

    :sswitch_6
    const-string v3, "A_PCM/INT/LIT"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    goto :goto_6

    :cond_18
    const/16 v3, 0x15

    goto/16 :goto_7

    :sswitch_7
    const-string v3, "A_DTS/EXPRESS"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    goto :goto_6

    :cond_19
    const/16 v3, 0x14

    goto/16 :goto_7

    :sswitch_8
    const-string v3, "V_THEORA"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    goto :goto_6

    :cond_1a
    const/16 v3, 0x13

    goto/16 :goto_7

    :sswitch_9
    const-string v3, "S_HDMV/PGS"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    goto :goto_6

    :cond_1b
    const/16 v3, 0x12

    goto/16 :goto_7

    :sswitch_a
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    goto/16 :goto_6

    :cond_1c
    const/16 v3, 0x11

    goto/16 :goto_7

    :sswitch_b
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    goto/16 :goto_6

    :cond_1d
    const/16 v3, 0x10

    goto/16 :goto_7

    :sswitch_c
    const-string v3, "A_DTS"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    goto/16 :goto_6

    :cond_1e
    const/16 v3, 0xf

    goto/16 :goto_7

    :sswitch_d
    const-string v3, "A_AC3"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    goto/16 :goto_6

    :cond_1f
    const/16 v3, 0xe

    goto/16 :goto_7

    :sswitch_e
    const-string v3, "A_AAC"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    goto/16 :goto_6

    :cond_20
    const/16 v3, 0xd

    goto/16 :goto_7

    :sswitch_f
    const-string v3, "A_DTS/LOSSLESS"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    goto/16 :goto_6

    :cond_21
    const/16 v3, 0xc

    goto/16 :goto_7

    :sswitch_10
    const-string v3, "S_VOBSUB"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    goto/16 :goto_6

    :cond_22
    const/16 v3, 0xb

    goto/16 :goto_7

    :sswitch_11
    const-string v3, "V_MPEG4/ISO/AVC"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    goto/16 :goto_6

    :cond_23
    const/16 v3, 0xa

    goto/16 :goto_7

    :sswitch_12
    const-string v3, "V_MPEG4/ISO/ASP"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    goto/16 :goto_6

    :cond_24
    const/16 v3, 0x9

    goto/16 :goto_7

    :sswitch_13
    const-string v3, "S_DVBSUB"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    goto/16 :goto_6

    :cond_25
    const/16 v3, 0x8

    goto :goto_7

    :sswitch_14
    const-string v3, "V_MS/VFW/FOURCC"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    goto/16 :goto_6

    :cond_26
    const/4 v3, 0x7

    goto :goto_7

    :sswitch_15
    const-string v3, "A_MPEG/L3"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    goto/16 :goto_6

    :cond_27
    const/4 v3, 0x6

    goto :goto_7

    :sswitch_16
    const-string v3, "A_MPEG/L2"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    goto/16 :goto_6

    :cond_28
    const/4 v3, 0x5

    goto :goto_7

    :sswitch_17
    const-string v3, "A_VORBIS"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    goto/16 :goto_6

    :cond_29
    const/4 v3, 0x4

    goto :goto_7

    :sswitch_18
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    goto/16 :goto_6

    :cond_2a
    const/4 v3, 0x3

    goto :goto_7

    :sswitch_19
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    goto/16 :goto_6

    :cond_2b
    const/4 v3, 0x2

    goto :goto_7

    :sswitch_1a
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2c

    goto/16 :goto_6

    :cond_2c
    const/4 v3, 0x1

    goto :goto_7

    :sswitch_1b
    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d

    goto/16 :goto_6

    :cond_2d
    const/4 v3, 0x0

    :goto_7
    const-string v8, "audio/x-unknown"

    const-string v10, "MatroskaExtractor"

    packed-switch v3, :pswitch_data_0

    .line 5126
    new-instance v1, Lcom/google/android/gms/internal/ads/zzhw;

    const-string v2, "Unrecognized codec identifier."

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzhw;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    const/16 v3, 0x1680

    .line 5069
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 5070
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/dym;->h:[B

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5072
    invoke-static/range {v17 .. v17}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    iget-wide v10, v1, Lcom/google/android/gms/internal/ads/dym;->J:J

    invoke-virtual {v4, v10, v11}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    .line 5073
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5075
    invoke-static/range {v17 .. v17}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    iget-wide v10, v1, Lcom/google/android/gms/internal/ads/dym;->K:J

    invoke-virtual {v4, v10, v11}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    .line 5076
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v8, "audio/opus"

    move-object/from16 v27, v5

    const/16 v22, 0x1680

    goto/16 :goto_d

    .line 5098
    :pswitch_1
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/dym;->h:[B

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const-string v8, "audio/x-flac"

    goto/16 :goto_c

    :pswitch_2
    const-string v8, "audio/eac3"

    goto :goto_9

    :pswitch_3
    const-string v8, "video/mpeg2"

    goto :goto_9

    :pswitch_4
    const-string v8, "application/x-subrip"

    goto :goto_9

    .line 5051
    :pswitch_5
    new-instance v3, Lcom/google/android/gms/internal/ads/ecy;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/dym;->h:[B

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/ads/ecy;-><init>([B)V

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/edl;->a(Lcom/google/android/gms/internal/ads/ecy;)Lcom/google/android/gms/internal/ads/edl;

    move-result-object v3

    .line 5052
    iget-object v5, v3, Lcom/google/android/gms/internal/ads/edl;->a:Ljava/util/List;

    .line 5053
    iget v3, v3, Lcom/google/android/gms/internal/ads/edl;->b:I

    iput v3, v1, Lcom/google/android/gms/internal/ads/dym;->P:I

    const-string v8, "video/hevc"

    goto/16 :goto_c

    .line 5111
    :pswitch_6
    iget v3, v1, Lcom/google/android/gms/internal/ads/dym;->H:I

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/ede;->a(I)I

    move-result v3

    if-nez v3, :cond_2e

    .line 5115
    iget v3, v1, Lcom/google/android/gms/internal/ads/dym;->H:I

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x3c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Unsupported PCM bit depth: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ". Setting mimeType to "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_2e
    const-string v8, "audio/raw"

    :goto_8
    move/from16 v25, v3

    const/16 v22, -0x1

    goto :goto_b

    :pswitch_7
    const-string v8, "video/x-unknown"

    goto :goto_9

    :pswitch_8
    const-string v8, "application/pgs"

    goto :goto_9

    :pswitch_9
    const-string v8, "video/x-vnd.on2.vp9"

    goto :goto_9

    :pswitch_a
    const-string v8, "video/x-vnd.on2.vp8"

    :goto_9
    const/16 v22, -0x1

    :goto_a
    const/16 v25, -0x1

    :goto_b
    const/16 v27, 0x0

    goto/16 :goto_11

    :pswitch_b
    const-string v8, "audio/vnd.dts"

    goto :goto_9

    :pswitch_c
    const-string v8, "audio/ac3"

    goto :goto_9

    .line 5079
    :pswitch_d
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/dym;->h:[B

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const-string v8, "audio/mp4a-latm"

    goto :goto_c

    :pswitch_e
    const-string v8, "audio/vnd.dts.hd"

    goto :goto_9

    .line 5119
    :pswitch_f
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/dym;->h:[B

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const-string v8, "application/vobsub"

    goto :goto_c

    .line 5046
    :pswitch_10
    new-instance v3, Lcom/google/android/gms/internal/ads/ecy;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/dym;->h:[B

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/ads/ecy;-><init>([B)V

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/edg;->a(Lcom/google/android/gms/internal/ads/ecy;)Lcom/google/android/gms/internal/ads/edg;

    move-result-object v3

    .line 5047
    iget-object v5, v3, Lcom/google/android/gms/internal/ads/edg;->a:Ljava/util/List;

    .line 5048
    iget v3, v3, Lcom/google/android/gms/internal/ads/edg;->b:I

    iput v3, v1, Lcom/google/android/gms/internal/ads/dym;->P:I

    const-string v8, "video/avc"

    :goto_c
    move-object/from16 v27, v5

    const/16 v22, -0x1

    :goto_d
    const/16 v25, -0x1

    goto/16 :goto_11

    :pswitch_11
    const/4 v3, 0x4

    new-array v3, v3, [B

    .line 5124
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/dym;->h:[B

    aget-byte v8, v8, v6

    aput-byte v8, v3, v6

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/dym;->h:[B

    aget-byte v8, v8, v5

    aput-byte v8, v3, v5

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/dym;->h:[B

    const/4 v8, 0x2

    aget-byte v5, v5, v8

    aput-byte v5, v3, v8

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/dym;->h:[B

    aget-byte v5, v5, v4

    aput-byte v5, v3, v4

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const-string v8, "application/dvbsubs"

    goto :goto_c

    .line 5055
    :pswitch_12
    new-instance v3, Lcom/google/android/gms/internal/ads/ecy;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/dym;->h:[B

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/ads/ecy;-><init>([B)V

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/dym;->a(Lcom/google/android/gms/internal/ads/ecy;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_2f

    const-string v8, "video/wvc1"

    goto :goto_c

    :cond_2f
    const-string v3, "Unsupported FourCC. Setting mimeType to video/x-unknown"

    .line 5058
    invoke-static {v10, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "video/x-unknown"

    goto :goto_c

    :pswitch_13
    const/16 v3, 0x1000

    const-string v8, "audio/mpeg"

    goto :goto_e

    :pswitch_14
    const/16 v3, 0x1000

    const-string v8, "audio/mpeg-L2"

    :goto_e
    const/16 v22, 0x1000

    goto/16 :goto_a

    :pswitch_15
    const/16 v3, 0x2000

    .line 5065
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/dym;->h:[B

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/dym;->a([B)Ljava/util/List;

    move-result-object v5

    const-string v8, "audio/vorbis"

    move-object/from16 v27, v5

    const/16 v22, 0x2000

    goto :goto_d

    :pswitch_16
    const-string v8, "audio/true-hd"

    goto/16 :goto_9

    .line 5101
    :pswitch_17
    new-instance v3, Lcom/google/android/gms/internal/ads/ecy;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/dym;->h:[B

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/ads/ecy;-><init>([B)V

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/dym;->b(Lcom/google/android/gms/internal/ads/ecy;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 5102
    iget v3, v1, Lcom/google/android/gms/internal/ads/dym;->H:I

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/ede;->a(I)I

    move-result v3

    if-nez v3, :cond_30

    .line 5106
    iget v3, v1, Lcom/google/android/gms/internal/ads/dym;->H:I

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x3c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Unsupported PCM bit depth: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ". Setting mimeType to "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :cond_30
    const-string v8, "audio/raw"

    goto/16 :goto_8

    :cond_31
    const-string v3, "Non-PCM MS/ACM is unsupported. Setting mimeType to "

    .line 5108
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_32

    invoke-virtual {v3, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_f

    :cond_32
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    :goto_f
    invoke-static {v10, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 5043
    :pswitch_18
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/dym;->h:[B

    if-nez v3, :cond_33

    const/4 v5, 0x0

    goto :goto_10

    :cond_33
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/dym;->h:[B

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    move-object v5, v3

    :goto_10
    const-string v8, "video/mp4v-es"

    goto/16 :goto_c

    .line 5128
    :goto_11
    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/dym;->M:Z

    or-int/2addr v3, v6

    .line 5129
    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/dym;->L:Z

    if-eqz v4, :cond_34

    const/4 v4, 0x2

    goto :goto_12

    :cond_34
    const/4 v4, 0x0

    :goto_12
    or-int/2addr v3, v4

    .line 5130
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/ecu;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 5132
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v20, 0x0

    const/16 v21, -0x1

    iget v4, v1, Lcom/google/android/gms/internal/ads/dym;->G:I

    iget v5, v1, Lcom/google/android/gms/internal/ads/dym;->I:I

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/dym;->i:Lcom/google/android/gms/internal/ads/zzjo;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/dym;->N:Ljava/lang/String;

    move-object/from16 v19, v8

    move/from16 v23, v4

    move/from16 v24, v5

    move-object/from16 v26, v27

    move-object/from16 v27, v6

    move/from16 v28, v3

    move-object/from16 v29, v7

    invoke-static/range {v18 .. v29}, Lcom/google/android/gms/internal/ads/zzht;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/google/android/gms/internal/ads/zzjo;ILjava/lang/String;)Lcom/google/android/gms/internal/ads/zzht;

    move-result-object v3

    goto/16 :goto_1b

    .line 5133
    :cond_35
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/ecu;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 5135
    iget v3, v1, Lcom/google/android/gms/internal/ads/dym;->n:I

    if-nez v3, :cond_38

    .line 5136
    iget v3, v1, Lcom/google/android/gms/internal/ads/dym;->l:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_36

    iget v3, v1, Lcom/google/android/gms/internal/ads/dym;->j:I

    goto :goto_13

    :cond_36
    iget v3, v1, Lcom/google/android/gms/internal/ads/dym;->l:I

    :goto_13
    iput v3, v1, Lcom/google/android/gms/internal/ads/dym;->l:I

    .line 5137
    iget v3, v1, Lcom/google/android/gms/internal/ads/dym;->m:I

    if-ne v3, v4, :cond_37

    iget v3, v1, Lcom/google/android/gms/internal/ads/dym;->k:I

    goto :goto_14

    :cond_37
    iget v3, v1, Lcom/google/android/gms/internal/ads/dym;->m:I

    :goto_14
    iput v3, v1, Lcom/google/android/gms/internal/ads/dym;->m:I

    goto :goto_15

    :cond_38
    const/4 v4, -0x1

    .line 5139
    :goto_15
    iget v3, v1, Lcom/google/android/gms/internal/ads/dym;->l:I

    const/high16 v5, -0x40800000    # -1.0f

    if-eq v3, v4, :cond_39

    iget v3, v1, Lcom/google/android/gms/internal/ads/dym;->m:I

    if-eq v3, v4, :cond_39

    .line 5140
    iget v3, v1, Lcom/google/android/gms/internal/ads/dym;->k:I

    iget v4, v1, Lcom/google/android/gms/internal/ads/dym;->l:I

    mul-int v3, v3, v4

    int-to-float v3, v3

    iget v4, v1, Lcom/google/android/gms/internal/ads/dym;->j:I

    iget v10, v1, Lcom/google/android/gms/internal/ads/dym;->m:I

    mul-int v4, v4, v10

    int-to-float v4, v4

    div-float/2addr v3, v4

    move/from16 v28, v3

    goto :goto_16

    :cond_39
    const/high16 v28, -0x40800000    # -1.0f

    .line 5142
    :goto_16
    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/dym;->q:Z

    if-eqz v3, :cond_3c

    .line 5144
    iget v3, v1, Lcom/google/android/gms/internal/ads/dym;->w:F

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_3b

    iget v3, v1, Lcom/google/android/gms/internal/ads/dym;->x:F

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_3b

    iget v3, v1, Lcom/google/android/gms/internal/ads/dym;->y:F

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_3b

    iget v3, v1, Lcom/google/android/gms/internal/ads/dym;->z:F

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_3b

    iget v3, v1, Lcom/google/android/gms/internal/ads/dym;->A:F

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_3b

    iget v3, v1, Lcom/google/android/gms/internal/ads/dym;->B:F

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_3b

    iget v3, v1, Lcom/google/android/gms/internal/ads/dym;->C:F

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_3b

    iget v3, v1, Lcom/google/android/gms/internal/ads/dym;->D:F

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_3b

    iget v3, v1, Lcom/google/android/gms/internal/ads/dym;->E:F

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_3b

    iget v3, v1, Lcom/google/android/gms/internal/ads/dym;->F:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_3a

    goto/16 :goto_17

    :cond_3a
    const/16 v3, 0x19

    new-array v3, v3, [B

    .line 5147
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 5148
    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5149
    iget v5, v1, Lcom/google/android/gms/internal/ads/dym;->w:F

    const v6, 0x47435000    # 50000.0f

    mul-float v5, v5, v6

    const/high16 v10, 0x3f000000    # 0.5f

    add-float/2addr v5, v10

    float-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 5150
    iget v5, v1, Lcom/google/android/gms/internal/ads/dym;->x:F

    mul-float v5, v5, v6

    add-float/2addr v5, v10

    float-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 5151
    iget v5, v1, Lcom/google/android/gms/internal/ads/dym;->y:F

    mul-float v5, v5, v6

    add-float/2addr v5, v10

    float-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 5152
    iget v5, v1, Lcom/google/android/gms/internal/ads/dym;->z:F

    mul-float v5, v5, v6

    add-float/2addr v5, v10

    float-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 5153
    iget v5, v1, Lcom/google/android/gms/internal/ads/dym;->A:F

    mul-float v5, v5, v6

    add-float/2addr v5, v10

    float-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 5154
    iget v5, v1, Lcom/google/android/gms/internal/ads/dym;->B:F

    mul-float v5, v5, v6

    add-float/2addr v5, v10

    float-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 5155
    iget v5, v1, Lcom/google/android/gms/internal/ads/dym;->C:F

    mul-float v5, v5, v6

    add-float/2addr v5, v10

    float-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 5156
    iget v5, v1, Lcom/google/android/gms/internal/ads/dym;->D:F

    mul-float v5, v5, v6

    add-float/2addr v5, v10

    float-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 5157
    iget v5, v1, Lcom/google/android/gms/internal/ads/dym;->E:F

    add-float/2addr v5, v10

    float-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 5158
    iget v5, v1, Lcom/google/android/gms/internal/ads/dym;->F:F

    add-float/2addr v5, v10

    float-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 5159
    iget v5, v1, Lcom/google/android/gms/internal/ads/dym;->u:I

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 5160
    iget v5, v1, Lcom/google/android/gms/internal/ads/dym;->v:I

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_18

    :cond_3b
    :goto_17
    const/4 v3, 0x0

    .line 5163
    :goto_18
    new-instance v4, Lcom/google/android/gms/internal/ads/zzpy;

    iget v5, v1, Lcom/google/android/gms/internal/ads/dym;->r:I

    iget v6, v1, Lcom/google/android/gms/internal/ads/dym;->t:I

    iget v10, v1, Lcom/google/android/gms/internal/ads/dym;->s:I

    invoke-direct {v4, v5, v6, v10, v3}, Lcom/google/android/gms/internal/ads/zzpy;-><init>(III[B)V

    move-object/from16 v31, v4

    goto :goto_19

    :cond_3c
    const/16 v31, 0x0

    .line 5164
    :goto_19
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v20, 0x0

    const/16 v21, -0x1

    iget v3, v1, Lcom/google/android/gms/internal/ads/dym;->j:I

    iget v4, v1, Lcom/google/android/gms/internal/ads/dym;->k:I

    const/high16 v25, -0x40800000    # -1.0f

    const/4 v5, -0x1

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/dym;->o:[B

    iget v7, v1, Lcom/google/android/gms/internal/ads/dym;->p:I

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/dym;->i:Lcom/google/android/gms/internal/ads/zzjo;

    move-object/from16 v19, v8

    move/from16 v23, v3

    move/from16 v24, v4

    move-object/from16 v26, v27

    move/from16 v27, v5

    move-object/from16 v29, v6

    move/from16 v30, v7

    move-object/from16 v32, v10

    invoke-static/range {v18 .. v32}, Lcom/google/android/gms/internal/ads/zzht;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILcom/google/android/gms/internal/ads/zzpy;Lcom/google/android/gms/internal/ads/zzjo;)Lcom/google/android/gms/internal/ads/zzht;

    move-result-object v3

    goto :goto_1b

    :cond_3d
    const-string v4, "application/x-subrip"

    .line 5165
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 5167
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    const/16 v25, 0x0

    const/16 v26, -0x1

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/dym;->N:Ljava/lang/String;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/dym;->i:Lcom/google/android/gms/internal/ads/zzjo;

    move-object/from16 v24, v8

    move/from16 v27, v3

    move-object/from16 v28, v4

    move-object/from16 v29, v5

    invoke-static/range {v23 .. v29}, Lcom/google/android/gms/internal/ads/zzht;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/google/android/gms/internal/ads/zzjo;)Lcom/google/android/gms/internal/ads/zzht;

    move-result-object v3

    goto :goto_1b

    :cond_3e
    const-string v3, "application/vobsub"

    .line 5168
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_40

    const-string v3, "application/pgs"

    .line 5169
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_40

    const-string v3, "application/dvbsubs"

    .line 5170
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    goto :goto_1a

    .line 5173
    :cond_3f
    new-instance v1, Lcom/google/android/gms/internal/ads/zzhw;

    const-string v2, "Unexpected MIME type."

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzhw;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5172
    :cond_40
    :goto_1a
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    const/16 v25, 0x0

    const/16 v26, -0x1

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/dym;->N:Ljava/lang/String;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/dym;->i:Lcom/google/android/gms/internal/ads/zzjo;

    move-object/from16 v24, v8

    move-object/from16 v28, v3

    move-object/from16 v29, v4

    invoke-static/range {v23 .. v29}, Lcom/google/android/gms/internal/ads/zzht;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzjo;)Lcom/google/android/gms/internal/ads/zzht;

    move-result-object v3

    .line 5174
    :goto_1b
    iget v4, v1, Lcom/google/android/gms/internal/ads/dym;->b:I

    invoke-interface {v9, v4}, Lcom/google/android/gms/internal/ads/dxx;->a(I)Lcom/google/android/gms/internal/ads/dyc;

    move-result-object v4

    iput-object v4, v1, Lcom/google/android/gms/internal/ads/dym;->O:Lcom/google/android/gms/internal/ads/dyc;

    .line 5175
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/dym;->O:Lcom/google/android/gms/internal/ads/dyc;

    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/dyc;->a(Lcom/google/android/gms/internal/ads/zzht;)V

    .line 1173
    iget-object v1, v2, Lcom/google/android/gms/internal/ads/dyl;->b:Landroid/util/SparseArray;

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/dyl;->k:Lcom/google/android/gms/internal/ads/dym;

    iget v3, v3, Lcom/google/android/gms/internal/ads/dym;->b:I

    iget-object v4, v2, Lcom/google/android/gms/internal/ads/dyl;->k:Lcom/google/android/gms/internal/ads/dym;

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x0

    goto :goto_1c

    :cond_41
    move-object v1, v7

    .line 1174
    :goto_1c
    iput-object v1, v2, Lcom/google/android/gms/internal/ads/dyl;->k:Lcom/google/android/gms/internal/ads/dym;

    return-void

    .line 1129
    :cond_42
    iget v1, v2, Lcom/google/android/gms/internal/ads/dyl;->u:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_44

    .line 1131
    iget-boolean v1, v2, Lcom/google/android/gms/internal/ads/dyl;->D:Z

    if-nez v1, :cond_43

    .line 1132
    iget v1, v2, Lcom/google/android/gms/internal/ads/dyl;->C:I

    or-int/2addr v1, v5

    iput v1, v2, Lcom/google/android/gms/internal/ads/dyl;->C:I

    .line 1133
    :cond_43
    iget-object v1, v2, Lcom/google/android/gms/internal/ads/dyl;->b:Landroid/util/SparseArray;

    iget v3, v2, Lcom/google/android/gms/internal/ads/dyl;->A:I

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/dym;

    iget-wide v3, v2, Lcom/google/android/gms/internal/ads/dyl;->v:J

    invoke-virtual {v2, v1, v3, v4}, Lcom/google/android/gms/internal/ads/dyl;->a(Lcom/google/android/gms/internal/ads/dym;J)V

    .line 1134
    iput v6, v2, Lcom/google/android/gms/internal/ads/dyl;->u:I

    :cond_44
    :goto_1d
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7ce7f5de -> :sswitch_1b
        -0x7ce7f3b0 -> :sswitch_1a
        -0x76567dc0 -> :sswitch_19
        -0x6a615338 -> :sswitch_18
        -0x672350af -> :sswitch_17
        -0x585f4fce -> :sswitch_16
        -0x585f4fcd -> :sswitch_15
        -0x51dc40b2 -> :sswitch_14
        -0x37a9c464 -> :sswitch_13
        -0x2016c535 -> :sswitch_12
        -0x2016c4e5 -> :sswitch_11
        -0x19552dbd -> :sswitch_10
        -0x1538b2ba -> :sswitch_f
        0x3c02325 -> :sswitch_e
        0x3c02353 -> :sswitch_d
        0x3c030c5 -> :sswitch_c
        0x4e86155 -> :sswitch_b
        0x4e86156 -> :sswitch_a
        0x5e8da3e -> :sswitch_9
        0x1a8350d6 -> :sswitch_8
        0x2056f406 -> :sswitch_7
        0x2b453ce4 -> :sswitch_6
        0x32fdf009 -> :sswitch_5
        0x54c61e47 -> :sswitch_4
        0x6bd6c624 -> :sswitch_3
        0x7446132a -> :sswitch_2
        0x7446b0a6 -> :sswitch_1
        0x744ad97d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_18
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_b
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
