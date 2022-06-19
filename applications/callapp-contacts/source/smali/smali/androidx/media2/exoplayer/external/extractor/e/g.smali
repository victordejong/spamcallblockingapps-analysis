.class public final Landroidx/media2/exoplayer/external/extractor/e/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/g;


# static fields
.field public static final a:Landroidx/media2/exoplayer/external/extractor/j;


# instance fields
.field private final b:I

.field private final c:Landroidx/media2/exoplayer/external/extractor/e/i;

.field private final d:Landroidx/media2/exoplayer/external/util/p;

.field private final e:Landroidx/media2/exoplayer/external/util/p;

.field private final f:Landroidx/media2/exoplayer/external/util/o;

.field private g:Landroidx/media2/exoplayer/external/extractor/i;

.field private h:J

.field private i:J

.field private j:I

.field private k:Z

.field private l:Z

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    sget-object v0, Landroidx/media2/exoplayer/external/extractor/e/h;->a:Landroidx/media2/exoplayer/external/extractor/j;

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/e/g;->a:Landroidx/media2/exoplayer/external/extractor/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 105
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/extractor/e/g;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/e/g;->b:I

    .line 115
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/e/i;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/extractor/e/i;-><init>(Z)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/g;->c:Landroidx/media2/exoplayer/external/extractor/e/i;

    .line 116
    new-instance p1, Landroidx/media2/exoplayer/external/util/p;

    const/16 v0, 0x800

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/util/p;-><init>(I)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/g;->d:Landroidx/media2/exoplayer/external/util/p;

    const/4 p1, -0x1

    .line 117
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/e/g;->j:I

    const-wide/16 v0, -0x1

    .line 118
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/e/g;->i:J

    .line 120
    new-instance p1, Landroidx/media2/exoplayer/external/util/p;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/util/p;-><init>(I)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/g;->e:Landroidx/media2/exoplayer/external/util/p;

    .line 121
    new-instance v0, Landroidx/media2/exoplayer/external/util/o;

    iget-object p1, p1, Landroidx/media2/exoplayer/external/util/p;->a:[B

    invoke-direct {v0, p1}, Landroidx/media2/exoplayer/external/util/o;-><init>([B)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/g;->f:Landroidx/media2/exoplayer/external/util/o;

    return-void
.end method

.method static final synthetic a()[Landroidx/media2/exoplayer/external/extractor/g;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/media2/exoplayer/external/extractor/g;

    .line 54
    new-instance v1, Landroidx/media2/exoplayer/external/extractor/e/g;

    invoke-direct {v1}, Landroidx/media2/exoplayer/external/extractor/e/g;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private b(Landroidx/media2/exoplayer/external/extractor/h;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 220
    :goto_0
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/e/g;->e:Landroidx/media2/exoplayer/external/util/p;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/util/p;->a:[B

    const/16 v3, 0xa

    invoke-interface {p1, v2, v0, v3}, Landroidx/media2/exoplayer/external/extractor/h;->c([BII)V

    .line 221
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/e/g;->e:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v2, v0}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 222
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/e/g;->e:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/p;->f()I

    move-result v2

    const v3, 0x494433

    if-ne v2, v3, :cond_0

    .line 225
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/e/g;->e:Landroidx/media2/exoplayer/external/util/p;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    .line 226
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/e/g;->e:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/p;->m()I

    move-result v2

    add-int/lit8 v3, v2, 0xa

    add-int/2addr v1, v3

    .line 228
    invoke-interface {p1, v2}, Landroidx/media2/exoplayer/external/extractor/h;->c(I)V

    goto :goto_0

    .line 230
    :cond_0
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/h;->a()V

    .line 231
    invoke-interface {p1, v1}, Landroidx/media2/exoplayer/external/extractor/h;->c(I)V

    .line 232
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/extractor/e/g;->i:J

    const-wide/16 v4, -0x1

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    int-to-long v2, v1

    .line 233
    iput-wide v2, p0, Landroidx/media2/exoplayer/external/extractor/e/g;->i:J

    :cond_1
    return v1
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

    .line 188
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/h;->d()J

    move-result-wide v2

    .line 189
    iget v4, v0, Landroidx/media2/exoplayer/external/extractor/e/g;->b:I

    const/4 v8, 0x1

    and-int/2addr v4, v8

    const/4 v9, 0x0

    if-eqz v4, :cond_0

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const/4 v10, -0x1

    if-eqz v4, :cond_7

    .line 1263
    iget-boolean v5, v0, Landroidx/media2/exoplayer/external/extractor/e/g;->k:Z

    if-nez v5, :cond_7

    .line 1266
    iput v10, v0, Landroidx/media2/exoplayer/external/extractor/e/g;->j:I

    .line 1267
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/h;->a()V

    .line 1268
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/h;->c()J

    move-result-wide v5

    const-wide/16 v11, 0x0

    cmp-long v7, v5, v11

    if-nez v7, :cond_1

    .line 1270
    invoke-direct/range {p0 .. p1}, Landroidx/media2/exoplayer/external/extractor/e/g;->b(Landroidx/media2/exoplayer/external/extractor/h;)I

    :cond_1
    const/4 v5, 0x0

    .line 1275
    :cond_2
    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/e/g;->e:Landroidx/media2/exoplayer/external/util/p;

    iget-object v6, v6, Landroidx/media2/exoplayer/external/util/p;->a:[B

    const/4 v7, 0x2

    invoke-interface {v1, v6, v9, v7, v8}, Landroidx/media2/exoplayer/external/extractor/h;->b([BIIZ)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1277
    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/e/g;->e:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v6, v9}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 1278
    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/e/g;->e:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v6}, Landroidx/media2/exoplayer/external/util/p;->d()I

    move-result v6

    .line 1279
    invoke-static {v6}, Landroidx/media2/exoplayer/external/extractor/e/i;->a(I)Z

    move-result v6

    if-nez v6, :cond_3

    const/4 v5, 0x0

    goto :goto_1

    .line 1286
    :cond_3
    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/e/g;->e:Landroidx/media2/exoplayer/external/util/p;

    iget-object v6, v6, Landroidx/media2/exoplayer/external/util/p;->a:[B

    const/4 v7, 0x4

    invoke-interface {v1, v6, v9, v7, v8}, Landroidx/media2/exoplayer/external/extractor/h;->b([BIIZ)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1290
    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/e/g;->f:Landroidx/media2/exoplayer/external/util/o;

    const/16 v7, 0xe

    invoke-virtual {v6, v7}, Landroidx/media2/exoplayer/external/util/o;->a(I)V

    .line 1291
    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/e/g;->f:Landroidx/media2/exoplayer/external/util/o;

    const/16 v7, 0xd

    invoke-virtual {v6, v7}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v6

    const/4 v7, 0x6

    if-le v6, v7, :cond_4

    int-to-long v13, v6

    add-long/2addr v11, v13

    add-int/lit8 v5, v5, 0x1

    const/16 v7, 0x3e8

    if-eq v5, v7, :cond_5

    add-int/lit8 v6, v6, -0x6

    .line 1301
    invoke-interface {v1, v6, v8}, Landroidx/media2/exoplayer/external/extractor/h;->a(IZ)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    .line 1294
    :cond_4
    iput-boolean v8, v0, Landroidx/media2/exoplayer/external/extractor/e/g;->k:Z

    .line 1295
    new-instance v1, Landroidx/media2/exoplayer/external/ParserException;

    const-string v2, "Malformed ADTS stream"

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1306
    :cond_5
    :goto_1
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/h;->a()V

    if-lez v5, :cond_6

    int-to-long v5, v5

    .line 1308
    div-long/2addr v11, v5

    long-to-int v5, v11

    iput v5, v0, Landroidx/media2/exoplayer/external/extractor/e/g;->j:I

    goto :goto_2

    .line 1310
    :cond_6
    iput v10, v0, Landroidx/media2/exoplayer/external/extractor/e/g;->j:I

    .line 1312
    :goto_2
    iput-boolean v8, v0, Landroidx/media2/exoplayer/external/extractor/e/g;->k:Z

    .line 195
    :cond_7
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/e/g;->d:Landroidx/media2/exoplayer/external/util/p;

    iget-object v5, v5, Landroidx/media2/exoplayer/external/util/p;->a:[B

    const/16 v6, 0x800

    invoke-interface {v1, v5, v9, v6}, Landroidx/media2/exoplayer/external/extractor/h;->a([BII)I

    move-result v11

    if-ne v11, v10, :cond_8

    const/4 v12, 0x1

    goto :goto_3

    :cond_8
    const/4 v12, 0x0

    .line 2240
    :goto_3
    iget-boolean v1, v0, Landroidx/media2/exoplayer/external/extractor/e/g;->m:Z

    if-nez v1, :cond_c

    if-eqz v4, :cond_9

    .line 2243
    iget v1, v0, Landroidx/media2/exoplayer/external/extractor/e/g;->j:I

    if-lez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_a

    .line 2244
    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/e/g;->c:Landroidx/media2/exoplayer/external/extractor/e/i;

    .line 3194
    iget-wide v6, v6, Landroidx/media2/exoplayer/external/extractor/e/i;->a:J

    cmp-long v13, v6, v4

    if-nez v13, :cond_a

    if-eqz v12, :cond_c

    .line 2252
    :cond_a
    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/e/g;->g:Landroidx/media2/exoplayer/external/extractor/i;

    invoke-static {v6}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v13, v6

    check-cast v13, Landroidx/media2/exoplayer/external/extractor/i;

    if-eqz v1, :cond_b

    .line 2253
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/e/g;->c:Landroidx/media2/exoplayer/external/extractor/e/i;

    .line 4194
    iget-wide v6, v1, Landroidx/media2/exoplayer/external/extractor/e/i;->a:J

    cmp-long v1, v6, v4

    if-eqz v1, :cond_b

    .line 4316
    iget v1, v0, Landroidx/media2/exoplayer/external/extractor/e/g;->j:I

    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/e/g;->c:Landroidx/media2/exoplayer/external/extractor/e/i;

    .line 5194
    iget-wide v4, v4, Landroidx/media2/exoplayer/external/extractor/e/i;->a:J

    mul-int/lit8 v1, v1, 0x8

    int-to-long v6, v1

    const-wide/32 v14, 0xf4240

    mul-long v6, v6, v14

    .line 5328
    div-long/2addr v6, v4

    long-to-int v6, v6

    .line 4317
    new-instance v14, Landroidx/media2/exoplayer/external/extractor/c;

    iget-wide v4, v0, Landroidx/media2/exoplayer/external/extractor/e/g;->i:J

    iget v7, v0, Landroidx/media2/exoplayer/external/extractor/e/g;->j:I

    move-object v1, v14

    invoke-direct/range {v1 .. v7}, Landroidx/media2/exoplayer/external/extractor/c;-><init>(JJII)V

    .line 2254
    invoke-interface {v13, v14}, Landroidx/media2/exoplayer/external/extractor/i;->a(Landroidx/media2/exoplayer/external/extractor/o;)V

    goto :goto_5

    .line 2256
    :cond_b
    new-instance v1, Landroidx/media2/exoplayer/external/extractor/o$b;

    invoke-direct {v1, v4, v5}, Landroidx/media2/exoplayer/external/extractor/o$b;-><init>(J)V

    invoke-interface {v13, v1}, Landroidx/media2/exoplayer/external/extractor/i;->a(Landroidx/media2/exoplayer/external/extractor/o;)V

    .line 2258
    :goto_5
    iput-boolean v8, v0, Landroidx/media2/exoplayer/external/extractor/e/g;->m:Z

    :cond_c
    if-eqz v12, :cond_d

    return v10

    .line 203
    :cond_d
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/e/g;->d:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v1, v9}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 204
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/e/g;->d:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v1, v11}, Landroidx/media2/exoplayer/external/util/p;->b(I)V

    .line 206
    iget-boolean v1, v0, Landroidx/media2/exoplayer/external/extractor/e/g;->l:Z

    if-nez v1, :cond_e

    .line 208
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/e/g;->c:Landroidx/media2/exoplayer/external/extractor/e/i;

    iget-wide v2, v0, Landroidx/media2/exoplayer/external/extractor/e/g;->h:J

    .line 6151
    iput-wide v2, v1, Landroidx/media2/exoplayer/external/extractor/e/i;->b:J

    .line 209
    iput-boolean v8, v0, Landroidx/media2/exoplayer/external/extractor/e/g;->l:Z

    .line 213
    :cond_e
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/e/g;->c:Landroidx/media2/exoplayer/external/extractor/e/i;

    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/e/g;->d:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/extractor/e/i;->a(Landroidx/media2/exoplayer/external/util/p;)V

    return v9
.end method

.method public final a(JJ)V
    .locals 0

    const/4 p1, 0x0

    .line 175
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/extractor/e/g;->l:Z

    .line 176
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/g;->c:Landroidx/media2/exoplayer/external/extractor/e/i;

    .line 1131
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/extractor/e/i;->c()V

    .line 177
    iput-wide p3, p0, Landroidx/media2/exoplayer/external/extractor/e/g;->h:J

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/extractor/i;)V
    .locals 4

    .line 168
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/g;->g:Landroidx/media2/exoplayer/external/extractor/i;

    .line 169
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/g;->c:Landroidx/media2/exoplayer/external/extractor/e/i;

    new-instance v1, Landroidx/media2/exoplayer/external/extractor/e/ah$d;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroidx/media2/exoplayer/external/extractor/e/ah$d;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroidx/media2/exoplayer/external/extractor/e/i;->a(Landroidx/media2/exoplayer/external/extractor/i;Landroidx/media2/exoplayer/external/extractor/e/ah$d;)V

    .line 170
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/i;->a()V

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/extractor/h;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 129
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/e/g;->b(Landroidx/media2/exoplayer/external/extractor/h;)I

    move-result v0

    const/4 v1, 0x0

    move v3, v0

    :goto_0
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 136
    :goto_1
    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/e/g;->e:Landroidx/media2/exoplayer/external/util/p;

    iget-object v5, v5, Landroidx/media2/exoplayer/external/util/p;->a:[B

    const/4 v6, 0x2

    invoke-interface {p1, v5, v1, v6}, Landroidx/media2/exoplayer/external/extractor/h;->c([BII)V

    .line 137
    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/e/g;->e:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v5, v1}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 138
    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/e/g;->e:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/util/p;->d()I

    move-result v5

    .line 139
    invoke-static {v5}, Landroidx/media2/exoplayer/external/extractor/e/i;->a(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 142
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/h;->a()V

    add-int/lit8 v3, v3, 0x1

    sub-int v2, v3, v0

    const/16 v4, 0x2000

    if-lt v2, v4, :cond_0

    return v1

    .line 146
    :cond_0
    invoke-interface {p1, v3}, Landroidx/media2/exoplayer/external/extractor/h;->c(I)V

    goto :goto_0

    :cond_1
    const/4 v5, 0x1

    add-int/2addr v2, v5

    const/4 v6, 0x4

    if-lt v2, v6, :cond_2

    const/16 v7, 0xbc

    if-le v4, v7, :cond_2

    return v5

    .line 153
    :cond_2
    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/e/g;->e:Landroidx/media2/exoplayer/external/util/p;

    iget-object v5, v5, Landroidx/media2/exoplayer/external/util/p;->a:[B

    invoke-interface {p1, v5, v1, v6}, Landroidx/media2/exoplayer/external/extractor/h;->c([BII)V

    .line 154
    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/e/g;->f:Landroidx/media2/exoplayer/external/util/o;

    const/16 v6, 0xe

    invoke-virtual {v5, v6}, Landroidx/media2/exoplayer/external/util/o;->a(I)V

    .line 155
    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/e/g;->f:Landroidx/media2/exoplayer/external/util/o;

    const/16 v6, 0xd

    invoke-virtual {v5, v6}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v5

    const/4 v6, 0x6

    if-gt v5, v6, :cond_3

    return v1

    :cond_3
    add-int/lit8 v6, v5, -0x6

    .line 160
    invoke-interface {p1, v6}, Landroidx/media2/exoplayer/external/extractor/h;->c(I)V

    add-int/2addr v4, v5

    goto :goto_1
.end method
