.class public final Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$a;,
        Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$c;,
        Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$d;,
        Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$b;,
        Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$e;,
        Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$a;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/mediacodec/g;",
            ">;>;"
        }
    .end annotation
.end field

.field private static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^\\D?(\\d+)$"

    .line 65
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->a:Ljava/util/regex/Pattern;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->b:Ljava/util/HashMap;

    const/4 v0, -0x1

    .line 85
    sput v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->c:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic a(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/mediacodec/g;)I
    .locals 0

    .line 201
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/mediacodec/g;->a(Lcom/google/android/exoplayer2/Format;)Z

    move-result p0
    :try_end_0
    .catch Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :catch_0
    const/4 p0, -0x1

    return p0
.end method

.method private static synthetic a(Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$e;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 909
    invoke-interface {p0, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$e;->getScore(Ljava/lang/Object;)I

    move-result p2

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$e;->getScore(Ljava/lang/Object;)I

    move-result p0

    sub-int/2addr p2, p0

    return p2
.end method

.method private static synthetic a(Lcom/google/android/exoplayer2/mediacodec/g;)I
    .locals 1

    .line 578
    iget-object p0, p0, Lcom/google/android/exoplayer2/mediacodec/g;->a:Ljava/lang/String;

    const-string v0, "OMX.google"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Lcom/google/android/exoplayer2/Format;)Landroid/util/Pair;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/Format;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 243
    iget-object v1, v0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 246
    :cond_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    const-string v3, "\\."

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 248
    iget-object v3, v0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v4, "video/dolby-vision"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v4, 0x200

    const/16 v5, 0x100

    const/16 v6, 0x80

    const/16 v7, 0x40

    const/16 v8, 0x20

    const/16 v11, 0x10

    const/4 v15, 0x0

    const/16 v16, 0x8

    const/4 v9, 0x3

    const-string v10, "MediaCodecUtil"

    const/4 v12, 0x4

    const/16 v17, 0x2

    const/4 v13, 0x1

    if-eqz v3, :cond_1e

    .line 249
    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    .line 2667
    array-length v3, v1

    const-string v14, "Ignoring malformed Dolby Vision codec string: "

    if-ge v3, v9, :cond_1

    .line 2669
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 2673
    :cond_1
    sget-object v3, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->a:Ljava/util/regex/Pattern;

    aget-object v9, v1, v13

    invoke-virtual {v3, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 2674
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-nez v9, :cond_2

    .line 2675
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 2678
    :cond_2
    invoke-virtual {v3, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "01"

    if-eqz v0, :cond_d

    .line 3244
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    :goto_0
    const/4 v9, -0x1

    goto/16 :goto_1

    :pswitch_0
    const-string v9, "09"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_0

    :cond_3
    const/16 v9, 0x9

    goto/16 :goto_1

    :pswitch_1
    const-string v9, "08"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_0

    :cond_4
    const/16 v9, 0x8

    goto :goto_1

    :pswitch_2
    const-string v9, "07"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    goto :goto_0

    :cond_5
    const/4 v9, 0x7

    goto :goto_1

    :pswitch_3
    const-string v9, "06"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    goto :goto_0

    :cond_6
    const/4 v9, 0x6

    goto :goto_1

    :pswitch_4
    const-string v9, "05"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    goto :goto_0

    :cond_7
    const/4 v9, 0x5

    goto :goto_1

    :pswitch_5
    const-string v9, "04"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    goto :goto_0

    :cond_8
    const/4 v9, 0x4

    goto :goto_1

    :pswitch_6
    const-string v9, "03"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    goto :goto_0

    :cond_9
    const/4 v9, 0x3

    goto :goto_1

    :pswitch_7
    const-string v9, "02"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    goto :goto_0

    :cond_a
    const/4 v9, 0x2

    goto :goto_1

    :pswitch_8
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    goto :goto_0

    :cond_b
    const/4 v9, 0x1

    goto :goto_1

    :pswitch_9
    const-string v9, "00"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    goto :goto_0

    :cond_c
    const/4 v9, 0x0

    :goto_1
    packed-switch v9, :pswitch_data_1

    goto :goto_2

    .line 3264
    :pswitch_a
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_3

    .line 3262
    :pswitch_b
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_3

    .line 3260
    :pswitch_c
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_3

    .line 3258
    :pswitch_d
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_3

    .line 3256
    :pswitch_e
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_3

    .line 3254
    :pswitch_f
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_3

    .line 3252
    :pswitch_10
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_3

    .line 3250
    :pswitch_11
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_3

    .line 3248
    :pswitch_12
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_3

    .line 3246
    :pswitch_13
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_3

    :cond_d
    :goto_2
    move-object v9, v2

    :goto_3
    if-nez v9, :cond_e

    .line 2681
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unknown Dolby Vision profile string: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 2684
    :cond_e
    aget-object v0, v1, v17

    if-eqz v0, :cond_1c

    .line 3276
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_4
    const/16 v18, -0x1

    goto/16 :goto_5

    :sswitch_0
    const-string v1, "13"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_4

    :cond_f
    const/16 v1, 0xc

    const/16 v18, 0xc

    goto/16 :goto_5

    :sswitch_1
    const-string v1, "12"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_4

    :cond_10
    const/16 v1, 0xb

    const/16 v18, 0xb

    goto/16 :goto_5

    :sswitch_2
    const-string v1, "11"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_4

    :cond_11
    const/16 v1, 0xa

    const/16 v18, 0xa

    goto/16 :goto_5

    :sswitch_3
    const-string v1, "10"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_4

    :cond_12
    const/16 v18, 0x9

    goto/16 :goto_5

    :sswitch_4
    const-string v1, "09"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_4

    :cond_13
    const/16 v18, 0x8

    goto/16 :goto_5

    :sswitch_5
    const-string v1, "08"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_4

    :cond_14
    const/16 v18, 0x7

    goto :goto_5

    :sswitch_6
    const-string v1, "07"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_4

    :cond_15
    const/16 v18, 0x6

    goto :goto_5

    :sswitch_7
    const-string v1, "06"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_4

    :cond_16
    const/16 v18, 0x5

    goto :goto_5

    :sswitch_8
    const-string v1, "05"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_4

    :cond_17
    const/16 v18, 0x4

    goto :goto_5

    :sswitch_9
    const-string v1, "04"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    goto/16 :goto_4

    :cond_18
    const/16 v18, 0x3

    goto :goto_5

    :sswitch_a
    const-string v1, "03"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    goto/16 :goto_4

    :cond_19
    const/16 v18, 0x2

    goto :goto_5

    :sswitch_b
    const-string v1, "02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    goto/16 :goto_4

    :cond_1a
    const/16 v18, 0x1

    goto :goto_5

    :sswitch_c
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    goto/16 :goto_4

    :cond_1b
    const/16 v18, 0x0

    :goto_5
    packed-switch v18, :pswitch_data_2

    goto :goto_6

    :pswitch_14
    const/16 v1, 0x1000

    .line 3302
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_7

    :pswitch_15
    const/16 v1, 0x800

    .line 3300
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_7

    :pswitch_16
    const/16 v1, 0x400

    .line 3298
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_7

    .line 3296
    :pswitch_17
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_7

    .line 3294
    :pswitch_18
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_7

    .line 3292
    :pswitch_19
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_7

    .line 3290
    :pswitch_1a
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_7

    .line 3288
    :pswitch_1b
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_7

    .line 3286
    :pswitch_1c
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_7

    .line 3284
    :pswitch_1d
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_7

    .line 3282
    :pswitch_1e
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_7

    .line 3280
    :pswitch_1f
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_7

    .line 3278
    :pswitch_20
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_7

    :cond_1c
    :goto_6
    move-object v1, v2

    :goto_7
    if-nez v1, :cond_1d

    .line 2687
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unknown Dolby Vision level string: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 2690
    :cond_1d
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v9, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 251
    :cond_1e
    aget-object v3, v1, v15

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_1

    :goto_8
    const/4 v3, -0x1

    goto :goto_9

    :sswitch_d
    const-string v9, "vp09"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    goto :goto_8

    :cond_1f
    const/4 v3, 0x6

    goto :goto_9

    :sswitch_e
    const-string v9, "mp4a"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    goto :goto_8

    :cond_20
    const/4 v3, 0x5

    goto :goto_9

    :sswitch_f
    const-string v9, "hvc1"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    goto :goto_8

    :cond_21
    const/4 v3, 0x4

    goto :goto_9

    :sswitch_10
    const-string v9, "hev1"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    goto :goto_8

    :cond_22
    const/4 v3, 0x3

    goto :goto_9

    :sswitch_11
    const-string v9, "avc2"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    goto :goto_8

    :cond_23
    const/4 v3, 0x2

    goto :goto_9

    :sswitch_12
    const-string v9, "avc1"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    goto :goto_8

    :cond_24
    const/4 v3, 0x1

    goto :goto_9

    :sswitch_13
    const-string v9, "av01"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    goto :goto_8

    :cond_25
    const/4 v3, 0x0

    :goto_9
    packed-switch v3, :pswitch_data_3

    return-object v2

    .line 256
    :pswitch_21
    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->b(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 263
    :pswitch_22
    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->c(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 259
    :pswitch_23
    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    .line 3695
    array-length v3, v1

    const-string v9, "Ignoring malformed HEVC codec string: "

    if-ge v3, v12, :cond_26

    .line 3697
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 3701
    :cond_26
    sget-object v3, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->a:Ljava/util/regex/Pattern;

    aget-object v14, v1, v13

    invoke-virtual {v3, v14}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 3702
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v14

    if-nez v14, :cond_27

    .line 3703
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 3706
    :cond_27
    invoke-virtual {v3, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    .line 3708
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/4 v0, 0x1

    :goto_a
    const/4 v3, 0x3

    goto :goto_b

    :cond_28
    const-string v3, "2"

    .line 3710
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    const/4 v0, 0x2

    goto :goto_a

    .line 3716
    :goto_b
    aget-object v1, v1, v3

    if-eqz v1, :cond_43

    .line 4181
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_2

    :goto_c
    const/4 v9, -0x1

    goto/16 :goto_d

    :sswitch_14
    const-string v3, "L186"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    goto :goto_c

    :cond_29
    const/16 v9, 0x19

    goto/16 :goto_d

    :sswitch_15
    const-string v3, "L183"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    goto :goto_c

    :cond_2a
    const/16 v9, 0x18

    goto/16 :goto_d

    :sswitch_16
    const-string v3, "L180"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    goto :goto_c

    :cond_2b
    const/16 v9, 0x17

    goto/16 :goto_d

    :sswitch_17
    const-string v3, "L156"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2c

    goto :goto_c

    :cond_2c
    const/16 v9, 0x16

    goto/16 :goto_d

    :sswitch_18
    const-string v3, "L153"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d

    goto :goto_c

    :cond_2d
    const/16 v9, 0x15

    goto/16 :goto_d

    :sswitch_19
    const-string v3, "L150"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    goto :goto_c

    :cond_2e
    const/16 v9, 0x14

    goto/16 :goto_d

    :sswitch_1a
    const-string v3, "L123"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    goto :goto_c

    :cond_2f
    const/16 v9, 0x13

    goto/16 :goto_d

    :sswitch_1b
    const-string v3, "L120"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    goto :goto_c

    :cond_30
    const/16 v9, 0x12

    goto/16 :goto_d

    :sswitch_1c
    const-string v3, "H186"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    goto :goto_c

    :cond_31
    const/16 v9, 0x11

    goto/16 :goto_d

    :sswitch_1d
    const-string v3, "H183"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    goto/16 :goto_c

    :cond_32
    const/16 v9, 0x10

    goto/16 :goto_d

    :sswitch_1e
    const-string v3, "H180"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_33

    goto/16 :goto_c

    :cond_33
    const/16 v9, 0xf

    goto/16 :goto_d

    :sswitch_1f
    const-string v3, "H156"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    goto/16 :goto_c

    :cond_34
    const/16 v9, 0xe

    goto/16 :goto_d

    :sswitch_20
    const-string v3, "H153"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_35

    goto/16 :goto_c

    :cond_35
    const/16 v9, 0xd

    goto/16 :goto_d

    :sswitch_21
    const-string v3, "H150"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    goto/16 :goto_c

    :cond_36
    const/16 v9, 0xc

    goto/16 :goto_d

    :sswitch_22
    const-string v3, "H123"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_37

    goto/16 :goto_c

    :cond_37
    const/16 v9, 0xb

    goto/16 :goto_d

    :sswitch_23
    const-string v3, "H120"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_38

    goto/16 :goto_c

    :cond_38
    const/16 v9, 0xa

    goto/16 :goto_d

    :sswitch_24
    const-string v3, "L93"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_39

    goto/16 :goto_c

    :cond_39
    const/16 v9, 0x9

    goto/16 :goto_d

    :sswitch_25
    const-string v3, "L90"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3a

    goto/16 :goto_c

    :cond_3a
    const/16 v9, 0x8

    goto/16 :goto_d

    :sswitch_26
    const-string v3, "L63"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3b

    goto/16 :goto_c

    :cond_3b
    const/4 v9, 0x7

    goto :goto_d

    :sswitch_27
    const-string v3, "L60"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    goto/16 :goto_c

    :cond_3c
    const/4 v9, 0x6

    goto :goto_d

    :sswitch_28
    const-string v3, "L30"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3d

    goto/16 :goto_c

    :cond_3d
    const/4 v9, 0x5

    goto :goto_d

    :sswitch_29
    const-string v3, "H93"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    goto/16 :goto_c

    :cond_3e
    const/4 v9, 0x4

    goto :goto_d

    :sswitch_2a
    const-string v9, "H90"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3f

    goto/16 :goto_c

    :cond_3f
    const/4 v9, 0x3

    goto :goto_d

    :sswitch_2b
    const-string v3, "H63"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_40

    goto/16 :goto_c

    :cond_40
    const/4 v9, 0x2

    goto :goto_d

    :sswitch_2c
    const-string v3, "H60"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_41

    goto/16 :goto_c

    :cond_41
    const/4 v9, 0x1

    goto :goto_d

    :sswitch_2d
    const-string v3, "H30"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_42

    goto/16 :goto_c

    :cond_42
    const/4 v9, 0x0

    :goto_d
    packed-switch v9, :pswitch_data_4

    goto/16 :goto_e

    :pswitch_24
    const/high16 v3, 0x1000000

    .line 4207
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto/16 :goto_f

    :pswitch_25
    const/high16 v3, 0x400000

    .line 4205
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto/16 :goto_f

    :pswitch_26
    const/high16 v3, 0x100000

    .line 4203
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto/16 :goto_f

    :pswitch_27
    const/high16 v3, 0x40000

    .line 4201
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto/16 :goto_f

    :pswitch_28
    const/high16 v3, 0x10000

    .line 4199
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto/16 :goto_f

    :pswitch_29
    const/16 v3, 0x4000

    .line 4197
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto/16 :goto_f

    :pswitch_2a
    const/16 v3, 0x1000

    .line 4195
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto/16 :goto_f

    :pswitch_2b
    const/16 v3, 0x400

    .line 4193
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto/16 :goto_f

    :pswitch_2c
    const/high16 v3, 0x2000000

    .line 4233
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto/16 :goto_f

    :pswitch_2d
    const/high16 v3, 0x800000

    .line 4231
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto/16 :goto_f

    :pswitch_2e
    const/high16 v3, 0x200000

    .line 4229
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_f

    :pswitch_2f
    const/high16 v3, 0x80000

    .line 4227
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_f

    :pswitch_30
    const/high16 v3, 0x20000

    .line 4225
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_f

    :pswitch_31
    const v3, 0x8000

    .line 4223
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_f

    :pswitch_32
    const/16 v3, 0x2000

    .line 4221
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_f

    :pswitch_33
    const/16 v3, 0x800

    .line 4219
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_f

    .line 4191
    :pswitch_34
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_f

    .line 4189
    :pswitch_35
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_f

    .line 4187
    :pswitch_36
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_f

    .line 4185
    :pswitch_37
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_f

    .line 4183
    :pswitch_38
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_f

    .line 4217
    :pswitch_39
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_f

    .line 4215
    :pswitch_3a
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_f

    .line 4213
    :pswitch_3b
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_f

    .line 4211
    :pswitch_3c
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_f

    .line 4209
    :pswitch_3d
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_f

    :cond_43
    :goto_e
    move-object v3, v2

    :goto_f
    if-nez v3, :cond_44

    .line 3719
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unknown HEVC level string: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 3722
    :cond_44
    new-instance v1, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 3713
    :cond_45
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unknown HEVC profile string: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 254
    :pswitch_3e
    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->a(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 261
    :pswitch_3f
    iget-object v2, v0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    invoke-static {v2, v1, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->a(Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/exoplayer2/video/ColorInfo;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x600
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x601 -> :sswitch_c
        0x602 -> :sswitch_b
        0x603 -> :sswitch_a
        0x604 -> :sswitch_9
        0x605 -> :sswitch_8
        0x606 -> :sswitch_7
        0x607 -> :sswitch_6
        0x608 -> :sswitch_5
        0x609 -> :sswitch_4
        0x61f -> :sswitch_3
        0x620 -> :sswitch_2
        0x621 -> :sswitch_1
        0x622 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x2dd8f6 -> :sswitch_13
        0x2ddf23 -> :sswitch_12
        0x2ddf24 -> :sswitch_11
        0x30d038 -> :sswitch_10
        0x310dbc -> :sswitch_f
        0x333790 -> :sswitch_e
        0x374e43 -> :sswitch_d
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3f
        :pswitch_3e
        :pswitch_3e
        :pswitch_23
        :pswitch_23
        :pswitch_22
        :pswitch_21
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        0x114a5 -> :sswitch_2d
        0x11502 -> :sswitch_2c
        0x11505 -> :sswitch_2b
        0x1155f -> :sswitch_2a
        0x11562 -> :sswitch_29
        0x123a9 -> :sswitch_28
        0x12406 -> :sswitch_27
        0x12409 -> :sswitch_26
        0x12463 -> :sswitch_25
        0x12466 -> :sswitch_24
        0x2178e7 -> :sswitch_23
        0x2178ea -> :sswitch_22
        0x217944 -> :sswitch_21
        0x217947 -> :sswitch_20
        0x21794a -> :sswitch_1f
        0x2179a1 -> :sswitch_1e
        0x2179a4 -> :sswitch_1d
        0x2179a7 -> :sswitch_1c
        0x234a63 -> :sswitch_1b
        0x234a66 -> :sswitch_1a
        0x234ac0 -> :sswitch_19
        0x234ac3 -> :sswitch_18
        0x234ac6 -> :sswitch_17
        0x234b1d -> :sswitch_16
        0x234b20 -> :sswitch_15
        0x234b23 -> :sswitch_14
    .end sparse-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 727
    array-length v0, p1

    const-string v1, "Ignoring malformed AVC codec string: "

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "MediaCodecUtil"

    if-ge v0, v2, :cond_0

    .line 729
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_0
    const/4 v0, 0x1

    .line 735
    :try_start_0
    aget-object v5, p1, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x6

    const/4 v7, 0x4

    const/16 v8, 0x10

    if-ne v5, v6, :cond_1

    .line 737
    aget-object v5, p1, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 738
    aget-object p1, p1, v0

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    goto :goto_0

    .line 739
    :cond_1
    array-length v5, p1

    const/4 v6, 0x3

    if-lt v5, v6, :cond_b

    .line 741
    aget-object v5, p1, v0

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 742
    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/16 p1, 0x42

    const/16 v1, 0x40

    const/16 v6, 0x20

    const/16 v9, 0x8

    const/4 v10, -0x1

    if-eq v5, p1, :cond_7

    const/16 p1, 0x4d

    if-eq v5, p1, :cond_8

    const/16 p1, 0x58

    if-eq v5, p1, :cond_6

    const/16 p1, 0x64

    if-eq v5, p1, :cond_5

    const/16 p1, 0x6e

    if-eq v5, p1, :cond_4

    const/16 p1, 0x7a

    if-eq v5, p1, :cond_3

    const/16 p1, 0xf4

    if-eq v5, p1, :cond_2

    const/4 v2, -0x1

    goto :goto_1

    :cond_2
    const/16 v2, 0x40

    goto :goto_1

    :cond_3
    const/16 v2, 0x20

    goto :goto_1

    :cond_4
    const/16 v2, 0x10

    goto :goto_1

    :cond_5
    const/16 v2, 0x8

    goto :goto_1

    :cond_6
    const/4 v2, 0x4

    goto :goto_1

    :cond_7
    const/4 v2, 0x1

    :cond_8
    :goto_1
    if-ne v2, v10, :cond_9

    .line 755
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Unknown AVC profile: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_9
    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    packed-switch p0, :pswitch_data_4

    const/4 v0, -0x1

    goto :goto_2

    :pswitch_0
    const/high16 v0, 0x10000

    goto :goto_2

    :pswitch_1
    const v0, 0x8000

    goto :goto_2

    :pswitch_2
    const/16 v0, 0x4000

    goto :goto_2

    :pswitch_3
    const/16 v0, 0x2000

    goto :goto_2

    :pswitch_4
    const/16 v0, 0x1000

    goto :goto_2

    :pswitch_5
    const/16 v0, 0x800

    goto :goto_2

    :pswitch_6
    const/16 v0, 0x400

    goto :goto_2

    :pswitch_7
    const/16 v0, 0x200

    goto :goto_2

    :pswitch_8
    const/16 v0, 0x100

    goto :goto_2

    :pswitch_9
    const/16 v0, 0x80

    goto :goto_2

    :pswitch_a
    const/16 v0, 0x40

    goto :goto_2

    :pswitch_b
    const/16 v0, 0x20

    goto :goto_2

    :pswitch_c
    const/16 v0, 0x10

    goto :goto_2

    :pswitch_d
    const/16 v0, 0x8

    goto :goto_2

    :pswitch_e
    const/4 v0, 0x4

    :goto_2
    :pswitch_f
    if-ne v0, v10, :cond_a

    .line 760
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Unknown AVC level: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 763
    :cond_a
    new-instance p0, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 745
    :cond_b
    :try_start_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v3

    .line 749
    :catch_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1e
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x28
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x32
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/exoplayer2/video/ColorInfo;)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/video/ColorInfo;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 798
    array-length v0, p1

    const-string v1, "Ignoring malformed AV1 codec string: "

    const/4 v2, 0x4

    const/4 v3, 0x0

    const-string v4, "MediaCodecUtil"

    if-ge v0, v2, :cond_0

    .line 799
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_0
    const/4 v0, 0x1

    .line 806
    :try_start_0
    aget-object v5, p1, v0

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    .line 807
    aget-object v7, p1, v6

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x3

    .line 808
    aget-object p1, p1, v8

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_1

    .line 815
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Unknown AV1 profile: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_1
    const/16 p1, 0x8

    if-eq p0, p1, :cond_2

    const/16 v1, 0xa

    if-eq p0, v1, :cond_2

    .line 819
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Unknown AV1 bit depth: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_2
    const/16 v1, 0x1000

    if-ne p0, p1, :cond_3

    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_5

    .line 825
    iget-object p0, p2, Lcom/google/android/exoplayer2/video/ColorInfo;->hdrStaticInfo:[B

    if-nez p0, :cond_4

    iget p0, p2, Lcom/google/android/exoplayer2/video/ColorInfo;->colorTransfer:I

    const/4 v5, 0x7

    if-eq p0, v5, :cond_4

    iget p0, p2, Lcom/google/android/exoplayer2/video/ColorInfo;->colorTransfer:I

    const/4 p2, 0x6

    if-ne p0, p2, :cond_5

    :cond_4
    const/16 p0, 0x1000

    goto :goto_0

    :cond_5
    const/4 p0, 0x2

    :goto_0
    const/4 p2, -0x1

    packed-switch v7, :pswitch_data_0

    const/4 v2, -0x1

    goto :goto_1

    :pswitch_0
    const/high16 v2, 0x800000

    goto :goto_1

    :pswitch_1
    const/high16 v2, 0x400000

    goto :goto_1

    :pswitch_2
    const/high16 v2, 0x200000

    goto :goto_1

    :pswitch_3
    const/high16 v2, 0x100000

    goto :goto_1

    :pswitch_4
    const/high16 v2, 0x80000

    goto :goto_1

    :pswitch_5
    const/high16 v2, 0x40000

    goto :goto_1

    :pswitch_6
    const/high16 v2, 0x20000

    goto :goto_1

    :pswitch_7
    const/high16 v2, 0x10000

    goto :goto_1

    :pswitch_8
    const v2, 0x8000

    goto :goto_1

    :pswitch_9
    const/16 v2, 0x4000

    goto :goto_1

    :pswitch_a
    const/16 v2, 0x2000

    goto :goto_1

    :pswitch_b
    const/16 v2, 0x1000

    goto :goto_1

    :pswitch_c
    const/16 v2, 0x800

    goto :goto_1

    :pswitch_d
    const/16 v2, 0x400

    goto :goto_1

    :pswitch_e
    const/16 v2, 0x200

    goto :goto_1

    :pswitch_f
    const/16 v2, 0x100

    goto :goto_1

    :pswitch_10
    const/16 v2, 0x80

    goto :goto_1

    :pswitch_11
    const/16 v2, 0x40

    goto :goto_1

    :pswitch_12
    const/16 v2, 0x20

    goto :goto_1

    :pswitch_13
    const/16 v2, 0x10

    goto :goto_1

    :pswitch_14
    const/16 v2, 0x8

    goto :goto_1

    :pswitch_15
    const/4 v2, 0x2

    goto :goto_1

    :pswitch_16
    const/4 v2, 0x1

    :goto_1
    :pswitch_17
    if-ne v2, p2, :cond_6

    .line 836
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Unknown AV1 level: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 839
    :cond_6
    new-instance p1, Landroid/util/Pair;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 810
    :catch_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_17
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a()Lcom/google/android/exoplayer2/mediacodec/g;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    const-string v0, "audio/raw"

    .line 127
    invoke-static {v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->a(Ljava/lang/String;)Lcom/google/android/exoplayer2/mediacodec/g;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Lcom/google/android/exoplayer2/mediacodec/g;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 144
    invoke-static {p0, v0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->a(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    .line 145
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/mediacodec/g;

    return-object p0
.end method

.method private static a(Landroid/media/MediaCodecInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 390
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object p0

    .line 391
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 392
    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "video/dolby-vision"

    .line 397
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "OMX.MS.HEVCDV.Decoder"

    .line 400
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "video/hevcdv"

    return-object p0

    :cond_2
    const-string p0, "OMX.RTK.video.decoder"

    .line 402
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "OMX.realtek.video.decoder.tunneled"

    .line 403
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_3
    const-string p0, "video/dv_hevc"

    return-object p0

    :cond_4
    const-string p0, "audio/alac"

    .line 406
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "OMX.lge.alac.decoder"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "audio/x-lg-alac"

    return-object p0

    :cond_5
    const-string p0, "audio/flac"

    .line 408
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "OMX.lge.flac.decoder"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "audio/x-lg-flac"

    return-object p0

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$a;Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$b;)Ljava/util/ArrayList;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$a;",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$b;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/mediacodec/g;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "secure-playback"

    const-string v4, "tunneled-playback"

    .line 283
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 284
    iget-object v14, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$a;->a:Ljava/lang/String;

    .line 285
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$b;->a()I

    move-result v15

    .line 286
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$b;->b()Z

    move-result v16

    const/16 v17, 0x0

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v15, :cond_1a

    .line 289
    invoke-interface {v2, v13}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$b;->a(I)Landroid/media/MediaCodecInfo;

    move-result-object v0

    .line 4593
    sget v6, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v7, 0x1d

    if-lt v6, v7, :cond_0

    .line 4598
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->isAlias()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    if-nez v6, :cond_18

    .line 295
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v12

    .line 5429
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v9, ".secure"

    if-nez v6, :cond_b

    if-nez v16, :cond_1

    :try_start_1
    invoke-virtual {v12, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto/16 :goto_2

    .line 5434
    :cond_1
    sget v6, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v10, 0x15

    if-ge v6, v10, :cond_2

    const-string v6, "CIPAACDecoder"

    .line 5435
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string v6, "CIPMP3Decoder"

    .line 5436
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string v6, "CIPVorbisDecoder"

    .line 5437
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string v6, "CIPAMRNBDecoder"

    .line 5438
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string v6, "AACDecoder"

    .line 5439
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string v6, "MP3Decoder"

    .line 5440
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto/16 :goto_2

    .line 5446
    :cond_2
    sget v6, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v10, 0x12

    if-ge v6, v10, :cond_3

    const-string v6, "OMX.MTK.AUDIO.DECODER.AAC"

    .line 5447
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "a70"

    sget-object v10, Lcom/google/android/exoplayer2/util/af;->b:Ljava/lang/String;

    .line 5448
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string v6, "Xiaomi"

    sget-object v10, Lcom/google/android/exoplayer2/util/af;->c:Ljava/lang/String;

    .line 5449
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    sget-object v6, Lcom/google/android/exoplayer2/util/af;->b:Ljava/lang/String;

    const-string v10, "HM"

    invoke-virtual {v6, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto/16 :goto_2

    .line 5455
    :cond_3
    sget v6, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v10, 0x10

    if-ne v6, v10, :cond_4

    const-string v6, "OMX.qcom.audio.decoder.mp3"

    .line 5456
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "dlxu"

    sget-object v11, Lcom/google/android/exoplayer2/util/af;->b:Ljava/lang/String;

    .line 5457
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string v6, "protou"

    sget-object v11, Lcom/google/android/exoplayer2/util/af;->b:Ljava/lang/String;

    .line 5458
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string v6, "ville"

    sget-object v11, Lcom/google/android/exoplayer2/util/af;->b:Ljava/lang/String;

    .line 5459
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string v6, "villeplus"

    sget-object v11, Lcom/google/android/exoplayer2/util/af;->b:Ljava/lang/String;

    .line 5460
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string v6, "villec2"

    sget-object v11, Lcom/google/android/exoplayer2/util/af;->b:Ljava/lang/String;

    .line 5461
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    sget-object v6, Lcom/google/android/exoplayer2/util/af;->b:Ljava/lang/String;

    const-string v11, "gee"

    .line 5462
    invoke-virtual {v6, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string v6, "C6602"

    sget-object v11, Lcom/google/android/exoplayer2/util/af;->b:Ljava/lang/String;

    .line 5463
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string v6, "C6603"

    sget-object v11, Lcom/google/android/exoplayer2/util/af;->b:Ljava/lang/String;

    .line 5464
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string v6, "C6606"

    sget-object v11, Lcom/google/android/exoplayer2/util/af;->b:Ljava/lang/String;

    .line 5465
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string v6, "C6616"

    sget-object v11, Lcom/google/android/exoplayer2/util/af;->b:Ljava/lang/String;

    .line 5466
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string v6, "L36h"

    sget-object v11, Lcom/google/android/exoplayer2/util/af;->b:Ljava/lang/String;

    .line 5467
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string v6, "SO-02E"

    sget-object v11, Lcom/google/android/exoplayer2/util/af;->b:Ljava/lang/String;

    .line 5468
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto/16 :goto_2

    .line 5473
    :cond_4
    sget v6, Lcom/google/android/exoplayer2/util/af;->a:I

    if-ne v6, v10, :cond_5

    const-string v6, "OMX.qcom.audio.decoder.aac"

    .line 5474
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "C1504"

    sget-object v10, Lcom/google/android/exoplayer2/util/af;->b:Ljava/lang/String;

    .line 5475
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string v6, "C1505"

    sget-object v10, Lcom/google/android/exoplayer2/util/af;->b:Ljava/lang/String;

    .line 5476
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string v6, "C1604"

    sget-object v10, Lcom/google/android/exoplayer2/util/af;->b:Ljava/lang/String;

    .line 5477
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string v6, "C1605"

    sget-object v10, Lcom/google/android/exoplayer2/util/af;->b:Ljava/lang/String;

    .line 5478
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto/16 :goto_2

    .line 5483
    :cond_5
    sget v6, Lcom/google/android/exoplayer2/util/af;->a:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const/16 v10, 0x18

    const-string v11, "samsung"

    if-ge v6, v10, :cond_7

    :try_start_2
    const-string v6, "OMX.SEC.aac.dec"

    .line 5484
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "OMX.Exynos.AAC.Decoder"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_6
    sget-object v6, Lcom/google/android/exoplayer2/util/af;->c:Ljava/lang/String;

    .line 5485
    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    sget-object v6, Lcom/google/android/exoplayer2/util/af;->b:Ljava/lang/String;

    const-string v10, "zeroflte"

    .line 5486
    invoke-virtual {v6, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_b

    sget-object v6, Lcom/google/android/exoplayer2/util/af;->b:Ljava/lang/String;

    const-string v10, "zerolte"

    .line 5487
    invoke-virtual {v6, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_b

    sget-object v6, Lcom/google/android/exoplayer2/util/af;->b:Ljava/lang/String;

    const-string v10, "zenlte"

    .line 5488
    invoke-virtual {v6, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string v6, "SC-05G"

    sget-object v10, Lcom/google/android/exoplayer2/util/af;->b:Ljava/lang/String;

    .line 5489
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string v6, "marinelteatt"

    sget-object v10, Lcom/google/android/exoplayer2/util/af;->b:Ljava/lang/String;

    .line 5490
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string v6, "404SC"

    sget-object v10, Lcom/google/android/exoplayer2/util/af;->b:Ljava/lang/String;

    .line 5491
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string v6, "SC-04G"

    sget-object v10, Lcom/google/android/exoplayer2/util/af;->b:Ljava/lang/String;

    .line 5492
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string v6, "SCV31"

    sget-object v10, Lcom/google/android/exoplayer2/util/af;->b:Ljava/lang/String;

    .line 5493
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto/16 :goto_2

    .line 5499
    :cond_7
    sget v6, Lcom/google/android/exoplayer2/util/af;->a:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const-string v10, "jflte"

    const/16 v8, 0x13

    if-gt v6, v8, :cond_8

    :try_start_3
    const-string v6, "OMX.SEC.vp8.dec"

    .line 5500
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    sget-object v6, Lcom/google/android/exoplayer2/util/af;->c:Ljava/lang/String;

    .line 5501
    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    sget-object v6, Lcom/google/android/exoplayer2/util/af;->b:Ljava/lang/String;

    const-string v11, "d2"

    .line 5502
    invoke-virtual {v6, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_b

    sget-object v6, Lcom/google/android/exoplayer2/util/af;->b:Ljava/lang/String;

    const-string v11, "serrano"

    .line 5503
    invoke-virtual {v6, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_b

    sget-object v6, Lcom/google/android/exoplayer2/util/af;->b:Ljava/lang/String;

    .line 5504
    invoke-virtual {v6, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_b

    sget-object v6, Lcom/google/android/exoplayer2/util/af;->b:Ljava/lang/String;

    const-string v11, "santos"

    .line 5505
    invoke-virtual {v6, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_b

    sget-object v6, Lcom/google/android/exoplayer2/util/af;->b:Ljava/lang/String;

    const-string v11, "t0"

    .line 5506
    invoke-virtual {v6, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_2

    .line 5511
    :cond_8
    sget v6, Lcom/google/android/exoplayer2/util/af;->a:I

    if-gt v6, v8, :cond_9

    sget-object v6, Lcom/google/android/exoplayer2/util/af;->b:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    const-string v6, "OMX.qcom.video.decoder.vp8"

    .line 5512
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    goto :goto_2

    :cond_9
    const-string v6, "audio/eac3-joc"

    .line 5517
    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    const-string v6, "OMX.MTK.AUDIO.DECODER.DSPAC3"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    goto :goto_2

    :cond_a
    const/4 v6, 0x1

    goto :goto_3

    :cond_b
    :goto_2
    const/4 v6, 0x0

    :goto_3
    if-eqz v6, :cond_18

    .line 299
    invoke-static {v0, v12, v14}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->a(Landroid/media/MediaCodecInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-eqz v11, :cond_18

    .line 304
    :try_start_4
    invoke-virtual {v0, v11}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v10

    .line 306
    invoke-interface {v2, v4, v11, v10}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v6

    .line 309
    invoke-interface {v2, v4, v10}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$b;->a(Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v8

    .line 311
    iget-boolean v7, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$a;->c:Z

    if-nez v7, :cond_c

    if-nez v8, :cond_18

    :cond_c
    iget-boolean v7, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$a;->c:Z

    if-eqz v7, :cond_d

    if-nez v6, :cond_d

    goto/16 :goto_7

    .line 315
    :cond_d
    invoke-interface {v2, v3, v11, v10}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v6

    .line 318
    invoke-interface {v2, v3, v10}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$b;->a(Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v7

    .line 320
    iget-boolean v8, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$a;->b:Z

    if-nez v8, :cond_e

    if-nez v7, :cond_18

    :cond_e
    iget-boolean v7, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$a;->b:Z

    if-eqz v7, :cond_f

    if-nez v6, :cond_f

    goto/16 :goto_7

    .line 5606
    :cond_f
    sget v7, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v8, 0x1d

    if-lt v7, v8, :cond_10

    .line 5616
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->isHardwareAccelerated()Z

    move-result v7

    move/from16 v20, v7

    goto :goto_4

    .line 5611
    :cond_10
    invoke-static {v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->a(Landroid/media/MediaCodecInfo;)Z

    move-result v7

    if-nez v7, :cond_11

    const/16 v20, 0x1

    goto :goto_4

    :cond_11
    const/16 v20, 0x0

    .line 324
    :goto_4
    invoke-static {v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->a(Landroid/media/MediaCodecInfo;)Z

    move-result v21

    .line 5650
    sget v7, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v8, 0x1d

    if-lt v7, v8, :cond_12

    .line 5661
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->isVendor()Z

    move-result v0

    goto :goto_5

    .line 5653
    :cond_12
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/af;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "omx.google."

    .line 5654
    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_13

    const-string v7, "c2.android."

    .line 5655
    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_13

    const-string v7, "c2.google."

    .line 5656
    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x1

    goto :goto_5

    :cond_13
    const/4 v0, 0x0

    :goto_5
    if-eqz v16, :cond_14

    .line 326
    iget-boolean v7, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$a;->b:Z

    if-eq v7, v6, :cond_15

    :cond_14
    if-nez v16, :cond_16

    iget-boolean v7, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$a;->b:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    if-nez v7, :cond_16

    :cond_15
    const/16 v18, 0x0

    move-object v6, v12

    move-object v7, v14

    move-object v8, v11

    move-object v9, v10

    move/from16 v10, v20

    move-object/from16 v19, v11

    move/from16 v11, v21

    move-object v1, v12

    move v12, v0

    move/from16 v22, v13

    move/from16 v13, v18

    .line 329
    :try_start_5
    invoke-static/range {v6 .. v13}, Lcom/google/android/exoplayer2/mediacodec/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZ)Lcom/google/android/exoplayer2/mediacodec/g;

    move-result-object v0

    .line 328
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :catch_0
    move-exception v0

    goto :goto_6

    :cond_16
    move-object/from16 v19, v11

    move-object v1, v12

    move/from16 v22, v13

    if-nez v16, :cond_19

    if-eqz v6, :cond_19

    .line 340
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v13, 0x1

    move-object v7, v14

    move-object/from16 v8, v19

    move-object v9, v10

    move/from16 v10, v20

    move/from16 v11, v21

    move v12, v0

    .line 341
    invoke-static/range {v6 .. v13}, Lcom/google/android/exoplayer2/mediacodec/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZ)Lcom/google/android/exoplayer2/mediacodec/g;

    move-result-object v0

    .line 340
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    return-object v5

    :catch_1
    move-exception v0

    move-object/from16 v19, v11

    move-object v1, v12

    move/from16 v22, v13

    .line 355
    :goto_6
    :try_start_6
    sget v6, Lcom/google/android/exoplayer2/util/af;->a:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    const/16 v7, 0x17

    const-string v8, "MediaCodecUtil"

    if-gt v6, v7, :cond_17

    :try_start_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_17

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "Skipping codec "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (failed to query capabilities)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/google/android/exoplayer2/util/n;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 361
    :cond_17
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to query codec "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v19

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/google/android/exoplayer2/util/n;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :cond_18
    :goto_7
    move/from16 v22, v13

    :cond_19
    :goto_8
    add-int/lit8 v13, v22, 0x1

    move-object/from16 v1, p0

    goto/16 :goto_0

    :cond_1a
    return-object v5

    :catch_2
    move-exception v0

    .line 370
    new-instance v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;-><init>(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$1;)V

    throw v1
.end method

.method public static declared-synchronized a(Ljava/lang/String;ZZ)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/mediacodec/g;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const-class v3, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;

    monitor-enter v3

    .line 163
    :try_start_0
    new-instance v4, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$a;

    invoke-direct {v4, v0, v1, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$a;-><init>(Ljava/lang/String;ZZ)V

    .line 164
    sget-object v5, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->b:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_0

    .line 166
    monitor-exit v3

    return-object v6

    .line 169
    :cond_0
    :try_start_1
    sget v6, Lcom/google/android/exoplayer2/util/af;->a:I

    const/4 v7, 0x0

    const/16 v8, 0x15

    if-lt v6, v8, :cond_1

    .line 170
    new-instance v6, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$d;

    invoke-direct {v6, v1, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$d;-><init>(ZZ)V

    goto :goto_0

    .line 171
    :cond_1
    new-instance v6, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$c;

    invoke-direct {v6, v7}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$c;-><init>(Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$1;)V

    .line 172
    :goto_0
    invoke-static {v4, v6}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->a(Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$a;Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$b;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v6, 0x0

    if-eqz v1, :cond_2

    .line 173
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Lcom/google/android/exoplayer2/util/af;->a:I

    if-gt v8, v1, :cond_2

    sget v1, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v9, 0x17

    if-gt v1, v9, :cond_2

    .line 176
    new-instance v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$c;

    invoke-direct {v1, v7}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$c;-><init>(Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$1;)V

    .line 177
    invoke-static {v4, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->a(Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$a;Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$b;)Ljava/util/ArrayList;

    move-result-object v2

    .line 178
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "MediaCodecUtil"

    .line 179
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "MediaCodecList API didn\'t list secure decoder for: "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ". Assuming: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/exoplayer2/mediacodec/g;

    iget-object v9, v9, Lcom/google/android/exoplayer2/mediacodec/g;->a:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 179
    invoke-static {v1, v7}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v1, "audio/raw"

    .line 1532
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 1533
    sget v0, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v7, 0x1a

    if-ge v0, v7, :cond_3

    sget-object v0, Lcom/google/android/exoplayer2/util/af;->b:Ljava/lang/String;

    const-string v7, "R9"

    .line 1534
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1535
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 1536
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/mediacodec/g;

    iget-object v0, v0, Lcom/google/android/exoplayer2/mediacodec/g;->a:Ljava/lang/String;

    const-string v7, "OMX.MTK.AUDIO.DECODER.RAW"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v9, "OMX.google.raw.decoder"

    const-string v10, "audio/raw"

    const-string v11, "audio/raw"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 1540
    invoke-static/range {v9 .. v16}, Lcom/google/android/exoplayer2/mediacodec/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZ)Lcom/google/android/exoplayer2/mediacodec/g;

    move-result-object v0

    .line 1539
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1552
    :cond_3
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$MediaCodecUtil$MbNP1nGMQNot_7mZepBISVLsZ2I;->INSTANCE:Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$MediaCodecUtil$MbNP1nGMQNot_7mZepBISVLsZ2I;

    invoke-static {v2, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->a(Ljava/util/List;Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$e;)V

    .line 1569
    :cond_4
    sget v0, Lcom/google/android/exoplayer2/util/af;->a:I

    if-ge v0, v8, :cond_6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_6

    .line 1570
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/mediacodec/g;

    iget-object v0, v0, Lcom/google/android/exoplayer2/mediacodec/g;->a:Ljava/lang/String;

    const-string v7, "OMX.SEC.mp3.dec"

    .line 1571
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "OMX.SEC.MP3.Decoder"

    .line 1572
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "OMX.brcm.audio.mp3.decoder"

    .line 1573
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1578
    :cond_5
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$MediaCodecUtil$bibv06jsgiNGQM_BsA8g_4c5ljs;->INSTANCE:Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$MediaCodecUtil$bibv06jsgiNGQM_BsA8g_4c5ljs;

    invoke-static {v2, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->a(Ljava/util/List;Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$e;)V

    .line 1582
    :cond_6
    sget v0, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v7, 0x1e

    if-ge v0, v7, :cond_7

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_7

    .line 1583
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/mediacodec/g;

    iget-object v0, v0, Lcom/google/android/exoplayer2/mediacodec/g;->a:Ljava/lang/String;

    const-string v1, "OMX.qti.audio.decoder.flac"

    .line 1586
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1587
    invoke-interface {v2, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/mediacodec/g;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_7
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 185
    invoke-virtual {v5, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    monitor-exit v3

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public static a(Ljava/util/List;Lcom/google/android/exoplayer2/Format;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/mediacodec/g;",
            ">;",
            "Lcom/google/android/exoplayer2/Format;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/mediacodec/g;",
            ">;"
        }
    .end annotation

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 197
    new-instance p0, Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$MediaCodecUtil$JT5rQHCZBnfV3W0X2bNLZC96Mn4;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$MediaCodecUtil$JT5rQHCZBnfV3W0X2bNLZC96Mn4;-><init>(Lcom/google/android/exoplayer2/Format;)V

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->a(Ljava/util/List;Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$e;)V

    return-object v0
.end method

.method private static a(Ljava/util/List;Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$e<",
            "TT;>;)V"
        }
    .end annotation

    .line 909
    new-instance v0, Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$MediaCodecUtil$pZ7ijVEMrtN0-SpzxNKURmj-IUA;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$MediaCodecUtil$pZ7ijVEMrtN0-SpzxNKURmj-IUA;-><init>(Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$e;)V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private static a(Landroid/media/MediaCodecInfo;)Z
    .locals 2

    .line 624
    sget v0, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 6642
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->isSoftwareOnly()Z

    move-result p0

    return p0

    .line 627
    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/af;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "arc."

    .line 628
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const-string v0, "omx.google."

    .line 631
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "omx.ffmpeg."

    .line 632
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "omx.sec."

    .line 633
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ".sw."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    const-string v0, "omx.qcom.video.decoder.hevcswvdec"

    .line 634
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "c2.android."

    .line 635
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "c2.google."

    .line 636
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "omx."

    .line 637
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "c2."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static b()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 215
    sget v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    const-string v0, "video/avc"

    .line 219
    invoke-static {v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->a(Ljava/lang/String;)Lcom/google/android/exoplayer2/mediacodec/g;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 221
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/mediacodec/g;->a()[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v5, v0, v2

    .line 222
    iget v5, v5, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    sparse-switch v5, :sswitch_data_0

    const/4 v5, -0x1

    goto :goto_1

    :sswitch_0
    const/high16 v5, 0x900000

    goto :goto_1

    :sswitch_1
    const v5, 0x564000

    goto :goto_1

    :sswitch_2
    const/high16 v5, 0x220000

    goto :goto_1

    :sswitch_3
    const/high16 v5, 0x200000

    goto :goto_1

    :sswitch_4
    const/high16 v5, 0x140000

    goto :goto_1

    :sswitch_5
    const v5, 0xe1000

    goto :goto_1

    :sswitch_6
    const v5, 0x65400

    goto :goto_1

    :sswitch_7
    const v5, 0x31800

    goto :goto_1

    :sswitch_8
    const v5, 0x18c00

    goto :goto_1

    :cond_0
    const/16 v5, 0x6300

    :goto_1
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 226
    :cond_1
    sget v0, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    const v0, 0x54600

    goto :goto_2

    :cond_2
    const v0, 0x2a300

    :goto_2
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 228
    :cond_3
    sput v2, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->c:I

    .line 230
    :cond_4
    sget v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->c:I

    return v0

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_8
        0x10 -> :sswitch_8
        0x20 -> :sswitch_8
        0x40 -> :sswitch_7
        0x80 -> :sswitch_6
        0x100 -> :sswitch_6
        0x200 -> :sswitch_5
        0x400 -> :sswitch_4
        0x800 -> :sswitch_3
        0x1000 -> :sswitch_3
        0x2000 -> :sswitch_2
        0x4000 -> :sswitch_1
        0x8000 -> :sswitch_0
        0x10000 -> :sswitch_0
    .end sparse-switch
.end method

.method private static synthetic b(Lcom/google/android/exoplayer2/mediacodec/g;)I
    .locals 2

    .line 555
    iget-object p0, p0, Lcom/google/android/exoplayer2/mediacodec/g;->a:Ljava/lang/String;

    const-string v0, "OMX.google"

    .line 556
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "c2.android"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 560
    :cond_0
    sget v0, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_1

    const-string v0, "OMX.MTK.AUDIO.DECODER.RAW"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static b(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 768
    array-length v0, p1

    const-string v1, "Ignoring malformed VP9 codec string: "

    const/4 v2, 0x3

    const/4 v3, 0x0

    const-string v4, "MediaCodecUtil"

    if-ge v0, v2, :cond_0

    .line 769
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_0
    const/4 v0, 0x1

    .line 775
    :try_start_0
    aget-object v5, p1, v0

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    .line 776
    aget-object p1, p1, v6

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p1, 0x8

    const/4 v1, 0x4

    const/4 v7, -0x1

    if-eqz v5, :cond_4

    if-eq v5, v0, :cond_3

    if-eq v5, v6, :cond_2

    if-eq v5, v2, :cond_1

    const/4 v2, -0x1

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    :goto_0
    if-ne v2, v7, :cond_5

    .line 784
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Unknown VP9 profile: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_5
    const/16 v5, 0xa

    if-eq p0, v5, :cond_f

    const/16 v0, 0xb

    if-eq p0, v0, :cond_e

    const/16 v0, 0x14

    if-eq p0, v0, :cond_d

    const/16 v0, 0x15

    if-eq p0, v0, :cond_c

    const/16 p1, 0x1e

    if-eq p0, p1, :cond_b

    const/16 p1, 0x1f

    if-eq p0, p1, :cond_a

    const/16 p1, 0x28

    if-eq p0, p1, :cond_9

    const/16 p1, 0x29

    if-eq p0, p1, :cond_8

    const/16 p1, 0x32

    if-eq p0, p1, :cond_7

    const/16 p1, 0x33

    if-eq p0, p1, :cond_6

    packed-switch p0, :pswitch_data_0

    const/4 v0, -0x1

    goto :goto_1

    :pswitch_0
    const/16 v0, 0x2000

    goto :goto_1

    :pswitch_1
    const/16 v0, 0x1000

    goto :goto_1

    :pswitch_2
    const/16 v0, 0x800

    goto :goto_1

    :cond_6
    const/16 v0, 0x200

    goto :goto_1

    :cond_7
    const/16 v0, 0x100

    goto :goto_1

    :cond_8
    const/16 v0, 0x80

    goto :goto_1

    :cond_9
    const/16 v0, 0x40

    goto :goto_1

    :cond_a
    const/16 v0, 0x20

    goto :goto_1

    :cond_b
    const/16 v0, 0x10

    goto :goto_1

    :cond_c
    const/16 v0, 0x8

    goto :goto_1

    :cond_d
    const/4 v0, 0x4

    goto :goto_1

    :cond_e
    const/4 v0, 0x2

    :cond_f
    :goto_1
    if-ne v0, v7, :cond_10

    .line 789
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Unknown VP9 level: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 792
    :cond_10
    new-instance p0, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 778
    :catch_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static c(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 884
    array-length v0, p1

    const/4 v1, 0x0

    const-string v2, "Ignoring malformed MP4A codec string: "

    const-string v3, "MediaCodecUtil"

    const/4 v4, 0x3

    if-eq v0, v4, :cond_0

    .line 885
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    const/4 v0, 0x1

    .line 890
    :try_start_0
    aget-object v5, p1, v0

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 891
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/q;->a(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "audio/mp4a-latm"

    .line 892
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v5, 0x2

    .line 894
    aget-object p1, p1, v5

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v6, -0x1

    const/16 v7, 0x2a

    const/16 v8, 0x27

    const/16 v9, 0x1d

    const/16 v10, 0x17

    const/16 v11, 0x14

    const/16 v12, 0x11

    if-eq p1, v12, :cond_6

    if-eq p1, v11, :cond_5

    if-eq p1, v10, :cond_4

    if-eq p1, v9, :cond_3

    if-eq p1, v8, :cond_2

    if-eq p1, v7, :cond_1

    packed-switch p1, :pswitch_data_0

    const/4 v4, -0x1

    goto :goto_0

    :pswitch_0
    const/4 v4, 0x6

    goto :goto_0

    :pswitch_1
    const/4 v4, 0x5

    goto :goto_0

    :pswitch_2
    const/4 v4, 0x4

    goto :goto_0

    :pswitch_3
    const/4 v4, 0x2

    goto :goto_0

    :pswitch_4
    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/16 v4, 0x2a

    goto :goto_0

    :cond_2
    const/16 v4, 0x27

    goto :goto_0

    :cond_3
    const/16 v4, 0x1d

    goto :goto_0

    :cond_4
    const/16 v4, 0x17

    goto :goto_0

    :cond_5
    const/16 v4, 0x14

    goto :goto_0

    :cond_6
    const/16 v4, 0x11

    :goto_0
    :pswitch_5
    if-eq v4, v6, :cond_7

    .line 898
    new-instance p1, Landroid/util/Pair;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p1, v0, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 902
    :catch_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic lambda$JT5rQHCZBnfV3W0X2bNLZC96Mn4(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/mediacodec/g;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->a(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/mediacodec/g;)I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$MbNP1nGMQNot_7mZepBISVLsZ2I(Lcom/google/android/exoplayer2/mediacodec/g;)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->b(Lcom/google/android/exoplayer2/mediacodec/g;)I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$bibv06jsgiNGQM_BsA8g_4c5ljs(Lcom/google/android/exoplayer2/mediacodec/g;)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->a(Lcom/google/android/exoplayer2/mediacodec/g;)I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$pZ7ijVEMrtN0-SpzxNKURmj-IUA(Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$e;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->a(Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$e;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
