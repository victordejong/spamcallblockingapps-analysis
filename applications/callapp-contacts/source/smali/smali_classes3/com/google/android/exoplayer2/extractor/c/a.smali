.class public final Lcom/google/android/exoplayer2/extractor/c/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/h;


# instance fields
.field private final a:Lcom/google/android/exoplayer2/util/u;

.field private b:Lcom/google/android/exoplayer2/extractor/j;

.field private c:I

.field private d:I

.field private e:I

.field private f:J

.field private g:Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

.field private h:Lcom/google/android/exoplayer2/extractor/i;

.field private i:Lcom/google/android/exoplayer2/extractor/c/c;

.field private j:Lcom/google/android/exoplayer2/extractor/f/g;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Lcom/google/android/exoplayer2/util/u;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/u;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/a;->a:Lcom/google/android/exoplayer2/util/u;

    const-wide/16 v0, -0x1

    .line 93
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/c/a;->f:J

    return-void
.end method

.method private a()V
    .locals 4

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    .line 266
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/c/a;->a([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    .line 267
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/a;->b:Lcom/google/android/exoplayer2/extractor/j;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/j;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/j;->a()V

    .line 268
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/a;->b:Lcom/google/android/exoplayer2/extractor/j;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/v$b;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/v$b;-><init>(J)V

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/extractor/j;->a(Lcom/google/android/exoplayer2/extractor/v;)V

    const/4 v0, 0x6

    .line 269
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/c/a;->c:I

    return-void
.end method

.method private varargs a([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V
    .locals 3

    .line 273
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/a;->b:Lcom/google/android/exoplayer2/extractor/j;

    .line 274
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/j;

    const/16 v1, 0x400

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/j;->a(II)Lcom/google/android/exoplayer2/extractor/x;

    move-result-object v0

    .line 275
    new-instance v1, Lcom/google/android/exoplayer2/Format$a;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/Format$a;-><init>()V

    new-instance v2, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-direct {v2, p1}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    .line 11344
    iput-object v2, v1, Lcom/google/android/exoplayer2/Format$a;->i:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 276
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Format$a;->a()Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    .line 275
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/extractor/x;->a(Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method private b(Lcom/google/android/exoplayer2/extractor/i;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/a;->a:Lcom/google/android/exoplayer2/util/u;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/u;->a(I)V

    .line 183
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/a;->a:Lcom/google/android/exoplayer2/util/u;

    .line 11169
    iget-object v0, v0, Lcom/google/android/exoplayer2/util/u;->a:[B

    const/4 v2, 0x0

    .line 183
    invoke-interface {p1, v0, v2, v1}, Lcom/google/android/exoplayer2/extractor/i;->d([BII)V

    .line 184
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/c/a;->a:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u;->d()I

    move-result p1

    return p1
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/extractor/i;Lcom/google/android/exoplayer2/extractor/u;)I
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 127
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/c/a;->c:I

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    if-eqz v3, :cond_16

    if-eq v3, v6, :cond_15

    if-eq v3, v5, :cond_9

    const/4 v5, 0x5

    if-eq v3, v4, :cond_5

    if-eq v3, v5, :cond_1

    const/4 v1, 0x6

    if-ne v3, v1, :cond_0

    const/4 v1, -0x1

    return v1

    .line 160
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 145
    :cond_1
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/c/a;->i:Lcom/google/android/exoplayer2/extractor/c/c;

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/c/a;->h:Lcom/google/android/exoplayer2/extractor/i;

    if-eq v1, v3, :cond_3

    .line 146
    :cond_2
    iput-object v1, v0, Lcom/google/android/exoplayer2/extractor/c/a;->h:Lcom/google/android/exoplayer2/extractor/i;

    .line 147
    new-instance v3, Lcom/google/android/exoplayer2/extractor/c/c;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/extractor/c/a;->f:J

    invoke-direct {v3, v1, v4, v5}, Lcom/google/android/exoplayer2/extractor/c/c;-><init>(Lcom/google/android/exoplayer2/extractor/i;J)V

    iput-object v3, v0, Lcom/google/android/exoplayer2/extractor/c/a;->i:Lcom/google/android/exoplayer2/extractor/c/c;

    .line 151
    :cond_3
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/c/a;->j:Lcom/google/android/exoplayer2/extractor/f/g;

    .line 152
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/extractor/f/g;

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/c/a;->i:Lcom/google/android/exoplayer2/extractor/c/c;

    invoke-virtual {v1, v3, v2}, Lcom/google/android/exoplayer2/extractor/f/g;->a(Lcom/google/android/exoplayer2/extractor/i;Lcom/google/android/exoplayer2/extractor/u;)I

    move-result v1

    if-ne v1, v6, :cond_4

    .line 154
    iget-wide v3, v2, Lcom/google/android/exoplayer2/extractor/u;->a:J

    iget-wide v5, v0, Lcom/google/android/exoplayer2/extractor/c/a;->f:J

    add-long/2addr v3, v5

    iput-wide v3, v2, Lcom/google/android/exoplayer2/extractor/u;->a:J

    :cond_4
    return v1

    .line 138
    :cond_5
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->c()J

    move-result-wide v3

    iget-wide v7, v0, Lcom/google/android/exoplayer2/extractor/c/a;->f:J

    cmp-long v10, v3, v7

    if-eqz v10, :cond_6

    .line 139
    iput-wide v7, v2, Lcom/google/android/exoplayer2/extractor/u;->a:J

    return v6

    .line 9238
    :cond_6
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/c/a;->a:Lcom/google/android/exoplayer2/util/u;

    .line 10169
    iget-object v2, v2, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 9239
    invoke-interface {v1, v2, v9, v6, v6}, Lcom/google/android/exoplayer2/extractor/i;->b([BIIZ)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 9244
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->a()V

    .line 9245
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/c/a;->j:Lcom/google/android/exoplayer2/extractor/f/g;

    if-nez v2, :cond_7

    .line 9246
    new-instance v2, Lcom/google/android/exoplayer2/extractor/f/g;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/extractor/f/g;-><init>()V

    iput-object v2, v0, Lcom/google/android/exoplayer2/extractor/c/a;->j:Lcom/google/android/exoplayer2/extractor/f/g;

    .line 9248
    :cond_7
    new-instance v2, Lcom/google/android/exoplayer2/extractor/c/c;

    iget-wide v3, v0, Lcom/google/android/exoplayer2/extractor/c/a;->f:J

    invoke-direct {v2, v1, v3, v4}, Lcom/google/android/exoplayer2/extractor/c/c;-><init>(Lcom/google/android/exoplayer2/extractor/i;J)V

    iput-object v2, v0, Lcom/google/android/exoplayer2/extractor/c/a;->i:Lcom/google/android/exoplayer2/extractor/c/c;

    .line 9250
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/c/a;->j:Lcom/google/android/exoplayer2/extractor/f/g;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/extractor/f/g;->a(Lcom/google/android/exoplayer2/extractor/i;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 9251
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/c/a;->j:Lcom/google/android/exoplayer2/extractor/f/g;

    new-instance v2, Lcom/google/android/exoplayer2/extractor/c/d;

    iget-wide v3, v0, Lcom/google/android/exoplayer2/extractor/c/a;->f:J

    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/c/a;->b:Lcom/google/android/exoplayer2/extractor/j;

    .line 9252
    invoke-static {v7}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/exoplayer2/extractor/j;

    invoke-direct {v2, v3, v4, v7}, Lcom/google/android/exoplayer2/extractor/c/d;-><init>(JLcom/google/android/exoplayer2/extractor/j;)V

    .line 10206
    iput-object v2, v1, Lcom/google/android/exoplayer2/extractor/f/g;->b:Lcom/google/android/exoplayer2/extractor/j;

    new-array v1, v6, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    .line 10261
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/c/a;->g:Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    aput-object v2, v1, v9

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/c/a;->a([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    .line 10262
    iput v5, v0, Lcom/google/android/exoplayer2/extractor/c/a;->c:I

    goto :goto_0

    .line 9255
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/c/a;->a()V

    :goto_0
    return v9

    .line 5217
    :cond_9
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/c/a;->d:I

    const v3, 0xffe1

    if-ne v2, v3, :cond_13

    .line 5218
    new-instance v2, Lcom/google/android/exoplayer2/util/u;

    iget v3, v0, Lcom/google/android/exoplayer2/extractor/c/a;->e:I

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/util/u;-><init>(I)V

    .line 6169
    iget-object v3, v2, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 5219
    iget v4, v0, Lcom/google/android/exoplayer2/extractor/c/a;->e:I

    invoke-interface {v1, v3, v9, v4}, Lcom/google/android/exoplayer2/extractor/i;->b([BII)V

    .line 5220
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/c/a;->g:Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    if-nez v3, :cond_14

    .line 6513
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/u;->s()Ljava/lang/String;

    move-result-object v3

    const-string v4, "http://ns.adobe.com/xap/1.0/"

    .line 5221
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 7513
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/u;->s()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 5224
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->d()J

    move-result-wide v3

    cmp-long v10, v3, v7

    if-nez v10, :cond_b

    :cond_a
    :goto_1
    const/4 v1, 0x0

    goto/16 :goto_5

    .line 8303
    :cond_b
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/c/e;->a(Ljava/lang/String;)Lcom/google/android/exoplayer2/extractor/c/b;

    move-result-object v2

    if-nez v2, :cond_c

    goto :goto_1

    .line 9077
    :cond_c
    iget-object v10, v2, Lcom/google/android/exoplayer2/extractor/c/b;->b:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v10, v5, :cond_d

    goto :goto_1

    .line 9091
    :cond_d
    iget-object v5, v2, Lcom/google/android/exoplayer2/extractor/c/b;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v6

    move-wide v11, v7

    move-wide v13, v11

    move-wide/from16 v17, v13

    move-wide/from16 v19, v17

    const/4 v6, 0x0

    :goto_2
    if-ltz v5, :cond_11

    .line 9092
    iget-object v10, v2, Lcom/google/android/exoplayer2/extractor/c/b;->b:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/exoplayer2/extractor/c/b$a;

    .line 9093
    iget-object v15, v10, Lcom/google/android/exoplayer2/extractor/c/b$a;->a:Ljava/lang/String;

    const-string/jumbo v1, "video/mp4"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v1, v6

    if-nez v5, :cond_e

    const-wide/16 v15, 0x0

    .line 9098
    iget-wide v9, v10, Lcom/google/android/exoplayer2/extractor/c/b$a;->d:J

    sub-long/2addr v3, v9

    move-wide v9, v3

    move-wide v3, v15

    goto :goto_3

    .line 9100
    :cond_e
    iget-wide v9, v10, Lcom/google/android/exoplayer2/extractor/c/b$a;->c:J

    sub-long v9, v3, v9

    move-wide/from16 v21, v3

    move-wide v3, v9

    move-wide/from16 v9, v21

    :goto_3
    if-eqz v1, :cond_f

    cmp-long v6, v3, v9

    if-eqz v6, :cond_f

    sub-long v19, v9, v3

    move-wide/from16 v17, v3

    const/4 v6, 0x0

    goto :goto_4

    :cond_f
    move v6, v1

    :goto_4
    if-nez v5, :cond_10

    move-wide v11, v3

    move-wide v13, v9

    :cond_10
    add-int/lit8 v5, v5, -0x1

    const/4 v9, 0x0

    goto :goto_2

    :cond_11
    cmp-long v1, v17, v7

    if-eqz v1, :cond_a

    cmp-long v1, v19, v7

    if-eqz v1, :cond_a

    cmp-long v1, v11, v7

    if-eqz v1, :cond_a

    cmp-long v1, v13, v7

    if-nez v1, :cond_12

    goto :goto_1

    .line 9119
    :cond_12
    new-instance v1, Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/extractor/c/b;->a:J

    move-object v10, v1

    move-wide v15, v2

    invoke-direct/range {v10 .. v20}, Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;-><init>(JJJJJ)V

    .line 5224
    :goto_5
    iput-object v1, v0, Lcom/google/android/exoplayer2/extractor/c/a;->g:Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    if-eqz v1, :cond_14

    .line 5226
    iget-wide v1, v1, Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;->videoStartPosition:J

    iput-wide v1, v0, Lcom/google/android/exoplayer2/extractor/c/a;->f:J

    goto :goto_6

    .line 5231
    :cond_13
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/c/a;->e:I

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/extractor/i;->b(I)V

    :cond_14
    :goto_6
    const/4 v2, 0x0

    .line 5233
    iput v2, v0, Lcom/google/android/exoplayer2/extractor/c/a;->c:I

    return v2

    :cond_15
    const/4 v2, 0x0

    .line 4210
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/c/a;->a:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/util/u;->a(I)V

    .line 4211
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/c/a;->a:Lcom/google/android/exoplayer2/util/u;

    .line 5169
    iget-object v3, v3, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 4211
    invoke-interface {v1, v3, v2, v5}, Lcom/google/android/exoplayer2/extractor/i;->b([BII)V

    .line 4212
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/c/a;->a:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/u;->d()I

    move-result v1

    sub-int/2addr v1, v5

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/c/a;->e:I

    .line 4213
    iput v5, v0, Lcom/google/android/exoplayer2/extractor/c/a;->c:I

    return v2

    :cond_16
    const/4 v2, 0x0

    .line 3195
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/c/a;->a:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/util/u;->a(I)V

    .line 3196
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/c/a;->a:Lcom/google/android/exoplayer2/util/u;

    .line 4169
    iget-object v3, v3, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 3196
    invoke-interface {v1, v3, v2, v5}, Lcom/google/android/exoplayer2/extractor/i;->b([BII)V

    .line 3197
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/c/a;->a:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/u;->d()I

    move-result v1

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/c/a;->d:I

    const v2, 0xffda

    if-ne v1, v2, :cond_18

    .line 3199
    iget-wide v1, v0, Lcom/google/android/exoplayer2/extractor/c/a;->f:J

    cmp-long v3, v1, v7

    if-eqz v3, :cond_17

    .line 3200
    iput v4, v0, Lcom/google/android/exoplayer2/extractor/c/a;->c:I

    goto :goto_7

    .line 3202
    :cond_17
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/c/a;->a()V

    goto :goto_7

    :cond_18
    const v2, 0xffd0

    if-lt v1, v2, :cond_19

    const v2, 0xffd9

    if-le v1, v2, :cond_1a

    :cond_19
    const v2, 0xff01

    if-eq v1, v2, :cond_1a

    .line 3205
    iput v6, v0, Lcom/google/android/exoplayer2/extractor/c/a;->c:I

    :cond_1a
    :goto_7
    const/4 v1, 0x0

    return v1
.end method

.method public final a(JJ)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/4 p1, 0x0

    .line 167
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/c/a;->c:I

    const/4 p1, 0x0

    .line 168
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/c/a;->j:Lcom/google/android/exoplayer2/extractor/f/g;

    return-void

    .line 169
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/c/a;->c:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 170
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/a;->j:Lcom/google/android/exoplayer2/extractor/f/g;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/f/g;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/extractor/f/g;->a(JJ)V

    :cond_1
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/extractor/j;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/c/a;->b:Lcom/google/android/exoplayer2/extractor/j;

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/extractor/i;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/c/a;->b(Lcom/google/android/exoplayer2/extractor/i;)I

    move-result v0

    const/4 v1, 0x0

    const v2, 0xffd8

    if-eq v0, v2, :cond_0

    return v1

    .line 102
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/c/a;->b(Lcom/google/android/exoplayer2/extractor/i;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/c/a;->d:I

    const v2, 0xffe0

    const/4 v3, 0x2

    if-ne v0, v2, :cond_1

    .line 1188
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/a;->a:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/u;->a(I)V

    .line 1189
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/a;->a:Lcom/google/android/exoplayer2/util/u;

    .line 2169
    iget-object v0, v0, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 1189
    invoke-interface {p1, v0, v1, v3}, Lcom/google/android/exoplayer2/extractor/i;->d([BII)V

    .line 1190
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/a;->a:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/u;->d()I

    move-result v0

    sub-int/2addr v0, v3

    .line 1191
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/i;->c(I)V

    .line 108
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/c/a;->b(Lcom/google/android/exoplayer2/extractor/i;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/c/a;->d:I

    .line 110
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/c/a;->d:I

    const v2, 0xffe1

    if-eq v0, v2, :cond_2

    return v1

    .line 113
    :cond_2
    invoke-interface {p1, v3}, Lcom/google/android/exoplayer2/extractor/i;->c(I)V

    .line 114
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/a;->a:Lcom/google/android/exoplayer2/util/u;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/u;->a(I)V

    .line 115
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/a;->a:Lcom/google/android/exoplayer2/util/u;

    .line 3169
    iget-object v0, v0, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 115
    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/i;->d([BII)V

    .line 116
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/c/a;->a:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u;->h()J

    move-result-wide v2

    const-wide/32 v4, 0x45786966    # 5.758429993E-315

    cmp-long p1, v2, v4

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/c/a;->a:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u;->d()I

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method
