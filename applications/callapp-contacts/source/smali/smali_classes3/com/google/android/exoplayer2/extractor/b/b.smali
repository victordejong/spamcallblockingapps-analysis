.class public final Lcom/google/android/exoplayer2/extractor/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/h;


# static fields
.field public static final a:Lcom/google/android/exoplayer2/extractor/l;


# instance fields
.field private final b:[B

.field private final c:Lcom/google/android/exoplayer2/util/u;

.field private final d:Z

.field private final e:Lcom/google/android/exoplayer2/extractor/m$a;

.field private f:Lcom/google/android/exoplayer2/extractor/j;

.field private g:Lcom/google/android/exoplayer2/extractor/x;

.field private h:I

.field private i:Lcom/google/android/exoplayer2/metadata/Metadata;

.field private j:Lcom/google/android/exoplayer2/extractor/p;

.field private k:I

.field private l:I

.field private m:Lcom/google/android/exoplayer2/extractor/b/a;

.field private n:I

.field private o:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    sget-object v0, Lcom/google/android/exoplayer2/extractor/b/-$$Lambda$b$qJdK1mPYJfLgJaqXq-DRPz-o3ho;->INSTANCE:Lcom/google/android/exoplayer2/extractor/b/-$$Lambda$b$qJdK1mPYJfLgJaqXq-DRPz-o3ho;

    sput-object v0, Lcom/google/android/exoplayer2/extractor/b/b;->a:Lcom/google/android/exoplayer2/extractor/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 126
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/b/b;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2a

    new-array v0, v0, [B

    .line 136
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/b/b;->b:[B

    .line 138
    new-instance v0, Lcom/google/android/exoplayer2/util/u;

    const v1, 0x8000

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/util/u;-><init>([BI)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/b/b;->c:Lcom/google/android/exoplayer2/util/u;

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 139
    :goto_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/b/b;->d:Z

    .line 140
    new-instance p1, Lcom/google/android/exoplayer2/extractor/m$a;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/m$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/b/b;->e:Lcom/google/android/exoplayer2/extractor/m$a;

    .line 141
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/b/b;->h:I

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/util/u;Z)J
    .locals 4

    .line 344
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/b/b;->j:Lcom/google/android/exoplayer2/extractor/p;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17144
    iget v0, p1, Lcom/google/android/exoplayer2/util/u;->b:I

    .line 18127
    :goto_0
    iget v1, p1, Lcom/google/android/exoplayer2/util/u;->c:I

    add-int/lit8 v1, v1, -0x10

    if-gt v0, v1, :cond_1

    .line 348
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 349
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/b/b;->j:Lcom/google/android/exoplayer2/extractor/p;

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/b/b;->l:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/b/b;->e:Lcom/google/android/exoplayer2/extractor/m$a;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/m;->a(Lcom/google/android/exoplayer2/util/u;Lcom/google/android/exoplayer2/extractor/p;ILcom/google/android/exoplayer2/extractor/m$a;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 351
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 352
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/b/b;->e:Lcom/google/android/exoplayer2/extractor/m$a;

    iget-wide p1, p1, Lcom/google/android/exoplayer2/extractor/m$a;->a:J

    return-wide p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_5

    .line 19127
    :goto_1
    iget p2, p1, Lcom/google/android/exoplayer2/util/u;->c:I

    .line 377
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/b/b;->k:I

    sub-int/2addr p2, v1

    if-gt v0, p2, :cond_4

    .line 378
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    const/4 p2, 0x0

    .line 381
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/b/b;->j:Lcom/google/android/exoplayer2/extractor/p;

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/b/b;->l:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/b/b;->e:Lcom/google/android/exoplayer2/extractor/m$a;

    .line 382
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/m;->a(Lcom/google/android/exoplayer2/util/u;Lcom/google/android/exoplayer2/extractor/p;ILcom/google/android/exoplayer2/extractor/m$a;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const/4 v1, 0x0

    .line 19144
    :goto_2
    iget v2, p1, Lcom/google/android/exoplayer2/util/u;->b:I

    .line 20127
    iget v3, p1, Lcom/google/android/exoplayer2/util/u;->c:I

    if-le v2, v3, :cond_2

    goto :goto_3

    :cond_2
    move p2, v1

    :goto_3
    if-eqz p2, :cond_3

    .line 395
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 396
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/b/b;->e:Lcom/google/android/exoplayer2/extractor/m$a;

    iget-wide p1, p1, Lcom/google/android/exoplayer2/extractor/m$a;->a:J

    return-wide p1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 21127
    :cond_4
    iget p2, p1, Lcom/google/android/exoplayer2/util/u;->c:I

    .line 401
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    goto :goto_4

    .line 403
    :cond_5
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    :goto_4
    const-wide/16 p1, -0x1

    return-wide p1
.end method

.method private a()V
    .locals 11

    .line 410
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/b/b;->o:J

    const-wide/32 v2, 0xf4240

    mul-long v0, v0, v2

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/b/b;->j:Lcom/google/android/exoplayer2/extractor/p;

    .line 413
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/extractor/p;

    iget v2, v2, Lcom/google/android/exoplayer2/extractor/p;->e:I

    int-to-long v2, v2

    div-long v5, v0, v2

    .line 414
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/b/b;->g:Lcom/google/android/exoplayer2/extractor/x;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/android/exoplayer2/extractor/x;

    iget v8, p0, Lcom/google/android/exoplayer2/extractor/b/b;->n:I

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 415
    invoke-interface/range {v4 .. v10}, Lcom/google/android/exoplayer2/extractor/x;->a(JIIILcom/google/android/exoplayer2/extractor/x$a;)V

    return-void
.end method

.method private static synthetic b()[Lcom/google/android/exoplayer2/extractor/h;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/h;

    .line 55
    new-instance v1, Lcom/google/android/exoplayer2/extractor/b/b;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/b/b;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static synthetic lambda$qJdK1mPYJfLgJaqXq-DRPz-o3ho()[Lcom/google/android/exoplayer2/extractor/h;
    .locals 1

    invoke-static {}, Lcom/google/android/exoplayer2/extractor/b/b;->b()[Lcom/google/android/exoplayer2/extractor/h;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/extractor/i;Lcom/google/android/exoplayer2/extractor/u;)I
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 160
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/b/b;->h:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_18

    const/4 v5, 0x2

    if-eq v2, v3, :cond_17

    const/4 v6, 0x3

    const/4 v7, 0x4

    if-eq v2, v5, :cond_15

    if-eq v2, v6, :cond_e

    const/4 v6, 0x5

    const-wide/16 v8, -0x1

    if-eq v2, v7, :cond_a

    if-ne v2, v6, :cond_9

    .line 12249
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/b/b;->g:Lcom/google/android/exoplayer2/extractor/x;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12250
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/b/b;->j:Lcom/google/android/exoplayer2/extractor/p;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12253
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/b/b;->m:Lcom/google/android/exoplayer2/extractor/b/a;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/b/a;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 12254
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/b/b;->m:Lcom/google/android/exoplayer2/extractor/b/a;

    move-object/from16 v3, p2

    invoke-virtual {v2, v1, v3}, Lcom/google/android/exoplayer2/extractor/b/a;->a(Lcom/google/android/exoplayer2/extractor/i;Lcom/google/android/exoplayer2/extractor/u;)I

    move-result v1

    return v1

    .line 12258
    :cond_0
    iget-wide v5, v0, Lcom/google/android/exoplayer2/extractor/b/b;->o:J

    cmp-long v2, v5, v8

    if-nez v2, :cond_1

    .line 12259
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/b/b;->j:Lcom/google/android/exoplayer2/extractor/p;

    .line 12260
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/extractor/m;->a(Lcom/google/android/exoplayer2/extractor/i;Lcom/google/android/exoplayer2/extractor/p;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/exoplayer2/extractor/b/b;->o:J

    goto/16 :goto_2

    .line 12265
    :cond_1
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/b/b;->c:Lcom/google/android/exoplayer2/util/u;

    .line 13127
    iget v2, v2, Lcom/google/android/exoplayer2/util/u;->c:I

    const v5, 0x8000

    if-ge v2, v5, :cond_4

    .line 12268
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/b/b;->c:Lcom/google/android/exoplayer2/util/u;

    .line 13169
    iget-object v6, v6, Lcom/google/android/exoplayer2/util/u;->a:[B

    sub-int/2addr v5, v2

    .line 12269
    invoke-interface {v1, v6, v2, v5}, Lcom/google/android/exoplayer2/extractor/i;->a([BII)I

    move-result v1

    const/4 v5, -0x1

    if-ne v1, v5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_3

    .line 12275
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/b/b;->c:Lcom/google/android/exoplayer2/util/u;

    add-int/2addr v2, v1

    invoke-virtual {v5, v2}, Lcom/google/android/exoplayer2/util/u;->c(I)V

    goto :goto_1

    .line 12276
    :cond_3
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/b/b;->c:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v1

    if-nez v1, :cond_5

    .line 12277
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/b/b;->a()V

    return v5

    :cond_4
    const/4 v3, 0x0

    .line 12283
    :cond_5
    :goto_1
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/b/b;->c:Lcom/google/android/exoplayer2/util/u;

    .line 14144
    iget v1, v1, Lcom/google/android/exoplayer2/util/u;->b:I

    .line 12286
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/b/b;->n:I

    iget v5, v0, Lcom/google/android/exoplayer2/extractor/b/b;->k:I

    if-ge v2, v5, :cond_6

    .line 12287
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/b/b;->c:Lcom/google/android/exoplayer2/util/u;

    sub-int/2addr v5, v2

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v6, v2}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    .line 12290
    :cond_6
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/b/b;->c:Lcom/google/android/exoplayer2/util/u;

    invoke-direct {v0, v2, v3}, Lcom/google/android/exoplayer2/extractor/b/b;->a(Lcom/google/android/exoplayer2/util/u;Z)J

    move-result-wide v2

    .line 12291
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/b/b;->c:Lcom/google/android/exoplayer2/util/u;

    .line 15144
    iget v5, v5, Lcom/google/android/exoplayer2/util/u;->b:I

    sub-int/2addr v5, v1

    .line 12292
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/b/b;->c:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v6, v1}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 12293
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/b/b;->g:Lcom/google/android/exoplayer2/extractor/x;

    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/b/b;->c:Lcom/google/android/exoplayer2/util/u;

    invoke-interface {v1, v6, v5}, Lcom/google/android/exoplayer2/extractor/x;->b(Lcom/google/android/exoplayer2/util/u;I)V

    .line 12294
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/b/b;->n:I

    add-int/2addr v1, v5

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/b/b;->n:I

    cmp-long v1, v2, v8

    if-eqz v1, :cond_7

    .line 12298
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/b/b;->a()V

    .line 12299
    iput v4, v0, Lcom/google/android/exoplayer2/extractor/b/b;->n:I

    .line 12300
    iput-wide v2, v0, Lcom/google/android/exoplayer2/extractor/b/b;->o:J

    .line 12303
    :cond_7
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/b/b;->c:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v1

    const/16 v2, 0x10

    if-ge v1, v2, :cond_8

    .line 12306
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/b/b;->c:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v1

    .line 12307
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/b/b;->c:Lcom/google/android/exoplayer2/util/u;

    .line 15169
    iget-object v2, v2, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 12308
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/b/b;->c:Lcom/google/android/exoplayer2/util/u;

    .line 16144
    iget v3, v3, Lcom/google/android/exoplayer2/util/u;->b:I

    .line 12308
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/b/b;->c:Lcom/google/android/exoplayer2/util/u;

    .line 16169
    iget-object v5, v5, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 12307
    invoke-static {v2, v3, v5, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12309
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/b/b;->c:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 12310
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/b/b;->c:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/util/u;->c(I)V

    :cond_8
    :goto_2
    return v4

    .line 179
    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 10229
    :cond_a
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->a()V

    .line 10230
    new-instance v2, Lcom/google/android/exoplayer2/util/u;

    invoke-direct {v2, v5}, Lcom/google/android/exoplayer2/util/u;-><init>(I)V

    .line 11169
    iget-object v3, v2, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 10231
    invoke-interface {v1, v3, v4, v5}, Lcom/google/android/exoplayer2/extractor/i;->d([BII)V

    .line 10233
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/u;->d()I

    move-result v2

    shr-int/lit8 v3, v2, 0x2

    const/16 v5, 0x3ffe

    if-ne v3, v5, :cond_d

    .line 10240
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->a()V

    .line 9237
    iput v2, v0, Lcom/google/android/exoplayer2/extractor/b/b;->l:I

    .line 9238
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/b/b;->f:Lcom/google/android/exoplayer2/extractor/j;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/extractor/j;

    .line 9241
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->c()J

    move-result-wide v13

    .line 9242
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->d()J

    move-result-wide v15

    .line 11317
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/b/b;->j:Lcom/google/android/exoplayer2/extractor/p;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11318
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/b/b;->j:Lcom/google/android/exoplayer2/extractor/p;

    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/p;->k:Lcom/google/android/exoplayer2/extractor/p$a;

    if-eqz v1, :cond_b

    .line 11319
    new-instance v1, Lcom/google/android/exoplayer2/extractor/o;

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/b/b;->j:Lcom/google/android/exoplayer2/extractor/p;

    invoke-direct {v1, v3, v13, v14}, Lcom/google/android/exoplayer2/extractor/o;-><init>(Lcom/google/android/exoplayer2/extractor/p;J)V

    goto :goto_3

    :cond_b
    cmp-long v1, v15, v8

    if-eqz v1, :cond_c

    .line 11320
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/b/b;->j:Lcom/google/android/exoplayer2/extractor/p;

    iget-wide v7, v1, Lcom/google/android/exoplayer2/extractor/p;->j:J

    const-wide/16 v9, 0x0

    cmp-long v1, v7, v9

    if-lez v1, :cond_c

    .line 11321
    new-instance v1, Lcom/google/android/exoplayer2/extractor/b/a;

    iget-object v11, v0, Lcom/google/android/exoplayer2/extractor/b/b;->j:Lcom/google/android/exoplayer2/extractor/p;

    iget v12, v0, Lcom/google/android/exoplayer2/extractor/b/b;->l:I

    move-object v10, v1

    invoke-direct/range {v10 .. v16}, Lcom/google/android/exoplayer2/extractor/b/a;-><init>(Lcom/google/android/exoplayer2/extractor/p;IJJ)V

    iput-object v1, v0, Lcom/google/android/exoplayer2/extractor/b/b;->m:Lcom/google/android/exoplayer2/extractor/b/a;

    .line 11324
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/extractor/b/a;->a()Lcom/google/android/exoplayer2/extractor/v;

    move-result-object v1

    goto :goto_3

    .line 11326
    :cond_c
    new-instance v1, Lcom/google/android/exoplayer2/extractor/v$b;

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/b/b;->j:Lcom/google/android/exoplayer2/extractor/p;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/extractor/p;->a()J

    move-result-wide v7

    invoke-direct {v1, v7, v8}, Lcom/google/android/exoplayer2/extractor/v$b;-><init>(J)V

    .line 9239
    :goto_3
    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/extractor/j;->a(Lcom/google/android/exoplayer2/extractor/v;)V

    .line 9244
    iput v6, v0, Lcom/google/android/exoplayer2/extractor/b/b;->h:I

    return v4

    .line 10236
    :cond_d
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->a()V

    .line 10237
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    const-string v2, "First frame does not start with sync code."

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3220
    :cond_e
    new-instance v2, Lcom/google/android/exoplayer2/extractor/n$a;

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/b/b;->j:Lcom/google/android/exoplayer2/extractor/p;

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/extractor/n$a;-><init>(Lcom/google/android/exoplayer2/extractor/p;)V

    const/4 v3, 0x0

    :goto_4
    const/4 v5, 0x6

    if-nez v3, :cond_14

    .line 4148
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->a()V

    .line 4149
    new-instance v3, Lcom/google/android/exoplayer2/util/t;

    new-array v8, v7, [B

    invoke-direct {v3, v8}, Lcom/google/android/exoplayer2/util/t;-><init>([B)V

    .line 4150
    iget-object v8, v3, Lcom/google/android/exoplayer2/util/t;->a:[B

    invoke-interface {v1, v8, v4, v7}, Lcom/google/android/exoplayer2/extractor/i;->d([BII)V

    .line 4152
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/t;->e()Z

    move-result v8

    const/4 v9, 0x7

    .line 4153
    invoke-virtual {v3, v9}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v9

    const/16 v10, 0x18

    .line 4154
    invoke-virtual {v3, v10}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v3

    add-int/2addr v3, v7

    if-nez v9, :cond_f

    const/16 v3, 0x26

    new-array v5, v3, [B

    .line 4246
    invoke-interface {v1, v5, v4, v3}, Lcom/google/android/exoplayer2/extractor/i;->b([BII)V

    .line 4247
    new-instance v3, Lcom/google/android/exoplayer2/extractor/p;

    invoke-direct {v3, v5, v7}, Lcom/google/android/exoplayer2/extractor/p;-><init>([BI)V

    .line 4156
    iput-object v3, v2, Lcom/google/android/exoplayer2/extractor/n$a;->a:Lcom/google/android/exoplayer2/extractor/p;

    goto/16 :goto_5

    .line 4158
    :cond_f
    iget-object v10, v2, Lcom/google/android/exoplayer2/extractor/n$a;->a:Lcom/google/android/exoplayer2/extractor/p;

    if-eqz v10, :cond_13

    if-ne v9, v6, :cond_10

    .line 4253
    new-instance v5, Lcom/google/android/exoplayer2/util/u;

    invoke-direct {v5, v3}, Lcom/google/android/exoplayer2/util/u;-><init>(I)V

    .line 5169
    iget-object v9, v5, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 4254
    invoke-interface {v1, v9, v4, v3}, Lcom/google/android/exoplayer2/extractor/i;->b([BII)V

    .line 4255
    invoke-static {v5}, Lcom/google/android/exoplayer2/extractor/n;->a(Lcom/google/android/exoplayer2/util/u;)Lcom/google/android/exoplayer2/extractor/p$a;

    move-result-object v3

    .line 4164
    invoke-virtual {v10, v3}, Lcom/google/android/exoplayer2/extractor/p;->a(Lcom/google/android/exoplayer2/extractor/p$a;)Lcom/google/android/exoplayer2/extractor/p;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/exoplayer2/extractor/n$a;->a:Lcom/google/android/exoplayer2/extractor/p;

    goto/16 :goto_5

    :cond_10
    if-ne v9, v7, :cond_11

    .line 5260
    new-instance v5, Lcom/google/android/exoplayer2/util/u;

    invoke-direct {v5, v3}, Lcom/google/android/exoplayer2/util/u;-><init>(I)V

    .line 6169
    iget-object v9, v5, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 5261
    invoke-interface {v1, v9, v4, v3}, Lcom/google/android/exoplayer2/extractor/i;->b([BII)V

    .line 5262
    invoke-virtual {v5, v7}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    .line 5264
    invoke-static {v5, v4, v4}, Lcom/google/android/exoplayer2/extractor/z;->a(Lcom/google/android/exoplayer2/util/u;ZZ)Lcom/google/android/exoplayer2/extractor/z$b;

    move-result-object v3

    .line 5266
    iget-object v3, v3, Lcom/google/android/exoplayer2/extractor/z$b;->b:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 6278
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/google/android/exoplayer2/extractor/p;->a(Ljava/util/List;Ljava/util/List;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v3

    .line 6277
    invoke-virtual {v10, v3}, Lcom/google/android/exoplayer2/extractor/p;->a(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v22

    .line 6279
    new-instance v3, Lcom/google/android/exoplayer2/extractor/p;

    iget v12, v10, Lcom/google/android/exoplayer2/extractor/p;->a:I

    iget v13, v10, Lcom/google/android/exoplayer2/extractor/p;->b:I

    iget v14, v10, Lcom/google/android/exoplayer2/extractor/p;->c:I

    iget v15, v10, Lcom/google/android/exoplayer2/extractor/p;->d:I

    iget v5, v10, Lcom/google/android/exoplayer2/extractor/p;->e:I

    iget v9, v10, Lcom/google/android/exoplayer2/extractor/p;->g:I

    iget v11, v10, Lcom/google/android/exoplayer2/extractor/p;->h:I

    iget-wide v6, v10, Lcom/google/android/exoplayer2/extractor/p;->j:J

    iget-object v10, v10, Lcom/google/android/exoplayer2/extractor/p;->k:Lcom/google/android/exoplayer2/extractor/p$a;

    move/from16 v18, v11

    move-object v11, v3

    move/from16 v16, v5

    move/from16 v17, v9

    move-wide/from16 v19, v6

    move-object/from16 v21, v10

    invoke-direct/range {v11 .. v22}, Lcom/google/android/exoplayer2/extractor/p;-><init>(IIIIIIIJLcom/google/android/exoplayer2/extractor/p$a;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    .line 4168
    iput-object v3, v2, Lcom/google/android/exoplayer2/extractor/n$a;->a:Lcom/google/android/exoplayer2/extractor/p;

    goto/16 :goto_5

    :cond_11
    if-ne v9, v5, :cond_12

    .line 7271
    new-instance v5, Lcom/google/android/exoplayer2/util/u;

    invoke-direct {v5, v3}, Lcom/google/android/exoplayer2/util/u;-><init>(I)V

    .line 8169
    iget-object v6, v5, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 7272
    invoke-interface {v1, v6, v4, v3}, Lcom/google/android/exoplayer2/extractor/i;->b([BII)V

    const/4 v3, 0x4

    .line 7273
    invoke-virtual {v5, v3}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    .line 7275
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v12

    .line 7276
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v3

    .line 7277
    sget-object v6, Lcom/google/common/base/d;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v3, v6}, Lcom/google/android/exoplayer2/util/u;->a(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v13

    .line 7278
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v3

    .line 7279
    invoke-virtual {v5, v3}, Lcom/google/android/exoplayer2/util/u;->f(I)Ljava/lang/String;

    move-result-object v14

    .line 7280
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v15

    .line 7281
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v16

    .line 7282
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v17

    .line 7283
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v18

    .line 7284
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v3

    .line 7285
    new-array v6, v3, [B

    .line 7286
    invoke-virtual {v5, v6, v4, v3}, Lcom/google/android/exoplayer2/util/u;->a([BII)V

    .line 7288
    new-instance v3, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;

    move-object v11, v3

    move-object/from16 v19, v6

    invoke-direct/range {v11 .. v19}, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;-><init>(ILjava/lang/String;Ljava/lang/String;IIII[B)V

    .line 4172
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 8297
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/google/android/exoplayer2/extractor/p;->a(Ljava/util/List;Ljava/util/List;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v3

    .line 8296
    invoke-virtual {v10, v3}, Lcom/google/android/exoplayer2/extractor/p;->a(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v22

    .line 8298
    new-instance v3, Lcom/google/android/exoplayer2/extractor/p;

    iget v12, v10, Lcom/google/android/exoplayer2/extractor/p;->a:I

    iget v13, v10, Lcom/google/android/exoplayer2/extractor/p;->b:I

    iget v14, v10, Lcom/google/android/exoplayer2/extractor/p;->c:I

    iget v15, v10, Lcom/google/android/exoplayer2/extractor/p;->d:I

    iget v5, v10, Lcom/google/android/exoplayer2/extractor/p;->e:I

    iget v6, v10, Lcom/google/android/exoplayer2/extractor/p;->g:I

    iget v7, v10, Lcom/google/android/exoplayer2/extractor/p;->h:I

    move/from16 v16, v5

    iget-wide v4, v10, Lcom/google/android/exoplayer2/extractor/p;->j:J

    iget-object v10, v10, Lcom/google/android/exoplayer2/extractor/p;->k:Lcom/google/android/exoplayer2/extractor/p$a;

    move-object v11, v3

    move/from16 v17, v6

    move/from16 v18, v7

    move-wide/from16 v19, v4

    move-object/from16 v21, v10

    invoke-direct/range {v11 .. v22}, Lcom/google/android/exoplayer2/extractor/p;-><init>(IIIIIIIJLcom/google/android/exoplayer2/extractor/p$a;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    .line 4172
    iput-object v3, v2, Lcom/google/android/exoplayer2/extractor/n$a;->a:Lcom/google/android/exoplayer2/extractor/p;

    goto :goto_5

    .line 4174
    :cond_12
    invoke-interface {v1, v3}, Lcom/google/android/exoplayer2/extractor/i;->b(I)V

    .line 3225
    :goto_5
    iget-object v3, v2, Lcom/google/android/exoplayer2/extractor/n$a;->a:Lcom/google/android/exoplayer2/extractor/p;

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/extractor/p;

    iput-object v3, v0, Lcom/google/android/exoplayer2/extractor/b/b;->j:Lcom/google/android/exoplayer2/extractor/p;

    move v3, v8

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x4

    goto/16 :goto_4

    .line 4160
    :cond_13
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 3228
    :cond_14
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/b/b;->j:Lcom/google/android/exoplayer2/extractor/p;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3229
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/b/b;->j:Lcom/google/android/exoplayer2/extractor/p;

    iget v1, v1, Lcom/google/android/exoplayer2/extractor/p;->c:I

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/b/b;->k:I

    .line 3230
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/b/b;->g:Lcom/google/android/exoplayer2/extractor/x;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/extractor/x;

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/b/b;->j:Lcom/google/android/exoplayer2/extractor/p;

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/b/b;->b:[B

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/b/b;->i:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 3231
    invoke-virtual {v2, v3, v4}, Lcom/google/android/exoplayer2/extractor/p;->a([BLcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/extractor/x;->a(Lcom/google/android/exoplayer2/Format;)V

    const/4 v2, 0x4

    .line 3233
    iput v2, v0, Lcom/google/android/exoplayer2/extractor/b/b;->h:I

    const/4 v3, 0x0

    return v3

    :cond_15
    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 3120
    new-instance v4, Lcom/google/android/exoplayer2/util/u;

    invoke-direct {v4, v2}, Lcom/google/android/exoplayer2/util/u;-><init>(I)V

    .line 3169
    iget-object v5, v4, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 3121
    invoke-interface {v1, v5, v3, v2}, Lcom/google/android/exoplayer2/extractor/i;->b([BII)V

    .line 3122
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/u;->h()J

    move-result-wide v1

    const-wide/32 v4, 0x664c6143

    cmp-long v6, v1, v4

    if-nez v6, :cond_16

    const/4 v1, 0x3

    .line 2215
    iput v1, v0, Lcom/google/android/exoplayer2/extractor/b/b;->h:I

    return v3

    .line 3123
    :cond_16
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    const-string v2, "Failed to read FLAC stream marker."

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_17
    const/4 v3, 0x0

    .line 2208
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/b/b;->b:[B

    array-length v4, v2

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/exoplayer2/extractor/i;->d([BII)V

    .line 2209
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->a()V

    .line 2210
    iput v5, v0, Lcom/google/android/exoplayer2/extractor/b/b;->h:I

    return v3

    .line 1203
    :cond_18
    iget-boolean v2, v0, Lcom/google/android/exoplayer2/extractor/b/b;->d:Z

    xor-int/2addr v2, v3

    .line 2102
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->a()V

    .line 2103
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->b()J

    move-result-wide v4

    .line 2104
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/extractor/n;->a(Lcom/google/android/exoplayer2/extractor/i;Z)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v2

    .line 2105
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->b()J

    move-result-wide v6

    sub-long/2addr v6, v4

    long-to-int v4, v6

    .line 2106
    invoke-interface {v1, v4}, Lcom/google/android/exoplayer2/extractor/i;->b(I)V

    .line 1203
    iput-object v2, v0, Lcom/google/android/exoplayer2/extractor/b/b;->i:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 1204
    iput v3, v0, Lcom/google/android/exoplayer2/extractor/b/b;->h:I

    const/4 v1, 0x0

    return v1
.end method

.method public final a(JJ)V
    .locals 4

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    .line 186
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/b/b;->h:I

    goto :goto_0

    .line 187
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/b/b;->m:Lcom/google/android/exoplayer2/extractor/b/a;

    if-eqz p1, :cond_1

    .line 188
    invoke-virtual {p1, p3, p4}, Lcom/google/android/exoplayer2/extractor/b/a;->a(J)V

    :cond_1
    :goto_0
    cmp-long p1, p3, v1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v1, -0x1

    .line 190
    :goto_1
    iput-wide v1, p0, Lcom/google/android/exoplayer2/extractor/b/b;->o:J

    .line 191
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/b/b;->n:I

    .line 192
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/b/b;->c:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/u;->a(I)V

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/extractor/j;)V
    .locals 2

    .line 152
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/b/b;->f:Lcom/google/android/exoplayer2/extractor/j;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 153
    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/j;->a(II)Lcom/google/android/exoplayer2/extractor/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/b/b;->g:Lcom/google/android/exoplayer2/extractor/x;

    .line 154
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/j;->a()V

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/extractor/i;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 146
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/extractor/n;->a(Lcom/google/android/exoplayer2/extractor/i;Z)Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 1081
    new-instance v1, Lcom/google/android/exoplayer2/util/u;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/util/u;-><init>(I)V

    .line 1169
    iget-object v3, v1, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 1082
    invoke-interface {p1, v3, v0, v2}, Lcom/google/android/exoplayer2/extractor/i;->d([BII)V

    .line 1083
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/u;->h()J

    move-result-wide v1

    const-wide/32 v3, 0x664c6143

    cmp-long p1, v1, v3

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method
