.class public final Lcom/google/android/exoplayer2/extractor/flv/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/h;


# static fields
.field public static final a:Lcom/google/android/exoplayer2/extractor/l;


# instance fields
.field private final b:Lcom/google/android/exoplayer2/util/u;

.field private final c:Lcom/google/android/exoplayer2/util/u;

.field private final d:Lcom/google/android/exoplayer2/util/u;

.field private final e:Lcom/google/android/exoplayer2/util/u;

.field private final f:Lcom/google/android/exoplayer2/extractor/flv/c;

.field private g:Lcom/google/android/exoplayer2/extractor/j;

.field private h:I

.field private i:Z

.field private j:J

.field private k:I

.field private l:I

.field private m:I

.field private n:J

.field private o:Z

.field private p:Lcom/google/android/exoplayer2/extractor/flv/a;

.field private q:Lcom/google/android/exoplayer2/extractor/flv/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    sget-object v0, Lcom/google/android/exoplayer2/extractor/flv/-$$Lambda$b$t-eKifyPmusL2cG2qwU75FgsJGw;->INSTANCE:Lcom/google/android/exoplayer2/extractor/flv/-$$Lambda$b$t-eKifyPmusL2cG2qwU75FgsJGw;

    sput-object v0, Lcom/google/android/exoplayer2/extractor/flv/b;->a:Lcom/google/android/exoplayer2/extractor/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Lcom/google/android/exoplayer2/util/u;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/u;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->b:Lcom/google/android/exoplayer2/util/u;

    .line 94
    new-instance v0, Lcom/google/android/exoplayer2/util/u;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/u;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->c:Lcom/google/android/exoplayer2/util/u;

    .line 95
    new-instance v0, Lcom/google/android/exoplayer2/util/u;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/u;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->d:Lcom/google/android/exoplayer2/util/u;

    .line 96
    new-instance v0, Lcom/google/android/exoplayer2/util/u;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/u;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->e:Lcom/google/android/exoplayer2/util/u;

    .line 97
    new-instance v0, Lcom/google/android/exoplayer2/extractor/flv/c;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/flv/c;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->f:Lcom/google/android/exoplayer2/extractor/flv/c;

    const/4 v0, 0x1

    .line 98
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->h:I

    return-void
.end method

.method private a()V
    .locals 4
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "extractorOutput"
        }
    .end annotation

    .line 309
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->o:Z

    if-nez v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->g:Lcom/google/android/exoplayer2/extractor/j;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/v$b;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/v$b;-><init>(J)V

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/extractor/j;->a(Lcom/google/android/exoplayer2/extractor/v;)V

    const/4 v0, 0x1

    .line 311
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->o:Z

    :cond_0
    return-void
.end method

.method private b(Lcom/google/android/exoplayer2/extractor/i;)Lcom/google/android/exoplayer2/util/u;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 297
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->m:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->e:Lcom/google/android/exoplayer2/util/u;

    .line 10174
    iget-object v1, v1, Lcom/google/android/exoplayer2/util/u;->a:[B

    array-length v1, v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 298
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->e:Lcom/google/android/exoplayer2/util/u;

    .line 11174
    iget-object v1, v0, Lcom/google/android/exoplayer2/util/u;->a:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    .line 298
    iget v3, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->m:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/util/u;->a([BI)V

    goto :goto_0

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->e:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 302
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->e:Lcom/google/android/exoplayer2/util/u;

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->m:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/u;->c(I)V

    .line 303
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->e:Lcom/google/android/exoplayer2/util/u;

    .line 12169
    iget-object v0, v0, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 303
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->m:I

    invoke-interface {p1, v0, v2, v1}, Lcom/google/android/exoplayer2/extractor/i;->b([BII)V

    .line 304
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->e:Lcom/google/android/exoplayer2/util/u;

    return-object p1
.end method

.method private static synthetic b()[Lcom/google/android/exoplayer2/extractor/h;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/h;

    .line 44
    new-instance v1, Lcom/google/android/exoplayer2/extractor/flv/b;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/flv/b;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static synthetic lambda$t-eKifyPmusL2cG2qwU75FgsJGw()[Lcom/google/android/exoplayer2/extractor/h;
    .locals 1

    invoke-static {}, Lcom/google/android/exoplayer2/extractor/flv/b;->b()[Lcom/google/android/exoplayer2/extractor/h;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/extractor/i;Lcom/google/android/exoplayer2/extractor/u;)I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 155
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/flv/b;->g:Lcom/google/android/exoplayer2/extractor/j;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :cond_0
    :goto_0
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/flv/b;->h:I

    const/4 v3, -0x1

    const/16 v4, 0x8

    const/16 v5, 0x9

    const/4 v6, 0x2

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v2, v9, :cond_d

    const/4 v10, 0x3

    if-eq v2, v6, :cond_c

    if-eq v2, v10, :cond_a

    if-ne v2, v7, :cond_9

    .line 6316
    iget-boolean v2, v0, Lcom/google/android/exoplayer2/extractor/flv/b;->i:Z

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_1

    .line 6317
    iget-wide v2, v0, Lcom/google/android/exoplayer2/extractor/flv/b;->j:J

    iget-wide v14, v0, Lcom/google/android/exoplayer2/extractor/flv/b;->n:J

    add-long/2addr v2, v14

    goto :goto_1

    .line 6318
    :cond_1
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/flv/b;->f:Lcom/google/android/exoplayer2/extractor/flv/c;

    .line 7061
    iget-wide v2, v2, Lcom/google/android/exoplayer2/extractor/flv/c;->a:J

    cmp-long v14, v2, v12

    if-nez v14, :cond_2

    const-wide/16 v2, 0x0

    goto :goto_1

    .line 6318
    :cond_2
    iget-wide v2, v0, Lcom/google/android/exoplayer2/extractor/flv/b;->n:J

    .line 6265
    :goto_1
    iget v14, v0, Lcom/google/android/exoplayer2/extractor/flv/b;->l:I

    if-ne v14, v4, :cond_4

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/flv/b;->p:Lcom/google/android/exoplayer2/extractor/flv/a;

    if-eqz v4, :cond_4

    .line 6266
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/flv/b;->a()V

    .line 6267
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/flv/b;->p:Lcom/google/android/exoplayer2/extractor/flv/a;

    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer2/extractor/flv/b;->b(Lcom/google/android/exoplayer2/extractor/i;)Lcom/google/android/exoplayer2/util/u;

    move-result-object v5

    invoke-virtual {v4, v5, v2, v3}, Lcom/google/android/exoplayer2/extractor/flv/a;->b(Lcom/google/android/exoplayer2/util/u;J)Z

    move-result v2

    :cond_3
    :goto_2
    const/4 v3, 0x1

    goto :goto_3

    :cond_4
    if-ne v14, v5, :cond_5

    .line 6268
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/flv/b;->q:Lcom/google/android/exoplayer2/extractor/flv/d;

    if-eqz v4, :cond_5

    .line 6269
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/flv/b;->a()V

    .line 6270
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/flv/b;->q:Lcom/google/android/exoplayer2/extractor/flv/d;

    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer2/extractor/flv/b;->b(Lcom/google/android/exoplayer2/extractor/i;)Lcom/google/android/exoplayer2/util/u;

    move-result-object v5

    invoke-virtual {v4, v5, v2, v3}, Lcom/google/android/exoplayer2/extractor/flv/d;->b(Lcom/google/android/exoplayer2/util/u;J)Z

    move-result v2

    goto :goto_2

    :cond_5
    const/16 v4, 0x12

    if-ne v14, v4, :cond_6

    .line 6271
    iget-boolean v4, v0, Lcom/google/android/exoplayer2/extractor/flv/b;->o:Z

    if-nez v4, :cond_6

    .line 6272
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/flv/b;->f:Lcom/google/android/exoplayer2/extractor/flv/c;

    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer2/extractor/flv/b;->b(Lcom/google/android/exoplayer2/extractor/i;)Lcom/google/android/exoplayer2/util/u;

    move-result-object v5

    invoke-virtual {v4, v5, v2, v3}, Lcom/google/android/exoplayer2/extractor/flv/c;->b(Lcom/google/android/exoplayer2/util/u;J)Z

    move-result v2

    .line 6273
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/flv/b;->f:Lcom/google/android/exoplayer2/extractor/flv/c;

    .line 8061
    iget-wide v3, v3, Lcom/google/android/exoplayer2/extractor/flv/c;->a:J

    cmp-long v5, v3, v12

    if-eqz v5, :cond_3

    .line 6275
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/flv/b;->g:Lcom/google/android/exoplayer2/extractor/j;

    new-instance v14, Lcom/google/android/exoplayer2/extractor/t;

    iget-object v15, v0, Lcom/google/android/exoplayer2/extractor/flv/b;->f:Lcom/google/android/exoplayer2/extractor/flv/c;

    .line 8069
    iget-object v15, v15, Lcom/google/android/exoplayer2/extractor/flv/c;->c:[J

    .line 6277
    iget-object v10, v0, Lcom/google/android/exoplayer2/extractor/flv/b;->f:Lcom/google/android/exoplayer2/extractor/flv/c;

    .line 9065
    iget-object v10, v10, Lcom/google/android/exoplayer2/extractor/flv/c;->b:[J

    .line 6278
    invoke-direct {v14, v15, v10, v3, v4}, Lcom/google/android/exoplayer2/extractor/t;-><init>([J[JJ)V

    .line 6275
    invoke-interface {v5, v14}, Lcom/google/android/exoplayer2/extractor/j;->a(Lcom/google/android/exoplayer2/extractor/v;)V

    .line 6280
    iput-boolean v9, v0, Lcom/google/android/exoplayer2/extractor/flv/b;->o:Z

    goto :goto_2

    .line 6283
    :cond_6
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/flv/b;->m:I

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/extractor/i;->b(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 6286
    :goto_3
    iget-boolean v4, v0, Lcom/google/android/exoplayer2/extractor/flv/b;->i:Z

    if-nez v4, :cond_8

    if-eqz v2, :cond_8

    .line 6287
    iput-boolean v9, v0, Lcom/google/android/exoplayer2/extractor/flv/b;->i:Z

    .line 6289
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/flv/b;->f:Lcom/google/android/exoplayer2/extractor/flv/c;

    .line 10061
    iget-wide v4, v2, Lcom/google/android/exoplayer2/extractor/flv/c;->a:J

    cmp-long v2, v4, v12

    if-nez v2, :cond_7

    .line 6289
    iget-wide v4, v0, Lcom/google/android/exoplayer2/extractor/flv/b;->n:J

    neg-long v10, v4

    goto :goto_4

    :cond_7
    const-wide/16 v10, 0x0

    :goto_4
    iput-wide v10, v0, Lcom/google/android/exoplayer2/extractor/flv/b;->j:J

    .line 6291
    :cond_8
    iput v7, v0, Lcom/google/android/exoplayer2/extractor/flv/b;->k:I

    .line 6292
    iput v6, v0, Lcom/google/android/exoplayer2/extractor/flv/b;->h:I

    if-eqz v3, :cond_0

    return v8

    .line 178
    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 5238
    :cond_a
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/flv/b;->d:Lcom/google/android/exoplayer2/util/u;

    .line 6169
    iget-object v2, v2, Lcom/google/android/exoplayer2/util/u;->a:[B

    const/16 v4, 0xb

    .line 5238
    invoke-interface {v1, v2, v8, v4, v9}, Lcom/google/android/exoplayer2/extractor/i;->a([BIIZ)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_5

    .line 5243
    :cond_b
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/flv/b;->d:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v2, v8}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 5244
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/flv/b;->d:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v2

    iput v2, v0, Lcom/google/android/exoplayer2/extractor/flv/b;->l:I

    .line 5245
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/flv/b;->d:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/u;->g()I

    move-result v2

    iput v2, v0, Lcom/google/android/exoplayer2/extractor/flv/b;->m:I

    .line 5246
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/flv/b;->d:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/u;->g()I

    move-result v2

    int-to-long v4, v2

    iput-wide v4, v0, Lcom/google/android/exoplayer2/extractor/flv/b;->n:J

    .line 5247
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/flv/b;->d:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v2

    shl-int/lit8 v2, v2, 0x18

    int-to-long v4, v2

    iget-wide v11, v0, Lcom/google/android/exoplayer2/extractor/flv/b;->n:J

    or-long/2addr v4, v11

    const-wide/16 v11, 0x3e8

    mul-long v4, v4, v11

    iput-wide v4, v0, Lcom/google/android/exoplayer2/extractor/flv/b;->n:J

    .line 5248
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/flv/b;->d:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v2, v10}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    .line 5249
    iput v7, v0, Lcom/google/android/exoplayer2/extractor/flv/b;->h:I

    const/4 v8, 0x1

    :goto_5
    if-nez v8, :cond_0

    return v3

    .line 5225
    :cond_c
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/flv/b;->k:I

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/extractor/i;->b(I)V

    .line 5226
    iput v8, v0, Lcom/google/android/exoplayer2/extractor/flv/b;->k:I

    .line 5227
    iput v10, v0, Lcom/google/android/exoplayer2/extractor/flv/b;->h:I

    goto/16 :goto_0

    .line 4192
    :cond_d
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/flv/b;->c:Lcom/google/android/exoplayer2/util/u;

    .line 5169
    iget-object v2, v2, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 4192
    invoke-interface {v1, v2, v8, v5, v9}, Lcom/google/android/exoplayer2/extractor/i;->a([BIIZ)Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_7

    .line 4197
    :cond_e
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/flv/b;->c:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v2, v8}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 4198
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/flv/b;->c:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v2, v7}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    .line 4199
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/flv/b;->c:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v2

    and-int/lit8 v10, v2, 0x4

    if-eqz v10, :cond_f

    const/4 v10, 0x1

    goto :goto_6

    :cond_f
    const/4 v10, 0x0

    :goto_6
    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_10

    const/4 v8, 0x1

    :cond_10
    if-eqz v10, :cond_11

    .line 4202
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/flv/b;->p:Lcom/google/android/exoplayer2/extractor/flv/a;

    if-nez v2, :cond_11

    .line 4203
    new-instance v2, Lcom/google/android/exoplayer2/extractor/flv/a;

    iget-object v10, v0, Lcom/google/android/exoplayer2/extractor/flv/b;->g:Lcom/google/android/exoplayer2/extractor/j;

    .line 4204
    invoke-interface {v10, v4, v9}, Lcom/google/android/exoplayer2/extractor/j;->a(II)Lcom/google/android/exoplayer2/extractor/x;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/google/android/exoplayer2/extractor/flv/a;-><init>(Lcom/google/android/exoplayer2/extractor/x;)V

    iput-object v2, v0, Lcom/google/android/exoplayer2/extractor/flv/b;->p:Lcom/google/android/exoplayer2/extractor/flv/a;

    :cond_11
    if-eqz v8, :cond_12

    .line 4206
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/flv/b;->q:Lcom/google/android/exoplayer2/extractor/flv/d;

    if-nez v2, :cond_12

    .line 4207
    new-instance v2, Lcom/google/android/exoplayer2/extractor/flv/d;

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/flv/b;->g:Lcom/google/android/exoplayer2/extractor/j;

    .line 4208
    invoke-interface {v4, v5, v6}, Lcom/google/android/exoplayer2/extractor/j;->a(II)Lcom/google/android/exoplayer2/extractor/x;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/google/android/exoplayer2/extractor/flv/d;-><init>(Lcom/google/android/exoplayer2/extractor/x;)V

    iput-object v2, v0, Lcom/google/android/exoplayer2/extractor/flv/b;->q:Lcom/google/android/exoplayer2/extractor/flv/d;

    .line 4210
    :cond_12
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/flv/b;->g:Lcom/google/android/exoplayer2/extractor/j;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/extractor/j;->a()V

    .line 4213
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/flv/b;->c:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v2

    sub-int/2addr v2, v5

    add-int/2addr v2, v7

    iput v2, v0, Lcom/google/android/exoplayer2/extractor/flv/b;->k:I

    .line 4214
    iput v6, v0, Lcom/google/android/exoplayer2/extractor/flv/b;->h:I

    const/4 v8, 0x1

    :goto_7
    if-nez v8, :cond_0

    return v3
.end method

.method public final a(JJ)V
    .locals 2

    const/4 p3, 0x0

    const-wide/16 v0, 0x0

    cmp-long p4, p1, v0

    if-nez p4, :cond_0

    const/4 p1, 0x1

    .line 140
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->h:I

    .line 141
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->i:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    .line 143
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->h:I

    .line 145
    :goto_0
    iput p3, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->k:I

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/extractor/j;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->g:Lcom/google/android/exoplayer2/extractor/j;

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/extractor/i;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->b:Lcom/google/android/exoplayer2/util/u;

    .line 1169
    iget-object v0, v0, Lcom/google/android/exoplayer2/util/u;->a:[B

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 104
    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/i;->d([BII)V

    .line 105
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->b:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 106
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->b:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/u;->g()I

    move-result v0

    const v2, 0x464c56

    if-eq v0, v2, :cond_0

    return v1

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->b:Lcom/google/android/exoplayer2/util/u;

    .line 2169
    iget-object v0, v0, Lcom/google/android/exoplayer2/util/u;->a:[B

    const/4 v2, 0x2

    .line 111
    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/i;->d([BII)V

    .line 112
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->b:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 113
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->b:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/u;->d()I

    move-result v0

    and-int/lit16 v0, v0, 0xfa

    if-eqz v0, :cond_1

    return v1

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->b:Lcom/google/android/exoplayer2/util/u;

    .line 3169
    iget-object v0, v0, Lcom/google/android/exoplayer2/util/u;->a:[B

    const/4 v2, 0x4

    .line 118
    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/i;->d([BII)V

    .line 119
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->b:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 120
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->b:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v0

    .line 122
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/i;->a()V

    .line 123
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/i;->c(I)V

    .line 126
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->b:Lcom/google/android/exoplayer2/util/u;

    .line 4169
    iget-object v0, v0, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 126
    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/i;->d([BII)V

    .line 127
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->b:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 129
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->b:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method
