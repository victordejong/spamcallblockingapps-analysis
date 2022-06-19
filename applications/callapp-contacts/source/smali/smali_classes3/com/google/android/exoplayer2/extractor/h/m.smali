.class public final Lcom/google/android/exoplayer2/extractor/h/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/h/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/h/m$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/extractor/h/z;

.field private final b:Z

.field private final c:Z

.field private final d:Lcom/google/android/exoplayer2/extractor/h/r;

.field private final e:Lcom/google/android/exoplayer2/extractor/h/r;

.field private final f:Lcom/google/android/exoplayer2/extractor/h/r;

.field private g:J

.field private final h:[Z

.field private i:Ljava/lang/String;

.field private j:Lcom/google/android/exoplayer2/extractor/x;

.field private k:Lcom/google/android/exoplayer2/extractor/h/m$a;

.field private l:Z

.field private m:J

.field private n:Z

.field private final o:Lcom/google/android/exoplayer2/util/u;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/h/z;ZZ)V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/m;->a:Lcom/google/android/exoplayer2/extractor/h/z;

    .line 85
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/extractor/h/m;->b:Z

    .line 86
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/extractor/h/m;->c:Z

    const/4 p1, 0x3

    new-array p1, p1, [Z

    .line 87
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/m;->h:[Z

    .line 88
    new-instance p1, Lcom/google/android/exoplayer2/extractor/h/r;

    const/4 p2, 0x7

    const/16 p3, 0x80

    invoke-direct {p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/h/r;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/m;->d:Lcom/google/android/exoplayer2/extractor/h/r;

    .line 89
    new-instance p1, Lcom/google/android/exoplayer2/extractor/h/r;

    const/16 p2, 0x8

    invoke-direct {p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/h/r;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/m;->e:Lcom/google/android/exoplayer2/extractor/h/r;

    .line 90
    new-instance p1, Lcom/google/android/exoplayer2/extractor/h/r;

    const/4 p2, 0x6

    invoke-direct {p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/h/r;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/m;->f:Lcom/google/android/exoplayer2/extractor/h/r;

    .line 91
    new-instance p1, Lcom/google/android/exoplayer2/util/u;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/u;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/m;->o:Lcom/google/android/exoplayer2/util/u;

    return-void
.end method

.method private a([BII)V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "sampleReader"
        }
    .end annotation

    .line 184
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/h/m;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/m;->k:Lcom/google/android/exoplayer2/extractor/h/m$a;

    .line 12306
    iget-boolean v0, v0, Lcom/google/android/exoplayer2/extractor/h/m$a;->c:Z

    if-eqz v0, :cond_1

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/m;->d:Lcom/google/android/exoplayer2/extractor/h/r;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/h/r;->a([BII)V

    .line 186
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/m;->e:Lcom/google/android/exoplayer2/extractor/h/r;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/h/r;->a([BII)V

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/m;->f:Lcom/google/android/exoplayer2/extractor/h/r;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/h/r;->a([BII)V

    .line 189
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/m;->k:Lcom/google/android/exoplayer2/extractor/h/m$a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/h/m$a;->a([BII)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 96
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/h/m;->g:J

    const/4 v0, 0x0

    .line 97
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/h/m;->n:Z

    .line 98
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/m;->h:[Z

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/s;->a([Z)V

    .line 99
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/m;->d:Lcom/google/android/exoplayer2/extractor/h/r;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/h/r;->a()V

    .line 100
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/m;->e:Lcom/google/android/exoplayer2/extractor/h/r;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/h/r;->a()V

    .line 101
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/m;->f:Lcom/google/android/exoplayer2/extractor/h/r;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/h/r;->a()V

    .line 102
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/m;->k:Lcom/google/android/exoplayer2/extractor/h/m$a;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/h/m$a;->a()V

    :cond_0
    return-void
.end method

.method public final a(JI)V
    .locals 0

    .line 118
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/h/m;->m:J

    .line 119
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/h/m;->n:Z

    and-int/lit8 p2, p3, 0x2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    or-int/2addr p1, p2

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/h/m;->n:Z

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/extractor/j;Lcom/google/android/exoplayer2/extractor/h/ad$d;)V
    .locals 4

    .line 109
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/h/ad$d;->a()V

    .line 110
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/h/ad$d;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/m;->i:Ljava/lang/String;

    .line 111
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/h/ad$d;->b()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/j;->a(II)Lcom/google/android/exoplayer2/extractor/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/m;->j:Lcom/google/android/exoplayer2/extractor/x;

    .line 112
    new-instance v1, Lcom/google/android/exoplayer2/extractor/h/m$a;

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/h/m;->b:Z

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/h/m;->c:Z

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/exoplayer2/extractor/h/m$a;-><init>(Lcom/google/android/exoplayer2/extractor/x;ZZ)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/h/m;->k:Lcom/google/android/exoplayer2/extractor/h/m$a;

    .line 113
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/m;->a:Lcom/google/android/exoplayer2/extractor/h/z;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/h/z;->a(Lcom/google/android/exoplayer2/extractor/j;Lcom/google/android/exoplayer2/extractor/h/ad$d;)V

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/util/u;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1253
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/h/m;->j:Lcom/google/android/exoplayer2/extractor/x;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1254
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/h/m;->k:Lcom/google/android/exoplayer2/extractor/h/m$a;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2144
    iget v2, v1, Lcom/google/android/exoplayer2/util/u;->b:I

    .line 3127
    iget v3, v1, Lcom/google/android/exoplayer2/util/u;->c:I

    .line 3169
    iget-object v4, v1, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 131
    iget-wide v5, v0, Lcom/google/android/exoplayer2/extractor/h/m;->g:J

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    iput-wide v5, v0, Lcom/google/android/exoplayer2/extractor/h/m;->g:J

    .line 132
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/h/m;->j:Lcom/google/android/exoplayer2/extractor/x;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v6

    invoke-interface {v5, v1, v6}, Lcom/google/android/exoplayer2/extractor/x;->b(Lcom/google/android/exoplayer2/util/u;I)V

    .line 136
    :goto_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/h/m;->h:[Z

    invoke-static {v4, v2, v3, v1}, Lcom/google/android/exoplayer2/util/s;->a([BII[Z)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 140
    invoke-direct {v0, v4, v2, v3}, Lcom/google/android/exoplayer2/extractor/h/m;->a([BII)V

    return-void

    .line 145
    :cond_0
    invoke-static {v4, v1}, Lcom/google/android/exoplayer2/util/s;->b([BI)I

    move-result v5

    sub-int v6, v1, v2

    if-lez v6, :cond_1

    .line 151
    invoke-direct {v0, v4, v2, v1}, Lcom/google/android/exoplayer2/extractor/h/m;->a([BII)V

    :cond_1
    sub-int v2, v3, v1

    .line 154
    iget-wide v7, v0, Lcom/google/android/exoplayer2/extractor/h/m;->g:J

    int-to-long v9, v2

    sub-long/2addr v7, v9

    if-gez v6, :cond_2

    neg-int v6, v6

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    .line 159
    :goto_1
    iget-wide v10, v0, Lcom/google/android/exoplayer2/extractor/h/m;->m:J

    .line 3194
    iget-boolean v12, v0, Lcom/google/android/exoplayer2/extractor/h/m;->l:Z

    if-eqz v12, :cond_4

    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/h/m;->k:Lcom/google/android/exoplayer2/extractor/h/m$a;

    .line 3306
    iget-boolean v12, v12, Lcom/google/android/exoplayer2/extractor/h/m$a;->c:Z

    if-eqz v12, :cond_3

    goto :goto_2

    :cond_3
    move/from16 v16, v3

    move-object/from16 v17, v4

    goto/16 :goto_3

    .line 3195
    :cond_4
    :goto_2
    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/h/m;->d:Lcom/google/android/exoplayer2/extractor/h/r;

    invoke-virtual {v12, v6}, Lcom/google/android/exoplayer2/extractor/h/r;->b(I)Z

    .line 3196
    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/h/m;->e:Lcom/google/android/exoplayer2/extractor/h/r;

    invoke-virtual {v12, v6}, Lcom/google/android/exoplayer2/extractor/h/r;->b(I)Z

    .line 3197
    iget-boolean v12, v0, Lcom/google/android/exoplayer2/extractor/h/m;->l:Z

    const/4 v14, 0x3

    if-nez v12, :cond_5

    .line 3198
    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/h/m;->d:Lcom/google/android/exoplayer2/extractor/h/r;

    .line 4055
    iget-boolean v12, v12, Lcom/google/android/exoplayer2/extractor/h/r;->a:Z

    if-eqz v12, :cond_3

    .line 3198
    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/h/m;->e:Lcom/google/android/exoplayer2/extractor/h/r;

    .line 5055
    iget-boolean v12, v12, Lcom/google/android/exoplayer2/extractor/h/r;->a:Z

    if-eqz v12, :cond_3

    .line 3199
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 3200
    iget-object v15, v0, Lcom/google/android/exoplayer2/extractor/h/m;->d:Lcom/google/android/exoplayer2/extractor/h/r;

    iget-object v15, v15, Lcom/google/android/exoplayer2/extractor/h/r;->b:[B

    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/h/m;->d:Lcom/google/android/exoplayer2/extractor/h/r;

    iget v9, v9, Lcom/google/android/exoplayer2/extractor/h/r;->c:I

    invoke-static {v15, v9}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v9

    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3201
    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/h/m;->e:Lcom/google/android/exoplayer2/extractor/h/r;

    iget-object v9, v9, Lcom/google/android/exoplayer2/extractor/h/r;->b:[B

    iget-object v15, v0, Lcom/google/android/exoplayer2/extractor/h/m;->e:Lcom/google/android/exoplayer2/extractor/h/r;

    iget v15, v15, Lcom/google/android/exoplayer2/extractor/h/r;->c:I

    invoke-static {v9, v15}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v9

    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3202
    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/h/m;->d:Lcom/google/android/exoplayer2/extractor/h/r;

    iget-object v9, v9, Lcom/google/android/exoplayer2/extractor/h/r;->b:[B

    iget-object v15, v0, Lcom/google/android/exoplayer2/extractor/h/m;->d:Lcom/google/android/exoplayer2/extractor/h/r;

    iget v15, v15, Lcom/google/android/exoplayer2/extractor/h/r;->c:I

    invoke-static {v9, v14, v15}, Lcom/google/android/exoplayer2/util/s;->a([BII)Lcom/google/android/exoplayer2/util/s$b;

    move-result-object v9

    .line 3203
    iget-object v14, v0, Lcom/google/android/exoplayer2/extractor/h/m;->e:Lcom/google/android/exoplayer2/extractor/h/r;

    iget-object v14, v14, Lcom/google/android/exoplayer2/extractor/h/r;->b:[B

    iget-object v15, v0, Lcom/google/android/exoplayer2/extractor/h/m;->e:Lcom/google/android/exoplayer2/extractor/h/r;

    iget v15, v15, Lcom/google/android/exoplayer2/extractor/h/r;->c:I

    invoke-static {v14, v15}, Lcom/google/android/exoplayer2/util/s;->d([BI)Lcom/google/android/exoplayer2/util/s$a;

    move-result-object v14

    .line 3204
    iget v15, v9, Lcom/google/android/exoplayer2/util/s$b;->a:I

    iget v13, v9, Lcom/google/android/exoplayer2/util/s$b;->b:I

    move/from16 v16, v3

    iget v3, v9, Lcom/google/android/exoplayer2/util/s$b;->c:I

    .line 3205
    invoke-static {v15, v13, v3}, Lcom/google/android/exoplayer2/util/d;->a(III)Ljava/lang/String;

    move-result-object v3

    .line 3209
    iget-object v13, v0, Lcom/google/android/exoplayer2/extractor/h/m;->j:Lcom/google/android/exoplayer2/extractor/x;

    new-instance v15, Lcom/google/android/exoplayer2/Format$a;

    invoke-direct {v15}, Lcom/google/android/exoplayer2/Format$a;-><init>()V

    move-object/from16 v17, v4

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/h/m;->i:Ljava/lang/String;

    .line 5244
    iput-object v4, v15, Lcom/google/android/exoplayer2/Format$a;->a:Ljava/lang/String;

    const-string v4, "video/avc"

    .line 5370
    iput-object v4, v15, Lcom/google/android/exoplayer2/Format$a;->k:Ljava/lang/String;

    .line 6333
    iput-object v3, v15, Lcom/google/android/exoplayer2/Format$a;->h:Ljava/lang/String;

    .line 3213
    iget v3, v9, Lcom/google/android/exoplayer2/util/s$b;->e:I

    .line 6427
    iput v3, v15, Lcom/google/android/exoplayer2/Format$a;->p:I

    .line 3214
    iget v3, v9, Lcom/google/android/exoplayer2/util/s$b;->f:I

    .line 6438
    iput v3, v15, Lcom/google/android/exoplayer2/Format$a;->q:I

    .line 3215
    iget v3, v9, Lcom/google/android/exoplayer2/util/s$b;->g:F

    .line 6471
    iput v3, v15, Lcom/google/android/exoplayer2/Format$a;->t:F

    .line 7392
    iput-object v12, v15, Lcom/google/android/exoplayer2/Format$a;->m:Ljava/util/List;

    .line 3218
    invoke-virtual {v15}, Lcom/google/android/exoplayer2/Format$a;->a()Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    .line 3209
    invoke-interface {v13, v3}, Lcom/google/android/exoplayer2/extractor/x;->a(Lcom/google/android/exoplayer2/Format;)V

    const/4 v3, 0x1

    .line 3219
    iput-boolean v3, v0, Lcom/google/android/exoplayer2/extractor/h/m;->l:Z

    .line 3220
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/h/m;->k:Lcom/google/android/exoplayer2/extractor/h/m$a;

    invoke-virtual {v3, v9}, Lcom/google/android/exoplayer2/extractor/h/m$a;->a(Lcom/google/android/exoplayer2/util/s$b;)V

    .line 3221
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/h/m;->k:Lcom/google/android/exoplayer2/extractor/h/m$a;

    invoke-virtual {v3, v14}, Lcom/google/android/exoplayer2/extractor/h/m$a;->a(Lcom/google/android/exoplayer2/util/s$a;)V

    .line 3222
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/h/m;->d:Lcom/google/android/exoplayer2/extractor/h/r;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/extractor/h/r;->a()V

    .line 3223
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/h/m;->e:Lcom/google/android/exoplayer2/extractor/h/r;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/extractor/h/r;->a()V

    goto :goto_3

    :cond_5
    move/from16 v16, v3

    move-object/from16 v17, v4

    .line 3225
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/h/m;->d:Lcom/google/android/exoplayer2/extractor/h/r;

    .line 8055
    iget-boolean v3, v3, Lcom/google/android/exoplayer2/extractor/h/r;->a:Z

    if-eqz v3, :cond_6

    .line 3226
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/h/m;->d:Lcom/google/android/exoplayer2/extractor/h/r;

    iget-object v3, v3, Lcom/google/android/exoplayer2/extractor/h/r;->b:[B

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/h/m;->d:Lcom/google/android/exoplayer2/extractor/h/r;

    iget v4, v4, Lcom/google/android/exoplayer2/extractor/h/r;->c:I

    invoke-static {v3, v14, v4}, Lcom/google/android/exoplayer2/util/s;->a([BII)Lcom/google/android/exoplayer2/util/s$b;

    move-result-object v3

    .line 3227
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/h/m;->k:Lcom/google/android/exoplayer2/extractor/h/m$a;

    invoke-virtual {v4, v3}, Lcom/google/android/exoplayer2/extractor/h/m$a;->a(Lcom/google/android/exoplayer2/util/s$b;)V

    .line 3228
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/h/m;->d:Lcom/google/android/exoplayer2/extractor/h/r;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/extractor/h/r;->a()V

    goto :goto_3

    .line 3229
    :cond_6
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/h/m;->e:Lcom/google/android/exoplayer2/extractor/h/r;

    .line 9055
    iget-boolean v3, v3, Lcom/google/android/exoplayer2/extractor/h/r;->a:Z

    if-eqz v3, :cond_7

    .line 3230
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/h/m;->e:Lcom/google/android/exoplayer2/extractor/h/r;

    iget-object v3, v3, Lcom/google/android/exoplayer2/extractor/h/r;->b:[B

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/h/m;->e:Lcom/google/android/exoplayer2/extractor/h/r;

    iget v4, v4, Lcom/google/android/exoplayer2/extractor/h/r;->c:I

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/s;->d([BI)Lcom/google/android/exoplayer2/util/s$a;

    move-result-object v3

    .line 3231
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/h/m;->k:Lcom/google/android/exoplayer2/extractor/h/m$a;

    invoke-virtual {v4, v3}, Lcom/google/android/exoplayer2/extractor/h/m$a;->a(Lcom/google/android/exoplayer2/util/s$a;)V

    .line 3232
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/h/m;->e:Lcom/google/android/exoplayer2/extractor/h/r;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/extractor/h/r;->a()V

    .line 3235
    :cond_7
    :goto_3
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/h/m;->f:Lcom/google/android/exoplayer2/extractor/h/r;

    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer2/extractor/h/r;->b(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 3236
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/h/m;->f:Lcom/google/android/exoplayer2/extractor/h/r;

    iget-object v3, v3, Lcom/google/android/exoplayer2/extractor/h/r;->b:[B

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/h/m;->f:Lcom/google/android/exoplayer2/extractor/h/r;

    iget v4, v4, Lcom/google/android/exoplayer2/extractor/h/r;->c:I

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/s;->a([BI)I

    move-result v3

    .line 3237
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/h/m;->o:Lcom/google/android/exoplayer2/util/u;

    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/h/m;->f:Lcom/google/android/exoplayer2/extractor/h/r;

    iget-object v6, v6, Lcom/google/android/exoplayer2/extractor/h/r;->b:[B

    invoke-virtual {v4, v6, v3}, Lcom/google/android/exoplayer2/util/u;->a([BI)V

    .line 3238
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/h/m;->o:Lcom/google/android/exoplayer2/util/u;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 3239
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/h/m;->a:Lcom/google/android/exoplayer2/extractor/h/z;

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/h/m;->o:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v3, v10, v11, v4}, Lcom/google/android/exoplayer2/extractor/h/z;->a(JLcom/google/android/exoplayer2/util/u;)V

    .line 3241
    :cond_8
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/h/m;->k:Lcom/google/android/exoplayer2/extractor/h/m$a;

    iget-boolean v4, v0, Lcom/google/android/exoplayer2/extractor/h/m;->l:Z

    iget-boolean v6, v0, Lcom/google/android/exoplayer2/extractor/h/m;->n:Z

    .line 9464
    iget v9, v3, Lcom/google/android/exoplayer2/extractor/h/m$a;->e:I

    const/16 v10, 0x9

    if-eq v9, v10, :cond_11

    iget-boolean v9, v3, Lcom/google/android/exoplayer2/extractor/h/m$a;->c:Z

    if-eqz v9, :cond_10

    iget-object v9, v3, Lcom/google/android/exoplayer2/extractor/h/m$a;->j:Lcom/google/android/exoplayer2/extractor/h/m$a$a;

    iget-object v10, v3, Lcom/google/android/exoplayer2/extractor/h/m$a;->i:Lcom/google/android/exoplayer2/extractor/h/m$a$a;

    .line 9561
    iget-boolean v11, v9, Lcom/google/android/exoplayer2/extractor/h/m$a$a;->a:Z

    if-eqz v11, :cond_f

    .line 9564
    iget-boolean v11, v10, Lcom/google/android/exoplayer2/extractor/h/m$a$a;->a:Z

    if-nez v11, :cond_a

    :cond_9
    :goto_4
    const/4 v9, 0x1

    goto/16 :goto_5

    .line 9568
    :cond_a
    iget-object v11, v9, Lcom/google/android/exoplayer2/extractor/h/m$a$a;->c:Lcom/google/android/exoplayer2/util/s$b;

    invoke-static {v11}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/exoplayer2/util/s$b;

    .line 9569
    iget-object v12, v10, Lcom/google/android/exoplayer2/extractor/h/m$a$a;->c:Lcom/google/android/exoplayer2/util/s$b;

    invoke-static {v12}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/exoplayer2/util/s$b;

    .line 9570
    iget v13, v9, Lcom/google/android/exoplayer2/extractor/h/m$a$a;->f:I

    iget v14, v10, Lcom/google/android/exoplayer2/extractor/h/m$a$a;->f:I

    if-ne v13, v14, :cond_9

    iget v13, v9, Lcom/google/android/exoplayer2/extractor/h/m$a$a;->g:I

    iget v14, v10, Lcom/google/android/exoplayer2/extractor/h/m$a$a;->g:I

    if-ne v13, v14, :cond_9

    iget-boolean v13, v9, Lcom/google/android/exoplayer2/extractor/h/m$a$a;->h:Z

    iget-boolean v14, v10, Lcom/google/android/exoplayer2/extractor/h/m$a$a;->h:Z

    if-ne v13, v14, :cond_9

    iget-boolean v13, v9, Lcom/google/android/exoplayer2/extractor/h/m$a$a;->i:Z

    if-eqz v13, :cond_b

    iget-boolean v13, v10, Lcom/google/android/exoplayer2/extractor/h/m$a$a;->i:Z

    if-eqz v13, :cond_b

    iget-boolean v13, v9, Lcom/google/android/exoplayer2/extractor/h/m$a$a;->j:Z

    iget-boolean v14, v10, Lcom/google/android/exoplayer2/extractor/h/m$a$a;->j:Z

    if-ne v13, v14, :cond_9

    :cond_b
    iget v13, v9, Lcom/google/android/exoplayer2/extractor/h/m$a$a;->d:I

    iget v14, v10, Lcom/google/android/exoplayer2/extractor/h/m$a$a;->d:I

    if-eq v13, v14, :cond_c

    iget v13, v9, Lcom/google/android/exoplayer2/extractor/h/m$a$a;->d:I

    if-eqz v13, :cond_9

    iget v13, v10, Lcom/google/android/exoplayer2/extractor/h/m$a$a;->d:I

    if-eqz v13, :cond_9

    :cond_c
    iget v13, v11, Lcom/google/android/exoplayer2/util/s$b;->k:I

    if-nez v13, :cond_d

    iget v13, v12, Lcom/google/android/exoplayer2/util/s$b;->k:I

    if-nez v13, :cond_d

    iget v13, v9, Lcom/google/android/exoplayer2/extractor/h/m$a$a;->m:I

    iget v14, v10, Lcom/google/android/exoplayer2/extractor/h/m$a$a;->m:I

    if-ne v13, v14, :cond_9

    iget v13, v9, Lcom/google/android/exoplayer2/extractor/h/m$a$a;->n:I

    iget v14, v10, Lcom/google/android/exoplayer2/extractor/h/m$a$a;->n:I

    if-ne v13, v14, :cond_9

    :cond_d
    iget v11, v11, Lcom/google/android/exoplayer2/util/s$b;->k:I

    const/4 v13, 0x1

    if-ne v11, v13, :cond_e

    iget v11, v12, Lcom/google/android/exoplayer2/util/s$b;->k:I

    if-ne v11, v13, :cond_e

    iget v11, v9, Lcom/google/android/exoplayer2/extractor/h/m$a$a;->o:I

    iget v12, v10, Lcom/google/android/exoplayer2/extractor/h/m$a$a;->o:I

    if-ne v11, v12, :cond_9

    iget v11, v9, Lcom/google/android/exoplayer2/extractor/h/m$a$a;->p:I

    iget v12, v10, Lcom/google/android/exoplayer2/extractor/h/m$a$a;->p:I

    if-ne v11, v12, :cond_9

    :cond_e
    iget-boolean v11, v9, Lcom/google/android/exoplayer2/extractor/h/m$a$a;->k:Z

    iget-boolean v12, v10, Lcom/google/android/exoplayer2/extractor/h/m$a$a;->k:Z

    if-ne v11, v12, :cond_9

    iget-boolean v11, v9, Lcom/google/android/exoplayer2/extractor/h/m$a$a;->k:Z

    if-eqz v11, :cond_f

    iget v9, v9, Lcom/google/android/exoplayer2/extractor/h/m$a$a;->l:I

    iget v10, v10, Lcom/google/android/exoplayer2/extractor/h/m$a$a;->l:I

    if-eq v9, v10, :cond_f

    goto :goto_4

    :cond_f
    const/4 v9, 0x0

    :goto_5
    if-eqz v9, :cond_10

    goto :goto_6

    :cond_10
    move v4, v1

    goto :goto_8

    :cond_11
    :goto_6
    if-eqz v4, :cond_12

    .line 9467
    iget-boolean v4, v3, Lcom/google/android/exoplayer2/extractor/h/m$a;->k:Z

    if-eqz v4, :cond_12

    .line 9468
    iget-wide v9, v3, Lcom/google/android/exoplayer2/extractor/h/m$a;->f:J

    sub-long v9, v7, v9

    long-to-int v4, v9

    add-int v14, v2, v4

    .line 10485
    iget-boolean v12, v3, Lcom/google/android/exoplayer2/extractor/h/m$a;->n:Z

    .line 10486
    iget-wide v9, v3, Lcom/google/android/exoplayer2/extractor/h/m$a;->f:J

    move v4, v1

    iget-wide v1, v3, Lcom/google/android/exoplayer2/extractor/h/m$a;->l:J

    sub-long/2addr v9, v1

    long-to-int v13, v9

    .line 10487
    iget-object v9, v3, Lcom/google/android/exoplayer2/extractor/h/m$a;->a:Lcom/google/android/exoplayer2/extractor/x;

    iget-wide v10, v3, Lcom/google/android/exoplayer2/extractor/h/m$a;->m:J

    const/4 v15, 0x0

    invoke-interface/range {v9 .. v15}, Lcom/google/android/exoplayer2/extractor/x;->a(JIIILcom/google/android/exoplayer2/extractor/x$a;)V

    goto :goto_7

    :cond_12
    move v4, v1

    .line 9471
    :goto_7
    iget-wide v1, v3, Lcom/google/android/exoplayer2/extractor/h/m$a;->f:J

    iput-wide v1, v3, Lcom/google/android/exoplayer2/extractor/h/m$a;->l:J

    .line 9472
    iget-wide v1, v3, Lcom/google/android/exoplayer2/extractor/h/m$a;->h:J

    iput-wide v1, v3, Lcom/google/android/exoplayer2/extractor/h/m$a;->m:J

    const/4 v1, 0x0

    .line 9473
    iput-boolean v1, v3, Lcom/google/android/exoplayer2/extractor/h/m$a;->n:Z

    const/4 v1, 0x1

    .line 9474
    iput-boolean v1, v3, Lcom/google/android/exoplayer2/extractor/h/m$a;->k:Z

    .line 9477
    :goto_8
    iget-boolean v1, v3, Lcom/google/android/exoplayer2/extractor/h/m$a;->b:Z

    const/4 v2, 0x2

    if-eqz v1, :cond_15

    iget-object v1, v3, Lcom/google/android/exoplayer2/extractor/h/m$a;->j:Lcom/google/android/exoplayer2/extractor/h/m$a$a;

    .line 10557
    iget-boolean v6, v1, Lcom/google/android/exoplayer2/extractor/h/m$a$a;->b:Z

    if-eqz v6, :cond_14

    iget v6, v1, Lcom/google/android/exoplayer2/extractor/h/m$a$a;->e:I

    const/4 v9, 0x7

    if-eq v6, v9, :cond_13

    iget v1, v1, Lcom/google/android/exoplayer2/extractor/h/m$a$a;->e:I

    if-ne v1, v2, :cond_14

    :cond_13
    const/4 v6, 0x1

    goto :goto_9

    :cond_14
    const/4 v6, 0x0

    .line 9478
    :cond_15
    :goto_9
    iget-boolean v1, v3, Lcom/google/android/exoplayer2/extractor/h/m$a;->n:Z

    iget v9, v3, Lcom/google/android/exoplayer2/extractor/h/m$a;->e:I

    const/4 v10, 0x5

    if-eq v9, v10, :cond_17

    if-eqz v6, :cond_16

    iget v6, v3, Lcom/google/android/exoplayer2/extractor/h/m$a;->e:I

    const/4 v9, 0x1

    if-ne v6, v9, :cond_16

    goto :goto_a

    :cond_16
    const/4 v6, 0x0

    goto :goto_b

    :cond_17
    :goto_a
    const/4 v6, 0x1

    :goto_b
    or-int/2addr v1, v6

    iput-boolean v1, v3, Lcom/google/android/exoplayer2/extractor/h/m$a;->n:Z

    .line 9481
    iget-boolean v1, v3, Lcom/google/android/exoplayer2/extractor/h/m$a;->n:Z

    if-eqz v1, :cond_18

    const/4 v1, 0x0

    .line 3247
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/extractor/h/m;->n:Z

    .line 161
    :cond_18
    iget-wide v11, v0, Lcom/google/android/exoplayer2/extractor/h/m;->m:J

    .line 11174
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/extractor/h/m;->l:Z

    if-eqz v1, :cond_19

    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/h/m;->k:Lcom/google/android/exoplayer2/extractor/h/m$a;

    .line 11306
    iget-boolean v1, v1, Lcom/google/android/exoplayer2/extractor/h/m$a;->c:Z

    if-eqz v1, :cond_1a

    .line 11175
    :cond_19
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/h/m;->d:Lcom/google/android/exoplayer2/extractor/h/r;

    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/extractor/h/r;->a(I)V

    .line 11176
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/h/m;->e:Lcom/google/android/exoplayer2/extractor/h/r;

    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/extractor/h/r;->a(I)V

    .line 11178
    :cond_1a
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/h/m;->f:Lcom/google/android/exoplayer2/extractor/h/r;

    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/extractor/h/r;->a(I)V

    .line 11179
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/h/m;->k:Lcom/google/android/exoplayer2/extractor/h/m$a;

    .line 11324
    iput v5, v1, Lcom/google/android/exoplayer2/extractor/h/m$a;->e:I

    .line 11325
    iput-wide v11, v1, Lcom/google/android/exoplayer2/extractor/h/m$a;->h:J

    .line 11326
    iput-wide v7, v1, Lcom/google/android/exoplayer2/extractor/h/m$a;->f:J

    .line 11327
    iget-boolean v3, v1, Lcom/google/android/exoplayer2/extractor/h/m$a;->b:Z

    if-eqz v3, :cond_1b

    iget v3, v1, Lcom/google/android/exoplayer2/extractor/h/m$a;->e:I

    const/4 v5, 0x1

    if-eq v3, v5, :cond_1c

    goto :goto_c

    :cond_1b
    const/4 v5, 0x1

    :goto_c
    iget-boolean v3, v1, Lcom/google/android/exoplayer2/extractor/h/m$a;->c:Z

    if-eqz v3, :cond_1d

    iget v3, v1, Lcom/google/android/exoplayer2/extractor/h/m$a;->e:I

    if-eq v3, v10, :cond_1c

    iget v3, v1, Lcom/google/android/exoplayer2/extractor/h/m$a;->e:I

    if-eq v3, v5, :cond_1c

    iget v3, v1, Lcom/google/android/exoplayer2/extractor/h/m$a;->e:I

    if-ne v3, v2, :cond_1d

    .line 11332
    :cond_1c
    iget-object v2, v1, Lcom/google/android/exoplayer2/extractor/h/m$a;->i:Lcom/google/android/exoplayer2/extractor/h/m$a$a;

    .line 11333
    iget-object v3, v1, Lcom/google/android/exoplayer2/extractor/h/m$a;->j:Lcom/google/android/exoplayer2/extractor/h/m$a$a;

    iput-object v3, v1, Lcom/google/android/exoplayer2/extractor/h/m$a;->i:Lcom/google/android/exoplayer2/extractor/h/m$a$a;

    .line 11334
    iput-object v2, v1, Lcom/google/android/exoplayer2/extractor/h/m$a;->j:Lcom/google/android/exoplayer2/extractor/h/m$a$a;

    .line 11335
    iget-object v2, v1, Lcom/google/android/exoplayer2/extractor/h/m$a;->j:Lcom/google/android/exoplayer2/extractor/h/m$a$a;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/h/m$a$a;->a()V

    const/4 v2, 0x0

    .line 11336
    iput v2, v1, Lcom/google/android/exoplayer2/extractor/h/m$a;->d:I

    const/4 v2, 0x1

    .line 11337
    iput-boolean v2, v1, Lcom/google/android/exoplayer2/extractor/h/m$a;->g:Z

    :cond_1d
    add-int/lit8 v2, v4, 0x3

    move/from16 v3, v16

    move-object/from16 v4, v17

    goto/16 :goto_0
.end method

.method public final b()V
    .locals 0

    return-void
.end method
