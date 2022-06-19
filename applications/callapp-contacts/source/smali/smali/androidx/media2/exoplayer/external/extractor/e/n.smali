.class public final Landroidx/media2/exoplayer/external/extractor/e/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/e/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/extractor/e/n$a;
    }
.end annotation


# static fields
.field private static final c:[D


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroidx/media2/exoplayer/external/extractor/q;

.field private d:Z

.field private e:J

.field private final f:Landroidx/media2/exoplayer/external/extractor/e/aj;

.field private final g:Landroidx/media2/exoplayer/external/util/p;

.field private final h:[Z

.field private final i:Landroidx/media2/exoplayer/external/extractor/e/n$a;

.field private final j:Landroidx/media2/exoplayer/external/extractor/e/t;

.field private k:J

.field private l:Z

.field private m:J

.field private n:J

.field private o:J

.field private p:Z

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [D

    .line 51
    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/e/n;->c:[D

    return-void

    :array_0
    .array-data 8
        0x4037f9dcb5112287L    # 23.976023976023978
        0x4038000000000000L    # 24.0
        0x4039000000000000L    # 25.0
        0x403df853e2556b28L    # 29.97002997002997
        0x403e000000000000L    # 30.0
        0x4049000000000000L    # 50.0
        0x404df853e2556b28L    # 59.94005994005994
        0x404e000000000000L    # 60.0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/extractor/e/n;-><init>(Landroidx/media2/exoplayer/external/extractor/e/aj;)V

    return-void
.end method

.method constructor <init>(Landroidx/media2/exoplayer/external/extractor/e/aj;)V
    .locals 2

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/n;->f:Landroidx/media2/exoplayer/external/extractor/e/aj;

    const/4 v0, 0x4

    new-array v0, v0, [Z

    .line 83
    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/n;->h:[Z

    .line 84
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/e/n$a;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/extractor/e/n$a;-><init>(I)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/n;->i:Landroidx/media2/exoplayer/external/extractor/e/n$a;

    if-eqz p1, :cond_0

    .line 86
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/e/t;

    const/16 v0, 0xb2

    invoke-direct {p1, v0, v1}, Landroidx/media2/exoplayer/external/extractor/e/t;-><init>(II)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/n;->j:Landroidx/media2/exoplayer/external/extractor/e/t;

    .line 87
    new-instance p1, Landroidx/media2/exoplayer/external/util/p;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/util/p;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/n;->g:Landroidx/media2/exoplayer/external/util/p;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 89
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/n;->j:Landroidx/media2/exoplayer/external/extractor/e/t;

    .line 90
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/n;->g:Landroidx/media2/exoplayer/external/util/p;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 96
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/n;->h:[Z

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/n;->a([Z)V

    .line 97
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/n;->i:Landroidx/media2/exoplayer/external/extractor/e/n$a;

    const/4 v1, 0x0

    .line 1287
    iput-boolean v1, v0, Landroidx/media2/exoplayer/external/extractor/e/n$a;->b:Z

    .line 1288
    iput v1, v0, Landroidx/media2/exoplayer/external/extractor/e/n$a;->c:I

    .line 1289
    iput v1, v0, Landroidx/media2/exoplayer/external/extractor/e/n$a;->d:I

    .line 98
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/n;->f:Landroidx/media2/exoplayer/external/extractor/e/aj;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/n;->j:Landroidx/media2/exoplayer/external/extractor/e/t;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/extractor/e/t;->a()V

    :cond_0
    const-wide/16 v2, 0x0

    .line 101
    iput-wide v2, p0, Landroidx/media2/exoplayer/external/extractor/e/n;->k:J

    .line 102
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/extractor/e/n;->l:Z

    return-void
.end method

.method public final a(JI)V
    .locals 0

    .line 118
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/e/n;->m:J

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/extractor/i;Landroidx/media2/exoplayer/external/extractor/e/ah$d;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 107
    invoke-virtual/range {p2 .. p2}, Landroidx/media2/exoplayer/external/extractor/e/ah$d;->a()V

    .line 108
    invoke-virtual/range {p2 .. p2}, Landroidx/media2/exoplayer/external/extractor/e/ah$d;->c()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroidx/media2/exoplayer/external/extractor/e/n;->a:Ljava/lang/String;

    .line 109
    invoke-virtual/range {p2 .. p2}, Landroidx/media2/exoplayer/external/extractor/e/ah$d;->b()I

    move-result v2

    const/4 v3, 0x2

    invoke-interface {v1, v2, v3}, Landroidx/media2/exoplayer/external/extractor/i;->a(II)Landroidx/media2/exoplayer/external/extractor/q;

    move-result-object v2

    iput-object v2, v0, Landroidx/media2/exoplayer/external/extractor/e/n;->b:Landroidx/media2/exoplayer/external/extractor/q;

    .line 110
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/e/n;->f:Landroidx/media2/exoplayer/external/extractor/e/aj;

    if-eqz v2, :cond_3

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2051
    :goto_0
    iget-object v5, v2, Landroidx/media2/exoplayer/external/extractor/e/aj;->b:[Landroidx/media2/exoplayer/external/extractor/q;

    array-length v5, v5

    if-ge v4, v5, :cond_3

    .line 2052
    invoke-virtual/range {p2 .. p2}, Landroidx/media2/exoplayer/external/extractor/e/ah$d;->a()V

    .line 2053
    invoke-virtual/range {p2 .. p2}, Landroidx/media2/exoplayer/external/extractor/e/ah$d;->b()I

    move-result v5

    const/4 v6, 0x3

    invoke-interface {v1, v5, v6}, Landroidx/media2/exoplayer/external/extractor/i;->a(II)Landroidx/media2/exoplayer/external/extractor/q;

    move-result-object v5

    .line 2054
    iget-object v6, v2, Landroidx/media2/exoplayer/external/extractor/e/aj;->a:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media2/exoplayer/external/Format;

    .line 2055
    iget-object v8, v6, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    const-string v7, "application/cea-608"

    .line 2057
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "application/cea-708"

    .line 2058
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v7, 0x1

    :goto_2
    const-string v9, "Invalid closed caption mime type provided: "

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v9, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    :cond_2
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v9, v10

    .line 2056
    :goto_3
    invoke-static {v7, v9}, Landroidx/media2/exoplayer/external/util/a;->a(ZLjava/lang/Object;)V

    .line 2062
    invoke-virtual/range {p2 .. p2}, Landroidx/media2/exoplayer/external/extractor/e/ah$d;->c()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, -0x1

    iget v11, v6, Landroidx/media2/exoplayer/external/Format;->selectionFlags:I

    iget-object v12, v6, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    iget v13, v6, Landroidx/media2/exoplayer/external/Format;->accessibilityChannel:I

    const/4 v14, 0x0

    const-wide v15, 0x7fffffffffffffffL

    iget-object v6, v6, Landroidx/media2/exoplayer/external/Format;->initializationData:Ljava/util/List;

    move-object/from16 v17, v6

    .line 2061
    invoke-static/range {v7 .. v17}, Landroidx/media2/exoplayer/external/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroidx/media2/exoplayer/external/drm/DrmInitData;JLjava/util/List;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v6

    .line 2060
    invoke-interface {v5, v6}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/Format;)V

    .line 2072
    iget-object v6, v2, Landroidx/media2/exoplayer/external/extractor/e/aj;->b:[Landroidx/media2/exoplayer/external/extractor/q;

    aput-object v5, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/util/p;)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2142
    iget v2, v1, Landroidx/media2/exoplayer/external/util/p;->b:I

    .line 3125
    iget v3, v1, Landroidx/media2/exoplayer/external/util/p;->c:I

    .line 125
    iget-object v4, v1, Landroidx/media2/exoplayer/external/util/p;->a:[B

    .line 128
    iget-wide v5, v0, Landroidx/media2/exoplayer/external/extractor/e/n;->k:J

    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    iput-wide v5, v0, Landroidx/media2/exoplayer/external/extractor/e/n;->k:J

    .line 129
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/e/n;->b:Landroidx/media2/exoplayer/external/extractor/q;

    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v6

    invoke-interface {v5, v1, v6}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/util/p;I)V

    .line 132
    :goto_0
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/e/n;->h:[Z

    invoke-static {v4, v2, v3, v5}, Landroidx/media2/exoplayer/external/util/n;->a([BII[Z)I

    move-result v5

    if-ne v5, v3, :cond_2

    .line 136
    iget-boolean v1, v0, Landroidx/media2/exoplayer/external/extractor/e/n;->d:Z

    if-nez v1, :cond_0

    .line 137
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/e/n;->i:Landroidx/media2/exoplayer/external/extractor/e/n$a;

    invoke-virtual {v1, v4, v2, v3}, Landroidx/media2/exoplayer/external/extractor/e/n$a;->a([BII)V

    .line 139
    :cond_0
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/e/n;->f:Landroidx/media2/exoplayer/external/extractor/e/aj;

    if-eqz v1, :cond_1

    .line 140
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/e/n;->j:Landroidx/media2/exoplayer/external/extractor/e/t;

    invoke-virtual {v1, v4, v2, v3}, Landroidx/media2/exoplayer/external/extractor/e/t;->a([BII)V

    :cond_1
    return-void

    .line 146
    :cond_2
    iget-object v6, v1, Landroidx/media2/exoplayer/external/util/p;->a:[B

    add-int/lit8 v7, v5, 0x3

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sub-int v8, v5, v2

    .line 151
    iget-boolean v9, v0, Landroidx/media2/exoplayer/external/extractor/e/n;->d:Z

    const/16 v12, 0xb3

    const/4 v15, 0x0

    const/4 v10, 0x1

    if-nez v9, :cond_d

    if-lez v8, :cond_3

    .line 153
    iget-object v9, v0, Landroidx/media2/exoplayer/external/extractor/e/n;->i:Landroidx/media2/exoplayer/external/extractor/e/n$a;

    invoke-virtual {v9, v4, v2, v5}, Landroidx/media2/exoplayer/external/extractor/e/n$a;->a([BII)V

    :cond_3
    if-gez v8, :cond_4

    neg-int v9, v8

    goto :goto_1

    :cond_4
    const/4 v9, 0x0

    .line 158
    :goto_1
    iget-object v11, v0, Landroidx/media2/exoplayer/external/extractor/e/n;->i:Landroidx/media2/exoplayer/external/extractor/e/n$a;

    .line 3303
    iget-boolean v13, v11, Landroidx/media2/exoplayer/external/extractor/e/n$a;->b:Z

    if-eqz v13, :cond_6

    .line 3304
    iget v13, v11, Landroidx/media2/exoplayer/external/extractor/e/n$a;->c:I

    sub-int/2addr v13, v9

    iput v13, v11, Landroidx/media2/exoplayer/external/extractor/e/n$a;->c:I

    .line 3305
    iget v9, v11, Landroidx/media2/exoplayer/external/extractor/e/n$a;->d:I

    if-nez v9, :cond_5

    const/16 v9, 0xb5

    if-ne v6, v9, :cond_5

    .line 3306
    iget v9, v11, Landroidx/media2/exoplayer/external/extractor/e/n$a;->c:I

    iput v9, v11, Landroidx/media2/exoplayer/external/extractor/e/n$a;->d:I

    goto :goto_2

    .line 3308
    :cond_5
    iput-boolean v15, v11, Landroidx/media2/exoplayer/external/extractor/e/n$a;->b:Z

    const/4 v9, 0x1

    goto :goto_3

    :cond_6
    if-ne v6, v12, :cond_7

    .line 3312
    iput-boolean v10, v11, Landroidx/media2/exoplayer/external/extractor/e/n$a;->b:Z

    .line 3314
    :cond_7
    :goto_2
    sget-object v9, Landroidx/media2/exoplayer/external/extractor/e/n$a;->a:[B

    sget-object v13, Landroidx/media2/exoplayer/external/extractor/e/n$a;->a:[B

    array-length v13, v13

    invoke-virtual {v11, v9, v15, v13}, Landroidx/media2/exoplayer/external/extractor/e/n$a;->a([BII)V

    const/4 v9, 0x0

    :goto_3
    if-eqz v9, :cond_d

    .line 160
    iget-object v9, v0, Landroidx/media2/exoplayer/external/extractor/e/n;->i:Landroidx/media2/exoplayer/external/extractor/e/n$a;

    iget-object v11, v0, Landroidx/media2/exoplayer/external/extractor/e/n;->a:Ljava/lang/String;

    .line 4224
    iget-object v13, v9, Landroidx/media2/exoplayer/external/extractor/e/n$a;->e:[B

    iget v15, v9, Landroidx/media2/exoplayer/external/extractor/e/n$a;->c:I

    invoke-static {v13, v15}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v13

    const/4 v15, 0x4

    .line 4226
    aget-byte v12, v13, v15

    and-int/lit16 v12, v12, 0xff

    const/16 v28, 0x5

    .line 4227
    aget-byte v10, v13, v28

    and-int/lit16 v10, v10, 0xff

    const/16 v16, 0x6

    .line 4228
    aget-byte v14, v13, v16

    and-int/lit16 v14, v14, 0xff

    shl-int/2addr v12, v15

    shr-int/lit8 v16, v10, 0x4

    or-int v21, v12, v16

    and-int/lit8 v10, v10, 0xf

    shl-int/lit8 v10, v10, 0x8

    or-int v22, v10, v14

    const/4 v12, 0x7

    .line 4233
    aget-byte v14, v13, v12

    and-int/lit16 v14, v14, 0xf0

    shr-int/2addr v14, v15

    const/4 v10, 0x2

    if-eq v14, v10, :cond_a

    const/4 v10, 0x3

    if-eq v14, v10, :cond_9

    if-eq v14, v15, :cond_8

    const/high16 v26, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_8
    mul-int/lit8 v10, v22, 0x79

    int-to-float v10, v10

    mul-int/lit8 v14, v21, 0x64

    goto :goto_4

    :cond_9
    mul-int/lit8 v10, v22, 0x10

    int-to-float v10, v10

    mul-int/lit8 v14, v21, 0x9

    goto :goto_4

    :cond_a
    mul-int/lit8 v10, v22, 0x4

    int-to-float v10, v10

    mul-int/lit8 v14, v21, 0x3

    :goto_4
    int-to-float v14, v14

    div-float/2addr v10, v14

    move/from16 v26, v10

    :goto_5
    const/16 v18, 0x0

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/high16 v23, -0x40800000    # -1.0f

    .line 4251
    invoke-static {v13}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v24

    const/16 v25, -0x1

    const/16 v27, 0x0

    const-string/jumbo v17, "video/mpeg2"

    move-object/from16 v16, v11

    .line 4249
    invoke-static/range {v16 .. v27}, Landroidx/media2/exoplayer/external/Format;->createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLandroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v10

    .line 4254
    aget-byte v11, v13, v12

    and-int/lit8 v11, v11, 0xf

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    if-ltz v11, :cond_c

    .line 4255
    sget-object v12, Landroidx/media2/exoplayer/external/extractor/e/n;->c:[D

    array-length v14, v12

    if-ge v11, v14, :cond_c

    .line 4256
    aget-wide v11, v12, v11

    .line 4257
    iget v9, v9, Landroidx/media2/exoplayer/external/extractor/e/n$a;->d:I

    const/16 v14, 0x9

    add-int/2addr v9, v14

    .line 4258
    aget-byte v14, v13, v9

    and-int/lit8 v14, v14, 0x60

    shr-int/lit8 v14, v14, 0x5

    .line 4259
    aget-byte v9, v13, v9

    and-int/lit8 v9, v9, 0x1f

    if-eq v14, v9, :cond_b

    int-to-double v13, v14

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    add-double v13, v13, v16

    add-int/lit8 v9, v9, 0x1

    move/from16 v16, v6

    move v15, v7

    int-to-double v6, v9

    div-double/2addr v13, v6

    mul-double v11, v11, v13

    goto :goto_6

    :cond_b
    move/from16 v16, v6

    move v15, v7

    :goto_6
    const-wide v6, 0x412e848000000000L    # 1000000.0

    div-double/2addr v6, v11

    double-to-long v6, v6

    goto :goto_7

    :cond_c
    move/from16 v16, v6

    move v15, v7

    const-wide/16 v6, 0x0

    .line 4266
    :goto_7
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    .line 161
    iget-object v7, v0, Landroidx/media2/exoplayer/external/extractor/e/n;->b:Landroidx/media2/exoplayer/external/extractor/q;

    iget-object v9, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Landroidx/media2/exoplayer/external/Format;

    invoke-interface {v7, v9}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/Format;)V

    .line 162
    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v0, Landroidx/media2/exoplayer/external/extractor/e/n;->e:J

    const/4 v6, 0x1

    .line 163
    iput-boolean v6, v0, Landroidx/media2/exoplayer/external/extractor/e/n;->d:Z

    goto :goto_8

    :cond_d
    move/from16 v16, v6

    move v15, v7

    .line 166
    :goto_8
    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/e/n;->f:Landroidx/media2/exoplayer/external/extractor/e/aj;

    if-eqz v6, :cond_10

    if-lez v8, :cond_e

    .line 169
    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/e/n;->j:Landroidx/media2/exoplayer/external/extractor/e/t;

    invoke-virtual {v6, v4, v2, v5}, Landroidx/media2/exoplayer/external/extractor/e/t;->a([BII)V

    const/4 v2, 0x0

    goto :goto_9

    :cond_e
    neg-int v2, v8

    .line 174
    :goto_9
    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/e/n;->j:Landroidx/media2/exoplayer/external/extractor/e/t;

    invoke-virtual {v6, v2}, Landroidx/media2/exoplayer/external/extractor/e/t;->b(I)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 175
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/e/n;->j:Landroidx/media2/exoplayer/external/extractor/e/t;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/extractor/e/t;->b:[B

    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/e/n;->j:Landroidx/media2/exoplayer/external/extractor/e/t;

    iget v6, v6, Landroidx/media2/exoplayer/external/extractor/e/t;->c:I

    invoke-static {v2, v6}, Landroidx/media2/exoplayer/external/util/n;->a([BI)I

    move-result v2

    .line 176
    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/e/n;->g:Landroidx/media2/exoplayer/external/util/p;

    iget-object v7, v0, Landroidx/media2/exoplayer/external/extractor/e/n;->j:Landroidx/media2/exoplayer/external/extractor/e/t;

    iget-object v7, v7, Landroidx/media2/exoplayer/external/extractor/e/t;->b:[B

    invoke-virtual {v6, v7, v2}, Landroidx/media2/exoplayer/external/util/p;->a([BI)V

    .line 177
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/e/n;->f:Landroidx/media2/exoplayer/external/extractor/e/aj;

    iget-wide v6, v0, Landroidx/media2/exoplayer/external/extractor/e/n;->o:J

    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/e/n;->g:Landroidx/media2/exoplayer/external/util/p;

    .line 5077
    invoke-virtual {v8}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v9

    const/16 v10, 0x9

    if-lt v9, v10, :cond_f

    .line 5080
    invoke-virtual {v8}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v9

    .line 5081
    invoke-virtual {v8}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v10

    .line 5082
    invoke-virtual {v8}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v11

    const/16 v12, 0x1b2

    if-ne v9, v12, :cond_f

    const v9, 0x47413934

    if-ne v10, v9, :cond_f

    const/4 v9, 0x3

    if-ne v11, v9, :cond_f

    .line 5086
    iget-object v2, v2, Landroidx/media2/exoplayer/external/extractor/e/aj;->b:[Landroidx/media2/exoplayer/external/extractor/q;

    invoke-static {v6, v7, v8, v2}, Landroidx/media2/exoplayer/external/text/a/f;->b(JLandroidx/media2/exoplayer/external/util/p;[Landroidx/media2/exoplayer/external/extractor/q;)V

    :cond_f
    const/16 v2, 0xb2

    move/from16 v6, v16

    if-ne v6, v2, :cond_11

    .line 180
    iget-object v2, v1, Landroidx/media2/exoplayer/external/util/p;->a:[B

    add-int/lit8 v7, v5, 0x2

    aget-byte v2, v2, v7

    const/4 v7, 0x1

    if-ne v2, v7, :cond_11

    .line 181
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/e/n;->j:Landroidx/media2/exoplayer/external/extractor/e/t;

    invoke-virtual {v2, v6}, Landroidx/media2/exoplayer/external/extractor/e/t;->a(I)V

    goto :goto_a

    :cond_10
    move/from16 v6, v16

    :cond_11
    :goto_a
    if-eqz v6, :cond_13

    const/16 v2, 0xb3

    if-ne v6, v2, :cond_12

    goto :goto_b

    :cond_12
    const/16 v2, 0xb8

    if-ne v6, v2, :cond_1a

    const/4 v2, 0x1

    .line 203
    iput-boolean v2, v0, Landroidx/media2/exoplayer/external/extractor/e/n;->p:Z

    goto :goto_f

    :cond_13
    :goto_b
    sub-int v2, v3, v5

    .line 186
    iget-boolean v5, v0, Landroidx/media2/exoplayer/external/extractor/e/n;->l:Z

    if-eqz v5, :cond_14

    iget-boolean v5, v0, Landroidx/media2/exoplayer/external/extractor/e/n;->q:Z

    if-eqz v5, :cond_14

    iget-boolean v5, v0, Landroidx/media2/exoplayer/external/extractor/e/n;->d:Z

    if-eqz v5, :cond_14

    .line 188
    iget-boolean v10, v0, Landroidx/media2/exoplayer/external/extractor/e/n;->p:Z

    .line 189
    iget-wide v7, v0, Landroidx/media2/exoplayer/external/extractor/e/n;->k:J

    iget-wide v11, v0, Landroidx/media2/exoplayer/external/extractor/e/n;->n:J

    sub-long/2addr v7, v11

    long-to-int v5, v7

    sub-int v11, v5, v2

    .line 190
    iget-object v7, v0, Landroidx/media2/exoplayer/external/extractor/e/n;->b:Landroidx/media2/exoplayer/external/extractor/q;

    iget-wide v8, v0, Landroidx/media2/exoplayer/external/extractor/e/n;->o:J

    const/4 v13, 0x0

    move v12, v2

    invoke-interface/range {v7 .. v13}, Landroidx/media2/exoplayer/external/extractor/q;->a(JIIILandroidx/media2/exoplayer/external/extractor/q$a;)V

    .line 192
    :cond_14
    iget-boolean v5, v0, Landroidx/media2/exoplayer/external/extractor/e/n;->l:Z

    if-eqz v5, :cond_16

    iget-boolean v7, v0, Landroidx/media2/exoplayer/external/extractor/e/n;->q:Z

    if-eqz v7, :cond_15

    goto :goto_c

    :cond_15
    const/4 v2, 0x0

    const/4 v5, 0x1

    goto :goto_e

    .line 194
    :cond_16
    :goto_c
    iget-wide v7, v0, Landroidx/media2/exoplayer/external/extractor/e/n;->k:J

    int-to-long v9, v2

    sub-long/2addr v7, v9

    iput-wide v7, v0, Landroidx/media2/exoplayer/external/extractor/e/n;->n:J

    .line 195
    iget-wide v7, v0, Landroidx/media2/exoplayer/external/extractor/e/n;->m:J

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v7, v9

    if-eqz v2, :cond_17

    goto :goto_d

    :cond_17
    if-eqz v5, :cond_18

    .line 196
    iget-wide v7, v0, Landroidx/media2/exoplayer/external/extractor/e/n;->o:J

    iget-wide v11, v0, Landroidx/media2/exoplayer/external/extractor/e/n;->e:J

    add-long/2addr v7, v11

    goto :goto_d

    :cond_18
    const-wide/16 v7, 0x0

    :goto_d
    iput-wide v7, v0, Landroidx/media2/exoplayer/external/extractor/e/n;->o:J

    const/4 v2, 0x0

    .line 197
    iput-boolean v2, v0, Landroidx/media2/exoplayer/external/extractor/e/n;->p:Z

    .line 198
    iput-wide v9, v0, Landroidx/media2/exoplayer/external/extractor/e/n;->m:J

    const/4 v5, 0x1

    .line 199
    iput-boolean v5, v0, Landroidx/media2/exoplayer/external/extractor/e/n;->l:Z

    :goto_e
    if-nez v6, :cond_19

    const/4 v2, 0x1

    .line 201
    :cond_19
    iput-boolean v2, v0, Landroidx/media2/exoplayer/external/extractor/e/n;->q:Z

    :cond_1a
    :goto_f
    move v2, v15

    goto/16 :goto_0
.end method

.method public final b()V
    .locals 0

    return-void
.end method
