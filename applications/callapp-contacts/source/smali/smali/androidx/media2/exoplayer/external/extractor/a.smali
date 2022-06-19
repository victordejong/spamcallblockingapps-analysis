.class public abstract Landroidx/media2/exoplayer/external/extractor/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/extractor/a$a;,
        Landroidx/media2/exoplayer/external/extractor/a$e;,
        Landroidx/media2/exoplayer/external/extractor/a$c;,
        Landroidx/media2/exoplayer/external/extractor/a$d;,
        Landroidx/media2/exoplayer/external/extractor/a$b;,
        Landroidx/media2/exoplayer/external/extractor/a$f;
    }
.end annotation


# instance fields
.field protected final a:Landroidx/media2/exoplayer/external/extractor/a$a;

.field protected final b:Landroidx/media2/exoplayer/external/extractor/a$f;

.field protected c:Landroidx/media2/exoplayer/external/extractor/a$c;

.field private final d:I


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/extractor/a$d;Landroidx/media2/exoplayer/external/extractor/a$f;JJJJJJI)V
    .locals 16

    move-object/from16 v0, p0

    .line 155
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v1, p2

    .line 156
    iput-object v1, v0, Landroidx/media2/exoplayer/external/extractor/a;->b:Landroidx/media2/exoplayer/external/extractor/a$f;

    move/from16 v1, p15

    .line 157
    iput v1, v0, Landroidx/media2/exoplayer/external/extractor/a;->d:I

    .line 158
    new-instance v15, Landroidx/media2/exoplayer/external/extractor/a$a;

    move-object v1, v15

    move-object/from16 v2, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-wide/from16 v13, p13

    invoke-direct/range {v1 .. v14}, Landroidx/media2/exoplayer/external/extractor/a$a;-><init>(Landroidx/media2/exoplayer/external/extractor/a$d;JJJJJJ)V

    iput-object v15, v0, Landroidx/media2/exoplayer/external/extractor/a;->a:Landroidx/media2/exoplayer/external/extractor/a$a;

    return-void
.end method

.method private static a(Landroidx/media2/exoplayer/external/extractor/h;JLandroidx/media2/exoplayer/external/extractor/n;)I
    .locals 2

    .line 288
    invoke-interface {p0}, Landroidx/media2/exoplayer/external/extractor/h;->c()J

    move-result-wide v0

    cmp-long p0, p1, v0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 291
    :cond_0
    iput-wide p1, p3, Landroidx/media2/exoplayer/external/extractor/n;->a:J

    const/4 p0, 0x1

    return p0
.end method

.method private static a(Landroidx/media2/exoplayer/external/extractor/h;J)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 278
    invoke-interface {p0}, Landroidx/media2/exoplayer/external/extractor/h;->c()J

    move-result-wide v0

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const-wide/32 v0, 0x40000

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    long-to-int p2, p1

    .line 280
    invoke-interface {p0, p2}, Landroidx/media2/exoplayer/external/extractor/h;->b(I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private c()V
    .locals 1

    const/4 v0, 0x0

    .line 267
    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/a;->c:Landroidx/media2/exoplayer/external/extractor/a$c;

    .line 268
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/a;->b:Landroidx/media2/exoplayer/external/extractor/a$f;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/extractor/a$f;->a()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/exoplayer/external/extractor/h;Landroidx/media2/exoplayer/external/extractor/n;)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/a;->b:Landroidx/media2/exoplayer/external/extractor/a$f;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/extractor/a$f;

    .line 210
    :goto_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/a;->c:Landroidx/media2/exoplayer/external/extractor/a$c;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/extractor/a$c;

    .line 8374
    iget-wide v2, v1, Landroidx/media2/exoplayer/external/extractor/a$c;->e:J

    .line 9382
    iget-wide v4, v1, Landroidx/media2/exoplayer/external/extractor/a$c;->f:J

    .line 10411
    iget-wide v6, v1, Landroidx/media2/exoplayer/external/extractor/a$c;->g:J

    sub-long/2addr v4, v2

    .line 215
    iget v8, p0, Landroidx/media2/exoplayer/external/extractor/a;->d:I

    int-to-long v8, v8

    cmp-long v10, v4, v8

    if-gtz v10, :cond_0

    .line 217
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/a;->c()V

    .line 218
    invoke-static {p1, v2, v3, p2}, Landroidx/media2/exoplayer/external/extractor/a;->a(Landroidx/media2/exoplayer/external/extractor/h;JLandroidx/media2/exoplayer/external/extractor/n;)I

    move-result p1

    return p1

    .line 220
    :cond_0
    invoke-static {p1, v6, v7}, Landroidx/media2/exoplayer/external/extractor/a;->a(Landroidx/media2/exoplayer/external/extractor/h;J)Z

    move-result v2

    if-nez v2, :cond_1

    .line 221
    invoke-static {p1, v6, v7, p2}, Landroidx/media2/exoplayer/external/extractor/a;->a(Landroidx/media2/exoplayer/external/extractor/h;JLandroidx/media2/exoplayer/external/extractor/n;)I

    move-result p1

    return p1

    .line 224
    :cond_1
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/h;->a()V

    .line 11387
    iget-wide v2, v1, Landroidx/media2/exoplayer/external/extractor/a$c;->b:J

    .line 226
    invoke-interface {v0, p1, v2, v3}, Landroidx/media2/exoplayer/external/extractor/a$f;->a(Landroidx/media2/exoplayer/external/extractor/h;J)Landroidx/media2/exoplayer/external/extractor/a$e;

    move-result-object v2

    .line 229
    invoke-static {v2}, Landroidx/media2/exoplayer/external/extractor/a$e;->a(Landroidx/media2/exoplayer/external/extractor/a$e;)I

    move-result v3

    const/4 v4, -0x3

    if-eq v3, v4, :cond_5

    const/4 v4, -0x2

    if-eq v3, v4, :cond_4

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    if-nez v3, :cond_2

    .line 240
    invoke-static {v2}, Landroidx/media2/exoplayer/external/extractor/a$e;->c(Landroidx/media2/exoplayer/external/extractor/a$e;)J

    .line 239
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/a;->c()V

    .line 241
    invoke-static {v2}, Landroidx/media2/exoplayer/external/extractor/a$e;->c(Landroidx/media2/exoplayer/external/extractor/a$e;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Landroidx/media2/exoplayer/external/extractor/a;->a(Landroidx/media2/exoplayer/external/extractor/h;J)Z

    .line 243
    invoke-static {v2}, Landroidx/media2/exoplayer/external/extractor/a$e;->c(Landroidx/media2/exoplayer/external/extractor/a$e;)J

    move-result-wide v0

    .line 242
    invoke-static {p1, v0, v1, p2}, Landroidx/media2/exoplayer/external/extractor/a;->a(Landroidx/media2/exoplayer/external/extractor/h;JLandroidx/media2/exoplayer/external/extractor/n;)I

    move-result p1

    return p1

    .line 250
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Invalid case"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 232
    :cond_3
    invoke-static {v2}, Landroidx/media2/exoplayer/external/extractor/a$e;->b(Landroidx/media2/exoplayer/external/extractor/a$e;)J

    move-result-wide v3

    invoke-static {v2}, Landroidx/media2/exoplayer/external/extractor/a$e;->c(Landroidx/media2/exoplayer/external/extractor/a$e;)J

    move-result-wide v5

    .line 12404
    iput-wide v3, v1, Landroidx/media2/exoplayer/external/extractor/a$c;->d:J

    .line 12405
    iput-wide v5, v1, Landroidx/media2/exoplayer/external/extractor/a$c;->f:J

    .line 12406
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/extractor/a$c;->a()V

    goto :goto_0

    .line 236
    :cond_4
    invoke-static {v2}, Landroidx/media2/exoplayer/external/extractor/a$e;->b(Landroidx/media2/exoplayer/external/extractor/a$e;)J

    move-result-wide v3

    invoke-static {v2}, Landroidx/media2/exoplayer/external/extractor/a$e;->c(Landroidx/media2/exoplayer/external/extractor/a$e;)J

    move-result-wide v5

    .line 13397
    iput-wide v3, v1, Landroidx/media2/exoplayer/external/extractor/a$c;->c:J

    .line 13398
    iput-wide v5, v1, Landroidx/media2/exoplayer/external/extractor/a$c;->e:J

    .line 13399
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/extractor/a$c;->a()V

    goto :goto_0

    .line 247
    :cond_5
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/a;->c()V

    .line 248
    invoke-static {p1, v6, v7, p2}, Landroidx/media2/exoplayer/external/extractor/a;->a(Landroidx/media2/exoplayer/external/extractor/h;JLandroidx/media2/exoplayer/external/extractor/n;)I

    move-result p1

    return p1
.end method

.method public final a()Landroidx/media2/exoplayer/external/extractor/o;
    .locals 1

    .line 171
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/a;->a:Landroidx/media2/exoplayer/external/extractor/a$a;

    return-object v0
.end method

.method public final a(J)V
    .locals 19

    move-object/from16 v0, p0

    move-wide/from16 v2, p1

    .line 180
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/a;->c:Landroidx/media2/exoplayer/external/extractor/a$c;

    if-eqz v1, :cond_0

    .line 1392
    iget-wide v4, v1, Landroidx/media2/exoplayer/external/extractor/a$c;->a:J

    cmp-long v1, v4, v2

    if-nez v1, :cond_0

    return-void

    .line 2256
    :cond_0
    new-instance v14, Landroidx/media2/exoplayer/external/extractor/a$c;

    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/a;->a:Landroidx/media2/exoplayer/external/extractor/a$a;

    .line 2572
    iget-object v1, v1, Landroidx/media2/exoplayer/external/extractor/a$a;->a:Landroidx/media2/exoplayer/external/extractor/a$d;

    invoke-interface {v1, v2, v3}, Landroidx/media2/exoplayer/external/extractor/a$d;->a(J)J

    move-result-wide v4

    .line 2258
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/a;->a:Landroidx/media2/exoplayer/external/extractor/a$a;

    .line 3520
    iget-wide v6, v1, Landroidx/media2/exoplayer/external/extractor/a$a;->b:J

    .line 2259
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/a;->a:Landroidx/media2/exoplayer/external/extractor/a$a;

    .line 4520
    iget-wide v8, v1, Landroidx/media2/exoplayer/external/extractor/a$a;->c:J

    .line 2260
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/a;->a:Landroidx/media2/exoplayer/external/extractor/a$a;

    .line 5520
    iget-wide v10, v1, Landroidx/media2/exoplayer/external/extractor/a$a;->d:J

    .line 2261
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/a;->a:Landroidx/media2/exoplayer/external/extractor/a$a;

    .line 6520
    iget-wide v12, v1, Landroidx/media2/exoplayer/external/extractor/a$a;->e:J

    .line 2262
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/a;->a:Landroidx/media2/exoplayer/external/extractor/a$a;

    move-wide v15, v12

    .line 7520
    iget-wide v12, v1, Landroidx/media2/exoplayer/external/extractor/a$a;->f:J

    move-object v1, v14

    move-wide/from16 v2, p1

    move-wide/from16 v17, v12

    move-wide v12, v15

    move-object v0, v14

    move-wide/from16 v14, v17

    .line 2263
    invoke-direct/range {v1 .. v15}, Landroidx/media2/exoplayer/external/extractor/a$c;-><init>(JJJJJJJ)V

    move-object v1, v0

    move-object/from16 v0, p0

    .line 183
    iput-object v1, v0, Landroidx/media2/exoplayer/external/extractor/a;->c:Landroidx/media2/exoplayer/external/extractor/a$c;

    return-void
.end method

.method public final b()Z
    .locals 1

    .line 188
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/a;->c:Landroidx/media2/exoplayer/external/extractor/a$c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
