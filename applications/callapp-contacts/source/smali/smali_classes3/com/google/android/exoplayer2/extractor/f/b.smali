.class final Lcom/google/android/exoplayer2/extractor/f/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/f/b$e;,
        Lcom/google/android/exoplayer2/extractor/f/b$d;,
        Lcom/google/android/exoplayer2/extractor/f/b$b;,
        Lcom/google/android/exoplayer2/extractor/f/b$c;,
        Lcom/google/android/exoplayer2/extractor/f/b$f;,
        Lcom/google/android/exoplayer2/extractor/f/b$a;
    }
.end annotation


# static fields
.field private static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "OpusHead"

    .line 88
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/af;->c(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/extractor/f/b;->a:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1634
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/exoplayer2/extractor/f/a$b;)Landroid/util/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/extractor/f/a$b;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/google/android/exoplayer2/metadata/Metadata;",
            "Lcom/google/android/exoplayer2/metadata/Metadata;",
            ">;"
        }
    .end annotation

    .line 153
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/f/a$b;->b:Lcom/google/android/exoplayer2/util/u;

    const/16 v0, 0x8

    .line 154
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    .line 157
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v4

    if-lt v4, v0, :cond_6

    .line 7144
    iget v4, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    .line 159
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v5

    .line 160
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v6

    const v7, 0x6d657461

    if-ne v6, v7, :cond_4

    .line 162
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    add-int v2, v4, v5

    .line 7702
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    .line 7703
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/f/b;->a(Lcom/google/android/exoplayer2/util/u;)V

    .line 8144
    :goto_1
    iget v6, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    if-ge v6, v2, :cond_3

    .line 9144
    iget v6, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    .line 7706
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v7

    .line 7707
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v8

    const v9, 0x696c7374

    if-ne v8, v9, :cond_2

    .line 7709
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    add-int/2addr v6, v7

    .line 9719
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    .line 9720
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 10144
    :cond_0
    :goto_2
    iget v7, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    if-ge v7, v6, :cond_1

    .line 9722
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/f/f;->a(Lcom/google/android/exoplayer2/util/u;)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 9724
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 9727
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    new-instance v6, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-direct {v6, v2}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    move-object v2, v6

    goto :goto_3

    :cond_2
    add-int/2addr v6, v7

    .line 7712
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    goto :goto_1

    :cond_3
    move-object v2, v1

    goto :goto_3

    :cond_4
    const v7, 0x736d7461

    if-ne v6, v7, :cond_5

    .line 165
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    add-int v3, v4, v5

    .line 166
    invoke-static {p0, v3}, Lcom/google/android/exoplayer2/extractor/f/b;->a(Lcom/google/android/exoplayer2/util/u;I)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v3

    :cond_5
    :goto_3
    add-int/2addr v4, v5

    .line 168
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    goto :goto_0

    .line 170
    :cond_6
    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/google/android/exoplayer2/util/u;II)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/u;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/exoplayer2/extractor/f/l;",
            ">;"
        }
    .end annotation

    .line 43144
    iget v0, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    :goto_0
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_2

    .line 1497
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 1498
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    const-string v3, "childAtomSize should be positive"

    .line 1499
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/a;->b(ZLjava/lang/Object;)V

    .line 1500
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v2

    const v3, 0x73696e66

    if-ne v2, v3, :cond_1

    .line 1504
    invoke-static {p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/f/b;->b(Lcom/google/android/exoplayer2/util/u;II)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Lcom/google/android/exoplayer2/util/u;IILjava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;Z)Lcom/google/android/exoplayer2/extractor/f/b$c;
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const/16 v4, 0xc

    .line 902
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 903
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v4

    .line 904
    new-instance v5, Lcom/google/android/exoplayer2/extractor/f/b$c;

    invoke-direct {v5, v4}, Lcom/google/android/exoplayer2/extractor/f/b$c;-><init>(I)V

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v4, :cond_5e

    .line 17144
    iget v8, v0, Lcom/google/android/exoplayer2/util/u;->b:I

    .line 907
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v9

    if-lez v9, :cond_0

    const/4 v11, 0x1

    goto :goto_1

    :cond_0
    const/4 v11, 0x0

    :goto_1
    const-string v12, "childAtomSize should be positive"

    .line 908
    invoke-static {v11, v12}, Lcom/google/android/exoplayer2/util/a;->b(ZLjava/lang/Object;)V

    .line 909
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v11

    const v13, 0x61766331

    const v14, 0x76703038

    const v15, 0x6d317620

    const v10, 0x656e6376

    const/16 v17, 0x0

    if-eq v11, v13, :cond_39

    const v13, 0x61766333

    if-eq v11, v13, :cond_39

    if-eq v11, v10, :cond_39

    if-eq v11, v15, :cond_39

    const v13, 0x6d703476

    if-eq v11, v13, :cond_39

    const v13, 0x68766331

    if-eq v11, v13, :cond_39

    const v13, 0x68657631

    if-eq v11, v13, :cond_39

    const v13, 0x73323633

    if-eq v11, v13, :cond_39

    if-eq v11, v14, :cond_39

    const v13, 0x76703039

    if-eq v11, v13, :cond_39

    const v13, 0x61763031

    if-eq v11, v13, :cond_39

    const v13, 0x64766176

    if-eq v11, v13, :cond_39

    const v13, 0x64766131

    if-eq v11, v13, :cond_39

    const v13, 0x64766865

    if-eq v11, v13, :cond_39

    const v13, 0x64766831

    if-ne v11, v13, :cond_1

    goto/16 :goto_1d

    :cond_1
    const v10, 0x6d703461

    const v15, 0x65632d33

    const v6, 0x61632d33

    const v13, 0x656e6361

    const v14, 0x616c6163

    if-eq v11, v10, :cond_b

    if-eq v11, v13, :cond_b

    if-eq v11, v6, :cond_b

    if-eq v11, v15, :cond_b

    const v10, 0x61632d34

    if-eq v11, v10, :cond_b

    const v10, 0x64747363

    if-eq v11, v10, :cond_b

    const v10, 0x64747365

    if-eq v11, v10, :cond_b

    const v10, 0x64747368

    if-eq v11, v10, :cond_b

    const v10, 0x6474736c

    if-eq v11, v10, :cond_b

    const v10, 0x73616d72

    if-eq v11, v10, :cond_b

    const v10, 0x73617762

    if-eq v11, v10, :cond_b

    const v10, 0x6c70636d

    if-eq v11, v10, :cond_b

    const v10, 0x736f7774

    if-eq v11, v10, :cond_b

    const v10, 0x74776f73

    if-eq v11, v10, :cond_b

    const v10, 0x2e6d7032

    if-eq v11, v10, :cond_b

    const v10, 0x2e6d7033

    if-eq v11, v10, :cond_b

    if-eq v11, v14, :cond_b

    const v10, 0x616c6177

    if-eq v11, v10, :cond_b

    const v10, 0x756c6177

    if-eq v11, v10, :cond_b

    const v10, 0x4f707573

    if-eq v11, v10, :cond_b

    const v10, 0x664c6143

    if-ne v11, v10, :cond_2

    goto/16 :goto_5

    :cond_2
    const v6, 0x54544d4c

    if-eq v11, v6, :cond_5

    const v6, 0x74783367

    if-eq v11, v6, :cond_5

    const v6, 0x77767474

    if-eq v11, v6, :cond_5

    const v6, 0x73747070

    if-eq v11, v6, :cond_5

    const v6, 0x63363038

    if-ne v11, v6, :cond_3

    goto :goto_2

    :cond_3
    const v6, 0x6d657474

    if-ne v11, v6, :cond_4

    add-int/lit8 v6, v8, 0x8

    const/16 v10, 0x8

    add-int/2addr v6, v10

    .line 38171
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    const v6, 0x6d657474

    if-ne v11, v6, :cond_e

    .line 38513
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/u;->s()Ljava/lang/String;

    .line 39513
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/u;->s()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_e

    .line 38176
    new-instance v10, Lcom/google/android/exoplayer2/Format$a;

    invoke-direct {v10}, Lcom/google/android/exoplayer2/Format$a;-><init>()V

    invoke-virtual {v10, v1}, Lcom/google/android/exoplayer2/Format$a;->a(I)Lcom/google/android/exoplayer2/Format$a;

    move-result-object v10

    .line 40370
    iput-object v6, v10, Lcom/google/android/exoplayer2/Format$a;->k:Ljava/lang/String;

    .line 38176
    invoke-virtual {v10}, Lcom/google/android/exoplayer2/Format$a;->a()Lcom/google/android/exoplayer2/Format;

    move-result-object v6

    iput-object v6, v5, Lcom/google/android/exoplayer2/extractor/f/b$c;->b:Lcom/google/android/exoplayer2/Format;

    goto/16 :goto_7

    :cond_4
    const v6, 0x63616d6d

    if-ne v11, v6, :cond_e

    .line 958
    new-instance v6, Lcom/google/android/exoplayer2/Format$a;

    invoke-direct {v6}, Lcom/google/android/exoplayer2/Format$a;-><init>()V

    .line 960
    invoke-virtual {v6, v1}, Lcom/google/android/exoplayer2/Format$a;->a(I)Lcom/google/android/exoplayer2/Format$a;

    move-result-object v6

    const-string v10, "application/x-camera-motion"

    .line 41370
    iput-object v10, v6, Lcom/google/android/exoplayer2/Format$a;->k:Ljava/lang/String;

    .line 962
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/Format$a;->a()Lcom/google/android/exoplayer2/Format;

    move-result-object v6

    iput-object v6, v5, Lcom/google/android/exoplayer2/extractor/f/b$c;->b:Lcom/google/android/exoplayer2/Format;

    goto/16 :goto_7

    :cond_5
    :goto_2
    add-int/lit8 v6, v8, 0x8

    const/16 v10, 0x8

    add-int/2addr v6, v10

    .line 34977
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    const-wide v12, 0x7fffffffffffffffL

    const v6, 0x54544d4c

    if-ne v11, v6, :cond_6

    const-string v6, "application/ttml+xml"

    :goto_3
    move-object/from16 v10, v17

    goto :goto_4

    :cond_6
    const v6, 0x74783367

    if-ne v11, v6, :cond_7

    add-int/lit8 v6, v9, -0x8

    sub-int/2addr v6, v10

    .line 34989
    new-array v10, v6, [B

    const/4 v11, 0x0

    .line 34990
    invoke-virtual {v0, v10, v11, v6}, Lcom/google/android/exoplayer2/util/u;->a([BII)V

    .line 34991
    invoke-static {v10}, Lcom/google/common/collect/v;->a(Ljava/lang/Object;)Lcom/google/common/collect/v;

    move-result-object v17

    const-string v6, "application/x-quicktime-tx3g"

    goto :goto_3

    :cond_7
    const v6, 0x77767474

    if-ne v11, v6, :cond_8

    const-string v6, "application/x-mp4-vtt"

    goto :goto_3

    :cond_8
    const v6, 0x73747070

    if-ne v11, v6, :cond_9

    const-wide/16 v12, 0x0

    const-string v6, "application/ttml+xml"

    goto :goto_3

    :cond_9
    const v6, 0x63363038

    if-ne v11, v6, :cond_a

    const/4 v6, 0x1

    .line 35000
    iput v6, v5, Lcom/google/android/exoplayer2/extractor/f/b$c;->d:I

    const-string v6, "application/x-mp4-cea-608"

    goto :goto_3

    .line 35006
    :goto_4
    new-instance v11, Lcom/google/android/exoplayer2/Format$a;

    invoke-direct {v11}, Lcom/google/android/exoplayer2/Format$a;-><init>()V

    .line 35008
    invoke-virtual {v11, v1}, Lcom/google/android/exoplayer2/Format$a;->a(I)Lcom/google/android/exoplayer2/Format$a;

    move-result-object v11

    .line 35370
    iput-object v6, v11, Lcom/google/android/exoplayer2/Format$a;->k:Ljava/lang/String;

    .line 36278
    iput-object v2, v11, Lcom/google/android/exoplayer2/Format$a;->c:Ljava/lang/String;

    .line 36414
    iput-wide v12, v11, Lcom/google/android/exoplayer2/Format$a;->o:J

    .line 37392
    iput-object v10, v11, Lcom/google/android/exoplayer2/Format$a;->m:Ljava/util/List;

    .line 35013
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/Format$a;->a()Lcom/google/android/exoplayer2/Format;

    move-result-object v6

    iput-object v6, v5, Lcom/google/android/exoplayer2/extractor/f/b$c;->b:Lcom/google/android/exoplayer2/Format;

    goto :goto_7

    .line 35003
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_b
    :goto_5
    add-int/lit8 v10, v8, 0x8

    const/16 v14, 0x8

    add-int/2addr v10, v14

    .line 26234
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    const/4 v10, 0x6

    if-eqz p5, :cond_c

    .line 26238
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/u;->d()I

    move-result v18

    .line 26239
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    move/from16 v14, v18

    goto :goto_6

    .line 26241
    :cond_c
    invoke-virtual {v0, v14}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    const/4 v14, 0x0

    :goto_6
    if-eqz v14, :cond_f

    const/4 v15, 0x1

    if-ne v14, v15, :cond_d

    goto :goto_8

    :cond_d
    const/4 v15, 0x2

    if-ne v14, v15, :cond_e

    const/16 v10, 0x10

    .line 26258
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    .line 27458
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/u;->l()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v14

    .line 26260
    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-int v10, v14

    .line 26261
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/u;->o()I

    move-result v14

    const/16 v15, 0x14

    .line 26265
    invoke-virtual {v0, v15}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    move/from16 v23, v4

    goto :goto_9

    :cond_e
    :goto_7
    move/from16 v2, p2

    move/from16 v23, v4

    move/from16 v19, v7

    move/from16 v21, v8

    move v10, v9

    goto/16 :goto_32

    .line 26250
    :cond_f
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/u;->d()I

    move-result v15

    .line 26251
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    .line 27385
    iget-object v10, v0, Lcom/google/android/exoplayer2/util/u;->a:[B

    iget v6, v0, Lcom/google/android/exoplayer2/util/u;->b:I

    add-int/lit8 v13, v6, 0x1

    iput v13, v0, Lcom/google/android/exoplayer2/util/u;->b:I

    aget-byte v6, v10, v6

    and-int/lit16 v6, v6, 0xff

    const/16 v10, 0x8

    shl-int/2addr v6, v10

    iget-object v10, v0, Lcom/google/android/exoplayer2/util/u;->a:[B

    iget v13, v0, Lcom/google/android/exoplayer2/util/u;->b:I

    move/from16 v23, v4

    add-int/lit8 v4, v13, 0x1

    iput v4, v0, Lcom/google/android/exoplayer2/util/u;->b:I

    aget-byte v4, v10, v13

    and-int/lit16 v4, v4, 0xff

    or-int v10, v6, v4

    .line 27387
    iget v4, v0, Lcom/google/android/exoplayer2/util/u;->b:I

    const/4 v6, 0x2

    add-int/2addr v4, v6

    iput v4, v0, Lcom/google/android/exoplayer2/util/u;->b:I

    const/4 v4, 0x1

    if-ne v14, v4, :cond_10

    const/16 v4, 0x10

    .line 26255
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    :cond_10
    move v14, v15

    .line 28144
    :goto_9
    iget v4, v0, Lcom/google/android/exoplayer2/util/u;->b:I

    const v6, 0x656e6361

    if-ne v11, v6, :cond_13

    .line 26275
    invoke-static {v0, v8, v9}, Lcom/google/android/exoplayer2/extractor/f/b;->a(Lcom/google/android/exoplayer2/util/u;II)Landroid/util/Pair;

    move-result-object v6

    if-eqz v6, :cond_12

    .line 26277
    iget-object v11, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-nez v3, :cond_11

    move-object/from16 v13, v17

    goto :goto_a

    .line 26279
    :cond_11
    iget-object v13, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Lcom/google/android/exoplayer2/extractor/f/l;

    iget-object v13, v13, Lcom/google/android/exoplayer2/extractor/f/l;->b:Ljava/lang/String;

    invoke-virtual {v3, v13}, Lcom/google/android/exoplayer2/drm/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object v13

    .line 26280
    :goto_a
    iget-object v15, v5, Lcom/google/android/exoplayer2/extractor/f/b$c;->a:[Lcom/google/android/exoplayer2/extractor/f/l;

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/exoplayer2/extractor/f/l;

    aput-object v6, v15, v7

    goto :goto_b

    :cond_12
    move-object v13, v3

    .line 26282
    :goto_b
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    goto :goto_c

    :cond_13
    move-object v13, v3

    :goto_c
    const v6, 0x61632d33

    if-ne v11, v6, :cond_14

    const-string v6, "audio/ac3"

    :goto_d
    const/4 v15, -0x1

    goto/16 :goto_11

    :cond_14
    const v6, 0x65632d33

    if-ne v11, v6, :cond_15

    const-string v6, "audio/eac3"

    goto :goto_d

    :cond_15
    const v6, 0x61632d34

    if-ne v11, v6, :cond_16

    const-string v6, "audio/ac4"

    goto :goto_d

    :cond_16
    const v6, 0x64747363

    if-ne v11, v6, :cond_17

    const-string v6, "audio/vnd.dts"

    goto :goto_d

    :cond_17
    const v6, 0x64747368

    if-eq v11, v6, :cond_26

    const v6, 0x6474736c

    if-ne v11, v6, :cond_18

    goto/16 :goto_10

    :cond_18
    const v6, 0x64747365

    if-ne v11, v6, :cond_19

    const-string v6, "audio/vnd.dts.hd;profile=lbr"

    goto :goto_d

    :cond_19
    const v6, 0x73616d72

    if-ne v11, v6, :cond_1a

    const-string v6, "audio/3gpp"

    goto :goto_d

    :cond_1a
    const v6, 0x73617762

    if-ne v11, v6, :cond_1b

    const-string v6, "audio/amr-wb"

    goto :goto_d

    :cond_1b
    const v6, 0x6c70636d

    if-eq v11, v6, :cond_25

    const v6, 0x736f7774

    if-ne v11, v6, :cond_1c

    goto :goto_f

    :cond_1c
    const v6, 0x74776f73

    if-ne v11, v6, :cond_1d

    const/high16 v6, 0x10000000

    const-string v11, "audio/raw"

    move-object v6, v11

    const/high16 v15, 0x10000000

    goto :goto_11

    :cond_1d
    const v6, 0x2e6d7032

    if-eq v11, v6, :cond_24

    const v6, 0x2e6d7033

    if-ne v11, v6, :cond_1e

    goto :goto_e

    :cond_1e
    const v6, 0x616c6163

    if-ne v11, v6, :cond_1f

    const-string v6, "audio/alac"

    goto :goto_d

    :cond_1f
    const v6, 0x616c6177

    if-ne v11, v6, :cond_20

    const-string v6, "audio/g711-alaw"

    goto :goto_d

    :cond_20
    const v6, 0x756c6177

    if-ne v11, v6, :cond_21

    const-string v6, "audio/g711-mlaw"

    goto :goto_d

    :cond_21
    const v6, 0x4f707573

    if-ne v11, v6, :cond_22

    const-string v6, "audio/opus"

    goto/16 :goto_d

    :cond_22
    const v6, 0x664c6143

    if-ne v11, v6, :cond_23

    const-string v6, "audio/flac"

    goto/16 :goto_d

    :cond_23
    move-object/from16 v6, v17

    goto/16 :goto_d

    :cond_24
    :goto_e
    const-string v6, "audio/mpeg"

    goto/16 :goto_d

    :cond_25
    :goto_f
    const-string v6, "audio/raw"

    const/4 v15, 0x2

    goto :goto_11

    :cond_26
    :goto_10
    const-string v6, "audio/vnd.dts.hd"

    goto/16 :goto_d

    :goto_11
    move/from16 v19, v7

    move-object/from16 v7, v17

    move-object v11, v7

    :goto_12
    sub-int v3, v4, v8

    if-ge v3, v9, :cond_37

    .line 26329
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 26330
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v3

    move/from16 v20, v9

    if-lez v3, :cond_27

    const/4 v9, 0x1

    goto :goto_13

    :cond_27
    const/4 v9, 0x0

    .line 26331
    :goto_13
    invoke-static {v9, v12}, Lcom/google/android/exoplayer2/util/a;->b(ZLjava/lang/Object;)V

    .line 26332
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v9

    move/from16 v21, v8

    const v8, 0x65736473

    if-eq v9, v8, :cond_30

    if-eqz p5, :cond_28

    const v8, 0x77617665

    if-ne v9, v8, :cond_28

    const v2, 0x65736473

    const/4 v8, 0x0

    goto/16 :goto_17

    :cond_28
    const v8, 0x64616333

    if-ne v9, v8, :cond_2a

    add-int/lit8 v8, v4, 0x8

    .line 26354
    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 26355
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8, v2, v13}, Lcom/google/android/exoplayer2/audio/b;->a(Lcom/google/android/exoplayer2/util/u;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v8

    iput-object v8, v5, Lcom/google/android/exoplayer2/extractor/f/b$c;->b:Lcom/google/android/exoplayer2/Format;

    :goto_14
    const v2, 0x616c6163

    :cond_29
    const/4 v9, 0x0

    goto/16 :goto_16

    :cond_2a
    const v8, 0x64656333

    if-ne v9, v8, :cond_2b

    add-int/lit8 v8, v4, 0x8

    .line 26358
    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 26359
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8, v2, v13}, Lcom/google/android/exoplayer2/audio/b;->b(Lcom/google/android/exoplayer2/util/u;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v8

    iput-object v8, v5, Lcom/google/android/exoplayer2/extractor/f/b$c;->b:Lcom/google/android/exoplayer2/Format;

    goto :goto_14

    :cond_2b
    const v8, 0x64616334

    if-ne v9, v8, :cond_2c

    add-int/lit8 v8, v4, 0x8

    .line 26362
    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 26364
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8, v2, v13}, Lcom/google/android/exoplayer2/audio/c;->a(Lcom/google/android/exoplayer2/util/u;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v8

    iput-object v8, v5, Lcom/google/android/exoplayer2/extractor/f/b$c;->b:Lcom/google/android/exoplayer2/Format;

    goto :goto_14

    :cond_2c
    const v8, 0x64647473

    if-ne v9, v8, :cond_2d

    .line 26366
    new-instance v8, Lcom/google/android/exoplayer2/Format$a;

    invoke-direct {v8}, Lcom/google/android/exoplayer2/Format$a;-><init>()V

    .line 26368
    invoke-virtual {v8, v1}, Lcom/google/android/exoplayer2/Format$a;->a(I)Lcom/google/android/exoplayer2/Format$a;

    move-result-object v8

    .line 29370
    iput-object v6, v8, Lcom/google/android/exoplayer2/Format$a;->k:Ljava/lang/String;

    .line 29517
    iput v14, v8, Lcom/google/android/exoplayer2/Format$a;->x:I

    .line 29528
    iput v10, v8, Lcom/google/android/exoplayer2/Format$a;->y:I

    .line 30403
    iput-object v13, v8, Lcom/google/android/exoplayer2/Format$a;->n:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 31278
    iput-object v2, v8, Lcom/google/android/exoplayer2/Format$a;->c:Ljava/lang/String;

    .line 26374
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/Format$a;->a()Lcom/google/android/exoplayer2/Format;

    move-result-object v8

    iput-object v8, v5, Lcom/google/android/exoplayer2/extractor/f/b$c;->b:Lcom/google/android/exoplayer2/Format;

    goto :goto_14

    :cond_2d
    const v8, 0x644f7073

    if-ne v9, v8, :cond_2e

    add-int/lit8 v7, v3, -0x8

    .line 26379
    sget-object v8, Lcom/google/android/exoplayer2/extractor/f/b;->a:[B

    array-length v9, v8

    add-int/2addr v9, v7

    invoke-static {v8, v9}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v9

    add-int/lit8 v2, v4, 0x8

    .line 26380
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 26381
    array-length v2, v8

    invoke-virtual {v0, v9, v2, v7}, Lcom/google/android/exoplayer2/util/u;->a([BII)V

    .line 26382
    invoke-static {v9}, Lcom/google/android/exoplayer2/audio/p;->a([B)Ljava/util/List;

    move-result-object v2

    :goto_15
    move-object v7, v2

    goto :goto_16

    :cond_2e
    const v2, 0x64664c61

    if-ne v9, v2, :cond_2f

    add-int/lit8 v2, v3, -0xc

    add-int/lit8 v7, v2, 0x4

    .line 26385
    new-array v7, v7, [B

    const/16 v8, 0x66

    const/4 v9, 0x0

    .line 26386
    aput-byte v8, v7, v9

    const/16 v8, 0x4c

    const/4 v9, 0x1

    .line 26387
    aput-byte v8, v7, v9

    const/16 v8, 0x61

    const/4 v9, 0x2

    .line 26388
    aput-byte v8, v7, v9

    const/16 v8, 0x43

    const/4 v9, 0x3

    .line 26389
    aput-byte v8, v7, v9

    add-int/lit8 v8, v4, 0xc

    .line 26390
    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    const/4 v8, 0x4

    .line 26391
    invoke-virtual {v0, v7, v8, v2}, Lcom/google/android/exoplayer2/util/u;->a([BII)V

    .line 26392
    invoke-static {v7}, Lcom/google/common/collect/v;->a(Ljava/lang/Object;)Lcom/google/common/collect/v;

    move-result-object v2

    goto :goto_15

    :cond_2f
    const v2, 0x616c6163

    if-ne v9, v2, :cond_29

    add-int/lit8 v7, v3, -0xc

    .line 26395
    new-array v8, v7, [B

    add-int/lit8 v9, v4, 0xc

    .line 26396
    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    const/4 v9, 0x0

    .line 26397
    invoke-virtual {v0, v8, v9, v7}, Lcom/google/android/exoplayer2/util/u;->a([BII)V

    .line 26401
    invoke-static {v8}, Lcom/google/android/exoplayer2/util/d;->a([B)Landroid/util/Pair;

    move-result-object v7

    .line 26402
    iget-object v10, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 26403
    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 26404
    invoke-static {v8}, Lcom/google/common/collect/v;->a(Ljava/lang/Object;)Lcom/google/common/collect/v;

    move-result-object v8

    move v14, v7

    move-object v7, v8

    :goto_16
    move-object/from16 v22, v12

    const/4 v8, -0x1

    goto :goto_1b

    :cond_30
    const/4 v8, 0x0

    const v2, 0x65736473

    :goto_17
    if-ne v9, v2, :cond_31

    move v2, v4

    move-object/from16 v22, v12

    :goto_18
    const/4 v8, -0x1

    goto :goto_1a

    .line 29144
    :cond_31
    iget v2, v0, Lcom/google/android/exoplayer2/util/u;->b:I

    :goto_19
    sub-int v9, v2, v4

    if-ge v9, v3, :cond_34

    .line 28432
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 28433
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v9

    if-lez v9, :cond_32

    const/4 v8, 0x1

    .line 28434
    :cond_32
    invoke-static {v8, v12}, Lcom/google/android/exoplayer2/util/a;->b(ZLjava/lang/Object;)V

    .line 28435
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v8

    move-object/from16 v22, v12

    const v12, 0x65736473

    if-ne v8, v12, :cond_33

    goto :goto_18

    :cond_33
    add-int/2addr v2, v9

    move-object/from16 v12, v22

    const/4 v8, 0x0

    goto :goto_19

    :cond_34
    move-object/from16 v22, v12

    const/4 v2, -0x1

    goto :goto_18

    :goto_1a
    if-eq v2, v8, :cond_36

    .line 26338
    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/extractor/f/b;->b(Lcom/google/android/exoplayer2/util/u;I)Landroid/util/Pair;

    move-result-object v2

    .line 26339
    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 26340
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [B

    if-eqz v2, :cond_36

    const-string v7, "audio/mp4a-latm"

    .line 26342
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_35

    .line 26345
    invoke-static {v2}, Lcom/google/android/exoplayer2/audio/a;->a([B)Lcom/google/android/exoplayer2/audio/a$a;

    move-result-object v7

    .line 26346
    iget v10, v7, Lcom/google/android/exoplayer2/audio/a$a;->a:I

    .line 26347
    iget v14, v7, Lcom/google/android/exoplayer2/audio/a$a;->b:I

    .line 26348
    iget-object v11, v7, Lcom/google/android/exoplayer2/audio/a$a;->c:Ljava/lang/String;

    .line 26350
    :cond_35
    invoke-static {v2}, Lcom/google/common/collect/v;->a(Ljava/lang/Object;)Lcom/google/common/collect/v;

    move-result-object v7

    :cond_36
    :goto_1b
    add-int/2addr v4, v3

    move-object/from16 v2, p3

    move/from16 v9, v20

    move/from16 v8, v21

    move-object/from16 v12, v22

    goto/16 :goto_12

    :cond_37
    move/from16 v21, v8

    move/from16 v20, v9

    .line 26409
    iget-object v2, v5, Lcom/google/android/exoplayer2/extractor/f/b$c;->b:Lcom/google/android/exoplayer2/Format;

    if-nez v2, :cond_38

    if-eqz v6, :cond_38

    .line 26410
    new-instance v2, Lcom/google/android/exoplayer2/Format$a;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/Format$a;-><init>()V

    .line 26412
    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/Format$a;->a(I)Lcom/google/android/exoplayer2/Format$a;

    move-result-object v2

    .line 31370
    iput-object v6, v2, Lcom/google/android/exoplayer2/Format$a;->k:Ljava/lang/String;

    .line 32333
    iput-object v11, v2, Lcom/google/android/exoplayer2/Format$a;->h:Ljava/lang/String;

    .line 32517
    iput v14, v2, Lcom/google/android/exoplayer2/Format$a;->x:I

    .line 32528
    iput v10, v2, Lcom/google/android/exoplayer2/Format$a;->y:I

    .line 32539
    iput v15, v2, Lcom/google/android/exoplayer2/Format$a;->z:I

    .line 33392
    iput-object v7, v2, Lcom/google/android/exoplayer2/Format$a;->m:Ljava/util/List;

    .line 33403
    iput-object v13, v2, Lcom/google/android/exoplayer2/Format$a;->n:Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-object/from16 v3, p3

    .line 34278
    iput-object v3, v2, Lcom/google/android/exoplayer2/Format$a;->c:Ljava/lang/String;

    .line 26421
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Format$a;->a()Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    iput-object v2, v5, Lcom/google/android/exoplayer2/extractor/f/b$c;->b:Lcom/google/android/exoplayer2/Format;

    goto :goto_1c

    :cond_38
    move-object/from16 v3, p3

    :goto_1c
    move/from16 v2, p2

    move/from16 v10, v20

    goto/16 :goto_32

    :cond_39
    :goto_1d
    move-object v3, v2

    move/from16 v23, v4

    move/from16 v19, v7

    move/from16 v21, v8

    move/from16 v20, v9

    move-object/from16 v22, v12

    const/4 v8, -0x1

    add-int/lit8 v2, v21, 0x8

    const/16 v4, 0x8

    add-int/2addr v2, v4

    .line 18027
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    const/16 v2, 0x10

    .line 18029
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    .line 18030
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/u;->d()I

    move-result v2

    .line 18031
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/u;->d()I

    move-result v4

    const/16 v7, 0x32

    .line 18034
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    .line 19144
    iget v7, v0, Lcom/google/android/exoplayer2/util/u;->b:I

    if-ne v11, v10, :cond_3c

    move/from16 v10, v20

    move/from16 v9, v21

    .line 18040
    invoke-static {v0, v9, v10}, Lcom/google/android/exoplayer2/extractor/f/b;->a(Lcom/google/android/exoplayer2/util/u;II)Landroid/util/Pair;

    move-result-object v12

    if-eqz v12, :cond_3b

    .line 18042
    iget-object v11, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move-object/from16 v13, p4

    if-nez v13, :cond_3a

    move-object/from16 v6, v17

    goto :goto_1e

    .line 18044
    :cond_3a
    iget-object v6, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/exoplayer2/extractor/f/l;

    iget-object v6, v6, Lcom/google/android/exoplayer2/extractor/f/l;->b:Ljava/lang/String;

    invoke-virtual {v13, v6}, Lcom/google/android/exoplayer2/drm/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object v6

    .line 18045
    :goto_1e
    iget-object v8, v5, Lcom/google/android/exoplayer2/extractor/f/b$c;->a:[Lcom/google/android/exoplayer2/extractor/f/l;

    iget-object v12, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Lcom/google/android/exoplayer2/extractor/f/l;

    aput-object v12, v8, v19

    goto :goto_1f

    :cond_3b
    move-object/from16 v13, p4

    move-object v6, v13

    .line 18047
    :goto_1f
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    goto :goto_20

    :cond_3c
    move-object/from16 v13, p4

    move/from16 v10, v20

    move/from16 v9, v21

    move-object v6, v13

    :goto_20
    if-ne v11, v15, :cond_3d

    const-string v8, "video/mpeg"

    goto :goto_21

    :cond_3d
    move-object/from16 v8, v17

    :goto_21
    move v12, v7

    move-object v15, v8

    move-object/from16 v24, v17

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, -0x1

    const/16 v16, 0x0

    :goto_22
    sub-int v14, v12, v9

    if-ge v14, v10, :cond_5c

    .line 18065
    invoke-virtual {v0, v12}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 20144
    iget v14, v0, Lcom/google/android/exoplayer2/util/u;->b:I

    .line 18067
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v3

    if-nez v3, :cond_3e

    .line 21144
    iget v13, v0, Lcom/google/android/exoplayer2/util/u;->b:I

    sub-int/2addr v13, v9

    if-eq v13, v10, :cond_5c

    :cond_3e
    move/from16 v21, v9

    move-object/from16 v9, v22

    if-lez v3, :cond_3f

    const/4 v13, 0x1

    goto :goto_23

    :cond_3f
    const/4 v13, 0x0

    .line 18072
    :goto_23
    invoke-static {v13, v9}, Lcom/google/android/exoplayer2/util/a;->b(ZLjava/lang/Object;)V

    .line 18073
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v13

    move-object/from16 v22, v9

    const v9, 0x61766343

    if-ne v13, v9, :cond_42

    if-nez v15, :cond_40

    const/4 v9, 0x1

    goto :goto_24

    :cond_40
    const/4 v9, 0x0

    .line 18075
    :goto_24
    invoke-static {v9}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    add-int/lit8 v14, v14, 0x8

    .line 18077
    invoke-virtual {v0, v14}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 18078
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/video/a;->a(Lcom/google/android/exoplayer2/util/u;)Lcom/google/android/exoplayer2/video/a;

    move-result-object v9

    .line 18079
    iget-object v13, v9, Lcom/google/android/exoplayer2/video/a;->a:Ljava/util/List;

    .line 18080
    iget v14, v9, Lcom/google/android/exoplayer2/video/a;->b:I

    iput v14, v5, Lcom/google/android/exoplayer2/extractor/f/b$c;->c:I

    if-nez v16, :cond_41

    .line 18082
    iget v7, v9, Lcom/google/android/exoplayer2/video/a;->e:F

    .line 18084
    :cond_41
    iget-object v9, v9, Lcom/google/android/exoplayer2/video/a;->f:Ljava/lang/String;

    const-string v14, "video/avc"

    goto :goto_26

    :cond_42
    const v9, 0x68766343

    if-ne v13, v9, :cond_46

    if-nez v15, :cond_43

    const/4 v9, 0x1

    goto :goto_25

    :cond_43
    const/4 v9, 0x0

    .line 18086
    :goto_25
    invoke-static {v9}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    add-int/lit8 v14, v14, 0x8

    .line 18088
    invoke-virtual {v0, v14}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 18089
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/video/d;->a(Lcom/google/android/exoplayer2/util/u;)Lcom/google/android/exoplayer2/video/d;

    move-result-object v9

    .line 18090
    iget-object v13, v9, Lcom/google/android/exoplayer2/video/d;->a:Ljava/util/List;

    .line 18091
    iget v14, v9, Lcom/google/android/exoplayer2/video/d;->b:I

    iput v14, v5, Lcom/google/android/exoplayer2/extractor/f/b$c;->c:I

    .line 18092
    iget-object v9, v9, Lcom/google/android/exoplayer2/video/d;->c:Ljava/lang/String;

    const-string v14, "video/hevc"

    :goto_26
    move-object/from16 v26, v9

    move/from16 v18, v11

    move-object/from16 v24, v13

    :goto_27
    move-object v15, v14

    :cond_44
    :goto_28
    const/4 v11, 0x3

    :cond_45
    const/4 v13, 0x1

    const/4 v14, 0x2

    goto/16 :goto_31

    :cond_46
    const v9, 0x64766343

    if-eq v13, v9, :cond_5a

    const v9, 0x64767643

    if-ne v13, v9, :cond_47

    goto/16 :goto_30

    :cond_47
    const v9, 0x76706343

    if-ne v13, v9, :cond_4a

    if-nez v15, :cond_48

    const/4 v9, 0x1

    goto :goto_29

    :cond_48
    const/4 v9, 0x0

    .line 18100
    :goto_29
    invoke-static {v9}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    const v9, 0x76703038

    if-ne v11, v9, :cond_49

    const-string v13, "video/x-vnd.on2.vp8"

    goto :goto_2a

    :cond_49
    const-string v13, "video/x-vnd.on2.vp9"

    :goto_2a
    move/from16 v18, v11

    move-object v15, v13

    goto :goto_28

    :cond_4a
    const v9, 0x61763143

    if-ne v13, v9, :cond_4c

    if-nez v15, :cond_4b

    const/4 v9, 0x1

    goto :goto_2b

    :cond_4b
    const/4 v9, 0x0

    .line 18103
    :goto_2b
    invoke-static {v9}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    const-string v9, "video/av01"

    :goto_2c
    move-object v15, v9

    move/from16 v18, v11

    goto :goto_28

    :cond_4c
    const v9, 0x64323633

    if-ne v13, v9, :cond_4e

    if-nez v15, :cond_4d

    const/4 v9, 0x1

    goto :goto_2d

    :cond_4d
    const/4 v9, 0x0

    .line 18106
    :goto_2d
    invoke-static {v9}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    const-string v9, "video/3gpp"

    goto :goto_2c

    :cond_4e
    const v9, 0x65736473

    if-ne v13, v9, :cond_51

    if-nez v15, :cond_4f

    const/4 v13, 0x1

    goto :goto_2e

    :cond_4f
    const/4 v13, 0x0

    .line 18109
    :goto_2e
    invoke-static {v13}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 18111
    invoke-static {v0, v14}, Lcom/google/android/exoplayer2/extractor/f/b;->b(Lcom/google/android/exoplayer2/util/u;I)Landroid/util/Pair;

    move-result-object v13

    .line 18112
    iget-object v14, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    .line 18113
    iget-object v13, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, [B

    if-eqz v13, :cond_50

    .line 18115
    invoke-static {v13}, Lcom/google/common/collect/v;->a(Ljava/lang/Object;)Lcom/google/common/collect/v;

    move-result-object v24

    :cond_50
    move/from16 v18, v11

    goto :goto_27

    :cond_51
    const v9, 0x70617370

    if-ne v13, v9, :cond_52

    add-int/lit8 v14, v14, 0x8

    .line 21216
    invoke-virtual {v0, v14}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 21217
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/u;->o()I

    move-result v7

    .line 21218
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/u;->o()I

    move-result v9

    int-to-float v7, v7

    int-to-float v9, v9

    div-float/2addr v7, v9

    move/from16 v18, v11

    const/4 v11, 0x3

    const/4 v13, 0x1

    const/4 v14, 0x2

    const/16 v16, 0x1

    goto/16 :goto_31

    :cond_52
    const v9, 0x73763364

    if-ne v13, v9, :cond_55

    add-int/lit8 v9, v14, 0x8

    :goto_2f
    sub-int v13, v9, v14

    if-ge v13, v3, :cond_54

    .line 21599
    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 21600
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v13

    move/from16 v18, v11

    .line 21601
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v11

    move/from16 v20, v14

    const v14, 0x70726f6a

    if-ne v11, v14, :cond_53

    .line 22169
    iget-object v11, v0, Lcom/google/android/exoplayer2/util/u;->a:[B

    add-int/2addr v13, v9

    .line 21603
    invoke-static {v11, v9, v13}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    move-object/from16 v25, v9

    goto/16 :goto_28

    :cond_53
    add-int/2addr v9, v13

    move/from16 v11, v18

    move/from16 v14, v20

    goto :goto_2f

    :cond_54
    move/from16 v18, v11

    move-object/from16 v25, v17

    goto/16 :goto_28

    :cond_55
    move/from16 v18, v11

    const v9, 0x73743364

    if-ne v13, v9, :cond_44

    .line 18123
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v9

    const/4 v11, 0x3

    .line 18124
    invoke-virtual {v0, v11}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    if-nez v9, :cond_45

    .line 18126
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v9

    if-eqz v9, :cond_59

    const/4 v13, 0x1

    if-eq v9, v13, :cond_58

    const/4 v14, 0x2

    if-eq v9, v14, :cond_57

    if-eq v9, v11, :cond_56

    goto :goto_31

    :cond_56
    const/4 v8, 0x3

    goto :goto_31

    :cond_57
    const/4 v8, 0x2

    goto :goto_31

    :cond_58
    const/4 v14, 0x2

    const/4 v8, 0x1

    goto :goto_31

    :cond_59
    const/4 v13, 0x1

    const/4 v14, 0x2

    const/4 v8, 0x0

    goto :goto_31

    :cond_5a
    :goto_30
    move/from16 v18, v11

    const/4 v11, 0x3

    const/4 v13, 0x1

    const/4 v14, 0x2

    .line 18094
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/video/b;->a(Lcom/google/android/exoplayer2/util/u;)Lcom/google/android/exoplayer2/video/b;

    move-result-object v9

    if-eqz v9, :cond_5b

    .line 18096
    iget-object v9, v9, Lcom/google/android/exoplayer2/video/b;->c:Ljava/lang/String;

    const-string v15, "video/dolby-vision"

    move-object/from16 v26, v9

    :cond_5b
    :goto_31
    add-int/2addr v12, v3

    move-object/from16 v3, p3

    move-object/from16 v13, p4

    move/from16 v11, v18

    move/from16 v9, v21

    goto/16 :goto_22

    :cond_5c
    move/from16 v21, v9

    if-eqz v15, :cond_5d

    .line 18153
    new-instance v3, Lcom/google/android/exoplayer2/Format$a;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/Format$a;-><init>()V

    .line 18155
    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/Format$a;->a(I)Lcom/google/android/exoplayer2/Format$a;

    move-result-object v3

    .line 22370
    iput-object v15, v3, Lcom/google/android/exoplayer2/Format$a;->k:Ljava/lang/String;

    move-object/from16 v9, v26

    .line 23333
    iput-object v9, v3, Lcom/google/android/exoplayer2/Format$a;->h:Ljava/lang/String;

    .line 23427
    iput v2, v3, Lcom/google/android/exoplayer2/Format$a;->p:I

    .line 23438
    iput v4, v3, Lcom/google/android/exoplayer2/Format$a;->q:I

    .line 23471
    iput v7, v3, Lcom/google/android/exoplayer2/Format$a;->t:F

    move/from16 v2, p2

    .line 24460
    iput v2, v3, Lcom/google/android/exoplayer2/Format$a;->s:I

    move-object/from16 v4, v25

    .line 24482
    iput-object v4, v3, Lcom/google/android/exoplayer2/Format$a;->u:[B

    .line 24493
    iput v8, v3, Lcom/google/android/exoplayer2/Format$a;->v:I

    move-object/from16 v4, v24

    .line 25392
    iput-object v4, v3, Lcom/google/android/exoplayer2/Format$a;->m:Ljava/util/List;

    .line 25403
    iput-object v6, v3, Lcom/google/android/exoplayer2/Format$a;->n:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 18166
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/Format$a;->a()Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    iput-object v3, v5, Lcom/google/android/exoplayer2/extractor/f/b$c;->b:Lcom/google/android/exoplayer2/Format;

    goto :goto_32

    :cond_5d
    move/from16 v2, p2

    :goto_32
    add-int v8, v21, v10

    .line 964
    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    add-int/lit8 v7, v19, 0x1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, v23

    goto/16 :goto_0

    :cond_5e
    return-object v5
.end method

.method private static a(Lcom/google/android/exoplayer2/util/u;IILjava/lang/String;)Lcom/google/android/exoplayer2/extractor/f/l;
    .locals 11

    add-int/lit8 v0, p1, 0x8

    :goto_0
    sub-int v1, v0, p1

    const/4 v2, 0x0

    if-ge v1, p2, :cond_4

    .line 1560
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 1561
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v1

    .line 1562
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v3

    const v4, 0x74656e63

    if-ne v3, v4, :cond_3

    .line 1564
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result p1

    .line 1565
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/f/a;->a(I)I

    move-result p1

    const/4 p2, 0x1

    .line 1566
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1570
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    goto :goto_1

    .line 1572
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result p1

    and-int/lit16 v1, p1, 0xf0

    shr-int/lit8 v1, v1, 0x4

    and-int/lit8 p1, p1, 0xf

    move v9, p1

    move v8, v1

    .line 1576
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result p1

    if-ne p1, p2, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    .line 1577
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v6

    const/16 p1, 0x10

    new-array v7, p1, [B

    .line 1579
    invoke-virtual {p0, v7, v0, p1}, Lcom/google/android/exoplayer2/util/u;->a([BII)V

    if-eqz v4, :cond_2

    if-nez v6, :cond_2

    .line 1582
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result p1

    .line 1583
    new-array v2, p1, [B

    .line 1584
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/exoplayer2/util/u;->a([BII)V

    :cond_2
    move-object v10, v2

    .line 1586
    new-instance p0, Lcom/google/android/exoplayer2/extractor/f/l;

    move-object v3, p0

    move-object v5, p3

    invoke-direct/range {v3 .. v10}, Lcom/google/android/exoplayer2/extractor/f/l;-><init>(ZLjava/lang/String;I[BII[B)V

    return-object p0

    :cond_3
    add-int/2addr v0, v1

    goto :goto_0

    :cond_4
    return-object v2
.end method

.method private static a(Lcom/google/android/exoplayer2/extractor/f/k;Lcom/google/android/exoplayer2/extractor/f/a$a;Lcom/google/android/exoplayer2/extractor/r;)Lcom/google/android/exoplayer2/extractor/f/n;
    .locals 37
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const v3, 0x7374737a

    .line 338
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/extractor/f/a$a;->c(I)Lcom/google/android/exoplayer2/extractor/f/a$b;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 340
    new-instance v4, Lcom/google/android/exoplayer2/extractor/f/b$d;

    iget-object v5, v1, Lcom/google/android/exoplayer2/extractor/f/k;->f:Lcom/google/android/exoplayer2/Format;

    invoke-direct {v4, v3, v5}, Lcom/google/android/exoplayer2/extractor/f/b$d;-><init>(Lcom/google/android/exoplayer2/extractor/f/a$b;Lcom/google/android/exoplayer2/Format;)V

    goto :goto_0

    :cond_0
    const v3, 0x73747a32

    .line 342
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/extractor/f/a$a;->c(I)Lcom/google/android/exoplayer2/extractor/f/a$b;

    move-result-object v3

    if-eqz v3, :cond_34

    .line 346
    new-instance v4, Lcom/google/android/exoplayer2/extractor/f/b$e;

    invoke-direct {v4, v3}, Lcom/google/android/exoplayer2/extractor/f/b$e;-><init>(Lcom/google/android/exoplayer2/extractor/f/a$b;)V

    .line 349
    :goto_0
    invoke-interface {v4}, Lcom/google/android/exoplayer2/extractor/f/b$b;->a()I

    move-result v3

    const/4 v5, 0x0

    if-nez v3, :cond_1

    .line 351
    new-instance v9, Lcom/google/android/exoplayer2/extractor/f/n;

    new-array v2, v5, [J

    new-array v3, v5, [I

    const/4 v4, 0x0

    new-array v6, v5, [J

    new-array v7, v5, [I

    const-wide/16 v10, 0x0

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v5, v6

    move-object v6, v7

    move-wide v7, v10

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/extractor/f/n;-><init>(Lcom/google/android/exoplayer2/extractor/f/k;[J[II[J[IJ)V

    return-object v9

    :cond_1
    const v6, 0x7374636f

    .line 363
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/extractor/f/a$a;->c(I)Lcom/google/android/exoplayer2/extractor/f/a$b;

    move-result-object v6

    const/4 v7, 0x1

    if-nez v6, :cond_2

    const v6, 0x636f3634

    .line 366
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/extractor/f/a$a;->c(I)Lcom/google/android/exoplayer2/extractor/f/a$b;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/extractor/f/a$b;

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    .line 368
    :goto_1
    iget-object v6, v6, Lcom/google/android/exoplayer2/extractor/f/a$b;->b:Lcom/google/android/exoplayer2/util/u;

    const v9, 0x73747363

    .line 370
    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/extractor/f/a$a;->c(I)Lcom/google/android/exoplayer2/extractor/f/a$b;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/exoplayer2/extractor/f/a$b;

    iget-object v9, v9, Lcom/google/android/exoplayer2/extractor/f/a$b;->b:Lcom/google/android/exoplayer2/util/u;

    const v10, 0x73747473

    .line 372
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/extractor/f/a$a;->c(I)Lcom/google/android/exoplayer2/extractor/f/a$b;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/exoplayer2/extractor/f/a$b;

    iget-object v10, v10, Lcom/google/android/exoplayer2/extractor/f/a$b;->b:Lcom/google/android/exoplayer2/util/u;

    const v11, 0x73747373

    .line 374
    invoke-virtual {v0, v11}, Lcom/google/android/exoplayer2/extractor/f/a$a;->c(I)Lcom/google/android/exoplayer2/extractor/f/a$b;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 375
    iget-object v11, v11, Lcom/google/android/exoplayer2/extractor/f/a$b;->b:Lcom/google/android/exoplayer2/util/u;

    goto :goto_2

    :cond_3
    const/4 v11, 0x0

    :goto_2
    const v13, 0x63747473

    .line 377
    invoke-virtual {v0, v13}, Lcom/google/android/exoplayer2/extractor/f/a$a;->c(I)Lcom/google/android/exoplayer2/extractor/f/a$b;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 378
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/f/a$b;->b:Lcom/google/android/exoplayer2/util/u;

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    .line 381
    :goto_3
    new-instance v13, Lcom/google/android/exoplayer2/extractor/f/b$a;

    invoke-direct {v13, v9, v6, v8}, Lcom/google/android/exoplayer2/extractor/f/b$a;-><init>(Lcom/google/android/exoplayer2/util/u;Lcom/google/android/exoplayer2/util/u;Z)V

    const/16 v6, 0xc

    .line 384
    invoke-virtual {v10, v6}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 385
    invoke-virtual {v10}, Lcom/google/android/exoplayer2/util/u;->o()I

    move-result v8

    sub-int/2addr v8, v7

    .line 386
    invoke-virtual {v10}, Lcom/google/android/exoplayer2/util/u;->o()I

    move-result v9

    .line 387
    invoke-virtual {v10}, Lcom/google/android/exoplayer2/util/u;->o()I

    move-result v14

    if-eqz v0, :cond_5

    .line 394
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 395
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/u;->o()I

    move-result v15

    goto :goto_4

    :cond_5
    const/4 v15, 0x0

    :goto_4
    const/4 v12, -0x1

    if-eqz v11, :cond_7

    .line 401
    invoke-virtual {v11, v6}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 402
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/util/u;->o()I

    move-result v6

    if-lez v6, :cond_6

    .line 404
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/util/u;->o()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    goto :goto_6

    :cond_6
    const/4 v11, 0x0

    goto :goto_5

    :cond_7
    const/4 v6, 0x0

    :goto_5
    const/16 v16, -0x1

    .line 412
    :goto_6
    invoke-interface {v4}, Lcom/google/android/exoplayer2/extractor/f/b$b;->b()I

    move-result v5

    .line 413
    iget-object v7, v1, Lcom/google/android/exoplayer2/extractor/f/k;->f:Lcom/google/android/exoplayer2/Format;

    iget-object v7, v7, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    if-eq v5, v12, :cond_9

    const-string v12, "audio/raw"

    .line 416
    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    const-string v12, "audio/g711-mlaw"

    .line 417
    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    const-string v12, "audio/g711-alaw"

    .line 418
    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    :cond_8
    if-nez v8, :cond_9

    if-nez v15, :cond_9

    if-nez v6, :cond_9

    move/from16 p1, v8

    move v12, v9

    const/4 v7, 0x1

    goto :goto_7

    :cond_9
    move/from16 p1, v8

    move v12, v9

    const/4 v7, 0x0

    :goto_7
    if-eqz v7, :cond_e

    .line 432
    iget v0, v13, Lcom/google/android/exoplayer2/extractor/f/b$a;->a:I

    new-array v0, v0, [J

    .line 433
    iget v4, v13, Lcom/google/android/exoplayer2/extractor/f/b$a;->a:I

    new-array v6, v4, [I

    .line 434
    :goto_8
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/extractor/f/b$a;->a()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 435
    iget v7, v13, Lcom/google/android/exoplayer2/extractor/f/b$a;->b:I

    iget-wide v10, v13, Lcom/google/android/exoplayer2/extractor/f/b$a;->d:J

    aput-wide v10, v0, v7

    .line 436
    iget v7, v13, Lcom/google/android/exoplayer2/extractor/f/b$a;->b:I

    iget v10, v13, Lcom/google/android/exoplayer2/extractor/f/b$a;->c:I

    aput v10, v6, v7

    goto :goto_8

    :cond_a
    int-to-long v10, v14

    const/16 v7, 0x2000

    .line 13073
    div-int/2addr v7, v5

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_9
    if-ge v12, v4, :cond_b

    .line 13077
    aget v14, v6, v12

    .line 13078
    invoke-static {v14, v7}, Lcom/google/android/exoplayer2/util/af;->a(II)I

    move-result v14

    add-int/2addr v13, v14

    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    .line 13081
    :cond_b
    new-array v12, v13, [J

    .line 13082
    new-array v14, v13, [I

    .line 13084
    new-array v15, v13, [J

    .line 13085
    new-array v13, v13, [I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v16, 0x0

    const/16 v22, 0x0

    :goto_a
    if-ge v8, v4, :cond_d

    .line 13090
    aget v19, v6, v8

    .line 13091
    aget-wide v20, v0, v8

    move/from16 v23, v4

    move/from16 v4, v22

    move/from16 v34, v19

    move-object/from16 v19, v0

    move/from16 v0, v34

    :goto_b
    if-lez v0, :cond_c

    .line 13094
    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v22

    .line 13096
    aput-wide v20, v12, v16

    mul-int v24, v5, v22

    .line 13097
    aput v24, v14, v16

    move/from16 v24, v5

    .line 13098
    aget v5, v14, v16

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move/from16 p1, v4

    int-to-long v4, v9

    mul-long v4, v4, v10

    .line 13099
    aput-wide v4, v15, v16

    const/4 v4, 0x1

    .line 13100
    aput v4, v13, v16

    .line 13102
    aget v4, v14, v16

    int-to-long v4, v4

    add-long v20, v20, v4

    add-int v9, v9, v22

    sub-int v0, v0, v22

    add-int/lit8 v16, v16, 0x1

    move/from16 v4, p1

    move/from16 v5, v24

    goto :goto_b

    :cond_c
    move/from16 v24, v5

    add-int/lit8 v8, v8, 0x1

    move/from16 v22, v4

    move-object/from16 v0, v19

    move/from16 v4, v23

    goto :goto_a

    :cond_d
    int-to-long v4, v9

    mul-long v25, v10, v4

    .line 13111
    new-instance v0, Lcom/google/android/exoplayer2/extractor/f/d$a;

    const/16 v27, 0x0

    move-object/from16 v19, v0

    move-object/from16 v20, v12

    move-object/from16 v21, v14

    move-object/from16 v23, v15

    move-object/from16 v24, v13

    invoke-direct/range {v19 .. v27}, Lcom/google/android/exoplayer2/extractor/f/d$a;-><init>([J[II[J[IJLcom/google/android/exoplayer2/extractor/f/d$1;)V

    .line 441
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/f/d$a;->a:[J

    .line 442
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/f/d$a;->b:[I

    .line 443
    iget v6, v0, Lcom/google/android/exoplayer2/extractor/f/d$a;->c:I

    .line 444
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/f/d$a;->d:[J

    .line 445
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/f/d$a;->e:[I

    .line 446
    iget-wide v9, v0, Lcom/google/android/exoplayer2/extractor/f/d$a;->f:J

    move-object v11, v1

    move v0, v3

    move-object v2, v4

    move-object v3, v5

    move v4, v6

    move-object v5, v7

    move-object v6, v8

    goto/16 :goto_17

    .line 448
    :cond_e
    new-array v5, v3, [J

    .line 449
    new-array v7, v3, [I

    .line 450
    new-array v8, v3, [J

    .line 451
    new-array v9, v3, [I

    move-object/from16 v20, v10

    move/from16 v2, v16

    const/4 v1, 0x0

    const/4 v10, 0x0

    const/16 v19, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v16, v15

    move v15, v14

    move v14, v12

    :goto_c
    const-string v12, "AtomParsers"

    if-ge v1, v3, :cond_17

    move-wide/from16 v24, v23

    move/from16 v23, v19

    const/16 v19, 0x1

    :goto_d
    if-nez v23, :cond_f

    .line 458
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/extractor/f/b$a;->a()Z

    move-result v19

    if-eqz v19, :cond_f

    move/from16 v26, v14

    move/from16 v27, v15

    .line 459
    iget-wide v14, v13, Lcom/google/android/exoplayer2/extractor/f/b$a;->d:J

    move/from16 v32, v3

    .line 460
    iget v3, v13, Lcom/google/android/exoplayer2/extractor/f/b$a;->c:I

    move/from16 v23, v3

    move-wide/from16 v24, v14

    move/from16 v14, v26

    move/from16 v15, v27

    move/from16 v3, v32

    goto :goto_d

    :cond_f
    move/from16 v32, v3

    move/from16 v26, v14

    move/from16 v27, v15

    if-nez v19, :cond_10

    const-string v2, "Unexpected end of chunk data"

    .line 463
    invoke-static {v12, v2}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    invoke-static {v5, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v5

    .line 466
    invoke-static {v7, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v7

    .line 467
    invoke-static {v8, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v8

    .line 468
    invoke-static {v9, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v9

    move v3, v1

    move/from16 v1, v23

    goto/16 :goto_11

    :cond_10
    if-eqz v0, :cond_12

    :goto_e
    if-nez v31, :cond_11

    if-lez v16, :cond_11

    .line 475
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/u;->o()I

    move-result v31

    .line 481
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v30

    add-int/lit8 v16, v16, -0x1

    goto :goto_e

    :cond_11
    add-int/lit8 v31, v31, -0x1

    :cond_12
    move/from16 v3, v30

    .line 487
    aput-wide v24, v5, v1

    .line 488
    invoke-interface {v4}, Lcom/google/android/exoplayer2/extractor/f/b$b;->c()I

    move-result v12

    aput v12, v7, v1

    .line 489
    aget v12, v7, v1

    if-le v12, v10, :cond_13

    .line 490
    aget v10, v7, v1

    :cond_13
    int-to-long v14, v3

    add-long v14, v21, v14

    .line 492
    aput-wide v14, v8, v1

    if-nez v11, :cond_14

    const/4 v12, 0x1

    goto :goto_f

    :cond_14
    const/4 v12, 0x0

    .line 495
    :goto_f
    aput v12, v9, v1

    if-ne v1, v2, :cond_15

    const/4 v12, 0x1

    .line 497
    aput v12, v9, v1

    add-int/lit8 v6, v6, -0x1

    if-lez v6, :cond_15

    .line 500
    invoke-static {v11}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/u;->o()I

    move-result v2

    sub-int/2addr v2, v12

    :cond_15
    move v15, v2

    move v12, v3

    move/from16 v14, v27

    int-to-long v2, v14

    add-long v21, v21, v2

    add-int/lit8 v2, v26, -0x1

    if-nez v2, :cond_16

    if-lez p1, :cond_16

    .line 508
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/exoplayer2/util/u;->o()I

    move-result v2

    .line 515
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v3

    add-int/lit8 v14, p1, -0x1

    goto :goto_10

    :cond_16
    move v3, v14

    move/from16 v14, p1

    :goto_10
    move/from16 p1, v2

    .line 519
    aget v2, v7, v1

    move/from16 v19, v3

    int-to-long v2, v2

    add-long v2, v24, v2

    add-int/lit8 v23, v23, -0x1

    add-int/lit8 v1, v1, 0x1

    move/from16 v30, v12

    move/from16 v34, v14

    move/from16 v14, p1

    move/from16 p1, v34

    move-wide/from16 v35, v2

    move v2, v15

    move/from16 v15, v19

    move/from16 v19, v23

    move/from16 v3, v32

    move-wide/from16 v23, v35

    goto/16 :goto_c

    :cond_17
    move/from16 v32, v3

    move/from16 v26, v14

    move/from16 v1, v19

    :goto_11
    move/from16 v2, v30

    int-to-long v13, v2

    add-long v13, v21, v13

    if-eqz v0, :cond_19

    :goto_12
    if-lez v16, :cond_19

    .line 529
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/u;->o()I

    move-result v2

    if-eqz v2, :cond_18

    const/4 v0, 0x0

    goto :goto_13

    .line 533
    :cond_18
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/u;->j()I

    add-int/lit8 v16, v16, -0x1

    goto :goto_12

    :cond_19
    const/4 v0, 0x1

    :goto_13
    if-nez v6, :cond_1b

    if-nez v26, :cond_1b

    if-nez v1, :cond_1b

    if-nez p1, :cond_1b

    move/from16 v2, v31

    if-nez v2, :cond_1c

    if-nez v0, :cond_1a

    goto :goto_14

    :cond_1a
    move-object/from16 v11, p0

    goto :goto_16

    :cond_1b
    move/from16 v2, v31

    .line 543
    :cond_1c
    :goto_14
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v11, "Inconsistent stbl box for track "

    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v11, p0

    iget v15, v11, Lcom/google/android/exoplayer2/extractor/f/k;->a:I

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ": remainingSynchronizationSamples "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", remainingSamplesAtTimestampDelta "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, v26

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", remainingSamplesInChunk "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", remainingTimestampDeltaChanges "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, p1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", remainingSamplesAtTimestampOffset "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-nez v0, :cond_1d

    const-string v0, ", ctts invalid"

    goto :goto_15

    :cond_1d
    const-string v0, ""

    .line 557
    :goto_15
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 543
    invoke-static {v12, v0}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_16
    move v0, v3

    move-object v2, v5

    move-object v3, v7

    move-object v5, v8

    move-object v6, v9

    move v4, v10

    move-wide v9, v13

    :goto_17
    const-wide/32 v21, 0xf4240

    .line 560
    iget-wide v7, v11, Lcom/google/android/exoplayer2/extractor/f/k;->c:J

    move-wide/from16 v19, v9

    move-wide/from16 v23, v7

    invoke-static/range {v19 .. v24}, Lcom/google/android/exoplayer2/util/af;->b(JJJ)J

    move-result-wide v7

    .line 562
    iget-object v1, v11, Lcom/google/android/exoplayer2/extractor/f/k;->h:[J

    if-nez v1, :cond_1e

    .line 563
    iget-wide v0, v11, Lcom/google/android/exoplayer2/extractor/f/k;->c:J

    invoke-static {v5, v0, v1}, Lcom/google/android/exoplayer2/util/af;->a([JJ)V

    .line 564
    new-instance v9, Lcom/google/android/exoplayer2/extractor/f/n;

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/extractor/f/n;-><init>(Lcom/google/android/exoplayer2/extractor/f/k;[J[II[J[IJ)V

    return-object v9

    .line 575
    :cond_1e
    iget-object v1, v11, Lcom/google/android/exoplayer2/extractor/f/k;->h:[J

    array-length v1, v1

    const/4 v7, 0x1

    if-ne v1, v7, :cond_21

    iget v1, v11, Lcom/google/android/exoplayer2/extractor/f/k;->b:I

    if-ne v1, v7, :cond_21

    array-length v1, v5

    const/4 v7, 0x2

    if-lt v1, v7, :cond_21

    .line 578
    iget-object v1, v11, Lcom/google/android/exoplayer2/extractor/f/k;->i:[J

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    const/4 v7, 0x0

    aget-wide v12, v1, v7

    .line 579
    iget-object v1, v11, Lcom/google/android/exoplayer2/extractor/f/k;->h:[J

    aget-wide v19, v1, v7

    iget-wide v14, v11, Lcom/google/android/exoplayer2/extractor/f/k;->c:J

    iget-wide v7, v11, Lcom/google/android/exoplayer2/extractor/f/k;->d:J

    move-wide/from16 v21, v14

    move-wide/from16 v23, v7

    invoke-static/range {v19 .. v24}, Lcom/google/android/exoplayer2/util/af;->b(JJJ)J

    move-result-wide v7

    add-long/2addr v7, v12

    .line 13624
    array-length v1, v5

    const/4 v14, 0x1

    sub-int/2addr v1, v14

    const/4 v14, 0x4

    const/4 v15, 0x0

    .line 13625
    invoke-static {v14, v15, v1}, Lcom/google/android/exoplayer2/util/af;->a(III)I

    move-result v16

    move/from16 v19, v0

    .line 13626
    array-length v0, v5

    sub-int/2addr v0, v14

    .line 13627
    invoke-static {v0, v15, v1}, Lcom/google/android/exoplayer2/util/af;->a(III)I

    move-result v0

    .line 13628
    aget-wide v20, v5, v15

    cmp-long v1, v20, v12

    if-gtz v1, :cond_1f

    aget-wide v14, v5, v16

    cmp-long v1, v12, v14

    if-gez v1, :cond_1f

    aget-wide v0, v5, v0

    cmp-long v14, v0, v7

    if-gez v14, :cond_1f

    cmp-long v0, v7, v9

    if-gtz v0, :cond_1f

    const/4 v0, 0x1

    goto :goto_18

    :cond_1f
    const/4 v0, 0x0

    :goto_18
    if-eqz v0, :cond_22

    sub-long v20, v9, v7

    const/4 v0, 0x0

    .line 583
    aget-wide v7, v5, v0

    sub-long v22, v12, v7

    iget-object v0, v11, Lcom/google/android/exoplayer2/extractor/f/k;->f:Lcom/google/android/exoplayer2/Format;

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    int-to-long v0, v0

    iget-wide v7, v11, Lcom/google/android/exoplayer2/extractor/f/k;->c:J

    move-wide/from16 v24, v0

    move-wide/from16 v26, v7

    invoke-static/range {v22 .. v27}, Lcom/google/android/exoplayer2/util/af;->b(JJJ)J

    move-result-wide v0

    .line 585
    iget-object v7, v11, Lcom/google/android/exoplayer2/extractor/f/k;->f:Lcom/google/android/exoplayer2/Format;

    iget v7, v7, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    int-to-long v7, v7

    iget-wide v12, v11, Lcom/google/android/exoplayer2/extractor/f/k;->c:J

    move-wide/from16 v22, v7

    move-wide/from16 v24, v12

    invoke-static/range {v20 .. v25}, Lcom/google/android/exoplayer2/util/af;->b(JJJ)J

    move-result-wide v7

    const-wide/16 v12, 0x0

    cmp-long v14, v0, v12

    if-nez v14, :cond_20

    cmp-long v14, v7, v12

    if-eqz v14, :cond_22

    :cond_20
    const-wide/32 v12, 0x7fffffff

    cmp-long v14, v0, v12

    if-gtz v14, :cond_22

    cmp-long v14, v7, v12

    if-gtz v14, :cond_22

    long-to-int v1, v0

    move-object/from16 v0, p2

    .line 589
    iput v1, v0, Lcom/google/android/exoplayer2/extractor/r;->a:I

    long-to-int v1, v7

    .line 590
    iput v1, v0, Lcom/google/android/exoplayer2/extractor/r;->b:I

    .line 591
    iget-wide v0, v11, Lcom/google/android/exoplayer2/extractor/f/k;->c:J

    invoke-static {v5, v0, v1}, Lcom/google/android/exoplayer2/util/af;->a([JJ)V

    .line 592
    iget-object v0, v11, Lcom/google/android/exoplayer2/extractor/f/k;->h:[J

    const/4 v1, 0x0

    aget-wide v12, v0, v1

    const-wide/32 v14, 0xf4240

    iget-wide v0, v11, Lcom/google/android/exoplayer2/extractor/f/k;->d:J

    move-wide/from16 v16, v0

    .line 593
    invoke-static/range {v12 .. v17}, Lcom/google/android/exoplayer2/util/af;->b(JJJ)J

    move-result-wide v7

    .line 595
    new-instance v9, Lcom/google/android/exoplayer2/extractor/f/n;

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/extractor/f/n;-><init>(Lcom/google/android/exoplayer2/extractor/f/k;[J[II[J[IJ)V

    return-object v9

    :cond_21
    move/from16 v19, v0

    .line 601
    :cond_22
    iget-object v0, v11, Lcom/google/android/exoplayer2/extractor/f/k;->h:[J

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_24

    iget-object v0, v11, Lcom/google/android/exoplayer2/extractor/f/k;->h:[J

    const/4 v1, 0x0

    aget-wide v7, v0, v1

    const-wide/16 v12, 0x0

    cmp-long v0, v7, v12

    if-nez v0, :cond_25

    .line 605
    iget-object v0, v11, Lcom/google/android/exoplayer2/extractor/f/k;->i:[J

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    aget-wide v7, v0, v1

    .line 606
    :goto_19
    array-length v0, v5

    if-ge v1, v0, :cond_23

    .line 607
    aget-wide v12, v5, v1

    sub-long v14, v12, v7

    const-wide/32 v16, 0xf4240

    iget-wide v12, v11, Lcom/google/android/exoplayer2/extractor/f/k;->c:J

    move-wide/from16 v18, v12

    .line 608
    invoke-static/range {v14 .. v19}, Lcom/google/android/exoplayer2/util/af;->b(JJJ)J

    move-result-wide v12

    aput-wide v12, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_23
    sub-long v12, v9, v7

    const-wide/32 v14, 0xf4240

    .line 611
    iget-wide v0, v11, Lcom/google/android/exoplayer2/extractor/f/k;->c:J

    move-wide/from16 v16, v0

    .line 612
    invoke-static/range {v12 .. v17}, Lcom/google/android/exoplayer2/util/af;->b(JJJ)J

    move-result-wide v7

    .line 613
    new-instance v9, Lcom/google/android/exoplayer2/extractor/f/n;

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/extractor/f/n;-><init>(Lcom/google/android/exoplayer2/extractor/f/k;[J[II[J[IJ)V

    return-object v9

    :cond_24
    const/4 v1, 0x0

    .line 618
    :cond_25
    iget v0, v11, Lcom/google/android/exoplayer2/extractor/f/k;->b:I

    const/4 v7, 0x1

    if-ne v0, v7, :cond_26

    const/4 v0, 0x1

    goto :goto_1a

    :cond_26
    const/4 v0, 0x0

    .line 624
    :goto_1a
    iget-object v7, v11, Lcom/google/android/exoplayer2/extractor/f/k;->h:[J

    array-length v7, v7

    new-array v7, v7, [I

    .line 625
    iget-object v8, v11, Lcom/google/android/exoplayer2/extractor/f/k;->h:[J

    array-length v8, v8

    new-array v8, v8, [I

    .line 626
    iget-object v9, v11, Lcom/google/android/exoplayer2/extractor/f/k;->i:[J

    invoke-static {v9}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [J

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 627
    :goto_1b
    iget-object v15, v11, Lcom/google/android/exoplayer2/extractor/f/k;->h:[J

    array-length v15, v15

    if-ge v10, v15, :cond_2a

    move-object/from16 p1, v2

    .line 628
    aget-wide v1, v9, v10

    const-wide/16 v15, -0x1

    cmp-long v20, v1, v15

    if-eqz v20, :cond_29

    .line 630
    iget-object v15, v11, Lcom/google/android/exoplayer2/extractor/f/k;->h:[J

    aget-wide v20, v15, v10

    move-object v15, v3

    move/from16 v16, v4

    iget-wide v3, v11, Lcom/google/android/exoplayer2/extractor/f/k;->c:J

    move/from16 v26, v14

    move-object/from16 p2, v15

    iget-wide v14, v11, Lcom/google/android/exoplayer2/extractor/f/k;->d:J

    move-wide/from16 v22, v3

    move-wide/from16 v24, v14

    .line 631
    invoke-static/range {v20 .. v25}, Lcom/google/android/exoplayer2/util/af;->b(JJJ)J

    move-result-wide v3

    const/4 v14, 0x1

    .line 634
    invoke-static {v5, v1, v2, v14}, Lcom/google/android/exoplayer2/util/af;->a([JJZ)I

    move-result v15

    aput v15, v7, v10

    add-long/2addr v1, v3

    .line 637
    invoke-static {v5, v1, v2, v0}, Lcom/google/android/exoplayer2/util/af;->b([JJZ)I

    move-result v1

    aput v1, v8, v10

    .line 642
    :goto_1c
    aget v1, v7, v10

    aget v2, v8, v10

    if-ge v1, v2, :cond_27

    aget v1, v7, v10

    aget v1, v6, v1

    and-int/2addr v1, v14

    if-nez v1, :cond_27

    .line 648
    aget v1, v7, v10

    add-int/2addr v1, v14

    aput v1, v7, v10

    goto :goto_1c

    .line 650
    :cond_27
    aget v1, v8, v10

    aget v2, v7, v10

    sub-int/2addr v1, v2

    add-int/2addr v13, v1

    .line 651
    aget v1, v7, v10

    move/from16 v2, v26

    if-eq v2, v1, :cond_28

    const/4 v4, 0x1

    goto :goto_1d

    :cond_28
    const/4 v4, 0x0

    :goto_1d
    or-int v1, v12, v4

    .line 652
    aget v2, v8, v10

    move v12, v1

    goto :goto_1e

    :cond_29
    move-object/from16 p2, v3

    move/from16 v16, v4

    move v2, v14

    const/4 v14, 0x1

    :goto_1e
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v3, p2

    move v14, v2

    move/from16 v4, v16

    const/4 v1, 0x0

    move-object/from16 v2, p1

    goto :goto_1b

    :cond_2a
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move/from16 v16, v4

    move/from16 v3, v19

    const/4 v14, 0x1

    if-eq v13, v3, :cond_2b

    goto :goto_1f

    :cond_2b
    const/4 v14, 0x0

    :goto_1f
    or-int v0, v12, v14

    if-eqz v0, :cond_2c

    .line 658
    new-array v1, v13, [J

    move-object v2, v1

    goto :goto_20

    :cond_2c
    move-object/from16 v2, p1

    :goto_20
    if-eqz v0, :cond_2d

    .line 659
    new-array v1, v13, [I

    move-object v3, v1

    goto :goto_21

    :cond_2d
    move-object/from16 v3, p2

    :goto_21
    if-eqz v0, :cond_2e

    const/4 v4, 0x0

    goto :goto_22

    :cond_2e
    move/from16 v4, v16

    :goto_22
    if-eqz v0, :cond_2f

    .line 661
    new-array v1, v13, [I

    move-object v9, v1

    goto :goto_23

    :cond_2f
    move-object v9, v6

    .line 662
    :goto_23
    new-array v10, v13, [J

    const/4 v1, 0x0

    const/4 v12, 0x0

    const-wide/16 v19, 0x0

    .line 665
    :goto_24
    iget-object v13, v11, Lcom/google/android/exoplayer2/extractor/f/k;->h:[J

    array-length v13, v13

    if-ge v1, v13, :cond_33

    .line 666
    iget-object v13, v11, Lcom/google/android/exoplayer2/extractor/f/k;->i:[J

    aget-wide v21, v13, v1

    .line 667
    aget v13, v7, v1

    .line 668
    aget v15, v8, v1

    if-eqz v0, :cond_30

    sub-int v14, v15, v13

    move-object/from16 v23, v7

    move-object/from16 v7, p1

    .line 671
    invoke-static {v7, v13, v2, v12, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v7, p2

    .line 672
    invoke-static {v7, v13, v3, v12, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 673
    invoke-static {v6, v13, v9, v12, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_25

    :cond_30
    move-object/from16 v23, v7

    move-object/from16 v7, p2

    :goto_25
    if-ge v13, v15, :cond_32

    const-wide/32 v16, 0xf4240

    move-object/from16 v24, v8

    move-object/from16 v25, v9

    .line 676
    iget-wide v8, v11, Lcom/google/android/exoplayer2/extractor/f/k;->d:J

    move/from16 v26, v13

    move-wide/from16 v13, v19

    move/from16 v27, v15

    move-wide/from16 v15, v16

    move-wide/from16 v17, v8

    invoke-static/range {v13 .. v18}, Lcom/google/android/exoplayer2/util/af;->b(JJJ)J

    move-result-wide v8

    .line 677
    aget-wide v13, v5, v26

    sub-long v13, v13, v21

    move-object v15, v5

    move-object/from16 v16, v6

    const-wide/16 v5, 0x0

    .line 679
    invoke-static {v5, v6, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v28

    const-wide/32 v30, 0xf4240

    iget-wide v13, v11, Lcom/google/android/exoplayer2/extractor/f/k;->c:J

    move-wide/from16 v32, v13

    .line 678
    invoke-static/range {v28 .. v33}, Lcom/google/android/exoplayer2/util/af;->b(JJJ)J

    move-result-wide v13

    add-long/2addr v8, v13

    .line 680
    aput-wide v8, v10, v12

    if-eqz v0, :cond_31

    .line 681
    aget v8, v3, v12

    if-le v8, v4, :cond_31

    .line 682
    aget v4, v7, v26

    :cond_31
    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v13, v26, 0x1

    move-object v5, v15

    move-object/from16 v6, v16

    move-object/from16 v8, v24

    move-object/from16 v9, v25

    move/from16 v15, v27

    goto :goto_25

    :cond_32
    move-object v15, v5

    move-object/from16 v16, v6

    move-object/from16 v24, v8

    move-object/from16 v25, v9

    const-wide/16 v5, 0x0

    .line 686
    iget-object v8, v11, Lcom/google/android/exoplayer2/extractor/f/k;->h:[J

    aget-wide v13, v8, v1

    add-long v19, v19, v13

    add-int/lit8 v1, v1, 0x1

    move-object/from16 p2, v7

    move-object v5, v15

    move-object/from16 v6, v16

    move-object/from16 v7, v23

    move-object/from16 v8, v24

    goto/16 :goto_24

    :cond_33
    move-object/from16 v25, v9

    const-wide/32 v15, 0xf4240

    .line 688
    iget-wide v0, v11, Lcom/google/android/exoplayer2/extractor/f/k;->d:J

    move-wide/from16 v13, v19

    move-wide/from16 v17, v0

    .line 689
    invoke-static/range {v13 .. v18}, Lcom/google/android/exoplayer2/util/af;->b(JJJ)J

    move-result-wide v7

    .line 690
    new-instance v9, Lcom/google/android/exoplayer2/extractor/f/n;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v5, v10

    move-object/from16 v6, v25

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/extractor/f/n;-><init>(Lcom/google/android/exoplayer2/extractor/f/k;[J[II[J[IJ)V

    return-object v9

    .line 344
    :cond_34
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v1, "Track has no sample table size information"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Lcom/google/android/exoplayer2/extractor/f/a$a;)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 9

    const v0, 0x68646c72    # 4.3148E24f

    .line 181
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/f/a$a;->c(I)Lcom/google/android/exoplayer2/extractor/f/a$b;

    move-result-object v0

    const v1, 0x6b657973

    .line 182
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/extractor/f/a$a;->c(I)Lcom/google/android/exoplayer2/extractor/f/a$b;

    move-result-object v1

    const v2, 0x696c7374

    .line 183
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/extractor/f/a$a;->c(I)Lcom/google/android/exoplayer2/extractor/f/a$b;

    move-result-object p0

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    if-eqz p0, :cond_6

    .line 184
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/f/a$b;->b:Lcom/google/android/exoplayer2/util/u;

    .line 187
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/f/b;->c(Lcom/google/android/exoplayer2/util/u;)I

    move-result v0

    const v3, 0x6d647461

    if-eq v0, v3, :cond_0

    goto/16 :goto_3

    .line 193
    :cond_0
    iget-object v0, v1, Lcom/google/android/exoplayer2/extractor/f/a$b;->b:Lcom/google/android/exoplayer2/util/u;

    const/16 v1, 0xc

    .line 194
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 195
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v1

    .line 196
    new-array v3, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x8

    if-ge v4, v1, :cond_1

    .line 198
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v6

    const/4 v7, 0x4

    .line 199
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    sub-int/2addr v6, v5

    .line 201
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/u;->f(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 205
    :cond_1
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/f/a$b;->b:Lcom/google/android/exoplayer2/util/u;

    .line 206
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 208
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v4

    if-le v4, v5, :cond_4

    .line 11144
    iget v4, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    .line 210
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v6

    .line 211
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ltz v7, :cond_2

    if-ge v7, v1, :cond_2

    .line 213
    aget-object v7, v3, v7

    add-int v8, v4, v6

    .line 216
    invoke-static {p0, v8, v7}, Lcom/google/android/exoplayer2/extractor/f/f;->a(Lcom/google/android/exoplayer2/util/u;ILjava/lang/String;)Lcom/google/android/exoplayer2/metadata/mp4/MdtaMetadataEntry;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 218
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 221
    :cond_2
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Skipped metadata with unknown key index: "

    invoke-virtual {v8, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "AtomParsers"

    invoke-static {v8, v7}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    add-int/2addr v4, v6

    .line 223
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    goto :goto_1

    .line 225
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_5

    return-object v2

    :cond_5
    new-instance p0, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    return-object p0

    :cond_6
    :goto_3
    return-object v2
.end method

.method private static a(Lcom/google/android/exoplayer2/util/u;I)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 6

    const/16 v0, 0xc

    .line 737
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    .line 14144
    :goto_0
    iget v1, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    const/4 v2, 0x0

    if-ge v1, p1, :cond_4

    .line 15144
    iget v1, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    .line 740
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v3

    .line 741
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v4

    const v5, 0x73617574

    if-ne v4, v5, :cond_3

    const/16 p1, 0xe

    if-ge v3, p1, :cond_0

    return-object v2

    :cond_0
    const/4 p1, 0x5

    .line 746
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    .line 747
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result p1

    if-eq p1, v0, :cond_1

    const/16 v1, 0xd

    if-eq p1, v1, :cond_1

    return-object v2

    :cond_1
    if-ne p1, v0, :cond_2

    const/high16 p1, 0x43700000    # 240.0f

    goto :goto_1

    :cond_2
    const/high16 p1, 0x42f00000    # 120.0f

    :goto_1
    const/4 v0, 0x1

    .line 752
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    .line 753
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result p0

    .line 754
    new-instance v1, Lcom/google/android/exoplayer2/metadata/Metadata;

    new-array v0, v0, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    const/4 v2, 0x0

    new-instance v3, Lcom/google/android/exoplayer2/metadata/mp4/SmtaMetadataEntry;

    invoke-direct {v3, p1, p0}, Lcom/google/android/exoplayer2/metadata/mp4/SmtaMetadataEntry;-><init>(FI)V

    aput-object v3, v0, v2

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    return-object v1

    :cond_3
    add-int/2addr v1, v3

    .line 756
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    goto :goto_0

    :cond_4
    return-object v2
.end method

.method public static a(Lcom/google/android/exoplayer2/extractor/f/a$a;Lcom/google/android/exoplayer2/extractor/r;JLcom/google/android/exoplayer2/drm/DrmInitData;ZZLcom/google/common/base/Function;)Ljava/util/List;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/extractor/f/a$a;",
            "Lcom/google/android/exoplayer2/extractor/r;",
            "J",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            "ZZ",
            "Lcom/google/common/base/Function<",
            "Lcom/google/android/exoplayer2/extractor/f/k;",
            "Lcom/google/android/exoplayer2/extractor/f/k;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/extractor/f/n;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 113
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 114
    :goto_0
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/f/a$a;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_f

    .line 115
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/f/a$a;->d:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/extractor/f/a$a;

    .line 116
    iget v4, v3, Lcom/google/android/exoplayer2/extractor/f/a$a;->a:I

    const v5, 0x7472616b

    if-ne v4, v5, :cond_e

    const v4, 0x6d766864

    .line 124
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/extractor/f/a$a;->c(I)Lcom/google/android/exoplayer2/extractor/f/a$b;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/extractor/f/a$b;

    const v5, 0x6d646961

    .line 2274
    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/extractor/f/a$a;->d(I)Lcom/google/android/exoplayer2/extractor/f/a$a;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/extractor/f/a$a;

    const v7, 0x68646c72    # 4.3148E24f

    .line 2276
    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/extractor/f/a$a;->c(I)Lcom/google/android/exoplayer2/extractor/f/a$b;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/exoplayer2/extractor/f/a$b;

    iget-object v7, v7, Lcom/google/android/exoplayer2/extractor/f/a$b;->b:Lcom/google/android/exoplayer2/util/u;

    invoke-static {v7}, Lcom/google/android/exoplayer2/extractor/f/b;->c(Lcom/google/android/exoplayer2/util/u;)I

    move-result v7

    const v8, 0x736f756e

    const/4 v9, -0x1

    if-ne v7, v8, :cond_0

    const/4 v7, 0x1

    const/4 v12, 0x1

    goto :goto_2

    :cond_0
    const v8, 0x76696465

    if-ne v7, v8, :cond_1

    const/4 v7, 0x2

    const/4 v12, 0x2

    goto :goto_2

    :cond_1
    const v8, 0x74657874

    if-eq v7, v8, :cond_4

    const v8, 0x7362746c

    if-eq v7, v8, :cond_4

    const v8, 0x73756274

    if-eq v7, v8, :cond_4

    const v8, 0x636c6370

    if-ne v7, v8, :cond_2

    goto :goto_1

    :cond_2
    const v8, 0x6d657461

    if-ne v7, v8, :cond_3

    const/4 v7, 0x5

    const/4 v12, 0x5

    goto :goto_2

    :cond_3
    const/4 v12, -0x1

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v7, 0x3

    const/4 v12, 0x3

    :goto_2
    const v7, 0x7374626c

    const v8, 0x6d696e66

    if-ne v12, v9, :cond_5

    :goto_3
    move-object/from16 v4, p7

    const/4 v10, 0x0

    goto/16 :goto_9

    :cond_5
    const v9, 0x746b6864

    .line 2281
    invoke-virtual {v3, v9}, Lcom/google/android/exoplayer2/extractor/f/a$a;->c(I)Lcom/google/android/exoplayer2/extractor/f/a$b;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/exoplayer2/extractor/f/a$b;

    iget-object v9, v9, Lcom/google/android/exoplayer2/extractor/f/a$b;->b:Lcom/google/android/exoplayer2/util/u;

    invoke-static {v9}, Lcom/google/android/exoplayer2/extractor/f/b;->b(Lcom/google/android/exoplayer2/util/u;)Lcom/google/android/exoplayer2/extractor/f/b$f;

    move-result-object v9

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v11, p2, v13

    if-nez v11, :cond_6

    .line 3686
    iget-wide v10, v9, Lcom/google/android/exoplayer2/extractor/f/b$f;->b:J

    move-wide/from16 v16, v10

    goto :goto_4

    :cond_6
    move-wide/from16 v16, p2

    .line 2285
    :goto_4
    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/f/a$b;->b:Lcom/google/android/exoplayer2/util/u;

    const/16 v10, 0x8

    .line 3768
    invoke-virtual {v4, v10}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 3769
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v11

    .line 3770
    invoke-static {v11}, Lcom/google/android/exoplayer2/extractor/f/a;->a(I)I

    move-result v11

    const/16 v22, 0x10

    if-nez v11, :cond_7

    const/16 v11, 0x8

    goto :goto_5

    :cond_7
    const/16 v11, 0x10

    .line 3771
    :goto_5
    invoke-virtual {v4, v11}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    .line 3772
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/u;->h()J

    move-result-wide v23

    cmp-long v4, v16, v13

    if-nez v4, :cond_8

    goto :goto_6

    :cond_8
    const-wide/32 v18, 0xf4240

    move-wide/from16 v20, v23

    .line 2290
    invoke-static/range {v16 .. v21}, Lcom/google/android/exoplayer2/util/af;->b(JJJ)J

    move-result-wide v13

    :goto_6
    move-wide/from16 v17, v13

    .line 2294
    invoke-virtual {v6, v8}, Lcom/google/android/exoplayer2/extractor/f/a$a;->d(I)Lcom/google/android/exoplayer2/extractor/f/a$a;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/extractor/f/a$a;

    .line 2295
    invoke-virtual {v4, v7}, Lcom/google/android/exoplayer2/extractor/f/a$a;->d(I)Lcom/google/android/exoplayer2/extractor/f/a$a;

    move-result-object v4

    .line 2293
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/extractor/f/a$a;

    const v11, 0x6d646864

    .line 2298
    invoke-virtual {v6, v11}, Lcom/google/android/exoplayer2/extractor/f/a$a;->c(I)Lcom/google/android/exoplayer2/extractor/f/a$b;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/extractor/f/a$b;

    iget-object v6, v6, Lcom/google/android/exoplayer2/extractor/f/a$b;->b:Lcom/google/android/exoplayer2/util/u;

    .line 3868
    invoke-virtual {v6, v10}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 3869
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v11

    .line 3870
    invoke-static {v11}, Lcom/google/android/exoplayer2/extractor/f/a;->a(I)I

    move-result v11

    if-nez v11, :cond_9

    const/16 v13, 0x8

    goto :goto_7

    :cond_9
    const/16 v13, 0x10

    .line 3871
    :goto_7
    invoke-virtual {v6, v13}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    .line 3872
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/u;->h()J

    move-result-wide v13

    if-nez v11, :cond_a

    const/4 v10, 0x4

    .line 3873
    :cond_a
    invoke-virtual {v6, v10}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    .line 3874
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/u;->d()I

    move-result v6

    .line 3875
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    shr-int/lit8 v11, v6, 0xa

    and-int/lit8 v11, v11, 0x1f

    add-int/lit8 v11, v11, 0x60

    int-to-char v11, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v11, v6, 0x5

    and-int/lit8 v11, v11, 0x1f

    add-int/lit8 v11, v11, 0x60

    int-to-char v11, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v6, v6, 0x1f

    add-int/lit8 v6, v6, 0x60

    int-to-char v6, v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3880
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v10, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    const v10, 0x73747364

    .line 2301
    invoke-virtual {v4, v10}, Lcom/google/android/exoplayer2/extractor/f/a$a;->c(I)Lcom/google/android/exoplayer2/extractor/f/a$b;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/extractor/f/a$b;

    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/f/a$b;->b:Lcom/google/android/exoplayer2/util/u;

    .line 4686
    iget v10, v9, Lcom/google/android/exoplayer2/extractor/f/b$f;->a:I

    .line 5686
    iget v11, v9, Lcom/google/android/exoplayer2/extractor/f/b$f;->c:I

    .line 2303
    iget-object v13, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v28, v13

    check-cast v28, Ljava/lang/String;

    move-object/from16 v25, v4

    move/from16 v26, v10

    move/from16 v27, v11

    move-object/from16 v29, p4

    move/from16 v30, p6

    .line 2300
    invoke-static/range {v25 .. v30}, Lcom/google/android/exoplayer2/extractor/f/b;->a(Lcom/google/android/exoplayer2/util/u;IILjava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;Z)Lcom/google/android/exoplayer2/extractor/f/b$c;

    move-result-object v4

    if-nez p5, :cond_b

    const v10, 0x65647473

    .line 2310
    invoke-virtual {v3, v10}, Lcom/google/android/exoplayer2/extractor/f/a$a;->d(I)Lcom/google/android/exoplayer2/extractor/f/a$a;

    move-result-object v10

    if-eqz v10, :cond_b

    .line 2312
    invoke-static {v10}, Lcom/google/android/exoplayer2/extractor/f/b;->b(Lcom/google/android/exoplayer2/extractor/f/a$a;)Landroid/util/Pair;

    move-result-object v10

    if-eqz v10, :cond_b

    .line 2314
    iget-object v11, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, [J

    .line 2315
    iget-object v10, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, [J

    move-object/from16 v26, v10

    move-object/from16 v25, v11

    goto :goto_8

    :cond_b
    const/16 v25, 0x0

    const/16 v26, 0x0

    .line 2319
    :goto_8
    iget-object v10, v4, Lcom/google/android/exoplayer2/extractor/f/b$c;->b:Lcom/google/android/exoplayer2/Format;

    if-nez v10, :cond_c

    goto/16 :goto_3

    .line 2320
    :cond_c
    new-instance v27, Lcom/google/android/exoplayer2/extractor/f/k;

    .line 6686
    iget v11, v9, Lcom/google/android/exoplayer2/extractor/f/b$f;->a:I

    .line 2320
    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    iget-object v6, v4, Lcom/google/android/exoplayer2/extractor/f/b$c;->b:Lcom/google/android/exoplayer2/Format;

    iget v9, v4, Lcom/google/android/exoplayer2/extractor/f/b$c;->d:I

    iget-object v15, v4, Lcom/google/android/exoplayer2/extractor/f/b$c;->a:[Lcom/google/android/exoplayer2/extractor/f/l;

    iget v4, v4, Lcom/google/android/exoplayer2/extractor/f/b$c;->c:I

    move-object/from16 v10, v27

    move-object/from16 v21, v15

    move-wide/from16 v15, v23

    move-object/from16 v19, v6

    move/from16 v20, v9

    move/from16 v22, v4

    move-object/from16 v23, v25

    move-object/from16 v24, v26

    invoke-direct/range {v10 .. v24}, Lcom/google/android/exoplayer2/extractor/f/k;-><init>(IIJJJLcom/google/android/exoplayer2/Format;I[Lcom/google/android/exoplayer2/extractor/f/l;I[J[J)V

    move-object/from16 v4, p7

    .line 121
    :goto_9
    invoke-interface {v4, v10}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/extractor/f/k;

    if-eqz v6, :cond_d

    .line 135
    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/extractor/f/a$a;->d(I)Lcom/google/android/exoplayer2/extractor/f/a$a;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/extractor/f/a$a;

    .line 136
    invoke-virtual {v3, v8}, Lcom/google/android/exoplayer2/extractor/f/a$a;->d(I)Lcom/google/android/exoplayer2/extractor/f/a$a;

    move-result-object v3

    .line 134
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/extractor/f/a$a;

    .line 137
    invoke-virtual {v3, v7}, Lcom/google/android/exoplayer2/extractor/f/a$a;->d(I)Lcom/google/android/exoplayer2/extractor/f/a$a;

    move-result-object v3

    .line 133
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/extractor/f/a$a;

    move-object/from16 v5, p1

    .line 138
    invoke-static {v6, v3, v5}, Lcom/google/android/exoplayer2/extractor/f/b;->a(Lcom/google/android/exoplayer2/extractor/f/k;Lcom/google/android/exoplayer2/extractor/f/a$a;Lcom/google/android/exoplayer2/extractor/r;)Lcom/google/android/exoplayer2/extractor/f/n;

    move-result-object v3

    .line 139
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_d
    move-object/from16 v5, p1

    goto :goto_a

    :cond_e
    move-object/from16 v5, p1

    move-object/from16 v4, p7

    :goto_a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_f
    return-object v1
.end method

.method public static a(Lcom/google/android/exoplayer2/util/u;)V
    .locals 3

    .line 12144
    iget v0, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    const/4 v1, 0x4

    .line 245
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    .line 246
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v1

    const v2, 0x68646c72    # 4.3148E24f

    if-eq v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x4

    .line 249
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    return-void
.end method

.method private static b(Lcom/google/android/exoplayer2/extractor/f/a$a;)Landroid/util/Pair;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/extractor/f/a$a;",
            ")",
            "Landroid/util/Pair<",
            "[J[J>;"
        }
    .end annotation

    const v0, 0x656c7374

    .line 1190
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/f/a$a;->c(I)Lcom/google/android/exoplayer2/extractor/f/a$b;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1194
    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/f/a$b;->b:Lcom/google/android/exoplayer2/util/u;

    const/16 v0, 0x8

    .line 1195
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 1196
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v1

    .line 1197
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/f/a;->a(I)I

    move-result v1

    .line 1198
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->o()I

    move-result v2

    .line 1199
    new-array v3, v2, [J

    .line 1200
    new-array v4, v2, [J

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_4

    const/4 v6, 0x1

    if-ne v1, v6, :cond_1

    .line 1203
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->q()J

    move-result-wide v7

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->h()J

    move-result-wide v7

    :goto_1
    aput-wide v7, v3, v5

    if-ne v1, v6, :cond_2

    .line 1204
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->l()J

    move-result-wide v7

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v7

    int-to-long v7, v7

    :goto_2
    aput-wide v7, v4, v5

    .line 42266
    iget-object v7, p0, Lcom/google/android/exoplayer2/util/u;->a:[B

    iget v8, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/2addr v7, v0

    iget-object v8, p0, Lcom/google/android/exoplayer2/util/u;->a:[B

    iget v9, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    aget-byte v8, v8, v9

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v7, v8

    int-to-short v7, v7

    if-ne v7, v6, :cond_3

    const/4 v6, 0x2

    .line 1210
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1208
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported media rate."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1212
    :cond_4
    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static b(Lcom/google/android/exoplayer2/util/u;I)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/u;",
            "I)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    add-int/lit8 p1, p1, 0x8

    add-int/lit8 p1, p1, 0x4

    .line 1447
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    const/4 p1, 0x1

    .line 1449
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    .line 1450
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/f/b;->d(Lcom/google/android/exoplayer2/util/u;)I

    const/4 v0, 0x2

    .line 1451
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    .line 1453
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v1

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_0

    .line 1455
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    :cond_0
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_1

    .line 1458
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->d()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    :cond_1
    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_2

    .line 1461
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    .line 1465
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    .line 1466
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/f/b;->d(Lcom/google/android/exoplayer2/util/u;)I

    .line 1469
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v0

    .line 1470
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/q;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "audio/mpeg"

    .line 1471
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "audio/vnd.dts"

    .line 1472
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "audio/vnd.dts.hd"

    .line 1473
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0xc

    .line 1477
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    .line 1480
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    .line 1481
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/f/b;->d(Lcom/google/android/exoplayer2/util/u;)I

    move-result p1

    .line 1482
    new-array v1, p1, [B

    const/4 v2, 0x0

    .line 1483
    invoke-virtual {p0, v1, v2, p1}, Lcom/google/android/exoplayer2/util/u;->a([BII)V

    .line 1484
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_0
    const/4 p0, 0x0

    .line 1474
    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static b(Lcom/google/android/exoplayer2/util/u;II)Landroid/util/Pair;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/u;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/exoplayer2/extractor/f/l;",
            ">;"
        }
    .end annotation

    add-int/lit8 v0, p1, 0x8

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    move-object v4, v3

    move-object v7, v4

    const/4 v5, -0x1

    const/4 v6, 0x0

    :goto_0
    sub-int v8, v0, p1

    if-ge v8, p2, :cond_3

    .line 1523
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 1524
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v8

    .line 1525
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v9

    const v10, 0x66726d61

    if-ne v9, v10, :cond_0

    .line 1527
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_1

    :cond_0
    const v10, 0x7363686d

    if-ne v9, v10, :cond_1

    const/4 v4, 0x4

    .line 1529
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    .line 1531
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/u;->f(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    const v10, 0x73636869

    if-ne v9, v10, :cond_2

    move v5, v0

    move v6, v8

    :cond_2
    :goto_1
    add-int/2addr v0, v8

    goto :goto_0

    :cond_3
    const-string p1, "cenc"

    .line 1539
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "cbc1"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "cens"

    .line 1540
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "cbcs"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    return-object v3

    :cond_5
    :goto_2
    const-string p1, "frma atom is mandatory"

    .line 1541
    invoke-static {v7, p1}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eq v5, v2, :cond_6

    const/4 v1, 0x1

    :cond_6
    const-string p1, "schi atom is mandatory"

    .line 1542
    invoke-static {v1, p1}, Lcom/google/android/exoplayer2/util/a;->b(ZLjava/lang/Object;)V

    .line 1546
    invoke-static {p0, v5, v6, v4}, Lcom/google/android/exoplayer2/extractor/f/b;->a(Lcom/google/android/exoplayer2/util/u;IILjava/lang/String;)Lcom/google/android/exoplayer2/extractor/f/l;

    move-result-object p0

    const-string p1, "tenc atom is mandatory"

    .line 1545
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/extractor/f/l;

    .line 1549
    invoke-static {v7, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static b(Lcom/google/android/exoplayer2/util/u;)Lcom/google/android/exoplayer2/extractor/f/b$f;
    .locals 11

    const/16 v0, 0x8

    .line 781
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 782
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v1

    .line 783
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/f/a;->a(I)I

    move-result v1

    const/16 v2, 0x10

    if-nez v1, :cond_0

    const/16 v3, 0x8

    goto :goto_0

    :cond_0
    const/16 v3, 0x10

    .line 785
    :goto_0
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    .line 786
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v3

    const/4 v4, 0x4

    .line 788
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    .line 16144
    iget v5, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    if-nez v1, :cond_1

    const/4 v0, 0x4

    :cond_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v0, :cond_3

    .line 16169
    iget-object v8, p0, Lcom/google/android/exoplayer2/util/u;->a:[B

    add-int v9, v5, v7

    .line 793
    aget-byte v8, v8, v9

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x1

    :goto_2
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v5, :cond_4

    .line 800
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    goto :goto_4

    :cond_4
    if-nez v1, :cond_5

    .line 803
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->h()J

    move-result-wide v0

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->q()J

    move-result-wide v0

    :goto_3
    const-wide/16 v9, 0x0

    cmp-long v5, v0, v9

    if-nez v5, :cond_6

    goto :goto_4

    :cond_6
    move-wide v7, v0

    .line 811
    :goto_4
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    .line 812
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v0

    .line 813
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v1

    .line 814
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    .line 815
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v2

    .line 816
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result p0

    const/high16 v4, 0x10000

    const/high16 v5, -0x10000

    if-nez v0, :cond_7

    if-ne v1, v4, :cond_7

    if-ne v2, v5, :cond_7

    if-nez p0, :cond_7

    const/16 v6, 0x5a

    goto :goto_5

    :cond_7
    if-nez v0, :cond_8

    if-ne v1, v5, :cond_8

    if-ne v2, v4, :cond_8

    if-nez p0, :cond_8

    const/16 v6, 0x10e

    goto :goto_5

    :cond_8
    if-ne v0, v5, :cond_9

    if-nez v1, :cond_9

    if-nez v2, :cond_9

    if-ne p0, v5, :cond_9

    const/16 v6, 0xb4

    .line 831
    :cond_9
    :goto_5
    new-instance p0, Lcom/google/android/exoplayer2/extractor/f/b$f;

    invoke-direct {p0, v3, v7, v8, v6}, Lcom/google/android/exoplayer2/extractor/f/b$f;-><init>(IJI)V

    return-object p0
.end method

.method private static c(Lcom/google/android/exoplayer2/util/u;)I
    .locals 1

    const/16 v0, 0x10

    .line 841
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 842
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result p0

    return p0
.end method

.method private static d(Lcom/google/android/exoplayer2/util/u;)I
    .locals 3

    .line 1612
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v0

    and-int/lit8 v1, v0, 0x7f

    :goto_0
    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    .line 1615
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v0

    shl-int/lit8 v1, v1, 0x7

    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method
