.class abstract Landroidx/media2/exoplayer/external/extractor/d/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/extractor/d/i$b;,
        Landroidx/media2/exoplayer/external/extractor/d/i$a;
    }
.end annotation


# instance fields
.field private final a:Landroidx/media2/exoplayer/external/extractor/d/e;

.field b:J

.field c:I

.field private d:Landroidx/media2/exoplayer/external/extractor/q;

.field private e:Landroidx/media2/exoplayer/external/extractor/i;

.field private f:Landroidx/media2/exoplayer/external/extractor/d/g;

.field private g:J

.field private h:J

.field private i:I

.field private j:Landroidx/media2/exoplayer/external/extractor/d/i$a;

.field private k:J

.field private l:Z

.field private m:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/d/e;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/extractor/d/e;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/d/i;->a:Landroidx/media2/exoplayer/external/extractor/d/e;

    return-void
.end method


# virtual methods
.method final a(Landroidx/media2/exoplayer/external/extractor/h;)I
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v11, p0

    const/4 v0, 0x1

    const/4 v1, 0x1

    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 132
    iget-object v1, v11, Landroidx/media2/exoplayer/external/extractor/d/i;->a:Landroidx/media2/exoplayer/external/extractor/d/e;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/extractor/d/e;->a(Landroidx/media2/exoplayer/external/extractor/h;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x3

    .line 133
    iput v0, v11, Landroidx/media2/exoplayer/external/extractor/d/i;->c:I

    const/4 v0, -0x1

    return v0

    .line 136
    :cond_1
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/h;->c()J

    move-result-wide v3

    iget-wide v5, v11, Landroidx/media2/exoplayer/external/extractor/d/i;->b:J

    sub-long/2addr v3, v5

    iput-wide v3, v11, Landroidx/media2/exoplayer/external/extractor/d/i;->k:J

    .line 138
    iget-object v1, v11, Landroidx/media2/exoplayer/external/extractor/d/i;->a:Landroidx/media2/exoplayer/external/extractor/d/e;

    .line 1127
    iget-object v1, v1, Landroidx/media2/exoplayer/external/extractor/d/e;->b:Landroidx/media2/exoplayer/external/util/p;

    .line 138
    iget-wide v3, v11, Landroidx/media2/exoplayer/external/extractor/d/i;->b:J

    iget-object v5, v11, Landroidx/media2/exoplayer/external/extractor/d/i;->j:Landroidx/media2/exoplayer/external/extractor/d/i$a;

    invoke-virtual {v11, v1, v3, v4, v5}, Landroidx/media2/exoplayer/external/extractor/d/i;->a(Landroidx/media2/exoplayer/external/util/p;JLandroidx/media2/exoplayer/external/extractor/d/i$a;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/h;->c()J

    move-result-wide v3

    iput-wide v3, v11, Landroidx/media2/exoplayer/external/extractor/d/i;->b:J

    goto :goto_0

    :cond_2
    move-object/from16 v2, p1

    .line 144
    iget-object v1, v11, Landroidx/media2/exoplayer/external/extractor/d/i;->j:Landroidx/media2/exoplayer/external/extractor/d/i$a;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/extractor/d/i$a;->a:Landroidx/media2/exoplayer/external/Format;

    iget v1, v1, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    iput v1, v11, Landroidx/media2/exoplayer/external/extractor/d/i;->i:I

    .line 145
    iget-boolean v1, v11, Landroidx/media2/exoplayer/external/extractor/d/i;->m:Z

    if-nez v1, :cond_3

    .line 146
    iget-object v1, v11, Landroidx/media2/exoplayer/external/extractor/d/i;->d:Landroidx/media2/exoplayer/external/extractor/q;

    iget-object v3, v11, Landroidx/media2/exoplayer/external/extractor/d/i;->j:Landroidx/media2/exoplayer/external/extractor/d/i$a;

    iget-object v3, v3, Landroidx/media2/exoplayer/external/extractor/d/i$a;->a:Landroidx/media2/exoplayer/external/Format;

    invoke-interface {v1, v3}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/Format;)V

    .line 147
    iput-boolean v0, v11, Landroidx/media2/exoplayer/external/extractor/d/i;->m:Z

    .line 150
    :cond_3
    iget-object v1, v11, Landroidx/media2/exoplayer/external/extractor/d/i;->j:Landroidx/media2/exoplayer/external/extractor/d/i$a;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/extractor/d/i$a;->b:Landroidx/media2/exoplayer/external/extractor/d/g;

    const/4 v12, 0x0

    const/4 v13, 0x0

    if-eqz v1, :cond_4

    .line 151
    iget-object v0, v11, Landroidx/media2/exoplayer/external/extractor/d/i;->j:Landroidx/media2/exoplayer/external/extractor/d/i$a;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/extractor/d/i$a;->b:Landroidx/media2/exoplayer/external/extractor/d/g;

    iput-object v0, v11, Landroidx/media2/exoplayer/external/extractor/d/i;->f:Landroidx/media2/exoplayer/external/extractor/d/g;

    goto :goto_2

    .line 152
    :cond_4
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/h;->d()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v1, v3, v5

    if-nez v1, :cond_5

    .line 153
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/d/i$b;

    invoke-direct {v0, v13}, Landroidx/media2/exoplayer/external/extractor/d/i$b;-><init>(Landroidx/media2/exoplayer/external/extractor/d/i$1;)V

    iput-object v0, v11, Landroidx/media2/exoplayer/external/extractor/d/i;->f:Landroidx/media2/exoplayer/external/extractor/d/g;

    goto :goto_2

    .line 155
    :cond_5
    iget-object v1, v11, Landroidx/media2/exoplayer/external/extractor/d/i;->a:Landroidx/media2/exoplayer/external/extractor/d/e;

    .line 2120
    iget-object v1, v1, Landroidx/media2/exoplayer/external/extractor/d/e;->a:Landroidx/media2/exoplayer/external/extractor/d/f;

    .line 156
    iget v3, v1, Landroidx/media2/exoplayer/external/extractor/d/f;->b:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_6

    const/4 v10, 0x1

    goto :goto_1

    :cond_6
    const/4 v10, 0x0

    .line 157
    :goto_1
    new-instance v14, Landroidx/media2/exoplayer/external/extractor/d/a;

    iget-wide v3, v11, Landroidx/media2/exoplayer/external/extractor/d/i;->b:J

    .line 161
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/h;->d()J

    move-result-wide v5

    iget v0, v1, Landroidx/media2/exoplayer/external/extractor/d/f;->h:I

    iget v2, v1, Landroidx/media2/exoplayer/external/extractor/d/f;->i:I

    add-int/2addr v0, v2

    int-to-long v7, v0

    iget-wide v1, v1, Landroidx/media2/exoplayer/external/extractor/d/f;->c:J

    move-object v0, v14

    move-wide v15, v1

    move-object/from16 v1, p0

    move-wide v2, v3

    move-wide v4, v5

    move-wide v6, v7

    move-wide v8, v15

    invoke-direct/range {v0 .. v10}, Landroidx/media2/exoplayer/external/extractor/d/a;-><init>(Landroidx/media2/exoplayer/external/extractor/d/i;JJJJZ)V

    iput-object v14, v11, Landroidx/media2/exoplayer/external/extractor/d/i;->f:Landroidx/media2/exoplayer/external/extractor/d/g;

    .line 167
    :goto_2
    iput-object v13, v11, Landroidx/media2/exoplayer/external/extractor/d/i;->j:Landroidx/media2/exoplayer/external/extractor/d/i$a;

    const/4 v0, 0x2

    .line 168
    iput v0, v11, Landroidx/media2/exoplayer/external/extractor/d/i;->c:I

    .line 170
    iget-object v0, v11, Landroidx/media2/exoplayer/external/extractor/d/i;->a:Landroidx/media2/exoplayer/external/extractor/d/e;

    .line 2134
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/d/e;->b:Landroidx/media2/exoplayer/external/util/p;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/util/p;->a:[B

    array-length v1, v1

    const v2, 0xfe01

    if-eq v1, v2, :cond_7

    .line 2137
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/d/e;->b:Landroidx/media2/exoplayer/external/util/p;

    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/d/e;->b:Landroidx/media2/exoplayer/external/util/p;

    iget-object v3, v3, Landroidx/media2/exoplayer/external/util/p;->a:[B

    iget-object v0, v0, Landroidx/media2/exoplayer/external/extractor/d/e;->b:Landroidx/media2/exoplayer/external/util/p;

    .line 3125
    iget v0, v0, Landroidx/media2/exoplayer/external/util/p;->c:I

    .line 2137
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, v1, Landroidx/media2/exoplayer/external/util/p;->a:[B

    :cond_7
    return v12
.end method

.method final a(Landroidx/media2/exoplayer/external/extractor/h;Landroidx/media2/exoplayer/external/extractor/n;)I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 176
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/d/i;->f:Landroidx/media2/exoplayer/external/extractor/d/g;

    invoke-interface {v2, v1}, Landroidx/media2/exoplayer/external/extractor/d/g;->a(Landroidx/media2/exoplayer/external/extractor/h;)J

    move-result-wide v2

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-ltz v7, :cond_0

    move-object/from16 v7, p2

    .line 178
    iput-wide v2, v7, Landroidx/media2/exoplayer/external/extractor/n;->a:J

    return v4

    :cond_0
    const-wide/16 v7, -0x1

    cmp-long v9, v2, v7

    if-gez v9, :cond_1

    const-wide/16 v9, 0x2

    add-long/2addr v2, v9

    neg-long v2, v2

    .line 181
    invoke-virtual {v0, v2, v3}, Landroidx/media2/exoplayer/external/extractor/d/i;->c(J)V

    .line 183
    :cond_1
    iget-boolean v2, v0, Landroidx/media2/exoplayer/external/extractor/d/i;->l:Z

    if-nez v2, :cond_2

    .line 184
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/d/i;->f:Landroidx/media2/exoplayer/external/extractor/d/g;

    invoke-interface {v2}, Landroidx/media2/exoplayer/external/extractor/d/g;->a()Landroidx/media2/exoplayer/external/extractor/o;

    move-result-object v2

    .line 185
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/d/i;->e:Landroidx/media2/exoplayer/external/extractor/i;

    invoke-interface {v3, v2}, Landroidx/media2/exoplayer/external/extractor/i;->a(Landroidx/media2/exoplayer/external/extractor/o;)V

    .line 186
    iput-boolean v4, v0, Landroidx/media2/exoplayer/external/extractor/d/i;->l:Z

    .line 189
    :cond_2
    iget-wide v2, v0, Landroidx/media2/exoplayer/external/extractor/d/i;->k:J

    cmp-long v4, v2, v5

    if-gtz v4, :cond_4

    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/d/i;->a:Landroidx/media2/exoplayer/external/extractor/d/e;

    invoke-virtual {v2, v1}, Landroidx/media2/exoplayer/external/extractor/d/e;->a(Landroidx/media2/exoplayer/external/extractor/h;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    .line 202
    iput v1, v0, Landroidx/media2/exoplayer/external/extractor/d/i;->c:I

    const/4 v1, -0x1

    return v1

    .line 190
    :cond_4
    :goto_0
    iput-wide v5, v0, Landroidx/media2/exoplayer/external/extractor/d/i;->k:J

    .line 191
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/d/i;->a:Landroidx/media2/exoplayer/external/extractor/d/e;

    .line 3127
    iget-object v1, v1, Landroidx/media2/exoplayer/external/extractor/d/e;->b:Landroidx/media2/exoplayer/external/util/p;

    .line 192
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/extractor/d/i;->b(Landroidx/media2/exoplayer/external/util/p;)J

    move-result-wide v2

    cmp-long v4, v2, v5

    if-ltz v4, :cond_5

    .line 193
    iget-wide v4, v0, Landroidx/media2/exoplayer/external/extractor/d/i;->h:J

    add-long v9, v4, v2

    iget-wide v11, v0, Landroidx/media2/exoplayer/external/extractor/d/i;->g:J

    cmp-long v6, v9, v11

    if-ltz v6, :cond_5

    .line 195
    invoke-virtual {v0, v4, v5}, Landroidx/media2/exoplayer/external/extractor/d/i;->a(J)J

    move-result-wide v10

    .line 196
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/d/i;->d:Landroidx/media2/exoplayer/external/extractor/q;

    .line 4125
    iget v5, v1, Landroidx/media2/exoplayer/external/util/p;->c:I

    .line 196
    invoke-interface {v4, v1, v5}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/util/p;I)V

    .line 197
    iget-object v9, v0, Landroidx/media2/exoplayer/external/extractor/d/i;->d:Landroidx/media2/exoplayer/external/extractor/q;

    const/4 v12, 0x1

    .line 5125
    iget v13, v1, Landroidx/media2/exoplayer/external/util/p;->c:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 197
    invoke-interface/range {v9 .. v15}, Landroidx/media2/exoplayer/external/extractor/q;->a(JIIILandroidx/media2/exoplayer/external/extractor/q$a;)V

    .line 198
    iput-wide v7, v0, Landroidx/media2/exoplayer/external/extractor/d/i;->g:J

    .line 200
    :cond_5
    iget-wide v4, v0, Landroidx/media2/exoplayer/external/extractor/d/i;->h:J

    add-long/2addr v4, v2

    iput-wide v4, v0, Landroidx/media2/exoplayer/external/extractor/d/i;->h:J

    const/4 v1, 0x0

    return v1
.end method

.method protected final a(J)J
    .locals 2

    const-wide/32 v0, 0xf4240

    mul-long p1, p1, v0

    .line 215
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/d/i;->i:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    return-wide p1
.end method

.method final a(JJ)V
    .locals 3

    .line 97
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/d/i;->a:Landroidx/media2/exoplayer/external/extractor/d/e;

    .line 1048
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/d/e;->a:Landroidx/media2/exoplayer/external/extractor/d/f;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/extractor/d/f;->a()V

    .line 1049
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/d/e;->b:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/p;->a()V

    const/4 v1, -0x1

    .line 1050
    iput v1, v0, Landroidx/media2/exoplayer/external/extractor/d/e;->c:I

    const/4 v1, 0x0

    .line 1051
    iput-boolean v1, v0, Landroidx/media2/exoplayer/external/extractor/d/e;->d:Z

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 99
    iget-boolean p1, p0, Landroidx/media2/exoplayer/external/extractor/d/i;->l:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/extractor/d/i;->a(Z)V

    return-void

    .line 101
    :cond_0
    iget p1, p0, Landroidx/media2/exoplayer/external/extractor/d/i;->c:I

    if-eqz p1, :cond_1

    .line 102
    invoke-virtual {p0, p3, p4}, Landroidx/media2/exoplayer/external/extractor/d/i;->b(J)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/d/i;->g:J

    .line 103
    iget-object p3, p0, Landroidx/media2/exoplayer/external/extractor/d/i;->f:Landroidx/media2/exoplayer/external/extractor/d/g;

    invoke-interface {p3, p1, p2}, Landroidx/media2/exoplayer/external/extractor/d/g;->a_(J)V

    const/4 p1, 0x2

    .line 104
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/d/i;->c:I

    :cond_1
    return-void
.end method

.method final a(Landroidx/media2/exoplayer/external/extractor/i;Landroidx/media2/exoplayer/external/extractor/q;)V
    .locals 0

    .line 71
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/d/i;->e:Landroidx/media2/exoplayer/external/extractor/i;

    .line 72
    iput-object p2, p0, Landroidx/media2/exoplayer/external/extractor/d/i;->d:Landroidx/media2/exoplayer/external/extractor/q;

    const/4 p1, 0x1

    .line 73
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/extractor/d/i;->a(Z)V

    return-void
.end method

.method protected a(Z)V
    .locals 4

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    .line 83
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/d/i$a;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/extractor/d/i$a;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/d/i;->j:Landroidx/media2/exoplayer/external/extractor/d/i$a;

    .line 84
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/d/i;->b:J

    const/4 p1, 0x0

    .line 85
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/d/i;->c:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 87
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/d/i;->c:I

    :goto_0
    const-wide/16 v2, -0x1

    .line 89
    iput-wide v2, p0, Landroidx/media2/exoplayer/external/extractor/d/i;->g:J

    .line 90
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/d/i;->h:J

    return-void
.end method

.method protected abstract a(Landroidx/media2/exoplayer/external/util/p;JLandroidx/media2/exoplayer/external/extractor/d/i$a;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method protected final b(J)J
    .locals 2

    .line 225
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/d/i;->i:I

    int-to-long v0, v0

    mul-long v0, v0, p1

    const-wide/32 p1, 0xf4240

    div-long/2addr v0, p1

    return-wide v0
.end method

.method protected abstract b(Landroidx/media2/exoplayer/external/util/p;)J
.end method

.method protected c(J)V
    .locals 0

    .line 254
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/d/i;->h:J

    return-void
.end method
