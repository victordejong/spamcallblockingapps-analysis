.class public final Lcom/google/android/exoplayer2/extractor/h/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/h/j;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/android/exoplayer2/util/u;

.field private final c:Lcom/google/android/exoplayer2/util/t;

.field private d:Lcom/google/android/exoplayer2/extractor/x;

.field private e:Ljava/lang/String;

.field private f:Lcom/google/android/exoplayer2/Format;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:J

.field private l:Z

.field private m:I

.field private n:I

.field private o:I

.field private p:Z

.field private q:J

.field private r:I

.field private s:J

.field private t:I

.field private u:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/p;->a:Ljava/lang/String;

    .line 83
    new-instance p1, Lcom/google/android/exoplayer2/util/u;

    const/16 v0, 0x400

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/u;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/p;->b:Lcom/google/android/exoplayer2/util/u;

    .line 84
    new-instance v0, Lcom/google/android/exoplayer2/util/t;

    .line 1169
    iget-object p1, p1, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 84
    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/util/t;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/p;->c:Lcom/google/android/exoplayer2/util/t;

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/util/t;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 274
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/t;->a()I

    move-result v0

    const/4 v1, 0x1

    .line 275
    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/audio/a;->a(Lcom/google/android/exoplayer2/util/t;Z)Lcom/google/android/exoplayer2/audio/a$a;

    move-result-object v1

    .line 276
    iget-object v2, v1, Lcom/google/android/exoplayer2/audio/a$a;->c:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/exoplayer2/extractor/h/p;->u:Ljava/lang/String;

    .line 277
    iget v2, v1, Lcom/google/android/exoplayer2/audio/a$a;->a:I

    iput v2, p0, Lcom/google/android/exoplayer2/extractor/h/p;->r:I

    .line 278
    iget v1, v1, Lcom/google/android/exoplayer2/audio/a$a;->b:I

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/h/p;->t:I

    .line 279
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/t;->a()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method private b(Lcom/google/android/exoplayer2/util/t;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 285
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/h/p;->o:I

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    const/16 v1, 0x8

    .line 288
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v2, 0xff

    if-eq v1, v2, :cond_0

    return v0

    .line 293
    :cond_1
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/ParserException;-><init>()V

    throw p1
.end method

.method private static c(Lcom/google/android/exoplayer2/util/t;)J
    .locals 2

    const/4 v0, 0x2

    .line 321
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x8

    .line 322
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    .line 89
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/h/p;->g:I

    .line 90
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/h/p;->l:Z

    return-void
.end method

.method public final a(JI)V
    .locals 0

    .line 102
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/h/p;->k:J

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/extractor/j;Lcom/google/android/exoplayer2/extractor/h/ad$d;)V
    .locals 2

    .line 95
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/h/ad$d;->a()V

    .line 96
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/h/ad$d;->b()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/j;->a(II)Lcom/google/android/exoplayer2/extractor/x;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/p;->d:Lcom/google/android/exoplayer2/extractor/x;

    .line 97
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/h/ad$d;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/p;->e:Ljava/lang/String;

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/util/u;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/p;->d:Lcom/google/android/exoplayer2/extractor/x;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v0

    if-lez v0, :cond_1b

    .line 110
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/h/p;->g:I

    const/16 v1, 0x56

    const/4 v2, 0x1

    if-eqz v0, :cond_1a

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v0, v2, :cond_18

    const/4 v1, 0x3

    const/16 v5, 0x8

    if-eq v0, v3, :cond_16

    if-ne v0, v1, :cond_15

    .line 134
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v0

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/h/p;->i:I

    iget v6, p0, Lcom/google/android/exoplayer2/extractor/h/p;->h:I

    sub-int/2addr v3, v6

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 135
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/h/p;->c:Lcom/google/android/exoplayer2/util/t;

    iget-object v3, v3, Lcom/google/android/exoplayer2/util/t;->a:[B

    iget v6, p0, Lcom/google/android/exoplayer2/extractor/h/p;->h:I

    invoke-virtual {p1, v3, v6, v0}, Lcom/google/android/exoplayer2/util/u;->a([BII)V

    .line 136
    iget v3, p0, Lcom/google/android/exoplayer2/extractor/h/p;->h:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/google/android/exoplayer2/extractor/h/p;->h:I

    .line 137
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/h/p;->i:I

    if-ne v3, v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/p;->c:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/t;->a(I)V

    .line 139
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/p;->c:Lcom/google/android/exoplayer2/util/t;

    .line 4161
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/t;->e()Z

    move-result v3

    if-nez v3, :cond_f

    .line 4163
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/h/p;->l:Z

    .line 4186
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v3

    if-ne v3, v2, :cond_1

    .line 4187
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v6

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    iput v6, p0, Lcom/google/android/exoplayer2/extractor/h/p;->m:I

    if-nez v6, :cond_e

    if-ne v3, v2, :cond_2

    .line 4190
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/h/p;->c(Lcom/google/android/exoplayer2/util/t;)J

    .line 4192
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/t;->e()Z

    move-result v6

    if-eqz v6, :cond_d

    const/4 v6, 0x6

    .line 4195
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v7

    iput v7, p0, Lcom/google/android/exoplayer2/extractor/h/p;->n:I

    const/4 v7, 0x4

    .line 4196
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v8

    .line 4197
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v9

    if-nez v8, :cond_c

    if-nez v9, :cond_c

    if-nez v3, :cond_3

    .line 4202
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/t;->b()I

    move-result v8

    .line 4203
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/h/p;->a(Lcom/google/android/exoplayer2/util/t;)I

    move-result v9

    .line 4204
    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/t;->a(I)V

    add-int/lit8 v8, v9, 0x7

    .line 4205
    div-int/2addr v8, v5

    new-array v8, v8, [B

    .line 4206
    invoke-virtual {v0, v8, v9}, Lcom/google/android/exoplayer2/util/t;->b([BI)V

    .line 4207
    new-instance v9, Lcom/google/android/exoplayer2/Format$a;

    invoke-direct {v9}, Lcom/google/android/exoplayer2/Format$a;-><init>()V

    iget-object v10, p0, Lcom/google/android/exoplayer2/extractor/h/p;->e:Ljava/lang/String;

    .line 5244
    iput-object v10, v9, Lcom/google/android/exoplayer2/Format$a;->a:Ljava/lang/String;

    const-string v10, "audio/mp4a-latm"

    .line 5370
    iput-object v10, v9, Lcom/google/android/exoplayer2/Format$a;->k:Ljava/lang/String;

    .line 4210
    iget-object v10, p0, Lcom/google/android/exoplayer2/extractor/h/p;->u:Ljava/lang/String;

    .line 6333
    iput-object v10, v9, Lcom/google/android/exoplayer2/Format$a;->h:Ljava/lang/String;

    .line 4211
    iget v10, p0, Lcom/google/android/exoplayer2/extractor/h/p;->t:I

    .line 6517
    iput v10, v9, Lcom/google/android/exoplayer2/Format$a;->x:I

    .line 4212
    iget v10, p0, Lcom/google/android/exoplayer2/extractor/h/p;->r:I

    .line 6528
    iput v10, v9, Lcom/google/android/exoplayer2/Format$a;->y:I

    .line 4214
    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 7392
    iput-object v8, v9, Lcom/google/android/exoplayer2/Format$a;->m:Ljava/util/List;

    .line 4214
    iget-object v8, p0, Lcom/google/android/exoplayer2/extractor/h/p;->a:Ljava/lang/String;

    .line 8278
    iput-object v8, v9, Lcom/google/android/exoplayer2/Format$a;->c:Ljava/lang/String;

    .line 4216
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/Format$a;->a()Lcom/google/android/exoplayer2/Format;

    move-result-object v8

    .line 4217
    iget-object v9, p0, Lcom/google/android/exoplayer2/extractor/h/p;->f:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v8, v9}, Lcom/google/android/exoplayer2/Format;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 4218
    iput-object v8, p0, Lcom/google/android/exoplayer2/extractor/h/p;->f:Lcom/google/android/exoplayer2/Format;

    const-wide/32 v9, 0x3d090000

    .line 4219
    iget v11, v8, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    int-to-long v11, v11

    div-long/2addr v9, v11

    iput-wide v9, p0, Lcom/google/android/exoplayer2/extractor/h/p;->s:J

    .line 4220
    iget-object v9, p0, Lcom/google/android/exoplayer2/extractor/h/p;->d:Lcom/google/android/exoplayer2/extractor/x;

    invoke-interface {v9, v8}, Lcom/google/android/exoplayer2/extractor/x;->a(Lcom/google/android/exoplayer2/Format;)V

    goto :goto_2

    .line 4223
    :cond_3
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/h/p;->c(Lcom/google/android/exoplayer2/util/t;)J

    move-result-wide v8

    long-to-int v9, v8

    .line 4224
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/h/p;->a(Lcom/google/android/exoplayer2/util/t;)I

    move-result v8

    sub-int/2addr v9, v8

    .line 4225
    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    .line 9251
    :cond_4
    :goto_2
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v8

    iput v8, p0, Lcom/google/android/exoplayer2/extractor/h/p;->o:I

    if-eqz v8, :cond_9

    if-eq v8, v2, :cond_8

    if-eq v8, v1, :cond_7

    if-eq v8, v7, :cond_7

    const/4 v1, 0x5

    if-eq v8, v1, :cond_7

    if-eq v8, v6, :cond_6

    const/4 v1, 0x7

    if-ne v8, v1, :cond_5

    goto :goto_3

    .line 9269
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 9266
    :cond_6
    :goto_3
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    goto :goto_4

    .line 9262
    :cond_7
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    goto :goto_4

    :cond_8
    const/16 v1, 0x9

    .line 9257
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    goto :goto_4

    .line 9254
    :cond_9
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    .line 4228
    :goto_4
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/t;->e()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/h/p;->p:Z

    const-wide/16 v6, 0x0

    .line 4229
    iput-wide v6, p0, Lcom/google/android/exoplayer2/extractor/h/p;->q:J

    if-eqz v1, :cond_b

    if-ne v3, v2, :cond_a

    .line 4232
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/h/p;->c(Lcom/google/android/exoplayer2/util/t;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/exoplayer2/extractor/h/p;->q:J

    goto :goto_5

    .line 4236
    :cond_a
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/t;->e()Z

    move-result v1

    .line 4237
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/h/p;->q:J

    shl-long/2addr v2, v5

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v2, v6

    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/h/p;->q:J

    if-nez v1, :cond_a

    .line 4241
    :cond_b
    :goto_5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/t;->e()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 4243
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    goto :goto_6

    .line 4199
    :cond_c
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/ParserException;-><init>()V

    throw p1

    .line 4193
    :cond_d
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/ParserException;-><init>()V

    throw p1

    .line 4246
    :cond_e
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/ParserException;-><init>()V

    throw p1

    .line 4165
    :cond_f
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/h/p;->l:Z

    if-eqz v1, :cond_14

    .line 4169
    :cond_10
    :goto_6
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/h/p;->m:I

    if-nez v1, :cond_13

    .line 4170
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/h/p;->n:I

    if-nez v1, :cond_12

    .line 4173
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/h/p;->b(Lcom/google/android/exoplayer2/util/t;)I

    move-result v9

    .line 9300
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/t;->b()I

    move-result v1

    and-int/lit8 v2, v1, 0x7

    if-nez v2, :cond_11

    .line 9303
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/h/p;->b:Lcom/google/android/exoplayer2/util/u;

    shr-int/lit8 v1, v1, 0x3

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    goto :goto_7

    .line 9307
    :cond_11
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/h/p;->b:Lcom/google/android/exoplayer2/util/u;

    .line 10169
    iget-object v1, v1, Lcom/google/android/exoplayer2/util/u;->a:[B

    mul-int/lit8 v2, v9, 0x8

    .line 9307
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/util/t;->b([BI)V

    .line 9308
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/h/p;->b:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 9310
    :goto_7
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/h/p;->d:Lcom/google/android/exoplayer2/extractor/x;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/h/p;->b:Lcom/google/android/exoplayer2/util/u;

    invoke-interface {v1, v2, v9}, Lcom/google/android/exoplayer2/extractor/x;->b(Lcom/google/android/exoplayer2/util/u;I)V

    .line 9311
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/h/p;->d:Lcom/google/android/exoplayer2/extractor/x;

    iget-wide v6, p0, Lcom/google/android/exoplayer2/extractor/h/p;->k:J

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v5 .. v11}, Lcom/google/android/exoplayer2/extractor/x;->a(JIIILcom/google/android/exoplayer2/extractor/x$a;)V

    .line 9312
    iget-wide v1, p0, Lcom/google/android/exoplayer2/extractor/h/p;->k:J

    iget-wide v5, p0, Lcom/google/android/exoplayer2/extractor/h/p;->s:J

    add-long/2addr v1, v5

    iput-wide v1, p0, Lcom/google/android/exoplayer2/extractor/h/p;->k:J

    .line 4175
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/h/p;->p:Z

    if-eqz v1, :cond_14

    .line 4176
    iget-wide v1, p0, Lcom/google/android/exoplayer2/extractor/h/p;->q:J

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    goto :goto_8

    .line 4171
    :cond_12
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/ParserException;-><init>()V

    throw p1

    .line 4179
    :cond_13
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/ParserException;-><init>()V

    throw p1

    .line 140
    :cond_14
    :goto_8
    iput v4, p0, Lcom/google/android/exoplayer2/extractor/h/p;->g:I

    goto/16 :goto_0

    .line 144
    :cond_15
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 126
    :cond_16
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/h/p;->j:I

    and-int/lit16 v0, v0, -0xe1

    shl-int/2addr v0, v5

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v2

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/h/p;->i:I

    .line 127
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/h/p;->b:Lcom/google/android/exoplayer2/util/u;

    .line 2169
    iget-object v2, v2, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 127
    array-length v2, v2

    if-le v0, v2, :cond_17

    .line 128
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/h/p;->i:I

    .line 2316
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/h/p;->b:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/util/u;->a(I)V

    .line 2317
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/p;->c:Lcom/google/android/exoplayer2/util/t;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/h/p;->b:Lcom/google/android/exoplayer2/util/u;

    .line 3169
    iget-object v2, v2, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 4067
    array-length v3, v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/util/t;->a([BI)V

    .line 130
    :cond_17
    iput v4, p0, Lcom/google/android/exoplayer2/extractor/h/p;->h:I

    .line 131
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/h/p;->g:I

    goto/16 :goto_0

    .line 117
    :cond_18
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v0

    and-int/lit16 v2, v0, 0xe0

    const/16 v5, 0xe0

    if-ne v2, v5, :cond_19

    .line 119
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/h/p;->j:I

    .line 120
    iput v3, p0, Lcom/google/android/exoplayer2/extractor/h/p;->g:I

    goto/16 :goto_0

    :cond_19
    if-eq v0, v1, :cond_0

    .line 122
    iput v4, p0, Lcom/google/android/exoplayer2/extractor/h/p;->g:I

    goto/16 :goto_0

    .line 112
    :cond_1a
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 113
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/h/p;->g:I

    goto/16 :goto_0

    :cond_1b
    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method
