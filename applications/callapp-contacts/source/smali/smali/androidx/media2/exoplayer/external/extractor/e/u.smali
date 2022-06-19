.class public final Landroidx/media2/exoplayer/external/extractor/e/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/e/ah;


# instance fields
.field private final a:Landroidx/media2/exoplayer/external/extractor/e/m;

.field private final b:Landroidx/media2/exoplayer/external/util/o;

.field private c:I

.field private d:I

.field private e:Landroidx/media2/exoplayer/external/util/z;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:I

.field private j:I

.field private k:Z

.field private l:J


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/extractor/e/m;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/u;->a:Landroidx/media2/exoplayer/external/extractor/e/m;

    .line 65
    new-instance p1, Landroidx/media2/exoplayer/external/util/o;

    const/16 v0, 0xa

    new-array v0, v0, [B

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/util/o;-><init>([B)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/u;->b:Landroidx/media2/exoplayer/external/util/o;

    const/4 p1, 0x0

    .line 66
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/e/u;->c:I

    return-void
.end method

.method private a(I)V
    .locals 0

    .line 158
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/e/u;->c:I

    const/4 p1, 0x0

    .line 159
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/e/u;->d:I

    return-void
.end method

.method private a(Landroidx/media2/exoplayer/external/util/p;[BI)Z
    .locals 3

    .line 172
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v0

    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/e/u;->d:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    if-gtz v0, :cond_0

    return v1

    :cond_0
    if-nez p2, :cond_1

    .line 176
    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    goto :goto_0

    .line 178
    :cond_1
    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/e/u;->d:I

    invoke-virtual {p1, p2, v2, v0}, Landroidx/media2/exoplayer/external/util/p;->a([BII)V

    .line 180
    :goto_0
    iget p1, p0, Landroidx/media2/exoplayer/external/extractor/e/u;->d:I

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/e/u;->d:I

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
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/e/u;->c:I

    .line 81
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/e/u;->d:I

    .line 82
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/e/u;->h:Z

    .line 83
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/u;->a:Landroidx/media2/exoplayer/external/extractor/e/m;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/extractor/e/m;->a()V

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/util/p;I)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    and-int/lit8 v1, p2, 0x1

    const-string v2, "PesReader"

    const/4 v3, 0x2

    const/4 v4, -0x1

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eqz v1, :cond_4

    .line 89
    iget v1, v0, Landroidx/media2/exoplayer/external/extractor/e/u;->c:I

    if-eqz v1, :cond_3

    if-eq v1, v6, :cond_3

    if-eq v1, v3, :cond_2

    if-ne v1, v5, :cond_1

    .line 102
    iget v1, v0, Landroidx/media2/exoplayer/external/extractor/e/u;->j:I

    if-eq v1, v4, :cond_0

    const/16 v7, 0x3b

    .line 103
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Unexpected start indicator: expected "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " more bytes"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_0
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/e/u;->a:Landroidx/media2/exoplayer/external/extractor/e/m;

    invoke-interface {v1}, Landroidx/media2/exoplayer/external/extractor/e/m;->b()V

    goto :goto_0

    .line 109
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_2
    const-string v1, "Unexpected start indicator reading extended header"

    .line 95
    invoke-static {v2, v1}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

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

    .line 114
    :goto_1
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v9

    if-lez v9, :cond_12

    .line 115
    iget v9, v8, Landroidx/media2/exoplayer/external/extractor/e/u;->c:I

    if-eqz v9, :cond_11

    const/4 v10, 0x0

    if-eq v9, v6, :cond_c

    if-eq v9, v3, :cond_8

    if-ne v9, v5, :cond_7

    .line 136
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v9

    .line 137
    iget v11, v8, Landroidx/media2/exoplayer/external/extractor/e/u;->j:I

    if-ne v11, v4, :cond_5

    goto :goto_2

    :cond_5
    sub-int v10, v9, v11

    :goto_2
    if-lez v10, :cond_6

    sub-int/2addr v9, v10

    .line 2142
    iget v10, v1, Landroidx/media2/exoplayer/external/util/p;->b:I

    add-int/2addr v10, v9

    .line 140
    invoke-virtual {v1, v10}, Landroidx/media2/exoplayer/external/util/p;->b(I)V

    .line 142
    :cond_6
    iget-object v10, v8, Landroidx/media2/exoplayer/external/extractor/e/u;->a:Landroidx/media2/exoplayer/external/extractor/e/m;

    invoke-interface {v10, v1}, Landroidx/media2/exoplayer/external/extractor/e/m;->a(Landroidx/media2/exoplayer/external/util/p;)V

    .line 143
    iget v10, v8, Landroidx/media2/exoplayer/external/extractor/e/u;->j:I

    if-eq v10, v4, :cond_10

    sub-int/2addr v10, v9

    .line 144
    iput v10, v8, Landroidx/media2/exoplayer/external/extractor/e/u;->j:I

    if-nez v10, :cond_10

    .line 146
    iget-object v9, v8, Landroidx/media2/exoplayer/external/extractor/e/u;->a:Landroidx/media2/exoplayer/external/extractor/e/m;

    invoke-interface {v9}, Landroidx/media2/exoplayer/external/extractor/e/m;->b()V

    .line 111
    :goto_3
    invoke-direct {v8, v6}, Landroidx/media2/exoplayer/external/extractor/e/u;->a(I)V

    goto :goto_1

    .line 152
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_8
    const/16 v9, 0xa

    .line 125
    iget v11, v8, Landroidx/media2/exoplayer/external/extractor/e/u;->i:I

    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 127
    iget-object v11, v8, Landroidx/media2/exoplayer/external/extractor/e/u;->b:Landroidx/media2/exoplayer/external/util/o;

    iget-object v11, v11, Landroidx/media2/exoplayer/external/util/o;->a:[B

    invoke-direct {v8, v1, v11, v9}, Landroidx/media2/exoplayer/external/extractor/e/u;->a(Landroidx/media2/exoplayer/external/util/p;[BI)Z

    move-result v9

    if-eqz v9, :cond_10

    const/4 v9, 0x0

    iget v11, v8, Landroidx/media2/exoplayer/external/extractor/e/u;->i:I

    .line 128
    invoke-direct {v8, v1, v9, v11}, Landroidx/media2/exoplayer/external/extractor/e/u;->a(Landroidx/media2/exoplayer/external/util/p;[BI)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 1217
    iget-object v9, v8, Landroidx/media2/exoplayer/external/extractor/e/u;->b:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v9, v10}, Landroidx/media2/exoplayer/external/util/o;->a(I)V

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 1218
    iput-wide v11, v8, Landroidx/media2/exoplayer/external/extractor/e/u;->l:J

    .line 1219
    iget-boolean v9, v8, Landroidx/media2/exoplayer/external/extractor/e/u;->f:Z

    const/4 v11, 0x4

    if-eqz v9, :cond_a

    .line 1220
    iget-object v9, v8, Landroidx/media2/exoplayer/external/extractor/e/u;->b:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v9, v11}, Landroidx/media2/exoplayer/external/util/o;->b(I)V

    .line 1221
    iget-object v9, v8, Landroidx/media2/exoplayer/external/extractor/e/u;->b:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v9, v5}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v9

    int-to-long v12, v9

    const/16 v9, 0x1e

    shl-long/2addr v12, v9

    .line 1222
    iget-object v14, v8, Landroidx/media2/exoplayer/external/extractor/e/u;->b:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v14, v6}, Landroidx/media2/exoplayer/external/util/o;->b(I)V

    .line 1223
    iget-object v14, v8, Landroidx/media2/exoplayer/external/extractor/e/u;->b:Landroidx/media2/exoplayer/external/util/o;

    const/16 v15, 0xf

    invoke-virtual {v14, v15}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v14

    shl-int/2addr v14, v15

    int-to-long v3, v14

    or-long/2addr v3, v12

    .line 1224
    iget-object v12, v8, Landroidx/media2/exoplayer/external/extractor/e/u;->b:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v12, v6}, Landroidx/media2/exoplayer/external/util/o;->b(I)V

    .line 1225
    iget-object v12, v8, Landroidx/media2/exoplayer/external/extractor/e/u;->b:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v12, v15}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v12

    int-to-long v12, v12

    or-long/2addr v3, v12

    .line 1226
    iget-object v12, v8, Landroidx/media2/exoplayer/external/extractor/e/u;->b:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v12, v6}, Landroidx/media2/exoplayer/external/util/o;->b(I)V

    .line 1227
    iget-boolean v12, v8, Landroidx/media2/exoplayer/external/extractor/e/u;->h:Z

    if-nez v12, :cond_9

    iget-boolean v12, v8, Landroidx/media2/exoplayer/external/extractor/e/u;->g:Z

    if-eqz v12, :cond_9

    .line 1228
    iget-object v12, v8, Landroidx/media2/exoplayer/external/extractor/e/u;->b:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v12, v11}, Landroidx/media2/exoplayer/external/util/o;->b(I)V

    .line 1229
    iget-object v12, v8, Landroidx/media2/exoplayer/external/extractor/e/u;->b:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v12, v5}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v12

    int-to-long v12, v12

    shl-long/2addr v12, v9

    .line 1230
    iget-object v9, v8, Landroidx/media2/exoplayer/external/extractor/e/u;->b:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v9, v6}, Landroidx/media2/exoplayer/external/util/o;->b(I)V

    .line 1231
    iget-object v9, v8, Landroidx/media2/exoplayer/external/extractor/e/u;->b:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v9, v15}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v9

    shl-int/2addr v9, v15

    int-to-long v10, v9

    or-long v9, v12, v10

    .line 1232
    iget-object v11, v8, Landroidx/media2/exoplayer/external/extractor/e/u;->b:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v11, v6}, Landroidx/media2/exoplayer/external/util/o;->b(I)V

    .line 1233
    iget-object v11, v8, Landroidx/media2/exoplayer/external/extractor/e/u;->b:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v11, v15}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v11

    int-to-long v11, v11

    or-long/2addr v9, v11

    .line 1234
    iget-object v11, v8, Landroidx/media2/exoplayer/external/extractor/e/u;->b:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v11, v6}, Landroidx/media2/exoplayer/external/util/o;->b(I)V

    .line 1240
    iget-object v11, v8, Landroidx/media2/exoplayer/external/extractor/e/u;->e:Landroidx/media2/exoplayer/external/util/z;

    invoke-virtual {v11, v9, v10}, Landroidx/media2/exoplayer/external/util/z;->b(J)J

    .line 1241
    iput-boolean v6, v8, Landroidx/media2/exoplayer/external/extractor/e/u;->h:Z

    .line 1243
    :cond_9
    iget-object v9, v8, Landroidx/media2/exoplayer/external/extractor/e/u;->e:Landroidx/media2/exoplayer/external/util/z;

    invoke-virtual {v9, v3, v4}, Landroidx/media2/exoplayer/external/util/z;->b(J)J

    move-result-wide v3

    iput-wide v3, v8, Landroidx/media2/exoplayer/external/extractor/e/u;->l:J

    .line 130
    :cond_a
    iget-boolean v3, v8, Landroidx/media2/exoplayer/external/extractor/e/u;->k:Z

    if-eqz v3, :cond_b

    const/4 v10, 0x4

    goto :goto_4

    :cond_b
    const/4 v10, 0x0

    :goto_4
    or-int/2addr v7, v10

    .line 131
    iget-object v3, v8, Landroidx/media2/exoplayer/external/extractor/e/u;->a:Landroidx/media2/exoplayer/external/extractor/e/m;

    iget-wide v9, v8, Landroidx/media2/exoplayer/external/extractor/e/u;->l:J

    invoke-interface {v3, v9, v10, v7}, Landroidx/media2/exoplayer/external/extractor/e/m;->a(JI)V

    .line 132
    invoke-direct {v8, v5}, Landroidx/media2/exoplayer/external/extractor/e/u;->a(I)V

    goto/16 :goto_8

    .line 120
    :cond_c
    iget-object v3, v8, Landroidx/media2/exoplayer/external/extractor/e/u;->b:Landroidx/media2/exoplayer/external/util/o;

    iget-object v3, v3, Landroidx/media2/exoplayer/external/util/o;->a:[B

    const/16 v4, 0x9

    invoke-direct {v8, v1, v3, v4}, Landroidx/media2/exoplayer/external/extractor/e/u;->a(Landroidx/media2/exoplayer/external/util/p;[BI)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1187
    iget-object v3, v8, Landroidx/media2/exoplayer/external/extractor/e/u;->b:Landroidx/media2/exoplayer/external/util/o;

    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Landroidx/media2/exoplayer/external/util/o;->a(I)V

    .line 1188
    iget-object v3, v8, Landroidx/media2/exoplayer/external/extractor/e/u;->b:Landroidx/media2/exoplayer/external/util/o;

    const/16 v10, 0x18

    invoke-virtual {v3, v10}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v3

    if-eq v3, v6, :cond_d

    const/16 v4, 0x29

    .line 1190
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Unexpected start code prefix: "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, -0x1

    .line 1191
    iput v3, v8, Landroidx/media2/exoplayer/external/extractor/e/u;->j:I

    const/4 v3, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x2

    goto :goto_6

    .line 1195
    :cond_d
    iget-object v3, v8, Landroidx/media2/exoplayer/external/extractor/e/u;->b:Landroidx/media2/exoplayer/external/util/o;

    const/16 v10, 0x8

    invoke-virtual {v3, v10}, Landroidx/media2/exoplayer/external/util/o;->b(I)V

    .line 1196
    iget-object v3, v8, Landroidx/media2/exoplayer/external/extractor/e/u;->b:Landroidx/media2/exoplayer/external/util/o;

    const/16 v11, 0x10

    invoke-virtual {v3, v11}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v3

    .line 1197
    iget-object v11, v8, Landroidx/media2/exoplayer/external/extractor/e/u;->b:Landroidx/media2/exoplayer/external/util/o;

    const/4 v12, 0x5

    invoke-virtual {v11, v12}, Landroidx/media2/exoplayer/external/util/o;->b(I)V

    .line 1198
    iget-object v11, v8, Landroidx/media2/exoplayer/external/extractor/e/u;->b:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v11}, Landroidx/media2/exoplayer/external/util/o;->e()Z

    move-result v11

    iput-boolean v11, v8, Landroidx/media2/exoplayer/external/extractor/e/u;->k:Z

    .line 1199
    iget-object v11, v8, Landroidx/media2/exoplayer/external/extractor/e/u;->b:Landroidx/media2/exoplayer/external/util/o;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Landroidx/media2/exoplayer/external/util/o;->b(I)V

    .line 1200
    iget-object v11, v8, Landroidx/media2/exoplayer/external/extractor/e/u;->b:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v11}, Landroidx/media2/exoplayer/external/util/o;->e()Z

    move-result v11

    iput-boolean v11, v8, Landroidx/media2/exoplayer/external/extractor/e/u;->f:Z

    .line 1201
    iget-object v11, v8, Landroidx/media2/exoplayer/external/extractor/e/u;->b:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v11}, Landroidx/media2/exoplayer/external/util/o;->e()Z

    move-result v11

    iput-boolean v11, v8, Landroidx/media2/exoplayer/external/extractor/e/u;->g:Z

    .line 1204
    iget-object v11, v8, Landroidx/media2/exoplayer/external/extractor/e/u;->b:Landroidx/media2/exoplayer/external/util/o;

    const/4 v13, 0x6

    invoke-virtual {v11, v13}, Landroidx/media2/exoplayer/external/util/o;->b(I)V

    .line 1205
    iget-object v11, v8, Landroidx/media2/exoplayer/external/extractor/e/u;->b:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v11, v10}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v10

    iput v10, v8, Landroidx/media2/exoplayer/external/extractor/e/u;->i:I

    if-nez v3, :cond_e

    const/4 v11, -0x1

    .line 1208
    iput v11, v8, Landroidx/media2/exoplayer/external/extractor/e/u;->j:I

    goto :goto_5

    :cond_e
    const/4 v11, -0x1

    add-int/lit8 v3, v3, 0x6

    sub-int/2addr v3, v4

    sub-int/2addr v3, v10

    .line 1210
    iput v3, v8, Landroidx/media2/exoplayer/external/extractor/e/u;->j:I

    :goto_5
    const/4 v3, 0x1

    :goto_6
    if-eqz v3, :cond_f

    const/4 v10, 0x2

    goto :goto_7

    :cond_f
    const/4 v10, 0x0

    .line 121
    :goto_7
    invoke-direct {v8, v10}, Landroidx/media2/exoplayer/external/extractor/e/u;->a(I)V

    goto :goto_8

    :cond_10
    const/4 v11, -0x1

    const/4 v12, 0x2

    goto :goto_8

    :cond_11
    const/4 v11, -0x1

    const/4 v12, 0x2

    .line 117
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    :goto_8
    const/4 v3, 0x2

    const/4 v4, -0x1

    goto/16 :goto_1

    :cond_12
    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/util/z;Landroidx/media2/exoplayer/external/extractor/i;Landroidx/media2/exoplayer/external/extractor/e/ah$d;)V
    .locals 0

    .line 72
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/u;->e:Landroidx/media2/exoplayer/external/util/z;

    .line 73
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/u;->a:Landroidx/media2/exoplayer/external/extractor/e/m;

    invoke-interface {p1, p2, p3}, Landroidx/media2/exoplayer/external/extractor/e/m;->a(Landroidx/media2/exoplayer/external/extractor/i;Landroidx/media2/exoplayer/external/extractor/e/ah$d;)V

    return-void
.end method
