.class public final Lcom/google/android/exoplayer2/text/g/c;
.super Lcom/google/android/exoplayer2/text/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/text/g/c$c;,
        Lcom/google/android/exoplayer2/text/g/c$a;,
        Lcom/google/android/exoplayer2/text/g/c$b;
    }
.end annotation


# static fields
.field static final a:Ljava/util/regex/Pattern;

.field static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/regex/Pattern;

.field private static final d:Ljava/util/regex/Pattern;

.field private static final e:Ljava/util/regex/Pattern;

.field private static final f:Ljava/util/regex/Pattern;

.field private static final g:Ljava/util/regex/Pattern;

.field private static final h:Lcom/google/android/exoplayer2/text/g/c$b;

.field private static final i:Lcom/google/android/exoplayer2/text/g/c$a;


# instance fields
.field private final j:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$"

    .line 82
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/g/c;->c:Ljava/util/regex/Pattern;

    const-string v0, "^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$"

    .line 85
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/g/c;->d:Ljava/util/regex/Pattern;

    const-string v0, "^(([0-9]*.)?[0-9]+)(px|em|%)$"

    .line 86
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/g/c;->e:Ljava/util/regex/Pattern;

    const-string v0, "^([-+]?\\d+\\.?\\d*?)%$"

    .line 87
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/g/c;->a:Ljava/util/regex/Pattern;

    const-string v0, "^(\\d+\\.?\\d*?)% (\\d+\\.?\\d*?)%$"

    .line 89
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/g/c;->b:Ljava/util/regex/Pattern;

    const-string v0, "^(\\d+\\.?\\d*?)px (\\d+\\.?\\d*?)px$"

    .line 91
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/g/c;->f:Ljava/util/regex/Pattern;

    const-string v0, "^(\\d+) (\\d+)$"

    .line 92
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/g/c;->g:Ljava/util/regex/Pattern;

    .line 96
    new-instance v0, Lcom/google/android/exoplayer2/text/g/c$b;

    const/high16 v1, 0x41f00000    # 30.0f

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/exoplayer2/text/g/c$b;-><init>(FII)V

    sput-object v0, Lcom/google/android/exoplayer2/text/g/c;->h:Lcom/google/android/exoplayer2/text/g/c$b;

    .line 98
    new-instance v0, Lcom/google/android/exoplayer2/text/g/c$a;

    const/16 v1, 0x20

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/text/g/c$a;-><init>(II)V

    sput-object v0, Lcom/google/android/exoplayer2/text/g/c;->i:Lcom/google/android/exoplayer2/text/g/c$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const-string v0, "TtmlDecoder"

    .line 104
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/c;-><init>(Ljava/lang/String;)V

    .line 106
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/g/c;->j:Lorg/xmlpull/v1/XmlPullParserFactory;

    const/4 v1, 0x1

    .line 107
    invoke-virtual {v0, v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 109
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t create XmlPullParserFactory instance"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static a(Ljava/lang/String;Lcom/google/android/exoplayer2/text/g/c$b;)J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 803
    sget-object v0, Lcom/google/android/exoplayer2/text/g/c;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 804
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const-wide v2, 0x412e848000000000L    # 1000000.0

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v1, :cond_3

    .line 805
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 806
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    const-wide/16 v9, 0xe10

    mul-long v7, v7, v9

    long-to-double v7, v7

    .line 807
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 808
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    const-wide/16 v11, 0x3c

    mul-long v9, v9, v11

    long-to-double v9, v9

    add-double/2addr v7, v9

    .line 809
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 810
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    long-to-double v5, v5

    add-double/2addr v7, v5

    .line 811
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const-wide/16 v4, 0x0

    if-eqz p0, :cond_0

    .line 812
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    goto :goto_0

    :cond_0
    move-wide v9, v4

    :goto_0
    add-double/2addr v7, v9

    const/4 p0, 0x5

    .line 813
    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 815
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    long-to-float p0, v9

    iget v1, p1, Lcom/google/android/exoplayer2/text/g/c$b;->a:F

    div-float/2addr p0, v1

    float-to-double v9, p0

    goto :goto_1

    :cond_1
    move-wide v9, v4

    :goto_1
    add-double/2addr v7, v9

    const/4 p0, 0x6

    .line 816
    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 818
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-double v0, v0

    iget p0, p1, Lcom/google/android/exoplayer2/text/g/c$b;->b:I

    int-to-double v4, p0

    div-double/2addr v0, v4

    iget p0, p1, Lcom/google/android/exoplayer2/text/g/c$b;->a:F

    float-to-double p0, p0

    div-double v4, v0, p0

    :cond_2
    add-double/2addr v7, v4

    mul-double v7, v7, v2

    double-to-long p0, v7

    return-wide p0

    .line 823
    :cond_3
    sget-object v0, Lcom/google/android/exoplayer2/text/g/c;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 824
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 825
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 826
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 827
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 828
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

    .line 845
    :pswitch_1
    iget p0, p1, Lcom/google/android/exoplayer2/text/g/c$b;->c:I

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

    .line 842
    :pswitch_4
    iget p0, p1, Lcom/google/android/exoplayer2/text/g/c$b;->a:F

    float-to-double p0, p0

    goto :goto_4

    :goto_6
    mul-double v8, v8, v2

    double-to-long p0, v8

    return-wide p0

    .line 850
    :cond_9
    new-instance p1, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Malformed time expression: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

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

.method private static a(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/text/g/c$a;)Lcom/google/android/exoplayer2/text/g/c$a;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    const-string v0, "http://www.w3.org/ns/ttml#parameter"

    const-string v1, "cellResolution"

    .line 227
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-object p1

    .line 232
    :cond_0
    sget-object v0, Lcom/google/android/exoplayer2/text/g/c;->g:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 233
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const-string v2, "Ignoring malformed cell resolution: "

    const-string v3, "TtmlDecoder"

    if-nez v1, :cond_1

    .line 234
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_1
    const/4 v1, 0x1

    .line 238
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x2

    .line 239
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 243
    new-instance v4, Lcom/google/android/exoplayer2/text/g/c$a;

    invoke-direct {v4, v1, v0}, Lcom/google/android/exoplayer2/text/g/c$a;-><init>(II)V

    return-object v4

    .line 241
    :cond_2
    new-instance v4, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Invalid cell resolution "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :catch_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/text/g/c$c;
    .locals 5

    const-string v0, "extent"

    .line 253
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/ag;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 258
    :cond_0
    sget-object v1, Lcom/google/android/exoplayer2/text/g/c;->f:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 259
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    const-string v3, "TtmlDecoder"

    if-nez v2, :cond_1

    .line 260
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Ignoring non-pixel tts extent: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    const/4 v2, 0x1

    .line 264
    :try_start_0
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x2

    .line 265
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 266
    new-instance v4, Lcom/google/android/exoplayer2/text/g/c$c;

    invoke-direct {v4, v2, v1}, Lcom/google/android/exoplayer2/text/g/c$c;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 268
    :catch_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Ignoring malformed tts extent: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/text/g/d;Ljava/util/Map;Lcom/google/android/exoplayer2/text/g/c$b;)Lcom/google/android/exoplayer2/text/g/d;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lcom/google/android/exoplayer2/text/g/d;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/g/e;",
            ">;",
            "Lcom/google/android/exoplayer2/text/g/c$b;",
            ")",
            "Lcom/google/android/exoplayer2/text/g/d;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move-object/from16 v1, p3

    .line 648
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    const/4 v3, 0x0

    .line 649
    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/text/g/c;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/text/g/g;)Lcom/google/android/exoplayer2/text/g/g;

    move-result-object v7

    const-string v8, ""

    move-object v10, v3

    move-object v9, v8

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    move-object v8, v10

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_8

    .line 651
    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    .line 652
    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    .line 653
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v18

    sparse-switch v18, :sswitch_data_0

    :goto_1
    const/4 v6, -0x1

    goto :goto_2

    :sswitch_0
    const-string v6, "backgroundImage"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v6, 0x5

    goto :goto_2

    :sswitch_1
    const-string v6, "style"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x4

    goto :goto_2

    :sswitch_2
    const-string v6, "begin"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v6, 0x3

    goto :goto_2

    :sswitch_3
    const-string v6, "end"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v6, 0x2

    goto :goto_2

    :sswitch_4
    const-string v6, "dur"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    const/4 v6, 0x1

    goto :goto_2

    :sswitch_5
    const-string v6, "region"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_1

    :cond_5
    const/4 v6, 0x0

    :goto_2
    packed-switch v6, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    const-string v4, "#"

    .line 680
    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    .line 681
    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    .line 665
    :pswitch_1
    invoke-static {v5}, Lcom/google/android/exoplayer2/text/g/c;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 666
    array-length v5, v4

    if-lez v5, :cond_6

    move-object v8, v4

    goto :goto_3

    .line 655
    :pswitch_2
    invoke-static {v5, v1}, Lcom/google/android/exoplayer2/text/g/c;->a(Ljava/lang/String;Lcom/google/android/exoplayer2/text/g/c$b;)J

    move-result-wide v12

    :cond_6
    :goto_3
    move-object/from16 v4, p2

    goto :goto_4

    .line 658
    :pswitch_3
    invoke-static {v5, v1}, Lcom/google/android/exoplayer2/text/g/c;->a(Ljava/lang/String;Lcom/google/android/exoplayer2/text/g/c$b;)J

    move-result-wide v14

    goto :goto_3

    .line 661
    :pswitch_4
    invoke-static {v5, v1}, Lcom/google/android/exoplayer2/text/g/c;->a(Ljava/lang/String;Lcom/google/android/exoplayer2/text/g/c$b;)J

    move-result-wide v16

    goto :goto_3

    :pswitch_5
    move-object/from16 v4, p2

    .line 671
    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    move-object v9, v5

    :cond_7
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_8
    if-eqz v11, :cond_a

    .line 689
    iget-wide v1, v11, Lcom/google/android/exoplayer2/text/g/d;->d:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_b

    cmp-long v1, v12, v3

    if-eqz v1, :cond_9

    .line 691
    iget-wide v1, v11, Lcom/google/android/exoplayer2/text/g/d;->d:J

    add-long/2addr v12, v1

    :cond_9
    cmp-long v1, v14, v3

    if-eqz v1, :cond_b

    .line 694
    iget-wide v1, v11, Lcom/google/android/exoplayer2/text/g/d;->d:J

    add-long/2addr v14, v1

    goto :goto_5

    :cond_a
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    :cond_b
    :goto_5
    cmp-long v1, v14, v3

    if-nez v1, :cond_d

    cmp-long v1, v16, v3

    if-eqz v1, :cond_c

    add-long v16, v12, v16

    move-wide/from16 v5, v16

    goto :goto_6

    :cond_c
    if-eqz v11, :cond_d

    .line 701
    iget-wide v1, v11, Lcom/google/android/exoplayer2/text/g/d;->e:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_d

    .line 703
    iget-wide v1, v11, Lcom/google/android/exoplayer2/text/g/d;->e:J

    move-wide v5, v1

    goto :goto_6

    :cond_d
    move-wide v5, v14

    .line 708
    :goto_6
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 19160
    new-instance v14, Lcom/google/android/exoplayer2/text/g/d;

    const/4 v2, 0x0

    move-object v0, v14

    move-wide v3, v12

    move-object/from16 v11, p1

    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplayer2/text/g/d;-><init>(Ljava/lang/String;Ljava/lang/String;JJLcom/google/android/exoplayer2/text/g/g;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/text/g/d;)V

    return-object v14

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

.method private static a(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/text/g/c$a;Lcom/google/android/exoplayer2/text/g/c$c;)Lcom/google/android/exoplayer2/text/g/e;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "id"

    .line 333
    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/util/ag;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    if-nez v4, :cond_0

    return-object v2

    :cond_0
    const-string v3, "origin"

    .line 342
    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/util/ag;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "TtmlDecoder"

    if-eqz v3, :cond_f

    .line 344
    sget-object v6, Lcom/google/android/exoplayer2/text/g/c;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 345
    sget-object v8, Lcom/google/android/exoplayer2/text/g/c;->f:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 346
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    const-string v11, "Ignoring region with malformed origin: "

    const-string v12, "Ignoring region with missing tts:extent: "

    const/high16 v13, 0x42c80000    # 100.0f

    const/4 v14, 0x2

    const/4 v15, 0x1

    if-eqz v10, :cond_1

    .line 349
    :try_start_0
    invoke-virtual {v7, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    div-float/2addr v9, v13

    .line 350
    invoke-virtual {v7, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    div-float/2addr v7, v13

    move/from16 v16, v9

    move v9, v7

    move/from16 v7, v16

    goto :goto_0

    .line 352
    :catch_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 355
    :cond_1
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_e

    if-nez v1, :cond_2

    .line 357
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 361
    :cond_2
    :try_start_1
    invoke-virtual {v9, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 362
    invoke-virtual {v9, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    int-to-float v7, v7

    .line 364
    iget v10, v1, Lcom/google/android/exoplayer2/text/g/c$c;->a:I

    int-to-float v10, v10

    div-float/2addr v7, v10

    int-to-float v9, v9

    .line 365
    iget v10, v1, Lcom/google/android/exoplayer2/text/g/c$c;->b:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3

    int-to-float v10, v10

    div-float/2addr v9, v10

    :goto_0
    const-string v10, "extent"

    .line 387
    invoke-static {v0, v10}, Lcom/google/android/exoplayer2/util/ag;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_d

    .line 389
    invoke-virtual {v6, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 390
    invoke-virtual {v8, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 391
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    const-string v11, "Ignoring region with malformed extent: "

    if-eqz v10, :cond_3

    .line 394
    :try_start_2
    invoke-virtual {v6, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    div-float/2addr v1, v13

    .line 396
    invoke-virtual {v6, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    div-float/2addr v2, v13

    move v10, v2

    goto :goto_1

    .line 398
    :catch_1
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 401
    :cond_3
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_c

    if-nez v1, :cond_4

    .line 403
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 407
    :cond_4
    :try_start_3
    invoke-virtual {v8, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 408
    invoke-virtual {v8, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    int-to-float v6, v6

    .line 410
    iget v10, v1, Lcom/google/android/exoplayer2/text/g/c$c;->a:I

    int-to-float v10, v10

    div-float/2addr v6, v10

    int-to-float v8, v8

    .line 411
    iget v1, v1, Lcom/google/android/exoplayer2/text/g/c$c;->b:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    int-to-float v1, v1

    div-float/2addr v8, v1

    move v1, v6

    move v10, v8

    :goto_1
    const-string v2, "displayAlign"

    .line 433
    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/util/ag;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_7

    .line 435
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/af;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    const-string v5, "center"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "after"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    add-float/2addr v9, v10

    move v6, v9

    const/4 v8, 0x2

    goto :goto_3

    :cond_6
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v10, v2

    add-float/2addr v9, v2

    move v6, v9

    const/4 v8, 0x1

    goto :goto_3

    :cond_7
    :goto_2
    move v6, v9

    const/4 v8, 0x0

    :goto_3
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v5, p1

    .line 450
    iget v5, v5, Lcom/google/android/exoplayer2/text/g/c$a;->b:I

    int-to-float v5, v5

    div-float v12, v2, v5

    const/high16 v2, -0x80000000

    const-string v5, "writingMode"

    .line 455
    invoke-static {v0, v5}, Lcom/google/android/exoplayer2/util/ag;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 457
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/af;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v5, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :goto_4
    const/4 v3, -0x1

    goto :goto_5

    :sswitch_0
    const-string v3, "tbrl"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_4

    :cond_8
    const/4 v3, 0x2

    goto :goto_5

    :sswitch_1
    const-string v3, "tblr"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_4

    :cond_9
    const/4 v3, 0x1

    goto :goto_5

    :sswitch_2
    const-string v9, "tb"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_4

    :cond_a
    :goto_5
    packed-switch v3, :pswitch_data_0

    goto :goto_6

    :pswitch_0
    const/4 v13, 0x1

    goto :goto_7

    :pswitch_1
    const/4 v13, 0x2

    goto :goto_7

    :cond_b
    :goto_6
    const/high16 v13, -0x80000000

    .line 471
    :goto_7
    new-instance v0, Lcom/google/android/exoplayer2/text/g/e;

    const/4 v2, 0x0

    const/4 v11, 0x1

    move-object v3, v0

    move v5, v7

    move v7, v2

    move v9, v1

    invoke-direct/range {v3 .. v13}, Lcom/google/android/exoplayer2/text/g/e;-><init>(Ljava/lang/String;FFIIFFIFI)V

    return-object v0

    .line 413
    :catch_2
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 417
    :cond_c
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ignoring region with unsupported extent: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_d
    const-string v0, "Ignoring region without an extent"

    .line 421
    invoke-static {v5, v0}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 367
    :catch_3
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 371
    :cond_e
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ignoring region with unsupported origin: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_f
    const-string v0, "Ignoring region without an origin"

    .line 375
    invoke-static {v5, v0}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :sswitch_data_0
    .sparse-switch
        0xe6e -> :sswitch_2
        0x363874 -> :sswitch_1
        0x363928 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Lcom/google/android/exoplayer2/text/g/g;)Lcom/google/android/exoplayer2/text/g/g;
    .locals 0

    if-nez p0, :cond_0

    .line 633
    new-instance p0, Lcom/google/android/exoplayer2/text/g/g;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/g/g;-><init>()V

    :cond_0
    return-object p0
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/text/g/g;)Lcom/google/android/exoplayer2/text/g/g;
    .locals 14

    .line 491
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2c

    .line 493
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 494
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, -0x1

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

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
    const/16 v4, 0xd

    goto/16 :goto_2

    :sswitch_1
    const-string v5, "rubyPosition"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const/16 v4, 0xc

    goto/16 :goto_2

    :sswitch_2
    const-string v5, "textEmphasis"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    const/16 v4, 0xb

    goto/16 :goto_2

    :sswitch_3
    const-string v5, "fontSize"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    const/16 v4, 0xa

    goto/16 :goto_2

    :sswitch_4
    const-string v5, "textCombine"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    const/16 v4, 0x9

    goto/16 :goto_2

    :sswitch_5
    const-string v5, "shear"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_1

    :cond_5
    const/16 v4, 0x8

    goto/16 :goto_2

    :sswitch_6
    const-string v5, "color"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_1

    :cond_6
    const/4 v4, 0x7

    goto :goto_2

    :sswitch_7
    const-string v5, "ruby"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_1

    :cond_7
    const/4 v4, 0x6

    goto :goto_2

    :sswitch_8
    const-string v5, "id"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_1

    :cond_8
    const/4 v4, 0x5

    goto :goto_2

    :sswitch_9
    const-string v5, "fontWeight"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_1

    :cond_9
    const/4 v4, 0x4

    goto :goto_2

    :sswitch_a
    const-string v5, "textDecoration"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    goto/16 :goto_1

    :cond_a
    const/4 v4, 0x3

    goto :goto_2

    :sswitch_b
    const-string v5, "textAlign"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    goto/16 :goto_1

    :cond_b
    const/4 v4, 0x2

    goto :goto_2

    :sswitch_c
    const-string v5, "fontFamily"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    goto/16 :goto_1

    :cond_c
    const/4 v4, 0x1

    goto :goto_2

    :sswitch_d
    const-string v5, "fontStyle"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    goto/16 :goto_1

    :cond_d
    const/4 v4, 0x0

    :goto_2
    const-string v5, "TtmlDecoder"

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_b

    .line 501
    :pswitch_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/text/g/c;->a(Lcom/google/android/exoplayer2/text/g/g;)Lcom/google/android/exoplayer2/text/g/g;

    move-result-object p1

    .line 503
    :try_start_0
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/e;->a(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/google/android/exoplayer2/text/g/g;->b(I)Lcom/google/android/exoplayer2/text/g/g;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_b

    .line 505
    :catch_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Failed parsing background value: "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 588
    :pswitch_1
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/af;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    const-string v4, "before"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    const-string v4, "after"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    goto/16 :goto_b

    .line 593
    :cond_e
    invoke-static {p1}, Lcom/google/android/exoplayer2/text/g/c;->a(Lcom/google/android/exoplayer2/text/g/g;)Lcom/google/android/exoplayer2/text/g/g;

    move-result-object p1

    .line 17292
    iput v10, p1, Lcom/google/android/exoplayer2/text/g/g;->n:I

    goto/16 :goto_b

    .line 590
    :cond_f
    invoke-static {p1}, Lcom/google/android/exoplayer2/text/g/c;->a(Lcom/google/android/exoplayer2/text/g/g;)Lcom/google/android/exoplayer2/text/g/g;

    move-result-object p1

    .line 16292
    iput v11, p1, Lcom/google/android/exoplayer2/text/g/g;->n:I

    goto/16 :goto_b

    .line 618
    :pswitch_2
    invoke-static {p1}, Lcom/google/android/exoplayer2/text/g/c;->a(Lcom/google/android/exoplayer2/text/g/g;)Lcom/google/android/exoplayer2/text/g/g;

    move-result-object p1

    .line 619
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/af;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/exoplayer2/text/g/b;->a(Ljava/lang/String;)Lcom/google/android/exoplayer2/text/g/b;

    move-result-object v3

    .line 17327
    iput-object v3, p1, Lcom/google/android/exoplayer2/text/g/g;->q:Lcom/google/android/exoplayer2/text/g/b;

    goto/16 :goto_b

    .line 521
    :pswitch_3
    :try_start_1
    invoke-static {p1}, Lcom/google/android/exoplayer2/text/g/c;->a(Lcom/google/android/exoplayer2/text/g/g;)Lcom/google/android/exoplayer2/text/g/g;

    move-result-object p1

    const-string v4, "\\s+"

    .line 5731
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 5733
    array-length v6, v4

    if-ne v6, v11, :cond_10

    .line 5734
    sget-object v4, Lcom/google/android/exoplayer2/text/g/c;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    goto :goto_3

    .line 5735
    :cond_10
    array-length v6, v4

    if-ne v6, v10, :cond_19

    .line 5736
    sget-object v6, Lcom/google/android/exoplayer2/text/g/c;->e:Ljava/util/regex/Pattern;

    aget-object v4, v4, v11

    invoke-virtual {v6, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    const-string v6, "Multiple values in fontSize attribute. Picking the second value for vertical font size and ignoring the first."

    .line 5737
    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5744
    :goto_3
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6
    :try_end_1
    .catch Lcom/google/android/exoplayer2/text/SubtitleDecoderException; {:try_start_1 .. :try_end_1} :catch_1

    const-string v7, "\'."

    if-eqz v6, :cond_18

    .line 5745
    :try_start_2
    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 5746
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v12

    const/16 v13, 0x25

    if-eq v12, v13, :cond_13

    const/16 v13, 0xca8

    if-eq v12, v13, :cond_12

    const/16 v13, 0xe08

    if-eq v12, v13, :cond_11

    goto :goto_4

    :cond_11
    const-string v12, "px"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_14

    const/4 v8, 0x0

    goto :goto_4

    :cond_12
    const-string v12, "em"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_14

    const/4 v8, 0x1

    goto :goto_4

    :cond_13
    const-string v12, "%"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_14

    const/4 v8, 0x2

    :cond_14
    :goto_4
    if-eqz v8, :cond_17

    if-eq v8, v11, :cond_16

    if-ne v8, v10, :cond_15

    .line 8337
    iput v9, p1, Lcom/google/android/exoplayer2/text/g/g;->j:I

    goto :goto_5

    .line 5757
    :cond_15
    new-instance v4, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Invalid unit for fontSize: \'"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 7337
    :cond_16
    iput v10, p1, Lcom/google/android/exoplayer2/text/g/g;->j:I

    goto :goto_5

    .line 6337
    :cond_17
    iput v11, p1, Lcom/google/android/exoplayer2/text/g/g;->j:I

    .line 5759
    :goto_5
    invoke-virtual {v4, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 9332
    iput v4, p1, Lcom/google/android/exoplayer2/text/g/g;->k:F

    goto/16 :goto_b

    .line 5761
    :cond_18
    new-instance v4, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Invalid expression for fontSize: \'"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 5740
    :cond_19
    new-instance v6, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Invalid number of entries for fontSize: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v4, v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catch Lcom/google/android/exoplayer2/text/SubtitleDecoderException; {:try_start_2 .. :try_end_2} :catch_1

    .line 524
    :catch_1
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Failed parsing fontSize value: "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 554
    :pswitch_4
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/af;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    const-string v4, "all"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    const-string v4, "none"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    goto/16 :goto_b

    .line 556
    :cond_1a
    invoke-static {p1}, Lcom/google/android/exoplayer2/text/g/c;->a(Lcom/google/android/exoplayer2/text/g/g;)Lcom/google/android/exoplayer2/text/g/g;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/text/g/g;->c(Z)Lcom/google/android/exoplayer2/text/g/g;

    move-result-object p1

    goto/16 :goto_b

    .line 559
    :cond_1b
    invoke-static {p1}, Lcom/google/android/exoplayer2/text/g/c;->a(Lcom/google/android/exoplayer2/text/g/g;)Lcom/google/android/exoplayer2/text/g/g;

    move-result-object p1

    invoke-virtual {p1, v11}, Lcom/google/android/exoplayer2/text/g/g;->c(Z)Lcom/google/android/exoplayer2/text/g/g;

    move-result-object p1

    goto/16 :goto_b

    .line 622
    :pswitch_5
    invoke-static {p1}, Lcom/google/android/exoplayer2/text/g/c;->a(Lcom/google/android/exoplayer2/text/g/g;)Lcom/google/android/exoplayer2/text/g/g;

    move-result-object p1

    invoke-static {v3}, Lcom/google/android/exoplayer2/text/g/c;->b(Ljava/lang/String;)F

    move-result v3

    .line 18192
    iput v3, p1, Lcom/google/android/exoplayer2/text/g/g;->r:F

    goto/16 :goto_b

    .line 509
    :pswitch_6
    invoke-static {p1}, Lcom/google/android/exoplayer2/text/g/c;->a(Lcom/google/android/exoplayer2/text/g/g;)Lcom/google/android/exoplayer2/text/g/g;

    move-result-object p1

    .line 511
    :try_start_3
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/e;->a(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/google/android/exoplayer2/text/g/g;->a(I)Lcom/google/android/exoplayer2/text/g/g;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_b

    .line 513
    :catch_2
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Failed parsing color value: "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 567
    :pswitch_7
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/af;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_1

    :goto_6
    const/4 v6, -0x1

    goto :goto_7

    :sswitch_e
    const-string v4, "text"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    goto :goto_6

    :sswitch_f
    const-string v4, "base"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    goto :goto_6

    :cond_1c
    const/4 v6, 0x4

    goto :goto_7

    :sswitch_10
    const-string v4, "textContainer"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    goto :goto_6

    :cond_1d
    const/4 v6, 0x3

    goto :goto_7

    :sswitch_11
    const-string v4, "delimiter"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    goto :goto_6

    :cond_1e
    const/4 v6, 0x2

    goto :goto_7

    :sswitch_12
    const-string v4, "container"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    goto :goto_6

    :cond_1f
    const/4 v6, 0x1

    goto :goto_7

    :sswitch_13
    const-string v4, "baseContainer"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    goto :goto_6

    :cond_20
    const/4 v6, 0x0

    :cond_21
    :goto_7
    packed-switch v6, :pswitch_data_1

    goto/16 :goto_b

    .line 577
    :pswitch_8
    invoke-static {p1}, Lcom/google/android/exoplayer2/text/g/c;->a(Lcom/google/android/exoplayer2/text/g/g;)Lcom/google/android/exoplayer2/text/g/g;

    move-result-object p1

    .line 15282
    iput v9, p1, Lcom/google/android/exoplayer2/text/g/g;->m:I

    goto/16 :goto_b

    .line 580
    :pswitch_9
    invoke-static {p1}, Lcom/google/android/exoplayer2/text/g/c;->a(Lcom/google/android/exoplayer2/text/g/g;)Lcom/google/android/exoplayer2/text/g/g;

    move-result-object p1

    .line 16282
    iput v7, p1, Lcom/google/android/exoplayer2/text/g/g;->m:I

    goto/16 :goto_b

    .line 569
    :pswitch_a
    invoke-static {p1}, Lcom/google/android/exoplayer2/text/g/c;->a(Lcom/google/android/exoplayer2/text/g/g;)Lcom/google/android/exoplayer2/text/g/g;

    move-result-object p1

    .line 13282
    iput v11, p1, Lcom/google/android/exoplayer2/text/g/g;->m:I

    goto/16 :goto_b

    .line 573
    :pswitch_b
    invoke-static {p1}, Lcom/google/android/exoplayer2/text/g/c;->a(Lcom/google/android/exoplayer2/text/g/g;)Lcom/google/android/exoplayer2/text/g/g;

    move-result-object p1

    .line 14282
    iput v10, p1, Lcom/google/android/exoplayer2/text/g/g;->m:I

    goto/16 :goto_b

    .line 496
    :pswitch_c
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "style"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 497
    invoke-static {p1}, Lcom/google/android/exoplayer2/text/g/c;->a(Lcom/google/android/exoplayer2/text/g/g;)Lcom/google/android/exoplayer2/text/g/g;

    move-result-object p1

    .line 4272
    iput-object v3, p1, Lcom/google/android/exoplayer2/text/g/g;->l:Ljava/lang/String;

    goto/16 :goto_b

    .line 528
    :pswitch_d
    invoke-static {p1}, Lcom/google/android/exoplayer2/text/g/c;->a(Lcom/google/android/exoplayer2/text/g/g;)Lcom/google/android/exoplayer2/text/g/g;

    move-result-object p1

    const-string v4, "bold"

    .line 529
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 10138
    iput v3, p1, Lcom/google/android/exoplayer2/text/g/g;->h:I

    goto/16 :goto_b

    .line 601
    :pswitch_e
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/af;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_2

    goto :goto_8

    :sswitch_14
    const-string v4, "linethrough"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    goto :goto_8

    :cond_22
    const/4 v8, 0x3

    goto :goto_8

    :sswitch_15
    const-string v4, "nolinethrough"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    goto :goto_8

    :cond_23
    const/4 v8, 0x2

    goto :goto_8

    :sswitch_16
    const-string v4, "underline"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    goto :goto_8

    :cond_24
    const/4 v8, 0x1

    goto :goto_8

    :sswitch_17
    const-string v4, "nounderline"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    goto :goto_8

    :cond_25
    const/4 v8, 0x0

    :goto_8
    packed-switch v8, :pswitch_data_2

    goto/16 :goto_b

    .line 603
    :pswitch_f
    invoke-static {p1}, Lcom/google/android/exoplayer2/text/g/c;->a(Lcom/google/android/exoplayer2/text/g/g;)Lcom/google/android/exoplayer2/text/g/g;

    move-result-object p1

    invoke-virtual {p1, v11}, Lcom/google/android/exoplayer2/text/g/g;->a(Z)Lcom/google/android/exoplayer2/text/g/g;

    move-result-object p1

    goto/16 :goto_b

    .line 606
    :pswitch_10
    invoke-static {p1}, Lcom/google/android/exoplayer2/text/g/c;->a(Lcom/google/android/exoplayer2/text/g/g;)Lcom/google/android/exoplayer2/text/g/g;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/text/g/g;->a(Z)Lcom/google/android/exoplayer2/text/g/g;

    move-result-object p1

    goto/16 :goto_b

    .line 609
    :pswitch_11
    invoke-static {p1}, Lcom/google/android/exoplayer2/text/g/c;->a(Lcom/google/android/exoplayer2/text/g/g;)Lcom/google/android/exoplayer2/text/g/g;

    move-result-object p1

    invoke-virtual {p1, v11}, Lcom/google/android/exoplayer2/text/g/g;->b(Z)Lcom/google/android/exoplayer2/text/g/g;

    move-result-object p1

    goto/16 :goto_b

    .line 612
    :pswitch_12
    invoke-static {p1}, Lcom/google/android/exoplayer2/text/g/c;->a(Lcom/google/android/exoplayer2/text/g/g;)Lcom/google/android/exoplayer2/text/g/g;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/text/g/g;->b(Z)Lcom/google/android/exoplayer2/text/g/g;

    move-result-object p1

    goto/16 :goto_b

    .line 536
    :pswitch_13
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/af;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_3

    :goto_9
    const/4 v7, -0x1

    goto :goto_a

    :sswitch_18
    const-string v4, "start"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    goto :goto_9

    :sswitch_19
    const-string v4, "right"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    goto :goto_9

    :cond_26
    const/4 v7, 0x3

    goto :goto_a

    :sswitch_1a
    const-string v4, "left"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    goto :goto_9

    :cond_27
    const/4 v7, 0x2

    goto :goto_a

    :sswitch_1b
    const-string v4, "end"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    goto :goto_9

    :cond_28
    const/4 v7, 0x1

    goto :goto_a

    :sswitch_1c
    const-string v4, "center"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    goto :goto_9

    :cond_29
    const/4 v7, 0x0

    :cond_2a
    :goto_a
    packed-switch v7, :pswitch_data_3

    goto :goto_b

    .line 539
    :pswitch_14
    invoke-static {p1}, Lcom/google/android/exoplayer2/text/g/c;->a(Lcom/google/android/exoplayer2/text/g/g;)Lcom/google/android/exoplayer2/text/g/g;

    move-result-object p1

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 10307
    iput-object v3, p1, Lcom/google/android/exoplayer2/text/g/g;->o:Landroid/text/Layout$Alignment;

    goto :goto_b

    .line 543
    :pswitch_15
    invoke-static {p1}, Lcom/google/android/exoplayer2/text/g/c;->a(Lcom/google/android/exoplayer2/text/g/g;)Lcom/google/android/exoplayer2/text/g/g;

    move-result-object p1

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 11307
    iput-object v3, p1, Lcom/google/android/exoplayer2/text/g/g;->o:Landroid/text/Layout$Alignment;

    goto :goto_b

    .line 546
    :pswitch_16
    invoke-static {p1}, Lcom/google/android/exoplayer2/text/g/c;->a(Lcom/google/android/exoplayer2/text/g/g;)Lcom/google/android/exoplayer2/text/g/g;

    move-result-object p1

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 12307
    iput-object v3, p1, Lcom/google/android/exoplayer2/text/g/g;->o:Landroid/text/Layout$Alignment;

    goto :goto_b

    .line 517
    :pswitch_17
    invoke-static {p1}, Lcom/google/android/exoplayer2/text/g/c;->a(Lcom/google/android/exoplayer2/text/g/g;)Lcom/google/android/exoplayer2/text/g/g;

    move-result-object p1

    .line 5153
    iput-object v3, p1, Lcom/google/android/exoplayer2/text/g/g;->a:Ljava/lang/String;

    goto :goto_b

    .line 532
    :pswitch_18
    invoke-static {p1}, Lcom/google/android/exoplayer2/text/g/c;->a(Lcom/google/android/exoplayer2/text/g/g;)Lcom/google/android/exoplayer2/text/g/g;

    move-result-object p1

    const-string v4, "italic"

    .line 533
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 10143
    iput v3, p1, Lcom/google/android/exoplayer2/text/g/g;->i:I

    :cond_2b
    :goto_b
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_2c
    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x5c71855e -> :sswitch_d
        -0x48ff636d -> :sswitch_c
        -0x3f826a28 -> :sswitch_b
        -0x3468fa43 -> :sswitch_a
        -0x2bc67c59 -> :sswitch_9
        0xd1b -> :sswitch_8
        0x3595da -> :sswitch_7
        0x5a72f63 -> :sswitch_6
        0x6855ce1 -> :sswitch_5
        0x6909352 -> :sswitch_4
        0x15caa0f0 -> :sswitch_3
        0x36e741c9 -> :sswitch_2
        0x42841923 -> :sswitch_1
        0x4cb7f6d5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_13
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x24de7f50 -> :sswitch_13
        -0x187eb37f -> :sswitch_12
        -0xeee99f9 -> :sswitch_11
        -0x81c562c -> :sswitch_10
        0x2e06d1 -> :sswitch_f
        0x36452d -> :sswitch_e
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_b
        :pswitch_8
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x57195dd5 -> :sswitch_17
        -0x3d363934 -> :sswitch_16
        0x36723ff0 -> :sswitch_15
        0x641ec051 -> :sswitch_14
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :sswitch_data_3
    .sparse-switch
        -0x514d33ab -> :sswitch_1c
        0x188db -> :sswitch_1b
        0x32a007 -> :sswitch_1a
        0x677c21c -> :sswitch_19
        0x68ac462 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_15
        :pswitch_14
    .end packed-switch
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;Lcom/google/android/exoplayer2/text/g/c$a;Lcom/google/android/exoplayer2/text/g/c$c;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/g/g;",
            ">;",
            "Lcom/google/android/exoplayer2/text/g/c$a;",
            "Lcom/google/android/exoplayer2/text/g/c$c;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/g/e;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/g/g;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 282
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v0, "style"

    .line 283
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/ag;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 284
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/ag;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 285
    new-instance v1, Lcom/google/android/exoplayer2/text/g/g;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/text/g/g;-><init>()V

    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/text/g/c;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/text/g/g;)Lcom/google/android/exoplayer2/text/g/g;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 287
    invoke-static {v0}, Lcom/google/android/exoplayer2/text/g/c;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 288
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/text/g/g;

    .line 3207
    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/text/g/g;->a(Lcom/google/android/exoplayer2/text/g/g;)Lcom/google/android/exoplayer2/text/g/g;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3278
    :cond_1
    iget-object v0, v1, Lcom/google/android/exoplayer2/text/g/g;->l:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 293
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const-string v0, "region"

    .line 295
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/ag;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 297
    invoke-static {p0, p2, p3}, Lcom/google/android/exoplayer2/text/g/c;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/text/g/c$a;Lcom/google/android/exoplayer2/text/g/c$c;)Lcom/google/android/exoplayer2/text/g/e;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 299
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/g/e;->a:Ljava/lang/String;

    invoke-interface {p4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    const-string v0, "metadata"

    .line 301
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/ag;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3311
    :cond_4
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v1, "image"

    .line 3312
    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/util/ag;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "id"

    .line 3313
    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/util/ag;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 3315
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    .line 3316
    invoke-interface {p5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3319
    :cond_5
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/ag;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_6
    :goto_1
    const-string v0, "head"

    .line 304
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/ag;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1
.end method

.method private static a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 485
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 486
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    return-object p0

    :cond_0
    const-string v0, "\\s+"

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/lang/String;)F
    .locals 4

    .line 770
    sget-object v0, Lcom/google/android/exoplayer2/text/g/c;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 771
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    const-string v3, "TtmlDecoder"

    if-nez v1, :cond_0

    .line 772
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Invalid value for shear: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    const/4 v1, 0x1

    .line 776
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 777
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, -0x3d380000    # -100.0f

    .line 781
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    .line 782
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    .line 785
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Failed to parse shear: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0, v0}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2
.end method


# virtual methods
.method public final a([BIZ)Lcom/google/android/exoplayer2/text/e;
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    const-string v0, ""

    const-string v1, "\n"

    const-string v2, "http://www.w3.org/ns/ttml#parameter"

    move-object/from16 v3, p0

    .line 117
    :try_start_0
    iget-object v4, v3, Lcom/google/android/exoplayer2/text/g/c;->j:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 118
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 119
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 120
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 121
    new-instance v5, Lcom/google/android/exoplayer2/text/g/e;

    invoke-direct {v5, v0}, Lcom/google/android/exoplayer2/text/g/e;-><init>(Ljava/lang/String;)V

    invoke-interface {v12, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    new-instance v0, Ljava/io/ByteArrayInputStream;

    const/4 v14, 0x0

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-direct {v0, v5, v14, v6}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    const/4 v5, 0x0

    .line 123
    invoke-interface {v4, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 125
    new-instance v15, Ljava/util/ArrayDeque;

    invoke-direct {v15}, Ljava/util/ArrayDeque;-><init>()V

    .line 127
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 128
    sget-object v6, Lcom/google/android/exoplayer2/text/g/c;->h:Lcom/google/android/exoplayer2/text/g/c$b;

    .line 129
    sget-object v7, Lcom/google/android/exoplayer2/text/g/c;->i:Lcom/google/android/exoplayer2/text/g/c$a;

    move-object/from16 v16, v5

    const/16 v17, 0x0

    :goto_0
    const/4 v8, 0x1

    if-eq v0, v8, :cond_11

    .line 132
    invoke-virtual {v15}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/exoplayer2/text/g/d;

    const/4 v10, 0x2

    if-nez v17, :cond_e

    .line 134
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v14, " "

    const-string v3, "tt"

    if-ne v0, v10, :cond_b

    .line 136
    :try_start_1
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x1e

    const-string v5, "frameRate"

    .line 1194
    invoke-interface {v4, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1196
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :cond_0
    const/high16 v5, 0x3f800000    # 1.0f

    const-string v6, "frameRateMultiplier"

    .line 1200
    invoke-interface {v4, v2, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 1202
    invoke-static {v6, v14}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1203
    array-length v6, v5

    if-ne v6, v10, :cond_1

    const/16 v18, 0x0

    .line 1206
    aget-object v6, v5, v18

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-float v6, v6

    const/4 v10, 0x1

    .line 1207
    aget-object v5, v5, v10

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-float v5, v5

    div-float v5, v6, v5

    goto :goto_1

    .line 1204
    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    const-string v1, "frameRateMultiplier doesn\'t have 2 parts"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v10, 0x1

    const/16 v18, 0x0

    .line 1211
    :goto_1
    sget-object v6, Lcom/google/android/exoplayer2/text/g/c;->h:Lcom/google/android/exoplayer2/text/g/c$b;

    iget v7, v6, Lcom/google/android/exoplayer2/text/g/c$b;->b:I

    const-string v14, "subFrameRate"

    .line 1212
    invoke-interface {v4, v2, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_3

    .line 1214
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1217
    :cond_3
    iget v6, v6, Lcom/google/android/exoplayer2/text/g/c$b;->c:I

    const-string v14, "tickRate"

    .line 1218
    invoke-interface {v4, v2, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_4

    .line 1220
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1222
    :cond_4
    new-instance v14, Lcom/google/android/exoplayer2/text/g/c$b;

    int-to-float v0, v0

    mul-float v0, v0, v5

    invoke-direct {v14, v0, v7, v6}, Lcom/google/android/exoplayer2/text/g/c$b;-><init>(FII)V

    .line 138
    sget-object v0, Lcom/google/android/exoplayer2/text/g/c;->i:Lcom/google/android/exoplayer2/text/g/c$a;

    invoke-static {v4, v0}, Lcom/google/android/exoplayer2/text/g/c;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/text/g/c$a;)Lcom/google/android/exoplayer2/text/g/c$a;

    move-result-object v7

    .line 139
    invoke-static {v4}, Lcom/google/android/exoplayer2/text/g/c;->a(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/text/g/c$c;

    move-result-object v5

    move-object/from16 v19, v7

    move-object v7, v14

    move-object v14, v5

    goto :goto_2

    :cond_5
    const/4 v10, 0x1

    const/16 v18, 0x0

    move-object v14, v5

    move-object/from16 v19, v7

    move-object v7, v6

    .line 1712
    :goto_2
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    const-string v3, "head"

    if-nez v0, :cond_7

    .line 1713
    :try_start_2
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "body"

    .line 1714
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "div"

    .line 1715
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "p"

    .line 1716
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "span"

    .line 1717
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "br"

    .line 1718
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "style"

    .line 1719
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "styling"

    .line 1720
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "layout"

    .line 1721
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "region"

    .line 1722
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "metadata"

    .line 1723
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "image"

    .line 1724
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "data"

    .line 1725
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "information"

    .line 1726
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    const/4 v10, 0x0

    :cond_7
    :goto_3
    if-nez v10, :cond_8

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Ignoring unsupported tag: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/google/android/exoplayer2/util/n;->b()V

    add-int/lit8 v17, v17, 0x1

    move-object v6, v7

    goto :goto_5

    .line 144
    :cond_8
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v5, v4

    move-object v6, v11

    move-object v3, v7

    move-object/from16 v7, v19

    move-object v8, v14

    move-object v9, v12

    move-object v10, v13

    .line 145
    invoke-static/range {v5 .. v10}, Lcom/google/android/exoplayer2/text/g/c;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;Lcom/google/android/exoplayer2/text/g/c$a;Lcom/google/android/exoplayer2/text/g/c$c;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :cond_9
    move-object v3, v7

    .line 148
    :try_start_3
    invoke-static {v4, v9, v12, v3}, Lcom/google/android/exoplayer2/text/g/c;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/text/g/d;Ljava/util/Map;Lcom/google/android/exoplayer2/text/g/c$b;)Lcom/google/android/exoplayer2/text/g/d;

    move-result-object v0

    .line 149
    invoke-virtual {v15, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    if-eqz v9, :cond_a

    .line 151
    invoke-virtual {v9, v0}, Lcom/google/android/exoplayer2/text/g/d;->a(Lcom/google/android/exoplayer2/text/g/d;)V
    :try_end_3
    .catch Lcom/google/android/exoplayer2/text/SubtitleDecoderException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_a
    :goto_4
    move-object v6, v3

    :goto_5
    move-object v5, v14

    move-object/from16 v7, v19

    goto/16 :goto_6

    :catch_0
    move-exception v0

    :try_start_4
    const-string v5, "TtmlDecoder"

    const-string v6, "Suppressing parser error"

    .line 154
    invoke-static {v5, v6, v0}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    :cond_b
    const/16 v18, 0x0

    const/4 v8, 0x4

    if-ne v0, v8, :cond_c

    .line 160
    invoke-static {v9}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/g/d;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    .line 2139
    new-instance v8, Lcom/google/android/exoplayer2/text/g/d;

    const/16 v20, 0x0

    const-string v9, "\r\n"

    .line 2304
    invoke-virtual {v3, v9, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v9, " *\n *"

    .line 2307
    invoke-virtual {v3, v9, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2309
    invoke-virtual {v3, v1, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v9, "[ \t\\x0B\u000c\r]+"

    .line 2311
    invoke-virtual {v3, v9, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-wide v22, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v24, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v26, 0x0

    const/16 v27, 0x0

    const-string v28, ""

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v19, v8

    .line 2141
    invoke-direct/range {v19 .. v30}, Lcom/google/android/exoplayer2/text/g/d;-><init>(Ljava/lang/String;Ljava/lang/String;JJLcom/google/android/exoplayer2/text/g/g;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/text/g/d;)V

    .line 160
    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/text/g/d;->a(Lcom/google/android/exoplayer2/text/g/d;)V

    goto :goto_6

    :cond_c
    const/4 v8, 0x3

    if-ne v0, v8, :cond_10

    .line 162
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 163
    new-instance v0, Lcom/google/android/exoplayer2/text/g/h;

    .line 165
    invoke-virtual {v15}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/text/g/d;

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/text/g/d;

    invoke-direct {v0, v3, v11, v12, v13}, Lcom/google/android/exoplayer2/text/g/h;-><init>(Lcom/google/android/exoplayer2/text/g/d;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    move-object/from16 v16, v0

    .line 167
    :cond_d
    invoke-virtual {v15}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    goto :goto_6

    :cond_e
    const/16 v18, 0x0

    if-ne v0, v10, :cond_f

    add-int/lit8 v17, v17, 0x1

    goto :goto_6

    :cond_f
    const/4 v3, 0x3

    if-ne v0, v3, :cond_10

    add-int/lit8 v17, v17, -0x1

    .line 176
    :cond_10
    :goto_6
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 177
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    move-object/from16 v3, p0

    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_11
    if-eqz v16, :cond_12

    return-object v16

    .line 182
    :cond_12
    new-instance v0, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    const-string v1, "No TTML subtitles found"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v0

    .line 187
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected error when reading input."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    .line 185
    new-instance v1, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    const-string v2, "Unable to decode source"

    invoke-direct {v1, v2, v0}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
