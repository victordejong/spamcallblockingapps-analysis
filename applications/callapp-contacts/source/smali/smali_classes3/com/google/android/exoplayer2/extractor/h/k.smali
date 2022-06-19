.class public final Lcom/google/android/exoplayer2/extractor/h/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/h/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/h/k$a;
    }
.end annotation


# static fields
.field private static final c:[D


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/google/android/exoplayer2/extractor/x;

.field private final d:Lcom/google/android/exoplayer2/extractor/h/af;

.field private final e:Lcom/google/android/exoplayer2/util/u;

.field private final f:Lcom/google/android/exoplayer2/extractor/h/r;

.field private final g:[Z

.field private final h:Lcom/google/android/exoplayer2/extractor/h/k$a;

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

    .line 51
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer2/extractor/h/k;->c:[D

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

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/h/k;-><init>(Lcom/google/android/exoplayer2/extractor/h/af;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/exoplayer2/extractor/h/af;)V
    .locals 2

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/k;->d:Lcom/google/android/exoplayer2/extractor/h/af;

    const/4 v0, 0x4

    new-array v0, v0, [Z

    .line 83
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/k;->g:[Z

    .line 84
    new-instance v0, Lcom/google/android/exoplayer2/extractor/h/k$a;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/h/k$a;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/k;->h:Lcom/google/android/exoplayer2/extractor/h/k$a;

    if-eqz p1, :cond_0

    .line 86
    new-instance p1, Lcom/google/android/exoplayer2/extractor/h/r;

    const/16 v0, 0xb2

    invoke-direct {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/h/r;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/k;->f:Lcom/google/android/exoplayer2/extractor/h/r;

    .line 87
    new-instance p1, Lcom/google/android/exoplayer2/util/u;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/u;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/k;->e:Lcom/google/android/exoplayer2/util/u;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 89
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/k;->f:Lcom/google/android/exoplayer2/extractor/h/r;

    .line 90
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/k;->e:Lcom/google/android/exoplayer2/util/u;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 96
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/k;->g:[Z

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/s;->a([Z)V

    .line 97
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/k;->h:Lcom/google/android/exoplayer2/extractor/h/k$a;

    const/4 v1, 0x0

    .line 1294
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/extractor/h/k$a;->b:Z

    .line 1295
    iput v1, v0, Lcom/google/android/exoplayer2/extractor/h/k$a;->c:I

    .line 1296
    iput v1, v0, Lcom/google/android/exoplayer2/extractor/h/k$a;->d:I

    .line 98
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/k;->f:Lcom/google/android/exoplayer2/extractor/h/r;

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/h/r;->a()V

    :cond_0
    const-wide/16 v2, 0x0

    .line 101
    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/h/k;->i:J

    .line 102
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/h/k;->j:Z

    return-void
.end method

.method public final a(JI)V
    .locals 0

    .line 118
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/h/k;->m:J

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/extractor/j;Lcom/google/android/exoplayer2/extractor/h/ad$d;)V
    .locals 2

    .line 107
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/h/ad$d;->a()V

    .line 108
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/h/ad$d;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/k;->a:Ljava/lang/String;

    .line 109
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/h/ad$d;->b()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/j;->a(II)Lcom/google/android/exoplayer2/extractor/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/k;->b:Lcom/google/android/exoplayer2/extractor/x;

    .line 110
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/k;->d:Lcom/google/android/exoplayer2/extractor/h/af;

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/h/af;->a(Lcom/google/android/exoplayer2/extractor/j;Lcom/google/android/exoplayer2/extractor/h/ad$d;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/util/u;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 123
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/h/k;->b:Lcom/google/android/exoplayer2/extractor/x;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2144
    iget v2, v1, Lcom/google/android/exoplayer2/util/u;->b:I

    .line 3127
    iget v3, v1, Lcom/google/android/exoplayer2/util/u;->c:I

    .line 3169
    iget-object v4, v1, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 129
    iget-wide v5, v0, Lcom/google/android/exoplayer2/extractor/h/k;->i:J

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    iput-wide v5, v0, Lcom/google/android/exoplayer2/extractor/h/k;->i:J

    .line 130
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/h/k;->b:Lcom/google/android/exoplayer2/extractor/x;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v6

    invoke-interface {v5, v1, v6}, Lcom/google/android/exoplayer2/extractor/x;->b(Lcom/google/android/exoplayer2/util/u;I)V

    .line 133
    :goto_0
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/h/k;->g:[Z

    invoke-static {v4, v2, v3, v5}, Lcom/google/android/exoplayer2/util/s;->a([BII[Z)I

    move-result v5

    if-ne v5, v3, :cond_2

    .line 137
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/extractor/h/k;->k:Z

    if-nez v1, :cond_0

    .line 138
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/h/k;->h:Lcom/google/android/exoplayer2/extractor/h/k$a;

    invoke-virtual {v1, v4, v2, v3}, Lcom/google/android/exoplayer2/extractor/h/k$a;->a([BII)V

    .line 140
    :cond_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/h/k;->f:Lcom/google/android/exoplayer2/extractor/h/r;

    if-eqz v1, :cond_1

    .line 141
    invoke-virtual {v1, v4, v2, v3}, Lcom/google/android/exoplayer2/extractor/h/r;->a([BII)V

    :cond_1
    return-void

    .line 4169
    :cond_2
    iget-object v6, v1, Lcom/google/android/exoplayer2/util/u;->a:[B

    add-int/lit8 v7, v5, 0x3

    .line 147
    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sub-int v8, v5, v2

    .line 152
    iget-boolean v9, v0, Lcom/google/android/exoplayer2/extractor/h/k;->k:Z

    const/16 v12, 0xb3

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-nez v9, :cond_d

    if-lez v8, :cond_3

    .line 154
    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/h/k;->h:Lcom/google/android/exoplayer2/extractor/h/k$a;

    invoke-virtual {v9, v4, v2, v5}, Lcom/google/android/exoplayer2/extractor/h/k$a;->a([BII)V

    :cond_3
    if-gez v8, :cond_4

    neg-int v9, v8

    goto :goto_1

    :cond_4
    const/4 v9, 0x0

    .line 159
    :goto_1
    iget-object v15, v0, Lcom/google/android/exoplayer2/extractor/h/k;->h:Lcom/google/android/exoplayer2/extractor/h/k$a;

    .line 4310
    iget-boolean v10, v15, Lcom/google/android/exoplayer2/extractor/h/k$a;->b:Z

    if-eqz v10, :cond_6

    .line 4311
    iget v10, v15, Lcom/google/android/exoplayer2/extractor/h/k$a;->c:I

    sub-int/2addr v10, v9

    iput v10, v15, Lcom/google/android/exoplayer2/extractor/h/k$a;->c:I

    .line 4312
    iget v9, v15, Lcom/google/android/exoplayer2/extractor/h/k$a;->d:I

    if-nez v9, :cond_5

    const/16 v9, 0xb5

    if-ne v6, v9, :cond_5

    .line 4313
    iget v9, v15, Lcom/google/android/exoplayer2/extractor/h/k$a;->c:I

    iput v9, v15, Lcom/google/android/exoplayer2/extractor/h/k$a;->d:I

    goto :goto_2

    .line 4315
    :cond_5
    iput-boolean v13, v15, Lcom/google/android/exoplayer2/extractor/h/k$a;->b:Z

    const/4 v9, 0x1

    goto :goto_3

    :cond_6
    if-ne v6, v12, :cond_7

    .line 4319
    iput-boolean v14, v15, Lcom/google/android/exoplayer2/extractor/h/k$a;->b:Z

    .line 4321
    :cond_7
    :goto_2
    sget-object v9, Lcom/google/android/exoplayer2/extractor/h/k$a;->a:[B

    sget-object v10, Lcom/google/android/exoplayer2/extractor/h/k$a;->a:[B

    array-length v10, v10

    invoke-virtual {v15, v9, v13, v10}, Lcom/google/android/exoplayer2/extractor/h/k$a;->a([BII)V

    const/4 v9, 0x0

    :goto_3
    if-eqz v9, :cond_d

    .line 161
    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/h/k;->h:Lcom/google/android/exoplayer2/extractor/h/k$a;

    iget-object v10, v0, Lcom/google/android/exoplayer2/extractor/h/k;->a:Ljava/lang/String;

    invoke-static {v10}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 5225
    iget-object v11, v9, Lcom/google/android/exoplayer2/extractor/h/k$a;->e:[B

    iget v15, v9, Lcom/google/android/exoplayer2/extractor/h/k$a;->c:I

    invoke-static {v11, v15}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v11

    const/4 v15, 0x4

    .line 5227
    aget-byte v13, v11, v15

    and-int/lit16 v13, v13, 0xff

    const/16 v16, 0x5

    .line 5228
    aget-byte v12, v11, v16

    and-int/lit16 v12, v12, 0xff

    const/16 v17, 0x6

    .line 5229
    aget-byte v14, v11, v17

    and-int/lit16 v14, v14, 0xff

    shl-int/2addr v13, v15

    shr-int/lit8 v17, v12, 0x4

    or-int v13, v13, v17

    and-int/lit8 v12, v12, 0xf

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v12, v14

    const/16 v17, 0x7

    .line 5234
    aget-byte v14, v11, v17

    and-int/lit16 v14, v14, 0xf0

    shr-int/2addr v14, v15

    const/4 v15, 0x2

    if-eq v14, v15, :cond_a

    const/4 v15, 0x3

    if-eq v14, v15, :cond_9

    const/4 v15, 0x4

    if-eq v14, v15, :cond_8

    const/high16 v14, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_8
    mul-int/lit8 v14, v12, 0x79

    int-to-float v14, v14

    mul-int/lit8 v15, v13, 0x64

    goto :goto_4

    :cond_9
    mul-int/lit8 v14, v12, 0x10

    int-to-float v14, v14

    mul-int/lit8 v15, v13, 0x9

    goto :goto_4

    :cond_a
    mul-int/lit8 v14, v12, 0x4

    int-to-float v14, v14

    mul-int/lit8 v15, v13, 0x3

    :goto_4
    int-to-float v15, v15

    div-float/2addr v14, v15

    .line 5250
    :goto_5
    new-instance v15, Lcom/google/android/exoplayer2/Format$a;

    invoke-direct {v15}, Lcom/google/android/exoplayer2/Format$a;-><init>()V

    .line 6244
    iput-object v10, v15, Lcom/google/android/exoplayer2/Format$a;->a:Ljava/lang/String;

    const-string v10, "video/mpeg2"

    .line 6370
    iput-object v10, v15, Lcom/google/android/exoplayer2/Format$a;->k:Ljava/lang/String;

    .line 6427
    iput v13, v15, Lcom/google/android/exoplayer2/Format$a;->p:I

    .line 6438
    iput v12, v15, Lcom/google/android/exoplayer2/Format$a;->q:I

    .line 6471
    iput v14, v15, Lcom/google/android/exoplayer2/Format$a;->t:F

    .line 5257
    invoke-static {v11}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    .line 7392
    iput-object v10, v15, Lcom/google/android/exoplayer2/Format$a;->m:Ljava/util/List;

    .line 5258
    invoke-virtual {v15}, Lcom/google/android/exoplayer2/Format$a;->a()Lcom/google/android/exoplayer2/Format;

    move-result-object v10

    .line 5261
    aget-byte v12, v11, v17

    and-int/lit8 v12, v12, 0xf

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    if-ltz v12, :cond_c

    .line 5262
    sget-object v13, Lcom/google/android/exoplayer2/extractor/h/k;->c:[D

    array-length v14, v13

    if-ge v12, v14, :cond_c

    .line 5263
    aget-wide v12, v13, v12

    .line 5264
    iget v9, v9, Lcom/google/android/exoplayer2/extractor/h/k$a;->d:I

    add-int/lit8 v9, v9, 0x9

    .line 5265
    aget-byte v14, v11, v9

    and-int/lit8 v14, v14, 0x60

    shr-int/lit8 v14, v14, 0x5

    .line 5266
    aget-byte v9, v11, v9

    and-int/lit8 v9, v9, 0x1f

    if-eq v14, v9, :cond_b

    int-to-double v14, v14

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    add-double v14, v14, v18

    add-int/lit8 v9, v9, 0x1

    move/from16 v16, v6

    move v11, v7

    int-to-double v6, v9

    div-double/2addr v14, v6

    mul-double v12, v12, v14

    goto :goto_6

    :cond_b
    move/from16 v16, v6

    move v11, v7

    :goto_6
    const-wide v6, 0x412e848000000000L    # 1000000.0

    div-double/2addr v6, v12

    double-to-long v6, v6

    goto :goto_7

    :cond_c
    move/from16 v16, v6

    move v11, v7

    const-wide/16 v6, 0x0

    .line 5273
    :goto_7
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    .line 162
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/h/k;->b:Lcom/google/android/exoplayer2/extractor/x;

    iget-object v9, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Lcom/google/android/exoplayer2/Format;

    invoke-interface {v7, v9}, Lcom/google/android/exoplayer2/extractor/x;->a(Lcom/google/android/exoplayer2/Format;)V

    .line 163
    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/google/android/exoplayer2/extractor/h/k;->l:J

    const/4 v6, 0x1

    .line 164
    iput-boolean v6, v0, Lcom/google/android/exoplayer2/extractor/h/k;->k:Z

    goto :goto_8

    :cond_d
    move/from16 v16, v6

    move v11, v7

    .line 167
    :goto_8
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/h/k;->f:Lcom/google/android/exoplayer2/extractor/h/r;

    if-eqz v6, :cond_10

    if-lez v8, :cond_e

    .line 170
    invoke-virtual {v6, v4, v2, v5}, Lcom/google/android/exoplayer2/extractor/h/r;->a([BII)V

    const/4 v2, 0x0

    goto :goto_9

    :cond_e
    neg-int v2, v8

    .line 175
    :goto_9
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/h/k;->f:Lcom/google/android/exoplayer2/extractor/h/r;

    invoke-virtual {v6, v2}, Lcom/google/android/exoplayer2/extractor/h/r;->b(I)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 176
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/h/k;->f:Lcom/google/android/exoplayer2/extractor/h/r;

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/h/r;->b:[B

    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/h/k;->f:Lcom/google/android/exoplayer2/extractor/h/r;

    iget v6, v6, Lcom/google/android/exoplayer2/extractor/h/r;->c:I

    invoke-static {v2, v6}, Lcom/google/android/exoplayer2/util/s;->a([BI)I

    move-result v2

    .line 177
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/h/k;->e:Lcom/google/android/exoplayer2/util/u;

    invoke-static {v6}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/util/u;

    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/h/k;->f:Lcom/google/android/exoplayer2/extractor/h/r;

    iget-object v7, v7, Lcom/google/android/exoplayer2/extractor/h/r;->b:[B

    invoke-virtual {v6, v7, v2}, Lcom/google/android/exoplayer2/util/u;->a([BI)V

    .line 178
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/h/k;->d:Lcom/google/android/exoplayer2/extractor/h/af;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/extractor/h/af;

    iget-wide v6, v0, Lcom/google/android/exoplayer2/extractor/h/k;->o:J

    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/h/k;->e:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v2, v6, v7, v8}, Lcom/google/android/exoplayer2/extractor/h/af;->a(JLcom/google/android/exoplayer2/util/u;)V

    :cond_f
    const/16 v2, 0xb2

    move/from16 v6, v16

    if-ne v6, v2, :cond_11

    .line 8169
    iget-object v2, v1, Lcom/google/android/exoplayer2/util/u;->a:[B

    add-int/lit8 v7, v5, 0x2

    .line 181
    aget-byte v2, v2, v7

    const/4 v7, 0x1

    if-ne v2, v7, :cond_11

    .line 182
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/h/k;->f:Lcom/google/android/exoplayer2/extractor/h/r;

    invoke-virtual {v2, v6}, Lcom/google/android/exoplayer2/extractor/h/r;->a(I)V

    goto :goto_a

    :cond_10
    move/from16 v6, v16

    :cond_11
    :goto_a
    if-eqz v6, :cond_13

    const/16 v2, 0xb3

    if-ne v6, v2, :cond_12

    goto :goto_b

    :cond_12
    const/16 v2, 0xb8

    if-ne v6, v2, :cond_1a

    const/4 v2, 0x1

    .line 204
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/extractor/h/k;->p:Z

    goto :goto_10

    :cond_13
    :goto_b
    sub-int v2, v3, v5

    .line 187
    iget-boolean v5, v0, Lcom/google/android/exoplayer2/extractor/h/k;->j:Z

    if-eqz v5, :cond_14

    iget-boolean v5, v0, Lcom/google/android/exoplayer2/extractor/h/k;->q:Z

    if-eqz v5, :cond_14

    iget-boolean v5, v0, Lcom/google/android/exoplayer2/extractor/h/k;->k:Z

    if-eqz v5, :cond_14

    .line 189
    iget-boolean v5, v0, Lcom/google/android/exoplayer2/extractor/h/k;->p:Z

    .line 190
    iget-wide v7, v0, Lcom/google/android/exoplayer2/extractor/h/k;->i:J

    iget-wide v9, v0, Lcom/google/android/exoplayer2/extractor/h/k;->n:J

    sub-long/2addr v7, v9

    long-to-int v8, v7

    sub-int v22, v8, v2

    .line 191
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/h/k;->b:Lcom/google/android/exoplayer2/extractor/x;

    iget-wide v8, v0, Lcom/google/android/exoplayer2/extractor/h/k;->o:J

    const/16 v24, 0x0

    move-object/from16 v18, v7

    move-wide/from16 v19, v8

    move/from16 v21, v5

    move/from16 v23, v2

    invoke-interface/range {v18 .. v24}, Lcom/google/android/exoplayer2/extractor/x;->a(JIIILcom/google/android/exoplayer2/extractor/x$a;)V

    .line 193
    :cond_14
    iget-boolean v5, v0, Lcom/google/android/exoplayer2/extractor/h/k;->j:Z

    if-eqz v5, :cond_16

    iget-boolean v7, v0, Lcom/google/android/exoplayer2/extractor/h/k;->q:Z

    if-eqz v7, :cond_15

    goto :goto_c

    :cond_15
    const/4 v2, 0x0

    const/4 v5, 0x1

    goto :goto_e

    .line 195
    :cond_16
    :goto_c
    iget-wide v7, v0, Lcom/google/android/exoplayer2/extractor/h/k;->i:J

    int-to-long v9, v2

    sub-long/2addr v7, v9

    iput-wide v7, v0, Lcom/google/android/exoplayer2/extractor/h/k;->n:J

    .line 196
    iget-wide v7, v0, Lcom/google/android/exoplayer2/extractor/h/k;->m:J

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v7, v9

    if-eqz v2, :cond_17

    goto :goto_d

    :cond_17
    if-eqz v5, :cond_18

    .line 197
    iget-wide v7, v0, Lcom/google/android/exoplayer2/extractor/h/k;->o:J

    iget-wide v12, v0, Lcom/google/android/exoplayer2/extractor/h/k;->l:J

    add-long/2addr v7, v12

    goto :goto_d

    :cond_18
    const-wide/16 v7, 0x0

    :goto_d
    iput-wide v7, v0, Lcom/google/android/exoplayer2/extractor/h/k;->o:J

    const/4 v2, 0x0

    .line 198
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/extractor/h/k;->p:Z

    .line 199
    iput-wide v9, v0, Lcom/google/android/exoplayer2/extractor/h/k;->m:J

    const/4 v5, 0x1

    .line 200
    iput-boolean v5, v0, Lcom/google/android/exoplayer2/extractor/h/k;->j:Z

    :goto_e
    if-nez v6, :cond_19

    const/4 v13, 0x1

    goto :goto_f

    :cond_19
    const/4 v13, 0x0

    .line 202
    :goto_f
    iput-boolean v13, v0, Lcom/google/android/exoplayer2/extractor/h/k;->q:Z

    :cond_1a
    :goto_10
    move v2, v11

    goto/16 :goto_0
.end method

.method public final b()V
    .locals 0

    return-void
.end method
