.class public final Landroidx/media2/exoplayer/external/extractor/e/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/e/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/extractor/e/p$a;
    }
.end annotation


# instance fields
.field private final a:Landroidx/media2/exoplayer/external/extractor/e/ab;

.field private b:Ljava/lang/String;

.field private c:Landroidx/media2/exoplayer/external/extractor/q;

.field private d:Landroidx/media2/exoplayer/external/extractor/e/p$a;

.field private e:Z

.field private final f:[Z

.field private final g:Landroidx/media2/exoplayer/external/extractor/e/t;

.field private final h:Landroidx/media2/exoplayer/external/extractor/e/t;

.field private final i:Landroidx/media2/exoplayer/external/extractor/e/t;

.field private final j:Landroidx/media2/exoplayer/external/extractor/e/t;

.field private final k:Landroidx/media2/exoplayer/external/extractor/e/t;

.field private l:J

.field private m:J

.field private final n:Landroidx/media2/exoplayer/external/util/p;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/extractor/e/ab;)V
    .locals 2

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/p;->a:Landroidx/media2/exoplayer/external/extractor/e/ab;

    const/4 p1, 0x3

    new-array p1, p1, [Z

    .line 82
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/p;->f:[Z

    .line 83
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/e/t;

    const/16 v0, 0x20

    const/16 v1, 0x80

    invoke-direct {p1, v0, v1}, Landroidx/media2/exoplayer/external/extractor/e/t;-><init>(II)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/p;->g:Landroidx/media2/exoplayer/external/extractor/e/t;

    .line 84
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/e/t;

    const/16 v0, 0x21

    invoke-direct {p1, v0, v1}, Landroidx/media2/exoplayer/external/extractor/e/t;-><init>(II)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/p;->h:Landroidx/media2/exoplayer/external/extractor/e/t;

    .line 85
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/e/t;

    const/16 v0, 0x22

    invoke-direct {p1, v0, v1}, Landroidx/media2/exoplayer/external/extractor/e/t;-><init>(II)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/p;->i:Landroidx/media2/exoplayer/external/extractor/e/t;

    .line 86
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/e/t;

    const/16 v0, 0x27

    invoke-direct {p1, v0, v1}, Landroidx/media2/exoplayer/external/extractor/e/t;-><init>(II)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/p;->j:Landroidx/media2/exoplayer/external/extractor/e/t;

    .line 87
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/e/t;

    const/16 v0, 0x28

    invoke-direct {p1, v0, v1}, Landroidx/media2/exoplayer/external/extractor/e/t;-><init>(II)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/p;->k:Landroidx/media2/exoplayer/external/extractor/e/t;

    .line 88
    new-instance p1, Landroidx/media2/exoplayer/external/util/p;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/util/p;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/p;->n:Landroidx/media2/exoplayer/external/util/p;

    return-void
.end method

.method private a([BII)V
    .locals 1

    .line 182
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/e/p;->e:Z

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/p;->d:Landroidx/media2/exoplayer/external/extractor/e/p$a;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/extractor/e/p$a;->a([BII)V

    goto :goto_0

    .line 185
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/p;->g:Landroidx/media2/exoplayer/external/extractor/e/t;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/extractor/e/t;->a([BII)V

    .line 186
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/p;->h:Landroidx/media2/exoplayer/external/extractor/e/t;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/extractor/e/t;->a([BII)V

    .line 187
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/p;->i:Landroidx/media2/exoplayer/external/extractor/e/t;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/extractor/e/t;->a([BII)V

    .line 189
    :goto_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/p;->j:Landroidx/media2/exoplayer/external/extractor/e/t;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/extractor/e/t;->a([BII)V

    .line 190
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/p;->k:Landroidx/media2/exoplayer/external/extractor/e/t;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/extractor/e/t;->a([BII)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 93
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/p;->f:[Z

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/n;->a([Z)V

    .line 94
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/p;->g:Landroidx/media2/exoplayer/external/extractor/e/t;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/extractor/e/t;->a()V

    .line 95
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/p;->h:Landroidx/media2/exoplayer/external/extractor/e/t;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/extractor/e/t;->a()V

    .line 96
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/p;->i:Landroidx/media2/exoplayer/external/extractor/e/t;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/extractor/e/t;->a()V

    .line 97
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/p;->j:Landroidx/media2/exoplayer/external/extractor/e/t;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/extractor/e/t;->a()V

    .line 98
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/p;->k:Landroidx/media2/exoplayer/external/extractor/e/t;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/extractor/e/t;->a()V

    .line 99
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/p;->d:Landroidx/media2/exoplayer/external/extractor/e/p$a;

    const/4 v1, 0x0

    .line 1429
    iput-boolean v1, v0, Landroidx/media2/exoplayer/external/extractor/e/p$a;->e:Z

    .line 1430
    iput-boolean v1, v0, Landroidx/media2/exoplayer/external/extractor/e/p$a;->f:Z

    .line 1431
    iput-boolean v1, v0, Landroidx/media2/exoplayer/external/extractor/e/p$a;->g:Z

    .line 1432
    iput-boolean v1, v0, Landroidx/media2/exoplayer/external/extractor/e/p$a;->h:Z

    .line 1433
    iput-boolean v1, v0, Landroidx/media2/exoplayer/external/extractor/e/p$a;->i:Z

    const-wide/16 v0, 0x0

    .line 100
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/e/p;->l:J

    return-void
.end method

.method public final a(JI)V
    .locals 0

    .line 115
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/e/p;->m:J

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/extractor/i;Landroidx/media2/exoplayer/external/extractor/e/ah$d;)V
    .locals 2

    .line 105
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/e/ah$d;->a()V

    .line 106
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/e/ah$d;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/p;->b:Ljava/lang/String;

    .line 107
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/e/ah$d;->b()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Landroidx/media2/exoplayer/external/extractor/i;->a(II)Landroidx/media2/exoplayer/external/extractor/q;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/p;->c:Landroidx/media2/exoplayer/external/extractor/q;

    .line 108
    new-instance v1, Landroidx/media2/exoplayer/external/extractor/e/p$a;

    invoke-direct {v1, v0}, Landroidx/media2/exoplayer/external/extractor/e/p$a;-><init>(Landroidx/media2/exoplayer/external/extractor/q;)V

    iput-object v1, p0, Landroidx/media2/exoplayer/external/extractor/e/p;->d:Landroidx/media2/exoplayer/external/extractor/e/p$a;

    .line 109
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/p;->a:Landroidx/media2/exoplayer/external/extractor/e/ab;

    invoke-virtual {v0, p1, p2}, Landroidx/media2/exoplayer/external/extractor/e/ab;->a(Landroidx/media2/exoplayer/external/extractor/i;Landroidx/media2/exoplayer/external/extractor/e/ah$d;)V

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/util/p;)V
    .locals 33

    move-object/from16 v0, p0

    :cond_0
    move-object/from16 v1, p1

    .line 120
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v2

    if-lez v2, :cond_30

    .line 2142
    iget v2, v1, Landroidx/media2/exoplayer/external/util/p;->b:I

    .line 3125
    iget v3, v1, Landroidx/media2/exoplayer/external/util/p;->c:I

    .line 123
    iget-object v4, v1, Landroidx/media2/exoplayer/external/util/p;->a:[B

    .line 126
    iget-wide v5, v0, Landroidx/media2/exoplayer/external/extractor/e/p;->l:J

    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    iput-wide v5, v0, Landroidx/media2/exoplayer/external/extractor/e/p;->l:J

    .line 127
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/e/p;->c:Landroidx/media2/exoplayer/external/extractor/q;

    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v6

    invoke-interface {v5, v1, v6}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/util/p;I)V

    :goto_0
    if-ge v2, v3, :cond_0

    .line 131
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/e/p;->f:[Z

    invoke-static {v4, v2, v3, v5}, Landroidx/media2/exoplayer/external/util/n;->a([BII[Z)I

    move-result v5

    if-ne v5, v3, :cond_1

    .line 135
    invoke-direct {v0, v4, v2, v3}, Landroidx/media2/exoplayer/external/extractor/e/p;->a([BII)V

    return-void

    .line 140
    :cond_1
    invoke-static {v4, v5}, Landroidx/media2/exoplayer/external/util/n;->c([BI)I

    move-result v6

    sub-int v7, v5, v2

    if-lez v7, :cond_2

    .line 146
    invoke-direct {v0, v4, v2, v5}, Landroidx/media2/exoplayer/external/extractor/e/p;->a([BII)V

    :cond_2
    sub-int v2, v3, v5

    .line 150
    iget-wide v8, v0, Landroidx/media2/exoplayer/external/extractor/e/p;->l:J

    int-to-long v10, v2

    sub-long/2addr v8, v10

    const/4 v10, 0x0

    if-gez v7, :cond_3

    neg-int v7, v7

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    .line 155
    :goto_1
    iget-wide v11, v0, Landroidx/media2/exoplayer/external/extractor/e/p;->m:J

    .line 3194
    iget-boolean v13, v0, Landroidx/media2/exoplayer/external/extractor/e/p;->e:Z

    const/4 v15, 0x1

    if-eqz v13, :cond_8

    .line 3195
    iget-object v13, v0, Landroidx/media2/exoplayer/external/extractor/e/p;->d:Landroidx/media2/exoplayer/external/extractor/e/p$a;

    .line 3474
    iget-boolean v14, v13, Landroidx/media2/exoplayer/external/extractor/e/p$a;->i:Z

    if-eqz v14, :cond_4

    iget-boolean v14, v13, Landroidx/media2/exoplayer/external/extractor/e/p$a;->f:Z

    if-eqz v14, :cond_4

    .line 3476
    iget-boolean v14, v13, Landroidx/media2/exoplayer/external/extractor/e/p$a;->b:Z

    iput-boolean v14, v13, Landroidx/media2/exoplayer/external/extractor/e/p$a;->l:Z

    .line 3477
    iput-boolean v10, v13, Landroidx/media2/exoplayer/external/extractor/e/p$a;->i:Z

    move/from16 v30, v3

    move-object/from16 v31, v4

    move/from16 v32, v5

    move-wide/from16 v16, v11

    goto/16 :goto_16

    .line 3478
    :cond_4
    iget-boolean v14, v13, Landroidx/media2/exoplayer/external/extractor/e/p$a;->g:Z

    if-nez v14, :cond_6

    iget-boolean v14, v13, Landroidx/media2/exoplayer/external/extractor/e/p$a;->f:Z

    if-eqz v14, :cond_5

    goto :goto_2

    :cond_5
    move-wide/from16 v16, v11

    goto/16 :goto_15

    .line 3480
    :cond_6
    :goto_2
    iget-boolean v14, v13, Landroidx/media2/exoplayer/external/extractor/e/p$a;->h:Z

    move-wide/from16 v16, v11

    if-eqz v14, :cond_7

    .line 3482
    iget-wide v10, v13, Landroidx/media2/exoplayer/external/extractor/e/p$a;->a:J

    sub-long v10, v8, v10

    long-to-int v11, v10

    add-int/2addr v11, v2

    .line 3483
    invoke-virtual {v13, v11}, Landroidx/media2/exoplayer/external/extractor/e/p$a;->a(I)V

    .line 3485
    :cond_7
    iget-wide v10, v13, Landroidx/media2/exoplayer/external/extractor/e/p$a;->a:J

    iput-wide v10, v13, Landroidx/media2/exoplayer/external/extractor/e/p$a;->j:J

    .line 3486
    iget-wide v10, v13, Landroidx/media2/exoplayer/external/extractor/e/p$a;->d:J

    iput-wide v10, v13, Landroidx/media2/exoplayer/external/extractor/e/p$a;->k:J

    .line 3487
    iput-boolean v15, v13, Landroidx/media2/exoplayer/external/extractor/e/p$a;->h:Z

    .line 3488
    iget-boolean v10, v13, Landroidx/media2/exoplayer/external/extractor/e/p$a;->b:Z

    iput-boolean v10, v13, Landroidx/media2/exoplayer/external/extractor/e/p$a;->l:Z

    goto/16 :goto_15

    :cond_8
    move-wide/from16 v16, v11

    .line 3197
    iget-object v10, v0, Landroidx/media2/exoplayer/external/extractor/e/p;->g:Landroidx/media2/exoplayer/external/extractor/e/t;

    invoke-virtual {v10, v7}, Landroidx/media2/exoplayer/external/extractor/e/t;->b(I)Z

    .line 3198
    iget-object v10, v0, Landroidx/media2/exoplayer/external/extractor/e/p;->h:Landroidx/media2/exoplayer/external/extractor/e/t;

    invoke-virtual {v10, v7}, Landroidx/media2/exoplayer/external/extractor/e/t;->b(I)Z

    .line 3199
    iget-object v10, v0, Landroidx/media2/exoplayer/external/extractor/e/p;->i:Landroidx/media2/exoplayer/external/extractor/e/t;

    invoke-virtual {v10, v7}, Landroidx/media2/exoplayer/external/extractor/e/t;->b(I)Z

    .line 3200
    iget-object v10, v0, Landroidx/media2/exoplayer/external/extractor/e/p;->g:Landroidx/media2/exoplayer/external/extractor/e/t;

    .line 4061
    iget-boolean v10, v10, Landroidx/media2/exoplayer/external/extractor/e/t;->a:Z

    if-eqz v10, :cond_27

    .line 3200
    iget-object v10, v0, Landroidx/media2/exoplayer/external/extractor/e/p;->h:Landroidx/media2/exoplayer/external/extractor/e/t;

    .line 5061
    iget-boolean v10, v10, Landroidx/media2/exoplayer/external/extractor/e/t;->a:Z

    if-eqz v10, :cond_27

    .line 3200
    iget-object v10, v0, Landroidx/media2/exoplayer/external/extractor/e/p;->i:Landroidx/media2/exoplayer/external/extractor/e/t;

    .line 6061
    iget-boolean v10, v10, Landroidx/media2/exoplayer/external/extractor/e/t;->a:Z

    if-eqz v10, :cond_27

    .line 3201
    iget-object v10, v0, Landroidx/media2/exoplayer/external/extractor/e/p;->c:Landroidx/media2/exoplayer/external/extractor/q;

    iget-object v11, v0, Landroidx/media2/exoplayer/external/extractor/e/p;->b:Ljava/lang/String;

    iget-object v12, v0, Landroidx/media2/exoplayer/external/extractor/e/p;->g:Landroidx/media2/exoplayer/external/extractor/e/t;

    iget-object v13, v0, Landroidx/media2/exoplayer/external/extractor/e/p;->h:Landroidx/media2/exoplayer/external/extractor/e/t;

    iget-object v14, v0, Landroidx/media2/exoplayer/external/extractor/e/p;->i:Landroidx/media2/exoplayer/external/extractor/e/t;

    .line 6226
    iget v15, v12, Landroidx/media2/exoplayer/external/extractor/e/t;->c:I

    iget v1, v13, Landroidx/media2/exoplayer/external/extractor/e/t;->c:I

    add-int/2addr v15, v1

    iget v1, v14, Landroidx/media2/exoplayer/external/extractor/e/t;->c:I

    add-int/2addr v15, v1

    new-array v1, v15, [B

    .line 6227
    iget-object v15, v12, Landroidx/media2/exoplayer/external/extractor/e/t;->b:[B

    move/from16 v30, v3

    iget v3, v12, Landroidx/media2/exoplayer/external/extractor/e/t;->c:I

    move-object/from16 v31, v4

    const/4 v4, 0x0

    invoke-static {v15, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6228
    iget-object v3, v13, Landroidx/media2/exoplayer/external/extractor/e/t;->b:[B

    iget v15, v12, Landroidx/media2/exoplayer/external/extractor/e/t;->c:I

    move/from16 v32, v5

    iget v5, v13, Landroidx/media2/exoplayer/external/extractor/e/t;->c:I

    invoke-static {v3, v4, v1, v15, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6229
    iget-object v3, v14, Landroidx/media2/exoplayer/external/extractor/e/t;->b:[B

    iget v5, v12, Landroidx/media2/exoplayer/external/extractor/e/t;->c:I

    iget v12, v13, Landroidx/media2/exoplayer/external/extractor/e/t;->c:I

    add-int/2addr v5, v12

    iget v12, v14, Landroidx/media2/exoplayer/external/extractor/e/t;->c:I

    invoke-static {v3, v4, v1, v5, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6232
    new-instance v3, Landroidx/media2/exoplayer/external/util/q;

    iget-object v5, v13, Landroidx/media2/exoplayer/external/extractor/e/t;->b:[B

    iget v12, v13, Landroidx/media2/exoplayer/external/extractor/e/t;->c:I

    invoke-direct {v3, v5, v4, v12}, Landroidx/media2/exoplayer/external/util/q;-><init>([BII)V

    const/16 v4, 0x2c

    .line 6233
    invoke-virtual {v3, v4}, Landroidx/media2/exoplayer/external/util/q;->a(I)V

    const/4 v4, 0x3

    .line 6234
    invoke-virtual {v3, v4}, Landroidx/media2/exoplayer/external/util/q;->c(I)I

    move-result v5

    .line 6235
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/q;->a()V

    const/16 v12, 0x58

    .line 6238
    invoke-virtual {v3, v12}, Landroidx/media2/exoplayer/external/util/q;->a(I)V

    const/16 v12, 0x8

    .line 6239
    invoke-virtual {v3, v12}, Landroidx/media2/exoplayer/external/util/q;->a(I)V

    const/4 v13, 0x0

    const/4 v15, 0x0

    :goto_3
    if-ge v13, v5, :cond_b

    .line 6242
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/q;->b()Z

    move-result v18

    if-eqz v18, :cond_9

    add-int/lit8 v15, v15, 0x59

    .line 6245
    :cond_9
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/q;->b()Z

    move-result v18

    if-eqz v18, :cond_a

    add-int/lit8 v15, v15, 0x8

    :cond_a
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 6249
    :cond_b
    invoke-virtual {v3, v15}, Landroidx/media2/exoplayer/external/util/q;->a(I)V

    const/4 v13, 0x2

    if-lez v5, :cond_c

    rsub-int/lit8 v15, v5, 0x8

    mul-int/lit8 v15, v15, 0x2

    .line 6251
    invoke-virtual {v3, v15}, Landroidx/media2/exoplayer/external/util/q;->a(I)V

    .line 7185
    :cond_c
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/q;->e()I

    .line 8185
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/q;->e()I

    move-result v15

    if-ne v15, v4, :cond_d

    .line 6257
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/q;->a()V

    .line 9185
    :cond_d
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/q;->e()I

    move-result v18

    .line 10185
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/q;->e()I

    move-result v19

    .line 6261
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/q;->b()Z

    move-result v20

    if-eqz v20, :cond_11

    .line 11185
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/q;->e()I

    move-result v20

    .line 12185
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/q;->e()I

    move-result v21

    .line 13185
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/q;->e()I

    move-result v22

    .line 14185
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/q;->e()I

    move-result v23

    const/4 v14, 0x1

    if-eq v15, v14, :cond_f

    if-ne v15, v13, :cond_e

    goto :goto_4

    :cond_e
    const/16 v24, 0x1

    goto :goto_5

    :cond_f
    :goto_4
    const/16 v24, 0x2

    :goto_5
    if-ne v15, v14, :cond_10

    const/4 v14, 0x2

    goto :goto_6

    :cond_10
    const/4 v14, 0x1

    :goto_6
    add-int v20, v20, v21

    mul-int v24, v24, v20

    sub-int v18, v18, v24

    add-int v22, v22, v23

    mul-int v14, v14, v22

    sub-int v19, v19, v14

    :cond_11
    move/from16 v23, v18

    move/from16 v24, v19

    .line 15185
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/q;->e()I

    .line 16185
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/q;->e()I

    .line 17185
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/q;->e()I

    move-result v14

    .line 6276
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/q;->b()Z

    move-result v15

    if-eqz v15, :cond_12

    const/16 v18, 0x0

    goto :goto_7

    :cond_12
    move/from16 v18, v5

    :goto_7
    move/from16 v15, v18

    :goto_8
    if-gt v15, v5, :cond_13

    .line 18185
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/q;->e()I

    .line 19185
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/q;->e()I

    .line 20185
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/q;->e()I

    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    .line 21185
    :cond_13
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/q;->e()I

    .line 22185
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/q;->e()I

    .line 23185
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/q;->e()I

    .line 24185
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/q;->e()I

    .line 25185
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/q;->e()I

    .line 26185
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/q;->e()I

    .line 6288
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/q;->b()Z

    move-result v5

    const/4 v15, 0x4

    if-eqz v5, :cond_19

    .line 6289
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/q;->b()Z

    move-result v5

    if-eqz v5, :cond_19

    const/4 v5, 0x0

    :goto_9
    if-ge v5, v15, :cond_19

    const/4 v12, 0x0

    :goto_a
    const/4 v13, 0x6

    if-ge v12, v13, :cond_18

    .line 26340
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/q;->b()Z

    move-result v13

    if-nez v13, :cond_14

    .line 27185
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/q;->e()I

    goto :goto_c

    :cond_14
    const/16 v13, 0x40

    shl-int/lit8 v20, v5, 0x1

    add-int/lit8 v20, v20, 0x4

    const/4 v15, 0x1

    shl-int v4, v15, v20

    .line 26344
    invoke-static {v13, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-le v5, v15, :cond_15

    .line 26347
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/q;->d()I

    :cond_15
    const/4 v13, 0x0

    :goto_b
    if-ge v13, v4, :cond_16

    .line 26350
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/q;->d()I

    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    :cond_16
    const/4 v4, 0x3

    :goto_c
    if-ne v5, v4, :cond_17

    const/4 v13, 0x3

    goto :goto_d

    :cond_17
    const/4 v13, 0x1

    :goto_d
    add-int/2addr v12, v13

    const/4 v15, 0x4

    goto :goto_a

    :cond_18
    add-int/lit8 v5, v5, 0x1

    const/16 v12, 0x8

    const/4 v13, 0x2

    const/4 v15, 0x4

    goto :goto_9

    :cond_19
    const/4 v4, 0x2

    .line 6292
    invoke-virtual {v3, v4}, Landroidx/media2/exoplayer/external/util/q;->a(I)V

    .line 6293
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/q;->b()Z

    move-result v4

    if-eqz v4, :cond_1a

    const/16 v4, 0x8

    .line 6295
    invoke-virtual {v3, v4}, Landroidx/media2/exoplayer/external/util/q;->a(I)V

    .line 28185
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/q;->e()I

    .line 29185
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/q;->e()I

    .line 6298
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/q;->a()V

    .line 30185
    :cond_1a
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/q;->e()I

    move-result v4

    const/4 v5, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_e
    if-ge v5, v4, :cond_21

    if-eqz v5, :cond_1b

    .line 29372
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/q;->b()Z

    move-result v12

    :cond_1b
    if-eqz v12, :cond_1e

    .line 29375
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/q;->a()V

    .line 31185
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/q;->e()I

    const/4 v15, 0x0

    :goto_f
    if-gt v15, v13, :cond_1d

    .line 29378
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/q;->b()Z

    move-result v20

    if-eqz v20, :cond_1c

    .line 29379
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/q;->a()V

    :cond_1c
    add-int/lit8 v15, v15, 0x1

    goto :goto_f

    :cond_1d
    move/from16 v22, v4

    goto :goto_12

    .line 32185
    :cond_1e
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/q;->e()I

    move-result v13

    .line 33185
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/q;->e()I

    move-result v15

    add-int v20, v13, v15

    move/from16 v22, v4

    const/4 v4, 0x0

    :goto_10
    if-ge v4, v13, :cond_1f

    .line 34185
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/q;->e()I

    .line 29388
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/q;->a()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_1f
    const/4 v4, 0x0

    :goto_11
    if-ge v4, v15, :cond_20

    .line 35185
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/q;->e()I

    .line 29392
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/q;->a()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_20
    move/from16 v13, v20

    :goto_12
    add-int/lit8 v5, v5, 0x1

    move/from16 v4, v22

    goto :goto_e

    .line 6302
    :cond_21
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/q;->b()Z

    move-result v4

    if-eqz v4, :cond_22

    const/4 v4, 0x0

    .line 36185
    :goto_13
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/q;->e()I

    move-result v5

    if-ge v4, v5, :cond_22

    const/4 v5, 0x4

    add-int/lit8 v15, v14, 0x4

    const/4 v12, 0x1

    add-int/2addr v15, v12

    .line 6307
    invoke-virtual {v3, v15}, Landroidx/media2/exoplayer/external/util/q;->a(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    :cond_22
    const/4 v4, 0x2

    .line 6310
    invoke-virtual {v3, v4}, Landroidx/media2/exoplayer/external/util/q;->a(I)V

    const/high16 v4, 0x3f800000    # 1.0f

    .line 6312
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/q;->b()Z

    move-result v5

    if-eqz v5, :cond_26

    .line 6313
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/q;->b()Z

    move-result v5

    if-eqz v5, :cond_26

    const/16 v5, 0x8

    .line 6314
    invoke-virtual {v3, v5}, Landroidx/media2/exoplayer/external/util/q;->c(I)I

    move-result v5

    const/16 v12, 0xff

    if-ne v5, v12, :cond_24

    const/16 v12, 0x10

    .line 6316
    invoke-virtual {v3, v12}, Landroidx/media2/exoplayer/external/util/q;->c(I)I

    move-result v5

    .line 6317
    invoke-virtual {v3, v12}, Landroidx/media2/exoplayer/external/util/q;->c(I)I

    move-result v3

    if-eqz v5, :cond_23

    if-eqz v3, :cond_23

    int-to-float v4, v5

    int-to-float v3, v3

    div-float/2addr v4, v3

    :cond_23
    move/from16 v28, v4

    goto :goto_14

    .line 6321
    :cond_24
    sget-object v3, Landroidx/media2/exoplayer/external/util/n;->b:[F

    array-length v3, v3

    if-ge v5, v3, :cond_25

    .line 6322
    sget-object v3, Landroidx/media2/exoplayer/external/util/n;->b:[F

    aget v3, v3, v5

    move/from16 v28, v3

    goto :goto_14

    :cond_25
    const/16 v3, 0x2e

    .line 6324
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected aspect_ratio_idc value: "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "H265Reader"

    invoke-static {v5, v3}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_26
    const/high16 v28, 0x3f800000    # 1.0f

    :goto_14
    const/16 v20, 0x0

    const/16 v21, -0x1

    const/16 v22, -0x1

    const/high16 v25, -0x40800000    # -1.0f

    .line 6331
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v26

    const/16 v27, -0x1

    const/16 v29, 0x0

    const-string v19, "video/hevc"

    move-object/from16 v18, v11

    .line 6329
    invoke-static/range {v18 .. v29}, Landroidx/media2/exoplayer/external/Format;->createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLandroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v1

    .line 3201
    invoke-interface {v10, v1}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/Format;)V

    const/4 v1, 0x1

    .line 3202
    iput-boolean v1, v0, Landroidx/media2/exoplayer/external/extractor/e/p;->e:Z

    goto :goto_16

    :cond_27
    :goto_15
    move/from16 v30, v3

    move-object/from16 v31, v4

    move/from16 v32, v5

    .line 3205
    :goto_16
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/e/p;->j:Landroidx/media2/exoplayer/external/extractor/e/t;

    invoke-virtual {v1, v7}, Landroidx/media2/exoplayer/external/extractor/e/t;->b(I)Z

    move-result v1

    const/4 v3, 0x5

    if-eqz v1, :cond_28

    .line 3206
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/e/p;->j:Landroidx/media2/exoplayer/external/extractor/e/t;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/extractor/e/t;->b:[B

    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/e/p;->j:Landroidx/media2/exoplayer/external/extractor/e/t;

    iget v4, v4, Landroidx/media2/exoplayer/external/extractor/e/t;->c:I

    invoke-static {v1, v4}, Landroidx/media2/exoplayer/external/util/n;->a([BI)I

    move-result v1

    .line 3207
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/e/p;->n:Landroidx/media2/exoplayer/external/util/p;

    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/e/p;->j:Landroidx/media2/exoplayer/external/extractor/e/t;

    iget-object v5, v5, Landroidx/media2/exoplayer/external/extractor/e/t;->b:[B

    invoke-virtual {v4, v5, v1}, Landroidx/media2/exoplayer/external/util/p;->a([BI)V

    .line 3210
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/e/p;->n:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v1, v3}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    .line 3211
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/e/p;->a:Landroidx/media2/exoplayer/external/extractor/e/ab;

    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/e/p;->n:Landroidx/media2/exoplayer/external/util/p;

    move-wide/from16 v10, v16

    invoke-virtual {v1, v10, v11, v4}, Landroidx/media2/exoplayer/external/extractor/e/ab;->a(JLandroidx/media2/exoplayer/external/util/p;)V

    goto :goto_17

    :cond_28
    move-wide/from16 v10, v16

    .line 3213
    :goto_17
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/e/p;->k:Landroidx/media2/exoplayer/external/extractor/e/t;

    invoke-virtual {v1, v7}, Landroidx/media2/exoplayer/external/extractor/e/t;->b(I)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 3214
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/e/p;->k:Landroidx/media2/exoplayer/external/extractor/e/t;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/extractor/e/t;->b:[B

    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/e/p;->k:Landroidx/media2/exoplayer/external/extractor/e/t;

    iget v4, v4, Landroidx/media2/exoplayer/external/extractor/e/t;->c:I

    invoke-static {v1, v4}, Landroidx/media2/exoplayer/external/util/n;->a([BI)I

    move-result v1

    .line 3215
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/e/p;->n:Landroidx/media2/exoplayer/external/util/p;

    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/e/p;->k:Landroidx/media2/exoplayer/external/extractor/e/t;

    iget-object v5, v5, Landroidx/media2/exoplayer/external/extractor/e/t;->b:[B

    invoke-virtual {v4, v5, v1}, Landroidx/media2/exoplayer/external/util/p;->a([BI)V

    .line 3218
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/e/p;->n:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v1, v3}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    .line 3219
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/e/p;->a:Landroidx/media2/exoplayer/external/extractor/e/ab;

    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/e/p;->n:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v1, v10, v11, v3}, Landroidx/media2/exoplayer/external/extractor/e/ab;->a(JLandroidx/media2/exoplayer/external/util/p;)V

    .line 157
    :cond_29
    iget-wide v3, v0, Landroidx/media2/exoplayer/external/extractor/e/p;->m:J

    .line 37170
    iget-boolean v1, v0, Landroidx/media2/exoplayer/external/extractor/e/p;->e:Z

    if-eqz v1, :cond_2f

    .line 37171
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/e/p;->d:Landroidx/media2/exoplayer/external/extractor/e/p$a;

    const/4 v5, 0x0

    .line 37437
    iput-boolean v5, v1, Landroidx/media2/exoplayer/external/extractor/e/p$a;->f:Z

    .line 37438
    iput-boolean v5, v1, Landroidx/media2/exoplayer/external/extractor/e/p$a;->g:Z

    .line 37439
    iput-wide v3, v1, Landroidx/media2/exoplayer/external/extractor/e/p$a;->d:J

    .line 37440
    iput v5, v1, Landroidx/media2/exoplayer/external/extractor/e/p$a;->c:I

    .line 37441
    iput-wide v8, v1, Landroidx/media2/exoplayer/external/extractor/e/p$a;->a:J

    const/16 v3, 0x20

    if-lt v6, v3, :cond_2b

    .line 37444
    iget-boolean v3, v1, Landroidx/media2/exoplayer/external/extractor/e/p$a;->i:Z

    if-nez v3, :cond_2a

    iget-boolean v3, v1, Landroidx/media2/exoplayer/external/extractor/e/p$a;->h:Z

    if-eqz v3, :cond_2a

    .line 37446
    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/extractor/e/p$a;->a(I)V

    .line 37447
    iput-boolean v5, v1, Landroidx/media2/exoplayer/external/extractor/e/p$a;->h:Z

    :cond_2a
    const/16 v2, 0x22

    if-gt v6, v2, :cond_2b

    .line 37451
    iget-boolean v2, v1, Landroidx/media2/exoplayer/external/extractor/e/p$a;->i:Z

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    iput-boolean v2, v1, Landroidx/media2/exoplayer/external/extractor/e/p$a;->g:Z

    .line 37452
    iput-boolean v3, v1, Landroidx/media2/exoplayer/external/extractor/e/p$a;->i:Z

    goto :goto_18

    :cond_2b
    const/4 v3, 0x1

    :goto_18
    const/16 v2, 0x10

    if-lt v6, v2, :cond_2c

    const/16 v2, 0x15

    if-gt v6, v2, :cond_2c

    const/4 v2, 0x1

    goto :goto_19

    :cond_2c
    const/4 v2, 0x0

    .line 37457
    :goto_19
    iput-boolean v2, v1, Landroidx/media2/exoplayer/external/extractor/e/p$a;->b:Z

    .line 37458
    iget-boolean v2, v1, Landroidx/media2/exoplayer/external/extractor/e/p$a;->b:Z

    if-nez v2, :cond_2e

    const/16 v2, 0x9

    if-gt v6, v2, :cond_2d

    goto :goto_1a

    :cond_2d
    const/4 v10, 0x0

    goto :goto_1b

    :cond_2e
    :goto_1a
    const/4 v10, 0x1

    :goto_1b
    iput-boolean v10, v1, Landroidx/media2/exoplayer/external/extractor/e/p$a;->e:Z

    goto :goto_1c

    .line 37173
    :cond_2f
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/e/p;->g:Landroidx/media2/exoplayer/external/extractor/e/t;

    invoke-virtual {v1, v6}, Landroidx/media2/exoplayer/external/extractor/e/t;->a(I)V

    .line 37174
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/e/p;->h:Landroidx/media2/exoplayer/external/extractor/e/t;

    invoke-virtual {v1, v6}, Landroidx/media2/exoplayer/external/extractor/e/t;->a(I)V

    .line 37175
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/e/p;->i:Landroidx/media2/exoplayer/external/extractor/e/t;

    invoke-virtual {v1, v6}, Landroidx/media2/exoplayer/external/extractor/e/t;->a(I)V

    .line 37177
    :goto_1c
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/e/p;->j:Landroidx/media2/exoplayer/external/extractor/e/t;

    invoke-virtual {v1, v6}, Landroidx/media2/exoplayer/external/extractor/e/t;->a(I)V

    .line 37178
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/e/p;->k:Landroidx/media2/exoplayer/external/extractor/e/t;

    invoke-virtual {v1, v6}, Landroidx/media2/exoplayer/external/extractor/e/t;->a(I)V

    add-int/lit8 v2, v32, 0x3

    move-object/from16 v1, p1

    move/from16 v3, v30

    move-object/from16 v4, v31

    goto/16 :goto_0

    :cond_30
    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method
