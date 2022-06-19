.class public final Lscala/collection/mutable/HashTable$;
.super Ljava/lang/Object;
.source "HashTable.scala"


# static fields
.field public static final MODULE$:Lscala/collection/mutable/HashTable$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/mutable/HashTable$;

    invoke-direct {v0}, Lscala/collection/mutable/HashTable$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/mutable/HashTable$;->MODULE$:Lscala/collection/mutable/HashTable$;

    return-void
.end method


# virtual methods
.method public final capacity(I)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 402
    :cond_0
    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashTable$;->powerOfTwo(I)I

    move-result p1

    :goto_0
    return p1
.end method

.method public final defaultLoadFactor()I
    .locals 1

    const/16 v0, 0x2ee

    return v0
.end method

.method public final loadFactorDenum()I
    .locals 1

    const/16 v0, 0x3e8

    return v0
.end method

.method public final newThreshold(II)I
    .locals 2

    int-to-long v0, p2

    int-to-long p1, p1

    mul-long v0, v0, p1

    .line 398
    invoke-virtual {p0}, Lscala/collection/mutable/HashTable$;->loadFactorDenum()I

    move-result p1

    int-to-long p1, p1

    div-long/2addr v0, p1

    long-to-int p1, v0

    return p1
.end method

.method public powerOfTwo(I)I
    .locals 1

    add-int/lit8 p1, p1, -0x1

    ushr-int/lit8 v0, p1, 0x1

    or-int/2addr p1, v0

    ushr-int/lit8 v0, p1, 0x2

    or-int/2addr p1, v0

    ushr-int/lit8 v0, p1, 0x4

    or-int/2addr p1, v0

    ushr-int/lit8 v0, p1, 0x8

    or-int/2addr p1, v0

    ushr-int/lit8 v0, p1, 0x10

    or-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final sizeForThreshold(II)I
    .locals 4

    int-to-long v0, p2

    .line 400
    invoke-virtual {p0}, Lscala/collection/mutable/HashTable$;->loadFactorDenum()I

    move-result p2

    int-to-long v2, p2

    mul-long v0, v0, v2

    int-to-long p1, p1

    div-long/2addr v0, p1

    long-to-int p1, v0

    return p1
.end method
