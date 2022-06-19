.class public abstract Lcom/google/android/exoplayer2/extractor/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/a$a;,
        Lcom/google/android/exoplayer2/extractor/a$e;,
        Lcom/google/android/exoplayer2/extractor/a$c;,
        Lcom/google/android/exoplayer2/extractor/a$d;,
        Lcom/google/android/exoplayer2/extractor/a$b;,
        Lcom/google/android/exoplayer2/extractor/a$f;
    }
.end annotation


# instance fields
.field protected final a:Lcom/google/android/exoplayer2/extractor/a$a;

.field protected final b:Lcom/google/android/exoplayer2/extractor/a$f;

.field protected c:Lcom/google/android/exoplayer2/extractor/a$c;

.field private final d:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/a$d;Lcom/google/android/exoplayer2/extractor/a$f;JJJJJJI)V
    .locals 16

    move-object/from16 v0, p0

    .line 126
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v1, p2

    .line 127
    iput-object v1, v0, Lcom/google/android/exoplayer2/extractor/a;->b:Lcom/google/android/exoplayer2/extractor/a$f;

    move/from16 v1, p15

    .line 128
    iput v1, v0, Lcom/google/android/exoplayer2/extractor/a;->d:I

    .line 129
    new-instance v15, Lcom/google/android/exoplayer2/extractor/a$a;

    move-object v1, v15

    move-object/from16 v2, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-wide/from16 v13, p13

    invoke-direct/range {v1 .. v14}, Lcom/google/android/exoplayer2/extractor/a$a;-><init>(Lcom/google/android/exoplayer2/extractor/a$d;JJJJJJ)V

    iput-object v15, v0, Lcom/google/android/exoplayer2/extractor/a;->a:Lcom/google/android/exoplayer2/extractor/a$a;

    return-void
.end method

.method private static a(Lcom/google/android/exoplayer2/extractor/i;JLcom/google/android/exoplayer2/extractor/u;)I
    .locals 2

    .line 253
    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/i;->c()J

    move-result-wide v0

    cmp-long p0, p1, v0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 256
    :cond_0
    iput-wide p1, p3, Lcom/google/android/exoplayer2/extractor/u;->a:J

    const/4 p0, 0x1

    return p0
.end method

.method private static a(Lcom/google/android/exoplayer2/extractor/i;J)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/i;->c()J

    move-result-wide v0

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const-wide/32 v0, 0x40000

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    long-to-int p2, p1

    .line 245
    invoke-interface {p0, p2}, Lcom/google/android/exoplayer2/extractor/i;->b(I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private c()V
    .locals 1

    const/4 v0, 0x0

    .line 232
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/a;->c:Lcom/google/android/exoplayer2/extractor/a$c;

    .line 233
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a;->b:Lcom/google/android/exoplayer2/extractor/a$f;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/a$f;->a()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/extractor/i;Lcom/google/android/exoplayer2/extractor/u;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a;->c:Lcom/google/android/exoplayer2/extractor/a$c;

    .line 176
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/a$c;

    .line 8339
    iget-wide v1, v0, Lcom/google/android/exoplayer2/extractor/a$c;->e:J

    .line 9347
    iget-wide v3, v0, Lcom/google/android/exoplayer2/extractor/a$c;->f:J

    .line 10376
    iget-wide v5, v0, Lcom/google/android/exoplayer2/extractor/a$c;->g:J

    sub-long/2addr v3, v1

    .line 181
    iget v7, p0, Lcom/google/android/exoplayer2/extractor/a;->d:I

    int-to-long v7, v7

    cmp-long v9, v3, v7

    if-gtz v9, :cond_0

    .line 183
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/a;->c()V

    .line 184
    invoke-static {p1, v1, v2, p2}, Lcom/google/android/exoplayer2/extractor/a;->a(Lcom/google/android/exoplayer2/extractor/i;JLcom/google/android/exoplayer2/extractor/u;)I

    move-result p1

    return p1

    .line 186
    :cond_0
    invoke-static {p1, v5, v6}, Lcom/google/android/exoplayer2/extractor/a;->a(Lcom/google/android/exoplayer2/extractor/i;J)Z

    move-result v1

    if-nez v1, :cond_1

    .line 187
    invoke-static {p1, v5, v6, p2}, Lcom/google/android/exoplayer2/extractor/a;->a(Lcom/google/android/exoplayer2/extractor/i;JLcom/google/android/exoplayer2/extractor/u;)I

    move-result p1

    return p1

    .line 190
    :cond_1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/i;->a()V

    .line 191
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/a;->b:Lcom/google/android/exoplayer2/extractor/a$f;

    .line 11352
    iget-wide v2, v0, Lcom/google/android/exoplayer2/extractor/a$c;->b:J

    .line 192
    invoke-interface {v1, p1, v2, v3}, Lcom/google/android/exoplayer2/extractor/a$f;->a(Lcom/google/android/exoplayer2/extractor/i;J)Lcom/google/android/exoplayer2/extractor/a$e;

    move-result-object v1

    .line 194
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/a$e;->a(Lcom/google/android/exoplayer2/extractor/a$e;)I

    move-result v2

    const/4 v3, -0x3

    if-eq v2, v3, :cond_5

    const/4 v3, -0x2

    if-eq v2, v3, :cond_4

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    if-nez v2, :cond_2

    .line 204
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/a$e;->c(Lcom/google/android/exoplayer2/extractor/a$e;)J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lcom/google/android/exoplayer2/extractor/a;->a(Lcom/google/android/exoplayer2/extractor/i;J)Z

    .line 206
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/a$e;->c(Lcom/google/android/exoplayer2/extractor/a$e;)J

    .line 205
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/a;->c()V

    .line 208
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/a$e;->c(Lcom/google/android/exoplayer2/extractor/a$e;)J

    move-result-wide v0

    .line 207
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/exoplayer2/extractor/a;->a(Lcom/google/android/exoplayer2/extractor/i;JLcom/google/android/exoplayer2/extractor/u;)I

    move-result p1

    return p1

    .line 215
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Invalid case"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 197
    :cond_3
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/a$e;->b(Lcom/google/android/exoplayer2/extractor/a$e;)J

    move-result-wide v2

    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/a$e;->c(Lcom/google/android/exoplayer2/extractor/a$e;)J

    move-result-wide v4

    .line 12369
    iput-wide v2, v0, Lcom/google/android/exoplayer2/extractor/a$c;->d:J

    .line 12370
    iput-wide v4, v0, Lcom/google/android/exoplayer2/extractor/a$c;->f:J

    .line 12371
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/a$c;->a()V

    goto :goto_0

    .line 201
    :cond_4
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/a$e;->b(Lcom/google/android/exoplayer2/extractor/a$e;)J

    move-result-wide v2

    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/a$e;->c(Lcom/google/android/exoplayer2/extractor/a$e;)J

    move-result-wide v4

    .line 13362
    iput-wide v2, v0, Lcom/google/android/exoplayer2/extractor/a$c;->c:J

    .line 13363
    iput-wide v4, v0, Lcom/google/android/exoplayer2/extractor/a$c;->e:J

    .line 13364
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/a$c;->a()V

    goto/16 :goto_0

    .line 212
    :cond_5
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/a;->c()V

    .line 213
    invoke-static {p1, v5, v6, p2}, Lcom/google/android/exoplayer2/extractor/a;->a(Lcom/google/android/exoplayer2/extractor/i;JLcom/google/android/exoplayer2/extractor/u;)I

    move-result p1

    return p1
.end method

.method public final a()Lcom/google/android/exoplayer2/extractor/v;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a;->a:Lcom/google/android/exoplayer2/extractor/a$a;

    return-object v0
.end method

.method public final a(J)V
    .locals 19

    move-object/from16 v0, p0

    move-wide/from16 v2, p1

    .line 151
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/a;->c:Lcom/google/android/exoplayer2/extractor/a$c;

    if-eqz v1, :cond_0

    .line 1357
    iget-wide v4, v1, Lcom/google/android/exoplayer2/extractor/a$c;->a:J

    cmp-long v1, v4, v2

    if-nez v1, :cond_0

    return-void

    .line 2221
    :cond_0
    new-instance v14, Lcom/google/android/exoplayer2/extractor/a$c;

    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/a;->a:Lcom/google/android/exoplayer2/extractor/a$a;

    .line 2533
    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/a$a;->a:Lcom/google/android/exoplayer2/extractor/a$d;

    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/a$d;->timeUsToTargetTime(J)J

    move-result-wide v4

    .line 2223
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/a;->a:Lcom/google/android/exoplayer2/extractor/a$a;

    .line 3481
    iget-wide v6, v1, Lcom/google/android/exoplayer2/extractor/a$a;->b:J

    .line 2224
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/a;->a:Lcom/google/android/exoplayer2/extractor/a$a;

    .line 4481
    iget-wide v8, v1, Lcom/google/android/exoplayer2/extractor/a$a;->c:J

    .line 2225
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/a;->a:Lcom/google/android/exoplayer2/extractor/a$a;

    .line 5481
    iget-wide v10, v1, Lcom/google/android/exoplayer2/extractor/a$a;->d:J

    .line 2226
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/a;->a:Lcom/google/android/exoplayer2/extractor/a$a;

    .line 6481
    iget-wide v12, v1, Lcom/google/android/exoplayer2/extractor/a$a;->e:J

    .line 2227
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/a;->a:Lcom/google/android/exoplayer2/extractor/a$a;

    move-wide v15, v12

    .line 7481
    iget-wide v12, v1, Lcom/google/android/exoplayer2/extractor/a$a;->f:J

    move-object v1, v14

    move-wide/from16 v2, p1

    move-wide/from16 v17, v12

    move-wide v12, v15

    move-object v0, v14

    move-wide/from16 v14, v17

    .line 2228
    invoke-direct/range {v1 .. v15}, Lcom/google/android/exoplayer2/extractor/a$c;-><init>(JJJJJJJ)V

    move-object v1, v0

    move-object/from16 v0, p0

    .line 154
    iput-object v1, v0, Lcom/google/android/exoplayer2/extractor/a;->c:Lcom/google/android/exoplayer2/extractor/a$c;

    return-void
.end method

.method public final b()Z
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a;->c:Lcom/google/android/exoplayer2/extractor/a$c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
