.class public final Lcom/google/android/exoplayer2/extractor/h/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/h/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/h/n$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/extractor/h/z;

.field private b:Ljava/lang/String;

.field private c:Lcom/google/android/exoplayer2/extractor/x;

.field private d:Lcom/google/android/exoplayer2/extractor/h/n$a;

.field private e:Z

.field private final f:[Z

.field private final g:Lcom/google/android/exoplayer2/extractor/h/r;

.field private final h:Lcom/google/android/exoplayer2/extractor/h/r;

.field private final i:Lcom/google/android/exoplayer2/extractor/h/r;

.field private final j:Lcom/google/android/exoplayer2/extractor/h/r;

.field private final k:Lcom/google/android/exoplayer2/extractor/h/r;

.field private l:J

.field private m:J

.field private final n:Lcom/google/android/exoplayer2/util/u;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/h/z;)V
    .locals 2

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/n;->a:Lcom/google/android/exoplayer2/extractor/h/z;

    const/4 p1, 0x3

    new-array p1, p1, [Z

    .line 86
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/n;->f:[Z

    .line 87
    new-instance p1, Lcom/google/android/exoplayer2/extractor/h/r;

    const/16 v0, 0x20

    const/16 v1, 0x80

    invoke-direct {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/h/r;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/n;->g:Lcom/google/android/exoplayer2/extractor/h/r;

    .line 88
    new-instance p1, Lcom/google/android/exoplayer2/extractor/h/r;

    const/16 v0, 0x21

    invoke-direct {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/h/r;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/n;->h:Lcom/google/android/exoplayer2/extractor/h/r;

    .line 89
    new-instance p1, Lcom/google/android/exoplayer2/extractor/h/r;

    const/16 v0, 0x22

    invoke-direct {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/h/r;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/n;->i:Lcom/google/android/exoplayer2/extractor/h/r;

    .line 90
    new-instance p1, Lcom/google/android/exoplayer2/extractor/h/r;

    const/16 v0, 0x27

    invoke-direct {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/h/r;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/n;->j:Lcom/google/android/exoplayer2/extractor/h/r;

    .line 91
    new-instance p1, Lcom/google/android/exoplayer2/extractor/h/r;

    const/16 v0, 0x28

    invoke-direct {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/h/r;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/n;->k:Lcom/google/android/exoplayer2/extractor/h/r;

    .line 92
    new-instance p1, Lcom/google/android/exoplayer2/util/u;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/u;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/n;->n:Lcom/google/android/exoplayer2/util/u;

    return-void
.end method

.method private a([BII)V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "sampleReader"
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/n;->d:Lcom/google/android/exoplayer2/extractor/h/n$a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/h/n$a;->a([BII)V

    .line 192
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/h/n;->e:Z

    if-nez v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/n;->g:Lcom/google/android/exoplayer2/extractor/h/r;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/h/r;->a([BII)V

    .line 194
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/n;->h:Lcom/google/android/exoplayer2/extractor/h/r;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/h/r;->a([BII)V

    .line 195
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/n;->i:Lcom/google/android/exoplayer2/extractor/h/r;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/h/r;->a([BII)V

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/n;->j:Lcom/google/android/exoplayer2/extractor/h/r;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/h/r;->a([BII)V

    .line 198
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/n;->k:Lcom/google/android/exoplayer2/extractor/h/r;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/h/r;->a([BII)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 97
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/h/n;->l:J

    .line 98
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/n;->f:[Z

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/s;->a([Z)V

    .line 99
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/n;->g:Lcom/google/android/exoplayer2/extractor/h/r;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/h/r;->a()V

    .line 100
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/n;->h:Lcom/google/android/exoplayer2/extractor/h/r;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/h/r;->a()V

    .line 101
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/n;->i:Lcom/google/android/exoplayer2/extractor/h/r;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/h/r;->a()V

    .line 102
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/n;->j:Lcom/google/android/exoplayer2/extractor/h/r;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/h/r;->a()V

    .line 103
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/n;->k:Lcom/google/android/exoplayer2/extractor/h/r;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/h/r;->a()V

    .line 104
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/n;->d:Lcom/google/android/exoplayer2/extractor/h/n$a;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1477
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/extractor/h/n$a;->e:Z

    .line 1478
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/extractor/h/n$a;->f:Z

    .line 1479
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/extractor/h/n$a;->g:Z

    .line 1480
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/extractor/h/n$a;->h:Z

    .line 1481
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/extractor/h/n$a;->i:Z

    :cond_0
    return-void
.end method

.method public final a(JI)V
    .locals 0

    .line 121
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/h/n;->m:J

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/extractor/j;Lcom/google/android/exoplayer2/extractor/h/ad$d;)V
    .locals 2

    .line 111
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/h/ad$d;->a()V

    .line 112
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/h/ad$d;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/n;->b:Ljava/lang/String;

    .line 113
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/h/ad$d;->b()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/j;->a(II)Lcom/google/android/exoplayer2/extractor/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/n;->c:Lcom/google/android/exoplayer2/extractor/x;

    .line 114
    new-instance v1, Lcom/google/android/exoplayer2/extractor/h/n$a;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/extractor/h/n$a;-><init>(Lcom/google/android/exoplayer2/extractor/x;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/h/n;->d:Lcom/google/android/exoplayer2/extractor/h/n$a;

    .line 115
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/n;->a:Lcom/google/android/exoplayer2/extractor/h/z;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/h/z;->a(Lcom/google/android/exoplayer2/extractor/j;Lcom/google/android/exoplayer2/extractor/h/ad$d;)V

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/util/u;)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2442
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/h/n;->c:Lcom/google/android/exoplayer2/extractor/x;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2443
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/h/n;->d:Lcom/google/android/exoplayer2/extractor/h/n$a;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v2

    if-lez v2, :cond_39

    .line 3144
    iget v2, v1, Lcom/google/android/exoplayer2/util/u;->b:I

    .line 4127
    iget v3, v1, Lcom/google/android/exoplayer2/util/u;->c:I

    .line 4169
    iget-object v4, v1, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 134
    iget-wide v5, v0, Lcom/google/android/exoplayer2/extractor/h/n;->l:J

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    iput-wide v5, v0, Lcom/google/android/exoplayer2/extractor/h/n;->l:J

    .line 135
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/h/n;->c:Lcom/google/android/exoplayer2/extractor/x;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v6

    invoke-interface {v5, v1, v6}, Lcom/google/android/exoplayer2/extractor/x;->b(Lcom/google/android/exoplayer2/util/u;I)V

    :goto_1
    if-ge v2, v3, :cond_38

    .line 139
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/h/n;->f:[Z

    invoke-static {v4, v2, v3, v5}, Lcom/google/android/exoplayer2/util/s;->a([BII[Z)I

    move-result v5

    if-ne v5, v3, :cond_0

    .line 143
    invoke-direct {v0, v4, v2, v3}, Lcom/google/android/exoplayer2/extractor/h/n;->a([BII)V

    return-void

    .line 148
    :cond_0
    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/util/s;->c([BI)I

    move-result v6

    sub-int v7, v5, v2

    if-lez v7, :cond_1

    .line 154
    invoke-direct {v0, v4, v2, v5}, Lcom/google/android/exoplayer2/extractor/h/n;->a([BII)V

    :cond_1
    sub-int v2, v3, v5

    .line 158
    iget-wide v8, v0, Lcom/google/android/exoplayer2/extractor/h/n;->l:J

    int-to-long v10, v2

    sub-long/2addr v8, v10

    if-gez v7, :cond_2

    neg-int v7, v7

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    .line 163
    :goto_2
    iget-wide v11, v0, Lcom/google/android/exoplayer2/extractor/h/n;->m:J

    .line 4203
    iget-object v13, v0, Lcom/google/android/exoplayer2/extractor/h/n;->d:Lcom/google/android/exoplayer2/extractor/h/n$a;

    iget-boolean v14, v0, Lcom/google/android/exoplayer2/extractor/h/n;->e:Z

    .line 4523
    iget-boolean v15, v13, Lcom/google/android/exoplayer2/extractor/h/n$a;->i:Z

    const/4 v10, 0x1

    if-eqz v15, :cond_3

    iget-boolean v15, v13, Lcom/google/android/exoplayer2/extractor/h/n$a;->f:Z

    if-eqz v15, :cond_3

    .line 4525
    iget-boolean v14, v13, Lcom/google/android/exoplayer2/extractor/h/n$a;->b:Z

    iput-boolean v14, v13, Lcom/google/android/exoplayer2/extractor/h/n$a;->l:Z

    const/4 v14, 0x0

    .line 4526
    iput-boolean v14, v13, Lcom/google/android/exoplayer2/extractor/h/n$a;->i:Z

    goto :goto_3

    .line 4527
    :cond_3
    iget-boolean v15, v13, Lcom/google/android/exoplayer2/extractor/h/n$a;->g:Z

    if-nez v15, :cond_4

    iget-boolean v15, v13, Lcom/google/android/exoplayer2/extractor/h/n$a;->f:Z

    if-eqz v15, :cond_6

    :cond_4
    if-eqz v14, :cond_5

    .line 4529
    iget-boolean v14, v13, Lcom/google/android/exoplayer2/extractor/h/n$a;->h:Z

    if-eqz v14, :cond_5

    .line 4531
    iget-wide v14, v13, Lcom/google/android/exoplayer2/extractor/h/n$a;->a:J

    sub-long v14, v8, v14

    long-to-int v15, v14

    add-int/2addr v15, v2

    .line 4532
    invoke-virtual {v13, v15}, Lcom/google/android/exoplayer2/extractor/h/n$a;->a(I)V

    .line 4534
    :cond_5
    iget-wide v14, v13, Lcom/google/android/exoplayer2/extractor/h/n$a;->a:J

    iput-wide v14, v13, Lcom/google/android/exoplayer2/extractor/h/n$a;->j:J

    .line 4535
    iget-wide v14, v13, Lcom/google/android/exoplayer2/extractor/h/n$a;->d:J

    iput-wide v14, v13, Lcom/google/android/exoplayer2/extractor/h/n$a;->k:J

    .line 4536
    iget-boolean v14, v13, Lcom/google/android/exoplayer2/extractor/h/n$a;->b:Z

    iput-boolean v14, v13, Lcom/google/android/exoplayer2/extractor/h/n$a;->l:Z

    .line 4537
    iput-boolean v10, v13, Lcom/google/android/exoplayer2/extractor/h/n$a;->h:Z

    .line 4204
    :cond_6
    :goto_3
    iget-boolean v13, v0, Lcom/google/android/exoplayer2/extractor/h/n;->e:Z

    if-nez v13, :cond_28

    .line 4205
    iget-object v13, v0, Lcom/google/android/exoplayer2/extractor/h/n;->g:Lcom/google/android/exoplayer2/extractor/h/r;

    invoke-virtual {v13, v7}, Lcom/google/android/exoplayer2/extractor/h/r;->b(I)Z

    .line 4206
    iget-object v13, v0, Lcom/google/android/exoplayer2/extractor/h/n;->h:Lcom/google/android/exoplayer2/extractor/h/r;

    invoke-virtual {v13, v7}, Lcom/google/android/exoplayer2/extractor/h/r;->b(I)Z

    .line 4207
    iget-object v13, v0, Lcom/google/android/exoplayer2/extractor/h/n;->i:Lcom/google/android/exoplayer2/extractor/h/r;

    invoke-virtual {v13, v7}, Lcom/google/android/exoplayer2/extractor/h/r;->b(I)Z

    .line 4208
    iget-object v13, v0, Lcom/google/android/exoplayer2/extractor/h/n;->g:Lcom/google/android/exoplayer2/extractor/h/r;

    .line 5055
    iget-boolean v13, v13, Lcom/google/android/exoplayer2/extractor/h/r;->a:Z

    if-eqz v13, :cond_28

    .line 4208
    iget-object v13, v0, Lcom/google/android/exoplayer2/extractor/h/n;->h:Lcom/google/android/exoplayer2/extractor/h/r;

    .line 6055
    iget-boolean v13, v13, Lcom/google/android/exoplayer2/extractor/h/r;->a:Z

    if-eqz v13, :cond_28

    .line 4208
    iget-object v13, v0, Lcom/google/android/exoplayer2/extractor/h/n;->i:Lcom/google/android/exoplayer2/extractor/h/r;

    .line 7055
    iget-boolean v13, v13, Lcom/google/android/exoplayer2/extractor/h/r;->a:Z

    if-eqz v13, :cond_28

    .line 4209
    iget-object v13, v0, Lcom/google/android/exoplayer2/extractor/h/n;->c:Lcom/google/android/exoplayer2/extractor/x;

    iget-object v15, v0, Lcom/google/android/exoplayer2/extractor/h/n;->b:Ljava/lang/String;

    iget-object v14, v0, Lcom/google/android/exoplayer2/extractor/h/n;->g:Lcom/google/android/exoplayer2/extractor/h/r;

    iget-object v10, v0, Lcom/google/android/exoplayer2/extractor/h/n;->h:Lcom/google/android/exoplayer2/extractor/h/r;

    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/h/n;->i:Lcom/google/android/exoplayer2/extractor/h/r;

    move/from16 v16, v3

    .line 7237
    iget v3, v14, Lcom/google/android/exoplayer2/extractor/h/r;->c:I

    move-object/from16 v17, v4

    iget v4, v10, Lcom/google/android/exoplayer2/extractor/h/r;->c:I

    add-int/2addr v3, v4

    iget v4, v1, Lcom/google/android/exoplayer2/extractor/h/r;->c:I

    add-int/2addr v3, v4

    new-array v3, v3, [B

    .line 7238
    iget-object v4, v14, Lcom/google/android/exoplayer2/extractor/h/r;->b:[B

    move/from16 v18, v5

    iget v5, v14, Lcom/google/android/exoplayer2/extractor/h/r;->c:I

    move/from16 v19, v2

    const/4 v2, 0x0

    invoke-static {v4, v2, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7239
    iget-object v4, v10, Lcom/google/android/exoplayer2/extractor/h/r;->b:[B

    iget v5, v14, Lcom/google/android/exoplayer2/extractor/h/r;->c:I

    move/from16 v20, v6

    iget v6, v10, Lcom/google/android/exoplayer2/extractor/h/r;->c:I

    invoke-static {v4, v2, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7240
    iget-object v4, v1, Lcom/google/android/exoplayer2/extractor/h/r;->b:[B

    iget v5, v14, Lcom/google/android/exoplayer2/extractor/h/r;->c:I

    iget v6, v10, Lcom/google/android/exoplayer2/extractor/h/r;->c:I

    add-int/2addr v5, v6

    iget v1, v1, Lcom/google/android/exoplayer2/extractor/h/r;->c:I

    invoke-static {v4, v2, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7243
    new-instance v1, Lcom/google/android/exoplayer2/util/v;

    iget-object v4, v10, Lcom/google/android/exoplayer2/extractor/h/r;->b:[B

    iget v5, v10, Lcom/google/android/exoplayer2/extractor/h/r;->c:I

    invoke-direct {v1, v4, v2, v5}, Lcom/google/android/exoplayer2/util/v;-><init>([BII)V

    const/16 v2, 0x2c

    .line 7244
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/v;->a(I)V

    const/4 v2, 0x3

    .line 7245
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/v;->c(I)I

    move-result v4

    .line 7246
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/v;->a()V

    const/16 v5, 0x58

    .line 7249
    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/util/v;->a(I)V

    const/16 v5, 0x8

    .line 7250
    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/util/v;->a(I)V

    const/4 v6, 0x0

    const/4 v14, 0x0

    :goto_4
    if-ge v6, v4, :cond_9

    .line 7253
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/v;->b()Z

    move-result v21

    if-eqz v21, :cond_7

    add-int/lit8 v14, v14, 0x59

    .line 7256
    :cond_7
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/v;->b()Z

    move-result v21

    if-eqz v21, :cond_8

    add-int/lit8 v14, v14, 0x8

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 7260
    :cond_9
    invoke-virtual {v1, v14}, Lcom/google/android/exoplayer2/util/v;->a(I)V

    const/4 v6, 0x2

    if-lez v4, :cond_a

    rsub-int/lit8 v14, v4, 0x8

    mul-int/lit8 v14, v14, 0x2

    .line 7262
    invoke-virtual {v1, v14}, Lcom/google/android/exoplayer2/util/v;->a(I)V

    .line 8179
    :cond_a
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/v;->f()I

    .line 9179
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/v;->f()I

    move-result v14

    if-ne v14, v2, :cond_b

    .line 7268
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/v;->a()V

    .line 10179
    :cond_b
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/v;->f()I

    move-result v21

    .line 11179
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/v;->f()I

    move-result v22

    .line 7272
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/v;->b()Z

    move-result v23

    if-eqz v23, :cond_f

    .line 12179
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/v;->f()I

    move-result v23

    .line 13179
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/v;->f()I

    move-result v24

    .line 14179
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/v;->f()I

    move-result v25

    .line 15179
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/v;->f()I

    move-result v26

    const/4 v5, 0x1

    if-eq v14, v5, :cond_d

    if-ne v14, v6, :cond_c

    goto :goto_5

    :cond_c
    const/16 v27, 0x1

    goto :goto_6

    :cond_d
    :goto_5
    const/16 v27, 0x2

    :goto_6
    if-ne v14, v5, :cond_e

    const/4 v5, 0x2

    goto :goto_7

    :cond_e
    const/4 v5, 0x1

    :goto_7
    add-int v23, v23, v24

    mul-int v27, v27, v23

    sub-int v21, v21, v27

    add-int v25, v25, v26

    mul-int v5, v5, v25

    sub-int v22, v22, v5

    :cond_f
    move/from16 v5, v21

    .line 16179
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/v;->f()I

    .line 17179
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/v;->f()I

    .line 18179
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/v;->f()I

    move-result v14

    .line 7287
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/v;->b()Z

    move-result v21

    if-eqz v21, :cond_10

    const/16 v21, 0x0

    goto :goto_8

    :cond_10
    move/from16 v21, v4

    :goto_8
    move/from16 v6, v21

    :goto_9
    if-gt v6, v4, :cond_11

    .line 19179
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/v;->f()I

    .line 20179
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/v;->f()I

    .line 21179
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/v;->f()I

    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 22179
    :cond_11
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/v;->f()I

    .line 23179
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/v;->f()I

    .line 24179
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/v;->f()I

    .line 25179
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/v;->f()I

    .line 26179
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/v;->f()I

    .line 27179
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/v;->f()I

    .line 7299
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/v;->b()Z

    move-result v4

    const/4 v6, 0x4

    if-eqz v4, :cond_17

    .line 7300
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/v;->b()Z

    move-result v4

    if-eqz v4, :cond_17

    const/4 v4, 0x0

    :goto_a
    if-ge v4, v6, :cond_17

    const/4 v2, 0x0

    :goto_b
    const/4 v6, 0x6

    if-ge v2, v6, :cond_16

    .line 27382
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/v;->b()Z

    move-result v6

    if-nez v6, :cond_13

    .line 28179
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/v;->f()I

    move-wide/from16 v27, v8

    :cond_12
    const/4 v6, 0x3

    goto :goto_d

    :cond_13
    const/16 v6, 0x40

    shl-int/lit8 v25, v4, 0x1

    const/16 v24, 0x4

    add-int/lit8 v25, v25, 0x4

    move-wide/from16 v27, v8

    const/4 v8, 0x1

    shl-int v9, v8, v25

    .line 27386
    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-le v4, v8, :cond_14

    .line 27389
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/v;->e()I

    :cond_14
    const/4 v8, 0x0

    :goto_c
    if-ge v8, v6, :cond_12

    .line 27392
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/v;->e()I

    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    :goto_d
    if-ne v4, v6, :cond_15

    const/4 v8, 0x3

    goto :goto_e

    :cond_15
    const/4 v8, 0x1

    :goto_e
    add-int/2addr v2, v8

    move-wide/from16 v8, v27

    goto :goto_b

    :cond_16
    move-wide/from16 v27, v8

    const/4 v6, 0x3

    add-int/lit8 v4, v4, 0x1

    const/4 v2, 0x3

    const/4 v6, 0x4

    goto :goto_a

    :cond_17
    move-wide/from16 v27, v8

    const/4 v2, 0x2

    .line 7303
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/v;->a(I)V

    .line 7304
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/v;->b()Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x8

    .line 7306
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/v;->a(I)V

    .line 29179
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/v;->f()I

    .line 30179
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/v;->f()I

    .line 7309
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/v;->a()V

    .line 31179
    :cond_18
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/v;->f()I

    move-result v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_f
    if-ge v4, v2, :cond_1f

    if-eqz v4, :cond_19

    .line 30414
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/v;->b()Z

    move-result v6

    :cond_19
    if-eqz v6, :cond_1c

    .line 30417
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/v;->a()V

    .line 32179
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/v;->f()I

    const/4 v9, 0x0

    :goto_10
    if-gt v9, v8, :cond_1b

    .line 30420
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/v;->b()Z

    move-result v21

    if-eqz v21, :cond_1a

    .line 30421
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/v;->a()V

    :cond_1a
    add-int/lit8 v9, v9, 0x1

    goto :goto_10

    :cond_1b
    move/from16 v25, v2

    goto :goto_13

    .line 33179
    :cond_1c
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/v;->f()I

    move-result v8

    .line 34179
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/v;->f()I

    move-result v9

    add-int v21, v8, v9

    move/from16 v25, v2

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v8, :cond_1d

    .line 35179
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/v;->f()I

    .line 30430
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/v;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_1d
    const/4 v2, 0x0

    :goto_12
    if-ge v2, v9, :cond_1e

    .line 36179
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/v;->f()I

    .line 30434
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/v;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_1e
    move/from16 v8, v21

    :goto_13
    add-int/lit8 v4, v4, 0x1

    move/from16 v2, v25

    goto :goto_f

    .line 7313
    :cond_1f
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/v;->b()Z

    move-result v2

    if-eqz v2, :cond_20

    const/4 v2, 0x0

    .line 37179
    :goto_14
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/v;->f()I

    move-result v4

    if-ge v2, v4, :cond_20

    const/4 v4, 0x4

    add-int/lit8 v6, v14, 0x4

    const/4 v4, 0x1

    add-int/2addr v6, v4

    .line 7318
    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/util/v;->a(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_20
    const/4 v2, 0x2

    .line 7321
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/v;->a(I)V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 7323
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/v;->b()Z

    move-result v4

    const/16 v6, 0x18

    if-eqz v4, :cond_27

    .line 7324
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/v;->b()Z

    move-result v4

    if-eqz v4, :cond_23

    const/16 v4, 0x8

    .line 7325
    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/util/v;->c(I)I

    move-result v4

    const/16 v8, 0xff

    if-ne v4, v8, :cond_21

    const/16 v8, 0x10

    .line 7327
    invoke-virtual {v1, v8}, Lcom/google/android/exoplayer2/util/v;->c(I)I

    move-result v4

    .line 7328
    invoke-virtual {v1, v8}, Lcom/google/android/exoplayer2/util/v;->c(I)I

    move-result v9

    if-eqz v4, :cond_23

    if-eqz v9, :cond_23

    int-to-float v2, v4

    int-to-float v4, v9

    div-float/2addr v2, v4

    goto :goto_15

    .line 7332
    :cond_21
    sget-object v8, Lcom/google/android/exoplayer2/util/s;->b:[F

    array-length v8, v8

    if-ge v4, v8, :cond_22

    .line 7333
    sget-object v2, Lcom/google/android/exoplayer2/util/s;->b:[F

    aget v2, v2, v4

    goto :goto_15

    .line 7335
    :cond_22
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v8, "Unexpected aspect_ratio_idc value: "

    invoke-virtual {v8, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v8, "H265Reader"

    invoke-static {v8, v4}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7338
    :cond_23
    :goto_15
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/v;->b()Z

    move-result v4

    if-eqz v4, :cond_24

    .line 7339
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/v;->a()V

    .line 7341
    :cond_24
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/v;->b()Z

    move-result v4

    if-eqz v4, :cond_25

    const/4 v4, 0x4

    .line 7342
    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/util/v;->a(I)V

    .line 7343
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/v;->b()Z

    move-result v4

    if-eqz v4, :cond_25

    .line 7345
    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/util/v;->a(I)V

    .line 7348
    :cond_25
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/v;->b()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 7349
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/v;->d()I

    .line 7350
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/v;->d()I

    .line 7352
    :cond_26
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/v;->a()V

    .line 7353
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/v;->b()Z

    move-result v4

    if-eqz v4, :cond_27

    mul-int/lit8 v22, v22, 0x2

    :cond_27
    move/from16 v4, v22

    .line 7361
    iget-object v8, v10, Lcom/google/android/exoplayer2/extractor/h/r;->b:[B

    iget v9, v10, Lcom/google/android/exoplayer2/extractor/h/r;->c:I

    const/4 v10, 0x0

    invoke-virtual {v1, v8, v10, v9}, Lcom/google/android/exoplayer2/util/v;->a([BII)V

    .line 7362
    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/util/v;->a(I)V

    .line 7363
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/d;->a(Lcom/google/android/exoplayer2/util/v;)Ljava/lang/String;

    move-result-object v1

    .line 7365
    new-instance v6, Lcom/google/android/exoplayer2/Format$a;

    invoke-direct {v6}, Lcom/google/android/exoplayer2/Format$a;-><init>()V

    .line 37244
    iput-object v15, v6, Lcom/google/android/exoplayer2/Format$a;->a:Ljava/lang/String;

    const-string v8, "video/hevc"

    .line 37370
    iput-object v8, v6, Lcom/google/android/exoplayer2/Format$a;->k:Ljava/lang/String;

    .line 38333
    iput-object v1, v6, Lcom/google/android/exoplayer2/Format$a;->h:Ljava/lang/String;

    .line 38427
    iput v5, v6, Lcom/google/android/exoplayer2/Format$a;->p:I

    .line 38438
    iput v4, v6, Lcom/google/android/exoplayer2/Format$a;->q:I

    .line 38471
    iput v2, v6, Lcom/google/android/exoplayer2/Format$a;->t:F

    .line 7372
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 39392
    iput-object v1, v6, Lcom/google/android/exoplayer2/Format$a;->m:Ljava/util/List;

    .line 7373
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/Format$a;->a()Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    .line 4209
    invoke-interface {v13, v1}, Lcom/google/android/exoplayer2/extractor/x;->a(Lcom/google/android/exoplayer2/Format;)V

    const/4 v1, 0x1

    .line 4210
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/extractor/h/n;->e:Z

    goto :goto_16

    :cond_28
    move/from16 v19, v2

    move/from16 v16, v3

    move-object/from16 v17, v4

    move/from16 v18, v5

    move/from16 v20, v6

    move-wide/from16 v27, v8

    .line 4213
    :goto_16
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/h/n;->j:Lcom/google/android/exoplayer2/extractor/h/r;

    invoke-virtual {v1, v7}, Lcom/google/android/exoplayer2/extractor/h/r;->b(I)Z

    move-result v1

    const/4 v2, 0x5

    if-eqz v1, :cond_29

    .line 4214
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/h/n;->j:Lcom/google/android/exoplayer2/extractor/h/r;

    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/h/r;->b:[B

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/h/n;->j:Lcom/google/android/exoplayer2/extractor/h/r;

    iget v3, v3, Lcom/google/android/exoplayer2/extractor/h/r;->c:I

    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/s;->a([BI)I

    move-result v1

    .line 4215
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/h/n;->n:Lcom/google/android/exoplayer2/util/u;

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/h/n;->j:Lcom/google/android/exoplayer2/extractor/h/r;

    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/h/r;->b:[B

    invoke-virtual {v3, v4, v1}, Lcom/google/android/exoplayer2/util/u;->a([BI)V

    .line 4218
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/h/n;->n:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    .line 4219
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/h/n;->a:Lcom/google/android/exoplayer2/extractor/h/z;

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/h/n;->n:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v1, v11, v12, v3}, Lcom/google/android/exoplayer2/extractor/h/z;->a(JLcom/google/android/exoplayer2/util/u;)V

    .line 4221
    :cond_29
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/h/n;->k:Lcom/google/android/exoplayer2/extractor/h/r;

    invoke-virtual {v1, v7}, Lcom/google/android/exoplayer2/extractor/h/r;->b(I)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 4222
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/h/n;->k:Lcom/google/android/exoplayer2/extractor/h/r;

    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/h/r;->b:[B

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/h/n;->k:Lcom/google/android/exoplayer2/extractor/h/r;

    iget v3, v3, Lcom/google/android/exoplayer2/extractor/h/r;->c:I

    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/s;->a([BI)I

    move-result v1

    .line 4223
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/h/n;->n:Lcom/google/android/exoplayer2/util/u;

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/h/n;->k:Lcom/google/android/exoplayer2/extractor/h/r;

    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/h/r;->b:[B

    invoke-virtual {v3, v4, v1}, Lcom/google/android/exoplayer2/util/u;->a([BI)V

    .line 4226
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/h/n;->n:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    .line 4227
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/h/n;->a:Lcom/google/android/exoplayer2/extractor/h/z;

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/h/n;->n:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v1, v11, v12, v2}, Lcom/google/android/exoplayer2/extractor/h/z;->a(JLcom/google/android/exoplayer2/util/u;)V

    .line 165
    :cond_2a
    iget-wide v1, v0, Lcom/google/android/exoplayer2/extractor/h/n;->m:J

    .line 40179
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/h/n;->d:Lcom/google/android/exoplayer2/extractor/h/n$a;

    iget-boolean v4, v0, Lcom/google/android/exoplayer2/extractor/h/n;->e:Z

    const/4 v5, 0x0

    .line 40486
    iput-boolean v5, v3, Lcom/google/android/exoplayer2/extractor/h/n$a;->f:Z

    .line 40487
    iput-boolean v5, v3, Lcom/google/android/exoplayer2/extractor/h/n$a;->g:Z

    .line 40488
    iput-wide v1, v3, Lcom/google/android/exoplayer2/extractor/h/n$a;->d:J

    .line 40489
    iput v5, v3, Lcom/google/android/exoplayer2/extractor/h/n$a;->c:I

    move-wide/from16 v8, v27

    .line 40490
    iput-wide v8, v3, Lcom/google/android/exoplayer2/extractor/h/n$a;->a:J

    const/16 v1, 0x20

    move/from16 v2, v20

    if-lt v2, v1, :cond_2c

    const/16 v5, 0x28

    if-ne v2, v5, :cond_2b

    goto :goto_17

    :cond_2b
    const/4 v14, 0x0

    goto :goto_18

    :cond_2c
    :goto_17
    const/4 v14, 0x1

    :goto_18
    if-nez v14, :cond_33

    .line 40493
    iget-boolean v5, v3, Lcom/google/android/exoplayer2/extractor/h/n$a;->h:Z

    if-eqz v5, :cond_2e

    iget-boolean v5, v3, Lcom/google/android/exoplayer2/extractor/h/n$a;->i:Z

    if-nez v5, :cond_2e

    if-eqz v4, :cond_2d

    move/from16 v4, v19

    .line 40495
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/extractor/h/n$a;->a(I)V

    :cond_2d
    const/4 v14, 0x0

    .line 40497
    iput-boolean v14, v3, Lcom/google/android/exoplayer2/extractor/h/n$a;->h:Z

    goto :goto_19

    :cond_2e
    const/4 v14, 0x0

    :goto_19
    if-gt v1, v2, :cond_2f

    const/16 v1, 0x23

    if-le v2, v1, :cond_30

    :cond_2f
    const/16 v1, 0x27

    if-ne v2, v1, :cond_31

    :cond_30
    const/4 v1, 0x1

    goto :goto_1a

    :cond_31
    const/4 v1, 0x0

    :goto_1a
    if-eqz v1, :cond_32

    .line 40500
    iget-boolean v1, v3, Lcom/google/android/exoplayer2/extractor/h/n$a;->i:Z

    const/4 v4, 0x1

    xor-int/2addr v1, v4

    iput-boolean v1, v3, Lcom/google/android/exoplayer2/extractor/h/n$a;->g:Z

    .line 40501
    iput-boolean v4, v3, Lcom/google/android/exoplayer2/extractor/h/n$a;->i:Z

    goto :goto_1b

    :cond_32
    const/4 v4, 0x1

    goto :goto_1b

    :cond_33
    const/4 v4, 0x1

    const/4 v14, 0x0

    :goto_1b
    const/16 v1, 0x10

    if-lt v2, v1, :cond_34

    const/16 v1, 0x15

    if-gt v2, v1, :cond_34

    const/4 v1, 0x1

    goto :goto_1c

    :cond_34
    const/4 v1, 0x0

    .line 40506
    :goto_1c
    iput-boolean v1, v3, Lcom/google/android/exoplayer2/extractor/h/n$a;->b:Z

    .line 40507
    iget-boolean v1, v3, Lcom/google/android/exoplayer2/extractor/h/n$a;->b:Z

    if-nez v1, :cond_36

    const/16 v1, 0x9

    if-gt v2, v1, :cond_35

    goto :goto_1d

    :cond_35
    const/4 v10, 0x0

    goto :goto_1e

    :cond_36
    :goto_1d
    const/4 v10, 0x1

    :goto_1e
    iput-boolean v10, v3, Lcom/google/android/exoplayer2/extractor/h/n$a;->e:Z

    .line 40180
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/extractor/h/n;->e:Z

    if-nez v1, :cond_37

    .line 40181
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/h/n;->g:Lcom/google/android/exoplayer2/extractor/h/r;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/extractor/h/r;->a(I)V

    .line 40182
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/h/n;->h:Lcom/google/android/exoplayer2/extractor/h/r;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/extractor/h/r;->a(I)V

    .line 40183
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/h/n;->i:Lcom/google/android/exoplayer2/extractor/h/r;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/extractor/h/r;->a(I)V

    .line 40185
    :cond_37
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/h/n;->j:Lcom/google/android/exoplayer2/extractor/h/r;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/extractor/h/r;->a(I)V

    .line 40186
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/h/n;->k:Lcom/google/android/exoplayer2/extractor/h/r;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/extractor/h/r;->a(I)V

    add-int/lit8 v2, v18, 0x3

    move-object/from16 v1, p1

    move/from16 v3, v16

    move-object/from16 v4, v17

    goto/16 :goto_1

    :cond_38
    move-object/from16 v1, p1

    goto/16 :goto_0

    :cond_39
    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method
