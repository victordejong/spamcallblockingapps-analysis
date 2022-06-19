.class final Lcom/google/android/exoplayer2/extractor/h/m$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/h/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/h/m$a$a;
    }
.end annotation


# instance fields
.field final a:Lcom/google/android/exoplayer2/extractor/x;

.field final b:Z

.field final c:Z

.field d:I

.field e:I

.field f:J

.field g:Z

.field h:J

.field i:Lcom/google/android/exoplayer2/extractor/h/m$a$a;

.field j:Lcom/google/android/exoplayer2/extractor/h/m$a$a;

.field k:Z

.field l:J

.field m:J

.field n:Z

.field private final o:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/util/s$b;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/util/s$a;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Lcom/google/android/exoplayer2/util/v;

.field private r:[B


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/x;ZZ)V
    .locals 0

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/m$a;->a:Lcom/google/android/exoplayer2/extractor/x;

    .line 294
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/extractor/h/m$a;->b:Z

    .line 295
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/extractor/h/m$a;->c:Z

    .line 296
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/m$a;->o:Landroid/util/SparseArray;

    .line 297
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/m$a;->p:Landroid/util/SparseArray;

    .line 298
    new-instance p1, Lcom/google/android/exoplayer2/extractor/h/m$a$a;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/extractor/h/m$a$a;-><init>(Lcom/google/android/exoplayer2/extractor/h/m$1;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/m$a;->i:Lcom/google/android/exoplayer2/extractor/h/m$a$a;

    .line 299
    new-instance p1, Lcom/google/android/exoplayer2/extractor/h/m$a$a;

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/extractor/h/m$a$a;-><init>(Lcom/google/android/exoplayer2/extractor/h/m$1;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/m$a;->j:Lcom/google/android/exoplayer2/extractor/h/m$a$a;

    const/16 p1, 0x80

    new-array p1, p1, [B

    .line 300
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/m$a;->r:[B

    .line 301
    new-instance p2, Lcom/google/android/exoplayer2/util/v;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3, p3}, Lcom/google/android/exoplayer2/util/v;-><init>([BII)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/h/m$a;->q:Lcom/google/android/exoplayer2/util/v;

    .line 302
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/h/m$a;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    .line 318
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/h/m$a;->g:Z

    .line 319
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/h/m$a;->k:Z

    .line 320
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/m$a;->j:Lcom/google/android/exoplayer2/extractor/h/m$a$a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/h/m$a$a;->a()V

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/util/s$a;)V
    .locals 2

    .line 314
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/m$a;->p:Landroid/util/SparseArray;

    iget v1, p1, Lcom/google/android/exoplayer2/util/s$a;->a:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/util/s$b;)V
    .locals 2

    .line 310
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/m$a;->o:Landroid/util/SparseArray;

    iget v1, p1, Lcom/google/android/exoplayer2/util/s$b;->d:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public final a([BII)V
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 349
    iget-boolean v2, v0, Lcom/google/android/exoplayer2/extractor/h/m$a;->g:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    sub-int v2, p3, v1

    .line 353
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/h/m$a;->r:[B

    array-length v4, v3

    iget v5, v0, Lcom/google/android/exoplayer2/extractor/h/m$a;->d:I

    add-int v6, v5, v2

    const/4 v7, 0x2

    if-ge v4, v6, :cond_1

    add-int/2addr v5, v2

    mul-int/lit8 v5, v5, 0x2

    .line 354
    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplayer2/extractor/h/m$a;->r:[B

    .line 356
    :cond_1
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/h/m$a;->r:[B

    iget v4, v0, Lcom/google/android/exoplayer2/extractor/h/m$a;->d:I

    move-object/from16 v5, p1

    invoke-static {v5, v1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 357
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/h/m$a;->d:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/h/m$a;->d:I

    .line 359
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/h/m$a;->q:Lcom/google/android/exoplayer2/util/v;

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/h/m$a;->r:[B

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Lcom/google/android/exoplayer2/util/v;->a([BII)V

    .line 360
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/h/m$a;->q:Lcom/google/android/exoplayer2/util/v;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/v;->b(I)Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    .line 363
    :cond_2
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/h/m$a;->q:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/v;->a()V

    .line 364
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/h/m$a;->q:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v1, v7}, Lcom/google/android/exoplayer2/util/v;->c(I)I

    move-result v10

    .line 365
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/h/m$a;->q:Lcom/google/android/exoplayer2/util/v;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/v;->a(I)V

    .line 369
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/h/m$a;->q:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/v;->c()Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    .line 372
    :cond_3
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/h/m$a;->q:Lcom/google/android/exoplayer2/util/v;

    .line 1179
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/v;->f()I

    .line 373
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/h/m$a;->q:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/v;->c()Z

    move-result v1

    if-nez v1, :cond_4

    return-void

    .line 376
    :cond_4
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/h/m$a;->q:Lcom/google/android/exoplayer2/util/v;

    .line 2179
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/v;->f()I

    move-result v11

    .line 377
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/extractor/h/m$a;->c:Z

    if-nez v1, :cond_5

    .line 379
    iput-boolean v4, v0, Lcom/google/android/exoplayer2/extractor/h/m$a;->g:Z

    .line 380
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/h/m$a;->j:Lcom/google/android/exoplayer2/extractor/h/m$a$a;

    invoke-virtual {v1, v11}, Lcom/google/android/exoplayer2/extractor/h/m$a$a;->a(I)V

    return-void

    .line 383
    :cond_5
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/h/m$a;->q:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/v;->c()Z

    move-result v1

    if-nez v1, :cond_6

    return-void

    .line 386
    :cond_6
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/h/m$a;->q:Lcom/google/android/exoplayer2/util/v;

    .line 3179
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/v;->f()I

    move-result v13

    .line 387
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/h/m$a;->p:Landroid/util/SparseArray;

    invoke-virtual {v1, v13}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_7

    .line 389
    iput-boolean v4, v0, Lcom/google/android/exoplayer2/extractor/h/m$a;->g:Z

    return-void

    .line 392
    :cond_7
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/h/m$a;->p:Landroid/util/SparseArray;

    invoke-virtual {v1, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/util/s$a;

    .line 393
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/h/m$a;->o:Landroid/util/SparseArray;

    iget v5, v1, Lcom/google/android/exoplayer2/util/s$a;->b:I

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lcom/google/android/exoplayer2/util/s$b;

    .line 394
    iget-boolean v3, v9, Lcom/google/android/exoplayer2/util/s$b;->h:Z

    if-eqz v3, :cond_9

    .line 395
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/h/m$a;->q:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v3, v7}, Lcom/google/android/exoplayer2/util/v;->b(I)Z

    move-result v3

    if-nez v3, :cond_8

    return-void

    .line 398
    :cond_8
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/h/m$a;->q:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v3, v7}, Lcom/google/android/exoplayer2/util/v;->a(I)V

    .line 400
    :cond_9
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/h/m$a;->q:Lcom/google/android/exoplayer2/util/v;

    iget v5, v9, Lcom/google/android/exoplayer2/util/s$b;->j:I

    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/util/v;->b(I)Z

    move-result v3

    if-nez v3, :cond_a

    return-void

    .line 406
    :cond_a
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/h/m$a;->q:Lcom/google/android/exoplayer2/util/v;

    iget v5, v9, Lcom/google/android/exoplayer2/util/s$b;->j:I

    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/util/v;->c(I)I

    move-result v12

    .line 407
    iget-boolean v3, v9, Lcom/google/android/exoplayer2/util/s$b;->i:Z

    const/4 v5, 0x1

    if-nez v3, :cond_e

    .line 408
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/h/m$a;->q:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/util/v;->b(I)Z

    move-result v3

    if-nez v3, :cond_b

    return-void

    .line 411
    :cond_b
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/h/m$a;->q:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/v;->b()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 413
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/h/m$a;->q:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v6, v5}, Lcom/google/android/exoplayer2/util/v;->b(I)Z

    move-result v6

    if-nez v6, :cond_c

    return-void

    .line 416
    :cond_c
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/h/m$a;->q:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/v;->b()Z

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

    .line 420
    :goto_1
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/h/m$a;->e:I

    if-ne v3, v2, :cond_f

    const/16 v17, 0x1

    goto :goto_2

    :cond_f
    const/16 v17, 0x0

    :goto_2
    if-eqz v17, :cond_11

    .line 423
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/h/m$a;->q:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/v;->c()Z

    move-result v2

    if-nez v2, :cond_10

    return-void

    .line 426
    :cond_10
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/h/m$a;->q:Lcom/google/android/exoplayer2/util/v;

    .line 4179
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/v;->f()I

    move-result v2

    move/from16 v18, v2

    goto :goto_3

    :cond_11
    const/16 v18, 0x0

    .line 432
    :goto_3
    iget v2, v9, Lcom/google/android/exoplayer2/util/s$b;->k:I

    if-nez v2, :cond_15

    .line 433
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/h/m$a;->q:Lcom/google/android/exoplayer2/util/v;

    iget v3, v9, Lcom/google/android/exoplayer2/util/s$b;->l:I

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/util/v;->b(I)Z

    move-result v2

    if-nez v2, :cond_12

    return-void

    .line 436
    :cond_12
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/h/m$a;->q:Lcom/google/android/exoplayer2/util/v;

    iget v3, v9, Lcom/google/android/exoplayer2/util/s$b;->l:I

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/util/v;->c(I)I

    move-result v2

    .line 437
    iget-boolean v1, v1, Lcom/google/android/exoplayer2/util/s$a;->c:Z

    if-eqz v1, :cond_14

    if-nez v14, :cond_14

    .line 438
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/h/m$a;->q:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/v;->c()Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    .line 441
    :cond_13
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/h/m$a;->q:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/v;->e()I

    move-result v1

    move/from16 v20, v1

    move/from16 v19, v2

    goto :goto_5

    :cond_14
    move/from16 v19, v2

    goto :goto_4

    .line 443
    :cond_15
    iget v2, v9, Lcom/google/android/exoplayer2/util/s$b;->k:I

    if-ne v2, v5, :cond_19

    iget-boolean v2, v9, Lcom/google/android/exoplayer2/util/s$b;->m:Z

    if-nez v2, :cond_19

    .line 445
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/h/m$a;->q:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/v;->c()Z

    move-result v2

    if-nez v2, :cond_16

    return-void

    .line 448
    :cond_16
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/h/m$a;->q:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/v;->e()I

    move-result v2

    .line 449
    iget-boolean v1, v1, Lcom/google/android/exoplayer2/util/s$a;->c:Z

    if-eqz v1, :cond_18

    if-nez v14, :cond_18

    .line 450
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/h/m$a;->q:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/v;->c()Z

    move-result v1

    if-nez v1, :cond_17

    return-void

    .line 453
    :cond_17
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/h/m$a;->q:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/v;->e()I

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

    .line 456
    :goto_7
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/h/m$a;->j:Lcom/google/android/exoplayer2/extractor/h/m$a$a;

    invoke-virtual/range {v8 .. v22}, Lcom/google/android/exoplayer2/extractor/h/m$a$a;->a(Lcom/google/android/exoplayer2/util/s$b;IIIIZZZZIIIII)V

    .line 459
    iput-boolean v4, v0, Lcom/google/android/exoplayer2/extractor/h/m$a;->g:Z

    return-void
.end method
