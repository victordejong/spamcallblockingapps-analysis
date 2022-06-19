.class public final Lkotlinx/serialization/json/internal/JsonReaderKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0000\n\u0002\u0010\u000c\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0005\n\u0002\u0008\u0011\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u001a\u0010\u0010$\u001a\u00020\u00162\u0006\u0010%\u001a\u00020\u0001H\u0000\u001a\u0010\u0010&\u001a\u00020\u00012\u0006\u0010%\u001a\u00020\u000cH\u0000\u001a(\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020\u00122\u0006\u0010*\u001a\u00020\u000c2\u0006\u0010+\u001a\u00020\u000c2\u0006\u0010,\u001a\u00020\u0012H\u0002\u001a\u001c\u0010-\u001a\u00020.*\u00020\u00042\u0006\u0010%\u001a\u00020\u00012\u0006\u0010/\u001a\u00020\u0016H\u0002\u001a\u001c\u0010-\u001a\u00020.*\u00020\u00042\u0006\u0010%\u001a\u00020\u000c2\u0006\u0010/\u001a\u00020\u0016H\u0002\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0080T\u00a2\u0006\u0002\n\u0000\"\u001c\u0010\u0003\u001a\u00020\u00048\u0000X\u0081\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0005\u0010\u0006\u001a\u0004\u0008\u0007\u0010\u0008\"\u000e\u0010\t\u001a\u00020\u0001X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\n\u001a\u00020\u0001X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u000b\u001a\u00020\u000cX\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\r\u001a\u00020\u0001X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u000e\u001a\u00020\u0001X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u000f\u001a\u00020\u000cX\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0010\u001a\u00020\u0001X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0011\u001a\u00020\u0012X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0013\u001a\u00020\u0001X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0014\u001a\u00020\u0001X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0015\u001a\u00020\u0016X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0017\u001a\u00020\u0016X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0018\u001a\u00020\u0016X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0019\u001a\u00020\u0016X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u001a\u001a\u00020\u0016X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u001b\u001a\u00020\u0016X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u001c\u001a\u00020\u0016X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u001d\u001a\u00020\u0016X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u001e\u001a\u00020\u0016X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u001f\u001a\u00020\u0016X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010 \u001a\u00020\u0016X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010!\u001a\u00020\u0016X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\"\u001a\u00020\u0016X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010#\u001a\u00020\u0001X\u0080T\u00a2\u0006\u0002\n\u0000\u00a8\u00060"
    }
    d2 = {
        "BEGIN_LIST",
        "",
        "BEGIN_OBJ",
        "C2TC",
        "",
        "C2TC$annotations",
        "()V",
        "getC2TC",
        "()[B",
        "COLON",
        "COMMA",
        "CTC_MAX",
        "",
        "END_LIST",
        "END_OBJ",
        "ESC2C_MAX",
        "INVALID",
        "NULL",
        "",
        "STRING",
        "STRING_ESC",
        "TC_BEGIN_LIST",
        "",
        "TC_BEGIN_OBJ",
        "TC_COLON",
        "TC_COMMA",
        "TC_END_LIST",
        "TC_END_OBJ",
        "TC_EOF",
        "TC_INVALID",
        "TC_NULL",
        "TC_OTHER",
        "TC_STRING",
        "TC_STRING_ESC",
        "TC_WS",
        "UNICODE_ESC",
        "charToTokenClass",
        "c",
        "escapeToChar",
        "rangeEquals",
        "",
        "source",
        "start",
        "length",
        "str",
        "initC2TC",
        "",
        "cl",
        "kotlinx-serialization-runtime"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final BEGIN_LIST:C = '['

.field public static final BEGIN_OBJ:C = '{'

.field private static final C2TC:[B

.field public static final COLON:C = ':'

.field public static final COMMA:C = ','

.field private static final CTC_MAX:I = 0x7e

.field public static final END_LIST:C = ']'

.field public static final END_OBJ:C = '}'

.field private static final ESC2C_MAX:I = 0x75

.field public static final INVALID:C = '\u0000'

.field public static final NULL:Ljava/lang/String; = "null"

.field public static final STRING:C = '\"'

.field public static final STRING_ESC:C = '\\'

.field public static final TC_BEGIN_LIST:B = 0x8t

.field public static final TC_BEGIN_OBJ:B = 0x6t

.field public static final TC_COLON:B = 0x5t

.field public static final TC_COMMA:B = 0x4t

.field public static final TC_END_LIST:B = 0x9t

.field public static final TC_END_OBJ:B = 0x7t

.field public static final TC_EOF:B = 0xct

.field public static final TC_INVALID:B = 0xbt

.field public static final TC_NULL:B = 0xat

.field public static final TC_OTHER:B = 0x0t

.field public static final TC_STRING:B = 0x1t

.field public static final TC_STRING_ESC:B = 0x2t

.field public static final TC_WS:B = 0x3t

.field public static final UNICODE_ESC:C = 'u'


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x7e

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x20

    if-gt v1, v2, :cond_0

    const/16 v2, 0xb

    .line 52
    invoke-static {v0, v1, v2}, Lkotlinx/serialization/json/internal/JsonReaderKt;->initC2TC([BIB)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0x9

    const/4 v3, 0x3

    .line 55
    invoke-static {v0, v1, v3}, Lkotlinx/serialization/json/internal/JsonReaderKt;->initC2TC([BIB)V

    const/16 v4, 0xa

    .line 56
    invoke-static {v0, v4, v3}, Lkotlinx/serialization/json/internal/JsonReaderKt;->initC2TC([BIB)V

    const/16 v4, 0xd

    .line 57
    invoke-static {v0, v4, v3}, Lkotlinx/serialization/json/internal/JsonReaderKt;->initC2TC([BIB)V

    .line 58
    invoke-static {v0, v2, v3}, Lkotlinx/serialization/json/internal/JsonReaderKt;->initC2TC([BIB)V

    const/16 v2, 0x2c

    const/4 v3, 0x4

    .line 59
    invoke-static {v0, v2, v3}, Lkotlinx/serialization/json/internal/JsonReaderKt;->initC2TC([BCB)V

    const/16 v2, 0x3a

    const/4 v3, 0x5

    .line 60
    invoke-static {v0, v2, v3}, Lkotlinx/serialization/json/internal/JsonReaderKt;->initC2TC([BCB)V

    const/16 v2, 0x7b

    const/4 v3, 0x6

    .line 61
    invoke-static {v0, v2, v3}, Lkotlinx/serialization/json/internal/JsonReaderKt;->initC2TC([BCB)V

    const/16 v2, 0x7d

    const/4 v3, 0x7

    .line 62
    invoke-static {v0, v2, v3}, Lkotlinx/serialization/json/internal/JsonReaderKt;->initC2TC([BCB)V

    const/16 v2, 0x5b

    const/16 v3, 0x8

    .line 63
    invoke-static {v0, v2, v3}, Lkotlinx/serialization/json/internal/JsonReaderKt;->initC2TC([BCB)V

    const/16 v2, 0x5d

    .line 64
    invoke-static {v0, v2, v1}, Lkotlinx/serialization/json/internal/JsonReaderKt;->initC2TC([BCB)V

    const/16 v1, 0x22

    const/4 v2, 0x1

    .line 65
    invoke-static {v0, v1, v2}, Lkotlinx/serialization/json/internal/JsonReaderKt;->initC2TC([BCB)V

    const/16 v1, 0x5c

    const/4 v2, 0x2

    .line 66
    invoke-static {v0, v1, v2}, Lkotlinx/serialization/json/internal/JsonReaderKt;->initC2TC([BCB)V

    .line 50
    sput-object v0, Lkotlinx/serialization/json/internal/JsonReaderKt;->C2TC:[B

    return-void
.end method

.method public static synthetic C2TC$annotations()V
    .locals 0

    return-void
.end method

.method public static final synthetic access$rangeEquals(Ljava/lang/String;IILjava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lkotlinx/serialization/json/internal/JsonReaderKt;->rangeEquals(Ljava/lang/String;IILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final charToTokenClass(C)B
    .locals 1

    const/16 v0, 0x7e

    if-ge p0, v0, :cond_0

    .line 104
    sget-object v0, Lkotlinx/serialization/json/internal/JsonReaderKt;->C2TC:[B

    aget-byte p0, v0, p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final escapeToChar(I)C
    .locals 1

    const/16 v0, 0x75

    if-ge p0, v0, :cond_0

    .line 106
    sget-object v0, Lkotlinx/serialization/json/internal/EscapeCharMappings;->ESCAPE_2_CHAR:[C

    aget-char p0, v0, p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final getC2TC()[B
    .locals 1

    .line 50
    sget-object v0, Lkotlinx/serialization/json/internal/JsonReaderKt;->C2TC:[B

    return-object v0
.end method

.method private static final initC2TC([BCB)V
    .locals 0

    .line 101
    invoke-static {p0, p1, p2}, Lkotlinx/serialization/json/internal/JsonReaderKt;->initC2TC([BIB)V

    return-void
.end method

.method private static final initC2TC([BIB)V
    .locals 0

    .line 97
    aput-byte p2, p0, p1

    return-void
.end method

.method private static final rangeEquals(Ljava/lang/String;IILjava/lang/String;)Z
    .locals 4

    .line 330
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-eq p2, v0, :cond_0

    return v1

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-ge p2, v0, :cond_2

    add-int v2, p1, p2

    .line 332
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p3, p2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method
