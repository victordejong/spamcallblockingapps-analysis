.class final Landroidx/media2/exoplayer/external/extractor/mp4/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/extractor/mp4/b$e;,
        Landroidx/media2/exoplayer/external/extractor/mp4/b$d;,
        Landroidx/media2/exoplayer/external/extractor/mp4/b$b;,
        Landroidx/media2/exoplayer/external/extractor/mp4/b$c;,
        Landroidx/media2/exoplayer/external/extractor/mp4/b$f;,
        Landroidx/media2/exoplayer/external/extractor/mp4/b$a;
    }
.end annotation


# static fields
.field private static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "OpusHead"

    .line 89
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/ac;->c(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/mp4/b;->a:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroidx/media2/exoplayer/external/util/p;)I
    .locals 1

    const/16 v0, 0x10

    .line 700
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 701
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result p0

    return p0
.end method

.method private static a(Landroidx/media2/exoplayer/external/util/p;I)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/util/p;",
            "I)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    add-int/lit8 p1, p1, 0x8

    add-int/lit8 p1, p1, 0x4

    .line 1216
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    const/4 p1, 0x1

    .line 1218
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    .line 1219
    invoke-static {p0}, Landroidx/media2/exoplayer/external/extractor/mp4/b;->b(Landroidx/media2/exoplayer/external/util/p;)I

    const/4 v0, 0x2

    .line 1220
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    .line 1222
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v1

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_0

    .line 1224
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    :cond_0
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_1

    .line 1227
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->d()I

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    :cond_1
    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_2

    .line 1230
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    .line 1234
    :cond_2
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    .line 1235
    invoke-static {p0}, Landroidx/media2/exoplayer/external/extractor/mp4/b;->b(Landroidx/media2/exoplayer/external/util/p;)I

    .line 1238
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v0

    .line 1239
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/m;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "audio/mpeg"

    .line 1240
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "audio/vnd.dts"

    .line 1241
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "audio/vnd.dts.hd"

    .line 1242
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0xc

    .line 1246
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    .line 1249
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    .line 1250
    invoke-static {p0}, Landroidx/media2/exoplayer/external/extractor/mp4/b;->b(Landroidx/media2/exoplayer/external/util/p;)I

    move-result p1

    .line 1251
    new-array v1, p1, [B

    const/4 v2, 0x0

    .line 1252
    invoke-virtual {p0, v1, v2, p1}, Landroidx/media2/exoplayer/external/util/p;->a([BII)V

    .line 1253
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_0
    const/4 p0, 0x0

    .line 1243
    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroidx/media2/exoplayer/external/util/p;II)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/util/p;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroidx/media2/exoplayer/external/extractor/mp4/m;",
            ">;"
        }
    .end annotation

    .line 22142
    iget v0, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    :goto_0
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_2

    .line 1265
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 1266
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    const-string v3, "childAtomSize should be positive"

    .line 1267
    invoke-static {v2, v3}, Landroidx/media2/exoplayer/external/util/a;->a(ZLjava/lang/Object;)V

    .line 1268
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v2

    const v3, 0x73696e66

    if-ne v2, v3, :cond_1

    .line 1270
    invoke-static {p0, v0, v1}, Landroidx/media2/exoplayer/external/extractor/mp4/b;->b(Landroidx/media2/exoplayer/external/util/p;II)Landroid/util/Pair;

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

.method private static a(Landroidx/media2/exoplayer/external/util/p;IILjava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData;Z)Landroidx/media2/exoplayer/external/extractor/mp4/b$c;
    .locals 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p4

    const/16 v0, 0xc

    .line 755
    invoke-virtual {v10, v0}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 756
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v12

    .line 757
    new-instance v13, Landroidx/media2/exoplayer/external/extractor/mp4/b$c;

    invoke-direct {v13, v12}, Landroidx/media2/exoplayer/external/extractor/mp4/b$c;-><init>(I)V

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v12, :cond_2f

    .line 13142
    iget v9, v10, Landroidx/media2/exoplayer/external/util/p;->b:I

    .line 760
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v8

    if-lez v8, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    const-string v2, "childAtomSize should be positive"

    .line 761
    invoke-static {v1, v2}, Landroidx/media2/exoplayer/external/util/a;->a(ZLjava/lang/Object;)V

    .line 762
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v1

    const v3, 0x61766331

    const v4, 0x76703038

    const/4 v5, -0x1

    const v6, 0x656e6376

    const/4 v7, 0x0

    const/16 v0, 0x8

    if-eq v1, v3, :cond_c

    const v3, 0x61766333

    if-eq v1, v3, :cond_c

    if-eq v1, v6, :cond_c

    const v3, 0x6d703476

    if-eq v1, v3, :cond_c

    const v3, 0x68766331

    if-eq v1, v3, :cond_c

    const v3, 0x68657631

    if-eq v1, v3, :cond_c

    const v3, 0x73323633

    if-eq v1, v3, :cond_c

    if-eq v1, v4, :cond_c

    const v3, 0x76703039

    if-eq v1, v3, :cond_c

    const v3, 0x61763031

    if-eq v1, v3, :cond_c

    const v3, 0x64766176

    if-eq v1, v3, :cond_c

    const v3, 0x64766131

    if-eq v1, v3, :cond_c

    const v3, 0x64766865

    if-eq v1, v3, :cond_c

    const v3, 0x64766831

    if-ne v1, v3, :cond_1

    goto/16 :goto_7

    :cond_1
    const v2, 0x6d703461

    if-eq v1, v2, :cond_b

    const v2, 0x656e6361

    if-eq v1, v2, :cond_b

    const v2, 0x61632d33

    if-eq v1, v2, :cond_b

    const v2, 0x65632d33

    if-eq v1, v2, :cond_b

    const v2, 0x61632d34

    if-eq v1, v2, :cond_b

    const v2, 0x64747363

    if-eq v1, v2, :cond_b

    const v2, 0x64747365

    if-eq v1, v2, :cond_b

    const v2, 0x64747368

    if-eq v1, v2, :cond_b

    const v2, 0x6474736c

    if-eq v1, v2, :cond_b

    const v2, 0x73616d72

    if-eq v1, v2, :cond_b

    const v2, 0x73617762

    if-eq v1, v2, :cond_b

    const v2, 0x6c70636d

    if-eq v1, v2, :cond_b

    const v2, 0x736f7774

    if-eq v1, v2, :cond_b

    const v2, 0x2e6d7033

    if-eq v1, v2, :cond_b

    const v2, 0x616c6163

    if-eq v1, v2, :cond_b

    const v2, 0x616c6177

    if-eq v1, v2, :cond_b

    const v2, 0x756c6177

    if-eq v1, v2, :cond_b

    const v2, 0x4f707573

    if-eq v1, v2, :cond_b

    const v2, 0x664c6143

    if-ne v1, v2, :cond_2

    goto/16 :goto_6

    :cond_2
    const v2, 0x63363038

    const v3, 0x73747070

    const v4, 0x77767474

    const v6, 0x74783367

    const v14, 0x54544d4c

    if-eq v1, v14, :cond_4

    if-eq v1, v6, :cond_4

    if-eq v1, v4, :cond_4

    if-eq v1, v3, :cond_4

    if-ne v1, v2, :cond_3

    goto :goto_2

    :cond_3
    const v0, 0x63616d6d

    if-ne v1, v0, :cond_9

    .line 806
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/x-camera-motion"

    invoke-static {v0, v1, v7, v5, v7}, Landroidx/media2/exoplayer/external/Format;->createSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    iput-object v0, v13, Landroidx/media2/exoplayer/external/extractor/mp4/b$c;->b:Landroidx/media2/exoplayer/external/Format;

    goto :goto_5

    :cond_4
    :goto_2
    add-int/lit8 v5, v9, 0x8

    add-int/2addr v5, v0

    .line 18816
    invoke-virtual {v10, v5}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    const-wide v16, 0x7fffffffffffffffL

    const-string v5, "application/ttml+xml"

    if-ne v1, v14, :cond_5

    move-object/from16 v19, v5

    move-object/from16 v28, v7

    move-wide/from16 v26, v16

    const/4 v14, 0x0

    goto :goto_4

    :cond_5
    if-ne v1, v6, :cond_6

    add-int/lit8 v1, v8, -0x8

    sub-int/2addr v1, v0

    .line 18828
    new-array v0, v1, [B

    const/4 v14, 0x0

    .line 18829
    invoke-virtual {v10, v0, v14, v1}, Landroidx/media2/exoplayer/external/util/p;->a([BII)V

    .line 18830
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    const-string v5, "application/x-quicktime-tx3g"

    :goto_3
    move-object/from16 v19, v5

    move-object/from16 v28, v7

    move-wide/from16 v26, v16

    goto :goto_4

    :cond_6
    const/4 v14, 0x0

    if-ne v1, v4, :cond_7

    const-string v5, "application/x-mp4-vtt"

    goto :goto_3

    :cond_7
    if-ne v1, v3, :cond_8

    const-wide/16 v16, 0x0

    goto :goto_3

    :cond_8
    if-ne v1, v2, :cond_a

    const/4 v0, 0x1

    .line 18839
    iput v0, v13, Landroidx/media2/exoplayer/external/extractor/mp4/b$c;->d:I

    const-string v5, "application/x-mp4-cea-608"

    goto :goto_3

    .line 18847
    :goto_4
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v20, 0x0

    const/16 v21, -0x1

    const/16 v22, 0x0

    const/16 v24, -0x1

    const/16 v25, 0x0

    move-object/from16 v23, p3

    .line 18846
    invoke-static/range {v18 .. v28}, Landroidx/media2/exoplayer/external/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroidx/media2/exoplayer/external/drm/DrmInitData;JLjava/util/List;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    iput-object v0, v13, Landroidx/media2/exoplayer/external/extractor/mp4/b$c;->b:Landroidx/media2/exoplayer/external/Format;

    :cond_9
    :goto_5
    move v14, v8

    move/from16 v16, v12

    move v12, v9

    goto/16 :goto_1a

    .line 18842
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_b
    :goto_6
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move v2, v9

    move v3, v8

    move/from16 v4, p1

    move-object/from16 v5, p3

    move/from16 v6, p5

    move-object/from16 v7, p4

    move v14, v8

    move-object v8, v13

    move/from16 v16, v12

    move v12, v9

    move v9, v15

    .line 798
    invoke-static/range {v0 .. v9}, Landroidx/media2/exoplayer/external/extractor/mp4/b;->a(Landroidx/media2/exoplayer/external/util/p;IIIILjava/lang/String;ZLandroidx/media2/exoplayer/external/drm/DrmInitData;Landroidx/media2/exoplayer/external/extractor/mp4/b$c;I)V

    goto/16 :goto_1a

    :cond_c
    :goto_7
    move v14, v8

    move/from16 v16, v12

    move v12, v9

    add-int/lit8 v9, v12, 0x8

    add-int/2addr v9, v0

    .line 13862
    invoke-virtual {v10, v9}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    const/16 v3, 0x10

    .line 13864
    invoke-virtual {v10, v3}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    .line 13865
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/p;->d()I

    move-result v22

    .line 13866
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/p;->d()I

    move-result v23

    const/16 v8, 0x32

    .line 13869
    invoke-virtual {v10, v8}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    .line 14142
    iget v8, v10, Landroidx/media2/exoplayer/external/util/p;->b:I

    if-ne v1, v6, :cond_f

    .line 13873
    invoke-static {v10, v12, v14}, Landroidx/media2/exoplayer/external/extractor/mp4/b;->a(Landroidx/media2/exoplayer/external/util/p;II)Landroid/util/Pair;

    move-result-object v6

    if-eqz v6, :cond_e

    .line 13876
    iget-object v1, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v11, :cond_d

    move-object v9, v7

    goto :goto_8

    .line 13878
    :cond_d
    iget-object v9, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Landroidx/media2/exoplayer/external/extractor/mp4/m;

    iget-object v9, v9, Landroidx/media2/exoplayer/external/extractor/mp4/m;->b:Ljava/lang/String;

    invoke-virtual {v11, v9}, Landroidx/media2/exoplayer/external/drm/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Landroidx/media2/exoplayer/external/drm/DrmInitData;

    move-result-object v9

    .line 13879
    :goto_8
    iget-object v3, v13, Landroidx/media2/exoplayer/external/extractor/mp4/b$c;->a:[Landroidx/media2/exoplayer/external/extractor/mp4/m;

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Landroidx/media2/exoplayer/external/extractor/mp4/m;

    aput-object v6, v3, v15

    goto :goto_9

    :cond_e
    move-object v9, v11

    .line 13881
    :goto_9
    invoke-virtual {v10, v8}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    move-object/from16 v31, v9

    goto :goto_a

    :cond_f
    move-object/from16 v31, v11

    :goto_a
    move-object/from16 v18, v7

    move-object/from16 v19, v18

    move-object/from16 v25, v19

    move-object/from16 v28, v25

    const/4 v3, 0x0

    const/high16 v27, 0x3f800000    # 1.0f

    const/16 v29, -0x1

    :goto_b
    sub-int v5, v8, v12

    if-ge v5, v14, :cond_2d

    .line 13895
    invoke-virtual {v10, v8}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 15142
    iget v5, v10, Landroidx/media2/exoplayer/external/util/p;->b:I

    .line 13897
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v6

    if-nez v6, :cond_10

    .line 16142
    iget v9, v10, Landroidx/media2/exoplayer/external/util/p;->b:I

    sub-int/2addr v9, v12

    if-eq v9, v14, :cond_2d

    :cond_10
    if-lez v6, :cond_11

    const/4 v9, 0x1

    goto :goto_c

    :cond_11
    const/4 v9, 0x0

    .line 13902
    :goto_c
    invoke-static {v9, v2}, Landroidx/media2/exoplayer/external/util/a;->a(ZLjava/lang/Object;)V

    .line 13903
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v9

    const v7, 0x61766343

    const/4 v0, 0x3

    if-ne v9, v7, :cond_14

    if-nez v18, :cond_12

    const/4 v0, 0x1

    goto :goto_d

    :cond_12
    const/4 v0, 0x0

    .line 13905
    :goto_d
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    add-int/lit8 v5, v5, 0x8

    .line 13907
    invoke-virtual {v10, v5}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 13908
    invoke-static/range {p0 .. p0}, Landroidx/media2/exoplayer/external/video/a;->a(Landroidx/media2/exoplayer/external/util/p;)Landroidx/media2/exoplayer/external/video/a;

    move-result-object v0

    .line 13909
    iget-object v5, v0, Landroidx/media2/exoplayer/external/video/a;->a:Ljava/util/List;

    .line 13910
    iget v7, v0, Landroidx/media2/exoplayer/external/video/a;->b:I

    iput v7, v13, Landroidx/media2/exoplayer/external/extractor/mp4/b$c;->c:I

    if-nez v3, :cond_13

    .line 13912
    iget v0, v0, Landroidx/media2/exoplayer/external/video/a;->e:F

    move/from16 v27, v0

    :cond_13
    const-string v18, "video/avc"

    goto :goto_f

    :cond_14
    const v7, 0x68766343

    if-ne v9, v7, :cond_16

    if-nez v18, :cond_15

    const/4 v0, 0x1

    goto :goto_e

    :cond_15
    const/4 v0, 0x0

    .line 13915
    :goto_e
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    add-int/lit8 v5, v5, 0x8

    .line 13917
    invoke-virtual {v10, v5}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 13918
    invoke-static/range {p0 .. p0}, Landroidx/media2/exoplayer/external/video/c;->a(Landroidx/media2/exoplayer/external/util/p;)Landroidx/media2/exoplayer/external/video/c;

    move-result-object v0

    .line 13919
    iget-object v5, v0, Landroidx/media2/exoplayer/external/video/c;->a:Ljava/util/List;

    .line 13920
    iget v0, v0, Landroidx/media2/exoplayer/external/video/c;->b:I

    iput v0, v13, Landroidx/media2/exoplayer/external/extractor/mp4/b$c;->c:I

    const-string v18, "video/hevc"

    :goto_f
    move-object/from16 v25, v5

    goto/16 :goto_19

    :cond_16
    const v7, 0x64766343

    if-eq v9, v7, :cond_27

    const v7, 0x64767643

    if-ne v9, v7, :cond_17

    goto/16 :goto_15

    :cond_17
    const v7, 0x76706343

    if-ne v9, v7, :cond_1a

    if-nez v18, :cond_18

    const/4 v0, 0x1

    goto :goto_10

    :cond_18
    const/4 v0, 0x0

    .line 13928
    :goto_10
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    if-ne v1, v4, :cond_19

    const-string v0, "video/x-vnd.on2.vp8"

    goto :goto_11

    :cond_19
    const-string v0, "video/x-vnd.on2.vp9"

    :goto_11
    move-object/from16 v18, v0

    goto/16 :goto_19

    :cond_1a
    const v7, 0x61763143

    if-ne v9, v7, :cond_1c

    if-nez v18, :cond_1b

    const/4 v0, 0x1

    goto :goto_12

    :cond_1b
    const/4 v0, 0x0

    .line 13931
    :goto_12
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    const-string v18, "video/av01"

    goto/16 :goto_19

    :cond_1c
    const v7, 0x64323633

    if-ne v9, v7, :cond_1e

    if-nez v18, :cond_1d

    const/4 v0, 0x1

    goto :goto_13

    :cond_1d
    const/4 v0, 0x0

    .line 13934
    :goto_13
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    const-string v18, "video/3gpp"

    goto/16 :goto_19

    :cond_1e
    const v7, 0x65736473

    if-ne v9, v7, :cond_20

    if-nez v18, :cond_1f

    const/4 v0, 0x1

    goto :goto_14

    :cond_1f
    const/4 v0, 0x0

    .line 13937
    :goto_14
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    .line 13939
    invoke-static {v10, v5}, Landroidx/media2/exoplayer/external/extractor/mp4/b;->a(Landroidx/media2/exoplayer/external/util/p;I)Landroid/util/Pair;

    move-result-object v0

    .line 13940
    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v18, v5

    check-cast v18, Ljava/lang/String;

    .line 13941
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [B

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v25

    goto/16 :goto_19

    :cond_20
    const v7, 0x70617370

    if-ne v9, v7, :cond_21

    add-int/lit8 v5, v5, 0x8

    .line 18031
    invoke-virtual {v10, v5}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 18032
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/p;->n()I

    move-result v0

    .line 18033
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/p;->n()I

    move-result v3

    int-to-float v0, v0

    int-to-float v3, v3

    div-float v27, v0, v3

    const/4 v3, 0x1

    goto/16 :goto_19

    :cond_21
    const v7, 0x73763364

    if-ne v9, v7, :cond_22

    .line 13946
    invoke-static {v10, v5, v6}, Landroidx/media2/exoplayer/external/extractor/mp4/b;->c(Landroidx/media2/exoplayer/external/util/p;II)[B

    move-result-object v28

    goto/16 :goto_19

    :cond_22
    const v5, 0x73743364

    if-ne v9, v5, :cond_2c

    .line 13948
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v5

    .line 13949
    invoke-virtual {v10, v0}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    if-nez v5, :cond_2c

    .line 13951
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v5

    if-eqz v5, :cond_26

    const/4 v7, 0x1

    if-eq v5, v7, :cond_25

    const/4 v7, 0x2

    if-eq v5, v7, :cond_24

    if-eq v5, v0, :cond_23

    goto/16 :goto_19

    :cond_23
    const/16 v29, 0x3

    goto :goto_19

    :cond_24
    const/16 v29, 0x2

    goto :goto_19

    :cond_25
    const/16 v29, 0x1

    goto :goto_19

    :cond_26
    const/16 v29, 0x0

    goto :goto_19

    :cond_27
    :goto_15
    const/4 v7, 0x2

    .line 17042
    invoke-virtual {v10, v7}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    .line 17043
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v5

    shr-int/lit8 v7, v5, 0x1

    const/4 v9, 0x1

    and-int/2addr v5, v9

    const/4 v4, 0x5

    shl-int/2addr v5, v4

    .line 17045
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v21

    shr-int/lit8 v0, v21, 0x3

    and-int/lit8 v0, v0, 0x1f

    or-int/2addr v0, v5

    const/4 v5, 0x4

    if-eq v7, v5, :cond_2b

    if-ne v7, v4, :cond_28

    goto :goto_16

    :cond_28
    const/16 v4, 0x8

    if-ne v7, v4, :cond_29

    const-string v5, "hev1"

    goto :goto_17

    :cond_29
    const/16 v5, 0x9

    if-ne v7, v5, :cond_2a

    const-string v5, "avc3"

    goto :goto_17

    :cond_2a
    const/4 v5, 0x0

    goto :goto_18

    :cond_2b
    :goto_16
    const/16 v4, 0x8

    const-string v5, "dvhe"

    .line 17056
    :goto_17
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v20

    add-int/lit8 v4, v20, 0x1a

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".0"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 17057
    new-instance v5, Landroidx/media2/exoplayer/external/video/b;

    invoke-direct {v5, v7, v0, v4}, Landroidx/media2/exoplayer/external/video/b;-><init>(IILjava/lang/String;)V

    :goto_18
    if-eqz v5, :cond_2c

    .line 13924
    iget-object v0, v5, Landroidx/media2/exoplayer/external/video/b;->c:Ljava/lang/String;

    const-string v18, "video/dolby-vision"

    move-object/from16 v19, v0

    :cond_2c
    :goto_19
    add-int/2addr v8, v6

    const/16 v0, 0x8

    const v4, 0x76703038

    const/4 v7, 0x0

    goto/16 :goto_b

    :cond_2d
    if-eqz v18, :cond_2e

    .line 13980
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v20, -0x1

    const/16 v21, -0x1

    const/high16 v24, -0x40800000    # -1.0f

    const/16 v30, 0x0

    move/from16 v26, p2

    .line 13979
    invoke-static/range {v17 .. v31}, Landroidx/media2/exoplayer/external/Format;->createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILandroidx/media2/exoplayer/external/video/ColorInfo;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    iput-object v0, v13, Landroidx/media2/exoplayer/external/extractor/mp4/b$c;->b:Landroidx/media2/exoplayer/external/Format;

    :cond_2e
    :goto_1a
    add-int v9, v12, v14

    .line 809
    invoke-virtual {v10, v9}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    add-int/lit8 v15, v15, 0x1

    move/from16 v12, v16

    goto/16 :goto_0

    :cond_2f
    return-object v13
.end method

.method public static a(Landroidx/media2/exoplayer/external/extractor/mp4/a$a;Landroidx/media2/exoplayer/external/extractor/mp4/a$b;JLandroidx/media2/exoplayer/external/drm/DrmInitData;ZZ)Landroidx/media2/exoplayer/external/extractor/mp4/l;
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    const v1, 0x6d646961

    .line 106
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/extractor/mp4/a$a;->d(I)Landroidx/media2/exoplayer/external/extractor/mp4/a$a;

    move-result-object v1

    const v2, 0x68646c72    # 4.3148E24f

    .line 107
    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/extractor/mp4/a$a;->c(I)Landroidx/media2/exoplayer/external/extractor/mp4/a$b;

    move-result-object v2

    iget-object v2, v2, Landroidx/media2/exoplayer/external/extractor/mp4/a$b;->b:Landroidx/media2/exoplayer/external/util/p;

    invoke-static {v2}, Landroidx/media2/exoplayer/external/extractor/mp4/b;->a(Landroidx/media2/exoplayer/external/util/p;)I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, -0x1

    const/4 v6, 0x4

    const v7, 0x736f756e

    if-ne v2, v7, :cond_0

    const/4 v10, 0x1

    goto :goto_1

    :cond_0
    const v7, 0x76696465

    if-ne v2, v7, :cond_1

    const/4 v2, 0x2

    const/4 v10, 0x2

    goto :goto_1

    :cond_1
    const v7, 0x74657874

    if-eq v2, v7, :cond_4

    const v7, 0x7362746c

    if-eq v2, v7, :cond_4

    const v7, 0x73756274

    if-eq v2, v7, :cond_4

    const v7, 0x636c6370

    if-ne v2, v7, :cond_2

    goto :goto_0

    :cond_2
    const v7, 0x6d657461

    if-ne v2, v7, :cond_3

    const/4 v10, 0x4

    goto :goto_1

    :cond_3
    const/4 v10, -0x1

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v10, 0x3

    :goto_1
    const/4 v2, 0x0

    if-ne v10, v4, :cond_5

    return-object v2

    :cond_5
    const v7, 0x746b6864

    .line 112
    invoke-virtual {v0, v7}, Landroidx/media2/exoplayer/external/extractor/mp4/a$a;->c(I)Landroidx/media2/exoplayer/external/extractor/mp4/a$b;

    move-result-object v7

    iget-object v7, v7, Landroidx/media2/exoplayer/external/extractor/mp4/a$b;->b:Landroidx/media2/exoplayer/external/util/p;

    const/16 v8, 0x8

    .line 2640
    invoke-virtual {v7, v8}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 2641
    invoke-virtual {v7}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v9

    .line 2642
    invoke-static {v9}, Landroidx/media2/exoplayer/external/extractor/mp4/a;->a(I)I

    move-result v9

    const/16 v11, 0x10

    if-nez v9, :cond_6

    const/16 v12, 0x8

    goto :goto_2

    :cond_6
    const/16 v12, 0x10

    .line 2644
    :goto_2
    invoke-virtual {v7, v12}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    .line 2645
    invoke-virtual {v7}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v12

    .line 2647
    invoke-virtual {v7, v6}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    .line 3142
    iget v13, v7, Landroidx/media2/exoplayer/external/util/p;->b:I

    if-nez v9, :cond_7

    const/4 v14, 0x4

    goto :goto_3

    :cond_7
    const/16 v14, 0x8

    :goto_3
    const/4 v5, 0x0

    :goto_4
    if-ge v5, v14, :cond_9

    .line 2652
    iget-object v15, v7, Landroidx/media2/exoplayer/external/util/p;->a:[B

    add-int v18, v13, v5

    aget-byte v15, v15, v18

    if-eq v15, v4, :cond_8

    const/4 v5, 0x0

    goto :goto_5

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_9
    const/4 v5, 0x1

    :goto_5
    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v5, :cond_a

    .line 2659
    invoke-virtual {v7, v14}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    :goto_6
    move-wide v4, v15

    goto :goto_8

    :cond_a
    if-nez v9, :cond_b

    .line 2662
    invoke-virtual {v7}, Landroidx/media2/exoplayer/external/util/p;->g()J

    move-result-wide v4

    goto :goto_7

    :cond_b
    invoke-virtual {v7}, Landroidx/media2/exoplayer/external/util/p;->p()J

    move-result-wide v4

    :goto_7
    const-wide/16 v13, 0x0

    cmp-long v9, v4, v13

    if-nez v9, :cond_c

    goto :goto_6

    .line 2670
    :cond_c
    :goto_8
    invoke-virtual {v7, v11}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    .line 2671
    invoke-virtual {v7}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v9

    .line 2672
    invoke-virtual {v7}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v13

    .line 2673
    invoke-virtual {v7, v6}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    .line 2674
    invoke-virtual {v7}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v14

    .line 2675
    invoke-virtual {v7}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v7

    const/high16 v6, 0x10000

    const/high16 v11, -0x10000

    if-nez v9, :cond_d

    if-ne v13, v6, :cond_d

    if-ne v14, v11, :cond_d

    if-nez v7, :cond_d

    const/16 v6, 0x5a

    goto :goto_9

    :cond_d
    if-nez v9, :cond_e

    if-ne v13, v11, :cond_e

    if-ne v14, v6, :cond_e

    if-nez v7, :cond_e

    const/16 v6, 0x10e

    goto :goto_9

    :cond_e
    if-ne v9, v11, :cond_f

    if-nez v13, :cond_f

    if-nez v14, :cond_f

    if-ne v7, v11, :cond_f

    const/16 v6, 0xb4

    goto :goto_9

    :cond_f
    const/4 v6, 0x0

    .line 2690
    :goto_9
    new-instance v7, Landroidx/media2/exoplayer/external/extractor/mp4/b$f;

    invoke-direct {v7, v12, v4, v5, v6}, Landroidx/media2/exoplayer/external/extractor/mp4/b$f;-><init>(IJI)V

    cmp-long v4, p2, v15

    if-nez v4, :cond_10

    .line 3452
    iget-wide v4, v7, Landroidx/media2/exoplayer/external/extractor/mp4/b$f;->b:J

    move-wide/from16 v20, v4

    move-object/from16 v4, p1

    goto :goto_a

    :cond_10
    move-object/from16 v4, p1

    move-wide/from16 v20, p2

    .line 116
    :goto_a
    iget-object v4, v4, Landroidx/media2/exoplayer/external/extractor/mp4/a$b;->b:Landroidx/media2/exoplayer/external/util/p;

    .line 3627
    invoke-virtual {v4, v8}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 3628
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v5

    .line 3629
    invoke-static {v5}, Landroidx/media2/exoplayer/external/extractor/mp4/a;->a(I)I

    move-result v5

    if-nez v5, :cond_11

    const/16 v5, 0x8

    goto :goto_b

    :cond_11
    const/16 v5, 0x10

    .line 3630
    :goto_b
    invoke-virtual {v4, v5}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    .line 3631
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/p;->g()J

    move-result-wide v13

    cmp-long v4, v20, v15

    if-nez v4, :cond_12

    goto :goto_c

    :cond_12
    const-wide/32 v22, 0xf4240

    move-wide/from16 v24, v13

    .line 121
    invoke-static/range {v20 .. v25}, Landroidx/media2/exoplayer/external/util/ac;->b(JJJ)J

    move-result-wide v4

    move-wide v15, v4

    :goto_c
    const v4, 0x6d696e66

    .line 123
    invoke-virtual {v1, v4}, Landroidx/media2/exoplayer/external/extractor/mp4/a$a;->d(I)Landroidx/media2/exoplayer/external/extractor/mp4/a$a;

    move-result-object v4

    const v5, 0x7374626c

    .line 124
    invoke-virtual {v4, v5}, Landroidx/media2/exoplayer/external/extractor/mp4/a$a;->d(I)Landroidx/media2/exoplayer/external/extractor/mp4/a$a;

    move-result-object v4

    const v5, 0x6d646864

    .line 126
    invoke-virtual {v1, v5}, Landroidx/media2/exoplayer/external/extractor/mp4/a$a;->c(I)Landroidx/media2/exoplayer/external/extractor/mp4/a$b;

    move-result-object v1

    iget-object v1, v1, Landroidx/media2/exoplayer/external/extractor/mp4/a$b;->b:Landroidx/media2/exoplayer/external/util/p;

    .line 3727
    invoke-virtual {v1, v8}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 3728
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v5

    .line 3729
    invoke-static {v5}, Landroidx/media2/exoplayer/external/extractor/mp4/a;->a(I)I

    move-result v5

    if-nez v5, :cond_13

    const/16 v11, 0x8

    goto :goto_d

    :cond_13
    const/16 v11, 0x10

    .line 3730
    :goto_d
    invoke-virtual {v1, v11}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    .line 3731
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/p;->g()J

    move-result-wide v11

    if-nez v5, :cond_14

    const/4 v6, 0x4

    goto :goto_e

    :cond_14
    const/16 v6, 0x8

    .line 3732
    :goto_e
    invoke-virtual {v1, v6}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    .line 3733
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/p;->d()I

    move-result v1

    shr-int/lit8 v5, v1, 0xa

    and-int/lit8 v5, v5, 0x1f

    add-int/lit8 v5, v5, 0x60

    int-to-char v5, v5

    shr-int/lit8 v6, v1, 0x5

    and-int/lit8 v6, v6, 0x1f

    add-int/lit8 v6, v6, 0x60

    int-to-char v6, v6

    and-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x60

    int-to-char v1, v1

    .line 3734
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3739
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const v3, 0x73747364

    .line 127
    invoke-virtual {v4, v3}, Landroidx/media2/exoplayer/external/extractor/mp4/a$a;->c(I)Landroidx/media2/exoplayer/external/extractor/mp4/a$b;

    move-result-object v3

    iget-object v3, v3, Landroidx/media2/exoplayer/external/extractor/mp4/a$b;->b:Landroidx/media2/exoplayer/external/util/p;

    .line 4452
    iget v4, v7, Landroidx/media2/exoplayer/external/extractor/mp4/b$f;->a:I

    .line 5452
    iget v5, v7, Landroidx/media2/exoplayer/external/extractor/mp4/b$f;->c:I

    .line 128
    iget-object v6, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v20, v6

    check-cast v20, Ljava/lang/String;

    move-object/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v5

    move-object/from16 v21, p4

    move/from16 v22, p6

    .line 127
    invoke-static/range {v17 .. v22}, Landroidx/media2/exoplayer/external/extractor/mp4/b;->a(Landroidx/media2/exoplayer/external/util/p;IILjava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData;Z)Landroidx/media2/exoplayer/external/extractor/mp4/b$c;

    move-result-object v3

    if-nez p5, :cond_15

    const v4, 0x65647473

    .line 132
    invoke-virtual {v0, v4}, Landroidx/media2/exoplayer/external/extractor/mp4/a$a;->d(I)Landroidx/media2/exoplayer/external/extractor/mp4/a$a;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/exoplayer/external/extractor/mp4/b;->b(Landroidx/media2/exoplayer/external/extractor/mp4/a$a;)Landroid/util/Pair;

    move-result-object v0

    .line 133
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, [J

    .line 134
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [J

    move-object/from16 v22, v0

    move-object/from16 v21, v4

    goto :goto_f

    :cond_15
    move-object/from16 v21, v2

    move-object/from16 v22, v21

    .line 136
    :goto_f
    iget-object v0, v3, Landroidx/media2/exoplayer/external/extractor/mp4/b$c;->b:Landroidx/media2/exoplayer/external/Format;

    if-nez v0, :cond_16

    return-object v2

    .line 137
    :cond_16
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/mp4/l;

    .line 6452
    iget v9, v7, Landroidx/media2/exoplayer/external/extractor/mp4/b$f;->a:I

    .line 137
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    iget-object v1, v3, Landroidx/media2/exoplayer/external/extractor/mp4/b$c;->b:Landroidx/media2/exoplayer/external/Format;

    iget v2, v3, Landroidx/media2/exoplayer/external/extractor/mp4/b$c;->d:I

    iget-object v4, v3, Landroidx/media2/exoplayer/external/extractor/mp4/b$c;->a:[Landroidx/media2/exoplayer/external/extractor/mp4/m;

    iget v3, v3, Landroidx/media2/exoplayer/external/extractor/mp4/b$c;->c:I

    move-object v8, v0

    move-object/from16 v17, v1

    move/from16 v18, v2

    move-object/from16 v19, v4

    move/from16 v20, v3

    invoke-direct/range {v8 .. v22}, Landroidx/media2/exoplayer/external/extractor/mp4/l;-><init>(IIJJJLandroidx/media2/exoplayer/external/Format;I[Landroidx/media2/exoplayer/external/extractor/mp4/m;I[J[J)V

    return-object v0
.end method

.method private static a(Landroidx/media2/exoplayer/external/util/p;IILjava/lang/String;)Landroidx/media2/exoplayer/external/extractor/mp4/m;
    .locals 11

    add-int/lit8 v0, p1, 0x8

    :goto_0
    sub-int v1, v0, p1

    const/4 v2, 0x0

    if-ge v1, p2, :cond_4

    .line 1323
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 1324
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v1

    .line 1325
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v3

    const v4, 0x74656e63

    if-ne v3, v4, :cond_3

    .line 1327
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result p1

    .line 1328
    invoke-static {p1}, Landroidx/media2/exoplayer/external/extractor/mp4/a;->a(I)I

    move-result p1

    const/4 p2, 0x1

    .line 1329
    invoke-virtual {p0, p2}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1333
    invoke-virtual {p0, p2}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    goto :goto_1

    .line 1335
    :cond_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result p1

    and-int/lit16 v1, p1, 0xf0

    shr-int/lit8 v1, v1, 0x4

    and-int/lit8 p1, p1, 0xf

    move v9, p1

    move v8, v1

    .line 1339
    :goto_1
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result p1

    if-ne p1, p2, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    .line 1340
    :goto_2
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v6

    const/16 p1, 0x10

    new-array v7, p1, [B

    .line 1342
    invoke-virtual {p0, v7, v0, p1}, Landroidx/media2/exoplayer/external/util/p;->a([BII)V

    if-eqz v4, :cond_2

    if-nez v6, :cond_2

    .line 1345
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result p1

    .line 1346
    new-array v2, p1, [B

    .line 1347
    invoke-virtual {p0, v2, v0, p1}, Landroidx/media2/exoplayer/external/util/p;->a([BII)V

    :cond_2
    move-object v10, v2

    .line 1349
    new-instance p0, Landroidx/media2/exoplayer/external/extractor/mp4/m;

    move-object v3, p0

    move-object v5, p3

    invoke-direct/range {v3 .. v10}, Landroidx/media2/exoplayer/external/extractor/mp4/m;-><init>(ZLjava/lang/String;I[BII[B)V

    return-object p0

    :cond_3
    add-int/2addr v0, v1

    goto :goto_0

    :cond_4
    return-object v2
.end method

.method public static a(Landroidx/media2/exoplayer/external/extractor/mp4/l;Landroidx/media2/exoplayer/external/extractor/mp4/a$a;Landroidx/media2/exoplayer/external/extractor/k;)Landroidx/media2/exoplayer/external/extractor/mp4/o;
    .locals 35
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const v3, 0x7374737a

    .line 155
    invoke-virtual {v0, v3}, Landroidx/media2/exoplayer/external/extractor/mp4/a$a;->c(I)Landroidx/media2/exoplayer/external/extractor/mp4/a$b;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 157
    new-instance v4, Landroidx/media2/exoplayer/external/extractor/mp4/b$d;

    invoke-direct {v4, v3}, Landroidx/media2/exoplayer/external/extractor/mp4/b$d;-><init>(Landroidx/media2/exoplayer/external/extractor/mp4/a$b;)V

    goto :goto_0

    :cond_0
    const v3, 0x73747a32

    .line 159
    invoke-virtual {v0, v3}, Landroidx/media2/exoplayer/external/extractor/mp4/a$a;->c(I)Landroidx/media2/exoplayer/external/extractor/mp4/a$b;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 163
    new-instance v4, Landroidx/media2/exoplayer/external/extractor/mp4/b$e;

    invoke-direct {v4, v3}, Landroidx/media2/exoplayer/external/extractor/mp4/b$e;-><init>(Landroidx/media2/exoplayer/external/extractor/mp4/a$b;)V

    .line 166
    :goto_0
    invoke-interface {v4}, Landroidx/media2/exoplayer/external/extractor/mp4/b$b;->a()I

    move-result v3

    const/4 v5, 0x0

    if-nez v3, :cond_1

    .line 168
    new-instance v9, Landroidx/media2/exoplayer/external/extractor/mp4/o;

    new-array v2, v5, [J

    new-array v3, v5, [I

    const/4 v4, 0x0

    new-array v6, v5, [J

    new-array v7, v5, [I

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v5, v6

    move-object v6, v7

    move-wide v7, v10

    invoke-direct/range {v0 .. v8}, Landroidx/media2/exoplayer/external/extractor/mp4/o;-><init>(Landroidx/media2/exoplayer/external/extractor/mp4/l;[J[II[J[IJ)V

    return-object v9

    :cond_1
    const v6, 0x7374636f

    .line 180
    invoke-virtual {v0, v6}, Landroidx/media2/exoplayer/external/extractor/mp4/a$a;->c(I)Landroidx/media2/exoplayer/external/extractor/mp4/a$b;

    move-result-object v6

    const/4 v7, 0x1

    if-nez v6, :cond_2

    const v6, 0x636f3634

    .line 183
    invoke-virtual {v0, v6}, Landroidx/media2/exoplayer/external/extractor/mp4/a$a;->c(I)Landroidx/media2/exoplayer/external/extractor/mp4/a$b;

    move-result-object v6

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    .line 185
    :goto_1
    iget-object v6, v6, Landroidx/media2/exoplayer/external/extractor/mp4/a$b;->b:Landroidx/media2/exoplayer/external/util/p;

    const v9, 0x73747363

    .line 187
    invoke-virtual {v0, v9}, Landroidx/media2/exoplayer/external/extractor/mp4/a$a;->c(I)Landroidx/media2/exoplayer/external/extractor/mp4/a$b;

    move-result-object v9

    iget-object v9, v9, Landroidx/media2/exoplayer/external/extractor/mp4/a$b;->b:Landroidx/media2/exoplayer/external/util/p;

    const v10, 0x73747473

    .line 189
    invoke-virtual {v0, v10}, Landroidx/media2/exoplayer/external/extractor/mp4/a$a;->c(I)Landroidx/media2/exoplayer/external/extractor/mp4/a$b;

    move-result-object v10

    iget-object v10, v10, Landroidx/media2/exoplayer/external/extractor/mp4/a$b;->b:Landroidx/media2/exoplayer/external/util/p;

    const v11, 0x73747373

    .line 191
    invoke-virtual {v0, v11}, Landroidx/media2/exoplayer/external/extractor/mp4/a$a;->c(I)Landroidx/media2/exoplayer/external/extractor/mp4/a$b;

    move-result-object v11

    const/4 v12, 0x0

    if-eqz v11, :cond_3

    .line 192
    iget-object v11, v11, Landroidx/media2/exoplayer/external/extractor/mp4/a$b;->b:Landroidx/media2/exoplayer/external/util/p;

    goto :goto_2

    :cond_3
    move-object v11, v12

    :goto_2
    const v13, 0x63747473

    .line 194
    invoke-virtual {v0, v13}, Landroidx/media2/exoplayer/external/extractor/mp4/a$a;->c(I)Landroidx/media2/exoplayer/external/extractor/mp4/a$b;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 195
    iget-object v0, v0, Landroidx/media2/exoplayer/external/extractor/mp4/a$b;->b:Landroidx/media2/exoplayer/external/util/p;

    goto :goto_3

    :cond_4
    move-object v0, v12

    .line 198
    :goto_3
    new-instance v13, Landroidx/media2/exoplayer/external/extractor/mp4/b$a;

    invoke-direct {v13, v9, v6, v8}, Landroidx/media2/exoplayer/external/extractor/mp4/b$a;-><init>(Landroidx/media2/exoplayer/external/util/p;Landroidx/media2/exoplayer/external/util/p;Z)V

    const/16 v6, 0xc

    .line 201
    invoke-virtual {v10, v6}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 202
    invoke-virtual {v10}, Landroidx/media2/exoplayer/external/util/p;->n()I

    move-result v8

    sub-int/2addr v8, v7

    .line 203
    invoke-virtual {v10}, Landroidx/media2/exoplayer/external/util/p;->n()I

    move-result v9

    .line 204
    invoke-virtual {v10}, Landroidx/media2/exoplayer/external/util/p;->n()I

    move-result v14

    if-eqz v0, :cond_5

    .line 211
    invoke-virtual {v0, v6}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 212
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/p;->n()I

    move-result v15

    goto :goto_4

    :cond_5
    const/4 v15, 0x0

    :goto_4
    const/16 v16, -0x1

    if-eqz v11, :cond_6

    .line 218
    invoke-virtual {v11, v6}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 219
    invoke-virtual {v11}, Landroidx/media2/exoplayer/external/util/p;->n()I

    move-result v6

    if-lez v6, :cond_7

    .line 221
    invoke-virtual {v11}, Landroidx/media2/exoplayer/external/util/p;->n()I

    move-result v12

    add-int/lit8 v16, v12, -0x1

    move-object v12, v11

    goto :goto_5

    :cond_6
    move-object v12, v11

    const/4 v6, 0x0

    .line 230
    :cond_7
    :goto_5
    invoke-interface {v4}, Landroidx/media2/exoplayer/external/extractor/mp4/b$b;->c()Z

    move-result v11

    if-eqz v11, :cond_8

    iget-object v11, v1, Landroidx/media2/exoplayer/external/extractor/mp4/l;->f:Landroidx/media2/exoplayer/external/Format;

    iget-object v11, v11, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    const-string v5, "audio/raw"

    .line 231
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    if-nez v8, :cond_8

    if-nez v15, :cond_8

    if-nez v6, :cond_8

    const/4 v5, 0x1

    goto :goto_6

    :cond_8
    const/4 v5, 0x0

    :goto_6
    const-wide/16 v18, 0x0

    if-nez v5, :cond_18

    .line 245
    new-array v5, v3, [J

    .line 246
    new-array v11, v3, [I

    .line 247
    new-array v7, v3, [J

    move/from16 p1, v6

    .line 248
    new-array v6, v3, [I

    move-object/from16 v23, v10

    move/from16 v2, v16

    move-wide/from16 v25, v18

    move-wide/from16 v27, v25

    const/4 v1, 0x0

    const/4 v10, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x0

    move/from16 v16, v15

    move v15, v14

    move v14, v9

    move/from16 v34, v8

    move/from16 v8, p1

    :goto_7
    move/from16 p1, v34

    const-string v9, "AtomParsers"

    if-ge v1, v3, :cond_11

    move-wide/from16 v28, v27

    move/from16 v27, v22

    const/16 v22, 0x1

    :goto_8
    if-nez v27, :cond_9

    .line 255
    invoke-virtual {v13}, Landroidx/media2/exoplayer/external/extractor/mp4/b$a;->a()Z

    move-result v22

    if-eqz v22, :cond_9

    move/from16 v30, v14

    move/from16 v31, v15

    .line 256
    iget-wide v14, v13, Landroidx/media2/exoplayer/external/extractor/mp4/b$a;->d:J

    move/from16 v32, v3

    .line 257
    iget v3, v13, Landroidx/media2/exoplayer/external/extractor/mp4/b$a;->c:I

    move/from16 v27, v3

    move-wide/from16 v28, v14

    move/from16 v14, v30

    move/from16 v15, v31

    move/from16 v3, v32

    goto :goto_8

    :cond_9
    move/from16 v32, v3

    move/from16 v30, v14

    move/from16 v31, v15

    if-nez v22, :cond_a

    const-string v2, "Unexpected end of chunk data"

    .line 260
    invoke-static {v9, v2}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-static {v5, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v5

    .line 263
    invoke-static {v11, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v11

    .line 264
    invoke-static {v7, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v7

    .line 265
    invoke-static {v6, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v6

    move v3, v1

    move/from16 v2, v21

    move/from16 v1, v27

    goto/16 :goto_c

    :cond_a
    if-eqz v0, :cond_c

    :goto_9
    if-nez v24, :cond_b

    if-lez v16, :cond_b

    .line 272
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/p;->n()I

    move-result v24

    .line 278
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v21

    add-int/lit8 v16, v16, -0x1

    goto :goto_9

    :cond_b
    add-int/lit8 v24, v24, -0x1

    :cond_c
    move/from16 v3, v21

    .line 284
    aput-wide v28, v5, v1

    .line 285
    invoke-interface {v4}, Landroidx/media2/exoplayer/external/extractor/mp4/b$b;->b()I

    move-result v9

    aput v9, v11, v1

    .line 286
    aget v9, v11, v1

    if-le v9, v10, :cond_d

    .line 287
    aget v9, v11, v1

    move v10, v9

    :cond_d
    int-to-long v14, v3

    add-long v14, v25, v14

    .line 289
    aput-wide v14, v7, v1

    if-nez v12, :cond_e

    const/4 v9, 0x1

    goto :goto_a

    :cond_e
    const/4 v9, 0x0

    .line 292
    :goto_a
    aput v9, v6, v1

    if-ne v1, v2, :cond_f

    const/4 v9, 0x1

    .line 294
    aput v9, v6, v1

    add-int/lit8 v8, v8, -0x1

    if-lez v8, :cond_f

    .line 297
    invoke-virtual {v12}, Landroidx/media2/exoplayer/external/util/p;->n()I

    move-result v2

    sub-int/2addr v2, v9

    :cond_f
    move v15, v2

    move v9, v3

    move/from16 v14, v31

    int-to-long v2, v14

    add-long v25, v25, v2

    add-int/lit8 v2, v30, -0x1

    if-nez v2, :cond_10

    if-lez p1, :cond_10

    .line 305
    invoke-virtual/range {v23 .. v23}, Landroidx/media2/exoplayer/external/util/p;->n()I

    move-result v2

    .line 312
    invoke-virtual/range {v23 .. v23}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v3

    add-int/lit8 v14, p1, -0x1

    goto :goto_b

    :cond_10
    move v3, v14

    move/from16 v14, p1

    :goto_b
    move/from16 p1, v2

    .line 316
    aget v2, v11, v1

    move/from16 v21, v3

    int-to-long v2, v2

    add-long v2, v28, v2

    add-int/lit8 v22, v27, -0x1

    add-int/lit8 v1, v1, 0x1

    move-wide/from16 v27, v2

    move v2, v15

    move/from16 v15, v21

    move/from16 v3, v32

    move/from16 v21, v9

    move/from16 v34, v14

    move/from16 v14, p1

    goto/16 :goto_7

    :cond_11
    move/from16 v32, v3

    move/from16 v30, v14

    move/from16 v2, v21

    move/from16 v1, v22

    :goto_c
    int-to-long v12, v2

    add-long v25, v25, v12

    :goto_d
    if-lez v16, :cond_13

    .line 325
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/p;->n()I

    move-result v2

    if-eqz v2, :cond_12

    const/4 v0, 0x0

    goto :goto_e

    .line 329
    :cond_12
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/p;->i()I

    add-int/lit8 v16, v16, -0x1

    goto :goto_d

    :cond_13
    const/4 v0, 0x1

    :goto_e
    if-nez v8, :cond_15

    if-nez v30, :cond_15

    if-nez v1, :cond_15

    if-nez p1, :cond_15

    move/from16 v2, v24

    if-nez v2, :cond_16

    if-nez v0, :cond_14

    goto :goto_f

    :cond_14
    move-object/from16 v4, p0

    goto :goto_11

    :cond_15
    move/from16 v2, v24

    :cond_16
    :goto_f
    move-object/from16 v4, p0

    .line 338
    iget v12, v4, Landroidx/media2/exoplayer/external/extractor/mp4/l;->a:I

    if-nez v0, :cond_17

    const-string v0, ", ctts invalid"

    goto :goto_10

    :cond_17
    const-string v0, ""

    .line 352
    :goto_10
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit16 v13, v13, 0x106

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v13, "Inconsistent stbl box for track "

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ": remainingSynchronizationSamples "

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", remainingSamplesAtTimestampDelta "

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, v30

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", remainingSamplesInChunk "

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", remainingTimestampDeltaChanges "

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p1

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", remainingSamplesAtTimestampOffset "

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 338
    invoke-static {v9, v0}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_11
    move v0, v3

    move-object v2, v5

    move-object v5, v7

    move-object v3, v11

    goto :goto_13

    :cond_18
    move-object v4, v1

    move/from16 v32, v3

    .line 355
    iget v0, v13, Landroidx/media2/exoplayer/external/extractor/mp4/b$a;->a:I

    new-array v0, v0, [J

    .line 356
    iget v1, v13, Landroidx/media2/exoplayer/external/extractor/mp4/b$a;->a:I

    new-array v1, v1, [I

    .line 357
    :goto_12
    invoke-virtual {v13}, Landroidx/media2/exoplayer/external/extractor/mp4/b$a;->a()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 358
    iget v2, v13, Landroidx/media2/exoplayer/external/extractor/mp4/b$a;->b:I

    iget-wide v5, v13, Landroidx/media2/exoplayer/external/extractor/mp4/b$a;->d:J

    aput-wide v5, v0, v2

    .line 359
    iget v2, v13, Landroidx/media2/exoplayer/external/extractor/mp4/b$a;->b:I

    iget v3, v13, Landroidx/media2/exoplayer/external/extractor/mp4/b$a;->c:I

    aput v3, v1, v2

    goto :goto_12

    .line 361
    :cond_19
    iget-object v2, v4, Landroidx/media2/exoplayer/external/extractor/mp4/l;->f:Landroidx/media2/exoplayer/external/Format;

    iget v2, v2, Landroidx/media2/exoplayer/external/Format;->pcmEncoding:I

    iget-object v3, v4, Landroidx/media2/exoplayer/external/extractor/mp4/l;->f:Landroidx/media2/exoplayer/external/Format;

    iget v3, v3, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    .line 362
    invoke-static {v2, v3}, Landroidx/media2/exoplayer/external/util/ac;->b(II)I

    move-result v2

    int-to-long v5, v14

    .line 363
    invoke-static {v2, v0, v1, v5, v6}, Landroidx/media2/exoplayer/external/extractor/mp4/d;->a(I[J[IJ)Landroidx/media2/exoplayer/external/extractor/mp4/d$a;

    move-result-object v0

    .line 365
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/mp4/d$a;->a:[J

    .line 366
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/d$a;->b:[I

    .line 367
    iget v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/d$a;->c:I

    .line 368
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/mp4/d$a;->d:[J

    .line 369
    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/mp4/d$a;->e:[I

    .line 370
    iget-wide v7, v0, Landroidx/media2/exoplayer/external/extractor/mp4/d$a;->f:J

    move v10, v3

    move-wide/from16 v25, v7

    move/from16 v0, v32

    move-object v3, v2

    move-object v2, v1

    :goto_13
    const-wide/32 v13, 0xf4240

    .line 372
    iget-wide v7, v4, Landroidx/media2/exoplayer/external/extractor/mp4/l;->c:J

    move-wide/from16 v11, v25

    move-wide v15, v7

    invoke-static/range {v11 .. v16}, Landroidx/media2/exoplayer/external/util/ac;->b(JJJ)J

    move-result-wide v7

    .line 374
    iget-object v1, v4, Landroidx/media2/exoplayer/external/extractor/mp4/l;->h:[J

    if-eqz v1, :cond_2f

    invoke-virtual/range {p2 .. p2}, Landroidx/media2/exoplayer/external/extractor/k;->a()Z

    move-result v1

    if-eqz v1, :cond_1a

    goto/16 :goto_22

    .line 389
    :cond_1a
    iget-object v1, v4, Landroidx/media2/exoplayer/external/extractor/mp4/l;->h:[J

    array-length v1, v1

    const/4 v7, 0x1

    if-ne v1, v7, :cond_1d

    iget v1, v4, Landroidx/media2/exoplayer/external/extractor/mp4/l;->b:I

    if-ne v1, v7, :cond_1d

    array-length v1, v5

    const/4 v7, 0x2

    if-lt v1, v7, :cond_1d

    .line 392
    iget-object v1, v4, Landroidx/media2/exoplayer/external/extractor/mp4/l;->i:[J

    const/4 v7, 0x0

    aget-wide v8, v1, v7

    .line 393
    iget-object v1, v4, Landroidx/media2/exoplayer/external/extractor/mp4/l;->h:[J

    aget-wide v11, v1, v7

    iget-wide v13, v4, Landroidx/media2/exoplayer/external/extractor/mp4/l;->c:J

    move-wide/from16 v21, v8

    iget-wide v7, v4, Landroidx/media2/exoplayer/external/extractor/mp4/l;->d:J

    move-wide v15, v7

    invoke-static/range {v11 .. v16}, Landroidx/media2/exoplayer/external/util/ac;->b(JJJ)J

    move-result-wide v7

    add-long v8, v21, v7

    .line 7390
    array-length v1, v5

    const/4 v7, 0x1

    sub-int/2addr v1, v7

    const/4 v7, 0x4

    const/4 v11, 0x0

    .line 7391
    invoke-static {v7, v11, v1}, Landroidx/media2/exoplayer/external/util/ac;->a(III)I

    move-result v12

    .line 7392
    array-length v13, v5

    sub-int/2addr v13, v7

    .line 7393
    invoke-static {v13, v11, v1}, Landroidx/media2/exoplayer/external/util/ac;->a(III)I

    move-result v1

    .line 7394
    aget-wide v13, v5, v11

    cmp-long v7, v13, v21

    if-gtz v7, :cond_1b

    aget-wide v11, v5, v12

    cmp-long v7, v21, v11

    if-gez v7, :cond_1b

    aget-wide v11, v5, v1

    cmp-long v1, v11, v8

    if-gez v1, :cond_1b

    cmp-long v1, v8, v25

    if-gtz v1, :cond_1b

    const/4 v1, 0x1

    goto :goto_14

    :cond_1b
    const/4 v1, 0x0

    :goto_14
    if-eqz v1, :cond_1d

    sub-long v11, v25, v8

    const/4 v1, 0x0

    .line 397
    aget-wide v7, v5, v1

    sub-long v27, v21, v7

    iget-object v1, v4, Landroidx/media2/exoplayer/external/extractor/mp4/l;->f:Landroidx/media2/exoplayer/external/Format;

    iget v1, v1, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    int-to-long v7, v1

    iget-wide v13, v4, Landroidx/media2/exoplayer/external/extractor/mp4/l;->c:J

    move-wide/from16 v29, v7

    move-wide/from16 v31, v13

    invoke-static/range {v27 .. v32}, Landroidx/media2/exoplayer/external/util/ac;->b(JJJ)J

    move-result-wide v7

    .line 399
    iget-object v1, v4, Landroidx/media2/exoplayer/external/extractor/mp4/l;->f:Landroidx/media2/exoplayer/external/Format;

    iget v1, v1, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    int-to-long v13, v1

    move v9, v0

    iget-wide v0, v4, Landroidx/media2/exoplayer/external/extractor/mp4/l;->c:J

    move-wide v15, v0

    invoke-static/range {v11 .. v16}, Landroidx/media2/exoplayer/external/util/ac;->b(JJJ)J

    move-result-wide v0

    cmp-long v11, v7, v18

    if-nez v11, :cond_1c

    cmp-long v11, v0, v18

    if-eqz v11, :cond_1e

    :cond_1c
    const-wide/32 v11, 0x7fffffff

    cmp-long v13, v7, v11

    if-gtz v13, :cond_1e

    cmp-long v13, v0, v11

    if-gtz v13, :cond_1e

    long-to-int v8, v7

    move-object/from16 v7, p2

    .line 403
    iput v8, v7, Landroidx/media2/exoplayer/external/extractor/k;->a:I

    long-to-int v1, v0

    .line 404
    iput v1, v7, Landroidx/media2/exoplayer/external/extractor/k;->b:I

    .line 405
    iget-wide v0, v4, Landroidx/media2/exoplayer/external/extractor/mp4/l;->c:J

    invoke-static {v5, v0, v1}, Landroidx/media2/exoplayer/external/util/ac;->a([JJ)V

    .line 406
    iget-object v0, v4, Landroidx/media2/exoplayer/external/extractor/mp4/l;->h:[J

    const/4 v1, 0x0

    aget-wide v11, v0, v1

    const-wide/32 v13, 0xf4240

    iget-wide v0, v4, Landroidx/media2/exoplayer/external/extractor/mp4/l;->d:J

    move-wide v15, v0

    .line 407
    invoke-static/range {v11 .. v16}, Landroidx/media2/exoplayer/external/util/ac;->b(JJJ)J

    move-result-wide v7

    .line 409
    new-instance v9, Landroidx/media2/exoplayer/external/extractor/mp4/o;

    move-object v0, v9

    move-object/from16 v1, p0

    move v4, v10

    invoke-direct/range {v0 .. v8}, Landroidx/media2/exoplayer/external/extractor/mp4/o;-><init>(Landroidx/media2/exoplayer/external/extractor/mp4/l;[J[II[J[IJ)V

    return-object v9

    :cond_1d
    move v9, v0

    .line 415
    :cond_1e
    iget-object v0, v4, Landroidx/media2/exoplayer/external/extractor/mp4/l;->h:[J

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_20

    iget-object v0, v4, Landroidx/media2/exoplayer/external/extractor/mp4/l;->h:[J

    const/4 v1, 0x0

    aget-wide v7, v0, v1

    cmp-long v0, v7, v18

    if-nez v0, :cond_20

    .line 419
    iget-object v0, v4, Landroidx/media2/exoplayer/external/extractor/mp4/l;->i:[J

    aget-wide v7, v0, v1

    const/4 v0, 0x0

    .line 420
    :goto_15
    array-length v1, v5

    if-ge v0, v1, :cond_1f

    .line 421
    aget-wide v11, v5, v0

    sub-long v13, v11, v7

    const-wide/32 v15, 0xf4240

    iget-wide v11, v4, Landroidx/media2/exoplayer/external/extractor/mp4/l;->c:J

    move-wide/from16 v17, v11

    .line 422
    invoke-static/range {v13 .. v18}, Landroidx/media2/exoplayer/external/util/ac;->b(JJJ)J

    move-result-wide v11

    aput-wide v11, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_1f
    sub-long v11, v25, v7

    const-wide/32 v13, 0xf4240

    .line 425
    iget-wide v0, v4, Landroidx/media2/exoplayer/external/extractor/mp4/l;->c:J

    move-wide v15, v0

    .line 426
    invoke-static/range {v11 .. v16}, Landroidx/media2/exoplayer/external/util/ac;->b(JJJ)J

    move-result-wide v7

    .line 427
    new-instance v9, Landroidx/media2/exoplayer/external/extractor/mp4/o;

    move-object v0, v9

    move-object/from16 v1, p0

    move v4, v10

    invoke-direct/range {v0 .. v8}, Landroidx/media2/exoplayer/external/extractor/mp4/o;-><init>(Landroidx/media2/exoplayer/external/extractor/mp4/l;[J[II[J[IJ)V

    return-object v9

    .line 432
    :cond_20
    iget v0, v4, Landroidx/media2/exoplayer/external/extractor/mp4/l;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_21

    const/4 v0, 0x1

    goto :goto_16

    :cond_21
    const/4 v0, 0x0

    .line 438
    :goto_16
    iget-object v1, v4, Landroidx/media2/exoplayer/external/extractor/mp4/l;->h:[J

    array-length v1, v1

    new-array v1, v1, [I

    .line 439
    iget-object v7, v4, Landroidx/media2/exoplayer/external/extractor/mp4/l;->h:[J

    array-length v7, v7

    new-array v7, v7, [I

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 440
    :goto_17
    iget-object v14, v4, Landroidx/media2/exoplayer/external/extractor/mp4/l;->h:[J

    array-length v14, v14

    if-ge v8, v14, :cond_25

    .line 441
    iget-object v14, v4, Landroidx/media2/exoplayer/external/extractor/mp4/l;->i:[J

    move-object/from16 p1, v2

    move-object v15, v3

    aget-wide v2, v14, v8

    const-wide/16 v21, -0x1

    cmp-long v14, v2, v21

    if-eqz v14, :cond_24

    .line 443
    iget-object v14, v4, Landroidx/media2/exoplayer/external/extractor/mp4/l;->h:[J

    aget-wide v21, v14, v8

    move-object/from16 p2, v15

    iget-wide v14, v4, Landroidx/media2/exoplayer/external/extractor/mp4/l;->c:J

    move/from16 v27, v9

    move/from16 v16, v10

    iget-wide v9, v4, Landroidx/media2/exoplayer/external/extractor/mp4/l;->d:J

    move-wide/from16 v23, v14

    move-wide/from16 v25, v9

    .line 444
    invoke-static/range {v21 .. v26}, Landroidx/media2/exoplayer/external/util/ac;->b(JJJ)J

    move-result-wide v9

    const/4 v14, 0x1

    .line 446
    invoke-static {v5, v2, v3, v14, v14}, Landroidx/media2/exoplayer/external/util/ac;->a([JJZZ)I

    move-result v15

    aput v15, v1, v8

    add-long/2addr v2, v9

    const/4 v9, 0x0

    .line 448
    invoke-static {v5, v2, v3, v0, v9}, Landroidx/media2/exoplayer/external/util/ac;->a([JJZZ)I

    move-result v2

    aput v2, v7, v8

    .line 450
    :goto_18
    aget v2, v1, v8

    aget v3, v7, v8

    if-ge v2, v3, :cond_22

    aget v2, v1, v8

    aget v2, v6, v2

    and-int/2addr v2, v14

    if-nez v2, :cond_22

    .line 456
    aget v2, v1, v8

    add-int/2addr v2, v14

    aput v2, v1, v8

    goto :goto_18

    .line 458
    :cond_22
    aget v2, v7, v8

    aget v3, v1, v8

    sub-int/2addr v2, v3

    add-int/2addr v12, v2

    .line 459
    aget v2, v1, v8

    if-eq v13, v2, :cond_23

    const/4 v2, 0x1

    goto :goto_19

    :cond_23
    const/4 v2, 0x0

    :goto_19
    or-int/2addr v2, v11

    .line 460
    aget v3, v7, v8

    move v11, v2

    move v13, v3

    goto :goto_1a

    :cond_24
    move/from16 v27, v9

    move/from16 v16, v10

    move-object/from16 p2, v15

    const/4 v9, 0x0

    const/4 v14, 0x1

    :goto_1a
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v10, v16

    move/from16 v9, v27

    goto :goto_17

    :cond_25
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move v3, v9

    move/from16 v16, v10

    const/4 v9, 0x0

    const/4 v14, 0x1

    if-eq v12, v3, :cond_26

    goto :goto_1b

    :cond_26
    const/4 v14, 0x0

    :goto_1b
    or-int v0, v11, v14

    if-eqz v0, :cond_27

    .line 466
    new-array v2, v12, [J

    goto :goto_1c

    :cond_27
    move-object/from16 v2, p1

    :goto_1c
    if-eqz v0, :cond_28

    .line 467
    new-array v3, v12, [I

    goto :goto_1d

    :cond_28
    move-object/from16 v3, p2

    :goto_1d
    if-eqz v0, :cond_29

    const/4 v10, 0x0

    goto :goto_1e

    :cond_29
    move/from16 v10, v16

    :goto_1e
    if-eqz v0, :cond_2a

    .line 469
    new-array v8, v12, [I

    goto :goto_1f

    :cond_2a
    move-object v8, v6

    .line 470
    :goto_1f
    new-array v11, v12, [J

    move-wide/from16 v19, v18

    const/4 v12, 0x0

    .line 473
    :goto_20
    iget-object v13, v4, Landroidx/media2/exoplayer/external/extractor/mp4/l;->h:[J

    array-length v13, v13

    if-ge v9, v13, :cond_2e

    .line 474
    iget-object v13, v4, Landroidx/media2/exoplayer/external/extractor/mp4/l;->i:[J

    aget-wide v21, v13, v9

    .line 475
    aget v13, v1, v9

    .line 476
    aget v15, v7, v9

    if-eqz v0, :cond_2b

    sub-int v14, v15, v13

    move-object/from16 v23, v7

    move-object/from16 v7, p1

    .line 479
    invoke-static {v7, v13, v2, v12, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v7, p2

    .line 480
    invoke-static {v7, v13, v3, v12, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 481
    invoke-static {v6, v13, v8, v12, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_21

    :cond_2b
    move-object/from16 v23, v7

    move-object/from16 v7, p2

    :goto_21
    if-ge v13, v15, :cond_2d

    const-wide/32 v16, 0xf4240

    move-object/from16 v24, v1

    move-object/from16 v25, v2

    .line 484
    iget-wide v1, v4, Landroidx/media2/exoplayer/external/extractor/mp4/l;->d:J

    move/from16 v26, v13

    move-wide/from16 v13, v19

    move/from16 v27, v15

    move-wide/from16 v15, v16

    move-wide/from16 v17, v1

    invoke-static/range {v13 .. v18}, Landroidx/media2/exoplayer/external/util/ac;->b(JJJ)J

    move-result-wide v1

    .line 485
    aget-wide v13, v5, v26

    sub-long v28, v13, v21

    const-wide/32 v30, 0xf4240

    iget-wide v13, v4, Landroidx/media2/exoplayer/external/extractor/mp4/l;->c:J

    move-wide/from16 v32, v13

    .line 486
    invoke-static/range {v28 .. v33}, Landroidx/media2/exoplayer/external/util/ac;->b(JJJ)J

    move-result-wide v13

    add-long/2addr v1, v13

    .line 488
    aput-wide v1, v11, v12

    if-eqz v0, :cond_2c

    .line 489
    aget v1, v3, v12

    if-le v1, v10, :cond_2c

    .line 490
    aget v1, v7, v26

    move v10, v1

    :cond_2c
    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v13, v26, 0x1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move/from16 v15, v27

    goto :goto_21

    :cond_2d
    move-object/from16 v24, v1

    move-object/from16 v25, v2

    .line 494
    iget-object v1, v4, Landroidx/media2/exoplayer/external/extractor/mp4/l;->h:[J

    aget-wide v13, v1, v9

    add-long v19, v19, v13

    add-int/lit8 v9, v9, 0x1

    move-object/from16 p2, v7

    move-object/from16 v7, v23

    move-object/from16 v1, v24

    goto :goto_20

    :cond_2e
    move-object/from16 v25, v2

    const-wide/32 v15, 0xf4240

    .line 496
    iget-wide v0, v4, Landroidx/media2/exoplayer/external/extractor/mp4/l;->d:J

    move-wide/from16 v13, v19

    move-wide/from16 v17, v0

    .line 497
    invoke-static/range {v13 .. v18}, Landroidx/media2/exoplayer/external/util/ac;->b(JJJ)J

    move-result-wide v12

    .line 498
    new-instance v9, Landroidx/media2/exoplayer/external/extractor/mp4/o;

    move-object v0, v9

    move-object/from16 v1, p0

    move v4, v10

    move-object v5, v11

    move-object v6, v8

    move-wide v7, v12

    invoke-direct/range {v0 .. v8}, Landroidx/media2/exoplayer/external/extractor/mp4/o;-><init>(Landroidx/media2/exoplayer/external/extractor/mp4/l;[J[II[J[IJ)V

    return-object v9

    :cond_2f
    :goto_22
    move-object/from16 p1, v2

    move-wide v8, v7

    move/from16 v16, v10

    move-object v7, v3

    .line 377
    iget-wide v0, v4, Landroidx/media2/exoplayer/external/extractor/mp4/l;->c:J

    invoke-static {v5, v0, v1}, Landroidx/media2/exoplayer/external/util/ac;->a([JJ)V

    .line 378
    new-instance v10, Landroidx/media2/exoplayer/external/extractor/mp4/o;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v7

    move/from16 v4, v16

    move-wide v7, v8

    invoke-direct/range {v0 .. v8}, Landroidx/media2/exoplayer/external/extractor/mp4/o;-><init>(Landroidx/media2/exoplayer/external/extractor/mp4/l;[J[II[J[IJ)V

    return-object v10

    .line 161
    :cond_30
    new-instance v0, Landroidx/media2/exoplayer/external/ParserException;

    const-string v1, "Track has no sample table size information"

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Landroidx/media2/exoplayer/external/extractor/mp4/a$a;)Landroidx/media2/exoplayer/external/metadata/Metadata;
    .locals 10

    const v0, 0x68646c72    # 4.3148E24f

    .line 545
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/extractor/mp4/a$a;->c(I)Landroidx/media2/exoplayer/external/extractor/mp4/a$b;

    move-result-object v0

    const v1, 0x6b657973

    .line 546
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/extractor/mp4/a$a;->c(I)Landroidx/media2/exoplayer/external/extractor/mp4/a$b;

    move-result-object v1

    const v2, 0x696c7374

    .line 547
    invoke-virtual {p0, v2}, Landroidx/media2/exoplayer/external/extractor/mp4/a$a;->c(I)Landroidx/media2/exoplayer/external/extractor/mp4/a$b;

    move-result-object p0

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    if-eqz p0, :cond_6

    .line 548
    iget-object v0, v0, Landroidx/media2/exoplayer/external/extractor/mp4/a$b;->b:Landroidx/media2/exoplayer/external/util/p;

    .line 551
    invoke-static {v0}, Landroidx/media2/exoplayer/external/extractor/mp4/b;->a(Landroidx/media2/exoplayer/external/util/p;)I

    move-result v0

    const v3, 0x6d647461

    if-eq v0, v3, :cond_0

    goto/16 :goto_3

    .line 557
    :cond_0
    iget-object v0, v1, Landroidx/media2/exoplayer/external/extractor/mp4/a$b;->b:Landroidx/media2/exoplayer/external/util/p;

    const/16 v1, 0xc

    .line 558
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 559
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v1

    .line 560
    new-array v3, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x8

    if-ge v4, v1, :cond_1

    .line 562
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v6

    const/4 v7, 0x4

    .line 563
    invoke-virtual {v0, v7}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    sub-int/2addr v6, v5

    .line 565
    invoke-virtual {v0, v6}, Landroidx/media2/exoplayer/external/util/p;->e(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 569
    :cond_1
    iget-object p0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/a$b;->b:Landroidx/media2/exoplayer/external/util/p;

    .line 570
    invoke-virtual {p0, v5}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 571
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 572
    :goto_1
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v4

    if-le v4, v5, :cond_4

    .line 12142
    iget v4, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    .line 574
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v6

    .line 575
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ltz v7, :cond_2

    if-ge v7, v1, :cond_2

    .line 577
    aget-object v7, v3, v7

    add-int v8, v4, v6

    .line 579
    invoke-static {p0, v8, v7}, Landroidx/media2/exoplayer/external/extractor/mp4/g;->a(Landroidx/media2/exoplayer/external/util/p;ILjava/lang/String;)Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 581
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    const/16 v8, 0x34

    .line 584
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Skipped metadata with unknown key index: "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "AtomParsers"

    invoke-static {v8, v7}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    add-int/2addr v4, v6

    .line 586
    invoke-virtual {p0, v4}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    goto :goto_1

    .line 588
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_5

    return-object v2

    :cond_5
    new-instance p0, Landroidx/media2/exoplayer/external/metadata/Metadata;

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/metadata/Metadata;-><init>(Ljava/util/List;)V

    return-object p0

    :cond_6
    :goto_3
    return-object v2
.end method

.method public static a(Landroidx/media2/exoplayer/external/extractor/mp4/a$b;Z)Landroidx/media2/exoplayer/external/metadata/Metadata;
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return-object v0

    .line 522
    :cond_0
    iget-object p0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/a$b;->b:Landroidx/media2/exoplayer/external/util/p;

    const/16 p1, 0x8

    .line 523
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 524
    :goto_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v1

    if-lt v1, p1, :cond_6

    .line 8142
    iget v1, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    .line 526
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v2

    .line 527
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v3

    const v4, 0x6d657461

    if-ne v3, v4, :cond_5

    .line 529
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    add-int/2addr v1, v2

    const/16 v2, 0xc

    .line 8593
    invoke-virtual {p0, v2}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    .line 9142
    :goto_1
    iget v2, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    if-ge v2, v1, :cond_4

    .line 10142
    iget v2, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    .line 8596
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v3

    .line 8597
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v4

    const v5, 0x696c7374

    if-ne v4, v5, :cond_3

    .line 8599
    invoke-virtual {p0, v2}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    add-int/2addr v2, v3

    .line 10609
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    .line 10610
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11142
    :cond_1
    :goto_2
    iget v1, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    if-ge v1, v2, :cond_2

    .line 10612
    invoke-static {p0}, Landroidx/media2/exoplayer/external/extractor/mp4/g;->a(Landroidx/media2/exoplayer/external/util/p;)Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 10614
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 10617
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_4

    new-instance p0, Landroidx/media2/exoplayer/external/metadata/Metadata;

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/metadata/Metadata;-><init>(Ljava/util/List;)V

    return-object p0

    :cond_3
    add-int/2addr v2, v3

    .line 8602
    invoke-virtual {p0, v2}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    goto :goto_1

    :cond_4
    return-object v0

    :cond_5
    add-int/2addr v1, v2

    .line 532
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    goto :goto_0

    :cond_6
    return-object v0
.end method

.method private static a(Landroidx/media2/exoplayer/external/util/p;IIIILjava/lang/String;ZLandroidx/media2/exoplayer/external/drm/DrmInitData;Landroidx/media2/exoplayer/external/extractor/mp4/b$c;I)V
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v14, p5

    move-object/from16 v3, p7

    move-object/from16 v15, p8

    add-int/lit8 v4, v1, 0x8

    const/16 v5, 0x8

    add-int/2addr v4, v5

    .line 1040
    invoke-virtual {v0, v4}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    const/4 v4, 0x6

    const/4 v13, 0x0

    if-eqz p6, :cond_0

    .line 1044
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/p;->d()I

    move-result v6

    .line 1045
    invoke-virtual {v0, v4}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    goto :goto_0

    .line 1047
    :cond_0
    invoke-virtual {v0, v5}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    const/4 v6, 0x0

    :goto_0
    const/16 v7, 0x10

    const/4 v12, 0x2

    const/4 v11, 0x1

    if-eqz v6, :cond_3

    if-ne v6, v11, :cond_1

    goto :goto_1

    :cond_1
    if-ne v6, v12, :cond_2

    .line 1062
    invoke-virtual {v0, v7}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    .line 19446
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/p;->k()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    .line 1064
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v5, v4

    .line 1065
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/p;->n()I

    move-result v4

    const/16 v6, 0x14

    .line 1069
    invoke-virtual {v0, v6}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    goto :goto_2

    :cond_2
    return-void

    .line 1054
    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/p;->d()I

    move-result v8

    .line 1055
    invoke-virtual {v0, v4}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    .line 19373
    iget-object v4, v0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    iget v9, v0, Landroidx/media2/exoplayer/external/util/p;->b:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v0, Landroidx/media2/exoplayer/external/util/p;->b:I

    aget-byte v4, v4, v9

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v5

    iget-object v5, v0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    iget v9, v0, Landroidx/media2/exoplayer/external/util/p;->b:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v0, Landroidx/media2/exoplayer/external/util/p;->b:I

    aget-byte v5, v5, v9

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v5, v4

    .line 19375
    iget v4, v0, Landroidx/media2/exoplayer/external/util/p;->b:I

    add-int/2addr v4, v12

    iput v4, v0, Landroidx/media2/exoplayer/external/util/p;->b:I

    if-ne v6, v11, :cond_4

    .line 1059
    invoke-virtual {v0, v7}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    :cond_4
    move v4, v8

    .line 20142
    :goto_2
    iget v6, v0, Landroidx/media2/exoplayer/external/util/p;->b:I

    const v7, 0x656e6361

    const/16 v16, 0x0

    move/from16 v8, p1

    if-ne v8, v7, :cond_7

    .line 1077
    invoke-static {v0, v1, v2}, Landroidx/media2/exoplayer/external/extractor/mp4/b;->a(Landroidx/media2/exoplayer/external/util/p;II)Landroid/util/Pair;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 1080
    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-nez v3, :cond_5

    move-object/from16 v3, v16

    goto :goto_3

    .line 1082
    :cond_5
    iget-object v9, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Landroidx/media2/exoplayer/external/extractor/mp4/m;

    iget-object v9, v9, Landroidx/media2/exoplayer/external/extractor/mp4/m;->b:Ljava/lang/String;

    invoke-virtual {v3, v9}, Landroidx/media2/exoplayer/external/drm/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Landroidx/media2/exoplayer/external/drm/DrmInitData;

    move-result-object v3

    .line 1083
    :goto_3
    iget-object v9, v15, Landroidx/media2/exoplayer/external/extractor/mp4/b$c;->a:[Landroidx/media2/exoplayer/external/extractor/mp4/m;

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Landroidx/media2/exoplayer/external/extractor/mp4/m;

    aput-object v7, v9, p9

    .line 1085
    :cond_6
    invoke-virtual {v0, v6}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    :cond_7
    move-object v10, v3

    const v3, 0x61632d33

    const v9, 0x616c6163

    const-string v7, "audio/raw"

    if-ne v8, v3, :cond_8

    const-string v3, "audio/ac3"

    goto/16 :goto_6

    :cond_8
    const v3, 0x65632d33

    if-ne v8, v3, :cond_9

    const-string v3, "audio/eac3"

    goto/16 :goto_6

    :cond_9
    const v3, 0x61632d34

    if-ne v8, v3, :cond_a

    const-string v3, "audio/ac4"

    goto/16 :goto_6

    :cond_a
    const v3, 0x64747363

    if-ne v8, v3, :cond_b

    const-string v3, "audio/vnd.dts"

    goto/16 :goto_6

    :cond_b
    const v3, 0x64747368

    if-eq v8, v3, :cond_18

    const v3, 0x6474736c

    if-ne v8, v3, :cond_c

    goto :goto_5

    :cond_c
    const v3, 0x64747365

    if-ne v8, v3, :cond_d

    const-string v3, "audio/vnd.dts.hd;profile=lbr"

    goto :goto_6

    :cond_d
    const v3, 0x73616d72

    if-ne v8, v3, :cond_e

    const-string v3, "audio/3gpp"

    goto :goto_6

    :cond_e
    const v3, 0x73617762

    if-ne v8, v3, :cond_f

    const-string v3, "audio/amr-wb"

    goto :goto_6

    :cond_f
    const v3, 0x6c70636d

    if-eq v8, v3, :cond_17

    const v3, 0x736f7774

    if-ne v8, v3, :cond_10

    goto :goto_4

    :cond_10
    const v3, 0x2e6d7033

    if-ne v8, v3, :cond_11

    const-string v3, "audio/mpeg"

    goto :goto_6

    :cond_11
    if-ne v8, v9, :cond_12

    const-string v3, "audio/alac"

    goto :goto_6

    :cond_12
    const v3, 0x616c6177

    if-ne v8, v3, :cond_13

    const-string v3, "audio/g711-alaw"

    goto :goto_6

    :cond_13
    const v3, 0x756c6177

    if-ne v8, v3, :cond_14

    const-string v3, "audio/g711-mlaw"

    goto :goto_6

    :cond_14
    const v3, 0x4f707573

    if-ne v8, v3, :cond_15

    const-string v3, "audio/opus"

    goto :goto_6

    :cond_15
    const v3, 0x664c6143

    if-ne v8, v3, :cond_16

    const-string v3, "audio/flac"

    goto :goto_6

    :cond_16
    move-object/from16 v3, v16

    goto :goto_6

    :cond_17
    :goto_4
    move-object v3, v7

    goto :goto_6

    :cond_18
    :goto_5
    const-string v3, "audio/vnd.dts.hd"

    :goto_6
    move-object v8, v3

    move/from16 v17, v4

    move/from16 v18, v5

    move-object/from16 v19, v16

    :goto_7
    sub-int v3, v6, v1

    const/4 v4, -0x1

    if-ge v3, v2, :cond_28

    .line 1128
    invoke-virtual {v0, v6}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 1129
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v5

    if-lez v5, :cond_19

    const/4 v3, 0x1

    goto :goto_8

    :cond_19
    const/4 v3, 0x0

    :goto_8
    const-string v9, "childAtomSize should be positive"

    .line 1130
    invoke-static {v3, v9}, Landroidx/media2/exoplayer/external/util/a;->a(ZLjava/lang/Object;)V

    .line 1131
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v3

    const v11, 0x65736473

    if-eq v3, v11, :cond_22

    if-eqz p6, :cond_1a

    const v12, 0x77617665

    if-ne v3, v12, :cond_1a

    goto/16 :goto_c

    :cond_1a
    const v4, 0x64616333

    if-ne v3, v4, :cond_1b

    add-int/lit8 v3, v6, 0x8

    .line 1150
    invoke-virtual {v0, v3}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 1151
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v14, v10}, Landroidx/media2/exoplayer/external/audio/a;->a(Landroidx/media2/exoplayer/external/util/p;Ljava/lang/String;Ljava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v3

    iput-object v3, v15, Landroidx/media2/exoplayer/external/extractor/mp4/b$c;->b:Landroidx/media2/exoplayer/external/Format;

    :goto_9
    move/from16 v25, v6

    move-object/from16 v27, v7

    move-object/from16 v28, v8

    move-object/from16 v26, v10

    const/4 v1, 0x0

    const v6, 0x616c6163

    const/16 v20, 0x1

    const/16 v21, 0x2

    goto/16 :goto_a

    :cond_1b
    const v4, 0x64656333

    if-ne v3, v4, :cond_1c

    add-int/lit8 v3, v6, 0x8

    .line 1154
    invoke-virtual {v0, v3}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 1155
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v14, v10}, Landroidx/media2/exoplayer/external/audio/a;->b(Landroidx/media2/exoplayer/external/util/p;Ljava/lang/String;Ljava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v3

    iput-object v3, v15, Landroidx/media2/exoplayer/external/extractor/mp4/b$c;->b:Landroidx/media2/exoplayer/external/Format;

    goto :goto_9

    :cond_1c
    const v4, 0x64616334

    if-ne v3, v4, :cond_1d

    add-int/lit8 v3, v6, 0x8

    .line 1158
    invoke-virtual {v0, v3}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 1160
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v14, v10}, Landroidx/media2/exoplayer/external/audio/b;->a(Landroidx/media2/exoplayer/external/util/p;Ljava/lang/String;Ljava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v3

    iput-object v3, v15, Landroidx/media2/exoplayer/external/extractor/mp4/b$c;->b:Landroidx/media2/exoplayer/external/Format;

    goto :goto_9

    :cond_1d
    const v4, 0x64647473

    if-ne v3, v4, :cond_1e

    .line 1162
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x0

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object v4, v8

    move/from16 v24, v5

    move-object v5, v9

    move/from16 v25, v6

    move v6, v11

    move-object v11, v7

    move v7, v12

    move-object v12, v8

    move/from16 v8, v17

    move/from16 v9, v18

    move-object/from16 v26, v10

    move-object/from16 v10, v22

    move-object/from16 v27, v11

    const/16 v20, 0x1

    move-object/from16 v11, v26

    move-object/from16 v28, v12

    const/16 v21, 0x2

    move/from16 v12, v23

    const/4 v1, 0x0

    move-object/from16 v13, p5

    invoke-static/range {v3 .. v13}, Landroidx/media2/exoplayer/external/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v3

    iput-object v3, v15, Landroidx/media2/exoplayer/external/extractor/mp4/b$c;->b:Landroidx/media2/exoplayer/external/Format;

    move/from16 v5, v24

    const v6, 0x616c6163

    goto :goto_a

    :cond_1e
    move/from16 v24, v5

    move/from16 v25, v6

    move-object/from16 v27, v7

    move-object/from16 v28, v8

    move-object/from16 v26, v10

    const/4 v1, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x2

    const v4, 0x644f7073

    if-ne v3, v4, :cond_1f

    move/from16 v5, v24

    add-int/lit8 v3, v5, -0x8

    .line 1169
    sget-object v4, Landroidx/media2/exoplayer/external/extractor/mp4/b;->a:[B

    array-length v6, v4

    add-int/2addr v6, v3

    new-array v6, v6, [B

    .line 1170
    array-length v7, v4

    invoke-static {v4, v1, v6, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v7, v25, 0x8

    .line 1171
    invoke-virtual {v0, v7}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 1172
    array-length v4, v4

    invoke-virtual {v0, v6, v4, v3}, Landroidx/media2/exoplayer/external/util/p;->a([BII)V

    move-object/from16 v19, v6

    move-object/from16 v8, v28

    const v6, 0x616c6163

    goto/16 :goto_10

    :cond_1f
    move/from16 v5, v24

    const v4, 0x64664c61

    const v6, 0x616c6163

    if-eq v5, v4, :cond_21

    if-ne v3, v6, :cond_20

    goto :goto_b

    :cond_20
    :goto_a
    move-object/from16 v8, v28

    goto/16 :goto_10

    :cond_21
    :goto_b
    add-int/lit8 v3, v5, -0xc

    .line 1175
    new-array v4, v3, [B

    add-int/lit8 v7, v25, 0xc

    .line 1176
    invoke-virtual {v0, v7}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 1177
    invoke-virtual {v0, v4, v1, v3}, Landroidx/media2/exoplayer/external/util/p;->a([BII)V

    move-object/from16 v19, v4

    goto :goto_a

    :cond_22
    :goto_c
    move/from16 v25, v6

    move-object/from16 v27, v7

    move-object/from16 v28, v8

    move-object/from16 v26, v10

    const/4 v1, 0x0

    const v6, 0x616c6163

    const/16 v20, 0x1

    const/16 v21, 0x2

    if-ne v3, v11, :cond_23

    move/from16 v3, v25

    goto :goto_f

    .line 21142
    :cond_23
    iget v3, v0, Landroidx/media2/exoplayer/external/util/p;->b:I

    :goto_d
    sub-int v7, v3, v25

    if-ge v7, v5, :cond_26

    .line 20200
    invoke-virtual {v0, v3}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 20201
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v7

    if-lez v7, :cond_24

    const/4 v13, 0x1

    goto :goto_e

    :cond_24
    const/4 v13, 0x0

    .line 20202
    :goto_e
    invoke-static {v13, v9}, Landroidx/media2/exoplayer/external/util/a;->a(ZLjava/lang/Object;)V

    .line 20203
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v8

    if-ne v8, v11, :cond_25

    goto :goto_f

    :cond_25
    add-int/2addr v3, v7

    goto :goto_d

    :cond_26
    const/4 v3, -0x1

    :goto_f
    if-eq v3, v4, :cond_20

    .line 1137
    invoke-static {v0, v3}, Landroidx/media2/exoplayer/external/extractor/mp4/b;->a(Landroidx/media2/exoplayer/external/util/p;I)Landroid/util/Pair;

    move-result-object v3

    .line 1138
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v8, v4

    check-cast v8, Ljava/lang/String;

    .line 1139
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v19, v3

    check-cast v19, [B

    const-string v3, "audio/mp4a-latm"

    .line 1140
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 1144
    invoke-static/range {v19 .. v19}, Landroidx/media2/exoplayer/external/util/c;->a([B)Landroid/util/Pair;

    move-result-object v3

    .line 1145
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 1146
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v17

    :cond_27
    :goto_10
    add-int v3, v25, v5

    move/from16 v1, p2

    move v6, v3

    move-object/from16 v10, v26

    move-object/from16 v7, v27

    const v9, 0x616c6163

    const/4 v11, 0x1

    const/4 v12, 0x2

    const/4 v13, 0x0

    goto/16 :goto_7

    :cond_28
    move-object/from16 v27, v7

    move-object/from16 v28, v8

    move-object/from16 v26, v10

    const/16 v21, 0x2

    .line 1182
    iget-object v0, v15, Landroidx/media2/exoplayer/external/extractor/mp4/b$c;->b:Landroidx/media2/exoplayer/external/Format;

    if-nez v0, :cond_2b

    move-object/from16 v8, v28

    if-eqz v8, :cond_2b

    move-object/from16 v0, v27

    .line 1185
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    const/4 v7, 0x2

    goto :goto_11

    :cond_29
    const/4 v7, -0x1

    .line 1186
    :goto_11
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    if-nez v19, :cond_2a

    goto :goto_12

    .line 1188
    :cond_2a
    invoke-static/range {v19 .. v19}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move-object/from16 v16, v1

    :goto_12
    const/4 v10, 0x0

    move-object v1, v8

    move/from16 v5, v17

    move/from16 v6, v18

    move-object/from16 v8, v16

    move-object/from16 v9, v26

    move-object/from16 v11, p5

    .line 1186
    invoke-static/range {v0 .. v11}, Landroidx/media2/exoplayer/external/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    iput-object v0, v15, Landroidx/media2/exoplayer/external/extractor/mp4/b$c;->b:Landroidx/media2/exoplayer/external/Format;

    :cond_2b
    return-void
.end method

.method private static b(Landroidx/media2/exoplayer/external/util/p;)I
    .locals 3

    .line 1378
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v0

    and-int/lit8 v1, v0, 0x7f

    :goto_0
    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    .line 1381
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v0

    shl-int/lit8 v1, v1, 0x7

    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method private static b(Landroidx/media2/exoplayer/external/extractor/mp4/a$a;)Landroid/util/Pair;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/extractor/mp4/a$a;",
            ")",
            "Landroid/util/Pair<",
            "[J[J>;"
        }
    .end annotation

    if-eqz p0, :cond_5

    const v0, 0x656c7374

    .line 1006
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/extractor/mp4/a$a;->c(I)Landroidx/media2/exoplayer/external/extractor/mp4/a$b;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_3

    .line 1009
    :cond_0
    iget-object p0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/a$b;->b:Landroidx/media2/exoplayer/external/util/p;

    const/16 v0, 0x8

    .line 1010
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 1011
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v1

    .line 1012
    invoke-static {v1}, Landroidx/media2/exoplayer/external/extractor/mp4/a;->a(I)I

    move-result v1

    .line 1013
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->n()I

    move-result v2

    .line 1014
    new-array v3, v2, [J

    .line 1015
    new-array v4, v2, [J

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_4

    const/4 v6, 0x1

    if-ne v1, v6, :cond_1

    .line 1018
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->p()J

    move-result-wide v7

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->g()J

    move-result-wide v7

    :goto_1
    aput-wide v7, v3, v5

    if-ne v1, v6, :cond_2

    .line 1019
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->k()J

    move-result-wide v7

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v7

    int-to-long v7, v7

    :goto_2
    aput-wide v7, v4, v5

    .line 19254
    iget-object v7, p0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    iget v8, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/2addr v7, v0

    iget-object v8, p0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    iget v9, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    aget-byte v8, v8, v9

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v7, v8

    int-to-short v7, v7

    if-ne v7, v6, :cond_3

    const/4 v6, 0x2

    .line 1025
    invoke-virtual {p0, v6}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1023
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported media rate."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1027
    :cond_4
    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_3
    const/4 p0, 0x0

    .line 1007
    invoke-static {p0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroidx/media2/exoplayer/external/util/p;II)Landroid/util/Pair;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/util/p;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroidx/media2/exoplayer/external/extractor/mp4/m;",
            ">;"
        }
    .end annotation

    add-int/lit8 v0, p1, 0x8

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    move-object v6, v4

    const/4 v5, -0x1

    const/4 v7, 0x0

    :goto_0
    sub-int v8, v0, p1

    if-ge v8, p2, :cond_3

    .line 1289
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 1290
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v8

    .line 1291
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v9

    const v10, 0x66726d61

    if-ne v9, v10, :cond_0

    .line 1293
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_1

    :cond_0
    const v10, 0x7363686d

    if-ne v9, v10, :cond_1

    const/4 v4, 0x4

    .line 1295
    invoke-virtual {p0, v4}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    .line 1297
    invoke-virtual {p0, v4}, Landroidx/media2/exoplayer/external/util/p;->e(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    const v10, 0x73636869

    if-ne v9, v10, :cond_2

    move v5, v0

    move v7, v8

    :cond_2
    :goto_1
    add-int/2addr v0, v8

    goto :goto_0

    :cond_3
    const-string p1, "cenc"

    .line 1305
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "cbc1"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "cens"

    .line 1306
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "cbcs"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    return-object v2

    :cond_5
    :goto_2
    const/4 p1, 0x1

    if-eqz v6, :cond_6

    const/4 p2, 0x1

    goto :goto_3

    :cond_6
    const/4 p2, 0x0

    :goto_3
    const-string v0, "frma atom is mandatory"

    .line 1307
    invoke-static {p2, v0}, Landroidx/media2/exoplayer/external/util/a;->a(ZLjava/lang/Object;)V

    if-eq v5, v1, :cond_7

    const/4 p2, 0x1

    goto :goto_4

    :cond_7
    const/4 p2, 0x0

    :goto_4
    const-string v0, "schi atom is mandatory"

    .line 1308
    invoke-static {p2, v0}, Landroidx/media2/exoplayer/external/util/a;->a(ZLjava/lang/Object;)V

    .line 1310
    invoke-static {p0, v5, v7, v4}, Landroidx/media2/exoplayer/external/extractor/mp4/b;->a(Landroidx/media2/exoplayer/external/util/p;IILjava/lang/String;)Landroidx/media2/exoplayer/external/extractor/mp4/m;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 v3, 0x1

    :cond_8
    const-string p1, "tenc atom is mandatory"

    .line 1312
    invoke-static {v3, p1}, Landroidx/media2/exoplayer/external/util/a;->a(ZLjava/lang/Object;)V

    .line 1313
    invoke-static {v6, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static c(Landroidx/media2/exoplayer/external/util/p;II)[B
    .locals 4

    add-int/lit8 v0, p1, 0x8

    :goto_0
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_1

    .line 1363
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 1364
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v1

    .line 1365
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v2

    const v3, 0x70726f6a

    if-ne v2, v3, :cond_0

    .line 1367
    iget-object p0, p0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    add-int/2addr v1, v0

    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0

    :cond_0
    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
