.class final Landroidx/media2/exoplayer/external/extractor/d/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/d/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/extractor/d/a$a;
    }
.end annotation


# instance fields
.field final a:J

.field final b:J

.field final c:Landroidx/media2/exoplayer/external/extractor/d/i;

.field d:J

.field private final e:Landroidx/media2/exoplayer/external/extractor/d/f;

.field private f:I

.field private g:J

.field private h:J

.field private i:J

.field private j:J

.field private k:J

.field private l:J


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/extractor/d/i;JJJJZ)V
    .locals 4

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/d/f;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/extractor/d/f;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/d/a;->e:Landroidx/media2/exoplayer/external/extractor/d/f;

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-ltz v3, :cond_0

    cmp-long v1, p4, p2

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 82
    :goto_0
    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/a;->a(Z)V

    .line 84
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/d/a;->c:Landroidx/media2/exoplayer/external/extractor/d/i;

    .line 85
    iput-wide p2, p0, Landroidx/media2/exoplayer/external/extractor/d/a;->a:J

    .line 86
    iput-wide p4, p0, Landroidx/media2/exoplayer/external/extractor/d/a;->b:J

    sub-long/2addr p4, p2

    cmp-long p1, p6, p4

    if-eqz p1, :cond_2

    if-eqz p10, :cond_1

    goto :goto_1

    .line 92
    :cond_1
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/d/a;->f:I

    return-void

    .line 89
    :cond_2
    :goto_1
    iput-wide p8, p0, Landroidx/media2/exoplayer/external/extractor/d/a;->d:J

    const/4 p1, 0x4

    .line 90
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/d/a;->f:I

    return-void
.end method

.method private a(Landroidx/media2/exoplayer/external/extractor/h;J)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-wide/16 v0, 0x3

    add-long/2addr p2, v0

    .line 248
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/d/a;->b:J

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    const/16 v0, 0x800

    new-array v1, v0, [B

    .line 252
    :goto_0
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/h;->c()J

    move-result-wide v2

    int-to-long v4, v0

    add-long/2addr v2, v4

    const/4 v4, 0x0

    cmp-long v5, v2, p2

    if-lez v5, :cond_0

    .line 254
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/h;->c()J

    move-result-wide v2

    sub-long v2, p2, v2

    long-to-int v0, v2

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    return v4

    .line 260
    :cond_0
    invoke-interface {p1, v1, v4, v0, v4}, Landroidx/media2/exoplayer/external/extractor/h;->b([BIIZ)Z

    :goto_1
    add-int/lit8 v2, v0, -0x3

    if-ge v4, v2, :cond_2

    .line 262
    aget-byte v2, v1, v4

    const/16 v3, 0x4f

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v4, 0x1

    aget-byte v2, v1, v2

    const/16 v3, 0x67

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v4, 0x2

    aget-byte v2, v1, v2

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v4, 0x3

    aget-byte v2, v1, v2

    const/16 v3, 0x53

    if-ne v2, v3, :cond_1

    .line 267
    invoke-interface {p1, v4}, Landroidx/media2/exoplayer/external/extractor/h;->b(I)V

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 272
    :cond_2
    invoke-interface {p1, v2}, Landroidx/media2/exoplayer/external/extractor/h;->b(I)V

    goto :goto_0
.end method

.method private b(Landroidx/media2/exoplayer/external/extractor/h;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 211
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/d/a;->e:Landroidx/media2/exoplayer/external/extractor/d/f;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/media2/exoplayer/external/extractor/d/f;->a(Landroidx/media2/exoplayer/external/extractor/h;Z)Z

    .line 212
    :goto_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/d/a;->e:Landroidx/media2/exoplayer/external/extractor/d/f;

    iget-wide v2, v0, Landroidx/media2/exoplayer/external/extractor/d/f;->c:J

    iget-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/d/a;->h:J

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    .line 213
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/d/a;->e:Landroidx/media2/exoplayer/external/extractor/d/f;

    iget v0, v0, Landroidx/media2/exoplayer/external/extractor/d/f;->h:I

    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/d/a;->e:Landroidx/media2/exoplayer/external/extractor/d/f;

    iget v2, v2, Landroidx/media2/exoplayer/external/extractor/d/f;->i:I

    add-int/2addr v0, v2

    invoke-interface {p1, v0}, Landroidx/media2/exoplayer/external/extractor/h;->b(I)V

    .line 214
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/h;->c()J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/media2/exoplayer/external/extractor/d/a;->i:J

    .line 215
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/d/a;->e:Landroidx/media2/exoplayer/external/extractor/d/f;

    iget-wide v2, v0, Landroidx/media2/exoplayer/external/extractor/d/f;->c:J

    iput-wide v2, p0, Landroidx/media2/exoplayer/external/extractor/d/a;->k:J

    .line 216
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/d/a;->e:Landroidx/media2/exoplayer/external/extractor/d/f;

    invoke-virtual {v0, p1, v1}, Landroidx/media2/exoplayer/external/extractor/d/f;->a(Landroidx/media2/exoplayer/external/extractor/h;Z)Z

    goto :goto_0

    .line 218
    :cond_0
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/h;->a()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/exoplayer/external/extractor/h;)J
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 98
    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/d/a;->f:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x4

    if-eqz v2, :cond_b

    if-eq v2, v4, :cond_c

    const/4 v4, 0x2

    const/4 v8, 0x3

    const-wide/16 v9, -0x1

    if-eq v2, v4, :cond_1

    if-eq v2, v8, :cond_a

    if-ne v2, v5, :cond_0

    return-wide v9

    .line 127
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 3159
    :cond_1
    iget-wide v11, v0, Landroidx/media2/exoplayer/external/extractor/d/a;->i:J

    iget-wide v13, v0, Landroidx/media2/exoplayer/external/extractor/d/a;->j:J

    cmp-long v2, v11, v13

    if-nez v2, :cond_2

    :goto_0
    move-wide v2, v9

    move-wide v4, v2

    goto/16 :goto_3

    .line 3163
    :cond_2
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/h;->c()J

    move-result-wide v11

    .line 3164
    iget-wide v13, v0, Landroidx/media2/exoplayer/external/extractor/d/a;->j:J

    invoke-direct {v0, v1, v13, v14}, Landroidx/media2/exoplayer/external/extractor/d/a;->a(Landroidx/media2/exoplayer/external/extractor/h;J)Z

    move-result v2

    if-nez v2, :cond_4

    .line 3165
    iget-wide v2, v0, Landroidx/media2/exoplayer/external/extractor/d/a;->i:J

    cmp-long v4, v2, v11

    if-eqz v4, :cond_3

    move-wide v4, v9

    goto/16 :goto_3

    .line 3166
    :cond_3
    new-instance v1, Ljava/io/IOException;

    const-string v2, "No ogg page can be found."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3171
    :cond_4
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/d/a;->e:Landroidx/media2/exoplayer/external/extractor/d/f;

    invoke-virtual {v2, v1, v3}, Landroidx/media2/exoplayer/external/extractor/d/f;->a(Landroidx/media2/exoplayer/external/extractor/h;Z)Z

    .line 3172
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/h;->a()V

    .line 3174
    iget-wide v2, v0, Landroidx/media2/exoplayer/external/extractor/d/a;->h:J

    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/d/a;->e:Landroidx/media2/exoplayer/external/extractor/d/f;

    iget-wide v13, v4, Landroidx/media2/exoplayer/external/extractor/d/f;->c:J

    sub-long/2addr v2, v13

    .line 3175
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/d/a;->e:Landroidx/media2/exoplayer/external/extractor/d/f;

    iget v4, v4, Landroidx/media2/exoplayer/external/extractor/d/f;->h:I

    iget-object v13, v0, Landroidx/media2/exoplayer/external/extractor/d/a;->e:Landroidx/media2/exoplayer/external/extractor/d/f;

    iget v13, v13, Landroidx/media2/exoplayer/external/extractor/d/f;->i:I

    add-int/2addr v4, v13

    const-wide/16 v13, 0x0

    cmp-long v15, v13, v2

    if-gtz v15, :cond_5

    const-wide/32 v15, 0x11940

    cmp-long v17, v2, v15

    if-gez v17, :cond_5

    goto :goto_0

    :cond_5
    cmp-long v15, v2, v13

    if-gez v15, :cond_6

    .line 3181
    iput-wide v11, v0, Landroidx/media2/exoplayer/external/extractor/d/a;->j:J

    .line 3182
    iget-object v11, v0, Landroidx/media2/exoplayer/external/extractor/d/a;->e:Landroidx/media2/exoplayer/external/extractor/d/f;

    iget-wide v11, v11, Landroidx/media2/exoplayer/external/extractor/d/f;->c:J

    iput-wide v11, v0, Landroidx/media2/exoplayer/external/extractor/d/a;->l:J

    goto :goto_1

    .line 3184
    :cond_6
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/h;->c()J

    move-result-wide v11

    int-to-long v13, v4

    add-long/2addr v11, v13

    iput-wide v11, v0, Landroidx/media2/exoplayer/external/extractor/d/a;->i:J

    .line 3185
    iget-object v11, v0, Landroidx/media2/exoplayer/external/extractor/d/a;->e:Landroidx/media2/exoplayer/external/extractor/d/f;

    iget-wide v11, v11, Landroidx/media2/exoplayer/external/extractor/d/f;->c:J

    iput-wide v11, v0, Landroidx/media2/exoplayer/external/extractor/d/a;->k:J

    .line 3188
    :goto_1
    iget-wide v11, v0, Landroidx/media2/exoplayer/external/extractor/d/a;->j:J

    iget-wide v13, v0, Landroidx/media2/exoplayer/external/extractor/d/a;->i:J

    sub-long/2addr v11, v13

    const-wide/32 v16, 0x186a0

    cmp-long v18, v11, v16

    if-gez v18, :cond_7

    .line 3189
    iput-wide v13, v0, Landroidx/media2/exoplayer/external/extractor/d/a;->j:J

    move-wide v4, v9

    move-wide v2, v13

    goto :goto_3

    :cond_7
    int-to-long v11, v4

    const-wide/16 v13, 0x1

    if-gtz v15, :cond_8

    const-wide/16 v15, 0x2

    goto :goto_2

    :cond_8
    move-wide v15, v13

    :goto_2
    mul-long v11, v11, v15

    .line 3195
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/h;->c()J

    move-result-wide v15

    sub-long/2addr v15, v11

    iget-wide v11, v0, Landroidx/media2/exoplayer/external/extractor/d/a;->j:J

    iget-wide v6, v0, Landroidx/media2/exoplayer/external/extractor/d/a;->i:J

    sub-long v17, v11, v6

    mul-long v2, v2, v17

    iget-wide v8, v0, Landroidx/media2/exoplayer/external/extractor/d/a;->l:J

    iget-wide v4, v0, Landroidx/media2/exoplayer/external/extractor/d/a;->k:J

    sub-long/2addr v8, v4

    div-long/2addr v2, v8

    add-long v17, v15, v2

    sub-long v21, v11, v13

    move-wide/from16 v19, v6

    .line 3198
    invoke-static/range {v17 .. v22}, Landroidx/media2/exoplayer/external/util/ac;->a(JJJ)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    :goto_3
    cmp-long v6, v2, v4

    if-eqz v6, :cond_9

    return-wide v2

    :cond_9
    const/4 v2, 0x3

    .line 119
    iput v2, v0, Landroidx/media2/exoplayer/external/extractor/d/a;->f:I

    .line 122
    :cond_a
    invoke-direct/range {p0 .. p1}, Landroidx/media2/exoplayer/external/extractor/d/a;->b(Landroidx/media2/exoplayer/external/extractor/h;)V

    const/4 v1, 0x4

    .line 123
    iput v1, v0, Landroidx/media2/exoplayer/external/extractor/d/a;->f:I

    .line 124
    iget-wide v1, v0, Landroidx/media2/exoplayer/external/extractor/d/a;->k:J

    const-wide/16 v3, 0x2

    add-long/2addr v1, v3

    neg-long v1, v1

    return-wide v1

    .line 102
    :cond_b
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/h;->c()J

    move-result-wide v5

    iput-wide v5, v0, Landroidx/media2/exoplayer/external/extractor/d/a;->g:J

    .line 103
    iput v4, v0, Landroidx/media2/exoplayer/external/extractor/d/a;->f:I

    .line 105
    iget-wide v7, v0, Landroidx/media2/exoplayer/external/extractor/d/a;->b:J

    const-wide/32 v11, 0xff1b

    sub-long/2addr v7, v11

    cmp-long v2, v7, v5

    if-lez v2, :cond_c

    return-wide v7

    .line 2231
    :cond_c
    iget-wide v4, v0, Landroidx/media2/exoplayer/external/extractor/d/a;->b:J

    invoke-direct {v0, v1, v4, v5}, Landroidx/media2/exoplayer/external/extractor/d/a;->a(Landroidx/media2/exoplayer/external/extractor/h;J)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1288
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/d/a;->e:Landroidx/media2/exoplayer/external/extractor/d/f;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/extractor/d/f;->a()V

    .line 1289
    :goto_4
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/d/a;->e:Landroidx/media2/exoplayer/external/extractor/d/f;

    iget v2, v2, Landroidx/media2/exoplayer/external/extractor/d/f;->b:I

    const/4 v4, 0x4

    and-int/2addr v2, v4

    if-eq v2, v4, :cond_d

    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/h;->c()J

    move-result-wide v4

    iget-wide v6, v0, Landroidx/media2/exoplayer/external/extractor/d/a;->b:J

    cmp-long v2, v4, v6

    if-gez v2, :cond_d

    .line 1290
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/d/a;->e:Landroidx/media2/exoplayer/external/extractor/d/f;

    invoke-virtual {v2, v1, v3}, Landroidx/media2/exoplayer/external/extractor/d/f;->a(Landroidx/media2/exoplayer/external/extractor/h;Z)Z

    .line 1291
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/d/a;->e:Landroidx/media2/exoplayer/external/extractor/d/f;

    iget v2, v2, Landroidx/media2/exoplayer/external/extractor/d/f;->h:I

    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/d/a;->e:Landroidx/media2/exoplayer/external/extractor/d/f;

    iget v4, v4, Landroidx/media2/exoplayer/external/extractor/d/f;->i:I

    add-int/2addr v2, v4

    invoke-interface {v1, v2}, Landroidx/media2/exoplayer/external/extractor/h;->b(I)V

    goto :goto_4

    .line 1293
    :cond_d
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/d/a;->e:Landroidx/media2/exoplayer/external/extractor/d/f;

    iget-wide v1, v1, Landroidx/media2/exoplayer/external/extractor/d/f;->c:J

    .line 111
    iput-wide v1, v0, Landroidx/media2/exoplayer/external/extractor/d/a;->d:J

    const/4 v1, 0x4

    .line 112
    iput v1, v0, Landroidx/media2/exoplayer/external/extractor/d/a;->f:I

    .line 113
    iget-wide v1, v0, Landroidx/media2/exoplayer/external/extractor/d/a;->g:J

    return-wide v1

    .line 2233
    :cond_e
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method public final synthetic a()Landroidx/media2/exoplayer/external/extractor/o;
    .locals 6

    .line 4133
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/d/a;->d:J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-eqz v5, :cond_0

    new-instance v0, Landroidx/media2/exoplayer/external/extractor/d/a$a;

    invoke-direct {v0, p0, v2}, Landroidx/media2/exoplayer/external/extractor/d/a$a;-><init>(Landroidx/media2/exoplayer/external/extractor/d/a;Landroidx/media2/exoplayer/external/extractor/d/a$1;)V

    return-object v0

    :cond_0
    return-object v2
.end method

.method public final a_(J)V
    .locals 10

    .line 138
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/d/a;->d:J

    const-wide/16 v2, 0x1

    sub-long v8, v0, v2

    const-wide/16 v6, 0x0

    move-wide v4, p1

    invoke-static/range {v4 .. v9}, Landroidx/media2/exoplayer/external/util/ac;->a(JJJ)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/d/a;->h:J

    const/4 p1, 0x2

    .line 139
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/d/a;->f:I

    .line 140
    iget-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/d/a;->a:J

    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/d/a;->i:J

    .line 141
    iget-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/d/a;->b:J

    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/d/a;->j:J

    const-wide/16 p1, 0x0

    .line 142
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/d/a;->k:J

    .line 143
    iget-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/d/a;->d:J

    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/d/a;->l:J

    return-void
.end method
