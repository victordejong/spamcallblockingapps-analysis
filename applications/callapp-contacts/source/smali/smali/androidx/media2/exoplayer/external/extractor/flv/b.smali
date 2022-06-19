.class public final Landroidx/media2/exoplayer/external/extractor/flv/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/g;


# static fields
.field public static final a:Landroidx/media2/exoplayer/external/extractor/j;


# instance fields
.field private final b:Landroidx/media2/exoplayer/external/util/p;

.field private final c:Landroidx/media2/exoplayer/external/util/p;

.field private final d:Landroidx/media2/exoplayer/external/util/p;

.field private final e:Landroidx/media2/exoplayer/external/util/p;

.field private final f:Landroidx/media2/exoplayer/external/extractor/flv/d;

.field private g:Landroidx/media2/exoplayer/external/extractor/i;

.field private h:I

.field private i:Z

.field private j:J

.field private k:I

.field private l:I

.field private m:I

.field private n:J

.field private o:Z

.field private p:Landroidx/media2/exoplayer/external/extractor/flv/a;

.field private q:Landroidx/media2/exoplayer/external/extractor/flv/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    sget-object v0, Landroidx/media2/exoplayer/external/extractor/flv/c;->a:Landroidx/media2/exoplayer/external/extractor/j;

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/flv/b;->a:Landroidx/media2/exoplayer/external/extractor/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Landroidx/media2/exoplayer/external/util/p;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/util/p;-><init>(I)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/flv/b;->b:Landroidx/media2/exoplayer/external/util/p;

    .line 94
    new-instance v0, Landroidx/media2/exoplayer/external/util/p;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/util/p;-><init>(I)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/flv/b;->c:Landroidx/media2/exoplayer/external/util/p;

    .line 95
    new-instance v0, Landroidx/media2/exoplayer/external/util/p;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/util/p;-><init>(I)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/flv/b;->d:Landroidx/media2/exoplayer/external/util/p;

    .line 96
    new-instance v0, Landroidx/media2/exoplayer/external/util/p;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/util/p;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/flv/b;->e:Landroidx/media2/exoplayer/external/util/p;

    .line 97
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/flv/d;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/extractor/flv/d;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/flv/b;->f:Landroidx/media2/exoplayer/external/extractor/flv/d;

    const/4 v0, 0x1

    .line 98
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/flv/b;->h:I

    return-void
.end method

.method static final synthetic a()[Landroidx/media2/exoplayer/external/extractor/g;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/media2/exoplayer/external/extractor/g;

    .line 44
    new-instance v1, Landroidx/media2/exoplayer/external/extractor/flv/b;

    invoke-direct {v1}, Landroidx/media2/exoplayer/external/extractor/flv/b;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private b(Landroidx/media2/exoplayer/external/extractor/h;)Landroidx/media2/exoplayer/external/util/p;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 292
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/flv/b;->m:I

    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/flv/b;->e:Landroidx/media2/exoplayer/external/util/p;

    .line 4149
    iget-object v1, v1, Landroidx/media2/exoplayer/external/util/p;->a:[B

    array-length v1, v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 293
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/flv/b;->e:Landroidx/media2/exoplayer/external/util/p;

    .line 5149
    iget-object v1, v0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    .line 293
    iget v3, p0, Landroidx/media2/exoplayer/external/extractor/flv/b;->m:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1, v2}, Landroidx/media2/exoplayer/external/util/p;->a([BI)V

    goto :goto_0

    .line 295
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/flv/b;->e:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 297
    :goto_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/flv/b;->e:Landroidx/media2/exoplayer/external/util/p;

    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/flv/b;->m:I

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/p;->b(I)V

    .line 298
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/flv/b;->e:Landroidx/media2/exoplayer/external/util/p;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/flv/b;->m:I

    invoke-interface {p1, v0, v2, v1}, Landroidx/media2/exoplayer/external/extractor/h;->b([BII)V

    .line 299
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/flv/b;->e:Landroidx/media2/exoplayer/external/util/p;

    return-object p1
.end method

.method private b()V
    .locals 4

    .line 303
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/flv/b;->o:Z

    if-nez v0, :cond_0

    .line 304
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/flv/b;->g:Landroidx/media2/exoplayer/external/extractor/i;

    new-instance v1, Landroidx/media2/exoplayer/external/extractor/o$b;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v1, v2, v3}, Landroidx/media2/exoplayer/external/extractor/o$b;-><init>(J)V

    invoke-interface {v0, v1}, Landroidx/media2/exoplayer/external/extractor/i;->a(Landroidx/media2/exoplayer/external/extractor/o;)V

    const/4 v0, 0x1

    .line 305
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/flv/b;->o:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/exoplayer/external/extractor/h;Landroidx/media2/exoplayer/external/extractor/n;)I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 153
    :cond_0
    :goto_0
    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/flv/b;->h:I

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

    .line 1310
    iget-boolean v2, v0, Landroidx/media2/exoplayer/external/extractor/flv/b;->i:Z

    const-wide/16 v10, 0x0

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_1

    .line 1311
    iget-wide v2, v0, Landroidx/media2/exoplayer/external/extractor/flv/b;->j:J

    iget-wide v14, v0, Landroidx/media2/exoplayer/external/extractor/flv/b;->n:J

    add-long/2addr v2, v14

    goto :goto_1

    .line 1312
    :cond_1
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/flv/b;->f:Landroidx/media2/exoplayer/external/extractor/flv/d;

    .line 2060
    iget-wide v2, v2, Landroidx/media2/exoplayer/external/extractor/flv/d;->a:J

    cmp-long v14, v2, v12

    if-nez v14, :cond_2

    move-wide v2, v10

    goto :goto_1

    .line 1312
    :cond_2
    iget-wide v2, v0, Landroidx/media2/exoplayer/external/extractor/flv/b;->n:J

    .line 1263
    :goto_1
    iget v14, v0, Landroidx/media2/exoplayer/external/extractor/flv/b;->l:I

    if-ne v14, v4, :cond_4

    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/flv/b;->p:Landroidx/media2/exoplayer/external/extractor/flv/a;

    if-eqz v4, :cond_4

    .line 1264
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/extractor/flv/b;->b()V

    .line 1265
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/flv/b;->p:Landroidx/media2/exoplayer/external/extractor/flv/a;

    invoke-direct/range {p0 .. p1}, Landroidx/media2/exoplayer/external/extractor/flv/b;->b(Landroidx/media2/exoplayer/external/extractor/h;)Landroidx/media2/exoplayer/external/util/p;

    move-result-object v5

    invoke-virtual {v4, v5, v2, v3}, Landroidx/media2/exoplayer/external/extractor/flv/a;->b(Landroidx/media2/exoplayer/external/util/p;J)Z

    move-result v2

    :cond_3
    :goto_2
    const/4 v3, 0x1

    goto :goto_3

    :cond_4
    if-ne v14, v5, :cond_5

    .line 1266
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/flv/b;->q:Landroidx/media2/exoplayer/external/extractor/flv/e;

    if-eqz v4, :cond_5

    .line 1267
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/extractor/flv/b;->b()V

    .line 1268
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/flv/b;->q:Landroidx/media2/exoplayer/external/extractor/flv/e;

    invoke-direct/range {p0 .. p1}, Landroidx/media2/exoplayer/external/extractor/flv/b;->b(Landroidx/media2/exoplayer/external/extractor/h;)Landroidx/media2/exoplayer/external/util/p;

    move-result-object v5

    invoke-virtual {v4, v5, v2, v3}, Landroidx/media2/exoplayer/external/extractor/flv/e;->b(Landroidx/media2/exoplayer/external/util/p;J)Z

    move-result v2

    goto :goto_2

    :cond_5
    const/16 v4, 0x12

    if-ne v14, v4, :cond_6

    .line 1269
    iget-boolean v4, v0, Landroidx/media2/exoplayer/external/extractor/flv/b;->o:Z

    if-nez v4, :cond_6

    .line 1270
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/flv/b;->f:Landroidx/media2/exoplayer/external/extractor/flv/d;

    invoke-direct/range {p0 .. p1}, Landroidx/media2/exoplayer/external/extractor/flv/b;->b(Landroidx/media2/exoplayer/external/extractor/h;)Landroidx/media2/exoplayer/external/util/p;

    move-result-object v5

    invoke-virtual {v4, v5, v2, v3}, Landroidx/media2/exoplayer/external/extractor/flv/d;->b(Landroidx/media2/exoplayer/external/util/p;J)Z

    move-result v2

    .line 1271
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/flv/b;->f:Landroidx/media2/exoplayer/external/extractor/flv/d;

    .line 3060
    iget-wide v3, v3, Landroidx/media2/exoplayer/external/extractor/flv/d;->a:J

    cmp-long v5, v3, v12

    if-eqz v5, :cond_3

    .line 1273
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/flv/b;->g:Landroidx/media2/exoplayer/external/extractor/i;

    new-instance v14, Landroidx/media2/exoplayer/external/extractor/o$b;

    invoke-direct {v14, v3, v4}, Landroidx/media2/exoplayer/external/extractor/o$b;-><init>(J)V

    invoke-interface {v5, v14}, Landroidx/media2/exoplayer/external/extractor/i;->a(Landroidx/media2/exoplayer/external/extractor/o;)V

    .line 1274
    iput-boolean v9, v0, Landroidx/media2/exoplayer/external/extractor/flv/b;->o:Z

    goto :goto_2

    .line 1277
    :cond_6
    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/flv/b;->m:I

    invoke-interface {v1, v2}, Landroidx/media2/exoplayer/external/extractor/h;->b(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1280
    :goto_3
    iget-boolean v4, v0, Landroidx/media2/exoplayer/external/extractor/flv/b;->i:Z

    if-nez v4, :cond_8

    if-eqz v2, :cond_8

    .line 1281
    iput-boolean v9, v0, Landroidx/media2/exoplayer/external/extractor/flv/b;->i:Z

    .line 1283
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/flv/b;->f:Landroidx/media2/exoplayer/external/extractor/flv/d;

    .line 4060
    iget-wide v4, v2, Landroidx/media2/exoplayer/external/extractor/flv/d;->a:J

    cmp-long v2, v4, v12

    if-nez v2, :cond_7

    .line 1283
    iget-wide v4, v0, Landroidx/media2/exoplayer/external/extractor/flv/b;->n:J

    neg-long v10, v4

    :cond_7
    iput-wide v10, v0, Landroidx/media2/exoplayer/external/extractor/flv/b;->j:J

    .line 1285
    :cond_8
    iput v7, v0, Landroidx/media2/exoplayer/external/extractor/flv/b;->k:I

    .line 1286
    iput v6, v0, Landroidx/media2/exoplayer/external/extractor/flv/b;->h:I

    if-eqz v3, :cond_0

    return v8

    .line 174
    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 1236
    :cond_a
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/flv/b;->d:Landroidx/media2/exoplayer/external/util/p;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/util/p;->a:[B

    const/16 v4, 0xb

    invoke-interface {v1, v2, v8, v4, v9}, Landroidx/media2/exoplayer/external/extractor/h;->a([BIIZ)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_4

    .line 1241
    :cond_b
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/flv/b;->d:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v2, v8}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 1242
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/flv/b;->d:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v2

    iput v2, v0, Landroidx/media2/exoplayer/external/extractor/flv/b;->l:I

    .line 1243
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/flv/b;->d:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/p;->f()I

    move-result v2

    iput v2, v0, Landroidx/media2/exoplayer/external/extractor/flv/b;->m:I

    .line 1244
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/flv/b;->d:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/p;->f()I

    move-result v2

    int-to-long v4, v2

    iput-wide v4, v0, Landroidx/media2/exoplayer/external/extractor/flv/b;->n:J

    .line 1245
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/flv/b;->d:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v2

    shl-int/lit8 v2, v2, 0x18

    int-to-long v4, v2

    iget-wide v11, v0, Landroidx/media2/exoplayer/external/extractor/flv/b;->n:J

    or-long/2addr v4, v11

    const-wide/16 v11, 0x3e8

    mul-long v4, v4, v11

    iput-wide v4, v0, Landroidx/media2/exoplayer/external/extractor/flv/b;->n:J

    .line 1246
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/flv/b;->d:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v2, v10}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    .line 1247
    iput v7, v0, Landroidx/media2/exoplayer/external/extractor/flv/b;->h:I

    const/4 v8, 0x1

    :goto_4
    if-nez v8, :cond_0

    return v3

    .line 1222
    :cond_c
    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/flv/b;->k:I

    invoke-interface {v1, v2}, Landroidx/media2/exoplayer/external/extractor/h;->b(I)V

    .line 1223
    iput v8, v0, Landroidx/media2/exoplayer/external/extractor/flv/b;->k:I

    .line 1224
    iput v10, v0, Landroidx/media2/exoplayer/external/extractor/flv/b;->h:I

    goto/16 :goto_0

    .line 1188
    :cond_d
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/flv/b;->c:Landroidx/media2/exoplayer/external/util/p;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/util/p;->a:[B

    invoke-interface {v1, v2, v8, v5, v9}, Landroidx/media2/exoplayer/external/extractor/h;->a([BIIZ)Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_6

    .line 1193
    :cond_e
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/flv/b;->c:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v2, v8}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 1194
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/flv/b;->c:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v2, v7}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    .line 1195
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/flv/b;->c:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v2

    and-int/lit8 v10, v2, 0x4

    if-eqz v10, :cond_f

    const/4 v10, 0x1

    goto :goto_5

    :cond_f
    const/4 v10, 0x0

    :goto_5
    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_10

    const/4 v8, 0x1

    :cond_10
    if-eqz v10, :cond_11

    .line 1198
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/flv/b;->p:Landroidx/media2/exoplayer/external/extractor/flv/a;

    if-nez v2, :cond_11

    .line 1199
    new-instance v2, Landroidx/media2/exoplayer/external/extractor/flv/a;

    iget-object v10, v0, Landroidx/media2/exoplayer/external/extractor/flv/b;->g:Landroidx/media2/exoplayer/external/extractor/i;

    .line 1200
    invoke-interface {v10, v4, v9}, Landroidx/media2/exoplayer/external/extractor/i;->a(II)Landroidx/media2/exoplayer/external/extractor/q;

    move-result-object v4

    invoke-direct {v2, v4}, Landroidx/media2/exoplayer/external/extractor/flv/a;-><init>(Landroidx/media2/exoplayer/external/extractor/q;)V

    iput-object v2, v0, Landroidx/media2/exoplayer/external/extractor/flv/b;->p:Landroidx/media2/exoplayer/external/extractor/flv/a;

    :cond_11
    if-eqz v8, :cond_12

    .line 1202
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/flv/b;->q:Landroidx/media2/exoplayer/external/extractor/flv/e;

    if-nez v2, :cond_12

    .line 1203
    new-instance v2, Landroidx/media2/exoplayer/external/extractor/flv/e;

    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/flv/b;->g:Landroidx/media2/exoplayer/external/extractor/i;

    .line 1204
    invoke-interface {v4, v5, v6}, Landroidx/media2/exoplayer/external/extractor/i;->a(II)Landroidx/media2/exoplayer/external/extractor/q;

    move-result-object v4

    invoke-direct {v2, v4}, Landroidx/media2/exoplayer/external/extractor/flv/e;-><init>(Landroidx/media2/exoplayer/external/extractor/q;)V

    iput-object v2, v0, Landroidx/media2/exoplayer/external/extractor/flv/b;->q:Landroidx/media2/exoplayer/external/extractor/flv/e;

    .line 1206
    :cond_12
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/flv/b;->g:Landroidx/media2/exoplayer/external/extractor/i;

    invoke-interface {v2}, Landroidx/media2/exoplayer/external/extractor/i;->a()V

    .line 1209
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/flv/b;->c:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v2

    sub-int/2addr v2, v5

    add-int/2addr v2, v7

    iput v2, v0, Landroidx/media2/exoplayer/external/extractor/flv/b;->k:I

    .line 1210
    iput v6, v0, Landroidx/media2/exoplayer/external/extractor/flv/b;->h:I

    const/4 v8, 0x1

    :goto_6
    if-nez v8, :cond_0

    return v3
.end method

.method public final a(JJ)V
    .locals 0

    const/4 p1, 0x1

    .line 139
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/flv/b;->h:I

    const/4 p1, 0x0

    .line 140
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/extractor/flv/b;->i:Z

    .line 141
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/flv/b;->k:I

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/extractor/i;)V
    .locals 0

    .line 134
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/flv/b;->g:Landroidx/media2/exoplayer/external/extractor/i;

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/extractor/h;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/flv/b;->b:Landroidx/media2/exoplayer/external/util/p;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-interface {p1, v0, v1, v2}, Landroidx/media2/exoplayer/external/extractor/h;->c([BII)V

    .line 105
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/flv/b;->b:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 106
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/flv/b;->b:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/p;->f()I

    move-result v0

    const v2, 0x464c56

    if-eq v0, v2, :cond_0

    return v1

    .line 111
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/flv/b;->b:Landroidx/media2/exoplayer/external/util/p;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    const/4 v2, 0x2

    invoke-interface {p1, v0, v1, v2}, Landroidx/media2/exoplayer/external/extractor/h;->c([BII)V

    .line 112
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/flv/b;->b:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 113
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/flv/b;->b:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/p;->d()I

    move-result v0

    and-int/lit16 v0, v0, 0xfa

    if-eqz v0, :cond_1

    return v1

    .line 118
    :cond_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/flv/b;->b:Landroidx/media2/exoplayer/external/util/p;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    const/4 v2, 0x4

    invoke-interface {p1, v0, v1, v2}, Landroidx/media2/exoplayer/external/extractor/h;->c([BII)V

    .line 119
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/flv/b;->b:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 120
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/flv/b;->b:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v0

    .line 122
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/h;->a()V

    .line 123
    invoke-interface {p1, v0}, Landroidx/media2/exoplayer/external/extractor/h;->c(I)V

    .line 126
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/flv/b;->b:Landroidx/media2/exoplayer/external/util/p;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    invoke-interface {p1, v0, v1, v2}, Landroidx/media2/exoplayer/external/extractor/h;->c([BII)V

    .line 127
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/flv/b;->b:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {p1, v1}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 129
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/flv/b;->b:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method
