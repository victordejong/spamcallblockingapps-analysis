.class public Lcom/callapp/repackaged/org/apache/commons/codec/binary/StringUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([B)Ljava/lang/String;
    .locals 1

    .line 353
    sget-object v0, Lcom/callapp/repackaged/org/apache/commons/codec/Charsets;->b:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lcom/callapp/repackaged/org/apache/commons/codec/binary/StringUtils;->a([BLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a([BLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 291
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 1

    .line 270
    sget-object v0, Lcom/callapp/repackaged/org/apache/commons/codec/Charsets;->f:Ljava/nio/charset/Charset;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1097
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method public static b([B)Ljava/lang/String;
    .locals 1

    .line 417
    sget-object v0, Lcom/callapp/repackaged/org/apache/commons/codec/Charsets;->f:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lcom/callapp/repackaged/org/apache/commons/codec/binary/StringUtils;->a([BLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
