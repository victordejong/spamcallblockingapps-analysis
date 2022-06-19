.class public Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;
.super Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;
.source "SourceFile"

# interfaces
.implements Lcom/fasterxml/jackson/core/async/ByteArrayFeeder;


# static fields
.field private static final FEAT_MASK_ALLOW_JAVA_COMMENTS:I

.field private static final FEAT_MASK_ALLOW_MISSING:I

.field private static final FEAT_MASK_ALLOW_SINGLE_QUOTES:I

.field private static final FEAT_MASK_ALLOW_UNQUOTED_NAMES:I

.field private static final FEAT_MASK_ALLOW_YAML_COMMENTS:I

.field private static final FEAT_MASK_LEADING_ZEROS:I

.field private static final FEAT_MASK_TRAILING_COMMA:I

.field protected static final _icLatin1:[I

.field private static final _icUTF8:[I


# instance fields
.field protected _inputBuffer:[B

.field protected _origBufferLen:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_TRAILING_COMMA:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v0

    sput v0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->FEAT_MASK_TRAILING_COMMA:I

    .line 28
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_NUMERIC_LEADING_ZEROS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v0

    sput v0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->FEAT_MASK_LEADING_ZEROS:I

    .line 30
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_MISSING_VALUES:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v0

    sput v0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->FEAT_MASK_ALLOW_MISSING:I

    .line 31
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_SINGLE_QUOTES:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v0

    sput v0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->FEAT_MASK_ALLOW_SINGLE_QUOTES:I

    .line 32
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_UNQUOTED_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v0

    sput v0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->FEAT_MASK_ALLOW_UNQUOTED_NAMES:I

    .line 33
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_COMMENTS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v0

    sput v0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->FEAT_MASK_ALLOW_JAVA_COMMENTS:I

    .line 34
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_YAML_COMMENTS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v0

    sput v0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->FEAT_MASK_ALLOW_YAML_COMMENTS:I

    .line 37
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->getInputCodeUtf8()[I

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_icUTF8:[I

    .line 41
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->getInputCodeLatin1()[I

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_icLatin1:[I

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/io/IOContext;ILcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;-><init>(Lcom/fasterxml/jackson/core/io/IOContext;ILcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;)V

    .line 52
    sget-object p1, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->NO_BYTES:[B

    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    return-void
.end method

.method private final _decodeCharEscape()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2782
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    sub-int/2addr v0, v1

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 2784
    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_decodeSplitEscaped(II)I

    move-result v0

    return v0

    .line 2786
    :cond_0
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_decodeFastCharEscape()I

    move-result v0

    return v0
.end method

.method private final _decodeFastCharEscape()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2791
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    const/16 v1, 0x22

    if-eq v0, v1, :cond_8

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_8

    const/16 v1, 0x5c

    if-eq v0, v1, :cond_8

    const/16 v1, 0x62

    if-eq v0, v1, :cond_7

    const/16 v1, 0x66

    if-eq v0, v1, :cond_6

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_5

    const/16 v1, 0x72

    if-eq v0, v1, :cond_4

    const/16 v1, 0x74

    if-eq v0, v1, :cond_3

    const/16 v1, 0x75

    if-eq v0, v1, :cond_0

    int-to-char v0, v0

    .line 2819
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_handleUnrecognizedCharacterEscape(C)C

    move-result v0

    return v0

    .line 2823
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    .line 2824
    invoke-static {v0}, Lcom/fasterxml/jackson/core/io/CharTypes;->charToHex(I)I

    move-result v1

    if-ltz v1, :cond_2

    .line 2828
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v0, v0, v2

    .line 2829
    invoke-static {v0}, Lcom/fasterxml/jackson/core/io/CharTypes;->charToHex(I)I

    move-result v2

    if-ltz v2, :cond_2

    shl-int/lit8 v0, v1, 0x4

    or-int/2addr v0, v2

    .line 2832
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v1, v1, v2

    .line 2833
    invoke-static {v1}, Lcom/fasterxml/jackson/core/io/CharTypes;->charToHex(I)I

    move-result v2

    if-ltz v2, :cond_1

    shl-int/lit8 v0, v0, 0x4

    or-int/2addr v0, v2

    .line 2836
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v1, v1, v2

    .line 2837
    invoke-static {v1}, Lcom/fasterxml/jackson/core/io/CharTypes;->charToHex(I)I

    move-result v2

    if-ltz v2, :cond_1

    shl-int/lit8 v0, v0, 0x4

    or-int/2addr v0, v2

    return v0

    :cond_1
    move v0, v1

    :cond_2
    and-int/lit16 v0, v0, 0xff

    const-string v1, "expected a hex-digit for character escape sequence"

    .line 2844
    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    const/4 v0, -0x1

    return v0

    :cond_3
    const/16 v0, 0x9

    return v0

    :cond_4
    const/16 v0, 0xd

    return v0

    :cond_5
    const/16 v0, 0xa

    return v0

    :cond_6
    const/16 v0, 0xc

    return v0

    :cond_7
    const/16 v0, 0x8

    return v0

    :cond_8
    int-to-char v0, v0

    return v0
.end method

.method private _decodeSplitEscaped(II)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2332
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    const/4 v2, -0x1

    if-lt v0, v1, :cond_0

    .line 2333
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quoted32:I

    .line 2334
    iput p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quotedDigits:I

    return v2

    .line 2337
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    const/4 v1, 0x0

    if-ne p2, v2, :cond_9

    const/16 p2, 0x22

    if-eq v0, p2, :cond_8

    const/16 p2, 0x2f

    if-eq v0, p2, :cond_8

    const/16 p2, 0x5c

    if-eq v0, p2, :cond_8

    const/16 p2, 0x62

    if-eq v0, p2, :cond_7

    const/16 p2, 0x66

    if-eq v0, p2, :cond_6

    const/16 p2, 0x6e

    if-eq v0, p2, :cond_5

    const/16 p2, 0x72

    if-eq v0, p2, :cond_4

    const/16 p2, 0x74

    if-eq v0, p2, :cond_3

    const/16 p2, 0x75

    if-eq v0, p2, :cond_1

    int-to-char p1, v0

    .line 2366
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_handleUnrecognizedCharacterEscape(C)C

    move-result p1

    return p1

    .line 2369
    :cond_1
    iget p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    if-lt p2, v0, :cond_2

    .line 2370
    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quotedDigits:I

    .line 2371
    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quoted32:I

    return v2

    .line 2374
    :cond_2
    iget-object p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v0, p2, v0

    const/4 p2, 0x0

    goto :goto_0

    :cond_3
    const/16 p1, 0x9

    return p1

    :cond_4
    const/16 p1, 0xd

    return p1

    :cond_5
    const/16 p1, 0xa

    return p1

    :cond_6
    const/16 p1, 0xc

    return p1

    :cond_7
    const/16 p1, 0x8

    return p1

    :cond_8
    return v0

    :cond_9
    :goto_0
    and-int/lit16 v0, v0, 0xff

    .line 2379
    invoke-static {v0}, Lcom/fasterxml/jackson/core/io/CharTypes;->charToHex(I)I

    move-result v1

    if-gez v1, :cond_a

    and-int/lit16 v0, v0, 0xff

    const-string v3, "expected a hex-digit for character escape sequence"

    .line 2381
    invoke-virtual {p0, v0, v3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    :cond_a
    const/4 v0, 0x4

    shl-int/2addr p1, v0

    or-int/2addr p1, v1

    add-int/lit8 p2, p2, 0x1

    if-ne p2, v0, :cond_b

    return p1

    .line 2387
    :cond_b
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_c

    .line 2388
    iput p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quotedDigits:I

    .line 2389
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quoted32:I

    return v2

    .line 2392
    :cond_c
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    goto :goto_0
.end method

.method private final _decodeSplitMultiByte(IIZ)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_7

    const/4 v2, 0x2

    if-eq p2, v2, :cond_5

    const/4 v2, 0x3

    if-eq p2, v2, :cond_3

    const/4 v2, 0x4

    if-eq p2, v2, :cond_1

    const/16 p2, 0x20

    if-ge p1, p2, :cond_0

    const-string p2, "string value"

    .line 2697
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    goto :goto_0

    .line 2700
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_reportInvalidChar(I)V

    .line 2702
    :goto_0
    iget-object p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    int-to-char p1, p1

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->append(C)V

    return v1

    :cond_1
    and-int/lit8 p1, p1, 0x7

    if-eqz p3, :cond_2

    .line 2688
    iget-object p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget p3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v0, p3, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte p2, p2, p3

    invoke-direct {p0, p1, v1, p2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_decodeSplitUTF8_4(III)Z

    move-result p1

    return p1

    .line 2690
    :cond_2
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pending32:I

    .line 2691
    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pendingBytes:I

    const/16 p1, 0x2c

    .line 2692
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    return v0

    :cond_3
    and-int/lit8 p1, p1, 0xf

    if-eqz p3, :cond_4

    .line 2679
    iget-object p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget p3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v0, p3, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte p2, p2, p3

    invoke-direct {p0, p1, v1, p2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_decodeSplitUTF8_3(III)Z

    move-result p1

    return p1

    :cond_4
    const/16 p2, 0x2b

    .line 2681
    iput p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 2682
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pending32:I

    .line 2683
    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pendingBytes:I

    return v0

    :cond_5
    if-eqz p3, :cond_6

    .line 2669
    iget-object p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget p3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v0, p3, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte p2, p2, p3

    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_decodeUTF8_2(II)I

    move-result p1

    .line 2670
    iget-object p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    int-to-char p1, p1

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->append(C)V

    return v1

    :cond_6
    const/16 p2, 0x2a

    .line 2673
    iput p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 2674
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pending32:I

    return v0

    :cond_7
    const/4 p1, -0x1

    .line 2659
    invoke-direct {p0, v0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_decodeSplitEscaped(II)I

    move-result p1

    if-gez p1, :cond_8

    const/16 p1, 0x29

    .line 2661
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    return v0

    .line 2664
    :cond_8
    iget-object p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    int-to-char p1, p1

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->append(C)V

    return v1
.end method

.method private final _decodeSplitUTF8_3(III)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x80

    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    and-int/lit16 p2, p3, 0xc0

    if-eq p2, v0, :cond_0

    and-int/lit16 p2, p3, 0xff

    .line 2712
    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    invoke-virtual {p0, p2, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_reportInvalidOther(II)V

    :cond_0
    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 p2, p3, 0x3f

    or-int/2addr p1, p2

    .line 2715
    iget p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iget p3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    if-lt p2, p3, :cond_1

    const/16 p2, 0x2b

    .line 2716
    iput p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 2717
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pending32:I

    const/4 p1, 0x2

    .line 2718
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pendingBytes:I

    const/4 p1, 0x0

    return p1

    .line 2721
    :cond_1
    iget-object p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget p3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v2, p3, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte p3, p2, p3

    :cond_2
    and-int/lit16 p2, p3, 0xc0

    if-eq p2, v0, :cond_3

    and-int/lit16 p2, p3, 0xff

    .line 2724
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_reportInvalidOther(II)V

    .line 2726
    :cond_3
    iget-object p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 p3, p3, 0x3f

    or-int/2addr p1, p3

    int-to-char p1, p1

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->append(C)V

    return v1
.end method

.method private final _decodeSplitUTF8_4(III)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x2c

    const/16 v2, 0x80

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne p2, v4, :cond_2

    and-int/lit16 p2, p3, 0xc0

    if-eq p2, v2, :cond_0

    and-int/lit16 p2, p3, 0xff

    .line 2737
    iget v5, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    invoke-virtual {p0, p2, v5}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_reportInvalidOther(II)V

    :cond_0
    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 p2, p3, 0x3f

    or-int/2addr p1, p2

    .line 2740
    iget p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iget p3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    if-lt p2, p3, :cond_1

    .line 2741
    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 2742
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pending32:I

    .line 2743
    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pendingBytes:I

    return v0

    .line 2747
    :cond_1
    iget-object p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget p3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v5, p3, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte p3, p2, p3

    const/4 p2, 0x2

    :cond_2
    if-ne p2, v3, :cond_5

    and-int/lit16 p2, p3, 0xc0

    if-eq p2, v2, :cond_3

    and-int/lit16 p2, p3, 0xff

    .line 2751
    iget v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    invoke-virtual {p0, p2, v3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_reportInvalidOther(II)V

    :cond_3
    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 p2, p3, 0x3f

    or-int/2addr p1, p2

    .line 2754
    iget p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iget p3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    if-lt p2, p3, :cond_4

    .line 2755
    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 2756
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pending32:I

    const/4 p1, 0x3

    .line 2757
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pendingBytes:I

    return v0

    .line 2760
    :cond_4
    iget-object p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget p3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v0, p3, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte p3, p2, p3

    :cond_5
    and-int/lit16 p2, p3, 0xc0

    if-eq p2, v2, :cond_6

    and-int/lit16 p2, p3, 0xff

    .line 2763
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_reportInvalidOther(II)V

    :cond_6
    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 p2, p3, 0x3f

    or-int/2addr p1, p2

    const/high16 p2, 0x10000

    sub-int/2addr p1, p2

    .line 2767
    iget-object p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    const p3, 0xd800

    shr-int/lit8 v0, p1, 0xa

    or-int/2addr p3, v0

    int-to-char p3, p3

    invoke-virtual {p2, p3}, Lcom/fasterxml/jackson/core/util/TextBuffer;->append(C)V

    const p2, 0xdc00

    and-int/lit16 p1, p1, 0x3ff

    or-int/2addr p1, p2

    .line 2770
    iget-object p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    int-to-char p1, p1

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->append(C)V

    return v4
.end method

.method private final _decodeUTF8_2(II)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit16 v0, p2, 0xc0

    const/16 v1, 0x80

    if-eq v0, v1, :cond_0

    and-int/lit16 v0, p2, 0xff

    .line 2857
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_reportInvalidOther(II)V

    :cond_0
    and-int/lit8 p1, p1, 0x1f

    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 p2, p2, 0x3f

    or-int/2addr p1, p2

    return p1
.end method

.method private final _decodeUTF8_3(III)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p1, p1, 0xf

    and-int/lit16 v0, p2, 0xc0

    const/16 v1, 0x80

    if-eq v0, v1, :cond_0

    and-int/lit16 v0, p2, 0xff

    .line 2866
    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    invoke-virtual {p0, v0, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_reportInvalidOther(II)V

    :cond_0
    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 p2, p2, 0x3f

    or-int/2addr p1, p2

    and-int/lit16 p2, p3, 0xc0

    if-eq p2, v1, :cond_1

    and-int/lit16 p2, p3, 0xff

    .line 2870
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_reportInvalidOther(II)V

    :cond_1
    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 p2, p3, 0x3f

    or-int/2addr p1, p2

    return p1
.end method

.method private final _decodeUTF8_4(IIII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit16 v0, p2, 0xc0

    const/16 v1, 0x80

    if-eq v0, v1, :cond_0

    and-int/lit16 v0, p2, 0xff

    .line 2880
    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    invoke-virtual {p0, v0, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_reportInvalidOther(II)V

    :cond_0
    and-int/lit8 p1, p1, 0x7

    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 p2, p2, 0x3f

    or-int/2addr p1, p2

    and-int/lit16 p2, p3, 0xc0

    if-eq p2, v1, :cond_1

    and-int/lit16 p2, p3, 0xff

    .line 2884
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_reportInvalidOther(II)V

    :cond_1
    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 p2, p3, 0x3f

    or-int/2addr p1, p2

    and-int/lit16 p2, p4, 0xc0

    if-eq p2, v1, :cond_2

    and-int/lit16 p2, p4, 0xff

    .line 2888
    iget p3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    invoke-virtual {p0, p2, p3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_reportInvalidOther(II)V

    :cond_2
    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 p2, p4, 0x3f

    or-int/2addr p1, p2

    const/high16 p2, 0x10000

    sub-int/2addr p1, p2

    return p1
.end method

.method private final _fastParseName()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1828
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    .line 1829
    sget-object v1, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_icLatin1:[I

    .line 1830
    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    .line 1832
    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    .line 1833
    aget v4, v1, v2

    const/4 v5, 0x0

    const/16 v6, 0x22

    if-nez v4, :cond_8

    add-int/lit8 v4, v3, 0x1

    .line 1834
    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    .line 1835
    aget v7, v1, v3

    if-nez v7, :cond_6

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v4, 0x1

    .line 1837
    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    .line 1838
    aget v7, v1, v4

    if-nez v7, :cond_4

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v4

    add-int/lit8 v4, v3, 0x1

    .line 1840
    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    .line 1841
    aget v7, v1, v3

    if-nez v7, :cond_2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v4, 0x1

    .line 1843
    aget-byte v0, v0, v4

    and-int/lit16 v0, v0, 0xff

    .line 1844
    aget v1, v1, v0

    if-nez v1, :cond_0

    .line 1845
    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quad1:I

    .line 1846
    invoke-direct {p0, v3, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_parseMediumName(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    if-ne v0, v6, :cond_1

    .line 1849
    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    const/4 v0, 0x4

    .line 1850
    invoke-virtual {p0, v2, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_findName(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v5

    :cond_2
    if-ne v3, v6, :cond_3

    .line 1855
    iput v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    const/4 v0, 0x3

    .line 1856
    invoke-virtual {p0, v2, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_findName(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    return-object v5

    :cond_4
    if-ne v4, v6, :cond_5

    .line 1861
    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    const/4 v0, 0x2

    .line 1862
    invoke-virtual {p0, v2, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_findName(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    return-object v5

    :cond_6
    if-ne v3, v6, :cond_7

    .line 1867
    iput v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    const/4 v0, 0x1

    .line 1868
    invoke-virtual {p0, v2, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_findName(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7
    return-object v5

    :cond_8
    if-ne v2, v6, :cond_9

    .line 1873
    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    const-string v0, ""

    return-object v0

    :cond_9
    return-object v5
.end method

.method private _finishAposName(III)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2184
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quadBuffer:[I

    .line 2185
    sget-object v1, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_icLatin1:[I

    const/4 v2, 0x1

    .line 2188
    :goto_0
    iget v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iget v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    const/16 v5, 0x9

    if-lt v3, v4, :cond_0

    .line 2189
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quadLength:I

    .line 2190
    iput p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pending32:I

    .line 2191
    iput p3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pendingBytes:I

    .line 2192
    iput v5, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 2193
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    .line 2195
    :cond_0
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v6, v4, 0x1

    iput v6, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x27

    if-eq v3, v4, :cond_b

    const/16 v4, 0x22

    const/4 v6, 0x4

    if-eq v3, v4, :cond_8

    .line 2200
    aget v4, v1, v3

    if-eqz v4, :cond_8

    const/16 v4, 0x5c

    const/16 v7, 0x8

    if-eq v3, v4, :cond_1

    const-string v4, "name"

    .line 2203
    invoke-virtual {p0, v3, v4}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    goto :goto_1

    .line 2206
    :cond_1
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_decodeCharEscape()I

    move-result v3

    if-gez v3, :cond_2

    .line 2208
    iput v7, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 2209
    iput v5, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorStateAfterSplit:I

    .line 2210
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quadLength:I

    .line 2211
    iput p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pending32:I

    .line 2212
    iput p3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pendingBytes:I

    .line 2213
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    :cond_2
    :goto_1
    const/16 v4, 0x7f

    if-le v3, v4, :cond_8

    const/4 v4, 0x0

    if-lt p3, v6, :cond_4

    .line 2219
    array-length p3, v0

    if-lt p1, p3, :cond_3

    .line 2220
    array-length p3, v0

    invoke-static {v0, p3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->growArrayBy([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quadBuffer:[I

    :cond_3
    add-int/lit8 p3, p1, 0x1

    .line 2222
    aput p2, v0, p1

    move p1, p3

    const/4 p2, 0x0

    const/4 p3, 0x0

    :cond_4
    const/16 v5, 0x800

    if-ge v3, v5, :cond_5

    shl-int/lit8 p2, p2, 0x8

    shr-int/lit8 v4, v3, 0x6

    or-int/lit16 v4, v4, 0xc0

    or-int/2addr p2, v4

    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    :cond_5
    shl-int/lit8 p2, p2, 0x8

    shr-int/lit8 v5, v3, 0xc

    or-int/lit16 v5, v5, 0xe0

    or-int/2addr p2, v5

    add-int/lit8 p3, p3, 0x1

    if-lt p3, v6, :cond_7

    .line 2235
    array-length p3, v0

    if-lt p1, p3, :cond_6

    .line 2236
    array-length p3, v0

    invoke-static {v0, p3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->growArrayBy([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quadBuffer:[I

    :cond_6
    add-int/lit8 p3, p1, 0x1

    .line 2238
    aput p2, v0, p1

    move p1, p3

    const/4 p3, 0x0

    goto :goto_2

    :cond_7
    move v4, p2

    :goto_2
    shl-int/lit8 p2, v4, 0x8

    shr-int/lit8 v4, v3, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    or-int/2addr p2, v4

    add-int/2addr p3, v2

    :goto_3
    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    :cond_8
    if-ge p3, v6, :cond_9

    add-int/lit8 p3, p3, 0x1

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p2, v3

    goto/16 :goto_0

    .line 2254
    :cond_9
    array-length p3, v0

    if-lt p1, p3, :cond_a

    .line 2255
    array-length p3, v0

    invoke-static {v0, p3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->growArrayBy([II)[I

    move-result-object p3

    iput-object p3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quadBuffer:[I

    move-object v0, p3

    :cond_a
    add-int/lit8 p3, p1, 0x1

    .line 2257
    aput p2, v0, p1

    move p1, p3

    move p2, v3

    const/4 p3, 0x1

    goto/16 :goto_0

    :cond_b
    if-lez p3, :cond_d

    .line 2264
    array-length v1, v0

    if-lt p1, v1, :cond_c

    .line 2265
    array-length v1, v0

    invoke-static {v0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->growArrayBy([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quadBuffer:[I

    :cond_c
    add-int/lit8 v1, p1, 0x1

    .line 2267
    invoke-static {p2, p3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_padLastQuad(II)I

    move-result p2

    aput p2, v0, p1

    move p1, v1

    goto :goto_4

    :cond_d
    if-nez p1, :cond_e

    const-string p1, ""

    .line 2269
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_fieldComplete(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 2271
    :cond_e
    :goto_4
    iget-object p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    invoke-virtual {p2, v0, p1}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->findName([II)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_f

    .line 2273
    invoke-virtual {p0, v0, p1, p3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_addName([III)Ljava/lang/String;

    move-result-object p2

    .line 2275
    :cond_f
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_fieldComplete(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1
.end method

.method private final _finishAposString()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2560
    sget-object v0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_icUTF8:[I

    .line 2561
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    .line 2563
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getBufferWithoutReset()[C

    move-result-object v2

    .line 2564
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getCurrentSegmentSize()I

    move-result v3

    .line 2565
    iget v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 2566
    iget v5, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    add-int/lit8 v5, v5, -0x5

    .line 2572
    :cond_0
    :goto_0
    iget v6, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    const/16 v7, 0x2d

    if-lt v4, v6, :cond_1

    .line 2573
    iput v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 2574
    iput v7, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 2575
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 2576
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 2578
    :cond_1
    array-length v6, v2

    const/4 v8, 0x0

    if-lt v3, v6, :cond_2

    .line 2579
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v2

    const/4 v3, 0x0

    .line 2582
    :cond_2
    iget v6, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    array-length v9, v2

    sub-int/2addr v9, v3

    add-int/2addr v9, v4

    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    :goto_1
    if-ge v4, v6, :cond_0

    add-int/lit8 v9, v4, 0x1

    .line 2584
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    .line 2585
    aget v10, v0, v4

    if-eqz v10, :cond_e

    const/16 v10, 0x22

    if-ne v4, v10, :cond_3

    goto/16 :goto_6

    :cond_3
    const/4 v6, 0x1

    if-lt v9, v5, :cond_6

    .line 2599
    iput v9, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 2600
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 2601
    aget v2, v0, v4

    iget v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    if-ge v9, v3, :cond_4

    const/4 v8, 0x1

    :cond_4
    invoke-direct {p0, v4, v2, v8}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_decodeSplitMultiByte(IIZ)Z

    move-result v2

    if-nez v2, :cond_5

    .line 2602
    iput v7, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorStateAfterSplit:I

    .line 2603
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 2605
    :cond_5
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getBufferWithoutReset()[C

    move-result-object v2

    .line 2606
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getCurrentSegmentSize()I

    move-result v3

    .line 2607
    iget v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    goto :goto_0

    .line 2611
    :cond_6
    aget v7, v0, v4

    if-eq v7, v6, :cond_c

    const/4 v6, 0x2

    if-eq v7, v6, :cond_b

    const/4 v6, 0x3

    if-eq v7, v6, :cond_a

    const/4 v6, 0x4

    if-eq v7, v6, :cond_8

    const/16 v6, 0x20

    if-ge v4, v6, :cond_7

    const-string v6, "string value"

    .line 2638
    invoke-virtual {p0, v4, v6}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    goto :goto_2

    .line 2641
    :cond_7
    invoke-virtual {p0, v4}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_reportInvalidChar(I)V

    :goto_2
    move v6, v9

    goto :goto_4

    .line 2624
    :cond_8
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    add-int/lit8 v7, v9, 0x1

    aget-byte v9, v6, v9

    add-int/lit8 v10, v7, 0x1

    aget-byte v7, v6, v7

    add-int/lit8 v11, v10, 0x1

    aget-byte v6, v6, v10

    invoke-direct {p0, v4, v9, v7, v6}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_decodeUTF8_4(IIII)I

    move-result v4

    add-int/lit8 v6, v3, 0x1

    const v7, 0xd800

    shr-int/lit8 v9, v4, 0xa

    or-int/2addr v7, v9

    int-to-char v7, v7

    .line 2627
    aput-char v7, v2, v3

    .line 2628
    array-length v3, v2

    if-lt v6, v3, :cond_9

    .line 2629
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v2

    const/4 v3, 0x0

    goto :goto_3

    :cond_9
    move v3, v6

    :goto_3
    const v6, 0xdc00

    and-int/lit16 v4, v4, 0x3ff

    or-int/2addr v4, v6

    move v6, v11

    goto :goto_4

    .line 2621
    :cond_a
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    add-int/lit8 v7, v9, 0x1

    aget-byte v9, v6, v9

    add-int/lit8 v10, v7, 0x1

    aget-byte v6, v6, v7

    invoke-direct {p0, v4, v9, v6}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_decodeUTF8_3(III)I

    move-result v4

    move v6, v10

    goto :goto_4

    .line 2618
    :cond_b
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    add-int/lit8 v7, v9, 0x1

    aget-byte v6, v6, v9

    invoke-direct {p0, v4, v6}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_decodeUTF8_2(II)I

    move-result v4

    move v6, v7

    goto :goto_4

    .line 2613
    :cond_c
    iput v9, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 2614
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_decodeFastCharEscape()I

    move-result v4

    .line 2615
    iget v6, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 2645
    :goto_4
    array-length v7, v2

    if-lt v3, v7, :cond_d

    .line 2646
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v2

    goto :goto_5

    :cond_d
    move v8, v3

    :goto_5
    add-int/lit8 v3, v8, 0x1

    int-to-char v4, v4

    .line 2650
    aput-char v4, v2, v8

    move v4, v6

    goto/16 :goto_0

    :cond_e
    :goto_6
    const/16 v10, 0x27

    if-ne v4, v10, :cond_f

    .line 2589
    iput v9, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 2590
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 2591
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_valueComplete(Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    :cond_f
    add-int/lit8 v10, v3, 0x1

    int-to-char v4, v4

    .line 2593
    aput-char v4, v2, v3

    move v4, v9

    move v3, v10

    goto/16 :goto_1
.end method

.method private final _finishBOM(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 472
    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_4

    .line 473
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    if-eq p1, v2, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_1

    .line 478
    :cond_0
    iget-wide v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currInputProcessed:J

    const-wide/16 v3, 0x3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currInputProcessed:J

    .line 479
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startDocument(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :cond_1
    const/16 v1, 0xbf

    if-eq v0, v1, :cond_3

    .line 482
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Unexpected byte 0x%02x following 0xEF 0xBB; should get 0xBF as third byte of UTF-8 BOM"

    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_reportError(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const/16 v1, 0xbb

    if-eq v0, v1, :cond_3

    .line 487
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Unexpected byte 0x%02x following 0xEF; should get 0xBB as second byte UTF-8 BOM"

    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_reportError(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 493
    :cond_4
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pending32:I

    .line 494
    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 495
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1
.end method

.method private final _finishCComment(IZ)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1061
    :goto_0
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    if-lt v1, v2, :cond_1

    if-eqz p2, :cond_0

    const/16 p2, 0x34

    goto :goto_1

    :cond_0
    const/16 p2, 0x35

    .line 1062
    :goto_1
    iput p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 1063
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pending32:I

    .line 1064
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    .line 1066
    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x20

    if-ge v1, v2, :cond_4

    const/16 p2, 0xa

    if-ne v1, p2, :cond_2

    .line 1069
    iget p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currInputRow:I

    add-int/2addr p2, v0

    iput p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currInputRow:I

    .line 1070
    iget p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iput p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currInputRowStart:I

    goto :goto_2

    :cond_2
    const/16 p2, 0xd

    if-ne v1, p2, :cond_3

    .line 1072
    iget p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currInputRowAlt:I

    add-int/2addr p2, v0

    iput p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currInputRowAlt:I

    .line 1073
    iget p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iput p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currInputRowStart:I

    goto :goto_2

    :cond_3
    const/16 p2, 0x9

    if-eq v1, p2, :cond_7

    .line 1075
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_throwInvalidSpace(I)V

    goto :goto_2

    :cond_4
    const/16 v2, 0x2a

    if-ne v1, v2, :cond_5

    const/4 p2, 0x1

    goto :goto_0

    :cond_5
    const/16 v2, 0x2f

    if-ne v1, v2, :cond_7

    if-nez p2, :cond_6

    goto :goto_2

    .line 1087
    :cond_6
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startAfterComment(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :cond_7
    :goto_2
    const/4 p2, 0x0

    goto :goto_0
.end method

.method private final _finishCppComment(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1035
    :cond_0
    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_1

    const/16 v0, 0x36

    .line 1036
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 1037
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pending32:I

    .line 1038
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    .line 1040
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 1043
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currInputRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currInputRow:I

    .line 1044
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currInputRowStart:I

    goto :goto_1

    :cond_2
    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    .line 1047
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currInputRowAlt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currInputRowAlt:I

    .line 1048
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currInputRowStart:I

    .line 1055
    :goto_1
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startAfterComment(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :cond_3
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 1051
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_throwInvalidSpace(I)V

    goto :goto_0
.end method

.method private final _finishHashComment(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1005
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_features:I

    sget v1, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->FEAT_MASK_ALLOW_YAML_COMMENTS:I

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/16 v0, 0x23

    const-string v1, "maybe a (non-standard) comment? (not recognized as one since Feature \'ALLOW_YAML_COMMENTS\' not enabled for parser)"

    .line 1006
    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 1009
    :cond_0
    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_1

    const/16 v0, 0x37

    .line 1010
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 1011
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pending32:I

    .line 1012
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    .line 1014
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 1017
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currInputRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currInputRow:I

    .line 1018
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currInputRowStart:I

    goto :goto_1

    :cond_2
    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    .line 1021
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currInputRowAlt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currInputRowAlt:I

    .line 1022
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currInputRowStart:I

    .line 1029
    :goto_1
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startAfterComment(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :cond_3
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 1025
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_throwInvalidSpace(I)V

    goto :goto_0
.end method

.method private final _finishRegularString()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2434
    sget-object v0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_icUTF8:[I

    .line 2435
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    .line 2437
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getBufferWithoutReset()[C

    move-result-object v2

    .line 2438
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getCurrentSegmentSize()I

    move-result v3

    .line 2439
    iget v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 2440
    iget v5, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    add-int/lit8 v5, v5, -0x5

    .line 2447
    :cond_0
    :goto_0
    iget v6, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    const/16 v7, 0x28

    if-lt v4, v6, :cond_1

    .line 2448
    iput v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 2449
    iput v7, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 2450
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 2451
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 2453
    :cond_1
    array-length v6, v2

    const/4 v8, 0x0

    if-lt v3, v6, :cond_2

    .line 2454
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v2

    const/4 v3, 0x0

    .line 2457
    :cond_2
    iget v6, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    array-length v9, v2

    sub-int/2addr v9, v3

    add-int/2addr v9, v4

    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    :goto_1
    if-ge v4, v6, :cond_0

    add-int/lit8 v9, v4, 0x1

    .line 2459
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    .line 2460
    aget v10, v0, v4

    if-nez v10, :cond_3

    add-int/lit8 v10, v3, 0x1

    int-to-char v4, v4

    .line 2463
    aput-char v4, v2, v3

    move v4, v9

    move v3, v10

    goto :goto_1

    :cond_3
    const/16 v6, 0x22

    if-ne v4, v6, :cond_4

    .line 2468
    iput v9, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 2469
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 2470
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_valueComplete(Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    :cond_4
    const/4 v6, 0x1

    if-lt v9, v5, :cond_7

    .line 2474
    iput v9, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 2475
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 2476
    aget v2, v0, v4

    iget v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    if-ge v9, v3, :cond_5

    const/4 v8, 0x1

    :cond_5
    invoke-direct {p0, v4, v2, v8}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_decodeSplitMultiByte(IIZ)Z

    move-result v2

    if-nez v2, :cond_6

    .line 2477
    iput v7, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorStateAfterSplit:I

    .line 2478
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 2480
    :cond_6
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getBufferWithoutReset()[C

    move-result-object v2

    .line 2481
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getCurrentSegmentSize()I

    move-result v3

    .line 2482
    iget v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    goto :goto_0

    .line 2486
    :cond_7
    aget v7, v0, v4

    if-eq v7, v6, :cond_d

    const/4 v6, 0x2

    if-eq v7, v6, :cond_c

    const/4 v6, 0x3

    if-eq v7, v6, :cond_b

    const/4 v6, 0x4

    if-eq v7, v6, :cond_9

    const/16 v6, 0x20

    if-ge v4, v6, :cond_8

    const-string v6, "string value"

    .line 2513
    invoke-virtual {p0, v4, v6}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    goto :goto_2

    .line 2516
    :cond_8
    invoke-virtual {p0, v4}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_reportInvalidChar(I)V

    :goto_2
    move v6, v9

    goto :goto_4

    .line 2499
    :cond_9
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    add-int/lit8 v7, v9, 0x1

    aget-byte v9, v6, v9

    add-int/lit8 v10, v7, 0x1

    aget-byte v7, v6, v7

    add-int/lit8 v11, v10, 0x1

    aget-byte v6, v6, v10

    invoke-direct {p0, v4, v9, v7, v6}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_decodeUTF8_4(IIII)I

    move-result v4

    add-int/lit8 v6, v3, 0x1

    const v7, 0xd800

    shr-int/lit8 v9, v4, 0xa

    or-int/2addr v7, v9

    int-to-char v7, v7

    .line 2502
    aput-char v7, v2, v3

    .line 2503
    array-length v3, v2

    if-lt v6, v3, :cond_a

    .line 2504
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v2

    const/4 v3, 0x0

    goto :goto_3

    :cond_a
    move v3, v6

    :goto_3
    const v6, 0xdc00

    and-int/lit16 v4, v4, 0x3ff

    or-int/2addr v4, v6

    move v6, v11

    goto :goto_4

    .line 2496
    :cond_b
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    add-int/lit8 v7, v9, 0x1

    aget-byte v9, v6, v9

    add-int/lit8 v10, v7, 0x1

    aget-byte v6, v6, v7

    invoke-direct {p0, v4, v9, v6}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_decodeUTF8_3(III)I

    move-result v4

    move v6, v10

    goto :goto_4

    .line 2493
    :cond_c
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    add-int/lit8 v7, v9, 0x1

    aget-byte v6, v6, v9

    invoke-direct {p0, v4, v6}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_decodeUTF8_2(II)I

    move-result v4

    move v6, v7

    goto :goto_4

    .line 2488
    :cond_d
    iput v9, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 2489
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_decodeFastCharEscape()I

    move-result v4

    .line 2490
    iget v6, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 2520
    :goto_4
    array-length v7, v2

    if-lt v3, v7, :cond_e

    .line 2521
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v2

    goto :goto_5

    :cond_e
    move v8, v3

    :goto_5
    add-int/lit8 v3, v8, 0x1

    int-to-char v4, v4

    .line 2525
    aput-char v4, v2, v8

    move v4, v6

    goto/16 :goto_0
.end method

.method private _finishUnquotedName(III)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2136
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quadBuffer:[I

    .line 2137
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->getInputCodeUtf8JsNames()[I

    move-result-object v1

    const/4 v2, 0x1

    .line 2142
    :goto_0
    iget v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iget v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    if-lt v3, v4, :cond_0

    .line 2143
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quadLength:I

    .line 2144
    iput p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pending32:I

    .line 2145
    iput p3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pendingBytes:I

    const/16 p1, 0xa

    .line 2146
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 2147
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    .line 2149
    :cond_0
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    .line 2150
    aget v4, v1, v3

    if-nez v4, :cond_3

    .line 2153
    iget v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    const/4 v4, 0x4

    if-ge p3, v4, :cond_1

    add-int/lit8 p3, p3, 0x1

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p2, v3

    goto :goto_0

    .line 2159
    :cond_1
    array-length p3, v0

    if-lt p1, p3, :cond_2

    .line 2160
    array-length p3, v0

    invoke-static {v0, p3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->growArrayBy([II)[I

    move-result-object p3

    iput-object p3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quadBuffer:[I

    move-object v0, p3

    :cond_2
    add-int/lit8 p3, p1, 0x1

    .line 2162
    aput p2, v0, p1

    move p1, p3

    move p2, v3

    const/4 p3, 0x1

    goto :goto_0

    :cond_3
    if-lez p3, :cond_5

    .line 2169
    array-length v1, v0

    if-lt p1, v1, :cond_4

    .line 2170
    array-length v1, v0

    invoke-static {v0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->growArrayBy([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quadBuffer:[I

    :cond_4
    add-int/lit8 v1, p1, 0x1

    .line 2172
    aput p2, v0, p1

    move p1, v1

    .line 2174
    :cond_5
    iget-object p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    invoke-virtual {p2, v0, p1}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->findName([II)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_6

    .line 2176
    invoke-virtual {p0, v0, p1, p3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_addName([III)Ljava/lang/String;

    move-result-object p2

    .line 2178
    :cond_6
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_fieldComplete(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1
.end method

.method private _handleOddName(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x23

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq p1, v0, :cond_3

    const/16 v0, 0x27

    if-eq p1, v0, :cond_2

    const/16 v0, 0x2f

    if-eq p1, v0, :cond_1

    const/16 v0, 0x5d

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2108
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_closeArrayScope()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 2101
    :cond_1
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startSlashComment(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 2103
    :cond_2
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_features:I

    sget v1, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->FEAT_MASK_ALLOW_SINGLE_QUOTES:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    .line 2104
    invoke-direct {p0, v2, v2, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishAposName(III)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 2096
    :cond_3
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_features:I

    sget v3, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->FEAT_MASK_ALLOW_YAML_COMMENTS:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_4

    .line 2097
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishHashComment(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 2111
    :cond_4
    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_features:I

    sget v1, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->FEAT_MASK_ALLOW_UNQUOTED_NAMES:I

    and-int/2addr v0, v1

    if-nez v0, :cond_5

    int-to-char v0, p1

    const-string v1, "was expecting double-quote to start field name"

    .line 2115
    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 2119
    :cond_5
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->getInputCodeUtf8JsNames()[I

    move-result-object v0

    .line 2121
    aget v0, v0, p1

    if-eqz v0, :cond_6

    const-string v0, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name"

    .line 2122
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    :cond_6
    const/4 v0, 0x1

    .line 2125
    invoke-direct {p0, v2, p1, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishUnquotedName(III)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1
.end method

.method private final _parseEscapedName(III)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1978
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quadBuffer:[I

    .line 1979
    sget-object v1, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_icLatin1:[I

    const/4 v2, 0x1

    .line 1982
    :goto_0
    iget v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iget v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    const/4 v5, 0x7

    if-lt v3, v4, :cond_0

    .line 1983
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quadLength:I

    .line 1984
    iput p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pending32:I

    .line 1985
    iput p3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pendingBytes:I

    .line 1986
    iput v5, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 1987
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    .line 1989
    :cond_0
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v6, v4, 0x1

    iput v6, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    .line 1990
    aget v4, v1, v3

    const/4 v6, 0x4

    if-nez v4, :cond_3

    if-ge p3, v6, :cond_1

    :goto_1
    add-int/lit8 p3, p3, 0x1

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p2, v3

    goto :goto_0

    .line 1996
    :cond_1
    array-length p3, v0

    if-lt p1, p3, :cond_2

    .line 1997
    array-length p3, v0

    invoke-static {v0, p3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->growArrayBy([II)[I

    move-result-object p3

    iput-object p3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quadBuffer:[I

    move-object v0, p3

    :cond_2
    add-int/lit8 p3, p1, 0x1

    .line 1999
    aput p2, v0, p1

    :goto_2
    move p1, p3

    move p2, v3

    const/4 p3, 0x1

    goto :goto_0

    :cond_3
    const/16 v4, 0x22

    if-eq v3, v4, :cond_c

    const/16 v4, 0x5c

    const/16 v7, 0x8

    if-eq v3, v4, :cond_4

    const-string v4, "name"

    .line 2012
    invoke-virtual {p0, v3, v4}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    goto :goto_3

    .line 2015
    :cond_4
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_decodeCharEscape()I

    move-result v3

    if-gez v3, :cond_5

    .line 2017
    iput v7, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 2018
    iput v5, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorStateAfterSplit:I

    .line 2019
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quadLength:I

    .line 2020
    iput p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pending32:I

    .line 2021
    iput p3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pendingBytes:I

    .line 2022
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    .line 2029
    :cond_5
    :goto_3
    array-length v4, v0

    if-lt p1, v4, :cond_6

    .line 2030
    array-length v4, v0

    invoke-static {v0, v4}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->growArrayBy([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quadBuffer:[I

    :cond_6
    const/16 v4, 0x7f

    if-le v3, v4, :cond_a

    const/4 v4, 0x0

    if-lt p3, v6, :cond_7

    add-int/lit8 p3, p1, 0x1

    .line 2035
    aput p2, v0, p1

    move p1, p3

    const/4 p2, 0x0

    const/4 p3, 0x0

    :cond_7
    const/16 v5, 0x800

    if-ge v3, v5, :cond_8

    shl-int/lit8 p2, p2, 0x8

    shr-int/lit8 v4, v3, 0x6

    or-int/lit16 v4, v4, 0xc0

    or-int/2addr p2, v4

    add-int/lit8 p3, p3, 0x1

    goto :goto_5

    :cond_8
    shl-int/lit8 p2, p2, 0x8

    shr-int/lit8 v5, v3, 0xc

    or-int/lit16 v5, v5, 0xe0

    or-int/2addr p2, v5

    add-int/lit8 p3, p3, 0x1

    if-lt p3, v6, :cond_9

    add-int/lit8 p3, p1, 0x1

    .line 2048
    aput p2, v0, p1

    move p1, p3

    const/4 p3, 0x0

    goto :goto_4

    :cond_9
    move v4, p2

    :goto_4
    shl-int/lit8 p2, v4, 0x8

    shr-int/lit8 v4, v3, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    or-int/2addr p2, v4

    add-int/2addr p3, v2

    :goto_5
    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    :cond_a
    if-ge p3, v6, :cond_b

    goto/16 :goto_1

    :cond_b
    add-int/lit8 p3, p1, 0x1

    .line 2063
    aput p2, v0, p1

    goto :goto_2

    :cond_c
    if-lez p3, :cond_e

    .line 2069
    array-length v1, v0

    if-lt p1, v1, :cond_d

    .line 2070
    array-length v1, v0

    invoke-static {v0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->growArrayBy([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quadBuffer:[I

    :cond_d
    add-int/lit8 v1, p1, 0x1

    .line 2072
    invoke-static {p2, p3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_padLastQuad(II)I

    move-result p2

    aput p2, v0, p1

    move p1, v1

    goto :goto_6

    :cond_e
    if-nez p1, :cond_f

    const-string p1, ""

    .line 2074
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_fieldComplete(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 2076
    :cond_f
    :goto_6
    iget-object p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    invoke-virtual {p2, v0, p1}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->findName([II)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_10

    .line 2078
    invoke-virtual {p0, v0, p1, p3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_addName([III)Ljava/lang/String;

    move-result-object p2

    .line 2080
    :cond_10
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_fieldComplete(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1
.end method

.method private final _parseMediumName(II)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1881
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    .line 1882
    sget-object v1, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_icLatin1:[I

    add-int/lit8 v2, p1, 0x1

    .line 1885
    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    .line 1886
    aget v3, v1, p1

    const/4 v4, 0x0

    const/16 v5, 0x22

    if-nez v3, :cond_6

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p1, p2

    add-int/lit8 p2, v2, 0x1

    .line 1888
    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    .line 1889
    aget v3, v1, v2

    if-nez v3, :cond_4

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, v2

    add-int/lit8 v2, p2, 0x1

    .line 1891
    aget-byte p2, v0, p2

    and-int/lit16 p2, p2, 0xff

    .line 1892
    aget v3, v1, p2

    if-nez v3, :cond_2

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, p2

    add-int/lit8 p2, v2, 0x1

    .line 1894
    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    .line 1895
    aget v1, v1, v0

    if-nez v1, :cond_0

    .line 1896
    invoke-direct {p0, p2, v0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_parseMediumName2(III)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    if-ne v0, v5, :cond_1

    .line 1899
    iput p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 1900
    iget p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quad1:I

    const/4 v0, 0x4

    invoke-virtual {p0, p2, p1, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_findName(III)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v4

    :cond_2
    if-ne p2, v5, :cond_3

    .line 1905
    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 1906
    iget p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quad1:I

    const/4 v0, 0x3

    invoke-virtual {p0, p2, p1, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_findName(III)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v4

    :cond_4
    if-ne v2, v5, :cond_5

    .line 1911
    iput p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 1912
    iget p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quad1:I

    const/4 v0, 0x2

    invoke-virtual {p0, p2, p1, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_findName(III)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    return-object v4

    :cond_6
    if-ne p1, v5, :cond_7

    .line 1917
    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 1918
    iget p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quad1:I

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_findName(III)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7
    return-object v4
.end method

.method private final _parseMediumName2(III)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1925
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    .line 1926
    sget-object v1, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_icLatin1:[I

    add-int/lit8 v2, p1, 0x1

    .line 1929
    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    .line 1930
    aget v3, v1, p1

    const/4 v4, 0x0

    const/16 v5, 0x22

    if-eqz v3, :cond_1

    if-ne p1, v5, :cond_0

    .line 1932
    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 1933
    iget p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quad1:I

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p3, p2, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_findName(IIII)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v4

    :cond_1
    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p1, p2

    add-int/lit8 p2, v2, 0x1

    .line 1938
    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    .line 1939
    aget v3, v1, v2

    if-eqz v3, :cond_3

    if-ne v2, v5, :cond_2

    .line 1941
    iput p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 1942
    iget p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quad1:I

    const/4 v0, 0x2

    invoke-virtual {p0, p2, p3, p1, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_findName(IIII)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v4

    :cond_3
    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, v2

    add-int/lit8 v2, p2, 0x1

    .line 1947
    aget-byte p2, v0, p2

    and-int/lit16 p2, p2, 0xff

    .line 1948
    aget v1, v1, p2

    if-eqz v1, :cond_5

    if-ne p2, v5, :cond_4

    .line 1950
    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 1951
    iget p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quad1:I

    const/4 v0, 0x3

    invoke-virtual {p0, p2, p3, p1, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_findName(IIII)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    return-object v4

    :cond_5
    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, p2

    add-int/lit8 p2, v2, 0x1

    .line 1956
    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    if-ne v0, v5, :cond_6

    .line 1958
    iput p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 1959
    iget p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quad1:I

    const/4 v0, 0x4

    invoke-virtual {p0, p2, p3, p1, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_findName(IIII)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    return-object v4
.end method

.method private final _skipWS(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    const/16 v0, 0x20

    if-eq p1, v0, :cond_3

    const/16 v1, 0xa

    if-ne p1, v1, :cond_1

    .line 961
    iget p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currInputRow:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currInputRow:I

    .line 962
    iget p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currInputRowStart:I

    goto :goto_0

    :cond_1
    const/16 v1, 0xd

    if-ne p1, v1, :cond_2

    .line 964
    iget p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currInputRowAlt:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currInputRowAlt:I

    .line 965
    iget p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currInputRowStart:I

    goto :goto_0

    :cond_2
    const/16 v1, 0x9

    if-eq p1, v1, :cond_3

    .line 967
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_throwInvalidSpace(I)V

    .line 970
    :cond_3
    :goto_0
    iget p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    if-lt p1, v1, :cond_4

    .line 971
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 p1, 0x0

    return p1

    .line 974
    :cond_4
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    if-le p1, v0, :cond_0

    return p1
.end method

.method private final _startAfterComment(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1093
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_0

    .line 1094
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 1095
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    .line 1097
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    const/4 v1, 0x5

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 1113
    invoke-static {}, Lcom/fasterxml/jackson/core/util/VersionUtil;->throwInternal()V

    const/4 p1, 0x0

    return-object p1

    .line 1110
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startValueAfterComma(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 1108
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startValueExpectColon(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 1106
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startValueExpectComma(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 1104
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startValue(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 1102
    :cond_1
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startFieldNameAfterComma(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 1100
    :cond_2
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startFieldName(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final _startDocument(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit16 p1, p1, 0xff

    const/4 v0, 0x1

    const/16 v1, 0xef

    if-ne p1, v1, :cond_0

    .line 433
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    if-eq v1, v0, :cond_0

    .line 434
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishBOM(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :cond_0
    :goto_0
    const/16 v1, 0x20

    if-gt p1, v1, :cond_7

    if-eq p1, v1, :cond_3

    const/16 v1, 0xa

    if-ne p1, v1, :cond_1

    .line 441
    iget p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currInputRow:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currInputRow:I

    .line 442
    iget p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currInputRowStart:I

    goto :goto_1

    :cond_1
    const/16 v1, 0xd

    if-ne p1, v1, :cond_2

    .line 444
    iget p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currInputRowAlt:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currInputRowAlt:I

    .line 445
    iget p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currInputRowStart:I

    goto :goto_1

    :cond_2
    const/16 v1, 0x9

    if-eq p1, v1, :cond_3

    .line 447
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_throwInvalidSpace(I)V

    .line 450
    :cond_3
    :goto_1
    iget p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    if-lt p1, v1, :cond_6

    const/4 p1, 0x3

    .line 451
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 452
    iget-boolean p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_closed:Z

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 456
    :cond_4
    iget-boolean p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_endOfInput:Z

    if-eqz p1, :cond_5

    .line 457
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_eofAsNextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 459
    :cond_5
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    .line 461
    :cond_6
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    goto :goto_0

    .line 463
    :cond_7
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startValue(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1
.end method

.method private final _startFieldName(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x20

    if-gt p1, v0, :cond_0

    .line 512
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_skipWS(I)I

    move-result p1

    if-gtz p1, :cond_0

    const/4 p1, 0x4

    .line 514
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 515
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    .line 518
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_updateTokenLocation()V

    const/16 v0, 0x22

    if-eq p1, v0, :cond_2

    const/16 v0, 0x7d

    if-ne p1, v0, :cond_1

    .line 521
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_closeObjectScope()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 523
    :cond_1
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_handleOddName(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 526
    :cond_2
    iget p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 p1, p1, 0xd

    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    if-gt p1, v0, :cond_3

    .line 527
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_fastParseName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 529
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_fieldComplete(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    .line 532
    invoke-direct {p0, p1, p1, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_parseEscapedName(III)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1
.end method

.method private final _startFieldNameAfterComma(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x20

    const/4 v1, 0x5

    if-gt p1, v0, :cond_0

    .line 539
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_skipWS(I)I

    move-result p1

    if-gtz p1, :cond_0

    .line 541
    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 542
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    :cond_0
    const/16 v2, 0x2c

    const/16 v3, 0x7d

    if-eq p1, v2, :cond_4

    if-ne p1, v3, :cond_1

    .line 547
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_closeObjectScope()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :cond_1
    const/16 v2, 0x23

    if-ne p1, v2, :cond_2

    .line 550
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishHashComment(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :cond_2
    const/16 v2, 0x2f

    if-ne p1, v2, :cond_3

    .line 553
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startSlashComment(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 555
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "was expecting comma to separate "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->typeDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " entries"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 557
    :cond_4
    iget p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 558
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    const/4 v2, 0x4

    if-lt p1, v1, :cond_5

    .line 559
    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 560
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    .line 562
    :cond_5
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    aget-byte v1, v1, p1

    add-int/lit8 p1, p1, 0x1

    .line 563
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    if-gt v1, v0, :cond_6

    .line 565
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_skipWS(I)I

    move-result v1

    if-gtz v1, :cond_6

    .line 567
    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 568
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    .line 571
    :cond_6
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_updateTokenLocation()V

    const/16 p1, 0x22

    if-eq v1, p1, :cond_8

    if-ne v1, v3, :cond_7

    .line 574
    iget p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_features:I

    sget v0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->FEAT_MASK_TRAILING_COMMA:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_7

    .line 575
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_closeObjectScope()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 578
    :cond_7
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_handleOddName(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 581
    :cond_8
    iget p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 p1, p1, 0xd

    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    if-gt p1, v0, :cond_9

    .line 582
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_fastParseName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 584
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_fieldComplete(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :cond_9
    const/4 p1, 0x0

    .line 587
    invoke-direct {p0, p1, p1, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_parseEscapedName(III)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1
.end method

.method private final _startSlashComment(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 981
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_features:I

    sget v1, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->FEAT_MASK_ALLOW_JAVA_COMMENTS:I

    and-int/2addr v0, v1

    const/16 v1, 0x2f

    if-nez v0, :cond_0

    const-string v0, "maybe a (non-standard) comment? (not recognized as one since Feature \'ALLOW_COMMENTS\' not enabled for parser)"

    .line 982
    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 986
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    if-lt v0, v2, :cond_1

    .line 987
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pending32:I

    const/16 p1, 0x33

    .line 988
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 989
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    .line 991
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v0, v0, v2

    const/16 v2, 0x2a

    if-ne v0, v2, :cond_2

    const/4 v0, 0x0

    .line 993
    invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishCComment(IZ)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :cond_2
    if-ne v0, v1, :cond_3

    .line 996
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishCppComment(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :cond_3
    and-int/lit16 p1, v0, 0xff

    const-string v0, "was expecting either \'*\' or \'/\' for a comment"

    .line 998
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private final _startValue(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xc

    const/16 v1, 0x20

    if-gt p1, v1, :cond_0

    .line 605
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_skipWS(I)I

    move-result p1

    if-gtz p1, :cond_0

    .line 607
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 608
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    .line 611
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_updateTokenLocation()V

    .line 613
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->expectComma()Z

    const/16 v1, 0x22

    if-ne p1, v1, :cond_1

    .line 616
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startString()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :cond_1
    const/16 v1, 0x23

    if-eq p1, v1, :cond_a

    const/16 v1, 0x5b

    if-eq p1, v1, :cond_9

    const/16 v1, 0x5d

    if-eq p1, v1, :cond_8

    const/16 v1, 0x66

    if-eq p1, v1, :cond_7

    const/16 v1, 0x6e

    if-eq p1, v1, :cond_6

    const/16 v1, 0x74

    if-eq p1, v1, :cond_5

    const/16 v1, 0x7b

    if-eq p1, v1, :cond_4

    const/16 v1, 0x7d

    if-eq p1, v1, :cond_3

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 647
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startPositiveNumber(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 637
    :pswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startNumberLeadingZero()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 624
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startSlashComment(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 631
    :pswitch_3
    sget-object v0, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->ALLOW_LEADING_DECIMAL_POINT_FOR_NUMBERS:Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 632
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startFloatThatStartsWithPeriod()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 664
    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startUnexpectedValue(ZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 622
    :pswitch_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startNegativeNumber()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 661
    :cond_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_closeObjectScope()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 659
    :cond_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startObjectScope()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 653
    :cond_5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startTrueToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 651
    :cond_6
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startNullToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 649
    :cond_7
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startFalseToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 657
    :cond_8
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_closeArrayScope()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 655
    :cond_9
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startArrayScope()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 620
    :cond_a
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishHashComment(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x2d
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private final _startValueAfterComma(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xf

    const/16 v1, 0x20

    if-gt p1, v1, :cond_0

    .line 849
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_skipWS(I)I

    move-result p1

    if-gtz p1, :cond_0

    .line 851
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 852
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    .line 855
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_updateTokenLocation()V

    const/16 v1, 0x22

    if-ne p1, v1, :cond_1

    .line 857
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startString()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :cond_1
    const/16 v1, 0x23

    if-eq p1, v1, :cond_b

    const/16 v1, 0x2d

    if-eq p1, v1, :cond_a

    const/16 v1, 0x5b

    if-eq p1, v1, :cond_9

    const/16 v1, 0x5d

    if-eq p1, v1, :cond_7

    const/16 v1, 0x66

    if-eq p1, v1, :cond_6

    const/16 v1, 0x6e

    if-eq p1, v1, :cond_5

    const/16 v1, 0x74

    if-eq p1, v1, :cond_4

    const/16 v1, 0x7b

    if-eq p1, v1, :cond_3

    const/16 v1, 0x7d

    if-eq p1, v1, :cond_2

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 881
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startPositiveNumber(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 871
    :pswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startNumberLeadingZero()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 865
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startSlashComment(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 900
    :cond_2
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_features:I

    sget v1, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->FEAT_MASK_TRAILING_COMMA:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_8

    .line 901
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_closeObjectScope()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 897
    :cond_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startObjectScope()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 887
    :cond_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startTrueToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 885
    :cond_5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startNullToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 883
    :cond_6
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startFalseToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 892
    :cond_7
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_features:I

    sget v1, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->FEAT_MASK_TRAILING_COMMA:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_8

    .line 893
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_closeArrayScope()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :cond_8
    :goto_0
    const/4 v0, 0x1

    .line 906
    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startUnexpectedValue(ZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 889
    :cond_9
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startArrayScope()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 863
    :cond_a
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startNegativeNumber()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 861
    :cond_b
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishHashComment(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private final _startValueExpectColon(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x20

    const/16 v1, 0xe

    if-gt p1, v0, :cond_0

    .line 774
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_skipWS(I)I

    move-result p1

    if-gtz p1, :cond_0

    .line 776
    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 777
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    :cond_0
    const/16 v2, 0x3a

    const/16 v3, 0x23

    if-eq p1, v2, :cond_3

    const/16 v2, 0x2f

    if-ne p1, v2, :cond_1

    .line 782
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startSlashComment(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :cond_1
    if-ne p1, v3, :cond_2

    .line 785
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishHashComment(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :cond_2
    const-string v1, "was expecting a colon to separate field name and value"

    .line 788
    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 790
    :cond_3
    iget p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 791
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    const/16 v2, 0xc

    if-lt p1, v1, :cond_4

    .line 792
    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 793
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    .line 795
    :cond_4
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    aget-byte v1, v1, p1

    add-int/lit8 p1, p1, 0x1

    .line 796
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    if-gt v1, v0, :cond_5

    .line 798
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_skipWS(I)I

    move-result v1

    if-gtz v1, :cond_5

    .line 800
    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 801
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    .line 804
    :cond_5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_updateTokenLocation()V

    const/16 p1, 0x22

    if-ne v1, p1, :cond_6

    .line 806
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startString()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :cond_6
    if-eq v1, v3, :cond_d

    const/16 p1, 0x2d

    if-eq v1, p1, :cond_c

    const/16 p1, 0x5b

    if-eq v1, p1, :cond_b

    const/16 p1, 0x66

    if-eq v1, p1, :cond_a

    const/16 p1, 0x6e

    if-eq v1, p1, :cond_9

    const/16 p1, 0x74

    if-eq v1, p1, :cond_8

    const/16 p1, 0x7b

    if-eq v1, p1, :cond_7

    packed-switch v1, :pswitch_data_0

    const/4 p1, 0x0

    .line 840
    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startUnexpectedValue(ZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 827
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startPositiveNumber(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 820
    :pswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startNumberLeadingZero()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 814
    :pswitch_2
    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startSlashComment(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 837
    :cond_7
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startObjectScope()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 833
    :cond_8
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startTrueToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 831
    :cond_9
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startNullToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 829
    :cond_a
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startFalseToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 835
    :cond_b
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startArrayScope()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 812
    :cond_c
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startNegativeNumber()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 810
    :cond_d
    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishHashComment(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private final _startValueExpectComma(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x20

    const/16 v1, 0xd

    if-gt p1, v0, :cond_0

    .line 675
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_skipWS(I)I

    move-result p1

    if-gtz p1, :cond_0

    .line 677
    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 678
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    :cond_0
    const/16 v2, 0x2c

    const/16 v3, 0x23

    const/16 v4, 0x7d

    const/16 v5, 0x5d

    if-eq p1, v2, :cond_5

    if-ne p1, v5, :cond_1

    .line 683
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_closeArrayScope()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :cond_1
    if-ne p1, v4, :cond_2

    .line 686
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_closeObjectScope()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :cond_2
    const/16 v2, 0x2f

    if-ne p1, v2, :cond_3

    .line 689
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startSlashComment(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :cond_3
    if-ne p1, v3, :cond_4

    .line 692
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishHashComment(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 694
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "was expecting comma to separate "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->typeDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " entries"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 698
    :cond_5
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->expectComma()Z

    .line 700
    iget p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 701
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    const/16 v2, 0xf

    if-lt p1, v1, :cond_6

    .line 702
    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 703
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    .line 705
    :cond_6
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    aget-byte v1, v1, p1

    const/4 v6, 0x1

    add-int/2addr p1, v6

    .line 706
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    if-gt v1, v0, :cond_7

    .line 708
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_skipWS(I)I

    move-result v1

    if-gtz v1, :cond_7

    .line 710
    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 711
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    .line 714
    :cond_7
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_updateTokenLocation()V

    const/16 p1, 0x22

    if-ne v1, p1, :cond_8

    .line 716
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startString()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :cond_8
    if-eq v1, v3, :cond_12

    const/16 p1, 0x2d

    if-eq v1, p1, :cond_11

    const/16 p1, 0x5b

    if-eq v1, p1, :cond_10

    if-eq v1, v5, :cond_e

    const/16 p1, 0x66

    if-eq v1, p1, :cond_d

    const/16 p1, 0x6e

    if-eq v1, p1, :cond_c

    const/16 p1, 0x74

    if-eq v1, p1, :cond_b

    const/16 p1, 0x7b

    if-eq v1, p1, :cond_a

    if-eq v1, v4, :cond_9

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 737
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startPositiveNumber(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 730
    :pswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startNumberLeadingZero()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 724
    :pswitch_2
    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startSlashComment(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 756
    :cond_9
    iget p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_features:I

    sget v0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->FEAT_MASK_TRAILING_COMMA:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_f

    .line 757
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_closeObjectScope()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 753
    :cond_a
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startObjectScope()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 743
    :cond_b
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startTrueToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 741
    :cond_c
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startNullToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 739
    :cond_d
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startFalseToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 748
    :cond_e
    iget p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_features:I

    sget v0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->FEAT_MASK_TRAILING_COMMA:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_f

    .line 749
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_closeArrayScope()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 762
    :cond_f
    :goto_0
    invoke-virtual {p0, v6, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startUnexpectedValue(ZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 745
    :cond_10
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startArrayScope()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 722
    :cond_11
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startNegativeNumber()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 720
    :cond_12
    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishHashComment(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public _decodeEscaped()C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    invoke-static {}, Lcom/fasterxml/jackson/core/util/VersionUtil;->throwInternal()V

    const/16 v0, 0x20

    return v0
.end method

.method protected _finishErrorToken()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1261
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    if-ge v0, v1, :cond_2

    .line 1262
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    int-to-char v0, v0

    .line 1268
    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1271
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->append(C)V

    .line 1272
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->size()I

    move-result v0

    const/16 v1, 0x100

    if-lt v0, v1, :cond_0

    .line 1276
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_reportErrorToken(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 1278
    :cond_2
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method

.method protected _finishErrorTokenWithEOF()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1283
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_reportErrorToken(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0
.end method

.method protected final _finishFieldWithEscape()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2281
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quoted32:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quotedDigits:I

    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_decodeSplitEscaped(II)I

    move-result v0

    const/16 v1, 0x8

    if-gez v0, :cond_0

    .line 2283
    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 2284
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 2286
    :cond_0
    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quadLength:I

    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quadBuffer:[I

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 2287
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quadBuffer:[I

    const/16 v3, 0x20

    invoke-static {v2, v3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->growArrayBy([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quadBuffer:[I

    .line 2289
    :cond_1
    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pending32:I

    .line 2290
    iget v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pendingBytes:I

    const/16 v4, 0x7f

    const/4 v5, 0x4

    const/4 v6, 0x1

    if-le v0, v4, :cond_5

    const/4 v4, 0x0

    if-lt v3, v5, :cond_2

    .line 2294
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quadBuffer:[I

    iget v7, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quadLength:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quadLength:I

    aput v2, v3, v7

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_2
    const/16 v7, 0x800

    if-ge v0, v7, :cond_3

    shl-int/2addr v2, v1

    shr-int/lit8 v4, v0, 0x6

    or-int/lit16 v4, v4, 0xc0

    :goto_0
    or-int/2addr v2, v4

    add-int/2addr v3, v6

    goto :goto_2

    :cond_3
    shl-int/2addr v2, v1

    shr-int/lit8 v7, v0, 0xc

    or-int/lit16 v7, v7, 0xe0

    or-int/2addr v2, v7

    add-int/2addr v3, v6

    if-lt v3, v5, :cond_4

    .line 2306
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quadBuffer:[I

    iget v7, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quadLength:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quadLength:I

    aput v2, v3, v7

    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    move v4, v2

    :goto_1
    shl-int/lit8 v2, v4, 0x8

    shr-int/lit8 v4, v0, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    goto :goto_0

    :goto_2
    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    :cond_5
    if-ge v3, v5, :cond_6

    add-int/2addr v6, v3

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr v0, v1

    goto :goto_3

    .line 2320
    :cond_6
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quadBuffer:[I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quadLength:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quadLength:I

    aput v2, v1, v3

    .line 2324
    :goto_3
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorStateAfterSplit:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_7

    .line 2325
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quadLength:I

    invoke-direct {p0, v1, v0, v6}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishAposName(III)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 2327
    :cond_7
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quadLength:I

    invoke-direct {p0, v1, v0, v6}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_parseEscapedName(III)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0
.end method

.method protected _finishFloatExponent(ZI)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_2

    const/16 p1, 0x20

    .line 1773
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    const/16 v0, 0x2d

    if-eq p2, v0, :cond_0

    const/16 v0, 0x2b

    if-ne p2, v0, :cond_2

    .line 1775
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    int-to-char p2, p2

    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->append(C)V

    .line 1776
    iget p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    if-lt p2, v0, :cond_1

    .line 1777
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    const/4 p1, 0x0

    .line 1778
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_expLength:I

    .line 1779
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    .line 1781
    :cond_1
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte p2, p1, p2

    .line 1785
    :cond_2
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getBufferWithoutReset()[C

    move-result-object p1

    .line 1786
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getCurrentSegmentSize()I

    move-result v0

    .line 1787
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_expLength:I

    :goto_0
    const/16 v2, 0x30

    if-lt p2, v2, :cond_5

    const/16 v2, 0x39

    if-gt p2, v2, :cond_5

    add-int/lit8 v1, v1, 0x1

    .line 1791
    array-length v2, p1

    if-lt v0, v2, :cond_3

    .line 1792
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->expandCurrentSegment()[C

    move-result-object p1

    :cond_3
    add-int/lit8 v2, v0, 0x1

    int-to-char p2, p2

    .line 1794
    aput-char p2, p1, v0

    .line 1795
    iget p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    if-lt p2, v0, :cond_4

    .line 1796
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1797
    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_expLength:I

    .line 1798
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    .line 1800
    :cond_4
    iget-object p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte p2, p2, v0

    move v0, v2

    goto :goto_0

    :cond_5
    and-int/lit16 p1, p2, 0xff

    if-nez v1, :cond_6

    const-string p2, "Exponent indicator not followed by a digit"

    .line 1805
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    .line 1808
    :cond_6
    iget p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 1809
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1811
    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_expLength:I

    .line 1812
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_valueComplete(Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1
.end method

.method protected _finishFloatFraction()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1723
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_fractLength:I

    .line 1724
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getBufferWithoutReset()[C

    move-result-object v1

    .line 1725
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getCurrentSegmentSize()I

    move-result v2

    .line 1729
    :goto_0
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v3, v3, v4

    const/16 v4, 0x30

    if-lt v3, v4, :cond_2

    const/16 v4, 0x39

    if-gt v3, v4, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 1731
    array-length v4, v1

    if-lt v2, v4, :cond_0

    .line 1732
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->expandCurrentSegment()[C

    move-result-object v1

    :cond_0
    add-int/lit8 v4, v2, 0x1

    int-to-char v3, v3

    .line 1734
    aput-char v3, v1, v2

    .line 1735
    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    if-lt v2, v3, :cond_1

    .line 1736
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1, v4}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1737
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_fractLength:I

    .line 1738
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    const-string v1, "Decimal point not followed by a digit"

    .line 1745
    invoke-virtual {p0, v3, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    .line 1747
    :cond_3
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_fractLength:I

    .line 1748
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    const/16 v0, 0x65

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-eq v3, v0, :cond_5

    const/16 v0, 0x45

    if-ne v3, v0, :cond_4

    goto :goto_1

    .line 1763
    :cond_4
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 1764
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1766
    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_expLength:I

    .line 1767
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_valueComplete(Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 1752
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    int-to-char v2, v3

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->append(C)V

    .line 1753
    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_expLength:I

    .line 1754
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_6

    const/16 v0, 0x1f

    .line 1755
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 1756
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    :cond_6
    const/16 v0, 0x20

    .line 1758
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 1759
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v4, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishFloatExponent(ZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0
.end method

.method protected _finishKeywordToken(Ljava/lang/String;ILcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1184
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1187
    :goto_0
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    if-lt v1, v2, :cond_0

    .line 1188
    iput p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pending32:I

    .line 1189
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    .line 1191
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v1, v1, v2

    if-ne p2, v0, :cond_2

    const/16 v0, 0x30

    if-lt v1, v0, :cond_1

    const/16 v0, 0x5d

    if-eq v1, v0, :cond_1

    const/16 v0, 0x7d

    if-ne v1, v0, :cond_3

    .line 1194
    :cond_1
    invoke-virtual {p0, p3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_valueComplete(Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 1198
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v1, v2, :cond_3

    add-int/lit8 p2, p2, 0x1

    .line 1202
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    goto :goto_0

    :cond_3
    const/16 p3, 0x32

    .line 1204
    iput p3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 1205
    iget-object p3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    const/4 v0, 0x0

    invoke-virtual {p3, p1, v0, p2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->resetWithCopy(Ljava/lang/String;II)V

    .line 1206
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishErrorToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1
.end method

.method protected _finishKeywordTokenWithEOF(Ljava/lang/String;ILcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1212
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 1213
    iput-object p3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p3

    .line 1215
    :cond_0
    iget-object p3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    const/4 v0, 0x0

    invoke-virtual {p3, p1, v0, p2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->resetWithCopy(Ljava/lang/String;II)V

    .line 1216
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishErrorTokenWithEOF()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1
.end method

.method protected _finishNonStdToken(II)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1221
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_nonStdToken(I)Ljava/lang/String;

    move-result-object v0

    .line 1222
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1225
    :goto_0
    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    if-lt v2, v3, :cond_0

    .line 1226
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_nonStdTokenType:I

    .line 1227
    iput p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pending32:I

    const/16 p1, 0x13

    .line 1228
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 1229
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    .line 1231
    :cond_0
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v2, v2, v3

    if-ne p2, v1, :cond_2

    const/16 v1, 0x30

    if-lt v2, v1, :cond_1

    const/16 v1, 0x5d

    if-eq v2, v1, :cond_1

    const/16 v1, 0x7d

    if-ne v2, v1, :cond_3

    .line 1234
    :cond_1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_valueNonStdNumberComplete(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 1238
    :cond_2
    invoke-virtual {v0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_3

    add-int/lit8 p2, p2, 0x1

    .line 1242
    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    goto :goto_0

    :cond_3
    const/16 p1, 0x32

    .line 1244
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 1245
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->resetWithCopy(Ljava/lang/String;II)V

    .line 1246
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishErrorToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1
.end method

.method protected _finishNonStdTokenWithEOF(II)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1251
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_nonStdToken(I)Ljava/lang/String;

    move-result-object v0

    .line 1252
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne p2, v1, :cond_0

    .line 1253
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_valueNonStdNumberComplete(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 1255
    :cond_0
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->resetWithCopy(Ljava/lang/String;II)V

    .line 1256
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishErrorTokenWithEOF()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1
.end method

.method protected _finishNumberIntegralPart([CI)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1597
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_numberNegative:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1600
    :goto_0
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    if-lt v1, v2, :cond_1

    const/16 p1, 0x1a

    .line 1601
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 1602
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1603
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    .line 1605
    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x30

    if-ge v1, v2, :cond_2

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_3

    add-int/2addr v0, p2

    .line 1608
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_intLength:I

    .line 1609
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 1610
    invoke-virtual {p0, p1, p2, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startFloat([CII)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :cond_2
    const/16 v2, 0x39

    if-le v1, v2, :cond_5

    const/16 v2, 0x65

    if-eq v1, v2, :cond_4

    const/16 v2, 0x45

    if-ne v1, v2, :cond_3

    goto :goto_1

    :cond_3
    add-int/2addr v0, p2

    .line 1630
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_intLength:I

    .line 1631
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1632
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_valueComplete(Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_1
    add-int/2addr v0, p2

    .line 1616
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_intLength:I

    .line 1617
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 1618
    invoke-virtual {p0, p1, p2, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startFloat([CII)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 1622
    :cond_5
    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 1623
    array-length v2, p1

    if-lt p2, v2, :cond_6

    .line 1626
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->expandCurrentSegment()[C

    move-result-object p1

    :cond_6
    add-int/lit8 v2, p2, 0x1

    int-to-char v1, v1

    .line 1628
    aput-char v1, p1, p2

    move p2, v2

    goto :goto_0
.end method

.method protected _finishNumberLeadingNegZeroes()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1546
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_1

    const/16 v0, 0x19

    .line 1547
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 1548
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 1550
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x2

    const/16 v2, 0x2d

    const/4 v3, 0x0

    const/16 v4, 0x30

    const/4 v5, 0x1

    if-ge v0, v4, :cond_2

    const/16 v6, 0x2e

    if-ne v0, v6, :cond_4

    .line 1553
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v6}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v6

    .line 1554
    aput-char v2, v6, v3

    .line 1555
    aput-char v4, v6, v5

    .line 1556
    iput v5, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_intLength:I

    .line 1557
    invoke-virtual {p0, v6, v1, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startFloat([CII)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    :cond_2
    const/16 v6, 0x39

    if-le v0, v6, :cond_6

    const/16 v6, 0x65

    if-eq v0, v6, :cond_5

    const/16 v6, 0x45

    if-ne v0, v6, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0x5d

    if-eq v0, v1, :cond_4

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_4

    const-string v1, "expected digit (0-9), decimal point (.) or exponent indicator (e/E) to follow \'0\'"

    .line 1571
    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    .line 1590
    :cond_4
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    sub-int/2addr v0, v5

    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    const-string v0, "0"

    .line 1591
    invoke-virtual {p0, v3, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_valueCompleteInt(ILjava/lang/String;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 1561
    :cond_5
    :goto_0
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v6}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v6

    .line 1562
    aput-char v2, v6, v3

    .line 1563
    aput-char v4, v6, v5

    .line 1564
    iput v5, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_intLength:I

    .line 1565
    invoke-virtual {p0, v6, v1, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startFloat([CII)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 1577
    :cond_6
    iget v6, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_features:I

    sget v7, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->FEAT_MASK_LEADING_ZEROS:I

    and-int/2addr v6, v7

    if-nez v6, :cond_7

    const-string v6, "Leading zeroes not allowed"

    .line 1578
    invoke-virtual {p0, v6}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->reportInvalidNumber(Ljava/lang/String;)V

    :cond_7
    if-eq v0, v4, :cond_0

    .line 1583
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v4

    .line 1585
    aput-char v2, v4, v3

    int-to-char v0, v0

    .line 1586
    aput-char v0, v4, v5

    .line 1587
    iput v5, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_intLength:I

    .line 1588
    invoke-virtual {p0, v4, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishNumberIntegralPart([CI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0
.end method

.method protected _finishNumberLeadingZeroes()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1495
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_1

    const/16 v0, 0x18

    .line 1496
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 1497
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 1499
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x0

    const/16 v2, 0x30

    const/4 v3, 0x1

    if-ge v0, v2, :cond_2

    const/16 v4, 0x2e

    if-ne v0, v4, :cond_4

    .line 1502
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v4

    .line 1503
    aput-char v2, v4, v1

    .line 1504
    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_intLength:I

    .line 1505
    invoke-virtual {p0, v4, v3, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startFloat([CII)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    :cond_2
    const/16 v4, 0x39

    if-le v0, v4, :cond_6

    const/16 v4, 0x65

    if-eq v0, v4, :cond_5

    const/16 v4, 0x45

    if-ne v0, v4, :cond_3

    goto :goto_0

    :cond_3
    const/16 v2, 0x5d

    if-eq v0, v2, :cond_4

    const/16 v2, 0x7d

    if-eq v0, v2, :cond_4

    const-string v2, "expected digit (0-9), decimal point (.) or exponent indicator (e/E) to follow \'0\'"

    .line 1518
    invoke-virtual {p0, v0, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    .line 1536
    :cond_4
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    const-string v0, "0"

    .line 1537
    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_valueCompleteInt(ILjava/lang/String;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 1509
    :cond_5
    :goto_0
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v4

    .line 1510
    aput-char v2, v4, v1

    .line 1511
    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_intLength:I

    .line 1512
    invoke-virtual {p0, v4, v3, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startFloat([CII)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 1524
    :cond_6
    iget v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_features:I

    sget v5, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->FEAT_MASK_LEADING_ZEROS:I

    and-int/2addr v4, v5

    if-nez v4, :cond_7

    const-string v4, "Leading zeroes not allowed"

    .line 1525
    invoke-virtual {p0, v4}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->reportInvalidNumber(Ljava/lang/String;)V

    :cond_7
    if-eq v0, v2, :cond_0

    .line 1530
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v2

    int-to-char v0, v0

    .line 1532
    aput-char v0, v2, v1

    .line 1533
    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_intLength:I

    .line 1534
    invoke-virtual {p0, v2, v3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishNumberIntegralPart([CI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0
.end method

.method protected _finishNumberMinus(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "expected digit (0-9) to follow minus sign, for valid numeric value"

    const/4 v1, 0x2

    const/16 v2, 0x30

    if-gt p1, v2, :cond_1

    if-ne p1, v2, :cond_0

    .line 1474
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishNumberLeadingNegZeroes()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 1476
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 v2, 0x39

    if-le p1, v2, :cond_3

    const/16 v2, 0x49

    if-ne p1, v2, :cond_2

    const/4 p1, 0x3

    .line 1479
    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishNonStdToken(II)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 1481
    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    .line 1483
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v0

    const/4 v2, 0x0

    const/16 v3, 0x2d

    .line 1484
    aput-char v3, v0, v2

    int-to-char p1, p1

    const/4 v2, 0x1

    .line 1485
    aput-char p1, v0, v2

    .line 1486
    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_intLength:I

    .line 1487
    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishNumberIntegralPart([CI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1
.end method

.method protected final _finishToken()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    const/4 v2, 0x4

    if-eq v0, v2, :cond_8

    const/4 v2, 0x5

    if-eq v0, v2, :cond_7

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_3

    const/16 v3, 0x2d

    packed-switch v0, :pswitch_data_4

    packed-switch v0, :pswitch_data_5

    .line 345
    invoke-static {}, Lcom/fasterxml/jackson/core/util/VersionUtil;->throwInternal()V

    const/4 v0, 0x0

    return-object v0

    .line 343
    :pswitch_0
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pending32:I

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishHashComment(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 341
    :pswitch_1
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pending32:I

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishCppComment(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 339
    :pswitch_2
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pending32:I

    invoke-direct {p0, v0, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishCComment(IZ)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 337
    :pswitch_3
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pending32:I

    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishCComment(IZ)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 335
    :pswitch_4
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pending32:I

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startSlashComment(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 330
    :pswitch_5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishErrorToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 327
    :pswitch_6
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishAposString()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 305
    :pswitch_7
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pending32:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pendingBytes:I

    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v2, v2, v4

    invoke-direct {p0, v0, v1, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_decodeSplitUTF8_4(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 308
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorStateAfterSplit:I

    if-ne v0, v3, :cond_1

    .line 309
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishAposString()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 311
    :cond_1
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishRegularString()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 297
    :pswitch_8
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pending32:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pendingBytes:I

    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v2, v2, v4

    invoke-direct {p0, v0, v1, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_decodeSplitUTF8_3(III)Z

    move-result v0

    if-nez v0, :cond_2

    .line 298
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 300
    :cond_2
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorStateAfterSplit:I

    if-ne v0, v3, :cond_3

    .line 301
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishAposString()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 303
    :cond_3
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishRegularString()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 291
    :pswitch_9
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pending32:I

    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v2, v2, v4

    invoke-direct {p0, v1, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_decodeUTF8_2(II)I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->append(C)V

    .line 292
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorStateAfterSplit:I

    if-ne v0, v3, :cond_4

    .line 293
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishAposString()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 295
    :cond_4
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishRegularString()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 315
    :pswitch_a
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quoted32:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quotedDigits:I

    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_decodeSplitEscaped(II)I

    move-result v0

    if-gez v0, :cond_5

    .line 317
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 319
    :cond_5
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->append(C)V

    .line 321
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorStateAfterSplit:I

    if-ne v0, v3, :cond_6

    .line 322
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishAposString()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 324
    :cond_6
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishRegularString()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 289
    :pswitch_b
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishRegularString()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 286
    :pswitch_c
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v2, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishFloatExponent(ZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 284
    :pswitch_d
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishFloatExponent(ZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 282
    :pswitch_e
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishFloatFraction()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 279
    :pswitch_f
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getBufferWithoutReset()[C

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 280
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getCurrentSegmentSize()I

    move-result v1

    .line 279
    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishNumberIntegralPart([CI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 277
    :pswitch_10
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishNumberLeadingNegZeroes()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 275
    :pswitch_11
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishNumberLeadingZeroes()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 273
    :pswitch_12
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishNumberMinus(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 270
    :pswitch_13
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_nonStdTokenType:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pending32:I

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishNonStdToken(II)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 268
    :pswitch_14
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pending32:I

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    const-string v2, "false"

    invoke-virtual {p0, v2, v0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishKeywordToken(Ljava/lang/String;ILcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 266
    :pswitch_15
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pending32:I

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    const-string v2, "true"

    invoke-virtual {p0, v2, v0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishKeywordToken(Ljava/lang/String;ILcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 264
    :pswitch_16
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pending32:I

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    const-string v2, "null"

    invoke-virtual {p0, v2, v0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishKeywordToken(Ljava/lang/String;ILcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 257
    :pswitch_17
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startValueAfterComma(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 261
    :pswitch_18
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startValueExpectColon(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 259
    :pswitch_19
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startValueExpectComma(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 255
    :pswitch_1a
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startValue(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 250
    :pswitch_1b
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quadLength:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pending32:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pendingBytes:I

    invoke-direct {p0, v0, v1, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishUnquotedName(III)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 248
    :pswitch_1c
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quadLength:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pending32:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pendingBytes:I

    invoke-direct {p0, v0, v1, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishAposName(III)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 246
    :pswitch_1d
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishFieldWithEscape()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 244
    :pswitch_1e
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_quadLength:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pending32:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pendingBytes:I

    invoke-direct {p0, v0, v1, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_parseEscapedName(III)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 240
    :cond_7
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startFieldNameAfterComma(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 238
    :cond_8
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startFieldName(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 236
    :cond_9
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pending32:I

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishBOM(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x17
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1e
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x28
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x32
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final _finishTokenWithEOF()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 358
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 359
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/16 v2, 0xc

    if-eq v1, v2, :cond_2

    const/16 v2, 0x32

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    packed-switch v1, :pswitch_data_3

    .line 418
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ": was expecting rest of token (internal state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_reportInvalidEOF(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonToken;)V

    return-object v0

    .line 401
    :pswitch_0
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    const-string v1, ": was expecting fraction after exponent marker"

    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_reportInvalidEOF(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonToken;)V

    .line 409
    :pswitch_1
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    const-string v1, ": was expecting closing \'*/\' for comment"

    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_reportInvalidEOF(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonToken;)V

    .line 414
    :pswitch_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_eofAsNextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 395
    :pswitch_3
    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_expLength:I

    .line 398
    :pswitch_4
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_valueComplete(Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 386
    :pswitch_5
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getCurrentSegmentSize()I

    move-result v0

    .line 387
    iget-boolean v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_numberNegative:Z

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 390
    :cond_0
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_intLength:I

    .line 392
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_valueComplete(Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    :pswitch_6
    const-string v0, "0"

    .line 382
    invoke-virtual {p0, v2, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_valueCompleteInt(ILjava/lang/String;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 373
    :pswitch_7
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_nonStdTokenType:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pending32:I

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishNonStdTokenWithEOF(II)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 371
    :pswitch_8
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pending32:I

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    const-string v2, "false"

    invoke-virtual {p0, v2, v0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishKeywordTokenWithEOF(Ljava/lang/String;ILcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 369
    :pswitch_9
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pending32:I

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    const-string v2, "true"

    invoke-virtual {p0, v2, v0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishKeywordTokenWithEOF(Ljava/lang/String;ILcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 367
    :pswitch_a
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_pending32:I

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    const-string v2, "null"

    invoke-virtual {p0, v2, v0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishKeywordTokenWithEOF(Ljava/lang/String;ILcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 375
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishErrorTokenWithEOF()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 363
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_eofAsNextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 361
    :cond_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_eofAsNextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x18
        :pswitch_6
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1e
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x34
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method protected _reportErrorToken(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1289
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object p1

    .line 1290
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_validJsonTokenList()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unrecognized token \'%s\': was expecting %s"

    .line 1289
    invoke-virtual {p0, v1, p1, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_reportError(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1291
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1
.end method

.method protected _startAposString()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2531
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 2533
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v1

    .line 2534
    sget-object v2, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_icUTF8:[I

    .line 2536
    iget v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    array-length v4, v1

    add-int/2addr v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2537
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    const/4 v5, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    .line 2539
    aget-byte v6, v4, v0

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x27

    if-ne v6, v7, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 2541
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 2542
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0, v5}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 2543
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_valueComplete(Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 2546
    :cond_0
    aget v7, v2, v6

    if-nez v7, :cond_1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v7, v5, 0x1

    int-to-char v6, v6

    .line 2550
    aput-char v6, v1, v5

    move v5, v7

    goto :goto_0

    .line 2552
    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1, v5}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 2553
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 2554
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishAposString()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0
.end method

.method protected _startFalseToken()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1125
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v1, v0, 0x4

    .line 1126
    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    if-ge v1, v2, :cond_1

    .line 1127
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    add-int/lit8 v2, v0, 0x1

    .line 1128
    aget-byte v0, v1, v0

    const/16 v3, 0x61

    if-ne v0, v3, :cond_1

    add-int/lit8 v0, v2, 0x1

    aget-byte v2, v1, v2

    const/16 v3, 0x6c

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v1, v0

    const/16 v3, 0x73

    if-ne v0, v3, :cond_1

    add-int/lit8 v0, v2, 0x1

    aget-byte v2, v1, v2

    const/16 v3, 0x65

    if-ne v2, v3, :cond_1

    .line 1132
    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x30

    if-lt v1, v2, :cond_0

    const/16 v2, 0x5d

    if-eq v1, v2, :cond_0

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_1

    .line 1134
    :cond_0
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 1135
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_valueComplete(Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    :cond_1
    const/16 v0, 0x12

    .line 1139
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 1140
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    const-string v1, "false"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishKeywordToken(Ljava/lang/String;ILcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0
.end method

.method protected _startFloat([CII)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x39

    const/16 v1, 0x30

    const/16 v2, 0x2e

    const/4 v3, 0x0

    if-ne p3, v2, :cond_5

    .line 1639
    array-length p3, p1

    if-lt p2, p3, :cond_0

    .line 1640
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->expandCurrentSegment()[C

    move-result-object p1

    :cond_0
    add-int/lit8 p3, p2, 0x1

    .line 1642
    aput-char v2, p1, p2

    move p2, p3

    const/4 p3, 0x0

    .line 1644
    :goto_0
    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iget v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    if-lt v2, v4, :cond_1

    .line 1645
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    const/16 p1, 0x1e

    .line 1646
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 1647
    iput p3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_fractLength:I

    .line 1648
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    .line 1650
    :cond_1
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v2, v2, v4

    if-lt v2, v1, :cond_4

    if-le v2, v0, :cond_2

    goto :goto_1

    .line 1659
    :cond_2
    array-length v4, p1

    if-lt p2, v4, :cond_3

    .line 1660
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->expandCurrentSegment()[C

    move-result-object p1

    :cond_3
    add-int/lit8 v4, p2, 0x1

    int-to-char v2, v2

    .line 1662
    aput-char v2, p1, p2

    add-int/lit8 p3, p3, 0x1

    move p2, v4

    goto :goto_0

    :cond_4
    :goto_1
    and-int/lit16 v2, v2, 0xff

    if-nez p3, :cond_6

    const-string v4, "Decimal point not followed by a digit"

    .line 1655
    invoke-virtual {p0, v2, v4}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    goto :goto_2

    :cond_5
    move v2, p3

    const/4 p3, 0x0

    .line 1666
    :cond_6
    :goto_2
    iput p3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_fractLength:I

    const/16 p3, 0x65

    if-eq v2, p3, :cond_7

    const/16 p3, 0x45

    if-ne v2, p3, :cond_12

    .line 1669
    :cond_7
    array-length p3, p1

    if-lt p2, p3, :cond_8

    .line 1670
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->expandCurrentSegment()[C

    move-result-object p1

    :cond_8
    add-int/lit8 p3, p2, 0x1

    int-to-char v2, v2

    .line 1672
    aput-char v2, p1, p2

    .line 1673
    iget p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    if-lt p2, v2, :cond_9

    .line 1674
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {p1, p3}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    const/16 p1, 0x1f

    .line 1675
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 1676
    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_expLength:I

    .line 1677
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    .line 1679
    :cond_9
    iget-object p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte p2, p2, v2

    const/16 v2, 0x2d

    const/16 v4, 0x20

    if-eq p2, v2, :cond_a

    const/16 v2, 0x2b

    if-ne p2, v2, :cond_d

    .line 1681
    :cond_a
    array-length v2, p1

    if-lt p3, v2, :cond_b

    .line 1682
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->expandCurrentSegment()[C

    move-result-object p1

    :cond_b
    add-int/lit8 v2, p3, 0x1

    int-to-char p2, p2

    .line 1684
    aput-char p2, p1, p3

    .line 1685
    iget p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iget p3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    if-lt p2, p3, :cond_c

    .line 1686
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1687
    iput v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 1688
    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_expLength:I

    .line 1689
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    .line 1691
    :cond_c
    iget-object p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget p3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v5, p3, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte p2, p2, p3

    :goto_3
    move p3, v2

    :cond_d
    if-lt p2, v1, :cond_10

    if-gt p2, v0, :cond_10

    add-int/lit8 v3, v3, 0x1

    .line 1695
    array-length v2, p1

    if-lt p3, v2, :cond_e

    .line 1696
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->expandCurrentSegment()[C

    move-result-object p1

    :cond_e
    add-int/lit8 v2, p3, 0x1

    int-to-char p2, p2

    .line 1698
    aput-char p2, p1, p3

    .line 1699
    iget p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iget p3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    if-lt p2, p3, :cond_f

    .line 1700
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1701
    iput v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 1702
    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_expLength:I

    .line 1703
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    .line 1705
    :cond_f
    iget-object p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget p3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v5, p3, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte p2, p2, p3

    goto :goto_3

    :cond_10
    and-int/lit16 p1, p2, 0xff

    if-nez v3, :cond_11

    const-string p2, "Exponent indicator not followed by a digit"

    .line 1710
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    :cond_11
    move p2, p3

    .line 1714
    :cond_12
    iget p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 1715
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1717
    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_expLength:I

    .line 1718
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_valueComplete(Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1
.end method

.method protected _startFloatThatStartsWithPeriod()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1303
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_numberNegative:Z

    .line 1304
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_intLength:I

    .line 1305
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v1

    const/16 v2, 0x2e

    .line 1306
    invoke-virtual {p0, v1, v0, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startFloat([CII)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0
.end method

.method protected _startNegativeNumber()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1361
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_numberNegative:Z

    .line 1362
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    if-lt v1, v2, :cond_0

    const/16 v0, 0x17

    .line 1363
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 1364
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 1366
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    const-string v2, "expected digit (0-9) to follow minus sign, for valid numeric value"

    const/16 v3, 0x39

    const/4 v4, 0x2

    const/16 v5, 0x30

    if-gt v1, v5, :cond_2

    if-ne v1, v5, :cond_1

    .line 1369
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishNumberLeadingNegZeroes()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 1372
    :cond_1
    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    if-le v1, v3, :cond_4

    const/16 v6, 0x49

    if-ne v1, v6, :cond_3

    const/4 v0, 0x3

    .line 1375
    invoke-virtual {p0, v0, v4}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishNonStdToken(II)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 1377
    :cond_3
    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    .line 1379
    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v2

    const/4 v6, 0x0

    const/16 v7, 0x2d

    .line 1380
    aput-char v7, v2, v6

    int-to-char v1, v1

    .line 1381
    aput-char v1, v2, v0

    .line 1382
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iget v6, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    const/16 v7, 0x1a

    if-lt v1, v6, :cond_5

    .line 1383
    iput v7, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 1384
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1, v4}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1385
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_intLength:I

    .line 1386
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 1388
    :cond_5
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v6, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v1, v1, v6

    :goto_1
    if-ge v1, v5, :cond_6

    const/16 v3, 0x2e

    if-ne v1, v3, :cond_7

    add-int/lit8 v3, v4, -0x1

    .line 1394
    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_intLength:I

    .line 1395
    iget v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 1396
    invoke-virtual {p0, v2, v4, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startFloat([CII)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    :cond_6
    if-le v1, v3, :cond_9

    const/16 v3, 0x65

    if-eq v1, v3, :cond_8

    const/16 v3, 0x45

    if-ne v1, v3, :cond_7

    goto :goto_2

    :cond_7
    add-int/lit8 v0, v4, -0x1

    .line 1420
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_intLength:I

    .line 1421
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0, v4}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1422
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_valueComplete(Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    :cond_8
    :goto_2
    add-int/lit8 v3, v4, -0x1

    .line 1402
    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_intLength:I

    .line 1403
    iget v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 1404
    invoke-virtual {p0, v2, v4, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startFloat([CII)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 1408
    :cond_9
    array-length v6, v2

    if-lt v4, v6, :cond_a

    .line 1410
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->expandCurrentSegment()[C

    move-result-object v2

    :cond_a
    add-int/lit8 v6, v4, 0x1

    int-to-char v1, v1

    .line 1412
    aput-char v1, v2, v4

    .line 1413
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iget v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    if-lt v1, v4, :cond_b

    .line 1414
    iput v7, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 1415
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0, v6}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1416
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 1418
    :cond_b
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    move v4, v6

    goto :goto_1
.end method

.method protected _startNullToken()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1164
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v1, v0, 0x3

    .line 1165
    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    if-ge v1, v2, :cond_1

    .line 1166
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    add-int/lit8 v2, v0, 0x1

    .line 1167
    aget-byte v0, v1, v0

    const/16 v3, 0x75

    if-ne v0, v3, :cond_1

    add-int/lit8 v0, v2, 0x1

    aget-byte v2, v1, v2

    const/16 v3, 0x6c

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v1, v0

    if-ne v0, v3, :cond_1

    .line 1170
    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x30

    if-lt v0, v1, :cond_0

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_0

    const/16 v1, 0x7d

    if-ne v0, v1, :cond_1

    .line 1172
    :cond_0
    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 1173
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_valueComplete(Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    :cond_1
    const/16 v0, 0x10

    .line 1177
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 1178
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    const-string v1, "null"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishKeywordToken(Ljava/lang/String;ILcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0
.end method

.method protected _startNumberLeadingZero()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1427
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 1428
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_0

    const/16 v0, 0x18

    .line 1429
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 1430
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 1437
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x0

    const/16 v3, 0x30

    const/4 v4, 0x1

    if-ge v0, v3, :cond_1

    const/16 v5, 0x2e

    if-ne v0, v5, :cond_3

    .line 1441
    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 1442
    iput v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_intLength:I

    .line 1443
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v2

    .line 1444
    aput-char v3, v2, v1

    .line 1445
    invoke-virtual {p0, v2, v4, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startFloat([CII)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    :cond_1
    const/16 v5, 0x39

    if-le v0, v5, :cond_5

    const/16 v5, 0x65

    if-eq v0, v5, :cond_4

    const/16 v5, 0x45

    if-ne v0, v5, :cond_2

    goto :goto_0

    :cond_2
    const/16 v2, 0x5d

    if-eq v0, v2, :cond_3

    const/16 v2, 0x7d

    if-eq v0, v2, :cond_3

    const-string v2, "expected digit (0-9), decimal point (.) or exponent indicator (e/E) to follow \'0\'"

    .line 1459
    invoke-virtual {p0, v0, v2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    :cond_3
    const-string v0, "0"

    .line 1467
    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_valueCompleteInt(ILjava/lang/String;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 1449
    :cond_4
    :goto_0
    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 1450
    iput v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_intLength:I

    .line 1451
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v2

    .line 1452
    aput-char v3, v2, v1

    .line 1453
    invoke-virtual {p0, v2, v4, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startFloat([CII)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 1464
    :cond_5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishNumberLeadingZeroes()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0
.end method

.method protected _startPositiveNumber(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1311
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_numberNegative:Z

    .line 1312
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v1

    int-to-char p1, p1

    .line 1313
    aput-char p1, v1, v0

    .line 1315
    iget p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    const/16 v2, 0x1a

    const/4 v3, 0x1

    if-lt p1, v0, :cond_0

    .line 1316
    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 1317
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {p1, v3}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1318
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    .line 1323
    :cond_0
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    const/4 v0, 0x1

    :goto_0
    const/16 v4, 0x30

    if-ge p1, v4, :cond_1

    const/16 v2, 0x2e

    if-ne p1, v2, :cond_2

    .line 1327
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_intLength:I

    .line 1328
    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 1329
    invoke-virtual {p0, v1, v0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startFloat([CII)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :cond_1
    const/16 v4, 0x39

    if-le p1, v4, :cond_4

    const/16 v2, 0x65

    if-eq p1, v2, :cond_3

    const/16 v2, 0x45

    if-ne p1, v2, :cond_2

    goto :goto_1

    .line 1354
    :cond_2
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_intLength:I

    .line 1355
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1356
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_valueComplete(Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 1335
    :cond_3
    :goto_1
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_intLength:I

    .line 1336
    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 1337
    invoke-virtual {p0, v1, v0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startFloat([CII)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 1341
    :cond_4
    array-length v4, v1

    if-lt v0, v4, :cond_5

    .line 1344
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->expandCurrentSegment()[C

    move-result-object v1

    :cond_5
    add-int/lit8 v4, v0, 0x1

    int-to-char p1, p1

    .line 1346
    aput-char p1, v1, v0

    .line 1347
    iget p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    if-lt p1, v0, :cond_6

    .line 1348
    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 1349
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {p1, v4}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1350
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    .line 1352
    :cond_6
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    move v0, v4

    goto :goto_0
.end method

.method protected _startString()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2404
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 2406
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v1

    .line 2407
    sget-object v2, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_icUTF8:[I

    .line 2409
    iget v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    array-length v4, v1

    add-int/2addr v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2410
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    const/4 v5, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    .line 2412
    aget-byte v6, v4, v0

    and-int/lit16 v6, v6, 0xff

    .line 2413
    aget v7, v2, v6

    if-eqz v7, :cond_0

    const/16 v1, 0x22

    if-ne v6, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 2415
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 2416
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0, v5}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 2417
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_valueComplete(Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v7, v5, 0x1

    int-to-char v6, v6

    .line 2422
    aput-char v6, v1, v5

    move v5, v7

    goto :goto_0

    .line 2424
    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1, v5}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 2425
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 2426
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishRegularString()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0
.end method

.method protected _startTrueToken()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1145
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v1, v0, 0x3

    .line 1146
    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    if-ge v1, v2, :cond_1

    .line 1147
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    add-int/lit8 v2, v0, 0x1

    .line 1148
    aget-byte v0, v1, v0

    const/16 v3, 0x72

    if-ne v0, v3, :cond_1

    add-int/lit8 v0, v2, 0x1

    aget-byte v2, v1, v2

    const/16 v3, 0x75

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v1, v0

    const/16 v3, 0x65

    if-ne v0, v3, :cond_1

    .line 1151
    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x30

    if-lt v0, v1, :cond_0

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_0

    const/16 v1, 0x7d

    if-ne v0, v1, :cond_1

    .line 1153
    :cond_0
    iput v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 1154
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_valueComplete(Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    :cond_1
    const/16 v0, 0x11

    .line 1158
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_minorState:I

    .line 1159
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    const-string v1, "true"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishKeywordToken(Ljava/lang/String;ILcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0
.end method

.method protected _startUnexpectedValue(ZI)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 p1, 0x27

    if-eq p2, p1, :cond_5

    const/16 p1, 0x49

    const/4 v0, 0x1

    if-eq p2, p1, :cond_4

    const/16 p1, 0x4e

    if-eq p2, p1, :cond_3

    const/16 p1, 0x5d

    if-eq p2, p1, :cond_1

    const/16 p1, 0x7d

    if-eq p2, p1, :cond_6

    const/16 p1, 0x2b

    if-eq p2, p1, :cond_0

    const/16 p1, 0x2c

    if-eq p2, p1, :cond_2

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 939
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishNonStdToken(II)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 913
    :cond_1
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->inArray()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 922
    :cond_2
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->inRoot()Z

    move-result p1

    if-nez p1, :cond_6

    .line 923
    iget p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_features:I

    sget v1, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->FEAT_MASK_ALLOW_MISSING:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_6

    .line 924
    iget p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 925
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_valueComplete(Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    .line 941
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishNonStdToken(II)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 943
    :cond_4
    invoke-virtual {p0, v0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishNonStdToken(II)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 934
    :cond_5
    iget p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_features:I

    sget v0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->FEAT_MASK_ALLOW_SINGLE_QUOTES:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_6

    .line 935
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startAposString()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 946
    :cond_6
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "expected a valid value "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_validJsonValueList()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public endOfInput()V
    .locals 1

    const/4 v0, 0x1

    .line 124
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_endOfInput:Z

    return-void
.end method

.method public feedInput([BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    if-ge v0, v1, :cond_0

    .line 99
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Still have %d undecoded bytes, should not call \'feedInput\'"

    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_reportError(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    if-ge p3, p2, :cond_1

    .line 102
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Input end (%d) may not be before start (%d)"

    invoke-virtual {p0, v2, v0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_reportError(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 105
    :cond_1
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_endOfInput:Z

    if-eqz v0, :cond_2

    const-string v0, "Already closed, can not feed more input"

    .line 106
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_reportError(Ljava/lang/String;)V

    .line 109
    :cond_2
    iget-wide v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currInputProcessed:J

    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_origBufferLen:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currInputProcessed:J

    .line 112
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currInputRowStart:I

    sub-int/2addr v0, v1

    sub-int v0, p2, v0

    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currInputRowStart:I

    .line 115
    iput p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currBufferStart:I

    .line 116
    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    .line 117
    iput p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    .line 118
    iput p3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    sub-int/2addr p3, p2

    .line 119
    iput p3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_origBufferLen:I

    return-void
.end method

.method public getNonBlockingInputFeeder()Lcom/fasterxml/jackson/core/async/ByteArrayFeeder;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic getNonBlockingInputFeeder()Lcom/fasterxml/jackson/core/async/NonBlockingInputFeeder;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->getNonBlockingInputFeeder()Lcom/fasterxml/jackson/core/async/ByteArrayFeeder;

    move-result-object v0

    return-object v0
.end method

.method public final needMoreInput()Z
    .locals 2

    .line 91
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_endOfInput:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public nextToken()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_3

    .line 173
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_closed:Z

    if-eqz v0, :cond_0

    return-object v2

    .line 177
    :cond_0
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_endOfInput:Z

    if-eqz v0, :cond_2

    .line 180
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    .line 181
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishTokenWithEOF()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 183
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_eofAsNextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 185
    :cond_2
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 188
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_4

    .line 189
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_finishToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    :cond_4
    const/4 v0, 0x0

    .line 193
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_numTypesValid:I

    .line 194
    iget-wide v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_currInputProcessed:J

    iget v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    int-to-long v3, v3

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_tokenInputTotal:J

    .line 196
    iput-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_binaryValue:[B

    .line 197
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 199
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_majorState:I

    packed-switch v1, :pswitch_data_0

    .line 222
    invoke-static {}, Lcom/fasterxml/jackson/core/util/VersionUtil;->throwInternal()V

    return-object v2

    .line 218
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startValueExpectComma(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 215
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startValue(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 212
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startValueExpectColon(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 209
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startFieldNameAfterComma(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 207
    :pswitch_4
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startFieldName(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 204
    :pswitch_5
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startValue(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 201
    :pswitch_6
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_startDocument(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public releaseBuffered(Ljava/io/OutputStream;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputEnd:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    .line 148
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParser;->_inputPtr:I

    invoke-virtual {p1, v1, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    :cond_0
    return v0
.end method
