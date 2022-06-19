.class public final Lcom/google/common/b/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(J)Ljava/lang/String;
    .locals 11

    const/4 v0, 0x1

    const-string v1, "radix (%s) must be between Character.MIN_RADIX and Character.MAX_RADIX"

    const/16 v2, 0xa

    .line 1457
    invoke-static {v0, v1, v2}, Lcom/google/common/base/m;->a(ZLjava/lang/String;I)V

    const-wide/16 v3, 0x0

    cmp-long v1, p0, v3

    if-nez v1, :cond_0

    const-string p0, "0"

    return-object p0

    :cond_0
    if-lez v1, :cond_1

    .line 1465
    invoke-static {p0, p1, v2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 v1, 0x40

    new-array v1, v1, [C

    ushr-long v5, p0, v0

    const-wide/16 v7, 0x5

    .line 1483
    div-long/2addr v5, v7

    const-wide/16 v7, 0xa

    mul-long v9, v5, v7

    sub-long/2addr p0, v9

    long-to-int p1, p0

    .line 1488
    invoke-static {p1, v2}, Ljava/lang/Character;->forDigit(II)C

    move-result p0

    const/16 p1, 0x3f

    aput-char p0, v1, p1

    :goto_0
    cmp-long p0, v5, v3

    if-lez p0, :cond_2

    add-int/lit8 p1, p1, -0x1

    .line 1492
    rem-long v9, v5, v7

    long-to-int p0, v9

    invoke-static {p0, v2}, Ljava/lang/Character;->forDigit(II)C

    move-result p0

    aput-char p0, v1, p1

    .line 1493
    div-long/2addr v5, v7

    goto :goto_0

    .line 1497
    :cond_2
    new-instance p0, Ljava/lang/String;

    rsub-int/lit8 v0, p1, 0x40

    invoke-direct {p0, v1, p1, v0}, Ljava/lang/String;-><init>([CII)V

    return-object p0
.end method
