.class public final Lscala/runtime/RichChar$;
.super Ljava/lang/Object;
.source "RichChar.scala"


# static fields
.field public static final MODULE$:Lscala/runtime/RichChar$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/runtime/RichChar$;

    invoke-direct {v0}, Lscala/runtime/RichChar$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/runtime/RichChar$;->MODULE$:Lscala/runtime/RichChar$;

    return-void
.end method


# virtual methods
.method public final abs$extension(C)C
    .locals 0

    return p1
.end method

.method public final asDigit$extension(C)I
    .locals 1

    const/16 v0, 0x24

    .line 33
    invoke-static {p1, v0}, Ljava/lang/Character;->digit(CI)I

    move-result p1

    return p1
.end method

.method public final byteValue$extension(C)B
    .locals 0

    int-to-byte p1, p1

    return p1
.end method

.method public final doubleValue$extension(C)D
    .locals 2

    int-to-double v0, p1

    return-wide v0
.end method

.method public final equals$extension(CLjava/lang/Object;)Z
    .locals 3

    .line 15
    instance-of v0, p2, Lscala/runtime/RichChar;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    check-cast p2, Lscala/runtime/RichChar;

    invoke-virtual {p2}, Lscala/runtime/RichChar;->self()C

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public final floatValue$extension(C)F
    .locals 0

    int-to-float p1, p1

    return p1
.end method

.method public final getDirectionality$extension(C)B
    .locals 0

    .line 59
    invoke-static {p1}, Ljava/lang/Character;->getDirectionality(C)B

    move-result p1

    return p1
.end method

.method public final getNumericValue$extension(C)I
    .locals 0

    .line 58
    invoke-static {p1}, Ljava/lang/Character;->getNumericValue(C)I

    move-result p1

    return p1
.end method

.method public final getType$extension(C)I
    .locals 0

    .line 57
    invoke-static {p1}, Ljava/lang/Character;->getType(C)I

    move-result p1

    return p1
.end method

.method public final hashCode$extension(C)I
    .locals 0

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToCharacter(C)Ljava/lang/Character;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    return p1
.end method

.method public final intValue$extension(C)I
    .locals 0

    return p1
.end method

.method public final isControl$extension(C)Z
    .locals 0

    .line 35
    invoke-static {p1}, Ljava/lang/Character;->isISOControl(C)Z

    move-result p1

    return p1
.end method

.method public final isDigit$extension(C)Z
    .locals 0

    .line 36
    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    move-result p1

    return p1
.end method

.method public final isHighSurrogate$extension(C)Z
    .locals 0

    .line 41
    invoke-static {p1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result p1

    return p1
.end method

.method public final isIdentifierIgnorable$extension(C)Z
    .locals 0

    .line 46
    invoke-static {p1}, Ljava/lang/Character;->isIdentifierIgnorable(C)Z

    move-result p1

    return p1
.end method

.method public final isLetter$extension(C)Z
    .locals 0

    .line 37
    invoke-static {p1}, Ljava/lang/Character;->isLetter(C)Z

    move-result p1

    return p1
.end method

.method public final isLetterOrDigit$extension(C)Z
    .locals 0

    .line 38
    invoke-static {p1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result p1

    return p1
.end method

.method public final isLowSurrogate$extension(C)Z
    .locals 0

    .line 42
    invoke-static {p1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result p1

    return p1
.end method

.method public final isLower$extension(C)Z
    .locals 0

    .line 49
    invoke-static {p1}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result p1

    return p1
.end method

.method public final isMirrored$extension(C)Z
    .locals 0

    .line 47
    invoke-static {p1}, Ljava/lang/Character;->isMirrored(C)Z

    move-result p1

    return p1
.end method

.method public final isSpaceChar$extension(C)Z
    .locals 0

    .line 40
    invoke-static {p1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result p1

    return p1
.end method

.method public final isSurrogate$extension(C)Z
    .locals 1

    invoke-virtual {p0, p1}, Lscala/runtime/RichChar$;->isHighSurrogate$extension(C)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lscala/runtime/RichChar$;->isLowSurrogate$extension(C)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final isTitleCase$extension(C)Z
    .locals 0

    .line 51
    invoke-static {p1}, Ljava/lang/Character;->isTitleCase(C)Z

    move-result p1

    return p1
.end method

.method public final isUnicodeIdentifierPart$extension(C)Z
    .locals 0

    .line 45
    invoke-static {p1}, Ljava/lang/Character;->isUnicodeIdentifierPart(C)Z

    move-result p1

    return p1
.end method

.method public final isUnicodeIdentifierStart$extension(C)Z
    .locals 0

    .line 44
    invoke-static {p1}, Ljava/lang/Character;->isUnicodeIdentifierStart(C)Z

    move-result p1

    return p1
.end method

.method public final isUpper$extension(C)Z
    .locals 0

    .line 50
    invoke-static {p1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result p1

    return p1
.end method

.method public final isValidChar$extension(C)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final isWhitespace$extension(C)Z
    .locals 0

    .line 39
    invoke-static {p1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result p1

    return p1
.end method

.method public final longValue$extension(C)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final max$extension(CC)C
    .locals 1

    .line 29
    sget-object v0, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    invoke-virtual {v0, p1, p2}, Lscala/math/package$;->max(II)I

    move-result p1

    int-to-char p1, p1

    return p1
.end method

.method public final min$extension(CC)C
    .locals 1

    .line 30
    sget-object v0, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    invoke-virtual {v0, p1, p2}, Lscala/math/package$;->min(II)I

    move-result p1

    int-to-char p1, p1

    return p1
.end method

.method public final num$extension(C)Lscala/math/Numeric$CharIsIntegral$;
    .locals 0

    .line 16
    sget-object p1, Lscala/math/Numeric$CharIsIntegral$;->MODULE$:Lscala/math/Numeric$CharIsIntegral$;

    return-object p1
.end method

.method public final ord$extension(C)Lscala/math/Ordering$Char$;
    .locals 0

    .line 17
    sget-object p1, Lscala/math/Ordering$Char$;->MODULE$:Lscala/math/Ordering$Char$;

    return-object p1
.end method

.method public final reverseBytes$extension(C)C
    .locals 0

    .line 60
    invoke-static {p1}, Ljava/lang/Character;->reverseBytes(C)C

    move-result p1

    return p1
.end method

.method public final shortValue$extension(C)S
    .locals 0

    int-to-short p1, p1

    return p1
.end method

.method public final signum$extension(C)I
    .locals 1

    .line 31
    sget-object v0, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    invoke-virtual {v0, p1}, Lscala/math/package$;->signum(I)I

    move-result p1

    return p1
.end method

.method public final toLower$extension(C)C
    .locals 0

    .line 53
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    return p1
.end method

.method public final toTitleCase$extension(C)C
    .locals 0

    .line 55
    invoke-static {p1}, Ljava/lang/Character;->toTitleCase(C)C

    move-result p1

    return p1
.end method

.method public final toUpper$extension(C)C
    .locals 0

    .line 54
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p1

    return p1
.end method
