.class public final Landroidx/media2/exoplayer/external/extractor/e/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/e/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/extractor/e/o$a;
    }
.end annotation


# instance fields
.field private final a:Landroidx/media2/exoplayer/external/extractor/e/ab;

.field private final b:Z

.field private final c:Z

.field private final d:Landroidx/media2/exoplayer/external/extractor/e/t;

.field private final e:Landroidx/media2/exoplayer/external/extractor/e/t;

.field private final f:Landroidx/media2/exoplayer/external/extractor/e/t;

.field private g:J

.field private final h:[Z

.field private i:Ljava/lang/String;

.field private j:Landroidx/media2/exoplayer/external/extractor/q;

.field private k:Landroidx/media2/exoplayer/external/extractor/e/o$a;

.field private l:Z

.field private m:J

.field private n:Z

.field private final o:Landroidx/media2/exoplayer/external/util/p;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/extractor/e/ab;ZZ)V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/o;->a:Landroidx/media2/exoplayer/external/extractor/e/ab;

    .line 85
    iput-boolean p2, p0, Landroidx/media2/exoplayer/external/extractor/e/o;->b:Z

    .line 86
    iput-boolean p3, p0, Landroidx/media2/exoplayer/external/extractor/e/o;->c:Z

    const/4 p1, 0x3

    new-array p1, p1, [Z

    .line 87
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/o;->h:[Z

    .line 88
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/e/t;

    const/4 p2, 0x7

    const/16 p3, 0x80

    invoke-direct {p1, p2, p3}, Landroidx/media2/exoplayer/external/extractor/e/t;-><init>(II)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/o;->d:Landroidx/media2/exoplayer/external/extractor/e/t;

    .line 89
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/e/t;

    const/16 p2, 0x8

    invoke-direct {p1, p2, p3}, Landroidx/media2/exoplayer/external/extractor/e/t;-><init>(II)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/o;->e:Landroidx/media2/exoplayer/external/extractor/e/t;

    .line 90
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/e/t;

    const/4 p2, 0x6

    invoke-direct {p1, p2, p3}, Landroidx/media2/exoplayer/external/extractor/e/t;-><init>(II)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/o;->f:Landroidx/media2/exoplayer/external/extractor/e/t;

    .line 91
    new-instance p1, Landroidx/media2/exoplayer/external/util/p;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/util/p;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/o;->o:Landroidx/media2/exoplayer/external/util/p;

    return-void
.end method

.method private a([BII)V
    .locals 1

    .line 178
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/e/o;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/o;->k:Landroidx/media2/exoplayer/external/extractor/e/o$a;

    .line 9295
    iget-boolean v0, v0, Landroidx/media2/exoplayer/external/extractor/e/o$a;->c:Z

    if-eqz v0, :cond_1

    .line 179
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/o;->d:Landroidx/media2/exoplayer/external/extractor/e/t;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/extractor/e/t;->a([BII)V

    .line 180
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/o;->e:Landroidx/media2/exoplayer/external/extractor/e/t;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/extractor/e/t;->a([BII)V

    .line 182
    :cond_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/o;->f:Landroidx/media2/exoplayer/external/extractor/e/t;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/extractor/e/t;->a([BII)V

    .line 183
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/o;->k:Landroidx/media2/exoplayer/external/extractor/e/o$a;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/extractor/e/o$a;->a([BII)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 96
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/o;->h:[Z

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/n;->a([Z)V

    .line 97
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/o;->d:Landroidx/media2/exoplayer/external/extractor/e/t;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/extractor/e/t;->a()V

    .line 98
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/o;->e:Landroidx/media2/exoplayer/external/extractor/e/t;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/extractor/e/t;->a()V

    .line 99
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/o;->f:Landroidx/media2/exoplayer/external/extractor/e/t;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/extractor/e/t;->a()V

    .line 100
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/o;->k:Landroidx/media2/exoplayer/external/extractor/e/o$a;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/extractor/e/o$a;->a()V

    const-wide/16 v0, 0x0

    .line 101
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/e/o;->g:J

    const/4 v0, 0x0

    .line 102
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/e/o;->n:Z

    return-void
.end method

.method public final a(JI)V
    .locals 0

    .line 116
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/e/o;->m:J

    .line 117
    iget-boolean p1, p0, Landroidx/media2/exoplayer/external/extractor/e/o;->n:Z

    and-int/lit8 p2, p3, 0x2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    or-int/2addr p1, p2

    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/extractor/e/o;->n:Z

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/extractor/i;Landroidx/media2/exoplayer/external/extractor/e/ah$d;)V
    .locals 4

    .line 107
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/e/ah$d;->a()V

    .line 108
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/e/ah$d;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/o;->i:Ljava/lang/String;

    .line 109
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/e/ah$d;->b()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Landroidx/media2/exoplayer/external/extractor/i;->a(II)Landroidx/media2/exoplayer/external/extractor/q;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/o;->j:Landroidx/media2/exoplayer/external/extractor/q;

    .line 110
    new-instance v1, Landroidx/media2/exoplayer/external/extractor/e/o$a;

    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/extractor/e/o;->b:Z

    iget-boolean v3, p0, Landroidx/media2/exoplayer/external/extractor/e/o;->c:Z

    invoke-direct {v1, v0, v2, v3}, Landroidx/media2/exoplayer/external/extractor/e/o$a;-><init>(Landroidx/media2/exoplayer/external/extractor/q;ZZ)V

    iput-object v1, p0, Landroidx/media2/exoplayer/external/extractor/e/o;->k:Landroidx/media2/exoplayer/external/extractor/e/o$a;

    .line 111
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/o;->a:Landroidx/media2/exoplayer/external/extractor/e/ab;

    invoke-virtual {v0, p1, p2}, Landroidx/media2/exoplayer/external/extractor/e/ab;->a(Landroidx/media2/exoplayer/external/extractor/i;Landroidx/media2/exoplayer/external/extractor/e/ah$d;)V

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/util/p;)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1142
    iget v2, v1, Landroidx/media2/exoplayer/external/util/p;->b:I

    .line 2125
    iget v3, v1, Landroidx/media2/exoplayer/external/util/p;->c:I

    .line 124
    iget-object v4, v1, Landroidx/media2/exoplayer/external/util/p;->a:[B

    .line 127
    iget-wide v5, v0, Landroidx/media2/exoplayer/external/extractor/e/o;->g:J

    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    iput-wide v5, v0, Landroidx/media2/exoplayer/external/extractor/e/o;->g:J

    .line 128
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/e/o;->j:Landroidx/media2/exoplayer/external/extractor/q;

    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v6

    invoke-interface {v5, v1, v6}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/util/p;I)V

    .line 132
    :goto_0
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/e/o;->h:[Z

    invoke-static {v4, v2, v3, v1}, Landroidx/media2/exoplayer/external/util/n;->a([BII[Z)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 136
    invoke-direct {v0, v4, v2, v3}, Landroidx/media2/exoplayer/external/extractor/e/o;->a([BII)V

    return-void

    .line 141
    :cond_0
    invoke-static {v4, v1}, Landroidx/media2/exoplayer/external/util/n;->b([BI)I

    move-result v5

    sub-int v6, v1, v2

    if-lez v6, :cond_1

    .line 147
    invoke-direct {v0, v4, v2, v1}, Landroidx/media2/exoplayer/external/extractor/e/o;->a([BII)V

    :cond_1
    sub-int v2, v3, v1

    .line 150
    iget-wide v7, v0, Landroidx/media2/exoplayer/external/extractor/e/o;->g:J

    int-to-long v9, v2

    sub-long/2addr v7, v9

    if-gez v6, :cond_2

    neg-int v6, v6

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    .line 155
    :goto_1
    iget-wide v10, v0, Landroidx/media2/exoplayer/external/extractor/e/o;->m:J

    .line 2187
    iget-boolean v12, v0, Landroidx/media2/exoplayer/external/extractor/e/o;->l:Z

    if-eqz v12, :cond_4

    iget-object v12, v0, Landroidx/media2/exoplayer/external/extractor/e/o;->k:Landroidx/media2/exoplayer/external/extractor/e/o$a;

    .line 2295
    iget-boolean v12, v12, Landroidx/media2/exoplayer/external/extractor/e/o$a;->c:Z

    if-eqz v12, :cond_3

    goto :goto_2

    :cond_3
    move/from16 v29, v1

    move/from16 v27, v3

    move-object/from16 v28, v4

    goto/16 :goto_3

    .line 2188
    :cond_4
    :goto_2
    iget-object v12, v0, Landroidx/media2/exoplayer/external/extractor/e/o;->d:Landroidx/media2/exoplayer/external/extractor/e/t;

    invoke-virtual {v12, v6}, Landroidx/media2/exoplayer/external/extractor/e/t;->b(I)Z

    .line 2189
    iget-object v12, v0, Landroidx/media2/exoplayer/external/extractor/e/o;->e:Landroidx/media2/exoplayer/external/extractor/e/t;

    invoke-virtual {v12, v6}, Landroidx/media2/exoplayer/external/extractor/e/t;->b(I)Z

    .line 2190
    iget-boolean v12, v0, Landroidx/media2/exoplayer/external/extractor/e/o;->l:Z

    const/4 v14, 0x3

    if-nez v12, :cond_5

    .line 2191
    iget-object v12, v0, Landroidx/media2/exoplayer/external/extractor/e/o;->d:Landroidx/media2/exoplayer/external/extractor/e/t;

    .line 3061
    iget-boolean v12, v12, Landroidx/media2/exoplayer/external/extractor/e/t;->a:Z

    if-eqz v12, :cond_3

    .line 2191
    iget-object v12, v0, Landroidx/media2/exoplayer/external/extractor/e/o;->e:Landroidx/media2/exoplayer/external/extractor/e/t;

    .line 4061
    iget-boolean v12, v12, Landroidx/media2/exoplayer/external/extractor/e/t;->a:Z

    if-eqz v12, :cond_3

    .line 2192
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 2193
    iget-object v15, v0, Landroidx/media2/exoplayer/external/extractor/e/o;->d:Landroidx/media2/exoplayer/external/extractor/e/t;

    iget-object v15, v15, Landroidx/media2/exoplayer/external/extractor/e/t;->b:[B

    iget-object v9, v0, Landroidx/media2/exoplayer/external/extractor/e/o;->d:Landroidx/media2/exoplayer/external/extractor/e/t;

    iget v9, v9, Landroidx/media2/exoplayer/external/extractor/e/t;->c:I

    invoke-static {v15, v9}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v9

    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2194
    iget-object v9, v0, Landroidx/media2/exoplayer/external/extractor/e/o;->e:Landroidx/media2/exoplayer/external/extractor/e/t;

    iget-object v9, v9, Landroidx/media2/exoplayer/external/extractor/e/t;->b:[B

    iget-object v15, v0, Landroidx/media2/exoplayer/external/extractor/e/o;->e:Landroidx/media2/exoplayer/external/extractor/e/t;

    iget v15, v15, Landroidx/media2/exoplayer/external/extractor/e/t;->c:I

    invoke-static {v9, v15}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v9

    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2195
    iget-object v9, v0, Landroidx/media2/exoplayer/external/extractor/e/o;->d:Landroidx/media2/exoplayer/external/extractor/e/t;

    iget-object v9, v9, Landroidx/media2/exoplayer/external/extractor/e/t;->b:[B

    iget-object v15, v0, Landroidx/media2/exoplayer/external/extractor/e/o;->d:Landroidx/media2/exoplayer/external/extractor/e/t;

    iget v15, v15, Landroidx/media2/exoplayer/external/extractor/e/t;->c:I

    invoke-static {v9, v14, v15}, Landroidx/media2/exoplayer/external/util/n;->a([BII)Landroidx/media2/exoplayer/external/util/n$b;

    move-result-object v9

    .line 2196
    iget-object v14, v0, Landroidx/media2/exoplayer/external/extractor/e/o;->e:Landroidx/media2/exoplayer/external/extractor/e/t;

    iget-object v14, v14, Landroidx/media2/exoplayer/external/extractor/e/t;->b:[B

    iget-object v15, v0, Landroidx/media2/exoplayer/external/extractor/e/o;->e:Landroidx/media2/exoplayer/external/extractor/e/t;

    iget v15, v15, Landroidx/media2/exoplayer/external/extractor/e/t;->c:I

    invoke-static {v14, v15}, Landroidx/media2/exoplayer/external/util/n;->d([BI)Landroidx/media2/exoplayer/external/util/n$a;

    move-result-object v14

    .line 2197
    iget-object v15, v0, Landroidx/media2/exoplayer/external/extractor/e/o;->j:Landroidx/media2/exoplayer/external/extractor/q;

    iget-object v13, v0, Landroidx/media2/exoplayer/external/extractor/e/o;->i:Ljava/lang/String;

    move/from16 v27, v3

    iget v3, v9, Landroidx/media2/exoplayer/external/util/n$b;->a:I

    move-object/from16 v28, v4

    iget v4, v9, Landroidx/media2/exoplayer/external/util/n$b;->b:I

    move-object/from16 v16, v15

    iget v15, v9, Landroidx/media2/exoplayer/external/util/n$b;->c:I

    .line 2201
    invoke-static {v3, v4, v15}, Landroidx/media2/exoplayer/external/util/c;->b(III)Ljava/lang/String;

    move-result-object v17

    const/16 v18, -0x1

    const/16 v19, -0x1

    iget v3, v9, Landroidx/media2/exoplayer/external/util/n$b;->e:I

    iget v4, v9, Landroidx/media2/exoplayer/external/util/n$b;->f:I

    const/high16 v22, -0x40800000    # -1.0f

    const/16 v24, -0x1

    iget v15, v9, Landroidx/media2/exoplayer/external/util/n$b;->g:F

    const/16 v26, 0x0

    const-string v20, "video/avc"

    move/from16 v29, v1

    move/from16 v25, v15

    move-object/from16 v1, v16

    move-object v15, v13

    move-object/from16 v16, v20

    move/from16 v20, v3

    move/from16 v21, v4

    move-object/from16 v23, v12

    .line 2198
    invoke-static/range {v15 .. v26}, Landroidx/media2/exoplayer/external/Format;->createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLandroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v3

    .line 2197
    invoke-interface {v1, v3}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/Format;)V

    const/4 v1, 0x1

    .line 2214
    iput-boolean v1, v0, Landroidx/media2/exoplayer/external/extractor/e/o;->l:Z

    .line 2215
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/e/o;->k:Landroidx/media2/exoplayer/external/extractor/e/o$a;

    invoke-virtual {v1, v9}, Landroidx/media2/exoplayer/external/extractor/e/o$a;->a(Landroidx/media2/exoplayer/external/util/n$b;)V

    .line 2216
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/e/o;->k:Landroidx/media2/exoplayer/external/extractor/e/o$a;

    invoke-virtual {v1, v14}, Landroidx/media2/exoplayer/external/extractor/e/o$a;->a(Landroidx/media2/exoplayer/external/util/n$a;)V

    .line 2217
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/e/o;->d:Landroidx/media2/exoplayer/external/extractor/e/t;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/extractor/e/t;->a()V

    .line 2218
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/e/o;->e:Landroidx/media2/exoplayer/external/extractor/e/t;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/extractor/e/t;->a()V

    goto :goto_3

    :cond_5
    move/from16 v29, v1

    move/from16 v27, v3

    move-object/from16 v28, v4

    .line 2220
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/e/o;->d:Landroidx/media2/exoplayer/external/extractor/e/t;

    .line 5061
    iget-boolean v1, v1, Landroidx/media2/exoplayer/external/extractor/e/t;->a:Z

    if-eqz v1, :cond_6

    .line 2221
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/e/o;->d:Landroidx/media2/exoplayer/external/extractor/e/t;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/extractor/e/t;->b:[B

    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/e/o;->d:Landroidx/media2/exoplayer/external/extractor/e/t;

    iget v3, v3, Landroidx/media2/exoplayer/external/extractor/e/t;->c:I

    invoke-static {v1, v14, v3}, Landroidx/media2/exoplayer/external/util/n;->a([BII)Landroidx/media2/exoplayer/external/util/n$b;

    move-result-object v1

    .line 2222
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/e/o;->k:Landroidx/media2/exoplayer/external/extractor/e/o$a;

    invoke-virtual {v3, v1}, Landroidx/media2/exoplayer/external/extractor/e/o$a;->a(Landroidx/media2/exoplayer/external/util/n$b;)V

    .line 2223
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/e/o;->d:Landroidx/media2/exoplayer/external/extractor/e/t;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/extractor/e/t;->a()V

    goto :goto_3

    .line 2224
    :cond_6
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/e/o;->e:Landroidx/media2/exoplayer/external/extractor/e/t;

    .line 6061
    iget-boolean v1, v1, Landroidx/media2/exoplayer/external/extractor/e/t;->a:Z

    if-eqz v1, :cond_7

    .line 2225
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/e/o;->e:Landroidx/media2/exoplayer/external/extractor/e/t;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/extractor/e/t;->b:[B

    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/e/o;->e:Landroidx/media2/exoplayer/external/extractor/e/t;

    iget v3, v3, Landroidx/media2/exoplayer/external/extractor/e/t;->c:I

    invoke-static {v1, v3}, Landroidx/media2/exoplayer/external/util/n;->d([BI)Landroidx/media2/exoplayer/external/util/n$a;

    move-result-object v1

    .line 2226
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/e/o;->k:Landroidx/media2/exoplayer/external/extractor/e/o$a;

    invoke-virtual {v3, v1}, Landroidx/media2/exoplayer/external/extractor/e/o$a;->a(Landroidx/media2/exoplayer/external/util/n$a;)V

    .line 2227
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/e/o;->e:Landroidx/media2/exoplayer/external/extractor/e/t;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/extractor/e/t;->a()V

    .line 2230
    :cond_7
    :goto_3
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/e/o;->f:Landroidx/media2/exoplayer/external/extractor/e/t;

    invoke-virtual {v1, v6}, Landroidx/media2/exoplayer/external/extractor/e/t;->b(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2231
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/e/o;->f:Landroidx/media2/exoplayer/external/extractor/e/t;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/extractor/e/t;->b:[B

    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/e/o;->f:Landroidx/media2/exoplayer/external/extractor/e/t;

    iget v3, v3, Landroidx/media2/exoplayer/external/extractor/e/t;->c:I

    invoke-static {v1, v3}, Landroidx/media2/exoplayer/external/util/n;->a([BI)I

    move-result v1

    .line 2232
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/e/o;->o:Landroidx/media2/exoplayer/external/util/p;

    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/e/o;->f:Landroidx/media2/exoplayer/external/extractor/e/t;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/extractor/e/t;->b:[B

    invoke-virtual {v3, v4, v1}, Landroidx/media2/exoplayer/external/util/p;->a([BI)V

    .line 2233
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/e/o;->o:Landroidx/media2/exoplayer/external/util/p;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 2234
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/e/o;->a:Landroidx/media2/exoplayer/external/extractor/e/ab;

    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/e/o;->o:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v1, v10, v11, v3}, Landroidx/media2/exoplayer/external/extractor/e/ab;->a(JLandroidx/media2/exoplayer/external/util/p;)V

    .line 2236
    :cond_8
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/e/o;->k:Landroidx/media2/exoplayer/external/extractor/e/o$a;

    iget-boolean v3, v0, Landroidx/media2/exoplayer/external/extractor/e/o;->l:Z

    iget-boolean v4, v0, Landroidx/media2/exoplayer/external/extractor/e/o;->n:Z

    .line 6453
    iget v6, v1, Landroidx/media2/exoplayer/external/extractor/e/o$a;->e:I

    const/16 v9, 0x9

    if-eq v6, v9, :cond_f

    iget-boolean v6, v1, Landroidx/media2/exoplayer/external/extractor/e/o$a;->c:Z

    if-eqz v6, :cond_11

    iget-object v6, v1, Landroidx/media2/exoplayer/external/extractor/e/o$a;->j:Landroidx/media2/exoplayer/external/extractor/e/o$a$a;

    iget-object v9, v1, Landroidx/media2/exoplayer/external/extractor/e/o$a;->i:Landroidx/media2/exoplayer/external/extractor/e/o$a$a;

    .line 6551
    iget-boolean v10, v6, Landroidx/media2/exoplayer/external/extractor/e/o$a$a;->a:Z

    if-eqz v10, :cond_e

    iget-boolean v10, v9, Landroidx/media2/exoplayer/external/extractor/e/o$a$a;->a:Z

    if-eqz v10, :cond_d

    iget v10, v6, Landroidx/media2/exoplayer/external/extractor/e/o$a$a;->f:I

    iget v11, v9, Landroidx/media2/exoplayer/external/extractor/e/o$a$a;->f:I

    if-ne v10, v11, :cond_d

    iget v10, v6, Landroidx/media2/exoplayer/external/extractor/e/o$a$a;->g:I

    iget v11, v9, Landroidx/media2/exoplayer/external/extractor/e/o$a$a;->g:I

    if-ne v10, v11, :cond_d

    iget-boolean v10, v6, Landroidx/media2/exoplayer/external/extractor/e/o$a$a;->h:Z

    iget-boolean v11, v9, Landroidx/media2/exoplayer/external/extractor/e/o$a$a;->h:Z

    if-ne v10, v11, :cond_d

    iget-boolean v10, v6, Landroidx/media2/exoplayer/external/extractor/e/o$a$a;->i:Z

    if-eqz v10, :cond_9

    iget-boolean v10, v9, Landroidx/media2/exoplayer/external/extractor/e/o$a$a;->i:Z

    if-eqz v10, :cond_9

    iget-boolean v10, v6, Landroidx/media2/exoplayer/external/extractor/e/o$a$a;->j:Z

    iget-boolean v11, v9, Landroidx/media2/exoplayer/external/extractor/e/o$a$a;->j:Z

    if-ne v10, v11, :cond_d

    :cond_9
    iget v10, v6, Landroidx/media2/exoplayer/external/extractor/e/o$a$a;->d:I

    iget v11, v9, Landroidx/media2/exoplayer/external/extractor/e/o$a$a;->d:I

    if-eq v10, v11, :cond_a

    iget v10, v6, Landroidx/media2/exoplayer/external/extractor/e/o$a$a;->d:I

    if-eqz v10, :cond_d

    iget v10, v9, Landroidx/media2/exoplayer/external/extractor/e/o$a$a;->d:I

    if-eqz v10, :cond_d

    :cond_a
    iget-object v10, v6, Landroidx/media2/exoplayer/external/extractor/e/o$a$a;->c:Landroidx/media2/exoplayer/external/util/n$b;

    iget v10, v10, Landroidx/media2/exoplayer/external/util/n$b;->k:I

    if-nez v10, :cond_b

    iget-object v10, v9, Landroidx/media2/exoplayer/external/extractor/e/o$a$a;->c:Landroidx/media2/exoplayer/external/util/n$b;

    iget v10, v10, Landroidx/media2/exoplayer/external/util/n$b;->k:I

    if-nez v10, :cond_b

    iget v10, v6, Landroidx/media2/exoplayer/external/extractor/e/o$a$a;->m:I

    iget v11, v9, Landroidx/media2/exoplayer/external/extractor/e/o$a$a;->m:I

    if-ne v10, v11, :cond_d

    iget v10, v6, Landroidx/media2/exoplayer/external/extractor/e/o$a$a;->n:I

    iget v11, v9, Landroidx/media2/exoplayer/external/extractor/e/o$a$a;->n:I

    if-ne v10, v11, :cond_d

    :cond_b
    iget-object v10, v6, Landroidx/media2/exoplayer/external/extractor/e/o$a$a;->c:Landroidx/media2/exoplayer/external/util/n$b;

    iget v10, v10, Landroidx/media2/exoplayer/external/util/n$b;->k:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_c

    iget-object v10, v9, Landroidx/media2/exoplayer/external/extractor/e/o$a$a;->c:Landroidx/media2/exoplayer/external/util/n$b;

    iget v10, v10, Landroidx/media2/exoplayer/external/util/n$b;->k:I

    if-ne v10, v11, :cond_c

    iget v10, v6, Landroidx/media2/exoplayer/external/extractor/e/o$a$a;->o:I

    iget v11, v9, Landroidx/media2/exoplayer/external/extractor/e/o$a$a;->o:I

    if-ne v10, v11, :cond_d

    iget v10, v6, Landroidx/media2/exoplayer/external/extractor/e/o$a$a;->p:I

    iget v11, v9, Landroidx/media2/exoplayer/external/extractor/e/o$a$a;->p:I

    if-ne v10, v11, :cond_d

    :cond_c
    iget-boolean v10, v6, Landroidx/media2/exoplayer/external/extractor/e/o$a$a;->k:Z

    iget-boolean v11, v9, Landroidx/media2/exoplayer/external/extractor/e/o$a$a;->k:Z

    if-ne v10, v11, :cond_d

    iget-boolean v10, v6, Landroidx/media2/exoplayer/external/extractor/e/o$a$a;->k:Z

    if-eqz v10, :cond_e

    iget-boolean v10, v9, Landroidx/media2/exoplayer/external/extractor/e/o$a$a;->k:Z

    if-eqz v10, :cond_e

    iget v6, v6, Landroidx/media2/exoplayer/external/extractor/e/o$a$a;->l:I

    iget v9, v9, Landroidx/media2/exoplayer/external/extractor/e/o$a$a;->l:I

    if-eq v6, v9, :cond_e

    :cond_d
    const/4 v6, 0x1

    goto :goto_4

    :cond_e
    const/4 v6, 0x0

    :goto_4
    if-eqz v6, :cond_11

    :cond_f
    if-eqz v3, :cond_10

    .line 6456
    iget-boolean v3, v1, Landroidx/media2/exoplayer/external/extractor/e/o$a;->k:Z

    if-eqz v3, :cond_10

    .line 6457
    iget-wide v9, v1, Landroidx/media2/exoplayer/external/extractor/e/o$a;->f:J

    sub-long v9, v7, v9

    long-to-int v3, v9

    add-int v14, v2, v3

    .line 7474
    iget-boolean v12, v1, Landroidx/media2/exoplayer/external/extractor/e/o$a;->n:Z

    .line 7475
    iget-wide v2, v1, Landroidx/media2/exoplayer/external/extractor/e/o$a;->f:J

    iget-wide v9, v1, Landroidx/media2/exoplayer/external/extractor/e/o$a;->l:J

    sub-long/2addr v2, v9

    long-to-int v13, v2

    .line 7476
    iget-object v9, v1, Landroidx/media2/exoplayer/external/extractor/e/o$a;->a:Landroidx/media2/exoplayer/external/extractor/q;

    iget-wide v10, v1, Landroidx/media2/exoplayer/external/extractor/e/o$a;->m:J

    const/4 v15, 0x0

    invoke-interface/range {v9 .. v15}, Landroidx/media2/exoplayer/external/extractor/q;->a(JIIILandroidx/media2/exoplayer/external/extractor/q$a;)V

    .line 6460
    :cond_10
    iget-wide v2, v1, Landroidx/media2/exoplayer/external/extractor/e/o$a;->f:J

    iput-wide v2, v1, Landroidx/media2/exoplayer/external/extractor/e/o$a;->l:J

    .line 6461
    iget-wide v2, v1, Landroidx/media2/exoplayer/external/extractor/e/o$a;->h:J

    iput-wide v2, v1, Landroidx/media2/exoplayer/external/extractor/e/o$a;->m:J

    const/4 v2, 0x0

    .line 6462
    iput-boolean v2, v1, Landroidx/media2/exoplayer/external/extractor/e/o$a;->n:Z

    const/4 v2, 0x1

    .line 6463
    iput-boolean v2, v1, Landroidx/media2/exoplayer/external/extractor/e/o$a;->k:Z

    .line 6466
    :cond_11
    iget-boolean v2, v1, Landroidx/media2/exoplayer/external/extractor/e/o$a;->b:Z

    const/4 v3, 0x2

    if-eqz v2, :cond_14

    iget-object v2, v1, Landroidx/media2/exoplayer/external/extractor/e/o$a;->j:Landroidx/media2/exoplayer/external/extractor/e/o$a$a;

    .line 7546
    iget-boolean v4, v2, Landroidx/media2/exoplayer/external/extractor/e/o$a$a;->b:Z

    if-eqz v4, :cond_13

    iget v4, v2, Landroidx/media2/exoplayer/external/extractor/e/o$a$a;->e:I

    const/4 v6, 0x7

    if-eq v4, v6, :cond_12

    iget v2, v2, Landroidx/media2/exoplayer/external/extractor/e/o$a$a;->e:I

    if-ne v2, v3, :cond_13

    :cond_12
    const/4 v4, 0x1

    goto :goto_5

    :cond_13
    const/4 v4, 0x0

    .line 6467
    :cond_14
    :goto_5
    iget-boolean v2, v1, Landroidx/media2/exoplayer/external/extractor/e/o$a;->n:Z

    iget v6, v1, Landroidx/media2/exoplayer/external/extractor/e/o$a;->e:I

    const/4 v9, 0x5

    if-eq v6, v9, :cond_16

    if-eqz v4, :cond_15

    iget v4, v1, Landroidx/media2/exoplayer/external/extractor/e/o$a;->e:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_15

    goto :goto_6

    :cond_15
    const/4 v4, 0x0

    goto :goto_7

    :cond_16
    :goto_6
    const/4 v4, 0x1

    :goto_7
    or-int/2addr v2, v4

    iput-boolean v2, v1, Landroidx/media2/exoplayer/external/extractor/e/o$a;->n:Z

    .line 6470
    iget-boolean v1, v1, Landroidx/media2/exoplayer/external/extractor/e/o$a;->n:Z

    if-eqz v1, :cond_17

    const/4 v1, 0x0

    .line 2242
    iput-boolean v1, v0, Landroidx/media2/exoplayer/external/extractor/e/o;->n:Z

    .line 157
    :cond_17
    iget-wide v1, v0, Landroidx/media2/exoplayer/external/extractor/e/o;->m:J

    .line 8169
    iget-boolean v4, v0, Landroidx/media2/exoplayer/external/extractor/e/o;->l:Z

    if-eqz v4, :cond_18

    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/e/o;->k:Landroidx/media2/exoplayer/external/extractor/e/o$a;

    .line 8295
    iget-boolean v4, v4, Landroidx/media2/exoplayer/external/extractor/e/o$a;->c:Z

    if-eqz v4, :cond_19

    .line 8170
    :cond_18
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/e/o;->d:Landroidx/media2/exoplayer/external/extractor/e/t;

    invoke-virtual {v4, v5}, Landroidx/media2/exoplayer/external/extractor/e/t;->a(I)V

    .line 8171
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/e/o;->e:Landroidx/media2/exoplayer/external/extractor/e/t;

    invoke-virtual {v4, v5}, Landroidx/media2/exoplayer/external/extractor/e/t;->a(I)V

    .line 8173
    :cond_19
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/e/o;->f:Landroidx/media2/exoplayer/external/extractor/e/t;

    invoke-virtual {v4, v5}, Landroidx/media2/exoplayer/external/extractor/e/t;->a(I)V

    .line 8174
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/e/o;->k:Landroidx/media2/exoplayer/external/extractor/e/o$a;

    .line 8313
    iput v5, v4, Landroidx/media2/exoplayer/external/extractor/e/o$a;->e:I

    .line 8314
    iput-wide v1, v4, Landroidx/media2/exoplayer/external/extractor/e/o$a;->h:J

    .line 8315
    iput-wide v7, v4, Landroidx/media2/exoplayer/external/extractor/e/o$a;->f:J

    .line 8316
    iget-boolean v1, v4, Landroidx/media2/exoplayer/external/extractor/e/o$a;->b:Z

    if-eqz v1, :cond_1a

    iget v1, v4, Landroidx/media2/exoplayer/external/extractor/e/o$a;->e:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1b

    goto :goto_8

    :cond_1a
    const/4 v2, 0x1

    :goto_8
    iget-boolean v1, v4, Landroidx/media2/exoplayer/external/extractor/e/o$a;->c:Z

    if-eqz v1, :cond_1c

    iget v1, v4, Landroidx/media2/exoplayer/external/extractor/e/o$a;->e:I

    if-eq v1, v9, :cond_1b

    iget v1, v4, Landroidx/media2/exoplayer/external/extractor/e/o$a;->e:I

    if-eq v1, v2, :cond_1b

    iget v1, v4, Landroidx/media2/exoplayer/external/extractor/e/o$a;->e:I

    if-ne v1, v3, :cond_1c

    .line 8321
    :cond_1b
    iget-object v1, v4, Landroidx/media2/exoplayer/external/extractor/e/o$a;->i:Landroidx/media2/exoplayer/external/extractor/e/o$a$a;

    .line 8322
    iget-object v2, v4, Landroidx/media2/exoplayer/external/extractor/e/o$a;->j:Landroidx/media2/exoplayer/external/extractor/e/o$a$a;

    iput-object v2, v4, Landroidx/media2/exoplayer/external/extractor/e/o$a;->i:Landroidx/media2/exoplayer/external/extractor/e/o$a$a;

    .line 8323
    iput-object v1, v4, Landroidx/media2/exoplayer/external/extractor/e/o$a;->j:Landroidx/media2/exoplayer/external/extractor/e/o$a$a;

    .line 8324
    iget-object v1, v4, Landroidx/media2/exoplayer/external/extractor/e/o$a;->j:Landroidx/media2/exoplayer/external/extractor/e/o$a$a;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/extractor/e/o$a$a;->a()V

    const/4 v1, 0x0

    .line 8325
    iput v1, v4, Landroidx/media2/exoplayer/external/extractor/e/o$a;->d:I

    const/4 v1, 0x1

    .line 8326
    iput-boolean v1, v4, Landroidx/media2/exoplayer/external/extractor/e/o$a;->g:Z

    :cond_1c
    add-int/lit8 v2, v29, 0x3

    move/from16 v3, v27

    move-object/from16 v4, v28

    goto/16 :goto_0
.end method

.method public final b()V
    .locals 0

    return-void
.end method
