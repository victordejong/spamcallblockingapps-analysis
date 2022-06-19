.class public final Lscala/runtime/RichByte$;
.super Ljava/lang/Object;
.source "RichByte.scala"


# static fields
.field public static final MODULE$:Lscala/runtime/RichByte$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/runtime/RichByte$;

    invoke-direct {v0}, Lscala/runtime/RichByte$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/runtime/RichByte$;->MODULE$:Lscala/runtime/RichByte$;

    return-void
.end method


# virtual methods
.method public final abs$extension(B)B
    .locals 1

    .line 26
    sget-object v0, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    invoke-virtual {v0, p1}, Lscala/math/package$;->abs(I)I

    move-result p1

    int-to-byte p1, p1

    return p1
.end method

.method public final byteValue$extension(B)B
    .locals 0

    return p1
.end method

.method public final doubleValue$extension(B)D
    .locals 2

    int-to-double v0, p1

    return-wide v0
.end method

.method public final equals$extension(BLjava/lang/Object;)Z
    .locals 3

    .line 13
    instance-of v0, p2, Lscala/runtime/RichByte;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    check-cast p2, Lscala/runtime/RichByte;

    invoke-virtual {p2}, Lscala/runtime/RichByte;->self()B

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

.method public final floatValue$extension(B)F
    .locals 0

    int-to-float p1, p1

    return p1
.end method

.method public final hashCode$extension(B)I
    .locals 0

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToByte(B)Ljava/lang/Byte;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    return p1
.end method

.method public final intValue$extension(B)I
    .locals 0

    return p1
.end method

.method public final isValidByte$extension(B)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final longValue$extension(B)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final max$extension(BB)B
    .locals 1

    .line 27
    sget-object v0, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    invoke-virtual {v0, p1, p2}, Lscala/math/package$;->max(II)I

    move-result p1

    int-to-byte p1, p1

    return p1
.end method

.method public final min$extension(BB)B
    .locals 1

    .line 28
    sget-object v0, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    invoke-virtual {v0, p1, p2}, Lscala/math/package$;->min(II)I

    move-result p1

    int-to-byte p1, p1

    return p1
.end method

.method public final num$extension(B)Lscala/math/Numeric$ByteIsIntegral$;
    .locals 0

    .line 14
    sget-object p1, Lscala/math/Numeric$ByteIsIntegral$;->MODULE$:Lscala/math/Numeric$ByteIsIntegral$;

    return-object p1
.end method

.method public final ord$extension(B)Lscala/math/Ordering$Byte$;
    .locals 0

    .line 15
    sget-object p1, Lscala/math/Ordering$Byte$;->MODULE$:Lscala/math/Ordering$Byte$;

    return-object p1
.end method

.method public final shortValue$extension(B)S
    .locals 0

    return p1
.end method

.method public final signum$extension(B)I
    .locals 1

    .line 29
    sget-object v0, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    invoke-virtual {v0, p1}, Lscala/math/package$;->signum(I)I

    move-result p1

    return p1
.end method
