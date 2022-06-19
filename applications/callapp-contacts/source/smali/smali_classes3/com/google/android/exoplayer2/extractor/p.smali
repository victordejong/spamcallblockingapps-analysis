.class public final Lcom/google/android/exoplayer2/extractor/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/p$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:J

.field public final k:Lcom/google/android/exoplayer2/extractor/p$a;

.field private final l:Lcom/google/android/exoplayer2/metadata/Metadata;


# direct methods
.method public constructor <init>(IIIIIIIJLcom/google/android/exoplayer2/extractor/p$a;Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 0

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/p;->a:I

    .line 167
    iput p2, p0, Lcom/google/android/exoplayer2/extractor/p;->b:I

    .line 168
    iput p3, p0, Lcom/google/android/exoplayer2/extractor/p;->c:I

    .line 169
    iput p4, p0, Lcom/google/android/exoplayer2/extractor/p;->d:I

    .line 170
    iput p5, p0, Lcom/google/android/exoplayer2/extractor/p;->e:I

    .line 171
    invoke-static {p5}, Lcom/google/android/exoplayer2/extractor/p;->a(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/p;->f:I

    .line 172
    iput p6, p0, Lcom/google/android/exoplayer2/extractor/p;->g:I

    .line 173
    iput p7, p0, Lcom/google/android/exoplayer2/extractor/p;->h:I

    .line 174
    invoke-static {p7}, Lcom/google/android/exoplayer2/extractor/p;->b(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/p;->i:I

    .line 175
    iput-wide p8, p0, Lcom/google/android/exoplayer2/extractor/p;->j:J

    .line 176
    iput-object p10, p0, Lcom/google/android/exoplayer2/extractor/p;->k:Lcom/google/android/exoplayer2/extractor/p$a;

    .line 177
    iput-object p11, p0, Lcom/google/android/exoplayer2/extractor/p;->l:Lcom/google/android/exoplayer2/metadata/Metadata;

    return-void
.end method

.method public constructor <init>(IIIIIIIJLjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIIIIJ",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;",
            ">;)V"
        }
    .end annotation

    .line 152
    invoke-static/range {p10 .. p11}, Lcom/google/android/exoplayer2/extractor/p;->a(Ljava/util/List;Ljava/util/List;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v11

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-wide/from16 v8, p8

    .line 142
    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplayer2/extractor/p;-><init>(IIIIIIIJLcom/google/android/exoplayer2/extractor/p$a;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Lcom/google/android/exoplayer2/util/t;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/util/t;-><init>([B)V

    mul-int/lit8 p2, p2, 0x8

    .line 115
    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/util/t;->a(I)V

    const/16 p1, 0x10

    .line 116
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/exoplayer2/extractor/p;->a:I

    .line 117
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/p;->b:I

    const/16 p1, 0x18

    .line 118
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/exoplayer2/extractor/p;->c:I

    .line 119
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/p;->d:I

    const/16 p1, 0x14

    .line 120
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/p;->e:I

    .line 121
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/p;->a(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/p;->f:I

    const/4 p1, 0x3

    .line 122
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/p;->g:I

    const/4 p1, 0x5

    .line 123
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/p;->h:I

    .line 124
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/p;->b(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/p;->i:I

    const/4 p1, 0x4

    .line 1203
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result p1

    const/16 p2, 0x20

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/af;->b(II)J

    move-result-wide p1

    .line 125
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/p;->j:J

    const/4 p1, 0x0

    .line 126
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/p;->k:Lcom/google/android/exoplayer2/extractor/p$a;

    .line 127
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/p;->l:Lcom/google/android/exoplayer2/metadata/Metadata;

    return-void
.end method

.method private static a(I)I
    .locals 0

    sparse-switch p0, :sswitch_data_0

    const/4 p0, -0x1

    return p0

    :sswitch_0
    const/4 p0, 0x3

    return p0

    :sswitch_1
    const/4 p0, 0x2

    return p0

    :sswitch_2
    const/16 p0, 0xb

    return p0

    :sswitch_3
    const/4 p0, 0x1

    return p0

    :sswitch_4
    const/16 p0, 0xa

    return p0

    :sswitch_5
    const/16 p0, 0x9

    return p0

    :sswitch_6
    const/16 p0, 0x8

    return p0

    :sswitch_7
    const/4 p0, 0x7

    return p0

    :sswitch_8
    const/4 p0, 0x6

    return p0

    :sswitch_9
    const/4 p0, 0x5

    return p0

    :sswitch_a
    const/4 p0, 0x4

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1f40 -> :sswitch_a
        0x3e80 -> :sswitch_9
        0x5622 -> :sswitch_8
        0x5dc0 -> :sswitch_7
        0x7d00 -> :sswitch_6
        0xac44 -> :sswitch_5
        0xbb80 -> :sswitch_4
        0x15888 -> :sswitch_3
        0x17700 -> :sswitch_2
        0x2b110 -> :sswitch_1
        0x2ee00 -> :sswitch_0
    .end sparse-switch
.end method

.method public static a(Ljava/util/List;Ljava/util/List;)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;",
            ">;)",
            "Lcom/google/android/exoplayer2/metadata/Metadata;"
        }
    .end annotation

    .line 360
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    .line 364
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 365
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 366
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "="

    .line 367
    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/util/af;->b(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 368
    array-length v6, v5

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    .line 369
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Failed to parse Vorbis comment: "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "FlacStreamMetadata"

    invoke-static {v5, v4}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 371
    :cond_1
    new-instance v4, Lcom/google/android/exoplayer2/metadata/flac/VorbisComment;

    aget-object v6, v5, v2

    const/4 v7, 0x1

    aget-object v5, v5, v7

    invoke-direct {v4, v6, v5}, Lcom/google/android/exoplayer2/metadata/flac/VorbisComment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 375
    :cond_2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 377
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    return-object v1

    :cond_3
    new-instance p0, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method private static b(I)I
    .locals 1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_4

    const/16 v0, 0xc

    if-eq p0, v0, :cond_3

    const/16 v0, 0x10

    if-eq p0, v0, :cond_2

    const/16 v0, 0x14

    if-eq p0, v0, :cond_1

    const/16 v0, 0x18

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 p0, 0x6

    return p0

    :cond_1
    const/4 p0, 0x5

    return p0

    :cond_2
    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x2

    return p0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final a()J
    .locals 5

    .line 195
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/p;->j:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    :cond_0
    const-wide/32 v2, 0xf4240

    mul-long v0, v0, v2

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/p;->e:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final a(J)J
    .locals 8

    .line 205
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/p;->e:I

    int-to-long v0, v0

    mul-long p1, p1, v0

    const-wide/32 v0, 0xf4240

    div-long v2, p1, v0

    .line 206
    iget-wide p1, p0, Lcom/google/android/exoplayer2/extractor/p;->j:J

    const-wide/16 v0, 0x1

    sub-long v6, p1, v0

    const-wide/16 v4, 0x0

    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplayer2/util/af;->a(JJJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final a([BLcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format;
    .locals 3

    const/4 v0, 0x4

    const/16 v1, -0x80

    .line 239
    aput-byte v1, p1, v0

    .line 240
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/p;->d:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 241
    :goto_0
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/extractor/p;->a(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object p2

    .line 242
    new-instance v1, Lcom/google/android/exoplayer2/Format$a;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/Format$a;-><init>()V

    const-string v2, "audio/flac"

    .line 1370
    iput-object v2, v1, Lcom/google/android/exoplayer2/Format$a;->k:Ljava/lang/String;

    .line 1381
    iput v0, v1, Lcom/google/android/exoplayer2/Format$a;->l:I

    .line 244
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/p;->g:I

    .line 1517
    iput v0, v1, Lcom/google/android/exoplayer2/Format$a;->x:I

    .line 245
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/p;->e:I

    .line 1528
    iput v0, v1, Lcom/google/android/exoplayer2/Format$a;->y:I

    .line 247
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 2392
    iput-object p1, v1, Lcom/google/android/exoplayer2/Format$a;->m:Ljava/util/List;

    .line 3344
    iput-object p2, v1, Lcom/google/android/exoplayer2/Format$a;->i:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 249
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Format$a;->a()Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/google/android/exoplayer2/extractor/p$a;)Lcom/google/android/exoplayer2/extractor/p;
    .locals 13

    .line 260
    new-instance v12, Lcom/google/android/exoplayer2/extractor/p;

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/p;->a:I

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/p;->b:I

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/p;->c:I

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/p;->d:I

    iget v5, p0, Lcom/google/android/exoplayer2/extractor/p;->e:I

    iget v6, p0, Lcom/google/android/exoplayer2/extractor/p;->g:I

    iget v7, p0, Lcom/google/android/exoplayer2/extractor/p;->h:I

    iget-wide v8, p0, Lcom/google/android/exoplayer2/extractor/p;->j:J

    iget-object v11, p0, Lcom/google/android/exoplayer2/extractor/p;->l:Lcom/google/android/exoplayer2/metadata/Metadata;

    move-object v0, v12

    move-object v10, p1

    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplayer2/extractor/p;-><init>(IIIIIIIJLcom/google/android/exoplayer2/extractor/p$a;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-object v12
.end method

.method public final a(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/p;->l:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/metadata/Metadata;->copyWithAppendedEntriesFrom(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object p1

    return-object p1
.end method
