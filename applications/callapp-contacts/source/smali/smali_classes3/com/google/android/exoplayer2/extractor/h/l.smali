.class public final Lcom/google/android/exoplayer2/extractor/h/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/h/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/h/l$b;,
        Lcom/google/android/exoplayer2/extractor/h/l$a;
    }
.end annotation


# static fields
.field private static final a:[F


# instance fields
.field private final b:Lcom/google/android/exoplayer2/extractor/h/af;

.field private final c:Lcom/google/android/exoplayer2/util/u;

.field private final d:[Z

.field private final e:Lcom/google/android/exoplayer2/extractor/h/l$a;

.field private final f:Lcom/google/android/exoplayer2/extractor/h/r;

.field private g:Lcom/google/android/exoplayer2/extractor/h/l$b;

.field private h:J

.field private i:Ljava/lang/String;

.field private j:Lcom/google/android/exoplayer2/extractor/x;

.field private k:Z

.field private l:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [F

    .line 57
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer2/extractor/h/l;->a:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/h/l;-><init>(Lcom/google/android/exoplayer2/extractor/h/af;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/exoplayer2/extractor/h/af;)V
    .locals 2

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/l;->b:Lcom/google/android/exoplayer2/extractor/h/af;

    const/4 v0, 0x4

    new-array v0, v0, [Z

    .line 88
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/l;->d:[Z

    .line 89
    new-instance v0, Lcom/google/android/exoplayer2/extractor/h/l$a;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/h/l$a;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/l;->e:Lcom/google/android/exoplayer2/extractor/h/l$a;

    if-eqz p1, :cond_0

    .line 91
    new-instance p1, Lcom/google/android/exoplayer2/extractor/h/r;

    const/16 v0, 0xb2

    invoke-direct {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/h/r;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/l;->f:Lcom/google/android/exoplayer2/extractor/h/r;

    .line 92
    new-instance p1, Lcom/google/android/exoplayer2/util/u;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/u;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/l;->c:Lcom/google/android/exoplayer2/util/u;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 94
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/l;->f:Lcom/google/android/exoplayer2/extractor/h/r;

    .line 95
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/l;->c:Lcom/google/android/exoplayer2/util/u;

    return-void
.end method

.method private static a(Lcom/google/android/exoplayer2/extractor/h/l$a;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;
    .locals 6

    .line 224
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/l$a;->f:[B

    iget p0, p0, Lcom/google/android/exoplayer2/extractor/h/l$a;->d:I

    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    .line 225
    new-instance v0, Lcom/google/android/exoplayer2/util/t;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/util/t;-><init>([B)V

    .line 226
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/t;->d(I)V

    const/4 p1, 0x4

    .line 229
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/t;->d(I)V

    .line 230
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/t;->d()V

    const/16 v1, 0x8

    .line 231
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    .line 232
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/t;->e()Z

    move-result v2

    const/4 v3, 0x3

    if-eqz v2, :cond_0

    .line 233
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    .line 234
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    .line 237
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result p1

    const-string v2, "H263Reader"

    const/16 v4, 0xf

    if-ne p1, v4, :cond_1

    .line 239
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result p1

    .line 240
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v1

    if-eqz v1, :cond_2

    int-to-float p1, p1

    int-to-float v1, v1

    div-float/2addr p1, v1

    goto :goto_0

    .line 247
    :cond_1
    sget-object v1, Lcom/google/android/exoplayer2/extractor/h/l;->a:[F

    array-length v5, v1

    if-ge p1, v5, :cond_2

    .line 248
    aget p1, v1, p1

    goto :goto_0

    :cond_2
    const-string p1, "Invalid aspect ratio"

    .line 250
    invoke-static {v2, p1}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 253
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/t;->e()Z

    move-result v1

    const/4 v5, 0x2

    if-eqz v1, :cond_3

    .line 254
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    const/4 v1, 0x1

    .line 255
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    .line 256
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/t;->e()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 257
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    .line 258
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/t;->d()V

    .line 259
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    .line 260
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/t;->d()V

    .line 261
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    .line 262
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/t;->d()V

    .line 263
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    const/16 v1, 0xb

    .line 264
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    .line 265
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/t;->d()V

    .line 266
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    .line 267
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/t;->d()V

    .line 270
    :cond_3
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "Unhandled video object layer shape"

    .line 272
    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/t;->d()V

    const/16 v1, 0x10

    .line 275
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v1

    .line 276
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/t;->d()V

    .line 277
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/t;->e()Z

    move-result v3

    if-eqz v3, :cond_7

    if-nez v1, :cond_5

    const-string v1, "Invalid vop_increment_time_resolution"

    .line 279
    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    :goto_1
    if-lez v1, :cond_6

    add-int/lit8 v2, v2, 0x1

    shr-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 287
    :cond_6
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    .line 290
    :cond_7
    :goto_2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/t;->d()V

    const/16 v1, 0xd

    .line 291
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v2

    .line 292
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/t;->d()V

    .line 293
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v1

    .line 294
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/t;->d()V

    .line 295
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/t;->d()V

    .line 296
    new-instance v0, Lcom/google/android/exoplayer2/Format$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$a;-><init>()V

    .line 7244
    iput-object p2, v0, Lcom/google/android/exoplayer2/Format$a;->a:Ljava/lang/String;

    const-string p2, "video/mp4v-es"

    .line 7370
    iput-object p2, v0, Lcom/google/android/exoplayer2/Format$a;->k:Ljava/lang/String;

    .line 7427
    iput v2, v0, Lcom/google/android/exoplayer2/Format$a;->p:I

    .line 7438
    iput v1, v0, Lcom/google/android/exoplayer2/Format$a;->q:I

    .line 7471
    iput p1, v0, Lcom/google/android/exoplayer2/Format$a;->t:F

    .line 302
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 8392
    iput-object p0, v0, Lcom/google/android/exoplayer2/Format$a;->m:Ljava/util/List;

    .line 303
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$a;->a()Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/l;->d:[Z

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/s;->a([Z)V

    .line 102
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/l;->e:Lcom/google/android/exoplayer2/extractor/h/l$a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/h/l$a;->a()V

    .line 103
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/l;->g:Lcom/google/android/exoplayer2/extractor/h/l$b;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1436
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/extractor/h/l$b;->b:Z

    .line 1437
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/extractor/h/l$b;->c:Z

    .line 1438
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/extractor/h/l$b;->d:Z

    const/4 v1, -0x1

    .line 1439
    iput v1, v0, Lcom/google/android/exoplayer2/extractor/h/l$b;->e:I

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/l;->f:Lcom/google/android/exoplayer2/extractor/h/r;

    if-eqz v0, :cond_1

    .line 107
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/h/r;->a()V

    :cond_1
    const-wide/16 v0, 0x0

    .line 109
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/h/l;->h:J

    return-void
.end method

.method public final a(JI)V
    .locals 0

    .line 126
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/h/l;->l:J

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/extractor/j;Lcom/google/android/exoplayer2/extractor/h/ad$d;)V
    .locals 2

    .line 114
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/h/ad$d;->a()V

    .line 115
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/h/ad$d;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/l;->i:Ljava/lang/String;

    .line 116
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/h/ad$d;->b()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/j;->a(II)Lcom/google/android/exoplayer2/extractor/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/l;->j:Lcom/google/android/exoplayer2/extractor/x;

    .line 117
    new-instance v1, Lcom/google/android/exoplayer2/extractor/h/l$b;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/extractor/h/l$b;-><init>(Lcom/google/android/exoplayer2/extractor/x;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/h/l;->g:Lcom/google/android/exoplayer2/extractor/h/l$b;

    .line 118
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/l;->b:Lcom/google/android/exoplayer2/extractor/h/af;

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/h/af;->a(Lcom/google/android/exoplayer2/extractor/j;Lcom/google/android/exoplayer2/extractor/h/ad$d;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/util/u;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 132
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/h/l;->g:Lcom/google/android/exoplayer2/extractor/h/l$b;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/h/l;->j:Lcom/google/android/exoplayer2/extractor/x;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2144
    iget v2, v1, Lcom/google/android/exoplayer2/util/u;->b:I

    .line 3127
    iget v3, v1, Lcom/google/android/exoplayer2/util/u;->c:I

    .line 3169
    iget-object v4, v1, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 139
    iget-wide v5, v0, Lcom/google/android/exoplayer2/extractor/h/l;->h:J

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    iput-wide v5, v0, Lcom/google/android/exoplayer2/extractor/h/l;->h:J

    .line 140
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/h/l;->j:Lcom/google/android/exoplayer2/extractor/x;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v6

    invoke-interface {v5, v1, v6}, Lcom/google/android/exoplayer2/extractor/x;->b(Lcom/google/android/exoplayer2/util/u;I)V

    .line 143
    :goto_0
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/h/l;->d:[Z

    invoke-static {v4, v2, v3, v5}, Lcom/google/android/exoplayer2/util/s;->a([BII[Z)I

    move-result v5

    if-ne v5, v3, :cond_2

    .line 147
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/extractor/h/l;->k:Z

    if-nez v1, :cond_0

    .line 148
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/h/l;->e:Lcom/google/android/exoplayer2/extractor/h/l$a;

    invoke-virtual {v1, v4, v2, v3}, Lcom/google/android/exoplayer2/extractor/h/l$a;->a([BII)V

    .line 150
    :cond_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/h/l;->g:Lcom/google/android/exoplayer2/extractor/h/l$b;

    invoke-virtual {v1, v4, v2, v3}, Lcom/google/android/exoplayer2/extractor/h/l$b;->a([BII)V

    .line 151
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/h/l;->f:Lcom/google/android/exoplayer2/extractor/h/r;

    if-eqz v1, :cond_1

    .line 152
    invoke-virtual {v1, v4, v2, v3}, Lcom/google/android/exoplayer2/extractor/h/r;->a([BII)V

    :cond_1
    return-void

    .line 4169
    :cond_2
    iget-object v6, v1, Lcom/google/android/exoplayer2/util/u;->a:[B

    add-int/lit8 v7, v5, 0x3

    .line 158
    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sub-int v8, v5, v2

    .line 163
    iget-boolean v9, v0, Lcom/google/android/exoplayer2/extractor/h/l;->k:Z

    const/4 v11, 0x1

    if-nez v9, :cond_f

    if-lez v8, :cond_3

    .line 165
    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/h/l;->e:Lcom/google/android/exoplayer2/extractor/h/l$a;

    invoke-virtual {v9, v4, v2, v5}, Lcom/google/android/exoplayer2/extractor/h/l$a;->a([BII)V

    :cond_3
    if-gez v8, :cond_4

    neg-int v9, v8

    goto :goto_1

    :cond_4
    const/4 v9, 0x0

    .line 170
    :goto_1
    iget-object v13, v0, Lcom/google/android/exoplayer2/extractor/h/l;->e:Lcom/google/android/exoplayer2/extractor/h/l$a;

    .line 4354
    iget v14, v13, Lcom/google/android/exoplayer2/extractor/h/l$a;->c:I

    if-eqz v14, :cond_d

    const-string v12, "Unexpected start code value"

    const-string v15, "H263Reader"

    const/4 v10, 0x2

    if-eq v14, v11, :cond_b

    const/4 v11, 0x3

    if-eq v14, v10, :cond_9

    const/4 v10, 0x4

    if-eq v14, v11, :cond_7

    if-ne v14, v10, :cond_6

    const/16 v10, 0xb3

    if-eq v6, v10, :cond_5

    const/16 v10, 0xb5

    if-ne v6, v10, :cond_e

    .line 4389
    :cond_5
    iget v10, v13, Lcom/google/android/exoplayer2/extractor/h/l$a;->d:I

    sub-int/2addr v10, v9

    iput v10, v13, Lcom/google/android/exoplayer2/extractor/h/l$a;->d:I

    const/4 v9, 0x0

    .line 4390
    iput-boolean v9, v13, Lcom/google/android/exoplayer2/extractor/h/l$a;->b:Z

    const/4 v9, 0x1

    goto :goto_3

    .line 4395
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_7
    and-int/lit16 v9, v6, 0xf0

    const/16 v11, 0x20

    if-eq v9, v11, :cond_8

    .line 4379
    invoke-static {v15, v12}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4380
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/extractor/h/l$a;->a()V

    goto :goto_2

    .line 4382
    :cond_8
    iget v9, v13, Lcom/google/android/exoplayer2/extractor/h/l$a;->d:I

    iput v9, v13, Lcom/google/android/exoplayer2/extractor/h/l$a;->e:I

    .line 4383
    iput v10, v13, Lcom/google/android/exoplayer2/extractor/h/l$a;->c:I

    goto :goto_2

    :cond_9
    const/16 v9, 0x1f

    if-le v6, v9, :cond_a

    .line 4371
    invoke-static {v15, v12}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4372
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/extractor/h/l$a;->a()V

    goto :goto_2

    .line 4374
    :cond_a
    iput v11, v13, Lcom/google/android/exoplayer2/extractor/h/l$a;->c:I

    goto :goto_2

    :cond_b
    const/16 v9, 0xb5

    if-eq v6, v9, :cond_c

    .line 4363
    invoke-static {v15, v12}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4364
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/extractor/h/l$a;->a()V

    goto :goto_2

    .line 4366
    :cond_c
    iput v10, v13, Lcom/google/android/exoplayer2/extractor/h/l$a;->c:I

    goto :goto_2

    :cond_d
    const/16 v9, 0xb0

    if-ne v6, v9, :cond_e

    const/4 v9, 0x1

    .line 4357
    iput v9, v13, Lcom/google/android/exoplayer2/extractor/h/l$a;->c:I

    .line 4358
    iput-boolean v9, v13, Lcom/google/android/exoplayer2/extractor/h/l$a;->b:Z

    .line 4397
    :cond_e
    :goto_2
    sget-object v9, Lcom/google/android/exoplayer2/extractor/h/l$a;->a:[B

    sget-object v10, Lcom/google/android/exoplayer2/extractor/h/l$a;->a:[B

    array-length v10, v10

    const/4 v11, 0x0

    invoke-virtual {v13, v9, v11, v10}, Lcom/google/android/exoplayer2/extractor/h/l$a;->a([BII)V

    const/4 v9, 0x0

    :goto_3
    if-eqz v9, :cond_f

    .line 172
    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/h/l;->j:Lcom/google/android/exoplayer2/extractor/x;

    iget-object v10, v0, Lcom/google/android/exoplayer2/extractor/h/l;->e:Lcom/google/android/exoplayer2/extractor/h/l$a;

    iget v11, v10, Lcom/google/android/exoplayer2/extractor/h/l$a;->e:I

    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/h/l;->i:Ljava/lang/String;

    .line 173
    invoke-static {v12}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v10, v11, v12}, Lcom/google/android/exoplayer2/extractor/h/l;->a(Lcom/google/android/exoplayer2/extractor/h/l$a;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v10

    .line 172
    invoke-interface {v9, v10}, Lcom/google/android/exoplayer2/extractor/x;->a(Lcom/google/android/exoplayer2/Format;)V

    const/4 v9, 0x1

    .line 174
    iput-boolean v9, v0, Lcom/google/android/exoplayer2/extractor/h/l;->k:Z

    .line 178
    :cond_f
    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/h/l;->g:Lcom/google/android/exoplayer2/extractor/h/l$b;

    invoke-virtual {v9, v4, v2, v5}, Lcom/google/android/exoplayer2/extractor/h/l$b;->a([BII)V

    .line 180
    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/h/l;->f:Lcom/google/android/exoplayer2/extractor/h/r;

    if-eqz v9, :cond_12

    if-lez v8, :cond_10

    .line 183
    invoke-virtual {v9, v4, v2, v5}, Lcom/google/android/exoplayer2/extractor/h/r;->a([BII)V

    const/4 v2, 0x0

    goto :goto_4

    :cond_10
    neg-int v2, v8

    .line 188
    :goto_4
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/h/l;->f:Lcom/google/android/exoplayer2/extractor/h/r;

    invoke-virtual {v8, v2}, Lcom/google/android/exoplayer2/extractor/h/r;->b(I)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 189
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/h/l;->f:Lcom/google/android/exoplayer2/extractor/h/r;

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/h/r;->b:[B

    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/h/l;->f:Lcom/google/android/exoplayer2/extractor/h/r;

    iget v8, v8, Lcom/google/android/exoplayer2/extractor/h/r;->c:I

    invoke-static {v2, v8}, Lcom/google/android/exoplayer2/util/s;->a([BI)I

    move-result v2

    .line 190
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/h/l;->c:Lcom/google/android/exoplayer2/util/u;

    invoke-static {v8}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/exoplayer2/util/u;

    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/h/l;->f:Lcom/google/android/exoplayer2/extractor/h/r;

    iget-object v9, v9, Lcom/google/android/exoplayer2/extractor/h/r;->b:[B

    invoke-virtual {v8, v9, v2}, Lcom/google/android/exoplayer2/util/u;->a([BI)V

    .line 191
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/h/l;->b:Lcom/google/android/exoplayer2/extractor/h/af;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/extractor/h/af;

    iget-wide v8, v0, Lcom/google/android/exoplayer2/extractor/h/l;->l:J

    iget-object v10, v0, Lcom/google/android/exoplayer2/extractor/h/l;->c:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v2, v8, v9, v10}, Lcom/google/android/exoplayer2/extractor/h/af;->a(JLcom/google/android/exoplayer2/util/u;)V

    :cond_11
    const/16 v2, 0xb2

    if-ne v6, v2, :cond_12

    .line 5169
    iget-object v2, v1, Lcom/google/android/exoplayer2/util/u;->a:[B

    add-int/lit8 v8, v5, 0x2

    .line 195
    aget-byte v2, v2, v8

    const/4 v9, 0x1

    if-ne v2, v9, :cond_13

    .line 196
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/h/l;->f:Lcom/google/android/exoplayer2/extractor/h/r;

    invoke-virtual {v2, v6}, Lcom/google/android/exoplayer2/extractor/h/r;->a(I)V

    goto :goto_5

    :cond_12
    const/4 v9, 0x1

    :cond_13
    :goto_5
    sub-int v2, v3, v5

    .line 201
    iget-wide v10, v0, Lcom/google/android/exoplayer2/extractor/h/l;->h:J

    int-to-long v12, v2

    sub-long/2addr v10, v12

    .line 202
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/h/l;->g:Lcom/google/android/exoplayer2/extractor/h/l$b;

    iget-boolean v8, v0, Lcom/google/android/exoplayer2/extractor/h/l;->k:Z

    .line 5465
    iget v12, v5, Lcom/google/android/exoplayer2/extractor/h/l$b;->e:I

    const/16 v13, 0xb6

    if-ne v12, v13, :cond_14

    if-eqz v8, :cond_14

    iget-boolean v8, v5, Lcom/google/android/exoplayer2/extractor/h/l$b;->b:Z

    if-eqz v8, :cond_14

    .line 5466
    iget-wide v14, v5, Lcom/google/android/exoplayer2/extractor/h/l$b;->g:J

    sub-long v14, v10, v14

    long-to-int v8, v14

    .line 5467
    iget-boolean v12, v5, Lcom/google/android/exoplayer2/extractor/h/l$b;->d:Z

    .line 5468
    iget-object v14, v5, Lcom/google/android/exoplayer2/extractor/h/l$b;->a:Lcom/google/android/exoplayer2/extractor/x;

    move-wide/from16 v23, v10

    iget-wide v9, v5, Lcom/google/android/exoplayer2/extractor/h/l$b;->h:J

    const/16 v22, 0x0

    move-object/from16 v16, v14

    move-wide/from16 v17, v9

    move/from16 v19, v12

    move/from16 v20, v8

    move/from16 v21, v2

    invoke-interface/range {v16 .. v22}, Lcom/google/android/exoplayer2/extractor/x;->a(JIIILcom/google/android/exoplayer2/extractor/x$a;)V

    goto :goto_6

    :cond_14
    move-wide/from16 v23, v10

    .line 5473
    :goto_6
    iget v2, v5, Lcom/google/android/exoplayer2/extractor/h/l$b;->e:I

    const/16 v8, 0xb3

    if-eq v2, v8, :cond_15

    move-wide/from16 v10, v23

    .line 5474
    iput-wide v10, v5, Lcom/google/android/exoplayer2/extractor/h/l$b;->g:J

    .line 204
    :cond_15
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/h/l;->g:Lcom/google/android/exoplayer2/extractor/h/l$b;

    iget-wide v9, v0, Lcom/google/android/exoplayer2/extractor/h/l;->l:J

    .line 6443
    iput v6, v2, Lcom/google/android/exoplayer2/extractor/h/l$b;->e:I

    const/4 v5, 0x0

    .line 6444
    iput-boolean v5, v2, Lcom/google/android/exoplayer2/extractor/h/l$b;->d:Z

    if-eq v6, v13, :cond_17

    if-ne v6, v8, :cond_16

    goto :goto_7

    :cond_16
    const/4 v5, 0x0

    goto :goto_8

    :cond_17
    :goto_7
    const/4 v5, 0x1

    .line 6445
    :goto_8
    iput-boolean v5, v2, Lcom/google/android/exoplayer2/extractor/h/l$b;->b:Z

    if-ne v6, v13, :cond_18

    const/4 v11, 0x1

    goto :goto_9

    :cond_18
    const/4 v11, 0x0

    .line 6447
    :goto_9
    iput-boolean v11, v2, Lcom/google/android/exoplayer2/extractor/h/l$b;->c:Z

    const/4 v5, 0x0

    .line 6448
    iput v5, v2, Lcom/google/android/exoplayer2/extractor/h/l$b;->f:I

    .line 6449
    iput-wide v9, v2, Lcom/google/android/exoplayer2/extractor/h/l$b;->h:J

    move v2, v7

    goto/16 :goto_0
.end method

.method public final b()V
    .locals 0

    return-void
.end method
