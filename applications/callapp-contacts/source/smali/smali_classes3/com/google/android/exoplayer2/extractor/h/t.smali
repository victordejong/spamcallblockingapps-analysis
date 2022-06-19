.class public final Lcom/google/android/exoplayer2/extractor/h/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/h/ad;


# instance fields
.field private final a:Lcom/google/android/exoplayer2/extractor/h/j;

.field private final b:Lcom/google/android/exoplayer2/util/t;

.field private c:I

.field private d:I

.field private e:Lcom/google/android/exoplayer2/util/ad;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:I

.field private j:I

.field private k:Z

.field private l:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/h/j;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/t;->a:Lcom/google/android/exoplayer2/extractor/h/j;

    .line 65
    new-instance p1, Lcom/google/android/exoplayer2/util/t;

    const/16 v0, 0xa

    new-array v0, v0, [B

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/t;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/t;->b:Lcom/google/android/exoplayer2/util/t;

    const/4 p1, 0x0

    .line 66
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/h/t;->c:I

    return-void
.end method

.method private a(I)V
    .locals 0

    .line 160
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/h/t;->c:I

    const/4 p1, 0x0

    .line 161
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/h/t;->d:I

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/util/u;[BI)Z
    .locals 3

    .line 175
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/h/t;->d:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    if-gtz v0, :cond_0

    return v1

    :cond_0
    if-nez p2, :cond_1

    .line 179
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    goto :goto_0

    .line 181
    :cond_1
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/h/t;->d:I

    invoke-virtual {p1, p2, v2, v0}, Lcom/google/android/exoplayer2/util/u;->a([BII)V

    .line 183
    :goto_0
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/h/t;->d:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/h/t;->d:I

    if-ne p1, p3, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    .line 80
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/h/t;->c:I

    .line 81
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/h/t;->d:I

    .line 82
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/h/t;->h:Z

    .line 83
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/t;->a:Lcom/google/android/exoplayer2/extractor/h/j;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/h/j;->a()V

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/util/ad;Lcom/google/android/exoplayer2/extractor/j;Lcom/google/android/exoplayer2/extractor/h/ad$d;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/t;->e:Lcom/google/android/exoplayer2/util/ad;

    .line 73
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/t;->a:Lcom/google/android/exoplayer2/extractor/h/j;

    invoke-interface {p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/h/j;->a(Lcom/google/android/exoplayer2/extractor/j;Lcom/google/android/exoplayer2/extractor/h/ad$d;)V

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/util/u;I)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 88
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/h/t;->e:Lcom/google/android/exoplayer2/util/ad;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, p2, 0x1

    const-string v2, "PesReader"

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-eqz v1, :cond_4

    .line 91
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/h/t;->c:I

    if-eqz v1, :cond_3

    if-eq v1, v6, :cond_3

    if-eq v1, v3, :cond_2

    if-ne v1, v4, :cond_1

    .line 104
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/h/t;->j:I

    if-eq v1, v5, :cond_0

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "Unexpected start indicator: expected "

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v0, Lcom/google/android/exoplayer2/extractor/h/t;->j:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " more bytes"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/h/t;->a:Lcom/google/android/exoplayer2/extractor/h/j;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/extractor/h/j;->b()V

    goto :goto_0

    .line 111
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_2
    const-string v1, "Unexpected start indicator reading extended header"

    .line 97
    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    move-object/from16 v1, p1

    move/from16 v7, p2

    move-object v8, v0

    goto :goto_3

    :cond_4
    move-object/from16 v1, p1

    move/from16 v7, p2

    move-object v8, v0

    .line 116
    :goto_1
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v9

    if-lez v9, :cond_14

    .line 117
    iget v9, v8, Lcom/google/android/exoplayer2/extractor/h/t;->c:I

    if-eqz v9, :cond_13

    const/4 v10, 0x0

    if-eq v9, v6, :cond_d

    if-eq v9, v3, :cond_8

    if-ne v9, v4, :cond_7

    .line 138
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v9

    .line 139
    iget v11, v8, Lcom/google/android/exoplayer2/extractor/h/t;->j:I

    if-ne v11, v5, :cond_5

    goto :goto_2

    :cond_5
    sub-int v10, v9, v11

    :goto_2
    if-lez v10, :cond_6

    sub-int/2addr v9, v10

    .line 2144
    iget v10, v1, Lcom/google/android/exoplayer2/util/u;->b:I

    add-int/2addr v10, v9

    .line 142
    invoke-virtual {v1, v10}, Lcom/google/android/exoplayer2/util/u;->c(I)V

    .line 144
    :cond_6
    iget-object v10, v8, Lcom/google/android/exoplayer2/extractor/h/t;->a:Lcom/google/android/exoplayer2/extractor/h/j;

    invoke-interface {v10, v1}, Lcom/google/android/exoplayer2/extractor/h/j;->a(Lcom/google/android/exoplayer2/util/u;)V

    .line 145
    iget v10, v8, Lcom/google/android/exoplayer2/extractor/h/t;->j:I

    if-eq v10, v5, :cond_c

    sub-int/2addr v10, v9

    .line 146
    iput v10, v8, Lcom/google/android/exoplayer2/extractor/h/t;->j:I

    if-nez v10, :cond_c

    .line 148
    iget-object v9, v8, Lcom/google/android/exoplayer2/extractor/h/t;->a:Lcom/google/android/exoplayer2/extractor/h/j;

    invoke-interface {v9}, Lcom/google/android/exoplayer2/extractor/h/j;->b()V

    .line 113
    :goto_3
    invoke-direct {v8, v6}, Lcom/google/android/exoplayer2/extractor/h/t;->a(I)V

    goto :goto_1

    .line 154
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_8
    const/16 v9, 0xa

    .line 127
    iget v11, v8, Lcom/google/android/exoplayer2/extractor/h/t;->i:I

    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 129
    iget-object v11, v8, Lcom/google/android/exoplayer2/extractor/h/t;->b:Lcom/google/android/exoplayer2/util/t;

    iget-object v11, v11, Lcom/google/android/exoplayer2/util/t;->a:[B

    invoke-direct {v8, v1, v11, v9}, Lcom/google/android/exoplayer2/extractor/h/t;->a(Lcom/google/android/exoplayer2/util/u;[BI)Z

    move-result v9

    if-eqz v9, :cond_c

    const/4 v9, 0x0

    iget v11, v8, Lcom/google/android/exoplayer2/extractor/h/t;->i:I

    .line 130
    invoke-direct {v8, v1, v9, v11}, Lcom/google/android/exoplayer2/extractor/h/t;->a(Lcom/google/android/exoplayer2/util/u;[BI)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 1225
    iget-object v9, v8, Lcom/google/android/exoplayer2/extractor/h/t;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v9, v10}, Lcom/google/android/exoplayer2/util/t;->a(I)V

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 1226
    iput-wide v11, v8, Lcom/google/android/exoplayer2/extractor/h/t;->l:J

    .line 1227
    iget-boolean v9, v8, Lcom/google/android/exoplayer2/extractor/h/t;->f:Z

    const/4 v11, 0x4

    if-eqz v9, :cond_a

    .line 1228
    iget-object v9, v8, Lcom/google/android/exoplayer2/extractor/h/t;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v9, v11}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    .line 1229
    iget-object v9, v8, Lcom/google/android/exoplayer2/extractor/h/t;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v9, v4}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v9

    int-to-long v12, v9

    const/16 v9, 0x1e

    shl-long/2addr v12, v9

    .line 1230
    iget-object v14, v8, Lcom/google/android/exoplayer2/extractor/h/t;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v14, v6}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    .line 1231
    iget-object v14, v8, Lcom/google/android/exoplayer2/extractor/h/t;->b:Lcom/google/android/exoplayer2/util/t;

    const/16 v15, 0xf

    invoke-virtual {v14, v15}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v14

    shl-int/2addr v14, v15

    int-to-long v9, v14

    or-long/2addr v9, v12

    .line 1232
    iget-object v12, v8, Lcom/google/android/exoplayer2/extractor/h/t;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v12, v6}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    .line 1233
    iget-object v12, v8, Lcom/google/android/exoplayer2/extractor/h/t;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v12, v15}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v12

    int-to-long v12, v12

    or-long/2addr v9, v12

    .line 1234
    iget-object v12, v8, Lcom/google/android/exoplayer2/extractor/h/t;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v12, v6}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    .line 1235
    iget-boolean v12, v8, Lcom/google/android/exoplayer2/extractor/h/t;->h:Z

    if-nez v12, :cond_9

    iget-boolean v12, v8, Lcom/google/android/exoplayer2/extractor/h/t;->g:Z

    if-eqz v12, :cond_9

    .line 1236
    iget-object v12, v8, Lcom/google/android/exoplayer2/extractor/h/t;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v12, v11}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    .line 1237
    iget-object v12, v8, Lcom/google/android/exoplayer2/extractor/h/t;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v12, v4}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v12

    int-to-long v12, v12

    const/16 v14, 0x1e

    shl-long/2addr v12, v14

    .line 1238
    iget-object v14, v8, Lcom/google/android/exoplayer2/extractor/h/t;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v14, v6}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    .line 1239
    iget-object v14, v8, Lcom/google/android/exoplayer2/extractor/h/t;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v14, v15}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v14

    shl-int/2addr v14, v15

    int-to-long v3, v14

    or-long/2addr v3, v12

    .line 1240
    iget-object v12, v8, Lcom/google/android/exoplayer2/extractor/h/t;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v12, v6}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    .line 1241
    iget-object v12, v8, Lcom/google/android/exoplayer2/extractor/h/t;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v12, v15}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v12

    int-to-long v12, v12

    or-long/2addr v3, v12

    .line 1242
    iget-object v12, v8, Lcom/google/android/exoplayer2/extractor/h/t;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v12, v6}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    .line 1248
    iget-object v12, v8, Lcom/google/android/exoplayer2/extractor/h/t;->e:Lcom/google/android/exoplayer2/util/ad;

    invoke-virtual {v12, v3, v4}, Lcom/google/android/exoplayer2/util/ad;->b(J)J

    .line 1249
    iput-boolean v6, v8, Lcom/google/android/exoplayer2/extractor/h/t;->h:Z

    .line 1251
    :cond_9
    iget-object v3, v8, Lcom/google/android/exoplayer2/extractor/h/t;->e:Lcom/google/android/exoplayer2/util/ad;

    invoke-virtual {v3, v9, v10}, Lcom/google/android/exoplayer2/util/ad;->b(J)J

    move-result-wide v3

    iput-wide v3, v8, Lcom/google/android/exoplayer2/extractor/h/t;->l:J

    .line 132
    :cond_a
    iget-boolean v3, v8, Lcom/google/android/exoplayer2/extractor/h/t;->k:Z

    if-eqz v3, :cond_b

    const/4 v10, 0x4

    goto :goto_4

    :cond_b
    const/4 v10, 0x0

    :goto_4
    or-int/2addr v7, v10

    .line 133
    iget-object v3, v8, Lcom/google/android/exoplayer2/extractor/h/t;->a:Lcom/google/android/exoplayer2/extractor/h/j;

    iget-wide v9, v8, Lcom/google/android/exoplayer2/extractor/h/t;->l:J

    invoke-interface {v3, v9, v10, v7}, Lcom/google/android/exoplayer2/extractor/h/j;->a(JI)V

    const/4 v3, 0x3

    .line 134
    invoke-direct {v8, v3}, Lcom/google/android/exoplayer2/extractor/h/t;->a(I)V

    goto/16 :goto_8

    :cond_c
    const/4 v3, 0x3

    goto/16 :goto_7

    :cond_d
    const/4 v3, 0x3

    .line 122
    iget-object v4, v8, Lcom/google/android/exoplayer2/extractor/h/t;->b:Lcom/google/android/exoplayer2/util/t;

    iget-object v4, v4, Lcom/google/android/exoplayer2/util/t;->a:[B

    const/16 v9, 0x9

    invoke-direct {v8, v1, v4, v9}, Lcom/google/android/exoplayer2/extractor/h/t;->a(Lcom/google/android/exoplayer2/util/u;[BI)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1190
    iget-object v4, v8, Lcom/google/android/exoplayer2/extractor/h/t;->b:Lcom/google/android/exoplayer2/util/t;

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Lcom/google/android/exoplayer2/util/t;->a(I)V

    .line 1191
    iget-object v4, v8, Lcom/google/android/exoplayer2/extractor/h/t;->b:Lcom/google/android/exoplayer2/util/t;

    const/16 v11, 0x18

    invoke-virtual {v4, v11}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v4

    if-eq v4, v6, :cond_e

    .line 1193
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v9, "Unexpected start code prefix: "

    invoke-virtual {v9, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1194
    iput v5, v8, Lcom/google/android/exoplayer2/extractor/h/t;->j:I

    const/4 v4, 0x0

    const/4 v13, 0x2

    goto :goto_6

    .line 1198
    :cond_e
    iget-object v4, v8, Lcom/google/android/exoplayer2/extractor/h/t;->b:Lcom/google/android/exoplayer2/util/t;

    const/16 v11, 0x8

    invoke-virtual {v4, v11}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    .line 1199
    iget-object v4, v8, Lcom/google/android/exoplayer2/extractor/h/t;->b:Lcom/google/android/exoplayer2/util/t;

    const/16 v12, 0x10

    invoke-virtual {v4, v12}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v4

    .line 1200
    iget-object v12, v8, Lcom/google/android/exoplayer2/extractor/h/t;->b:Lcom/google/android/exoplayer2/util/t;

    const/4 v13, 0x5

    invoke-virtual {v12, v13}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    .line 1201
    iget-object v12, v8, Lcom/google/android/exoplayer2/extractor/h/t;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v12}, Lcom/google/android/exoplayer2/util/t;->e()Z

    move-result v12

    iput-boolean v12, v8, Lcom/google/android/exoplayer2/extractor/h/t;->k:Z

    .line 1202
    iget-object v12, v8, Lcom/google/android/exoplayer2/extractor/h/t;->b:Lcom/google/android/exoplayer2/util/t;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    .line 1203
    iget-object v12, v8, Lcom/google/android/exoplayer2/extractor/h/t;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v12}, Lcom/google/android/exoplayer2/util/t;->e()Z

    move-result v12

    iput-boolean v12, v8, Lcom/google/android/exoplayer2/extractor/h/t;->f:Z

    .line 1204
    iget-object v12, v8, Lcom/google/android/exoplayer2/extractor/h/t;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v12}, Lcom/google/android/exoplayer2/util/t;->e()Z

    move-result v12

    iput-boolean v12, v8, Lcom/google/android/exoplayer2/extractor/h/t;->g:Z

    .line 1207
    iget-object v12, v8, Lcom/google/android/exoplayer2/extractor/h/t;->b:Lcom/google/android/exoplayer2/util/t;

    const/4 v14, 0x6

    invoke-virtual {v12, v14}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    .line 1208
    iget-object v12, v8, Lcom/google/android/exoplayer2/extractor/h/t;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v12, v11}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v11

    iput v11, v8, Lcom/google/android/exoplayer2/extractor/h/t;->i:I

    if-nez v4, :cond_f

    .line 1211
    iput v5, v8, Lcom/google/android/exoplayer2/extractor/h/t;->j:I

    goto :goto_5

    :cond_f
    add-int/lit8 v4, v4, 0x6

    sub-int/2addr v4, v9

    sub-int/2addr v4, v11

    .line 1213
    iput v4, v8, Lcom/google/android/exoplayer2/extractor/h/t;->j:I

    if-gez v4, :cond_10

    .line 1216
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v9, "Found negative packet payload size: "

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v8, Lcom/google/android/exoplayer2/extractor/h/t;->j:I

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    iput v5, v8, Lcom/google/android/exoplayer2/extractor/h/t;->j:I

    :cond_10
    :goto_5
    const/4 v4, 0x1

    :goto_6
    if-eqz v4, :cond_11

    const/4 v10, 0x2

    .line 123
    :cond_11
    invoke-direct {v8, v10}, Lcom/google/android/exoplayer2/extractor/h/t;->a(I)V

    goto :goto_8

    :cond_12
    :goto_7
    const/4 v13, 0x2

    goto :goto_8

    :cond_13
    const/4 v3, 0x3

    const/4 v13, 0x2

    .line 119
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    :goto_8
    const/4 v3, 0x2

    const/4 v4, 0x3

    goto/16 :goto_1

    :cond_14
    return-void
.end method
