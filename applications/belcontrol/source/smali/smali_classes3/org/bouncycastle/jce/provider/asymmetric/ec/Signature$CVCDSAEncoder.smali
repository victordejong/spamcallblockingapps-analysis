.class public Lorg/bouncycastle/jce/provider/asymmetric/ec/Signature$CVCDSAEncoder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/bouncycastle/jce/provider/DSAEncoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jce/provider/asymmetric/ec/Signature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CVCDSAEncoder"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/bouncycastle/jce/provider/asymmetric/ec/Signature$1;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/jce/provider/asymmetric/ec/Signature$CVCDSAEncoder;-><init>()V

    return-void
.end method

.method private makeUnsigned(Ljava/math/BigInteger;)[B
    .locals 4

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    const/4 v0, 0x0

    aget-byte v1, p1, v0

    if-nez v1, :cond_0

    array-length v1, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    new-array v3, v1, [B

    invoke-static {p1, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3

    :cond_0
    return-object p1
.end method


# virtual methods
.method public decode([B)[Ljava/math/BigInteger;
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/math/BigInteger;

    array-length v2, p1

    div-int/2addr v2, v0

    new-array v3, v2, [B

    array-length v4, p1

    div-int/2addr v4, v0

    new-array v0, v4, [B

    const/4 v5, 0x0

    invoke-static {p1, v5, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1, v2, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {p1, v2, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object p1, v1, v5

    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object p1, v1, v2

    return-object v1
.end method

.method public encode(Ljava/math/BigInteger;Ljava/math/BigInteger;)[B
    .locals 4

    invoke-direct {p0, p1}, Lorg/bouncycastle/jce/provider/asymmetric/ec/Signature$CVCDSAEncoder;->makeUnsigned(Ljava/math/BigInteger;)[B

    move-result-object p1

    invoke-direct {p0, p2}, Lorg/bouncycastle/jce/provider/asymmetric/ec/Signature$CVCDSAEncoder;->makeUnsigned(Ljava/math/BigInteger;)[B

    move-result-object p2

    array-length v0, p1

    array-length v1, p2

    if-le v0, v1, :cond_0

    array-length v0, p1

    goto :goto_0

    :cond_0
    array-length v0, p2

    :goto_0
    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    array-length v1, v0

    div-int/lit8 v1, v1, 0x2

    array-length v2, p1

    sub-int/2addr v1, v2

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, v0

    array-length v1, p2

    sub-int/2addr p1, v1

    array-length v1, p2

    invoke-static {p2, v3, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method
