.class public final Lcom/explorestack/protobuf/TextFormat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/TextFormat$InvalidEscapeSequenceException;,
        Lcom/explorestack/protobuf/TextFormat$Parser;,
        Lcom/explorestack/protobuf/TextFormat$UnknownFieldParseException;,
        Lcom/explorestack/protobuf/TextFormat$ParseException;,
        Lcom/explorestack/protobuf/TextFormat$Tokenizer;,
        Lcom/explorestack/protobuf/TextFormat$TextGenerator;,
        Lcom/explorestack/protobuf/TextFormat$Printer;
    }
.end annotation


# static fields
.field private static final PARSER:Lcom/explorestack/protobuf/TextFormat$Parser;

.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    const-class v0, Lcom/explorestack/protobuf/TextFormat;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/explorestack/protobuf/TextFormat;->logger:Ljava/util/logging/Logger;

    .line 1277
    invoke-static {}, Lcom/explorestack/protobuf/TextFormat$Parser;->newBuilder()Lcom/explorestack/protobuf/TextFormat$Parser$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/TextFormat$Parser$Builder;->build()Lcom/explorestack/protobuf/TextFormat$Parser;

    move-result-object v0

    sput-object v0, Lcom/explorestack/protobuf/TextFormat;->PARSER:Lcom/explorestack/protobuf/TextFormat$Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/Appendable;)Lcom/explorestack/protobuf/TextFormat$TextGenerator;
    .locals 0

    .line 55
    invoke-static {p0}, Lcom/explorestack/protobuf/TextFormat;->multiLineOutput(Ljava/lang/Appendable;)Lcom/explorestack/protobuf/TextFormat$TextGenerator;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Ljava/lang/Appendable;)Lcom/explorestack/protobuf/TextFormat$TextGenerator;
    .locals 0

    .line 55
    invoke-static {p0}, Lcom/explorestack/protobuf/TextFormat;->singleLineOutput(Ljava/lang/Appendable;)Lcom/explorestack/protobuf/TextFormat$TextGenerator;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600()Ljava/util/logging/Logger;
    .locals 1

    .line 55
    sget-object v0, Lcom/explorestack/protobuf/TextFormat;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method private static digitValue(B)I
    .locals 2

    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v1, 0x39

    if-gt p0, v1, :cond_0

    sub-int/2addr p0, v0

    return p0

    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v1, 0x7a

    if-gt p0, v1, :cond_1

    sub-int/2addr p0, v0

    :goto_0
    add-int/lit8 p0, p0, 0xa

    return p0

    :cond_1
    add-int/lit8 p0, p0, -0x41

    goto :goto_0
.end method

.method public static escapeBytes(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/String;
    .locals 0

    .line 2031
    invoke-static {p0}, Lcom/explorestack/protobuf/TextFormatEscaper;->escapeBytes(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static escapeBytes([B)Ljava/lang/String;
    .locals 0

    .line 2036
    invoke-static {p0}, Lcom/explorestack/protobuf/TextFormatEscaper;->escapeBytes([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static escapeDoubleQuotesAndBackslashes(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2167
    invoke-static {p0}, Lcom/explorestack/protobuf/TextFormatEscaper;->escapeDoubleQuotesAndBackslashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static escapeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2162
    invoke-static {p0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object p0

    invoke-static {p0}, Lcom/explorestack/protobuf/TextFormat;->escapeBytes(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getParser()Lcom/explorestack/protobuf/TextFormat$Parser;
    .locals 1

    .line 1284
    sget-object v0, Lcom/explorestack/protobuf/TextFormat;->PARSER:Lcom/explorestack/protobuf/TextFormat$Parser;

    return-object v0
.end method

.method private static isHex(B)Z
    .locals 1

    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v0, 0x66

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x41

    if-gt v0, p0, :cond_3

    const/16 v0, 0x46

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private static isOctal(B)Z
    .locals 1

    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x37

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static merge(Ljava/lang/CharSequence;Lcom/explorestack/protobuf/ExtensionRegistry;Lcom/explorestack/protobuf/Message$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/TextFormat$ParseException;
        }
    .end annotation

    .line 1334
    sget-object v0, Lcom/explorestack/protobuf/TextFormat;->PARSER:Lcom/explorestack/protobuf/TextFormat$Parser;

    invoke-virtual {v0, p0, p1, p2}, Lcom/explorestack/protobuf/TextFormat$Parser;->merge(Ljava/lang/CharSequence;Lcom/explorestack/protobuf/ExtensionRegistry;Lcom/explorestack/protobuf/Message$Builder;)V

    return-void
.end method

.method public static merge(Ljava/lang/CharSequence;Lcom/explorestack/protobuf/Message$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/TextFormat$ParseException;
        }
    .end annotation

    .line 1295
    sget-object v0, Lcom/explorestack/protobuf/TextFormat;->PARSER:Lcom/explorestack/protobuf/TextFormat$Parser;

    invoke-virtual {v0, p0, p1}, Lcom/explorestack/protobuf/TextFormat$Parser;->merge(Ljava/lang/CharSequence;Lcom/explorestack/protobuf/Message$Builder;)V

    return-void
.end method

.method public static merge(Ljava/lang/Readable;Lcom/explorestack/protobuf/ExtensionRegistry;Lcom/explorestack/protobuf/Message$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1321
    sget-object v0, Lcom/explorestack/protobuf/TextFormat;->PARSER:Lcom/explorestack/protobuf/TextFormat$Parser;

    invoke-virtual {v0, p0, p1, p2}, Lcom/explorestack/protobuf/TextFormat$Parser;->merge(Ljava/lang/Readable;Lcom/explorestack/protobuf/ExtensionRegistry;Lcom/explorestack/protobuf/Message$Builder;)V

    return-void
.end method

.method public static merge(Ljava/lang/Readable;Lcom/explorestack/protobuf/Message$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1289
    sget-object v0, Lcom/explorestack/protobuf/TextFormat;->PARSER:Lcom/explorestack/protobuf/TextFormat$Parser;

    invoke-virtual {v0, p0, p1}, Lcom/explorestack/protobuf/TextFormat$Parser;->merge(Ljava/lang/Readable;Lcom/explorestack/protobuf/Message$Builder;)V

    return-void
.end method

.method private static multiLineOutput(Ljava/lang/Appendable;)Lcom/explorestack/protobuf/TextFormat$TextGenerator;
    .locals 3

    .line 649
    new-instance v0, Lcom/explorestack/protobuf/TextFormat$TextGenerator;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/explorestack/protobuf/TextFormat$TextGenerator;-><init>(Ljava/lang/Appendable;ZLcom/explorestack/protobuf/TextFormat$1;)V

    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;Lcom/explorestack/protobuf/ExtensionRegistry;Ljava/lang/Class;)Lcom/explorestack/protobuf/Message;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/explorestack/protobuf/Message;",
            ">(",
            "Ljava/lang/CharSequence;",
            "Lcom/explorestack/protobuf/ExtensionRegistry;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/TextFormat$ParseException;
        }
    .end annotation

    .line 1348
    invoke-static {p2}, Lcom/explorestack/protobuf/Internal;->getDefaultInstance(Ljava/lang/Class;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/Message;

    invoke-interface {p2}, Lcom/explorestack/protobuf/Message;->newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;

    move-result-object p2

    .line 1349
    invoke-static {p0, p1, p2}, Lcom/explorestack/protobuf/TextFormat;->merge(Ljava/lang/CharSequence;Lcom/explorestack/protobuf/ExtensionRegistry;Lcom/explorestack/protobuf/Message$Builder;)V

    .line 1351
    invoke-interface {p2}, Lcom/explorestack/protobuf/Message$Builder;->build()Lcom/explorestack/protobuf/Message;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/CharSequence;Ljava/lang/Class;)Lcom/explorestack/protobuf/Message;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/explorestack/protobuf/Message;",
            ">(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/TextFormat$ParseException;
        }
    .end annotation

    .line 1305
    invoke-static {p1}, Lcom/explorestack/protobuf/Internal;->getDefaultInstance(Ljava/lang/Class;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Message;

    invoke-interface {p1}, Lcom/explorestack/protobuf/Message;->newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;

    move-result-object p1

    .line 1306
    invoke-static {p0, p1}, Lcom/explorestack/protobuf/TextFormat;->merge(Ljava/lang/CharSequence;Lcom/explorestack/protobuf/Message$Builder;)V

    .line 1308
    invoke-interface {p1}, Lcom/explorestack/protobuf/Message$Builder;->build()Lcom/explorestack/protobuf/Message;

    move-result-object p0

    return-object p0
.end method

.method static parseInt32(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2208
    invoke-static {p0, v0, v1}, Lcom/explorestack/protobuf/TextFormat;->parseInteger(Ljava/lang/String;ZZ)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method static parseInt64(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 2227
    invoke-static {p0, v0, v0}, Lcom/explorestack/protobuf/TextFormat;->parseInteger(Ljava/lang/String;ZZ)J

    move-result-wide v0

    return-wide v0
.end method

.method private static parseInteger(Ljava/lang/String;ZZ)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const-string v0, "-"

    const/4 v1, 0x0

    .line 2245
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 2247
    :cond_0
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "Number must be positive: "

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const/16 v0, 0xa

    const-string v3, "0x"

    .line 2254
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    const/16 v4, 0x10

    if-eqz v3, :cond_2

    add-int/lit8 v1, v1, 0x2

    const/16 v0, 0x10

    goto :goto_1

    :cond_2
    const-string v3, "0"

    .line 2257
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v0, 0x8

    .line 2261
    :cond_3
    :goto_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2264
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const-string v5, "Number out of range for 32-bit signed integer: "

    const-string v6, "Number out of range for 32-bit unsigned integer: "

    if-ge v3, v4, :cond_8

    .line 2266
    invoke-static {v1, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    if-eqz v2, :cond_4

    neg-long v0, v0

    :cond_4
    if-nez p2, :cond_10

    if-eqz p1, :cond_6

    const-wide/32 p1, 0x7fffffff

    cmp-long v2, v0, p1

    if-gtz v2, :cond_5

    const-wide/32 p1, -0x80000000

    cmp-long v2, v0, p1

    if-ltz v2, :cond_5

    goto/16 :goto_3

    .line 2277
    :cond_5
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    const-wide p1, 0x100000000L

    cmp-long v2, v0, p1

    if-gez v2, :cond_7

    const-wide/16 p1, 0x0

    cmp-long v2, v0, p1

    if-ltz v2, :cond_7

    goto/16 :goto_3

    .line 2282
    :cond_7
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2288
    :cond_8
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v1, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    if-eqz v2, :cond_9

    .line 2290
    invoke-virtual {v3}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v3

    :cond_9
    if-nez p2, :cond_d

    if-eqz p1, :cond_b

    .line 2296
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    const/16 p2, 0x1f

    if-gt p1, p2, :cond_a

    goto :goto_2

    .line 2297
    :cond_a
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2301
    :cond_b
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    const/16 p2, 0x20

    if-gt p1, p2, :cond_c

    goto :goto_2

    .line 2302
    :cond_c
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    if-eqz p1, :cond_f

    .line 2308
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    const/16 p2, 0x3f

    if-gt p1, p2, :cond_e

    goto :goto_2

    .line 2309
    :cond_e
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "Number out of range for 64-bit signed integer: "

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2313
    :cond_f
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    const/16 p2, 0x40

    if-gt p1, p2, :cond_11

    .line 2320
    :goto_2
    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    :cond_10
    :goto_3
    return-wide v0

    .line 2314
    :cond_11
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "Number out of range for 64-bit unsigned integer: "

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static parseUInt32(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2218
    invoke-static {p0, v0, v0}, Lcom/explorestack/protobuf/TextFormat;->parseInteger(Ljava/lang/String;ZZ)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method static parseUInt64(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2237
    invoke-static {p0, v0, v1}, Lcom/explorestack/protobuf/TextFormat;->parseInteger(Ljava/lang/String;ZZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static print(Lcom/explorestack/protobuf/MessageOrBuilder;Ljava/lang/Appendable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 70
    invoke-static {}, Lcom/explorestack/protobuf/TextFormat;->printer()Lcom/explorestack/protobuf/TextFormat$Printer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/explorestack/protobuf/TextFormat$Printer;->print(Lcom/explorestack/protobuf/MessageOrBuilder;Ljava/lang/Appendable;)V

    return-void
.end method

.method public static print(Lcom/explorestack/protobuf/UnknownFieldSet;Ljava/lang/Appendable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 81
    invoke-static {}, Lcom/explorestack/protobuf/TextFormat;->printer()Lcom/explorestack/protobuf/TextFormat$Printer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/explorestack/protobuf/TextFormat$Printer;->print(Lcom/explorestack/protobuf/UnknownFieldSet;Ljava/lang/Appendable;)V

    return-void
.end method

.method public static printField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Ljava/lang/Appendable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 183
    invoke-static {}, Lcom/explorestack/protobuf/TextFormat;->printer()Lcom/explorestack/protobuf/TextFormat$Printer;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/explorestack/protobuf/TextFormat$Printer;->printField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Ljava/lang/Appendable;)V

    return-void
.end method

.method public static printFieldToString(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 189
    invoke-static {}, Lcom/explorestack/protobuf/TextFormat;->printer()Lcom/explorestack/protobuf/TextFormat$Printer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/explorestack/protobuf/TextFormat$Printer;->printFieldToString(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static printFieldValue(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Ljava/lang/Appendable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 225
    invoke-static {}, Lcom/explorestack/protobuf/TextFormat;->printer()Lcom/explorestack/protobuf/TextFormat$Printer;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/explorestack/protobuf/TextFormat$Printer;->printFieldValue(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Ljava/lang/Appendable;)V

    return-void
.end method

.method public static printToString(Lcom/explorestack/protobuf/MessageOrBuilder;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 144
    invoke-static {}, Lcom/explorestack/protobuf/TextFormat;->printer()Lcom/explorestack/protobuf/TextFormat$Printer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/TextFormat$Printer;->printToString(Lcom/explorestack/protobuf/MessageOrBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static printToString(Lcom/explorestack/protobuf/UnknownFieldSet;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 154
    invoke-static {}, Lcom/explorestack/protobuf/TextFormat;->printer()Lcom/explorestack/protobuf/TextFormat$Printer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/TextFormat$Printer;->printToString(Lcom/explorestack/protobuf/UnknownFieldSet;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static printToUnicodeString(Lcom/explorestack/protobuf/MessageOrBuilder;)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 165
    invoke-static {}, Lcom/explorestack/protobuf/TextFormat;->printer()Lcom/explorestack/protobuf/TextFormat$Printer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/TextFormat$Printer;->escapingNonAscii(Z)Lcom/explorestack/protobuf/TextFormat$Printer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/TextFormat$Printer;->printToString(Lcom/explorestack/protobuf/MessageOrBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static printToUnicodeString(Lcom/explorestack/protobuf/UnknownFieldSet;)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 176
    invoke-static {}, Lcom/explorestack/protobuf/TextFormat;->printer()Lcom/explorestack/protobuf/TextFormat$Printer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/TextFormat$Printer;->escapingNonAscii(Z)Lcom/explorestack/protobuf/TextFormat$Printer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/TextFormat$Printer;->printToString(Lcom/explorestack/protobuf/UnknownFieldSet;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static printUnicode(Lcom/explorestack/protobuf/MessageOrBuilder;Ljava/lang/Appendable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 92
    invoke-static {}, Lcom/explorestack/protobuf/TextFormat;->printer()Lcom/explorestack/protobuf/TextFormat$Printer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/TextFormat$Printer;->escapingNonAscii(Z)Lcom/explorestack/protobuf/TextFormat$Printer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/explorestack/protobuf/TextFormat$Printer;->print(Lcom/explorestack/protobuf/MessageOrBuilder;Ljava/lang/Appendable;)V

    return-void
.end method

.method public static printUnicode(Lcom/explorestack/protobuf/UnknownFieldSet;Ljava/lang/Appendable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 103
    invoke-static {}, Lcom/explorestack/protobuf/TextFormat;->printer()Lcom/explorestack/protobuf/TextFormat$Printer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/TextFormat$Printer;->escapingNonAscii(Z)Lcom/explorestack/protobuf/TextFormat$Printer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/explorestack/protobuf/TextFormat$Printer;->print(Lcom/explorestack/protobuf/UnknownFieldSet;Ljava/lang/Appendable;)V

    return-void
.end method

.method public static printUnicodeFieldValue(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Ljava/lang/Appendable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 209
    invoke-static {}, Lcom/explorestack/protobuf/TextFormat;->printer()Lcom/explorestack/protobuf/TextFormat$Printer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/TextFormat$Printer;->escapingNonAscii(Z)Lcom/explorestack/protobuf/TextFormat$Printer;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/explorestack/protobuf/TextFormat$Printer;->printFieldValue(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Ljava/lang/Appendable;)V

    return-void
.end method

.method private static printUnknownFieldValue(ILjava/lang/Object;Lcom/explorestack/protobuf/TextFormat$TextGenerator;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 244
    invoke-static {p0}, Lcom/explorestack/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1

    const/4 v4, 0x5

    if-ne v0, v4, :cond_0

    new-array p0, v3, [Ljava/lang/Object;

    .line 249
    check-cast p1, Ljava/lang/Integer;

    aput-object p1, p0, v1

    const-string p1, "0x%08x"

    invoke-static {v2, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    return-void

    .line 275
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p2, "Bad tag: "

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 272
    :cond_1
    check-cast p1, Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-static {p1, p2}, Lcom/explorestack/protobuf/TextFormat$Printer;->access$000(Lcom/explorestack/protobuf/UnknownFieldSet;Lcom/explorestack/protobuf/TextFormat$TextGenerator;)V

    return-void

    .line 257
    :cond_2
    :try_start_0
    move-object p0, p1

    check-cast p0, Lcom/explorestack/protobuf/ByteString;

    invoke-static {p0}, Lcom/explorestack/protobuf/UnknownFieldSet;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p0

    const-string v0, "{"

    .line 258
    invoke-virtual {p2, v0}, Lcom/explorestack/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 259
    invoke-virtual {p2}, Lcom/explorestack/protobuf/TextFormat$TextGenerator;->eol()V

    .line 260
    invoke-virtual {p2}, Lcom/explorestack/protobuf/TextFormat$TextGenerator;->indent()V

    .line 261
    invoke-static {p0, p2}, Lcom/explorestack/protobuf/TextFormat$Printer;->access$000(Lcom/explorestack/protobuf/UnknownFieldSet;Lcom/explorestack/protobuf/TextFormat$TextGenerator;)V

    .line 262
    invoke-virtual {p2}, Lcom/explorestack/protobuf/TextFormat$TextGenerator;->outdent()V

    const-string p0, "}"

    .line 263
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "\""

    .line 266
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 267
    check-cast p1, Lcom/explorestack/protobuf/ByteString;

    invoke-static {p1}, Lcom/explorestack/protobuf/TextFormat;->escapeBytes(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/explorestack/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 268
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    return-void

    :cond_3
    new-array p0, v3, [Ljava/lang/Object;

    .line 252
    check-cast p1, Ljava/lang/Long;

    aput-object p1, p0, v1

    const-string p1, "0x%016x"

    invoke-static {v2, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    return-void

    .line 246
    :cond_4
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/explorestack/protobuf/TextFormat;->unsignedToString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static printUnknownFieldValue(ILjava/lang/Object;Ljava/lang/Appendable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    invoke-static {p2}, Lcom/explorestack/protobuf/TextFormat;->multiLineOutput(Ljava/lang/Appendable;)Lcom/explorestack/protobuf/TextFormat$TextGenerator;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/explorestack/protobuf/TextFormat;->printUnknownFieldValue(ILjava/lang/Object;Lcom/explorestack/protobuf/TextFormat$TextGenerator;)V

    return-void
.end method

.method public static printer()Lcom/explorestack/protobuf/TextFormat$Printer;
    .locals 1

    .line 281
    invoke-static {}, Lcom/explorestack/protobuf/TextFormat$Printer;->access$100()Lcom/explorestack/protobuf/TextFormat$Printer;

    move-result-object v0

    return-object v0
.end method

.method public static shortDebugString(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 123
    invoke-static {}, Lcom/explorestack/protobuf/TextFormat;->printer()Lcom/explorestack/protobuf/TextFormat$Printer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/explorestack/protobuf/TextFormat$Printer;->shortDebugString(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static shortDebugString(Lcom/explorestack/protobuf/MessageOrBuilder;)Ljava/lang/String;
    .locals 1

    .line 112
    invoke-static {}, Lcom/explorestack/protobuf/TextFormat;->printer()Lcom/explorestack/protobuf/TextFormat$Printer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/TextFormat$Printer;->shortDebugString(Lcom/explorestack/protobuf/MessageOrBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static shortDebugString(Lcom/explorestack/protobuf/UnknownFieldSet;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 134
    invoke-static {}, Lcom/explorestack/protobuf/TextFormat;->printer()Lcom/explorestack/protobuf/TextFormat$Printer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/TextFormat$Printer;->shortDebugString(Lcom/explorestack/protobuf/UnknownFieldSet;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static singleLineOutput(Ljava/lang/Appendable;)Lcom/explorestack/protobuf/TextFormat$TextGenerator;
    .locals 3

    .line 653
    new-instance v0, Lcom/explorestack/protobuf/TextFormat$TextGenerator;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/explorestack/protobuf/TextFormat$TextGenerator;-><init>(Ljava/lang/Appendable;ZLcom/explorestack/protobuf/TextFormat$1;)V

    return-object v0
.end method

.method public static unescapeBytes(Ljava/lang/CharSequence;)Lcom/explorestack/protobuf/ByteString;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/TextFormat$InvalidEscapeSequenceException;
        }
    .end annotation

    .line 2046
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object p0

    .line 2054
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ByteString;->size()I

    move-result v0

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2056
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ByteString;->size()I

    move-result v5

    if-ge v3, v5, :cond_12

    .line 2057
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/ByteString;->byteAt(I)B

    move-result v5

    const/16 v6, 0x5c

    if-ne v5, v6, :cond_11

    add-int/lit8 v3, v3, 0x1

    .line 2059
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ByteString;->size()I

    move-result v5

    if-ge v3, v5, :cond_10

    .line 2061
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/ByteString;->byteAt(I)B

    move-result v5

    .line 2062
    invoke-static {v5}, Lcom/explorestack/protobuf/TextFormat;->isOctal(B)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2064
    invoke-static {v5}, Lcom/explorestack/protobuf/TextFormat;->digitValue(B)I

    move-result v5

    add-int/lit8 v6, v3, 0x1

    .line 2065
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ByteString;->size()I

    move-result v7

    if-ge v6, v7, :cond_0

    invoke-virtual {p0, v6}, Lcom/explorestack/protobuf/ByteString;->byteAt(I)B

    move-result v7

    invoke-static {v7}, Lcom/explorestack/protobuf/TextFormat;->isOctal(B)Z

    move-result v7

    if-eqz v7, :cond_0

    mul-int/lit8 v5, v5, 0x8

    .line 2067
    invoke-virtual {p0, v6}, Lcom/explorestack/protobuf/ByteString;->byteAt(I)B

    move-result v3

    invoke-static {v3}, Lcom/explorestack/protobuf/TextFormat;->digitValue(B)I

    move-result v3

    add-int/2addr v5, v3

    move v3, v6

    :cond_0
    add-int/lit8 v6, v3, 0x1

    .line 2069
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ByteString;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    invoke-virtual {p0, v6}, Lcom/explorestack/protobuf/ByteString;->byteAt(I)B

    move-result v7

    invoke-static {v7}, Lcom/explorestack/protobuf/TextFormat;->isOctal(B)Z

    move-result v7

    if-eqz v7, :cond_1

    mul-int/lit8 v5, v5, 0x8

    .line 2071
    invoke-virtual {p0, v6}, Lcom/explorestack/protobuf/ByteString;->byteAt(I)B

    move-result v3

    invoke-static {v3}, Lcom/explorestack/protobuf/TextFormat;->digitValue(B)I

    move-result v3

    add-int/2addr v5, v3

    move v3, v6

    :cond_1
    add-int/lit8 v6, v4, 0x1

    int-to-byte v5, v5

    .line 2074
    aput-byte v5, v1, v4

    goto/16 :goto_2

    :cond_2
    const/16 v7, 0x22

    if-eq v5, v7, :cond_f

    const/16 v7, 0x27

    if-eq v5, v7, :cond_e

    if-eq v5, v6, :cond_d

    const/16 v6, 0x66

    if-eq v5, v6, :cond_c

    const/16 v6, 0x6e

    if-eq v5, v6, :cond_b

    const/16 v6, 0x72

    if-eq v5, v6, :cond_a

    const/16 v6, 0x74

    if-eq v5, v6, :cond_9

    const/16 v6, 0x76

    if-eq v5, v6, :cond_8

    const/16 v6, 0x78

    if-eq v5, v6, :cond_5

    const/16 v6, 0x61

    if-eq v5, v6, :cond_4

    const/16 v6, 0x62

    if-ne v5, v6, :cond_3

    add-int/lit8 v5, v4, 0x1

    const/16 v6, 0x8

    .line 2081
    aput-byte v6, v1, v4

    goto/16 :goto_1

    .line 2126
    :cond_3
    new-instance p0, Lcom/explorestack/protobuf/TextFormat$InvalidEscapeSequenceException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid escape sequence: \'\\"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/TextFormat$InvalidEscapeSequenceException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    add-int/lit8 v5, v4, 0x1

    const/4 v6, 0x7

    .line 2078
    aput-byte v6, v1, v4

    goto/16 :goto_1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 2111
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ByteString;->size()I

    move-result v5

    if-ge v3, v5, :cond_7

    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/ByteString;->byteAt(I)B

    move-result v5

    invoke-static {v5}, Lcom/explorestack/protobuf/TextFormat;->isHex(B)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2113
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/ByteString;->byteAt(I)B

    move-result v5

    invoke-static {v5}, Lcom/explorestack/protobuf/TextFormat;->digitValue(B)I

    move-result v5

    add-int/lit8 v6, v3, 0x1

    .line 2118
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ByteString;->size()I

    move-result v7

    if-ge v6, v7, :cond_6

    invoke-virtual {p0, v6}, Lcom/explorestack/protobuf/ByteString;->byteAt(I)B

    move-result v7

    invoke-static {v7}, Lcom/explorestack/protobuf/TextFormat;->isHex(B)Z

    move-result v7

    if-eqz v7, :cond_6

    mul-int/lit8 v5, v5, 0x10

    .line 2120
    invoke-virtual {p0, v6}, Lcom/explorestack/protobuf/ByteString;->byteAt(I)B

    move-result v3

    invoke-static {v3}, Lcom/explorestack/protobuf/TextFormat;->digitValue(B)I

    move-result v3

    add-int/2addr v5, v3

    move v3, v6

    :cond_6
    add-int/lit8 v6, v4, 0x1

    int-to-byte v5, v5

    .line 2122
    aput-byte v5, v1, v4

    goto :goto_2

    .line 2115
    :cond_7
    new-instance p0, Lcom/explorestack/protobuf/TextFormat$InvalidEscapeSequenceException;

    const-string v0, "Invalid escape sequence: \'\\x\' with no digits"

    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/TextFormat$InvalidEscapeSequenceException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    add-int/lit8 v5, v4, 0x1

    const/16 v6, 0xb

    .line 2096
    aput-byte v6, v1, v4

    goto :goto_1

    :cond_9
    add-int/lit8 v5, v4, 0x1

    const/16 v6, 0x9

    .line 2093
    aput-byte v6, v1, v4

    goto :goto_1

    :cond_a
    add-int/lit8 v5, v4, 0x1

    const/16 v6, 0xd

    .line 2090
    aput-byte v6, v1, v4

    goto :goto_1

    :cond_b
    add-int/lit8 v5, v4, 0x1

    const/16 v6, 0xa

    .line 2087
    aput-byte v6, v1, v4

    goto :goto_1

    :cond_c
    add-int/lit8 v5, v4, 0x1

    const/16 v6, 0xc

    .line 2084
    aput-byte v6, v1, v4

    goto :goto_1

    :cond_d
    add-int/lit8 v5, v4, 0x1

    .line 2099
    aput-byte v6, v1, v4

    goto :goto_1

    :cond_e
    add-int/lit8 v5, v4, 0x1

    .line 2102
    aput-byte v7, v1, v4

    goto :goto_1

    :cond_f
    add-int/lit8 v5, v4, 0x1

    .line 2105
    aput-byte v7, v1, v4

    :goto_1
    move v4, v5

    goto :goto_3

    .line 2131
    :cond_10
    new-instance p0, Lcom/explorestack/protobuf/TextFormat$InvalidEscapeSequenceException;

    const-string v0, "Invalid escape sequence: \'\\\' at end of string."

    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/TextFormat$InvalidEscapeSequenceException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    add-int/lit8 v6, v4, 0x1

    .line 2135
    aput-byte v5, v1, v4

    :goto_2
    move v4, v6

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_12
    if-ne v0, v4, :cond_13

    .line 2140
    invoke-static {v1}, Lcom/explorestack/protobuf/ByteString;->wrap([B)Lcom/explorestack/protobuf/ByteString;

    move-result-object p0

    return-object p0

    .line 2141
    :cond_13
    invoke-static {v1, v2, v4}, Lcom/explorestack/protobuf/ByteString;->copyFrom([BII)Lcom/explorestack/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method static unescapeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/TextFormat$InvalidEscapeSequenceException;
        }
    .end annotation

    .line 2175
    invoke-static {p0}, Lcom/explorestack/protobuf/TextFormat;->unescapeBytes(Ljava/lang/CharSequence;)Lcom/explorestack/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static unsignedToString(I)Ljava/lang/String;
    .locals 4

    if-ltz p0, :cond_0

    .line 631
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 633
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static unsignedToString(J)Ljava/lang/String;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-ltz v2, :cond_0

    .line 640
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    and-long/2addr p0, v0

    .line 644
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    const/16 p1, 0x3f

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
