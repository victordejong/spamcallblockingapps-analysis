.class public Lorg/bouncycastle/crypto/modes/gcm/Tables1kGCMExponentiator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/bouncycastle/crypto/modes/gcm/GCMExponentiator;


# instance fields
.field public lookupPowX2:[[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    new-array v0, v0, [[B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables1kGCMExponentiator;->lookupPowX2:[[B

    return-void
.end method


# virtual methods
.method public exponentiateX(J[B)V
    .locals 8

    invoke-static {}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->oneAsBytes()[B

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    const-wide/16 v3, 0x0

    cmp-long v5, p1, v3

    if-lez v5, :cond_1

    const-wide/16 v5, 0x1

    and-long/2addr v5, p1

    cmp-long v7, v5, v3

    if-eqz v7, :cond_0

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables1kGCMExponentiator;->lookupPowX2:[[B

    aget-object v3, v3, v2

    invoke-static {v0, v3}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->multiply([B[B)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    ushr-long/2addr p1, v1

    goto :goto_0

    :cond_1
    const/16 p1, 0x10

    const/4 p2, 0x0

    invoke-static {v0, p2, p3, p2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public init([B)V
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables1kGCMExponentiator;->lookupPowX2:[[B

    const/16 v1, 0x10

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-object v1, v0, v2

    aget-object v1, v0, v2

    const/16 v3, -0x80

    aput-byte v3, v1, v2

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    :goto_0
    const/16 v0, 0x40

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables1kGCMExponentiator;->lookupPowX2:[[B

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    invoke-static {v0, v0}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->multiply([B[B)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables1kGCMExponentiator;->lookupPowX2:[[B

    aput-object v0, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
