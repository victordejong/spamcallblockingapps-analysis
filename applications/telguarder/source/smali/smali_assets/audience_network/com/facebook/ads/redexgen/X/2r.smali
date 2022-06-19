.class public final Lcom/facebook/ads/redexgen/X/2r;
.super Lcom/facebook/ads/redexgen/X/Bb;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/GX;,
        Lcom/facebook/ads/redexgen/X/GY;
    }
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;

.field public static final A03:Lcom/facebook/ads/redexgen/X/GX;

.field public static final A04:Lcom/facebook/ads/redexgen/X/GY;

.field public static final A05:Ljava/util/regex/Pattern;

.field public static final A06:Ljava/util/regex/Pattern;

.field public static final A07:Ljava/util/regex/Pattern;

.field public static final A08:Ljava/util/regex/Pattern;

.field public static final A09:Ljava/util/regex/Pattern;


# instance fields
.field public final A00:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 6235
    invoke-static {}, Lcom/facebook/ads/redexgen/X/2r;->A0B()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/2r;->A0A()V

    const/16 v2, 0x358

    const/16 v1, 0x55

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/2r;->A06:Ljava/util/regex/Pattern;

    .line 6236
    const/16 v2, 0x333

    const/16 v1, 0x25

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/2r;->A08:Ljava/util/regex/Pattern;

    .line 6237
    const/16 v2, 0x316

    const/16 v1, 0x1d

    const/16 v0, 0x68

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/2r;->A07:Ljava/util/regex/Pattern;

    .line 6238
    const/16 v2, 0x3ba

    const/16 v1, 0x1d

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/2r;->A09:Ljava/util/regex/Pattern;

    .line 6239
    const/16 v2, 0x3ad

    const/16 v1, 0xd

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/2r;->A05:Ljava/util/regex/Pattern;

    .line 6240
    const/4 v2, 0x1

    const/high16 v1, 0x41f00000    # 30.0f

    new-instance v0, Lcom/facebook/ads/redexgen/X/GY;

    invoke-direct {v0, v1, v2, v2}, Lcom/facebook/ads/redexgen/X/GY;-><init>(FII)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/2r;->A04:Lcom/facebook/ads/redexgen/X/GY;

    .line 6241
    const/16 v2, 0x20

    const/16 v1, 0xf

    new-instance v0, Lcom/facebook/ads/redexgen/X/GX;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/GX;-><init>(II)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/2r;->A03:Lcom/facebook/ads/redexgen/X/GX;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 6242
    const/16 v2, 0x2cd

    const/16 v1, 0xb

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Bb;-><init>(Ljava/lang/String;)V

    .line 6243
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2r;->A00:Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 6244
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2r;->A00:Lorg/xmlpull/v1/XmlPullParserFactory;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 6245
    return-void
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6246
    :catch_0
    move-exception v3

    .line 6247
    .local p0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const/4 v2, 0x5

    const/16 v1, 0x2d

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static A00(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/GY;)J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/GD;
        }
    .end annotation

    .line 6248
    sget-object v0, Lcom/facebook/ads/redexgen/X/2r;->A06:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 6249
    .local p0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    .line 6250
    invoke-virtual {v9, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 6251
    .local p1, "hours":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v0, 0xe10

    mul-long/2addr v2, v0

    long-to-double v0, v2

    .line 6252
    .local v5, "durationSeconds":D
    invoke-virtual {v9, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 6253
    .local v6, "minutes":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v2, 0x3c

    mul-long/2addr v4, v2

    long-to-double v2, v4

    add-double/2addr v0, v2

    .line 6254
    invoke-virtual {v9, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 6255
    .local v7, "seconds":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    long-to-double v2, v4

    add-double/2addr v0, v2

    .line 6256
    invoke-virtual {v9, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 6257
    .local v8, "fraction":Ljava/lang/String;
    const-wide/16 v4, 0x0

    if-eqz v2, :cond_2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    :goto_0
    add-double/2addr v0, v2

    .line 6258
    invoke-virtual {v9, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 6259
    .local v0, "frames":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    long-to-float v3, v6

    iget v2, p1, Lcom/facebook/ads/redexgen/X/GY;->A00:F

    div-float/2addr v3, v2

    float-to-double v2, v3

    :goto_1
    add-double/2addr v0, v2

    .line 6260
    const/4 v2, 0x6

    invoke-virtual {v9, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 6261
    .local p2, "subframes":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 6262
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    long-to-double v4, v2

    iget v2, p1, Lcom/facebook/ads/redexgen/X/GY;->A01:I

    int-to-double v2, v2

    div-double/2addr v4, v2

    iget v2, p1, Lcom/facebook/ads/redexgen/X/GY;->A00:F

    float-to-double v2, v2

    div-double/2addr v4, v2

    .line 6263
    :cond_0
    add-double/2addr v0, v4

    .line 6264
    const-wide v2, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v2, v0

    double-to-long v0, v2

    return-wide v0

    .line 6265
    :cond_1
    move-wide v2, v4

    goto :goto_1

    .line 6266
    :cond_2
    move-wide v2, v4

    goto :goto_0

    .line 6267
    .end local p1    # "hours":Ljava/lang/String;
    .end local v0    # "frames":Ljava/lang/String;
    .end local v8    # "fraction":Ljava/lang/String;
    .end local v7    # "seconds":Ljava/lang/String;
    .end local v6    # "minutes":Ljava/lang/String;
    .end local v5    # "durationSeconds":D
    .end local p2
    :cond_3
    sget-object v0, Lcom/facebook/ads/redexgen/X/2r;->A08:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 6268
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 6269
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 6270
    .local p1, "timeValue":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    .line 6271
    .local v0, "offsetSeconds":D
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 6272
    .local v4, "unit":Ljava/lang/String;
    const/4 v3, -0x1

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v0, 0x66

    if-eq v1, v0, :cond_10

    const/16 v0, 0x68

    if-eq v1, v0, :cond_f

    const/16 v0, 0x6d

    if-eq v1, v0, :cond_e

    const/16 v0, 0xda6

    if-eq v1, v0, :cond_d

    const/16 v0, 0x73

    if-eq v1, v0, :cond_c

    const/16 v0, 0x74

    if-eq v1, v0, :cond_b

    :cond_4
    :goto_2
    if-eqz v3, :cond_a

    if-eq v3, v4, :cond_9

    if-eq v3, v5, :cond_5

    if-eq v3, v6, :cond_8

    if-eq v3, v7, :cond_7

    if-eq v3, v8, :cond_6

    .line 6273
    :cond_5
    :goto_3
    const-wide v2, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v2, v11

    double-to-long v0, v2

    return-wide v0

    .line 6274
    :cond_6
    iget v0, p1, Lcom/facebook/ads/redexgen/X/GY;->A02:I

    int-to-double v0, v0

    div-double/2addr v11, v0

    goto :goto_3

    .line 6275
    :cond_7
    iget v0, p1, Lcom/facebook/ads/redexgen/X/GY;->A00:F

    float-to-double v0, v0

    div-double/2addr v11, v0

    .line 6276
    goto :goto_3

    .line 6277
    :cond_8
    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double/2addr v11, v0

    .line 6278
    goto :goto_3

    .line 6279
    :cond_9
    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    mul-double/2addr v11, v0

    .line 6280
    goto :goto_3

    .line 6281
    :cond_a
    const-wide v0, 0x40ac200000000000L    # 3600.0

    mul-double/2addr v11, v0

    .line 6282
    goto :goto_3

    .line 6283
    :cond_b
    const/16 v2, 0x55e

    const/4 v1, 0x1

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v3, 0x5

    goto :goto_2

    :cond_c
    const/16 v2, 0x516

    const/4 v1, 0x1

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v3, 0x2

    goto :goto_2

    :cond_d
    const/16 v2, 0x4e8

    const/4 v1, 0x2

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v3, 0x3

    goto :goto_2

    :cond_e
    const/16 v2, 0x4df

    const/4 v1, 0x1

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v10

    sget-object v2, Lcom/facebook/ads/redexgen/X/2r;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_11

    sget-object v2, Lcom/facebook/ads/redexgen/X/2r;->A02:[Ljava/lang/String;

    const-string v1, "kTkogBHWr6K0V0GANnnhU9YIoVt2Hvvq"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "ox8N5Gp3Nzt2Y2FsvqDRM7TeRZ1gmp4K"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v3, 0x1

    goto/16 :goto_2

    :cond_f
    const/16 v2, 0x49a

    const/4 v1, 0x1

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_10
    const/16 v2, 0x430

    const/4 v1, 0x1

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v3, 0x4

    goto/16 :goto_2

    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 6284
    .end local p1    # "timeValue":Ljava/lang/String;
    .end local v0    # "offsetSeconds":D
    .end local v4    # "unit":Ljava/lang/String;
    :cond_12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x22c

    const/16 v1, 0x1b

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/GD;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/GD;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private A01(Lorg/xmlpull/v1/XmlPullParser;Lcom/facebook/ads/redexgen/X/GX;)Lcom/facebook/ads/redexgen/X/GX;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/GD;
        }
    .end annotation

    .line 6285
    const/16 v2, 0x49f

    const/16 v1, 0x23

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x3fa

    const/16 v1, 0xe

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 6286
    .local p0, "cellResolution":Ljava/lang/String;
    if-nez v6, :cond_0

    .line 6287
    return-object p2

    .line 6288
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/2r;->A05:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 6289
    .local p1, "cellResolutionMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    const/16 v2, 0x8e

    const/16 v1, 0x24

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v5

    const/16 v4, 0x2cd

    sget-object v1, Lcom/facebook/ads/redexgen/X/2r;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x10

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/2r;->A02:[Ljava/lang/String;

    const-string v1, "PoCGOz8VDXpsyCoytj2CyVhappupuIR1"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "ge8vCVgRsNYxiBUNfKZE4pirZB6p1s9B"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const/16 v1, 0xb

    const/16 v0, 0x3a

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v4

    if-nez v7, :cond_2

    .line 6290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6291
    return-object p2

    .line 6292
    :cond_2
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {v3, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 6293
    .local p2, "columns":I
    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 6294
    .local v0, "rows":I
    if-eqz v8, :cond_3

    if-eqz v7, :cond_3

    .line 6295
    new-instance v0, Lcom/facebook/ads/redexgen/X/GX;

    invoke-direct {v0, v8, v7}, Lcom/facebook/ads/redexgen/X/GX;-><init>(II)V

    return-object v0

    .line 6296
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1ae

    const/16 v1, 0x18

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/GD;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/GD;-><init>(Ljava/lang/String;)V

    .end local p0    # "cellResolution":Ljava/lang/String;
    .end local p1    # "cellResolutionMatcher":Ljava/util/regex/Matcher;
    .end local v0    # "rows":I
    .end local v6
    throw v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6297
    .end local p2    # "columns":I
    .end local v0
    .restart local p0    # "cellResolution":Ljava/lang/String;
    .restart local p1    # "cellResolutionMatcher":Ljava/util/regex/Matcher;
    .restart local v0    # "rows":I
    .restart local v6
    .local p2, "e":Ljava/lang/NumberFormatException;
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6298
    return-object p2
.end method

.method private A02(Lorg/xmlpull/v1/XmlPullParser;)Lcom/facebook/ads/redexgen/X/GY;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/GD;
        }
    .end annotation

    .line 6299
    const/16 v6, 0x1e

    .line 6300
    .local p0, "frameRate":I
    const/16 v2, 0x49f

    const/16 v1, 0x23

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v7

    const/16 v2, 0x456

    const/16 v1, 0x9

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v7, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6301
    .local v6, "frameRateString":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 6302
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 6303
    :cond_0
    const/high16 v5, 0x3f800000    # 1.0f

    .line 6304
    .local v2, "frameRateMultiplier":F
    const/16 v2, 0x45f

    const/16 v1, 0x13

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v7, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6305
    .local v1, "frameRateMultiplierString":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 6306
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0m(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 6307
    .local v0, "parts":[Ljava/lang/String;
    array-length v1, v2

    const/4 v0, 0x2

    if-ne v1, v0, :cond_4

    .line 6308
    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v5, v0

    .line 6309
    .local v7, "numerator":F
    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    .line 6310
    .local v2, "denominator":F
    div-float/2addr v5, v0

    .line 6311
    .end local v0    # "parts":[Ljava/lang/String;
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/2r;->A04:Lcom/facebook/ads/redexgen/X/GY;

    iget v4, v0, Lcom/facebook/ads/redexgen/X/GY;->A01:I

    .line 6312
    .local v0, "subFrameRate":I
    const/16 v2, 0x552

    const/16 v1, 0xc

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v7, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6313
    .local v7, "subFrameRateString":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 6314
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 6315
    :cond_2
    sget-object v0, Lcom/facebook/ads/redexgen/X/2r;->A04:Lcom/facebook/ads/redexgen/X/GY;

    iget v3, v0, Lcom/facebook/ads/redexgen/X/GY;->A02:I

    .line 6316
    .local v2, "tickRate":I
    const/16 v2, 0x576

    const/16 v1, 0x8

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v7, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6317
    .local p1, "tickRateString":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 6318
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 6319
    :cond_3
    int-to-float v1, v6

    mul-float/2addr v1, v5

    new-instance v0, Lcom/facebook/ads/redexgen/X/GY;

    invoke-direct {v0, v1, v4, v3}, Lcom/facebook/ads/redexgen/X/GY;-><init>(FII)V

    return-object v0

    .line 6320
    .end local v7    # "subFrameRateString":Ljava/lang/String;
    .end local v2    # "tickRate":I
    :cond_4
    const/16 v2, 0x472

    const/16 v1, 0x28

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/GD;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/GD;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private A03(Lorg/xmlpull/v1/XmlPullParser;Lcom/facebook/ads/redexgen/X/GZ;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/GY;)Lcom/facebook/ads/redexgen/X/GZ;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lcom/facebook/ads/redexgen/X/GZ;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/Ga;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/GY;",
            ")",
            "Lcom/facebook/ads/redexgen/X/GZ;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/GD;
        }
    .end annotation

    .line 6321
    .local v2, "regionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/ads/internal/exoplayer2/text/ttml/TtmlRegion;>;"
    move-object/from16 v6, p0

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 6322
    .local v7, "duration":J
    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 6323
    .local v3, "startTime":J
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .line 6324
    .local v7, "endTime":J
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v17

    .line 6325
    .local v10, "regionId":Ljava/lang/String;
    const/16 v16, 0x0

    .line 6326
    .local v11, "styleIds":[Ljava/lang/String;
    move-object/from16 v3, p1

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v5

    .line 6327
    .local v12, "attributeCount":I
    const/4 v0, 0x0

    invoke-direct {v6, v3, v0}, Lcom/facebook/ads/redexgen/X/2r;->A06(Lorg/xmlpull/v1/XmlPullParser;Lcom/facebook/ads/redexgen/X/Gf;)Lcom/facebook/ads/redexgen/X/Gf;

    move-result-object v15

    .line 6328
    .local v13, "style":Lcom/facebook/ads/redexgen/X/Gf;
    const/4 v4, 0x0

    .local v14, "i":I
    :goto_0
    if-ge v4, v5, :cond_7

    .line 6329
    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    .line 6330
    .local v2, "attr":Ljava/lang/String;
    .end local v12    # "attributeCount":I
    .local v15, "attributeCount":I
    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    .line 6331
    .local v12, "value":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    const/4 v1, -0x1

    :goto_1
    move-object/from16 v7, p4

    if-eqz v1, :cond_6

    const/4 v0, 0x1

    .end local v2    # "attr":Ljava/lang/String;
    .local v1, "attr":Ljava/lang/String;
    if-eq v1, v0, :cond_5

    const/4 v0, 0x2

    if-eq v1, v0, :cond_4

    const/4 v0, 0x3

    if-eq v1, v0, :cond_3

    const/4 v0, 0x4

    if-eq v1, v0, :cond_2

    .line 6332
    .end local v12    # "value":Ljava/lang/String;
    .end local v1    # "attr":Ljava/lang/String;
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v6, p0

    goto :goto_0

    .line 6333
    :cond_2
    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6334
    move-object/from16 v17, v2

    goto :goto_2

    .line 6335
    :cond_3
    invoke-direct {v6, v2}, Lcom/facebook/ads/redexgen/X/2r;->A0E(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 6336
    .local v2, "ids":[Ljava/lang/String;
    array-length v0, v1

    if-lez v0, :cond_1

    .line 6337
    move-object/from16 v16, v1

    .end local v11    # "styleIds":[Ljava/lang/String;
    .local p0, "styleIds":[Ljava/lang/String;
    goto :goto_2

    .line 6338
    .end local p0    # "styleIds":[Ljava/lang/String;
    .end local v2    # "ids":[Ljava/lang/String;
    .restart local v11    # "styleIds":[Ljava/lang/String;
    :cond_4
    invoke-static {v2, v7}, Lcom/facebook/ads/redexgen/X/2r;->A00(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/GY;)J

    move-result-wide v9

    .line 6339
    goto :goto_2

    .line 6340
    :cond_5
    invoke-static {v2, v7}, Lcom/facebook/ads/redexgen/X/2r;->A00(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/GY;)J

    move-result-wide v13

    .line 6341
    goto :goto_2

    .line 6342
    .end local v1
    .local v2, "attr":Ljava/lang/String;
    .end local v2    # "attr":Ljava/lang/String;
    .restart local v1    # "attr":Ljava/lang/String;
    :cond_6
    invoke-static {v2, v7}, Lcom/facebook/ads/redexgen/X/2r;->A00(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/GY;)J

    move-result-wide v11

    .line 6343
    goto :goto_2

    .line 6344
    :sswitch_0
    const/16 v8, 0x50b

    const/4 v1, 0x6

    const/16 v0, 0x6e

    invoke-static {v8, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_1
    const/16 v8, 0x422

    const/4 v1, 0x3

    const/16 v0, 0x2f

    invoke-static {v8, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_2
    const/16 v8, 0x427

    const/4 v1, 0x3

    const/16 v0, 0x5c

    invoke-static {v8, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_3
    const/16 v8, 0x3eb

    const/4 v1, 0x5

    const/16 v0, 0x7a

    invoke-static {v8, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_4
    const/16 v8, 0x546

    const/4 v1, 0x5

    const/16 v0, 0x55

    invoke-static {v8, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    goto/16 :goto_1

    .line 6345
    .end local v15    # "attributeCount":I
    .local v12, "attributeCount":I
    .end local v12    # "attributeCount":I
    .end local v14    # "i":I
    .restart local v15    # "attributeCount":I
    :cond_7
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v2, p2

    if-eqz v2, :cond_9

    iget-wide v0, v2, Lcom/facebook/ads/redexgen/X/GZ;->A02:J

    cmp-long v4, v0, v5

    if-eqz v4, :cond_9

    .line 6346
    cmp-long v0, v11, v5

    if-eqz v0, :cond_8

    .line 6347
    iget-wide v0, v2, Lcom/facebook/ads/redexgen/X/GZ;->A02:J

    add-long/2addr v11, v0

    .line 6348
    :cond_8
    cmp-long v0, v13, v5

    if-eqz v0, :cond_9

    .line 6349
    iget-wide v0, v2, Lcom/facebook/ads/redexgen/X/GZ;->A02:J

    add-long/2addr v13, v0

    .line 6350
    :cond_9
    cmp-long v0, v13, v5

    if-nez v0, :cond_a

    .line 6351
    cmp-long v0, v9, v5

    if-eqz v0, :cond_b

    .line 6352
    add-long v13, v11, v9

    .line 6353
    .end local v7    # "endTime":J
    .local p0, "endTime":J
    .end local v7
    .restart local p0    # "endTime":J
    :cond_a
    :goto_3
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static/range {v10 .. v17}, Lcom/facebook/ads/redexgen/X/GZ;->A05(Ljava/lang/String;JJLcom/facebook/ads/redexgen/X/Gf;[Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/GZ;

    move-result-object v0

    return-object v0

    .line 6354
    .end local p0    # "endTime":J
    .restart local v7    # "endTime":J
    :cond_b
    if-eqz v2, :cond_a

    iget-wide v0, v2, Lcom/facebook/ads/redexgen/X/GZ;->A01:J

    cmp-long v4, v0, v5

    if-eqz v4, :cond_a

    .line 6355
    iget-wide v13, v2, Lcom/facebook/ads/redexgen/X/GZ;->A01:J

    .end local v7    # "endTime":J
    .restart local p0    # "endTime":J
    goto :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x37b7d90c -> :sswitch_0
        0x18601 -> :sswitch_1
        0x188db -> :sswitch_2
        0x59478a9 -> :sswitch_3
        0x68b1db1 -> :sswitch_4
    .end sparse-switch
.end method

.method private A04(Lorg/xmlpull/v1/XmlPullParser;Lcom/facebook/ads/redexgen/X/GX;)Lcom/facebook/ads/redexgen/X/Ga;
    .locals 18

    .line 6356
    const/16 v2, 0x4c2

    const/4 v1, 0x2

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v6, p1

    invoke-static {v6, v0}, Lcom/facebook/ads/redexgen/X/Id;->A00(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 6357
    .local v1, "regionId":Ljava/lang/String;
    const/4 v9, 0x0

    if-nez v10, :cond_0

    .line 6358
    return-object v9

    .line 6359
    :cond_0
    const/16 v2, 0x502

    const/4 v1, 0x6

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/facebook/ads/redexgen/X/Id;->A00(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 6360
    .local v0, "regionOrigin":Ljava/lang/String;
    const/16 v2, 0x2cd

    const/16 v1, 0xb

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v4

    if-eqz v5, :cond_a

    .line 6361
    sget-object v0, Lcom/facebook/ads/redexgen/X/2r;->A09:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 6362
    .local v2, "originMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 6363
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    const/high16 v8, 0x42c80000    # 100.0f

    div-float/2addr v11, v8

    .line 6364
    .local v0, "position":F
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    div-float/2addr v12, v8

    .line 6365
    .local v0, "line":F
    .end local v2    # "originMatcher":Ljava/util/regex/Matcher;
    const/16 v7, 0x42a

    const/4 v1, 0x6

    const/16 v0, 0x18

    invoke-static {v7, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/facebook/ads/redexgen/X/Id;->A00(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6366
    .local v5, "regionExtent":Ljava/lang/String;
    if-eqz v1, :cond_8

    .line 6367
    sget-object v0, Lcom/facebook/ads/redexgen/X/2r;->A09:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 6368
    .local v2, "extentMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 6369
    :try_start_1
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v15

    div-float/2addr v15, v8

    .line 6370
    .local v2, "width":F
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    div-float/2addr v5, v8

    .line 6371
    .local v1, "height":F
    .end local v2    # "width":F
    const/4 v14, 0x0

    .line 6372
    .local v0, "lineAnchor":I
    const/16 v2, 0x413

    const/16 v1, 0xc

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/facebook/ads/redexgen/X/Id;->A00(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6373
    .local v0, "displayAlign":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 6374
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v0, -0x514d33ab

    if-eq v1, v0, :cond_6

    const v0, 0x58705dc

    if-eq v1, v0, :cond_5

    :cond_1
    const/4 v0, -0x1

    :goto_0
    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_3

    .line 6375
    .end local v0    # "displayAlign":Ljava/lang/String;
    .end local v0
    .local p0, "line":F
    .local v4, "lineAnchor":I
    :cond_2
    :goto_1
    const/high16 v17, 0x3f800000    # 1.0f

    move-object/from16 v0, p2

    iget v0, v0, Lcom/facebook/ads/redexgen/X/GX;->A01:I

    int-to-float v0, v0

    div-float v17, v17, v0

    .line 6376
    .local v0, "regionTextHeight":F
    new-instance v9, Lcom/facebook/ads/redexgen/X/Ga;

    const/4 v13, 0x0

    const/16 v16, 0x1

    invoke-direct/range {v9 .. v17}, Lcom/facebook/ads/redexgen/X/Ga;-><init>(Ljava/lang/String;FFIIFIF)V

    return-object v9

    .line 6377
    :cond_3
    const/4 v14, 0x2

    .line 6378
    .end local v0    # "regionTextHeight":F
    .local p0, "lineAnchor":I
    add-float/2addr v12, v5

    .line 6379
    goto :goto_1

    .line 6380
    .end local p0    # "lineAnchor":I
    .restart local v0    # "regionTextHeight":F
    :cond_4
    const/4 v14, 0x1

    .line 6381
    .end local v0    # "regionTextHeight":F
    .restart local p0    # "lineAnchor":I
    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v5, v0

    add-float/2addr v12, v5

    .line 6382
    goto :goto_1

    .line 6383
    :cond_5
    const/16 v2, 0x3d7

    const/4 v1, 0x5

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    const/16 v2, 0x408

    const/4 v1, 0x6

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 6384
    .end local p0    # "lineAnchor":I
    .end local v2
    .end local v1    # "height":F
    .end local v0
    .end local v4    # "lineAnchor":I
    .end local v0
    .restart local v2    # "width":F
    .restart local v0    # "regionTextHeight":F
    .local p0, "e":Ljava/lang/NumberFormatException;
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xb2

    const/16 v1, 0x27

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6385
    return-object v9

    .line 6386
    .end local p0    # "e":Ljava/lang/NumberFormatException;
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x100

    const/16 v1, 0x29

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6387
    return-object v9

    .line 6388
    .end local v2    # "width":F
    :cond_8
    const/16 v2, 0x152

    const/16 v1, 0x21

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6389
    return-object v9

    .line 6390
    .end local v0    # "regionTextHeight":F
    .end local v0
    .end local v5    # "regionExtent":Ljava/lang/String;
    .local v2, "originMatcher":Ljava/util/regex/Matcher;
    .restart local p0    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xd9

    const/16 v1, 0x27

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6391
    return-object v9

    .line 6392
    .end local p0    # "e":Ljava/lang/NumberFormatException;
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x129

    const/16 v1, 0x29

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6393
    return-object v9

    .line 6394
    .end local v2    # "originMatcher":Ljava/util/regex/Matcher;
    :cond_a
    const/16 v2, 0x173

    const/16 v1, 0x21

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6395
    return-object v9
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/Gf;)Lcom/facebook/ads/redexgen/X/Gf;
    .locals 0

    .line 6396
    if-nez p1, :cond_0

    new-instance p1, Lcom/facebook/ads/redexgen/X/Gf;

    invoke-direct {p1}, Lcom/facebook/ads/redexgen/X/Gf;-><init>()V

    :cond_0
    return-object p1
.end method

.method private A06(Lorg/xmlpull/v1/XmlPullParser;Lcom/facebook/ads/redexgen/X/Gf;)Lcom/facebook/ads/redexgen/X/Gf;
    .locals 17

    move-object/from16 v3, p2

    .line 6397
    move-object/from16 v13, p1

    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v12

    .line 6398
    .local v2, "attributeCount":I
    const/4 v11, 0x0

    .local v13, "i":I
    :goto_0
    if-ge v11, v12, :cond_10

    .line 6399
    invoke-interface {v13, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v10

    .line 6400
    .local v3, "attributeValue":Ljava/lang/String;
    invoke-interface {v13, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v9, 0x4

    const/4 v8, -0x1

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_0

    :cond_0
    const/4 v14, -0x1

    :goto_1
    const/16 v2, 0x2cd

    const/16 v1, 0xb

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p0

    packed-switch v14, :pswitch_data_0

    .line 6401
    .end local v3    # "attributeValue":Ljava/lang/String;
    :cond_1
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 6402
    :pswitch_0
    :try_start_0
    invoke-direct {v2, v3}, Lcom/facebook/ads/redexgen/X/2r;->A05(Lcom/facebook/ads/redexgen/X/Gf;)Lcom/facebook/ads/redexgen/X/Gf;

    move-result-object v3

    .line 6403
    invoke-static {v10, v3}, Lcom/facebook/ads/redexgen/X/2r;->A0C(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Gf;)V

    goto :goto_2
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/GD; {:try_start_0 .. :try_end_0} :catch_0

    .line 6404
    .local v12, "e":Lcom/facebook/ads/redexgen/X/GD;
    :catch_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x6f

    const/16 v2, 0x1f

    const/16 v0, 0x49

    invoke-static {v4, v2, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6405
    .end local v12    # "e":Lcom/facebook/ads/redexgen/X/GD;
    goto :goto_2

    .line 6406
    :pswitch_1
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const/16 v4, 0x546

    const/4 v1, 0x5

    const/16 v0, 0x55

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6407
    invoke-direct {v2, v3}, Lcom/facebook/ads/redexgen/X/2r;->A05(Lcom/facebook/ads/redexgen/X/Gf;)Lcom/facebook/ads/redexgen/X/Gf;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/facebook/ads/redexgen/X/Gf;->A0H(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Gf;

    move-result-object v3

    goto :goto_2

    .line 6408
    :pswitch_2
    invoke-direct {v2, v3}, Lcom/facebook/ads/redexgen/X/2r;->A05(Lcom/facebook/ads/redexgen/X/Gf;)Lcom/facebook/ads/redexgen/X/Gf;

    move-result-object v3

    .line 6409
    :try_start_1
    invoke-static {v10}, Lcom/facebook/ads/redexgen/X/I2;->A03(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Gf;->A0B(I)Lcom/facebook/ads/redexgen/X/Gf;

    goto :goto_2
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 6410
    .restart local v12    # "e":Lcom/facebook/ads/redexgen/X/GD;
    :catch_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x32

    const/16 v2, 0x21

    const/16 v0, 0x7f

    invoke-static {v4, v2, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6411
    .end local v12    # "e":Lcom/facebook/ads/redexgen/X/GD;
    goto :goto_2

    .line 6412
    :pswitch_3
    invoke-direct {v2, v3}, Lcom/facebook/ads/redexgen/X/2r;->A05(Lcom/facebook/ads/redexgen/X/Gf;)Lcom/facebook/ads/redexgen/X/Gf;

    move-result-object v3

    .line 6413
    :try_start_2
    invoke-static {v10}, Lcom/facebook/ads/redexgen/X/I2;->A03(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Gf;->A0C(I)Lcom/facebook/ads/redexgen/X/Gf;

    goto :goto_2
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 6414
    .local v12, "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x53

    const/16 v2, 0x1c

    const/16 v0, 0x7d

    invoke-static {v4, v2, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6415
    .end local v12    # "e":Ljava/lang/IllegalArgumentException;
    goto/16 :goto_2

    .line 6416
    :pswitch_4
    invoke-direct {v2, v3}, Lcom/facebook/ads/redexgen/X/2r;->A05(Lcom/facebook/ads/redexgen/X/Gf;)Lcom/facebook/ads/redexgen/X/Gf;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/facebook/ads/redexgen/X/Gf;->A0G(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Gf;

    move-result-object v3

    .line 6417
    goto/16 :goto_2

    .line 6418
    :pswitch_5
    invoke-direct {v2, v3}, Lcom/facebook/ads/redexgen/X/2r;->A05(Lcom/facebook/ads/redexgen/X/Gf;)Lcom/facebook/ads/redexgen/X/Gf;

    move-result-object v3

    const/16 v2, 0x3f4

    const/4 v1, 0x4

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Gf;->A0I(Z)Lcom/facebook/ads/redexgen/X/Gf;

    move-result-object v3

    .line 6419
    goto/16 :goto_2

    .line 6420
    :pswitch_6
    invoke-direct {v2, v3}, Lcom/facebook/ads/redexgen/X/2r;->A05(Lcom/facebook/ads/redexgen/X/Gf;)Lcom/facebook/ads/redexgen/X/Gf;

    move-result-object v3

    const/16 v2, 0x4c4

    const/4 v1, 0x6

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Gf;->A0J(Z)Lcom/facebook/ads/redexgen/X/Gf;

    move-result-object v3

    .line 6421
    goto/16 :goto_2

    .line 6422
    :pswitch_7
    invoke-static {v10}, Lcom/facebook/ads/redexgen/X/Ic;->A0M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    :cond_2
    :goto_3
    if-eqz v8, :cond_8

    if-eq v8, v4, :cond_7

    if-eq v8, v7, :cond_6

    if-eq v8, v5, :cond_4

    if-eq v8, v9, :cond_3

    goto/16 :goto_2

    :sswitch_0
    const/16 v6, 0x408

    const/4 v1, 0x6

    const/16 v0, 0x62

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v8, 0x4

    goto :goto_3

    :sswitch_1
    const/16 v6, 0x427

    const/4 v1, 0x3

    const/16 v0, 0x5c

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v8, 0x3

    goto :goto_3

    :sswitch_2
    const/16 v6, 0x4d0

    const/4 v1, 0x4

    const/16 v0, 0x65

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v8, 0x0

    goto :goto_3

    :sswitch_3
    const/16 v6, 0x511

    const/4 v1, 0x5

    const/16 v0, 0x2e

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v8, 0x2

    goto :goto_3

    :sswitch_4
    const/16 v6, 0x541

    const/4 v1, 0x5

    const/16 v0, 0x49

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v8, 0x1

    goto :goto_3

    .line 6423
    :cond_3
    invoke-direct {v2, v3}, Lcom/facebook/ads/redexgen/X/2r;->A05(Lcom/facebook/ads/redexgen/X/Gf;)Lcom/facebook/ads/redexgen/X/Gf;

    move-result-object v1

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Gf;->A0E(Landroid/text/Layout$Alignment;)Lcom/facebook/ads/redexgen/X/Gf;

    move-result-object v3

    goto/16 :goto_2

    .line 6424
    :cond_4
    invoke-direct {v2, v3}, Lcom/facebook/ads/redexgen/X/2r;->A05(Lcom/facebook/ads/redexgen/X/Gf;)Lcom/facebook/ads/redexgen/X/Gf;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/2r;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/2r;->A02:[Ljava/lang/String;

    const-string v1, "FoIphwCiApEronn0JV4u"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Gf;->A0E(Landroid/text/Layout$Alignment;)Lcom/facebook/ads/redexgen/X/Gf;

    move-result-object v3

    .line 6425
    goto/16 :goto_2

    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/2r;->A02:[Ljava/lang/String;

    const-string v1, "zguvEDM8xWwDS56tR"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Gf;->A0E(Landroid/text/Layout$Alignment;)Lcom/facebook/ads/redexgen/X/Gf;

    move-result-object v3

    goto/16 :goto_2

    .line 6426
    :cond_6
    invoke-direct {v2, v3}, Lcom/facebook/ads/redexgen/X/2r;->A05(Lcom/facebook/ads/redexgen/X/Gf;)Lcom/facebook/ads/redexgen/X/Gf;

    move-result-object v1

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Gf;->A0E(Landroid/text/Layout$Alignment;)Lcom/facebook/ads/redexgen/X/Gf;

    move-result-object v3

    .line 6427
    goto/16 :goto_2

    .line 6428
    :cond_7
    invoke-direct {v2, v3}, Lcom/facebook/ads/redexgen/X/2r;->A05(Lcom/facebook/ads/redexgen/X/Gf;)Lcom/facebook/ads/redexgen/X/Gf;

    move-result-object v1

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Gf;->A0E(Landroid/text/Layout$Alignment;)Lcom/facebook/ads/redexgen/X/Gf;

    move-result-object v3

    .line 6429
    goto/16 :goto_2

    .line 6430
    :cond_8
    invoke-direct {v2, v3}, Lcom/facebook/ads/redexgen/X/2r;->A05(Lcom/facebook/ads/redexgen/X/Gf;)Lcom/facebook/ads/redexgen/X/Gf;

    move-result-object v1

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Gf;->A0E(Landroid/text/Layout$Alignment;)Lcom/facebook/ads/redexgen/X/Gf;

    move-result-object v3

    .line 6431
    goto/16 :goto_2

    .line 6432
    :pswitch_8
    invoke-static {v10}, Lcom/facebook/ads/redexgen/X/Ic;->A0M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_2

    :cond_9
    :goto_4
    if-eqz v8, :cond_c

    if-eq v8, v4, :cond_b

    if-eq v8, v7, :cond_a

    if-eq v8, v5, :cond_d

    goto/16 :goto_2

    :sswitch_5
    const/16 v9, 0x4f7

    const/16 v1, 0xb

    const/16 v0, 0x36

    invoke-static {v9, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v8, 0x3

    goto :goto_4

    :sswitch_6
    const/16 v9, 0x580

    const/16 v1, 0x9

    const/4 v0, 0x2

    invoke-static {v9, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v8, 0x2

    goto :goto_4

    :sswitch_7
    const/16 v9, 0x4ea

    const/16 v1, 0xd

    const/16 v0, 0x10

    invoke-static {v9, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v8, 0x1

    goto :goto_4

    :sswitch_8
    const/16 v9, 0x4d4

    const/16 v1, 0xb

    const/16 v0, 0x15

    invoke-static {v9, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v8, 0x0

    goto :goto_4

    .line 6433
    :cond_a
    invoke-direct {v2, v3}, Lcom/facebook/ads/redexgen/X/2r;->A05(Lcom/facebook/ads/redexgen/X/Gf;)Lcom/facebook/ads/redexgen/X/Gf;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Gf;->A0L(Z)Lcom/facebook/ads/redexgen/X/Gf;

    move-result-object v3

    .line 6434
    goto/16 :goto_2

    .line 6435
    :cond_b
    invoke-direct {v2, v3}, Lcom/facebook/ads/redexgen/X/2r;->A05(Lcom/facebook/ads/redexgen/X/Gf;)Lcom/facebook/ads/redexgen/X/Gf;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/Gf;->A0K(Z)Lcom/facebook/ads/redexgen/X/Gf;

    move-result-object v3

    .line 6436
    goto/16 :goto_2

    .line 6437
    :cond_c
    invoke-direct {v2, v3}, Lcom/facebook/ads/redexgen/X/2r;->A05(Lcom/facebook/ads/redexgen/X/Gf;)Lcom/facebook/ads/redexgen/X/Gf;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Gf;->A0K(Z)Lcom/facebook/ads/redexgen/X/Gf;

    move-result-object v3

    .line 6438
    goto/16 :goto_2

    .line 6439
    :sswitch_9
    const/16 v2, 0x443

    const/16 v1, 0x9

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v14, 0x6

    goto/16 :goto_1

    :sswitch_a
    const/16 v2, 0x431

    const/16 v1, 0xa

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v14, 0x3

    goto/16 :goto_1

    :sswitch_b
    const/16 v2, 0x55f

    const/16 v1, 0x9

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v14, 0x7

    goto/16 :goto_1

    :sswitch_c
    const/16 v2, 0x568

    const/16 v1, 0xe

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v14, 0x8

    goto/16 :goto_1

    :sswitch_d
    const/16 v2, 0x44c

    const/16 v1, 0xa

    sget-object v16, Lcom/facebook/ads/redexgen/X/2r;->A02:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v15, v16, v0

    const/4 v0, 0x4

    aget-object v0, v16, v0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v15, v0, :cond_e

    sget-object v16, Lcom/facebook/ads/redexgen/X/2r;->A02:[Ljava/lang/String;

    const-string v15, "1QgffU3o3WeQChXP9qQV"

    const/4 v0, 0x7

    aput-object v15, v16, v0

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v14, 0x5

    goto/16 :goto_1

    .line 6440
    :cond_d
    invoke-direct {v2, v3}, Lcom/facebook/ads/redexgen/X/2r;->A05(Lcom/facebook/ads/redexgen/X/Gf;)Lcom/facebook/ads/redexgen/X/Gf;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/2r;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x10

    if-eq v1, v0, :cond_f

    :cond_e
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_f
    sget-object v2, Lcom/facebook/ads/redexgen/X/2r;->A02:[Ljava/lang/String;

    const-string v1, "4jVyw2vhAu999Mlp"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v3, v6}, Lcom/facebook/ads/redexgen/X/Gf;->A0L(Z)Lcom/facebook/ads/redexgen/X/Gf;

    move-result-object v3

    goto/16 :goto_2

    .line 6441
    :sswitch_e
    const/16 v2, 0x4c2

    const/4 v1, 0x2

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v14, 0x0

    goto/16 :goto_1

    :sswitch_f
    const/16 v2, 0x40e

    const/4 v1, 0x5

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v14, 0x2

    goto/16 :goto_1

    :sswitch_10
    const/16 v2, 0x43b

    const/16 v1, 0x8

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v14, 0x4

    goto/16 :goto_1

    :sswitch_11
    const/16 v2, 0x3dc

    const/16 v1, 0xf

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v14, 0x1

    goto/16 :goto_1

    .line 6442
    .end local v13    # "i":I
    :cond_10
    return-object v3

    :sswitch_data_0
    .sparse-switch
        -0x5c71855e -> :sswitch_9
        -0x48ff636d -> :sswitch_a
        -0x3f826a28 -> :sswitch_b
        -0x3468fa43 -> :sswitch_c
        -0x2bc67c59 -> :sswitch_d
        0xd1b -> :sswitch_e
        0x5a72f63 -> :sswitch_f
        0x15caa0f0 -> :sswitch_10
        0x4cb7f6d5 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x514d33ab -> :sswitch_0
        0x188db -> :sswitch_1
        0x32a007 -> :sswitch_2
        0x677c21c -> :sswitch_3
        0x68ac462 -> :sswitch_4
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x57195dd5 -> :sswitch_5
        -0x3d363934 -> :sswitch_6
        0x36723ff0 -> :sswitch_7
        0x641ec051 -> :sswitch_8
    .end sparse-switch
.end method

.method private final A07([BIZ)Lcom/facebook/ads/redexgen/X/UB;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/GD;
        }
    .end annotation

    move-object/from16 v11, p0

    .line 6443
    :try_start_0
    iget-object v0, v11, Lcom/facebook/ads/redexgen/X/2r;->A00:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v10

    .line 6444
    .local v3, "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 6445
    .local p3, "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/ads/internal/exoplayer2/text/ttml/TtmlStyle;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 6446
    .local v11, "regionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/ads/internal/exoplayer2/text/ttml/TtmlRegion;>;"
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ga;

    invoke-direct {v0, v2}, Lcom/facebook/ads/redexgen/X/Ga;-><init>(Ljava/lang/String;)V

    invoke-interface {v8, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6447
    const/4 v1, 0x0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    move/from16 v3, p2

    move-object/from16 v4, p1

    invoke-direct {v0, v4, v1, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 6448
    .local v0, "inputStream":Ljava/io/ByteArrayInputStream;
    invoke-interface {v10, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 6449
    const/4 v7, 0x0

    .line 6450
    .local p0, "ttmlSubtitle":Lcom/facebook/ads/redexgen/X/UB;
    new-instance v6, Ljava/util/ArrayDeque;

    invoke-direct {v6}, Ljava/util/ArrayDeque;-><init>()V

    .line 6451
    .local v10, "nodeStack":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lcom/facebook/ads/internal/exoplayer2/text/ttml/TtmlNode;>;"
    const/4 v15, 0x0

    .line 6452
    .local v9, "unsupportedNodeDepth":I
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 6453
    .local v8, "eventType":I
    sget-object v5, Lcom/facebook/ads/redexgen/X/2r;->A04:Lcom/facebook/ads/redexgen/X/GY;

    .line 6454
    .local v8, "frameAndTickRate":Lcom/facebook/ads/redexgen/X/GY;
    sget-object v4, Lcom/facebook/ads/redexgen/X/2r;->A03:Lcom/facebook/ads/redexgen/X/GX;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 6455
    .end local p0    # "ttmlSubtitle":Lcom/facebook/ads/redexgen/X/UB;
    .local v9, "ttmlSubtitle":Lcom/facebook/ads/redexgen/X/UB;
    .local v2, "cellResolution":Lcom/facebook/ads/redexgen/X/GX;
    .local v1, "unsupportedNodeDepth":I
    :goto_0
    const/4 v12, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/2r;->A02:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v1, v2, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v1, 0x10

    if-eq v2, v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v3, Lcom/facebook/ads/redexgen/X/2r;->A02:[Ljava/lang/String;

    const-string v2, "KskBLepX14NOKzgf"

    const/4 v1, 0x0

    aput-object v2, v3, v1

    if-eq v0, v12, :cond_a

    .line 6456
    :try_start_2
    invoke-virtual {v6}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/GZ;

    .line 6457
    .local v0, "parent":Lcom/facebook/ads/redexgen/X/GZ;
    const/4 v14, 0x2

    if-nez v15, :cond_5

    .line 6458
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 6459
    .local v0, "name":Ljava/lang/String;
    const/16 v12, 0x57e

    const/4 v3, 0x2

    const/16 v1, 0x77

    invoke-static {v12, v3, v1}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v3

    if-ne v0, v14, :cond_2

    .line 6460
    .end local v0    # "name":Ljava/lang/String;
    .local v1, "name":Ljava/lang/String;
    :try_start_3
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6461
    invoke-direct {v11, v10}, Lcom/facebook/ads/redexgen/X/2r;->A02(Lorg/xmlpull/v1/XmlPullParser;)Lcom/facebook/ads/redexgen/X/GY;

    move-result-object v5

    .line 6462
    sget-object v0, Lcom/facebook/ads/redexgen/X/2r;->A03:Lcom/facebook/ads/redexgen/X/GX;

    invoke-direct {v11, v10, v0}, Lcom/facebook/ads/redexgen/X/2r;->A01(Lorg/xmlpull/v1/XmlPullParser;Lcom/facebook/ads/redexgen/X/GX;)Lcom/facebook/ads/redexgen/X/GX;

    move-result-object v4

    .line 6463
    :cond_1
    invoke-static {v13}, Lcom/facebook/ads/redexgen/X/2r;->A0D(Ljava/lang/String;)Z

    move-result v14
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .end local v0
    .local v0, "inputStream":Ljava/io/ByteArrayInputStream;
    const/16 v3, 0x2cd

    const/16 v1, 0xb

    const/16 v0, 0x3a

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v12

    if-nez v14, :cond_7

    .line 6464
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x194

    const/16 v1, 0x1a

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6465
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 6466
    .end local v1    # "name":Ljava/lang/String;
    .restart local v0    # "inputStream":Ljava/io/ByteArrayInputStream;
    .local v0, "name":Ljava/lang/String;
    .end local v0    # "name":Ljava/lang/String;
    .restart local v1    # "name":Ljava/lang/String;
    .local v0, "inputStream":Ljava/io/ByteArrayInputStream;
    :cond_2
    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 6467
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/GZ;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/GZ;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/GZ;->A0F(Lcom/facebook/ads/redexgen/X/GZ;)V

    goto :goto_1

    .line 6468
    :cond_3
    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    .line 6469
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6470
    new-instance v7, Lcom/facebook/ads/redexgen/X/UB;

    invoke-virtual {v6}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/GZ;

    invoke-direct {v7, v0, v9, v8}, Lcom/facebook/ads/redexgen/X/UB;-><init>(Lcom/facebook/ads/redexgen/X/GZ;Ljava/util/Map;Ljava/util/Map;)V

    .line 6471
    :cond_4
    invoke-virtual {v6}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    goto :goto_1

    .line 6472
    .end local v0    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "inputStream":Ljava/io/ByteArrayInputStream;
    .end local v0    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "inputStream":Ljava/io/ByteArrayInputStream;
    :cond_5
    if-ne v0, v14, :cond_6

    .line 6473
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 6474
    :cond_6
    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    .line 6475
    add-int/lit8 v15, v15, -0x1

    goto :goto_1

    .line 6476
    :cond_7
    const/16 v3, 0x49b

    const/4 v1, 0x4

    const/16 v0, 0x52

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 6477
    invoke-direct {v11, v10, v9, v8, v4}, Lcom/facebook/ads/redexgen/X/2r;->A09(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/GX;)Ljava/util/Map;

    .line 6478
    :cond_8
    :goto_1
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 6479
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 6480
    .end local v0    # "inputStream":Ljava/io/ByteArrayInputStream;
    goto/16 :goto_0
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 6481
    :cond_9
    :try_start_5
    invoke-direct {v11, v10, v2, v8, v5}, Lcom/facebook/ads/redexgen/X/2r;->A03(Lorg/xmlpull/v1/XmlPullParser;Lcom/facebook/ads/redexgen/X/GZ;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/GY;)Lcom/facebook/ads/redexgen/X/GZ;

    move-result-object v0

    .line 6482
    .local p0, "node":Lcom/facebook/ads/redexgen/X/GZ;
    invoke-virtual {v6, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 6483
    if-eqz v2, :cond_8

    .line 6484
    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/GZ;->A0F(Lcom/facebook/ads/redexgen/X/GZ;)V

    goto :goto_1
    :try_end_5
    .catch Lcom/facebook/ads/redexgen/X/GD; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 6485
    .end local p0    # "node":Lcom/facebook/ads/redexgen/X/GZ;
    :catch_0
    move-exception v3

    .line 6486
    .local p0, "e":Lcom/facebook/ads/redexgen/X/GD;
    :try_start_6
    const/16 v2, 0x2b5

    const/16 v1, 0x18

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6487
    .end local p0    # "e":Lcom/facebook/ads/redexgen/X/GD;
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 6488
    .end local v0
    .restart local v0    # "inputStream":Ljava/io/ByteArrayInputStream;
    :cond_a
    return-object v7
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 6489
    :catch_1
    move-exception v3

    goto :goto_2

    .end local v3    # "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    .end local p3    # "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/ads/internal/exoplayer2/text/ttml/TtmlStyle;>;"
    .end local v11    # "regionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/ads/internal/exoplayer2/text/ttml/TtmlRegion;>;"
    .end local v0    # "inputStream":Ljava/io/ByteArrayInputStream;
    .end local v10    # "nodeStack":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lcom/facebook/ads/internal/exoplayer2/text/ttml/TtmlNode;>;"
    .end local v9    # "ttmlSubtitle":Lcom/facebook/ads/redexgen/X/UB;
    .end local v8    # "frameAndTickRate":Lcom/facebook/ads/redexgen/X/GY;
    .end local v8
    .end local v2    # "cellResolution":Lcom/facebook/ads/redexgen/X/GX;
    .end local v1    # "name":Ljava/lang/String;
    :catch_2
    move-exception v3

    .line 6490
    .local p0, "e":Ljava/io/IOException;
    :goto_2
    const/16 v2, 0x2ef

    const/16 v1, 0x24

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 6491
    .end local p0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v3

    goto :goto_3

    :catch_4
    move-exception v3

    .line 6492
    .local p0, "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_3
    const/16 v2, 0x2d8

    const/16 v1, 0x17

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/GD;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/GD;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static A08(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/2r;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x78

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A09(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/GX;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/Gf;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/Ga;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/GX;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/Gf;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 6493
    .local v0, "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/ads/internal/exoplayer2/text/ttml/TtmlStyle;>;"
    .local v1, "globalRegions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/ads/internal/exoplayer2/text/ttml/TtmlRegion;>;"
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 6494
    const/16 v2, 0x546

    const/4 v1, 0x5

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/facebook/ads/redexgen/X/Id;->A04(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6495
    invoke-static {p1, v1}, Lcom/facebook/ads/redexgen/X/Id;->A00(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6496
    .local p0, "parentStyleId":Ljava/lang/String;
    new-instance v0, Lcom/facebook/ads/redexgen/X/Gf;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Gf;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A06(Lorg/xmlpull/v1/XmlPullParser;Lcom/facebook/ads/redexgen/X/Gf;)Lcom/facebook/ads/redexgen/X/Gf;

    move-result-object v3

    .line 6497
    .local p1, "style":Lcom/facebook/ads/redexgen/X/Gf;
    if-eqz v1, :cond_2

    .line 6498
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/2r;->A0E(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v2, v4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v0, v4, v1

    .line 6499
    .local v2, "id":Ljava/lang/String;
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Gf;

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Gf;->A0F(Lcom/facebook/ads/redexgen/X/Gf;)Lcom/facebook/ads/redexgen/X/Gf;

    .line 6500
    .end local v2    # "id":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6501
    .end local p0    # "parentStyleId":Ljava/lang/String;
    .end local p1    # "style":Lcom/facebook/ads/redexgen/X/Gf;
    :cond_1
    const/16 v2, 0x50b

    const/4 v1, 0x6

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/Id;->A04(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6502
    invoke-direct {p0, p1, p4}, Lcom/facebook/ads/redexgen/X/2r;->A04(Lorg/xmlpull/v1/XmlPullParser;Lcom/facebook/ads/redexgen/X/GX;)Lcom/facebook/ads/redexgen/X/Ga;

    move-result-object v1

    .line 6503
    .local p0, "ttmlRegion":Lcom/facebook/ads/redexgen/X/Ga;
    if-eqz v1, :cond_3

    .line 6504
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Ga;->A07:Ljava/lang/String;

    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 6505
    :cond_2
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gf;->A0N()Ljava/lang/String;

    move-result-object v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/2r;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x77

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/2r;->A02:[Ljava/lang/String;

    const-string v1, "A06uyMr6sQpaBbcm2exA"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v4, :cond_3

    .line 6506
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gf;->A0N()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6507
    :cond_3
    :goto_1
    const/16 v2, 0x49b

    const/4 v1, 0x4

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/Id;->A03(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6508
    return-object p2

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0A()V
    .locals 1

    const/16 v0, 0x589

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/2r;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x79t
        0x78t
        0x64t
        0x6dt
        0x1dt
        0x4ct
        0x60t
        0x7at
        0x63t
        0x6bt
        0x61t
        0x28t
        0x7bt
        0x2ft
        0x6ct
        0x7dt
        0x6at
        0x6et
        0x7bt
        0x6at
        0x2ft
        0x57t
        0x62t
        0x63t
        0x5ft
        0x7at
        0x63t
        0x63t
        0x5ft
        0x6et
        0x7dt
        0x7ct
        0x6at
        0x7dt
        0x49t
        0x6et
        0x6ct
        0x7bt
        0x60t
        0x7dt
        0x76t
        0x2ft
        0x66t
        0x61t
        0x7ct
        0x7bt
        0x6et
        0x61t
        0x6ct
        0x6at
        0x41t
        0x66t
        0x6et
        0x6bt
        0x62t
        0x63t
        0x27t
        0x77t
        0x66t
        0x75t
        0x74t
        0x6et
        0x69t
        0x60t
        0x27t
        0x65t
        0x66t
        0x64t
        0x6ct
        0x60t
        0x75t
        0x68t
        0x72t
        0x69t
        0x63t
        0x27t
        0x71t
        0x66t
        0x6bt
        0x72t
        0x62t
        0x3dt
        0x27t
        0x43t
        0x64t
        0x6ct
        0x69t
        0x60t
        0x61t
        0x25t
        0x75t
        0x64t
        0x77t
        0x76t
        0x6ct
        0x6bt
        0x62t
        0x25t
        0x66t
        0x6at
        0x69t
        0x6at
        0x77t
        0x25t
        0x73t
        0x64t
        0x69t
        0x70t
        0x60t
        0x3ft
        0x25t
        0x77t
        0x50t
        0x58t
        0x5dt
        0x54t
        0x55t
        0x11t
        0x41t
        0x50t
        0x43t
        0x42t
        0x58t
        0x5ft
        0x56t
        0x11t
        0x57t
        0x5et
        0x5ft
        0x45t
        0x62t
        0x58t
        0x4bt
        0x54t
        0x11t
        0x47t
        0x50t
        0x5dt
        0x44t
        0x54t
        0xbt
        0x11t
        0x62t
        0x4ct
        0x45t
        0x44t
        0x59t
        0x42t
        0x45t
        0x4ct
        0xbt
        0x46t
        0x4at
        0x47t
        0x4dt
        0x44t
        0x59t
        0x46t
        0x4et
        0x4ft
        0xbt
        0x48t
        0x4et
        0x47t
        0x47t
        0xbt
        0x59t
        0x4et
        0x58t
        0x44t
        0x47t
        0x5et
        0x5ft
        0x42t
        0x44t
        0x45t
        0x11t
        0xbt
        0x2ct
        0x2t
        0xbt
        0xat
        0x17t
        0xct
        0xbt
        0x2t
        0x45t
        0x17t
        0x0t
        0x2t
        0xct
        0xat
        0xbt
        0x45t
        0x12t
        0xct
        0x11t
        0xdt
        0x45t
        0x8t
        0x4t
        0x9t
        0x3t
        0xat
        0x17t
        0x8t
        0x0t
        0x1t
        0x45t
        0x0t
        0x1dt
        0x11t
        0x0t
        0xbt
        0x11t
        0x5ft
        0x45t
        0x69t
        0x47t
        0x4et
        0x4ft
        0x52t
        0x49t
        0x4et
        0x47t
        0x0t
        0x52t
        0x45t
        0x47t
        0x49t
        0x4ft
        0x4et
        0x0t
        0x57t
        0x49t
        0x54t
        0x48t
        0x0t
        0x4dt
        0x41t
        0x4ct
        0x46t
        0x4ft
        0x52t
        0x4dt
        0x45t
        0x44t
        0x0t
        0x4ft
        0x52t
        0x49t
        0x47t
        0x49t
        0x4et
        0x1at
        0x0t
        0x10t
        0x3et
        0x37t
        0x36t
        0x2bt
        0x30t
        0x37t
        0x3et
        0x79t
        0x2bt
        0x3ct
        0x3et
        0x30t
        0x36t
        0x37t
        0x79t
        0x2et
        0x30t
        0x2dt
        0x31t
        0x79t
        0x2ct
        0x37t
        0x2at
        0x2ct
        0x29t
        0x29t
        0x36t
        0x2bt
        0x2dt
        0x3ct
        0x3dt
        0x79t
        0x3ct
        0x21t
        0x2dt
        0x3ct
        0x37t
        0x2dt
        0x63t
        0x79t
        0x76t
        0x58t
        0x51t
        0x50t
        0x4dt
        0x56t
        0x51t
        0x58t
        0x1ft
        0x4dt
        0x5at
        0x58t
        0x56t
        0x50t
        0x51t
        0x1ft
        0x48t
        0x56t
        0x4bt
        0x57t
        0x1ft
        0x4at
        0x51t
        0x4ct
        0x4at
        0x4ft
        0x4ft
        0x50t
        0x4dt
        0x4bt
        0x5at
        0x5bt
        0x1ft
        0x50t
        0x4dt
        0x56t
        0x58t
        0x56t
        0x51t
        0x5t
        0x1ft
        0x29t
        0x7t
        0xet
        0xft
        0x12t
        0x9t
        0xet
        0x7t
        0x40t
        0x12t
        0x5t
        0x7t
        0x9t
        0xft
        0xet
        0x40t
        0x17t
        0x9t
        0x14t
        0x8t
        0xft
        0x15t
        0x14t
        0x40t
        0x1t
        0xet
        0x40t
        0x5t
        0x18t
        0x14t
        0x5t
        0xet
        0x14t
        0x6ct
        0x42t
        0x4bt
        0x4at
        0x57t
        0x4ct
        0x4bt
        0x42t
        0x5t
        0x57t
        0x40t
        0x42t
        0x4ct
        0x4at
        0x4bt
        0x5t
        0x52t
        0x4ct
        0x51t
        0x4dt
        0x4at
        0x50t
        0x51t
        0x5t
        0x44t
        0x4bt
        0x5t
        0x4at
        0x57t
        0x4ct
        0x42t
        0x4ct
        0x4bt
        0x3at
        0x14t
        0x1dt
        0x1ct
        0x1t
        0x1at
        0x1dt
        0x14t
        0x53t
        0x6t
        0x1dt
        0x0t
        0x6t
        0x3t
        0x3t
        0x1ct
        0x1t
        0x7t
        0x16t
        0x17t
        0x53t
        0x7t
        0x12t
        0x14t
        0x49t
        0x53t
        0x71t
        0x56t
        0x4et
        0x59t
        0x54t
        0x51t
        0x5ct
        0x18t
        0x5bt
        0x5dt
        0x54t
        0x54t
        0x18t
        0x4at
        0x5dt
        0x4bt
        0x57t
        0x54t
        0x4dt
        0x4ct
        0x51t
        0x57t
        0x56t
        0x18t
        0x1dt
        0x3at
        0x22t
        0x35t
        0x38t
        0x3dt
        0x30t
        0x74t
        0x31t
        0x2ct
        0x24t
        0x26t
        0x31t
        0x27t
        0x27t
        0x3dt
        0x3bt
        0x3at
        0x74t
        0x32t
        0x3bt
        0x26t
        0x74t
        0x32t
        0x3bt
        0x3at
        0x20t
        0x7t
        0x3dt
        0x2et
        0x31t
        0x6et
        0x74t
        0x73t
        0xdt
        0x2at
        0x32t
        0x25t
        0x28t
        0x2dt
        0x20t
        0x64t
        0x2at
        0x31t
        0x29t
        0x26t
        0x21t
        0x36t
        0x64t
        0x2bt
        0x22t
        0x64t
        0x21t
        0x2at
        0x30t
        0x36t
        0x2dt
        0x21t
        0x37t
        0x64t
        0x22t
        0x2bt
        0x36t
        0x64t
        0x22t
        0x2bt
        0x2at
        0x30t
        0x17t
        0x2dt
        0x3et
        0x21t
        0x7et
        0x64t
        0x21t
        0x6t
        0x1et
        0x9t
        0x4t
        0x1t
        0xct
        0x48t
        0x1dt
        0x6t
        0x1t
        0x1ct
        0x48t
        0xet
        0x7t
        0x1at
        0x48t
        0xet
        0x7t
        0x6t
        0x1ct
        0x3bt
        0x1t
        0x12t
        0xdt
        0x52t
        0x48t
        0x4ft
        0x75t
        0x59t
        0x54t
        0x5et
        0x57t
        0x4at
        0x55t
        0x5dt
        0x5ct
        0x18t
        0x4ct
        0x51t
        0x55t
        0x5dt
        0x18t
        0x5dt
        0x40t
        0x48t
        0x4at
        0x5dt
        0x4bt
        0x4bt
        0x51t
        0x57t
        0x56t
        0x2t
        0x18t
        0x36t
        0xet
        0x17t
        0xft
        0x12t
        0xbt
        0x17t
        0x1et
        0x5bt
        0xdt
        0x1at
        0x17t
        0xet
        0x1et
        0x8t
        0x5bt
        0x12t
        0x15t
        0x5bt
        0x1dt
        0x14t
        0x15t
        0xft
        0x28t
        0x12t
        0x1t
        0x1et
        0x5bt
        0x1at
        0xft
        0xft
        0x9t
        0x12t
        0x19t
        0xet
        0xft
        0x1et
        0x55t
        0x5bt
        0x2bt
        0x12t
        0x18t
        0x10t
        0x12t
        0x15t
        0x1ct
        0x5bt
        0xft
        0x13t
        0x1et
        0x5bt
        0x8t
        0x1et
        0x18t
        0x14t
        0x15t
        0x1ft
        0x5bt
        0xdt
        0x1at
        0x17t
        0xet
        0x1et
        0x5bt
        0x1dt
        0x14t
        0x9t
        0x5bt
        0xdt
        0x1et
        0x9t
        0xft
        0x12t
        0x18t
        0x1at
        0x17t
        0x5bt
        0x1dt
        0x14t
        0x15t
        0xft
        0x5bt
        0x8t
        0x12t
        0x1t
        0x1et
        0x5bt
        0x1at
        0x15t
        0x1ft
        0x5bt
        0x12t
        0x1ct
        0x15t
        0x14t
        0x9t
        0x12t
        0x15t
        0x1ct
        0x5bt
        0xft
        0x13t
        0x1et
        0x5bt
        0x1dt
        0x12t
        0x9t
        0x8t
        0xft
        0x55t
        0x65t
        0x43t
        0x46t
        0x46t
        0x44t
        0x53t
        0x45t
        0x45t
        0x5ft
        0x58t
        0x51t
        0x16t
        0x46t
        0x57t
        0x44t
        0x45t
        0x53t
        0x44t
        0x16t
        0x53t
        0x44t
        0x44t
        0x59t
        0x44t
        0x16t
        0x36t
        0x2ft
        0x2et
        0x6t
        0x27t
        0x21t
        0x2dt
        0x26t
        0x27t
        0x30t
        0x32t
        0x9t
        0x6t
        0x5t
        0xbt
        0x2t
        0x47t
        0x13t
        0x8t
        0x47t
        0x3t
        0x2t
        0x4t
        0x8t
        0x3t
        0x2t
        0x47t
        0x14t
        0x8t
        0x12t
        0x15t
        0x4t
        0x2t
        0x16t
        0x2dt
        0x26t
        0x3bt
        0x33t
        0x26t
        0x20t
        0x37t
        0x26t
        0x27t
        0x63t
        0x26t
        0x31t
        0x31t
        0x2ct
        0x31t
        0x63t
        0x34t
        0x2bt
        0x26t
        0x2dt
        0x63t
        0x31t
        0x26t
        0x22t
        0x27t
        0x2at
        0x2dt
        0x24t
        0x63t
        0x2at
        0x2dt
        0x33t
        0x36t
        0x37t
        0x6dt
        0x27t
        0x8t
        0x50t
        0x4et
        0x38t
        0x38t
        0x4bt
        0x20t
        0x3dt
        0x29t
        0x4dt
        0x3at
        0x3et
        0x39t
        0x2ft
        0x4bt
        0x20t
        0x3dt
        0x29t
        0x4dt
        0x3bt
        0x39t
        0x38t
        0x60t
        0x68t
        0x6ct
        0x75t
        0x7dt
        0x6ct
        0x35t
        0x39t
        0x34t
        0x72t
        0x4t
        0x77t
        0x1ct
        0x1t
        0x15t
        0x71t
        0x7t
        0x4t
        0x13t
        0x16t
        0x70t
        0x2t
        0x77t
        0x1ct
        0x1t
        0x15t
        0x71t
        0x7t
        0x5t
        0x13t
        0x5t
        0x4t
        0x44t
        0x50t
        0x41t
        0x50t
        0x5ft
        0x50t
        0x41t
        0x5ft
        0x50t
        0x4at
        0x50t
        0x58t
        0x5t
        0x8t
        0x14t
        0x62t
        0x11t
        0x7at
        0x67t
        0x73t
        0x17t
        0x11t
        0x7at
        0x67t
        0x73t
        0x17t
        0x61t
        0x63t
        0x70t
        0x62t
        0x11t
        0x7at
        0x67t
        0x73t
        0x17t
        0x11t
        0x7at
        0x67t
        0x73t
        0x17t
        0x63t
        0x70t
        0x62t
        0x11t
        0x7at
        0x67t
        0x73t
        0x17t
        0x11t
        0x7at
        0x67t
        0x73t
        0x17t
        0x63t
        0x62t
        0x75t
        0x70t
        0x62t
        0x16t
        0x64t
        0x11t
        0x7at
        0x67t
        0x73t
        0x17t
        0x61t
        0x63t
        0x36t
        0x70t
        0x62t
        0x11t
        0x7at
        0x67t
        0x73t
        0x17t
        0x11t
        0x7at
        0x67t
        0x73t
        0x17t
        0x63t
        0x62t
        0x75t
        0x70t
        0x16t
        0x64t
        0x62t
        0x11t
        0x7at
        0x67t
        0x73t
        0x17t
        0x61t
        0x63t
        0x63t
        0x75t
        0x63t
        0x75t
        0x6et
        0x20t
        0x56t
        0x22t
        0x1at
        0x55t
        0x57t
        0x5et
        0x56t
        0x22t
        0x1at
        0x55t
        0x57t
        0x5at
        0x2et
        0x58t
        0x2ct
        0x14t
        0x5bt
        0x2ct
        0x5et
        0x4ft
        0x2ct
        0x14t
        0x5at
        0x4ft
        0x59t
        0x55t
        0x50t
        0x58t
        0x2ct
        0x14t
        0x5bt
        0x2ct
        0x5et
        0x4ft
        0x2ct
        0x14t
        0x5at
        0x4ft
        0x59t
        0x55t
        0x54t
        0x10t
        0x17t
        0x5t
        0x14t
        0x3t
        0x40t
        0x43t
        0x41t
        0x49t
        0x45t
        0x50t
        0x4dt
        0x57t
        0x4ct
        0x46t
        0x61t
        0x4dt
        0x4et
        0x4dt
        0x50t
        0x60t
        0x67t
        0x65t
        0x6bt
        0x6ct
        0x71t
        0x7ct
        0x77t
        0x6at
        0x7et
        0x73t
        0x70t
        0x78t
        0xet
        0x1et
        0x14t
        0x12t
        0x1bt
        0x1bt
        0x25t
        0x12t
        0x4t
        0x18t
        0x1bt
        0x2t
        0x3t
        0x1et
        0x18t
        0x19t
        0x79t
        0x7ft
        0x74t
        0x6et
        0x7ft
        0x68t
        0x66t
        0x6at
        0x69t
        0x6at
        0x77t
        0x3t
        0xet
        0x14t
        0x17t
        0xbt
        0x6t
        0x1et
        0x26t
        0xbt
        0xet
        0x0t
        0x9t
        0x17t
        0x1at
        0x5t
        0x33t
        0x22t
        0x25t
        0x70t
        0x78t
        0x41t
        0x4at
        0x40t
        0x5t
        0x18t
        0x14t
        0x5t
        0xet
        0x14t
        0xet
        0x71t
        0x78t
        0x79t
        0x63t
        0x51t
        0x76t
        0x7at
        0x7et
        0x7bt
        0x6et
        0x59t
        0x50t
        0x51t
        0x4bt
        0x6ct
        0x56t
        0x45t
        0x5at
        0x6ft
        0x66t
        0x67t
        0x7dt
        0x5at
        0x7dt
        0x70t
        0x65t
        0x6ct
        0x68t
        0x61t
        0x60t
        0x7at
        0x59t
        0x6bt
        0x67t
        0x69t
        0x66t
        0x7at
        0x7dt
        0x69t
        0x7at
        0x76t
        0x7et
        0x49t
        0x7at
        0x6ft
        0x7et
        0x1t
        0x15t
        0x6t
        0xat
        0x2t
        0x35t
        0x6t
        0x13t
        0x2t
        0x2at
        0x12t
        0xbt
        0x13t
        0xet
        0x17t
        0xbt
        0xet
        0x2t
        0x15t
        0x6dt
        0x79t
        0x6at
        0x66t
        0x6et
        0x59t
        0x6at
        0x7ft
        0x6et
        0x46t
        0x7et
        0x67t
        0x7ft
        0x62t
        0x7bt
        0x67t
        0x62t
        0x6et
        0x79t
        0x2bt
        0x6ft
        0x64t
        0x6et
        0x78t
        0x65t
        0x2ct
        0x7ft
        0x2bt
        0x63t
        0x6at
        0x7dt
        0x6et
        0x2bt
        0x39t
        0x2bt
        0x7bt
        0x6at
        0x79t
        0x7ft
        0x78t
        0x67t
        0x42t
        0x4ft
        0x4bt
        0x4et
        0x3ct
        0x20t
        0x20t
        0x24t
        0x6et
        0x7bt
        0x7bt
        0x23t
        0x23t
        0x23t
        0x7at
        0x23t
        0x67t
        0x7at
        0x3bt
        0x26t
        0x33t
        0x7bt
        0x3at
        0x27t
        0x7bt
        0x20t
        0x20t
        0x39t
        0x38t
        0x77t
        0x24t
        0x35t
        0x26t
        0x35t
        0x39t
        0x31t
        0x20t
        0x31t
        0x26t
        0x45t
        0x48t
        0xft
        0x12t
        0x7t
        0xat
        0xft
        0x5t
        0xft
        0x2t
        0x1at
        0xct
        0x16t
        0x17t
        0x71t
        0x78t
        0x7bt
        0x69t
        0x1t
        0x4t
        0x3t
        0x8t
        0x19t
        0x5t
        0x1ft
        0x2t
        0x18t
        0xat
        0x5t
        0x7ft
        0x11t
        0x19t
        0x8t
        0x1dt
        0x18t
        0x1dt
        0x8t
        0x1dt
        0x44t
        0x5at
        0x6t
        0x7t
        0x4t
        0x1t
        0x6t
        0xdt
        0x1ct
        0x0t
        0x1at
        0x7t
        0x1dt
        0xft
        0x0t
        0x20t
        0x21t
        0x3bt
        0x20t
        0x2at
        0x2bt
        0x3ct
        0x22t
        0x27t
        0x20t
        0x2bt
        0x59t
        0x44t
        0x5ft
        0x51t
        0x5ft
        0x58t
        0x2t
        0x4et
        0x46t
        0x64t
        0x73t
        0x71t
        0x7ft
        0x79t
        0x78t
        0x24t
        0x3ft
        0x31t
        0x3et
        0x22t
        0x2at
        0x3ft
        0x21t
        0x3ct
        0x38t
        0x29t
        0x76t
        0x28t
        0x2dt
        0x38t
        0x2dt
        0x5t
        0x1bt
        0x6t
        0x2t
        0x13t
        0x4ct
        0x1ft
        0x1bt
        0x17t
        0x11t
        0x13t
        0x47t
        0x59t
        0x44t
        0x40t
        0x51t
        0xet
        0x5dt
        0x5at
        0x52t
        0x5bt
        0x46t
        0x59t
        0x55t
        0x40t
        0x5dt
        0x5bt
        0x5at
        0x64t
        0x67t
        0x76t
        0x79t
        0x42t
        0x45t
        0x50t
        0x43t
        0x45t
        0x5et
        0x59t
        0x54t
        0x41t
        0x48t
        0x68t
        0x6ft
        0x62t
        0x77t
        0x72t
        0x75t
        0x7ct
        0x3at
        0x3ct
        0x2bt
        0xft
        0x3bt
        0x28t
        0x24t
        0x2ct
        0x1bt
        0x28t
        0x3dt
        0x2ct
        0x76t
        0x63t
        0x72t
        0x6ft
        0x63t
        0x56t
        0x7bt
        0x7et
        0x70t
        0x79t
        0x55t
        0x44t
        0x59t
        0x55t
        0x65t
        0x44t
        0x42t
        0x4et
        0x53t
        0x40t
        0x55t
        0x48t
        0x4et
        0x4ft
        0x56t
        0x4bt
        0x41t
        0x49t
        0x70t
        0x43t
        0x56t
        0x47t
        0x7bt
        0x7bt
        0xft
        0x14t
        0x1et
        0x1ft
        0x8t
        0x16t
        0x13t
        0x14t
        0x1ft
    .end array-data
.end method

.method public static A0B()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "DtKXPzlRiumA5HR8"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "4wzQLw0lKkQZHqU9TDtunQK4AYqK3554"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "bLg4HGsEA6kkXqECl9LZnwlPQt2"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "nS3Jnrnl0GQH9qBqs74uXbAxeAT7U4Nh"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "VptIiKU"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "o689QwhaKFYzVBljSOGl7nsZ"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "sENmnGa1tAr5X9lKYLdcA0mBv8bSC3QZ"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "YyohQC0cIT4UP5z0OUVe"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/2r;->A02:[Ljava/lang/String;

    return-void
.end method

.method public static A0C(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Gf;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/GD;
        }
    .end annotation

    .line 6509
    const/16 v2, 0x313

    const/4 v1, 0x3

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0m(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 6510
    .local p0, "expressions":[Ljava/lang/String;
    array-length v0, v6

    const/4 v5, 0x2

    const/4 v4, 0x1

    if-ne v0, v4, :cond_6

    .line 6511
    sget-object v0, Lcom/facebook/ads/redexgen/X/2r;->A07:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 6512
    .local p1, "matcher":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    const/4 v2, 0x2

    const/4 v1, 0x2

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v6

    if-eqz v3, :cond_9

    .line 6513
    const/4 v9, 0x3

    invoke-virtual {v7, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 6514
    .local v6, "unit":Ljava/lang/String;
    const/4 v3, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v0, 0x25

    if-eq v1, v0, :cond_5

    const/16 v0, 0xca8

    if-eq v1, v0, :cond_4

    const/16 v0, 0xe08

    if-eq v1, v0, :cond_3

    :cond_0
    :goto_1
    if-eqz v3, :cond_2

    if-eq v3, v4, :cond_1

    if-ne v3, v5, :cond_7

    .line 6515
    invoke-virtual {p1, v9}, Lcom/facebook/ads/redexgen/X/Gf;->A0D(I)Lcom/facebook/ads/redexgen/X/Gf;

    .line 6516
    :goto_2
    invoke-virtual {v7, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Gf;->A0A(F)Lcom/facebook/ads/redexgen/X/Gf;

    .line 6517
    .end local v6    # "unit":Ljava/lang/String;
    return-void

    .line 6518
    :cond_1
    invoke-virtual {p1, v5}, Lcom/facebook/ads/redexgen/X/Gf;->A0D(I)Lcom/facebook/ads/redexgen/X/Gf;

    .line 6519
    goto :goto_2

    .line 6520
    :cond_2
    invoke-virtual {p1, v4}, Lcom/facebook/ads/redexgen/X/Gf;->A0D(I)Lcom/facebook/ads/redexgen/X/Gf;

    .line 6521
    goto :goto_2

    .line 6522
    :cond_3
    const/16 p0, 0x509

    const/4 v11, 0x2

    const/16 v10, 0x46

    sget-object v2, Lcom/facebook/ads/redexgen/X/2r;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_8

    sget-object v2, Lcom/facebook/ads/redexgen/X/2r;->A02:[Ljava/lang/String;

    const-string v1, "3lNpUtHRwPsskZdJ"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-static {p0, v11, v10}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    const/16 v2, 0x425

    const/4 v1, 0x2

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_5
    const/4 v2, 0x1

    const/4 v1, 0x1

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x2

    goto :goto_1

    .line 6523
    .end local p1    # "matcher":Ljava/util/regex/Matcher;
    :cond_6
    array-length v0, v6

    if-ne v0, v5, :cond_a

    .line 6524
    sget-object v1, Lcom/facebook/ads/redexgen/X/2r;->A07:Ljava/util/regex/Pattern;

    aget-object v0, v6, v4

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 6525
    .restart local p1    # "matcher":Ljava/util/regex/Matcher;
    const/16 v2, 0x2cd

    const/16 v1, 0xb

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x247

    const/16 v1, 0x6e

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 6526
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x210

    const/16 v1, 0x1c

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/GD;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/GD;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 6527
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1c6

    const/16 v1, 0x22

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/GD;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/GD;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6528
    .end local p1    # "matcher":Ljava/util/regex/Matcher;
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1e8

    const/16 v1, 0x28

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    const/4 v1, 0x1

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/GD;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/GD;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A0D(Ljava/lang/String;)Z
    .locals 3

    .line 6529
    const/16 v2, 0x57e

    const/4 v1, 0x2

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6530
    const/16 v2, 0x49b

    const/4 v1, 0x4

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6531
    const/16 v2, 0x3f0

    const/4 v1, 0x4

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6532
    const/16 v2, 0x41f

    const/4 v1, 0x3

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6533
    const/16 v2, 0x508

    const/4 v1, 0x1

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6534
    const/16 v2, 0x53d

    const/4 v1, 0x4

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6535
    const/16 v2, 0x3f8

    const/4 v1, 0x2

    const/16 v0, 0x14

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6536
    const/16 v2, 0x546

    const/4 v1, 0x5

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6537
    const/16 v2, 0x54b

    const/4 v1, 0x7

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6538
    const/16 v2, 0x4ca

    const/4 v1, 0x6

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6539
    const/16 v2, 0x50b

    const/4 v1, 0x6

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6540
    const/16 v2, 0x4e0

    const/16 v1, 0x8

    const/4 v0, 0x4

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6541
    const/16 v2, 0x521

    const/16 v1, 0xb

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6542
    const/16 v2, 0x517

    const/16 v1, 0xa

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6543
    const/16 v2, 0x52c

    const/16 v1, 0x11

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 6544
    :goto_0
    return v0

    .line 6545
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0E(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    .line 6546
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 6547
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/16 v2, 0x313

    const/4 v1, 0x3

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2r;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0m(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic A0d([BIZ)Lcom/facebook/ads/redexgen/X/GC;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/GD;
        }
    .end annotation

    .line 6548
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/2r;->A07([BIZ)Lcom/facebook/ads/redexgen/X/UB;

    move-result-object v0

    return-object v0
.end method
