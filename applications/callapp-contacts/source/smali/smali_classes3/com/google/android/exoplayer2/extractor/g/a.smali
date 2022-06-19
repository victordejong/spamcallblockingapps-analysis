.class final Lcom/google/android/exoplayer2/extractor/g/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/g/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/g/a$a;
    }
.end annotation


# instance fields
.field final a:J

.field final b:J

.field final c:Lcom/google/android/exoplayer2/extractor/g/h;

.field d:J

.field private final e:Lcom/google/android/exoplayer2/extractor/g/e;

.field private f:I

.field private g:J

.field private h:J

.field private i:J

.field private j:J

.field private k:J

.field private l:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/g/h;JJJJZ)V
    .locals 4

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 75
    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 77
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/g/a;->c:Lcom/google/android/exoplayer2/extractor/g/h;

    .line 78
    iput-wide p2, p0, Lcom/google/android/exoplayer2/extractor/g/a;->a:J

    .line 79
    iput-wide p4, p0, Lcom/google/android/exoplayer2/extractor/g/a;->b:J

    sub-long/2addr p4, p2

    cmp-long p1, p6, p4

    if-eqz p1, :cond_2

    if-eqz p10, :cond_1

    goto :goto_1

    .line 85
    :cond_1
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/g/a;->f:I

    goto :goto_2

    .line 82
    :cond_2
    :goto_1
    iput-wide p8, p0, Lcom/google/android/exoplayer2/extractor/g/a;->d:J

    const/4 p1, 0x4

    .line 83
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/g/a;->f:I

    .line 87
    :goto_2
    new-instance p1, Lcom/google/android/exoplayer2/extractor/g/e;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/g/e;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/g/a;->e:Lcom/google/android/exoplayer2/extractor/g/e;

    return-void
.end method

.method private b(Lcom/google/android/exoplayer2/extractor/i;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/g/a;->e:Lcom/google/android/exoplayer2/extractor/g/e;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/g/e;->a(Lcom/google/android/exoplayer2/extractor/i;)Z

    .line 207
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/g/a;->e:Lcom/google/android/exoplayer2/extractor/g/e;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/extractor/g/e;->a(Lcom/google/android/exoplayer2/extractor/i;Z)Z

    .line 208
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/g/a;->e:Lcom/google/android/exoplayer2/extractor/g/e;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/extractor/g/e;->c:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/g/a;->h:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 211
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/g/a;->e:Lcom/google/android/exoplayer2/extractor/g/e;

    iget v0, v0, Lcom/google/android/exoplayer2/extractor/g/e;->h:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/g/a;->e:Lcom/google/android/exoplayer2/extractor/g/e;

    iget v1, v1, Lcom/google/android/exoplayer2/extractor/g/e;->i:I

    add-int/2addr v0, v1

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/i;->b(I)V

    .line 212
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/i;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/g/a;->i:J

    .line 213
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/g/a;->e:Lcom/google/android/exoplayer2/extractor/g/e;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/extractor/g/e;->c:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/g/a;->k:J

    goto :goto_0

    .line 215
    :cond_0
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/i;->a()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/extractor/i;)J
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 92
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/g/a;->f:I

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

    .line 121
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 2153
    :cond_1
    iget-wide v11, v0, Lcom/google/android/exoplayer2/extractor/g/a;->i:J

    iget-wide v13, v0, Lcom/google/android/exoplayer2/extractor/g/a;->j:J

    cmp-long v2, v11, v13

    if-nez v2, :cond_2

    :goto_0
    move-wide v2, v9

    move-wide v4, v2

    goto/16 :goto_3

    .line 2157
    :cond_2
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->c()J

    move-result-wide v11

    .line 2158
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/g/a;->e:Lcom/google/android/exoplayer2/extractor/g/e;

    iget-wide v13, v0, Lcom/google/android/exoplayer2/extractor/g/a;->j:J

    invoke-virtual {v2, v1, v13, v14}, Lcom/google/android/exoplayer2/extractor/g/e;->a(Lcom/google/android/exoplayer2/extractor/i;J)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2159
    iget-wide v2, v0, Lcom/google/android/exoplayer2/extractor/g/a;->i:J

    cmp-long v4, v2, v11

    if-eqz v4, :cond_3

    move-wide v4, v9

    goto/16 :goto_3

    .line 2160
    :cond_3
    new-instance v1, Ljava/io/IOException;

    const-string v2, "No ogg page can be found."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2165
    :cond_4
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/g/a;->e:Lcom/google/android/exoplayer2/extractor/g/e;

    invoke-virtual {v2, v1, v3}, Lcom/google/android/exoplayer2/extractor/g/e;->a(Lcom/google/android/exoplayer2/extractor/i;Z)Z

    .line 2166
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->a()V

    .line 2168
    iget-wide v2, v0, Lcom/google/android/exoplayer2/extractor/g/a;->h:J

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/g/a;->e:Lcom/google/android/exoplayer2/extractor/g/e;

    iget-wide v13, v4, Lcom/google/android/exoplayer2/extractor/g/e;->c:J

    sub-long/2addr v2, v13

    .line 2169
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/g/a;->e:Lcom/google/android/exoplayer2/extractor/g/e;

    iget v4, v4, Lcom/google/android/exoplayer2/extractor/g/e;->h:I

    iget-object v13, v0, Lcom/google/android/exoplayer2/extractor/g/a;->e:Lcom/google/android/exoplayer2/extractor/g/e;

    iget v13, v13, Lcom/google/android/exoplayer2/extractor/g/e;->i:I

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

    .line 2175
    iput-wide v11, v0, Lcom/google/android/exoplayer2/extractor/g/a;->j:J

    .line 2176
    iget-object v11, v0, Lcom/google/android/exoplayer2/extractor/g/a;->e:Lcom/google/android/exoplayer2/extractor/g/e;

    iget-wide v11, v11, Lcom/google/android/exoplayer2/extractor/g/e;->c:J

    iput-wide v11, v0, Lcom/google/android/exoplayer2/extractor/g/a;->l:J

    goto :goto_1

    .line 2178
    :cond_6
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->c()J

    move-result-wide v11

    int-to-long v13, v4

    add-long/2addr v11, v13

    iput-wide v11, v0, Lcom/google/android/exoplayer2/extractor/g/a;->i:J

    .line 2179
    iget-object v11, v0, Lcom/google/android/exoplayer2/extractor/g/a;->e:Lcom/google/android/exoplayer2/extractor/g/e;

    iget-wide v11, v11, Lcom/google/android/exoplayer2/extractor/g/e;->c:J

    iput-wide v11, v0, Lcom/google/android/exoplayer2/extractor/g/a;->k:J

    .line 2182
    :goto_1
    iget-wide v11, v0, Lcom/google/android/exoplayer2/extractor/g/a;->j:J

    iget-wide v13, v0, Lcom/google/android/exoplayer2/extractor/g/a;->i:J

    sub-long/2addr v11, v13

    const-wide/32 v16, 0x186a0

    cmp-long v18, v11, v16

    if-gez v18, :cond_7

    .line 2183
    iput-wide v13, v0, Lcom/google/android/exoplayer2/extractor/g/a;->j:J

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

    .line 2189
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->c()J

    move-result-wide v15

    sub-long/2addr v15, v11

    iget-wide v11, v0, Lcom/google/android/exoplayer2/extractor/g/a;->j:J

    iget-wide v6, v0, Lcom/google/android/exoplayer2/extractor/g/a;->i:J

    sub-long v17, v11, v6

    mul-long v2, v2, v17

    iget-wide v8, v0, Lcom/google/android/exoplayer2/extractor/g/a;->l:J

    iget-wide v4, v0, Lcom/google/android/exoplayer2/extractor/g/a;->k:J

    sub-long/2addr v8, v4

    div-long/2addr v2, v8

    add-long v17, v15, v2

    sub-long v21, v11, v13

    move-wide/from16 v19, v6

    .line 2192
    invoke-static/range {v17 .. v22}, Lcom/google/android/exoplayer2/util/af;->a(JJJ)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    :goto_3
    cmp-long v6, v2, v4

    if-eqz v6, :cond_9

    return-wide v2

    :cond_9
    const/4 v2, 0x3

    .line 113
    iput v2, v0, Lcom/google/android/exoplayer2/extractor/g/a;->f:I

    .line 116
    :cond_a
    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer2/extractor/g/a;->b(Lcom/google/android/exoplayer2/extractor/i;)V

    const/4 v1, 0x4

    .line 117
    iput v1, v0, Lcom/google/android/exoplayer2/extractor/g/a;->f:I

    .line 118
    iget-wide v1, v0, Lcom/google/android/exoplayer2/extractor/g/a;->k:J

    const-wide/16 v3, 0x2

    add-long/2addr v1, v3

    neg-long v1, v1

    return-wide v1

    .line 96
    :cond_b
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->c()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/google/android/exoplayer2/extractor/g/a;->g:J

    .line 97
    iput v4, v0, Lcom/google/android/exoplayer2/extractor/g/a;->f:I

    .line 99
    iget-wide v7, v0, Lcom/google/android/exoplayer2/extractor/g/a;->b:J

    const-wide/32 v11, 0xff1b

    sub-long/2addr v7, v11

    cmp-long v2, v7, v5

    if-lez v2, :cond_c

    return-wide v7

    .line 1228
    :cond_c
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/g/a;->e:Lcom/google/android/exoplayer2/extractor/g/e;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/g/e;->a()V

    .line 1229
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/g/a;->e:Lcom/google/android/exoplayer2/extractor/g/e;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/extractor/g/e;->a(Lcom/google/android/exoplayer2/extractor/i;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1233
    :cond_d
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/g/a;->e:Lcom/google/android/exoplayer2/extractor/g/e;

    invoke-virtual {v2, v1, v3}, Lcom/google/android/exoplayer2/extractor/g/e;->a(Lcom/google/android/exoplayer2/extractor/i;Z)Z

    .line 1234
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/g/a;->e:Lcom/google/android/exoplayer2/extractor/g/e;

    iget v2, v2, Lcom/google/android/exoplayer2/extractor/g/e;->h:I

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/g/a;->e:Lcom/google/android/exoplayer2/extractor/g/e;

    iget v4, v4, Lcom/google/android/exoplayer2/extractor/g/e;->i:I

    add-int/2addr v2, v4

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/extractor/i;->b(I)V

    .line 1235
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/g/a;->e:Lcom/google/android/exoplayer2/extractor/g/e;

    iget v2, v2, Lcom/google/android/exoplayer2/extractor/g/e;->b:I

    const/4 v4, 0x4

    and-int/2addr v2, v4

    if-eq v2, v4, :cond_e

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/g/a;->e:Lcom/google/android/exoplayer2/extractor/g/e;

    .line 1236
    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/extractor/g/e;->a(Lcom/google/android/exoplayer2/extractor/i;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1237
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->c()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/google/android/exoplayer2/extractor/g/a;->b:J

    cmp-long v2, v4, v6

    if-ltz v2, :cond_d

    .line 1238
    :cond_e
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/g/a;->e:Lcom/google/android/exoplayer2/extractor/g/e;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/extractor/g/e;->c:J

    .line 105
    iput-wide v1, v0, Lcom/google/android/exoplayer2/extractor/g/a;->d:J

    const/4 v1, 0x4

    .line 106
    iput v1, v0, Lcom/google/android/exoplayer2/extractor/g/a;->f:I

    .line 107
    iget-wide v1, v0, Lcom/google/android/exoplayer2/extractor/g/a;->g:J

    return-wide v1

    .line 1230
    :cond_f
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method public final synthetic a()Lcom/google/android/exoplayer2/extractor/v;
    .locals 6

    .line 3128
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/g/a;->d:J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-eqz v5, :cond_0

    new-instance v0, Lcom/google/android/exoplayer2/extractor/g/a$a;

    invoke-direct {v0, p0, v2}, Lcom/google/android/exoplayer2/extractor/g/a$a;-><init>(Lcom/google/android/exoplayer2/extractor/g/a;Lcom/google/android/exoplayer2/extractor/g/a$1;)V

    return-object v0

    :cond_0
    return-object v2
.end method

.method public final a(J)V
    .locals 10

    .line 133
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/g/a;->d:J

    const-wide/16 v2, 0x1

    sub-long v8, v0, v2

    const-wide/16 v6, 0x0

    move-wide v4, p1

    invoke-static/range {v4 .. v9}, Lcom/google/android/exoplayer2/util/af;->a(JJJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/g/a;->h:J

    const/4 p1, 0x2

    .line 134
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/g/a;->f:I

    .line 135
    iget-wide p1, p0, Lcom/google/android/exoplayer2/extractor/g/a;->a:J

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/g/a;->i:J

    .line 136
    iget-wide p1, p0, Lcom/google/android/exoplayer2/extractor/g/a;->b:J

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/g/a;->j:J

    const-wide/16 p1, 0x0

    .line 137
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/g/a;->k:J

    .line 138
    iget-wide p1, p0, Lcom/google/android/exoplayer2/extractor/g/a;->d:J

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/g/a;->l:J

    return-void
.end method
