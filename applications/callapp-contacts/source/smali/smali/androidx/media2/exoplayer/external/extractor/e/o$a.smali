.class final Landroidx/media2/exoplayer/external/extractor/e/o$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/extractor/e/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/extractor/e/o$a$a;
    }
.end annotation


# instance fields
.field final a:Landroidx/media2/exoplayer/external/extractor/q;

.field final b:Z

.field final c:Z

.field d:I

.field e:I

.field f:J

.field g:Z

.field h:J

.field i:Landroidx/media2/exoplayer/external/extractor/e/o$a$a;

.field j:Landroidx/media2/exoplayer/external/extractor/e/o$a$a;

.field k:Z

.field l:J

.field m:J

.field n:Z

.field private final o:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/media2/exoplayer/external/util/n$b;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/media2/exoplayer/external/util/n$a;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Landroidx/media2/exoplayer/external/util/q;

.field private r:[B


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/extractor/q;ZZ)V
    .locals 0

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/o$a;->a:Landroidx/media2/exoplayer/external/extractor/q;

    .line 283
    iput-boolean p2, p0, Landroidx/media2/exoplayer/external/extractor/e/o$a;->b:Z

    .line 284
    iput-boolean p3, p0, Landroidx/media2/exoplayer/external/extractor/e/o$a;->c:Z

    .line 285
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/o$a;->o:Landroid/util/SparseArray;

    .line 286
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/o$a;->p:Landroid/util/SparseArray;

    .line 287
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/e/o$a$a;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/extractor/e/o$a$a;-><init>(Landroidx/media2/exoplayer/external/extractor/e/o$1;)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/o$a;->i:Landroidx/media2/exoplayer/external/extractor/e/o$a$a;

    .line 288
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/e/o$a$a;

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/extractor/e/o$a$a;-><init>(Landroidx/media2/exoplayer/external/extractor/e/o$1;)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/o$a;->j:Landroidx/media2/exoplayer/external/extractor/e/o$a$a;

    const/16 p1, 0x80

    new-array p1, p1, [B

    .line 289
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/o$a;->r:[B

    .line 290
    new-instance p2, Landroidx/media2/exoplayer/external/util/q;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3, p3}, Landroidx/media2/exoplayer/external/util/q;-><init>([BII)V

    iput-object p2, p0, Landroidx/media2/exoplayer/external/extractor/e/o$a;->q:Landroidx/media2/exoplayer/external/util/q;

    .line 291
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/extractor/e/o$a;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    .line 307
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/e/o$a;->g:Z

    .line 308
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/e/o$a;->k:Z

    .line 309
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/o$a;->j:Landroidx/media2/exoplayer/external/extractor/e/o$a$a;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/extractor/e/o$a$a;->a()V

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/util/n$a;)V
    .locals 2

    .line 303
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/o$a;->p:Landroid/util/SparseArray;

    iget v1, p1, Landroidx/media2/exoplayer/external/util/n$a;->a:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/util/n$b;)V
    .locals 2

    .line 299
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/o$a;->o:Landroid/util/SparseArray;

    iget v1, p1, Landroidx/media2/exoplayer/external/util/n$b;->d:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public final a([BII)V
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 338
    iget-boolean v2, v0, Landroidx/media2/exoplayer/external/extractor/e/o$a;->g:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    sub-int v2, p3, v1

    .line 342
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/e/o$a;->r:[B

    array-length v4, v3

    iget v5, v0, Landroidx/media2/exoplayer/external/extractor/e/o$a;->d:I

    add-int v6, v5, v2

    const/4 v7, 0x2

    if-ge v4, v6, :cond_1

    add-int/2addr v5, v2

    mul-int/lit8 v5, v5, 0x2

    .line 343
    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    iput-object v3, v0, Landroidx/media2/exoplayer/external/extractor/e/o$a;->r:[B

    .line 345
    :cond_1
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/e/o$a;->r:[B

    iget v4, v0, Landroidx/media2/exoplayer/external/extractor/e/o$a;->d:I

    move-object/from16 v5, p1

    invoke-static {v5, v1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 346
    iget v1, v0, Landroidx/media2/exoplayer/external/extractor/e/o$a;->d:I

    add-int/2addr v1, v2

    iput v1, v0, Landroidx/media2/exoplayer/external/extractor/e/o$a;->d:I

    .line 348
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/e/o$a;->q:Landroidx/media2/exoplayer/external/util/q;

    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/e/o$a;->r:[B

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroidx/media2/exoplayer/external/util/q;->a([BII)V

    .line 349
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/e/o$a;->q:Landroidx/media2/exoplayer/external/util/q;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/util/q;->b(I)Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    .line 352
    :cond_2
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/e/o$a;->q:Landroidx/media2/exoplayer/external/util/q;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/q;->a()V

    .line 353
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/e/o$a;->q:Landroidx/media2/exoplayer/external/util/q;

    invoke-virtual {v1, v7}, Landroidx/media2/exoplayer/external/util/q;->c(I)I

    move-result v10

    .line 354
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/e/o$a;->q:Landroidx/media2/exoplayer/external/util/q;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/util/q;->a(I)V

    .line 358
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/e/o$a;->q:Landroidx/media2/exoplayer/external/util/q;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/q;->c()Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    .line 361
    :cond_3
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/e/o$a;->q:Landroidx/media2/exoplayer/external/util/q;

    .line 1185
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/q;->e()I

    .line 362
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/e/o$a;->q:Landroidx/media2/exoplayer/external/util/q;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/q;->c()Z

    move-result v1

    if-nez v1, :cond_4

    return-void

    .line 365
    :cond_4
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/e/o$a;->q:Landroidx/media2/exoplayer/external/util/q;

    .line 2185
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/q;->e()I

    move-result v11

    .line 366
    iget-boolean v1, v0, Landroidx/media2/exoplayer/external/extractor/e/o$a;->c:Z

    if-nez v1, :cond_5

    .line 368
    iput-boolean v4, v0, Landroidx/media2/exoplayer/external/extractor/e/o$a;->g:Z

    .line 369
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/e/o$a;->j:Landroidx/media2/exoplayer/external/extractor/e/o$a$a;

    invoke-virtual {v1, v11}, Landroidx/media2/exoplayer/external/extractor/e/o$a$a;->a(I)V

    return-void

    .line 372
    :cond_5
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/e/o$a;->q:Landroidx/media2/exoplayer/external/util/q;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/q;->c()Z

    move-result v1

    if-nez v1, :cond_6

    return-void

    .line 375
    :cond_6
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/e/o$a;->q:Landroidx/media2/exoplayer/external/util/q;

    .line 3185
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/q;->e()I

    move-result v13

    .line 376
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/e/o$a;->p:Landroid/util/SparseArray;

    invoke-virtual {v1, v13}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_7

    .line 378
    iput-boolean v4, v0, Landroidx/media2/exoplayer/external/extractor/e/o$a;->g:Z

    return-void

    .line 381
    :cond_7
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/e/o$a;->p:Landroid/util/SparseArray;

    invoke-virtual {v1, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/util/n$a;

    .line 382
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/e/o$a;->o:Landroid/util/SparseArray;

    iget v5, v1, Landroidx/media2/exoplayer/external/util/n$a;->b:I

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Landroidx/media2/exoplayer/external/util/n$b;

    .line 383
    iget-boolean v3, v9, Landroidx/media2/exoplayer/external/util/n$b;->h:Z

    if-eqz v3, :cond_9

    .line 384
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/e/o$a;->q:Landroidx/media2/exoplayer/external/util/q;

    invoke-virtual {v3, v7}, Landroidx/media2/exoplayer/external/util/q;->b(I)Z

    move-result v3

    if-nez v3, :cond_8

    return-void

    .line 387
    :cond_8
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/e/o$a;->q:Landroidx/media2/exoplayer/external/util/q;

    invoke-virtual {v3, v7}, Landroidx/media2/exoplayer/external/util/q;->a(I)V

    .line 389
    :cond_9
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/e/o$a;->q:Landroidx/media2/exoplayer/external/util/q;

    iget v5, v9, Landroidx/media2/exoplayer/external/util/n$b;->j:I

    invoke-virtual {v3, v5}, Landroidx/media2/exoplayer/external/util/q;->b(I)Z

    move-result v3

    if-nez v3, :cond_a

    return-void

    .line 395
    :cond_a
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/e/o$a;->q:Landroidx/media2/exoplayer/external/util/q;

    iget v5, v9, Landroidx/media2/exoplayer/external/util/n$b;->j:I

    invoke-virtual {v3, v5}, Landroidx/media2/exoplayer/external/util/q;->c(I)I

    move-result v12

    .line 396
    iget-boolean v3, v9, Landroidx/media2/exoplayer/external/util/n$b;->i:Z

    const/4 v5, 0x1

    if-nez v3, :cond_e

    .line 397
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/e/o$a;->q:Landroidx/media2/exoplayer/external/util/q;

    invoke-virtual {v3, v5}, Landroidx/media2/exoplayer/external/util/q;->b(I)Z

    move-result v3

    if-nez v3, :cond_b

    return-void

    .line 400
    :cond_b
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/e/o$a;->q:Landroidx/media2/exoplayer/external/util/q;

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/q;->b()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 402
    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/e/o$a;->q:Landroidx/media2/exoplayer/external/util/q;

    invoke-virtual {v6, v5}, Landroidx/media2/exoplayer/external/util/q;->b(I)Z

    move-result v6

    if-nez v6, :cond_c

    return-void

    .line 405
    :cond_c
    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/e/o$a;->q:Landroidx/media2/exoplayer/external/util/q;

    invoke-virtual {v6}, Landroidx/media2/exoplayer/external/util/q;->b()Z

    move-result v6

    move v14, v3

    move/from16 v16, v6

    const/4 v15, 0x1

    goto :goto_1

    :cond_d
    move v14, v3

    goto :goto_0

    :cond_e
    const/4 v14, 0x0

    :goto_0
    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 409
    :goto_1
    iget v3, v0, Landroidx/media2/exoplayer/external/extractor/e/o$a;->e:I

    if-ne v3, v2, :cond_f

    const/16 v17, 0x1

    goto :goto_2

    :cond_f
    const/16 v17, 0x0

    :goto_2
    if-eqz v17, :cond_11

    .line 412
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/e/o$a;->q:Landroidx/media2/exoplayer/external/util/q;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/q;->c()Z

    move-result v2

    if-nez v2, :cond_10

    return-void

    .line 415
    :cond_10
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/e/o$a;->q:Landroidx/media2/exoplayer/external/util/q;

    .line 4185
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/q;->e()I

    move-result v2

    move/from16 v18, v2

    goto :goto_3

    :cond_11
    const/16 v18, 0x0

    .line 421
    :goto_3
    iget v2, v9, Landroidx/media2/exoplayer/external/util/n$b;->k:I

    if-nez v2, :cond_15

    .line 422
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/e/o$a;->q:Landroidx/media2/exoplayer/external/util/q;

    iget v3, v9, Landroidx/media2/exoplayer/external/util/n$b;->l:I

    invoke-virtual {v2, v3}, Landroidx/media2/exoplayer/external/util/q;->b(I)Z

    move-result v2

    if-nez v2, :cond_12

    return-void

    .line 425
    :cond_12
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/e/o$a;->q:Landroidx/media2/exoplayer/external/util/q;

    iget v3, v9, Landroidx/media2/exoplayer/external/util/n$b;->l:I

    invoke-virtual {v2, v3}, Landroidx/media2/exoplayer/external/util/q;->c(I)I

    move-result v2

    .line 426
    iget-boolean v1, v1, Landroidx/media2/exoplayer/external/util/n$a;->c:Z

    if-eqz v1, :cond_14

    if-nez v14, :cond_14

    .line 427
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/e/o$a;->q:Landroidx/media2/exoplayer/external/util/q;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/q;->c()Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    .line 430
    :cond_13
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/e/o$a;->q:Landroidx/media2/exoplayer/external/util/q;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/q;->d()I

    move-result v1

    move/from16 v20, v1

    move/from16 v19, v2

    goto :goto_5

    :cond_14
    move/from16 v19, v2

    goto :goto_4

    .line 432
    :cond_15
    iget v2, v9, Landroidx/media2/exoplayer/external/util/n$b;->k:I

    if-ne v2, v5, :cond_19

    iget-boolean v2, v9, Landroidx/media2/exoplayer/external/util/n$b;->m:Z

    if-nez v2, :cond_19

    .line 434
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/e/o$a;->q:Landroidx/media2/exoplayer/external/util/q;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/q;->c()Z

    move-result v2

    if-nez v2, :cond_16

    return-void

    .line 437
    :cond_16
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/e/o$a;->q:Landroidx/media2/exoplayer/external/util/q;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/q;->d()I

    move-result v2

    .line 438
    iget-boolean v1, v1, Landroidx/media2/exoplayer/external/util/n$a;->c:Z

    if-eqz v1, :cond_18

    if-nez v14, :cond_18

    .line 439
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/e/o$a;->q:Landroidx/media2/exoplayer/external/util/q;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/q;->c()Z

    move-result v1

    if-nez v1, :cond_17

    return-void

    .line 442
    :cond_17
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/e/o$a;->q:Landroidx/media2/exoplayer/external/util/q;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/q;->d()I

    move-result v1

    move/from16 v22, v1

    move/from16 v21, v2

    const/16 v19, 0x0

    const/16 v20, 0x0

    goto :goto_7

    :cond_18
    move/from16 v21, v2

    const/16 v19, 0x0

    const/16 v20, 0x0

    goto :goto_6

    :cond_19
    const/16 v19, 0x0

    :goto_4
    const/16 v20, 0x0

    :goto_5
    const/16 v21, 0x0

    :goto_6
    const/16 v22, 0x0

    .line 445
    :goto_7
    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/e/o$a;->j:Landroidx/media2/exoplayer/external/extractor/e/o$a$a;

    invoke-virtual/range {v8 .. v22}, Landroidx/media2/exoplayer/external/extractor/e/o$a$a;->a(Landroidx/media2/exoplayer/external/util/n$b;IIIIZZZZIIIII)V

    .line 448
    iput-boolean v4, v0, Landroidx/media2/exoplayer/external/extractor/e/o$a;->g:Z

    return-void
.end method
