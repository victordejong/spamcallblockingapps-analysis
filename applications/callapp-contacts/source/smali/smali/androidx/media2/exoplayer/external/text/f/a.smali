.class public final Landroidx/media2/exoplayer/external/text/f/a;
.super Landroidx/media2/exoplayer/external/text/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/text/f/a$c;,
        Landroidx/media2/exoplayer/external/text/f/a$a;,
        Landroidx/media2/exoplayer/external/text/f/a$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/regex/Pattern;

.field private static final d:Ljava/util/regex/Pattern;

.field private static final e:Ljava/util/regex/Pattern;

.field private static final f:Ljava/util/regex/Pattern;

.field private static final g:Landroidx/media2/exoplayer/external/text/f/a$b;

.field private static final h:Landroidx/media2/exoplayer/external/text/f/a$a;


# instance fields
.field private final i:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$"

    .line 81
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/text/f/a;->a:Ljava/util/regex/Pattern;

    const-string v0, "^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$"

    .line 84
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/text/f/a;->b:Ljava/util/regex/Pattern;

    const-string v0, "^(([0-9]*.)?[0-9]+)(px|em|%)$"

    .line 85
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/text/f/a;->c:Ljava/util/regex/Pattern;

    const-string v0, "^(\\d+\\.?\\d*?)% (\\d+\\.?\\d*?)%$"

    .line 87
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/text/f/a;->d:Ljava/util/regex/Pattern;

    const-string v0, "^(\\d+\\.?\\d*?)px (\\d+\\.?\\d*?)px$"

    .line 89
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/text/f/a;->e:Ljava/util/regex/Pattern;

    const-string v0, "^(\\d+) (\\d+)$"

    .line 90
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/text/f/a;->f:Ljava/util/regex/Pattern;

    .line 94
    new-instance v0, Landroidx/media2/exoplayer/external/text/f/a$b;

    const/high16 v1, 0x41f00000    # 30.0f

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Landroidx/media2/exoplayer/external/text/f/a$b;-><init>(FII)V

    sput-object v0, Landroidx/media2/exoplayer/external/text/f/a;->g:Landroidx/media2/exoplayer/external/text/f/a$b;

    .line 96
    new-instance v0, Landroidx/media2/exoplayer/external/text/f/a$a;

    const/16 v1, 0x20

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Landroidx/media2/exoplayer/external/text/f/a$a;-><init>(II)V

    sput-object v0, Landroidx/media2/exoplayer/external/text/f/a;->h:Landroidx/media2/exoplayer/external/text/f/a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const-string v0, "TtmlDecoder"

    .line 102
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/text/b;-><init>(Ljava/lang/String;)V

    .line 104
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/f/a;->i:Lorg/xmlpull/v1/XmlPullParserFactory;

    const/4 v1, 0x1

    .line 105
    invoke-virtual {v0, v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 107
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t create XmlPullParserFactory instance"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static a(Ljava/lang/String;Landroidx/media2/exoplayer/external/text/f/a$b;)J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;
        }
    .end annotation

    .line 679
    sget-object v0, Landroidx/media2/exoplayer/external/text/f/a;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 680
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const-wide v2, 0x412e848000000000L    # 1000000.0

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v1, :cond_3

    .line 681
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 682
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    const-wide/16 v9, 0xe10

    mul-long v7, v7, v9

    long-to-double v7, v7

    .line 683
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 684
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    const-wide/16 v11, 0x3c

    mul-long v9, v9, v11

    long-to-double v9, v9

    add-double/2addr v7, v9

    .line 685
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 686
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    long-to-double v5, v5

    add-double/2addr v7, v5

    .line 687
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const-wide/16 v4, 0x0

    if-eqz p0, :cond_0

    .line 688
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    goto :goto_0

    :cond_0
    move-wide v9, v4

    :goto_0
    add-double/2addr v7, v9

    const/4 p0, 0x5

    .line 689
    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 691
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    long-to-float p0, v9

    iget v1, p1, Landroidx/media2/exoplayer/external/text/f/a$b;->a:F

    div-float/2addr p0, v1

    float-to-double v9, p0

    goto :goto_1

    :cond_1
    move-wide v9, v4

    :goto_1
    add-double/2addr v7, v9

    const/4 p0, 0x6

    .line 692
    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 694
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-double v0, v0

    iget p0, p1, Landroidx/media2/exoplayer/external/text/f/a$b;->b:I

    int-to-double v4, p0

    div-double/2addr v0, v4

    iget p0, p1, Landroidx/media2/exoplayer/external/text/f/a$b;->a:F

    float-to-double p0, p0

    div-double v4, v0, p0

    :cond_2
    add-double/2addr v7, v4

    mul-double v7, v7, v2

    double-to-long p0, v7

    return-wide p0

    .line 699
    :cond_3
    sget-object v0, Landroidx/media2/exoplayer/external/text/f/a;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 700
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 701
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 702
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 703
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 704
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_2
    const/4 v4, -0x1

    goto :goto_3

    :sswitch_0
    const-string v1, "ms"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_2

    :sswitch_1
    const-string v1, "t"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v4, 0x3

    goto :goto_3

    :sswitch_2
    const-string v1, "m"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v4, 0x2

    goto :goto_3

    :sswitch_3
    const-string v1, "h"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_2

    :cond_6
    const/4 v4, 0x1

    goto :goto_3

    :sswitch_4
    const-string v1, "f"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_2

    :cond_7
    const/4 v4, 0x0

    :cond_8
    :goto_3
    packed-switch v4, :pswitch_data_0

    goto :goto_6

    :pswitch_0
    const-wide p0, 0x408f400000000000L    # 1000.0

    :goto_4
    div-double/2addr v8, p0

    goto :goto_6

    .line 721
    :pswitch_1
    iget p0, p1, Landroidx/media2/exoplayer/external/text/f/a$b;->c:I

    int-to-double p0, p0

    goto :goto_4

    :pswitch_2
    const-wide/high16 p0, 0x404e000000000000L    # 60.0

    goto :goto_5

    :pswitch_3
    const-wide p0, 0x40ac200000000000L    # 3600.0

    :goto_5
    mul-double v8, v8, p0

    goto :goto_6

    .line 718
    :pswitch_4
    iget p0, p1, Landroidx/media2/exoplayer/external/text/f/a$b;->a:F

    float-to-double p0, p0

    goto :goto_4

    :goto_6
    mul-double v8, v8, v2

    double-to-long p0, v8

    return-wide p0

    .line 726
    :cond_9
    new-instance p1, Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;

    const-string v0, "Malformed time expression: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_7

    :cond_a
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_7
    invoke-direct {p1, p0}, Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x66 -> :sswitch_4
        0x68 -> :sswitch_3
        0x6d -> :sswitch_2
        0x74 -> :sswitch_1
        0xda6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;Landroidx/media2/exoplayer/external/text/f/a$a;)Landroidx/media2/exoplayer/external/text/f/a$a;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;
        }
    .end annotation

    const-string v0, "http://www.w3.org/ns/ttml#parameter"

    const-string v1, "cellResolution"

    .line 219
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-object p1

    .line 224
    :cond_0
    sget-object v0, Landroidx/media2/exoplayer/external/text/f/a;->f:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 225
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const-string v2, "Ignoring malformed cell resolution: "

    const-string v3, "TtmlDecoder"

    if-nez v1, :cond_2

    .line 226
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v3, p0}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_2
    const/4 v1, 0x1

    .line 230
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x2

    .line 231
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 235
    new-instance v4, Landroidx/media2/exoplayer/external/text/f/a$a;

    invoke-direct {v4, v1, v0}, Landroidx/media2/exoplayer/external/text/f/a$a;-><init>(II)V

    return-object v4

    .line 233
    :cond_3
    new-instance v4, Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;

    const/16 v5, 0x2f

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Invalid cell resolution "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    nop

    .line 237
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {v3, p0}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;)Landroidx/media2/exoplayer/external/text/f/a$c;
    .locals 5

    const-string v0, "extent"

    .line 243
    invoke-static {p0, v0}, Landroidx/media2/exoplayer/external/util/ae;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 248
    :cond_0
    sget-object v1, Landroidx/media2/exoplayer/external/text/f/a;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 249
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    const-string v3, "TtmlDecoder"

    if-nez v2, :cond_2

    const-string v1, "Ignoring non-pixel tts extent: "

    .line 250
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v3, p0}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2
    const/4 v2, 0x1

    .line 254
    :try_start_0
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x2

    .line 255
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 256
    new-instance v4, Landroidx/media2/exoplayer/external/text/f/a$c;

    invoke-direct {v4, v2, v1}, Landroidx/media2/exoplayer/external/text/f/a$c;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    nop

    const-string v1, "Ignoring malformed tts extent: "

    .line 258
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {v3, p0}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private a(Lorg/xmlpull/v1/XmlPullParser;Landroidx/media2/exoplayer/external/text/f/b;Ljava/util/Map;Landroidx/media2/exoplayer/external/text/f/a$b;)Landroidx/media2/exoplayer/external/text/f/b;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Landroidx/media2/exoplayer/external/text/f/b;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media2/exoplayer/external/text/f/c;",
            ">;",
            "Landroidx/media2/exoplayer/external/text/f/a$b;",
            ")",
            "Landroidx/media2/exoplayer/external/text/f/b;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    .line 550
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    const/4 v4, 0x0

    .line 551
    invoke-static {v0, v4}, Landroidx/media2/exoplayer/external/text/f/a;->a(Lorg/xmlpull/v1/XmlPullParser;Landroidx/media2/exoplayer/external/text/f/d;)Landroidx/media2/exoplayer/external/text/f/d;

    move-result-object v12

    const-string v8, ""

    move-object v13, v4

    move-object v15, v13

    move-object v14, v8

    const/4 v4, 0x0

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    if-ge v4, v3, :cond_8

    .line 553
    invoke-interface {v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    .line 554
    invoke-interface {v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    .line 555
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v18

    sparse-switch v18, :sswitch_data_0

    :goto_1
    const/4 v7, -0x1

    goto :goto_2

    :sswitch_0
    const-string v7, "backgroundImage"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v7, 0x5

    goto :goto_2

    :sswitch_1
    const-string v7, "style"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v7, 0x4

    goto :goto_2

    :sswitch_2
    const-string v7, "begin"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v7, 0x3

    goto :goto_2

    :sswitch_3
    const-string v7, "end"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v7, 0x2

    goto :goto_2

    :sswitch_4
    const-string v7, "dur"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    const/4 v7, 0x1

    goto :goto_2

    :sswitch_5
    const-string v7, "region"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_1

    :cond_5
    const/4 v7, 0x0

    :goto_2
    packed-switch v7, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    const-string v5, "#"

    .line 582
    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x1

    .line 583
    invoke-virtual {v6, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    move-object v15, v5

    goto :goto_3

    .line 567
    :pswitch_1
    invoke-static {v6}, Landroidx/media2/exoplayer/external/text/f/a;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 568
    array-length v6, v5

    if-lez v6, :cond_6

    move-object v13, v5

    goto :goto_3

    .line 557
    :pswitch_2
    invoke-static {v6, v2}, Landroidx/media2/exoplayer/external/text/f/a;->a(Ljava/lang/String;Landroidx/media2/exoplayer/external/text/f/a$b;)J

    move-result-wide v8

    :cond_6
    :goto_3
    move-object/from16 v5, p3

    goto :goto_4

    .line 560
    :pswitch_3
    invoke-static {v6, v2}, Landroidx/media2/exoplayer/external/text/f/a;->a(Ljava/lang/String;Landroidx/media2/exoplayer/external/text/f/a$b;)J

    move-result-wide v10

    goto :goto_3

    .line 563
    :pswitch_4
    invoke-static {v6, v2}, Landroidx/media2/exoplayer/external/text/f/a;->a(Ljava/lang/String;Landroidx/media2/exoplayer/external/text/f/a$b;)J

    move-result-wide v16

    goto :goto_3

    :pswitch_5
    move-object/from16 v5, p3

    .line 573
    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    move-object v14, v6

    :cond_7
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_8
    if-eqz v1, :cond_a

    .line 591
    iget-wide v2, v1, Landroidx/media2/exoplayer/external/text/f/b;->d:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-eqz v6, :cond_b

    cmp-long v2, v8, v4

    if-eqz v2, :cond_9

    .line 593
    iget-wide v2, v1, Landroidx/media2/exoplayer/external/text/f/b;->d:J

    add-long/2addr v8, v2

    :cond_9
    cmp-long v2, v10, v4

    if-eqz v2, :cond_b

    .line 596
    iget-wide v2, v1, Landroidx/media2/exoplayer/external/text/f/b;->d:J

    add-long/2addr v10, v2

    goto :goto_5

    :cond_a
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    :cond_b
    :goto_5
    cmp-long v2, v10, v4

    if-nez v2, :cond_d

    cmp-long v2, v16, v4

    if-eqz v2, :cond_c

    add-long v16, v8, v16

    move-wide/from16 v10, v16

    goto :goto_6

    :cond_c
    if-eqz v1, :cond_d

    .line 603
    iget-wide v2, v1, Landroidx/media2/exoplayer/external/text/f/b;->e:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_d

    .line 605
    iget-wide v1, v1, Landroidx/media2/exoplayer/external/text/f/b;->e:J

    move-wide v10, v1

    .line 609
    :cond_d
    :goto_6
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 15124
    new-instance v0, Landroidx/media2/exoplayer/external/text/f/b;

    const/4 v7, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v15}, Landroidx/media2/exoplayer/external/text/f/b;-><init>(Ljava/lang/String;Ljava/lang/String;JJLandroidx/media2/exoplayer/external/text/f/d;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x37b7d90c -> :sswitch_5
        0x18601 -> :sswitch_4
        0x188db -> :sswitch_3
        0x59478a9 -> :sswitch_2
        0x68b1db1 -> :sswitch_1
        0x4d0b70cd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;Landroidx/media2/exoplayer/external/text/f/a$a;Landroidx/media2/exoplayer/external/text/f/a$c;)Landroidx/media2/exoplayer/external/text/f/c;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "id"

    .line 320
    invoke-static {v0, v2}, Landroidx/media2/exoplayer/external/util/ae;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    if-nez v4, :cond_0

    return-object v2

    :cond_0
    const-string v3, "origin"

    .line 328
    invoke-static {v0, v3}, Landroidx/media2/exoplayer/external/util/ae;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "TtmlDecoder"

    if-eqz v3, :cond_13

    .line 330
    sget-object v6, Landroidx/media2/exoplayer/external/text/f/a;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 331
    sget-object v8, Landroidx/media2/exoplayer/external/text/f/a;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 332
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    const-string v11, "Ignoring region with malformed origin: "

    const-string v12, "Ignoring region with missing tts:extent: "

    const/high16 v13, 0x42c80000    # 100.0f

    const/4 v14, 0x2

    const/4 v15, 0x1

    if-eqz v10, :cond_2

    .line 334
    :try_start_0
    invoke-virtual {v7, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    div-float/2addr v9, v13

    .line 335
    invoke-virtual {v7, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    div-float/2addr v7, v13

    move/from16 v16, v9

    move v9, v7

    move/from16 v7, v16

    goto :goto_2

    :catch_0
    nop

    .line 337
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v11, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v5, v0}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 340
    :cond_2
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_11

    if-nez v1, :cond_4

    .line 342
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v12, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {v5, v0}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 346
    :cond_4
    :try_start_1
    invoke-virtual {v9, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 347
    invoke-virtual {v9, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    int-to-float v7, v7

    .line 349
    iget v10, v1, Landroidx/media2/exoplayer/external/text/f/a$c;->a:I

    int-to-float v10, v10

    div-float/2addr v7, v10

    int-to-float v9, v9

    .line 350
    iget v10, v1, Landroidx/media2/exoplayer/external/text/f/a$c;->b:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3

    int-to-float v10, v10

    div-float/2addr v9, v10

    :goto_2
    const-string v10, "extent"

    .line 371
    invoke-static {v0, v10}, Landroidx/media2/exoplayer/external/util/ae;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_f

    .line 373
    invoke-virtual {v6, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 374
    invoke-virtual {v8, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 375
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    const-string v11, "Ignoring region with malformed extent: "

    if-eqz v10, :cond_6

    .line 377
    :try_start_2
    invoke-virtual {v6, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    div-float/2addr v1, v13

    .line 378
    invoke-virtual {v6, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    div-float/2addr v2, v13

    move v10, v2

    goto :goto_5

    :catch_1
    nop

    .line 380
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v11, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_3
    invoke-static {v5, v0}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 383
    :cond_6
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_d

    if-nez v1, :cond_8

    .line 385
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v12, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_7
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_4
    invoke-static {v5, v0}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 389
    :cond_8
    :try_start_3
    invoke-virtual {v8, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 390
    invoke-virtual {v8, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    int-to-float v6, v6

    .line 392
    iget v10, v1, Landroidx/media2/exoplayer/external/text/f/a$c;->a:I

    int-to-float v10, v10

    div-float/2addr v6, v10

    int-to-float v8, v8

    .line 393
    iget v1, v1, Landroidx/media2/exoplayer/external/text/f/a$c;->b:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    int-to-float v1, v1

    div-float/2addr v8, v1

    move v1, v6

    move v10, v8

    :goto_5
    const/4 v2, 0x0

    const-string v3, "displayAlign"

    .line 413
    invoke-static {v0, v3}, Landroidx/media2/exoplayer/external/util/ae;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 416
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/ac;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v3, "center"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "after"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_6

    :cond_9
    add-float/2addr v9, v10

    move v6, v9

    const/4 v8, 0x2

    goto :goto_7

    :cond_a
    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, v10, v0

    add-float/2addr v9, v0

    move v6, v9

    const/4 v8, 0x1

    goto :goto_7

    :cond_b
    :goto_6
    move v6, v9

    const/4 v8, 0x0

    :goto_7
    const/high16 v0, 0x3f800000    # 1.0f

    move-object/from16 v2, p1

    .line 431
    iget v2, v2, Landroidx/media2/exoplayer/external/text/f/a$a;->b:I

    int-to-float v2, v2

    div-float v12, v0, v2

    .line 432
    new-instance v0, Landroidx/media2/exoplayer/external/text/f/c;

    const/4 v2, 0x0

    const/4 v11, 0x1

    move-object v3, v0

    move v5, v7

    move v7, v2

    move v9, v1

    invoke-direct/range {v3 .. v12}, Landroidx/media2/exoplayer/external/text/f/c;-><init>(Ljava/lang/String;FFIIFFIF)V

    return-object v0

    :catch_2
    nop

    .line 395
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v11, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_c
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_8
    invoke-static {v5, v0}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_d
    const-string v0, "Ignoring region with unsupported extent: "

    .line 399
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_e
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_9
    invoke-static {v5, v0}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_f
    const-string v0, "Ignoring region without an extent"

    .line 403
    invoke-static {v5, v0}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :catch_3
    nop

    .line 352
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v11, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_10
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_a
    invoke-static {v5, v0}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_11
    const-string v0, "Ignoring region with unsupported origin: "

    .line 356
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_12

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_12
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_b
    invoke-static {v5, v0}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_13
    const-string v0, "Ignoring region without an origin"

    .line 360
    invoke-static {v5, v0}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private static a(Landroidx/media2/exoplayer/external/text/f/d;)Landroidx/media2/exoplayer/external/text/f/d;
    .locals 0

    if-nez p0, :cond_0

    .line 538
    new-instance p0, Landroidx/media2/exoplayer/external/text/f/d;

    invoke-direct {p0}, Landroidx/media2/exoplayer/external/text/f/d;-><init>()V

    :cond_0
    return-object p0
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;Landroidx/media2/exoplayer/external/text/f/d;)Landroidx/media2/exoplayer/external/text/f/d;
    .locals 14

    .line 450
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_23

    .line 452
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 453
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x4

    const/4 v7, -0x1

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    sparse-switch v5, :sswitch_data_0

    :goto_1
    const/4 v4, -0x1

    goto/16 :goto_2

    :sswitch_0
    const-string v5, "backgroundColor"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    const/16 v4, 0x8

    goto/16 :goto_2

    :sswitch_1
    const-string v5, "fontSize"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x7

    goto :goto_2

    :sswitch_2
    const-string v5, "color"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x6

    goto :goto_2

    :sswitch_3
    const-string v5, "id"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x5

    goto :goto_2

    :sswitch_4
    const-string v5, "fontWeight"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    const/4 v4, 0x4

    goto :goto_2

    :sswitch_5
    const-string v5, "textDecoration"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_1

    :cond_5
    const/4 v4, 0x3

    goto :goto_2

    :sswitch_6
    const-string v5, "textAlign"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_1

    :cond_6
    const/4 v4, 0x2

    goto :goto_2

    :sswitch_7
    const-string v5, "fontFamily"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_1

    :cond_7
    const/4 v4, 0x1

    goto :goto_2

    :sswitch_8
    const-string v5, "fontStyle"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_1

    :cond_8
    const/4 v4, 0x0

    :goto_2
    const-string v5, "TtmlDecoder"

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_f

    .line 460
    :pswitch_0
    invoke-static {p1}, Landroidx/media2/exoplayer/external/text/f/a;->a(Landroidx/media2/exoplayer/external/text/f/d;)Landroidx/media2/exoplayer/external/text/f/d;

    move-result-object p1

    .line 462
    :try_start_0
    invoke-static {v3}, Landroidx/media2/exoplayer/external/util/d;->a(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v4}, Landroidx/media2/exoplayer/external/text/f/d;->b(I)Landroidx/media2/exoplayer/external/text/f/d;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_f

    :catch_0
    nop

    const-string v4, "Failed parsing background value: "

    .line 464
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_9
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_3
    invoke-static {v5, v3}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    .line 480
    :pswitch_1
    :try_start_1
    invoke-static {p1}, Landroidx/media2/exoplayer/external/text/f/a;->a(Landroidx/media2/exoplayer/external/text/f/d;)Landroidx/media2/exoplayer/external/text/f/d;

    move-result-object p1

    const-string v4, "\\s+"

    .line 5632
    invoke-static {v3, v4}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 5634
    array-length v6, v4

    if-ne v6, v10, :cond_a

    .line 5635
    sget-object v4, Landroidx/media2/exoplayer/external/text/f/a;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    goto :goto_4

    .line 5636
    :cond_a
    array-length v6, v4

    if-ne v6, v9, :cond_13

    .line 5637
    sget-object v6, Landroidx/media2/exoplayer/external/text/f/a;->c:Ljava/util/regex/Pattern;

    aget-object v4, v4, v10

    invoke-virtual {v6, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    const-string v6, "Multiple values in fontSize attribute. Picking the second value for vertical font size and ignoring the first."

    .line 5638
    invoke-static {v5, v6}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5645
    :goto_4
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6
    :try_end_1
    .catch Landroidx/media2/exoplayer/external/text/SubtitleDecoderException; {:try_start_1 .. :try_end_1} :catch_1

    const-string v11, "\'."

    if-eqz v6, :cond_12

    .line 5646
    :try_start_2
    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 5647
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v12

    const/16 v13, 0x25

    if-eq v12, v13, :cond_d

    const/16 v13, 0xca8

    if-eq v12, v13, :cond_c

    const/16 v13, 0xe08

    if-eq v12, v13, :cond_b

    goto :goto_5

    :cond_b
    const-string v12, "px"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    const/4 v7, 0x0

    goto :goto_5

    :cond_c
    const-string v12, "em"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    const/4 v7, 0x1

    goto :goto_5

    :cond_d
    const-string v12, "%"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    const/4 v7, 0x2

    :cond_e
    :goto_5
    if-eqz v7, :cond_11

    if-eq v7, v10, :cond_10

    if-ne v7, v9, :cond_f

    .line 8262
    iput v8, p1, Landroidx/media2/exoplayer/external/text/f/d;->j:I

    goto :goto_6

    .line 5658
    :cond_f
    new-instance v4, Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x1e

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Invalid unit for fontSize: \'"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 7262
    :cond_10
    iput v9, p1, Landroidx/media2/exoplayer/external/text/f/d;->j:I

    goto :goto_6

    .line 6262
    :cond_11
    iput v10, p1, Landroidx/media2/exoplayer/external/text/f/d;->j:I

    .line 5660
    :goto_6
    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 9257
    iput v4, p1, Landroidx/media2/exoplayer/external/text/f/d;->k:F

    goto/16 :goto_f

    .line 5662
    :cond_12
    new-instance v4, Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x24

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Invalid expression for fontSize: \'"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 5641
    :cond_13
    new-instance v6, Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;

    array-length v4, v4

    const/16 v7, 0x34

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Invalid number of entries for fontSize: "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catch Landroidx/media2/exoplayer/external/text/SubtitleDecoderException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    nop

    const-string v4, "Failed parsing fontSize value: "

    .line 483
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_14

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_14
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_7
    invoke-static {v5, v3}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    .line 468
    :pswitch_2
    invoke-static {p1}, Landroidx/media2/exoplayer/external/text/f/a;->a(Landroidx/media2/exoplayer/external/text/f/d;)Landroidx/media2/exoplayer/external/text/f/d;

    move-result-object p1

    .line 470
    :try_start_3
    invoke-static {v3}, Landroidx/media2/exoplayer/external/util/d;->a(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v4}, Landroidx/media2/exoplayer/external/text/f/d;->a(I)Landroidx/media2/exoplayer/external/text/f/d;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_f

    :catch_2
    nop

    const-string v4, "Failed parsing color value: "

    .line 472
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_15

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    :cond_15
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_8
    invoke-static {v5, v3}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    .line 455
    :pswitch_3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "style"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 456
    invoke-static {p1}, Landroidx/media2/exoplayer/external/text/f/a;->a(Landroidx/media2/exoplayer/external/text/f/d;)Landroidx/media2/exoplayer/external/text/f/d;

    move-result-object p1

    .line 4239
    iput-object v3, p1, Landroidx/media2/exoplayer/external/text/f/d;->l:Ljava/lang/String;

    goto/16 :goto_f

    .line 487
    :pswitch_4
    invoke-static {p1}, Landroidx/media2/exoplayer/external/text/f/a;->a(Landroidx/media2/exoplayer/external/text/f/d;)Landroidx/media2/exoplayer/external/text/f/d;

    move-result-object p1

    const-string v4, "bold"

    .line 488
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 10126
    iget-object v4, p1, Landroidx/media2/exoplayer/external/text/f/d;->m:Landroidx/media2/exoplayer/external/text/f/d;

    if-nez v4, :cond_16

    goto :goto_9

    :cond_16
    const/4 v10, 0x0

    :goto_9
    invoke-static {v10}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    .line 10127
    iput v3, p1, Landroidx/media2/exoplayer/external/text/f/d;->h:I

    goto/16 :goto_f

    .line 514
    :pswitch_5
    invoke-static {v3}, Landroidx/media2/exoplayer/external/util/ac;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_1

    goto :goto_a

    :sswitch_9
    const-string v4, "linethrough"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    goto :goto_a

    :cond_17
    const/4 v7, 0x3

    goto :goto_a

    :sswitch_a
    const-string v4, "nolinethrough"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    goto :goto_a

    :cond_18
    const/4 v7, 0x2

    goto :goto_a

    :sswitch_b
    const-string v4, "underline"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    goto :goto_a

    :cond_19
    const/4 v7, 0x1

    goto :goto_a

    :sswitch_c
    const-string v4, "nounderline"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    goto :goto_a

    :cond_1a
    const/4 v7, 0x0

    :goto_a
    packed-switch v7, :pswitch_data_1

    goto/16 :goto_f

    .line 516
    :pswitch_6
    invoke-static {p1}, Landroidx/media2/exoplayer/external/text/f/a;->a(Landroidx/media2/exoplayer/external/text/f/d;)Landroidx/media2/exoplayer/external/text/f/d;

    move-result-object p1

    invoke-virtual {p1, v10}, Landroidx/media2/exoplayer/external/text/f/d;->a(Z)Landroidx/media2/exoplayer/external/text/f/d;

    move-result-object p1

    goto/16 :goto_f

    .line 519
    :pswitch_7
    invoke-static {p1}, Landroidx/media2/exoplayer/external/text/f/a;->a(Landroidx/media2/exoplayer/external/text/f/d;)Landroidx/media2/exoplayer/external/text/f/d;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/media2/exoplayer/external/text/f/d;->a(Z)Landroidx/media2/exoplayer/external/text/f/d;

    move-result-object p1

    goto/16 :goto_f

    .line 522
    :pswitch_8
    invoke-static {p1}, Landroidx/media2/exoplayer/external/text/f/a;->a(Landroidx/media2/exoplayer/external/text/f/d;)Landroidx/media2/exoplayer/external/text/f/d;

    move-result-object p1

    invoke-virtual {p1, v10}, Landroidx/media2/exoplayer/external/text/f/d;->b(Z)Landroidx/media2/exoplayer/external/text/f/d;

    move-result-object p1

    goto/16 :goto_f

    .line 525
    :pswitch_9
    invoke-static {p1}, Landroidx/media2/exoplayer/external/text/f/a;->a(Landroidx/media2/exoplayer/external/text/f/d;)Landroidx/media2/exoplayer/external/text/f/d;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/media2/exoplayer/external/text/f/d;->b(Z)Landroidx/media2/exoplayer/external/text/f/d;

    move-result-object p1

    goto/16 :goto_f

    .line 495
    :pswitch_a
    invoke-static {v3}, Landroidx/media2/exoplayer/external/util/ac;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_2

    :goto_b
    const/4 v6, -0x1

    goto :goto_c

    :sswitch_d
    const-string v4, "start"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    goto :goto_b

    :sswitch_e
    const-string v4, "right"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    goto :goto_b

    :cond_1b
    const/4 v6, 0x3

    goto :goto_c

    :sswitch_f
    const-string v4, "left"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    goto :goto_b

    :cond_1c
    const/4 v6, 0x2

    goto :goto_c

    :sswitch_10
    const-string v4, "end"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    goto :goto_b

    :cond_1d
    const/4 v6, 0x1

    goto :goto_c

    :sswitch_11
    const-string v4, "center"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    goto :goto_b

    :cond_1e
    const/4 v6, 0x0

    :cond_1f
    :goto_c
    packed-switch v6, :pswitch_data_2

    goto :goto_f

    .line 500
    :pswitch_b
    invoke-static {p1}, Landroidx/media2/exoplayer/external/text/f/a;->a(Landroidx/media2/exoplayer/external/text/f/d;)Landroidx/media2/exoplayer/external/text/f/d;

    move-result-object p1

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 11252
    iput-object v3, p1, Landroidx/media2/exoplayer/external/text/f/d;->n:Landroid/text/Layout$Alignment;

    goto :goto_f

    .line 503
    :pswitch_c
    invoke-static {p1}, Landroidx/media2/exoplayer/external/text/f/a;->a(Landroidx/media2/exoplayer/external/text/f/d;)Landroidx/media2/exoplayer/external/text/f/d;

    move-result-object p1

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 12252
    iput-object v3, p1, Landroidx/media2/exoplayer/external/text/f/d;->n:Landroid/text/Layout$Alignment;

    goto :goto_f

    .line 497
    :pswitch_d
    invoke-static {p1}, Landroidx/media2/exoplayer/external/text/f/a;->a(Landroidx/media2/exoplayer/external/text/f/d;)Landroidx/media2/exoplayer/external/text/f/d;

    move-result-object p1

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 10252
    iput-object v3, p1, Landroidx/media2/exoplayer/external/text/f/d;->n:Landroid/text/Layout$Alignment;

    goto :goto_f

    .line 506
    :pswitch_e
    invoke-static {p1}, Landroidx/media2/exoplayer/external/text/f/a;->a(Landroidx/media2/exoplayer/external/text/f/d;)Landroidx/media2/exoplayer/external/text/f/d;

    move-result-object p1

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 13252
    iput-object v3, p1, Landroidx/media2/exoplayer/external/text/f/d;->n:Landroid/text/Layout$Alignment;

    goto :goto_f

    .line 509
    :pswitch_f
    invoke-static {p1}, Landroidx/media2/exoplayer/external/text/f/a;->a(Landroidx/media2/exoplayer/external/text/f/d;)Landroidx/media2/exoplayer/external/text/f/d;

    move-result-object p1

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 14252
    iput-object v3, p1, Landroidx/media2/exoplayer/external/text/f/d;->n:Landroid/text/Layout$Alignment;

    goto :goto_f

    .line 476
    :pswitch_10
    invoke-static {p1}, Landroidx/media2/exoplayer/external/text/f/a;->a(Landroidx/media2/exoplayer/external/text/f/d;)Landroidx/media2/exoplayer/external/text/f/d;

    move-result-object p1

    .line 5142
    iget-object v4, p1, Landroidx/media2/exoplayer/external/text/f/d;->m:Landroidx/media2/exoplayer/external/text/f/d;

    if-nez v4, :cond_20

    goto :goto_d

    :cond_20
    const/4 v10, 0x0

    :goto_d
    invoke-static {v10}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    .line 5143
    iput-object v3, p1, Landroidx/media2/exoplayer/external/text/f/d;->a:Ljava/lang/String;

    goto :goto_f

    .line 491
    :pswitch_11
    invoke-static {p1}, Landroidx/media2/exoplayer/external/text/f/a;->a(Landroidx/media2/exoplayer/external/text/f/d;)Landroidx/media2/exoplayer/external/text/f/d;

    move-result-object p1

    const-string v4, "italic"

    .line 492
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 10132
    iget-object v4, p1, Landroidx/media2/exoplayer/external/text/f/d;->m:Landroidx/media2/exoplayer/external/text/f/d;

    if-nez v4, :cond_21

    goto :goto_e

    :cond_21
    const/4 v10, 0x0

    :goto_e
    invoke-static {v10}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    .line 10133
    iput v3, p1, Landroidx/media2/exoplayer/external/text/f/d;->i:I

    :cond_22
    :goto_f
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_23
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5c71855e -> :sswitch_8
        -0x48ff636d -> :sswitch_7
        -0x3f826a28 -> :sswitch_6
        -0x3468fa43 -> :sswitch_5
        -0x2bc67c59 -> :sswitch_4
        0xd1b -> :sswitch_3
        0x5a72f63 -> :sswitch_2
        0x15caa0f0 -> :sswitch_1
        0x4cb7f6d5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_a
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x57195dd5 -> :sswitch_c
        -0x3d363934 -> :sswitch_b
        0x36723ff0 -> :sswitch_a
        0x641ec051 -> :sswitch_9
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x514d33ab -> :sswitch_11
        0x188db -> :sswitch_10
        0x32a007 -> :sswitch_f
        0x677c21c -> :sswitch_e
        0x68ac462 -> :sswitch_d
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch
.end method

.method private a(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;Landroidx/media2/exoplayer/external/text/f/a$a;Landroidx/media2/exoplayer/external/text/f/a$c;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media2/exoplayer/external/text/f/d;",
            ">;",
            "Landroidx/media2/exoplayer/external/text/f/a$a;",
            "Landroidx/media2/exoplayer/external/text/f/a$c;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media2/exoplayer/external/text/f/c;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media2/exoplayer/external/text/f/d;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 272
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v0, "style"

    .line 273
    invoke-static {p1, v0}, Landroidx/media2/exoplayer/external/util/ae;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 274
    invoke-static {p1, v0}, Landroidx/media2/exoplayer/external/util/ae;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 275
    new-instance v1, Landroidx/media2/exoplayer/external/text/f/d;

    invoke-direct {v1}, Landroidx/media2/exoplayer/external/text/f/d;-><init>()V

    invoke-static {p1, v1}, Landroidx/media2/exoplayer/external/text/f/a;->a(Lorg/xmlpull/v1/XmlPullParser;Landroidx/media2/exoplayer/external/text/f/d;)Landroidx/media2/exoplayer/external/text/f/d;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 277
    invoke-static {v0}, Landroidx/media2/exoplayer/external/text/f/a;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 278
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media2/exoplayer/external/text/f/d;

    .line 2200
    invoke-virtual {v1, v4}, Landroidx/media2/exoplayer/external/text/f/d;->a(Landroidx/media2/exoplayer/external/text/f/d;)Landroidx/media2/exoplayer/external/text/f/d;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2244
    :cond_1
    iget-object v0, v1, Landroidx/media2/exoplayer/external/text/f/d;->l:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 3244
    iget-object v0, v1, Landroidx/media2/exoplayer/external/text/f/d;->l:Ljava/lang/String;

    .line 282
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const-string v0, "region"

    .line 284
    invoke-static {p1, v0}, Landroidx/media2/exoplayer/external/util/ae;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 285
    invoke-static {p1, p3, p4}, Landroidx/media2/exoplayer/external/text/f/a;->a(Lorg/xmlpull/v1/XmlPullParser;Landroidx/media2/exoplayer/external/text/f/a$a;Landroidx/media2/exoplayer/external/text/f/a$c;)Landroidx/media2/exoplayer/external/text/f/c;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 287
    iget-object v1, v0, Landroidx/media2/exoplayer/external/text/f/c;->a:Ljava/lang/String;

    invoke-interface {p5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    const-string v0, "metadata"

    .line 289
    invoke-static {p1, v0}, Landroidx/media2/exoplayer/external/util/ae;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3299
    :cond_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v1, "image"

    .line 3300
    invoke-static {p1, v1}, Landroidx/media2/exoplayer/external/util/ae;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "id"

    .line 3301
    invoke-static {p1, v1}, Landroidx/media2/exoplayer/external/util/ae;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 3303
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    .line 3304
    invoke-interface {p6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3307
    :cond_5
    invoke-static {p1, v0}, Landroidx/media2/exoplayer/external/util/ae;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_6
    :goto_1
    const-string v0, "head"

    .line 292
    invoke-static {p1, v0}, Landroidx/media2/exoplayer/external/util/ae;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2
.end method

.method private static a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 445
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 446
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    return-object p0

    :cond_0
    const-string v0, "\\s+"

    invoke-static {p0, v0}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a([BIZ)Landroidx/media2/exoplayer/external/text/d;
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;
        }
    .end annotation

    move-object/from16 v8, p0

    const-string v9, "\n"

    const-string v10, "http://www.w3.org/ns/ttml#parameter"

    .line 115
    :try_start_0
    iget-object v0, v8, Landroidx/media2/exoplayer/external/text/f/a;->i:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v11

    .line 116
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 117
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 118
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    const-string v0, ""

    .line 119
    new-instance v1, Landroidx/media2/exoplayer/external/text/f/c;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/text/f/c;-><init>(Ljava/lang/String;)V

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    new-instance v0, Ljava/io/ByteArrayInputStream;

    const/4 v15, 0x0

    move-object/from16 v1, p1

    move/from16 v3, p2

    invoke-direct {v0, v1, v15, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 121
    invoke-interface {v11, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 123
    new-instance v7, Ljava/util/ArrayDeque;

    invoke-direct {v7}, Ljava/util/ArrayDeque;-><init>()V

    .line 125
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 126
    sget-object v1, Landroidx/media2/exoplayer/external/text/f/a;->g:Landroidx/media2/exoplayer/external/text/f/a$b;

    .line 127
    sget-object v3, Landroidx/media2/exoplayer/external/text/f/a;->h:Landroidx/media2/exoplayer/external/text/f/a$a;

    move-object/from16 v16, v2

    const/16 v17, 0x0

    :goto_0
    const/4 v4, 0x1

    if-eq v0, v4, :cond_12

    .line 130
    invoke-virtual {v7}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media2/exoplayer/external/text/f/b;

    const/4 v6, 0x2

    if-nez v17, :cond_f

    .line 132
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v15, " "

    move-object/from16 v18, v1

    const-string v1, "tt"

    if-ne v0, v6, :cond_c

    .line 134
    :try_start_1
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x1e

    const-string v2, "frameRate"

    .line 1186
    invoke-interface {v11, v10, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1188
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    const-string v3, "frameRateMultiplier"

    .line 1192
    invoke-interface {v11, v10, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1194
    invoke-static {v3, v15}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1195
    array-length v3, v2

    if-ne v3, v6, :cond_1

    const/16 v19, 0x0

    .line 1198
    aget-object v3, v2, v19

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    const/4 v6, 0x1

    .line 1199
    aget-object v2, v2, v6

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    div-float v2, v3, v2

    goto :goto_1

    .line 1196
    :cond_1
    new-instance v0, Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;

    const-string v1, "frameRateMultiplier doesn\'t have 2 parts"

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v6, 0x1

    const/16 v19, 0x0

    .line 1203
    :goto_1
    sget-object v3, Landroidx/media2/exoplayer/external/text/f/a;->g:Landroidx/media2/exoplayer/external/text/f/a$b;

    iget v15, v3, Landroidx/media2/exoplayer/external/text/f/a$b;->b:I

    const-string v6, "subFrameRate"

    .line 1204
    invoke-interface {v11, v10, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 1206
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 1209
    :cond_3
    iget v3, v3, Landroidx/media2/exoplayer/external/text/f/a$b;->c:I

    const-string v6, "tickRate"

    .line 1210
    invoke-interface {v11, v10, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 1212
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1214
    :cond_4
    new-instance v6, Landroidx/media2/exoplayer/external/text/f/a$b;

    int-to-float v0, v0

    mul-float v0, v0, v2

    invoke-direct {v6, v0, v15, v3}, Landroidx/media2/exoplayer/external/text/f/a$b;-><init>(FII)V

    .line 136
    sget-object v0, Landroidx/media2/exoplayer/external/text/f/a;->h:Landroidx/media2/exoplayer/external/text/f/a$a;

    invoke-static {v11, v0}, Landroidx/media2/exoplayer/external/text/f/a;->a(Lorg/xmlpull/v1/XmlPullParser;Landroidx/media2/exoplayer/external/text/f/a$a;)Landroidx/media2/exoplayer/external/text/f/a$a;

    move-result-object v3

    .line 137
    invoke-static {v11}, Landroidx/media2/exoplayer/external/text/f/a;->a(Lorg/xmlpull/v1/XmlPullParser;)Landroidx/media2/exoplayer/external/text/f/a$c;

    move-result-object v2

    move-object/from16 v18, v2

    move-object/from16 v20, v3

    move-object v15, v6

    goto :goto_2

    :cond_5
    const/16 v19, 0x0

    move-object/from16 v20, v3

    move-object/from16 v15, v18

    move-object/from16 v18, v2

    .line 1613
    :goto_2
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    const-string v1, "head"

    if-nez v0, :cond_7

    .line 1614
    :try_start_2
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "body"

    .line 1615
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "div"

    .line 1616
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "p"

    .line 1617
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "span"

    .line 1618
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "br"

    .line 1619
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "style"

    .line 1620
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "styling"

    .line 1621
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "layout"

    .line 1622
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "region"

    .line 1623
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "metadata"

    .line 1624
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "image"

    .line 1625
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "data"

    .line 1626
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "information"

    .line 1627
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    goto :goto_4

    :cond_7
    :goto_3
    const/4 v0, 0x1

    :goto_4
    if-nez v0, :cond_9

    const-string v0, "Ignoring unsupported tag: "

    .line 140
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_5

    :cond_8
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_5
    invoke-static {}, Landroidx/media2/exoplayer/external/util/j;->b()V

    add-int/lit8 v17, v17, 0x1

    move-object/from16 p3, v10

    move-object v1, v15

    move-object/from16 v2, v18

    move-object/from16 v3, v20

    move-object v10, v7

    goto/16 :goto_8

    .line 142
    :cond_9
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move-object/from16 v1, p0

    move-object v2, v11

    move-object v3, v12

    move-object/from16 v4, v20

    move-object/from16 v5, v18

    move-object v6, v13

    move-object/from16 p3, v10

    move-object v10, v7

    move-object v7, v14

    .line 143
    invoke-direct/range {v1 .. v7}, Landroidx/media2/exoplayer/external/text/f/a;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;Landroidx/media2/exoplayer/external/text/f/a$a;Landroidx/media2/exoplayer/external/text/f/a$c;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_6

    :cond_a
    move-object/from16 p3, v10

    move-object v10, v7

    .line 146
    :try_start_3
    invoke-direct {v8, v11, v5, v13, v15}, Landroidx/media2/exoplayer/external/text/f/a;->a(Lorg/xmlpull/v1/XmlPullParser;Landroidx/media2/exoplayer/external/text/f/b;Ljava/util/Map;Landroidx/media2/exoplayer/external/text/f/a$b;)Landroidx/media2/exoplayer/external/text/f/b;

    move-result-object v0

    .line 147
    invoke-virtual {v10, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    if-eqz v5, :cond_b

    .line 149
    invoke-virtual {v5, v0}, Landroidx/media2/exoplayer/external/text/f/b;->a(Landroidx/media2/exoplayer/external/text/f/b;)V
    :try_end_3
    .catch Landroidx/media2/exoplayer/external/text/SubtitleDecoderException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_b
    :goto_6
    move-object v1, v15

    move-object/from16 v2, v18

    move-object/from16 v3, v20

    goto/16 :goto_8

    :catch_0
    move-exception v0

    :try_start_4
    const-string v1, "TtmlDecoder"

    const-string v2, "Suppressing parser error"

    .line 152
    invoke-static {v1, v2, v0}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    add-int/lit8 v17, v17, 0x1

    goto :goto_6

    :cond_c
    move-object/from16 p3, v10

    const/16 v19, 0x0

    move-object v10, v7

    const/4 v4, 0x4

    if-ne v0, v4, :cond_d

    .line 158
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 2105
    new-instance v1, Landroidx/media2/exoplayer/external/text/f/b;

    const/16 v21, 0x0

    const-string v4, "\r\n"

    .line 2144
    invoke-virtual {v0, v4, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, " *\n *"

    .line 2147
    invoke-virtual {v0, v4, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2149
    invoke-virtual {v0, v9, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "[ \t\\x0B\u000c\r]+"

    .line 2151
    invoke-virtual {v0, v4, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-wide v23, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v25, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v27, 0x0

    const/16 v28, 0x0

    const-string v29, ""

    const/16 v30, 0x0

    move-object/from16 v20, v1

    .line 2107
    invoke-direct/range {v20 .. v30}, Landroidx/media2/exoplayer/external/text/f/b;-><init>(Ljava/lang/String;Ljava/lang/String;JJLandroidx/media2/exoplayer/external/text/f/d;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {v5, v1}, Landroidx/media2/exoplayer/external/text/f/b;->a(Landroidx/media2/exoplayer/external/text/f/b;)V

    goto :goto_7

    :cond_d
    const/4 v4, 0x3

    if-ne v0, v4, :cond_11

    .line 160
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 161
    new-instance v0, Landroidx/media2/exoplayer/external/text/f/e;

    invoke-virtual {v10}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/text/f/b;

    invoke-direct {v0, v1, v12, v13, v14}, Landroidx/media2/exoplayer/external/text/f/e;-><init>(Landroidx/media2/exoplayer/external/text/f/b;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    move-object/from16 v16, v0

    .line 163
    :cond_e
    invoke-virtual {v10}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    goto :goto_7

    :cond_f
    move-object/from16 v18, v1

    move-object/from16 p3, v10

    const/16 v19, 0x0

    move-object v10, v7

    if-ne v0, v6, :cond_10

    add-int/lit8 v17, v17, 0x1

    goto :goto_7

    :cond_10
    const/4 v1, 0x3

    if-ne v0, v1, :cond_11

    add-int/lit8 v17, v17, -0x1

    :cond_11
    :goto_7
    move-object/from16 v1, v18

    .line 172
    :goto_8
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 173
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v7, v10

    const/4 v15, 0x0

    move-object/from16 v10, p3

    goto/16 :goto_0

    :cond_12
    return-object v16

    :catch_1
    move-exception v0

    .line 179
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected error when reading input."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    .line 177
    new-instance v1, Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;

    const-string v2, "Unable to decode source"

    invoke-direct {v1, v2, v0}, Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
