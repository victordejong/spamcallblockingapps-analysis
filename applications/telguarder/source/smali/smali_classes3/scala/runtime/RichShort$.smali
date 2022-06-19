.class public final Lscala/runtime/RichShort$;
.super Ljava/lang/Object;
.source "RichShort.scala"


# static fields
.field public static final MODULE$:Lscala/runtime/RichShort$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/runtime/RichShort$;

    invoke-direct {v0}, Lscala/runtime/RichShort$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/runtime/RichShort$;->MODULE$:Lscala/runtime/RichShort$;

    return-void
.end method


# virtual methods
.method public final abs$extension(S)S
    .locals 1

    .line 26
    sget-object v0, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    invoke-virtual {v0, p1}, Lscala/math/package$;->abs(I)I

    move-result p1

    int-to-short p1, p1

    return p1
.end method

.method public final byteValue$extension(S)B
    .locals 0

    int-to-byte p1, p1

    return p1
.end method

.method public final doubleValue$extension(S)D
    .locals 2

    int-to-double v0, p1

    return-wide v0
.end method

.method public final equals$extension(SLjava/lang/Object;)Z
    .locals 3

    .line 13
    instance-of v0, p2, Lscala/runtime/RichShort;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    check-cast p2, Lscala/runtime/RichShort;

    invoke-virtual {p2}, Lscala/runtime/RichShort;->self()S

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

.method public final floatValue$extension(S)F
    .locals 0

    int-to-float p1, p1

    return p1
.end method

.method public final hashCode$extension(S)I
    .locals 0

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToShort(S)Ljava/lang/Short;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    return p1
.end method

.method public final intValue$extension(S)I
    .locals 0

    return p1
.end method

.method public final isValidShort$extension(S)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final longValue$extension(S)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final max$extension(SS)S
    .locals 1

    .line 27
    sget-object v0, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    invoke-virtual {v0, p1, p2}, Lscala/math/package$;->max(II)I

    move-result p1

    int-to-short p1, p1

    return p1
.end method

.method public final min$extension(SS)S
    .locals 1

    .line 28
    sget-object v0, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    invoke-virtual {v0, p1, p2}, Lscala/math/package$;->min(II)I

    move-result p1

    int-to-short p1, p1

    return p1
.end method

.method public final num$extension(S)Lscala/math/Numeric$ShortIsIntegral$;
    .locals 0

    .line 14
    sget-object p1, Lscala/math/Numeric$ShortIsIntegral$;->MODULE$:Lscala/math/Numeric$ShortIsIntegral$;

    return-object p1
.end method

.method public final ord$extension(S)Lscala/math/Ordering$Short$;
    .locals 0

    .line 15
    sget-object p1, Lscala/math/Ordering$Short$;->MODULE$:Lscala/math/Ordering$Short$;

    return-object p1
.end method

.method public final shortValue$extension(S)S
    .locals 0

    return p1
.end method

.method public final signum$extension(S)I
    .locals 1

    .line 29
    sget-object v0, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    invoke-virtual {v0, p1}, Lscala/math/package$;->signum(I)I

    move-result p1

    return p1
.end method
