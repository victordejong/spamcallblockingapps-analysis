.class public final Lcom/facebook/ads/redexgen/X/3f;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/av;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdateOp"
.end annotation


# static fields
.field public static A04:[B

.field public static A05:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/3f;->A03()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/3f;->A02()V

    return-void
.end method

.method public constructor <init>(IIILjava/lang/Object;)V
    .locals 0

    .line 9708
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9709
    iput p1, p0, Lcom/facebook/ads/redexgen/X/3f;->A00:I

    .line 9710
    iput p2, p0, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    .line 9711
    iput p3, p0, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    .line 9712
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/3f;->A03:Ljava/lang/Object;

    .line 9713
    return-void
.end method

.method private final A00()Ljava/lang/String;
    .locals 5

    .line 9714
    iget v1, p0, Lcom/facebook/ads/redexgen/X/3f;->A00:I

    const/4 v0, 0x1

    if-eq v1, v0, :cond_3

    const/4 v0, 0x2

    if-eq v1, v0, :cond_2

    const/4 v0, 0x4

    if-eq v1, v0, :cond_1

    const/16 v0, 0x8

    if-eq v1, v0, :cond_0

    .line 9715
    const/4 v2, 0x6

    const/4 v1, 0x2

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3f;->A01(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 9716
    :cond_0
    const/16 v2, 0xf

    const/4 v1, 0x2

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3f;->A01(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 9717
    :cond_1
    const/16 v2, 0x13

    const/4 v1, 0x2

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3f;->A01(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 9718
    :cond_2
    const/16 v2, 0x11

    const/4 v1, 0x2

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3f;->A01(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 9719
    :cond_3
    const/16 v4, 0xa

    const/4 v3, 0x3

    sget-object v2, Lcom/facebook/ads/redexgen/X/3f;->A05:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/3f;->A05:[Ljava/lang/String;

    const-string v1, "8BT0wRwkKfbK9G7rJlxgqm9KnmSw4FpD"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "vqb0nGZbfIZlj6n4MBwBLHuuLvs2LIfN"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const/16 v0, 0x41

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/3f;->A01(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/3f;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x64

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x15

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/3f;->A04:[B

    return-void

    :array_0
    .array-data 1
        -0x1dt
        0x27t
        -0xft
        -0x2et
        0x19t
        -0x20t
        -0x3at
        -0x3at
        -0x11t
        0x28t
        0x6t
        0x9t
        0x9t
        -0x23t
        -0x4ct
        0x14t
        0x1dt
        0x30t
        0x2bt
        -0x24t
        -0x29t
    .end array-data
.end method

.method public static A03()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "GNWywdqaSGdGuWDkrOak4cdK9a16uTtK"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "HPnKjYdOTxGBmlqyAd1Wu6D8RcZhhH"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "L1PYIte6IjeN4a5pL6PGG2PQBZO"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "RZkjiACfn9"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "PlUGkUZnWy"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "axU0DQkWXMAqv5IATNIKDXdjx93hKj4k"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "rAdSnZwVU8"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "FGc0kODFXoSnPncXeCmZI2cKpWBbXyX8"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/3f;->A05:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 9720
    const/4 v2, 0x1

    if-ne p0, p1, :cond_0

    .line 9721
    return v2

    .line 9722
    :cond_0
    const/4 v3, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v1, v0, :cond_2

    .line 9723
    .end local v2
    :cond_1
    return v3

    .line 9724
    :cond_2
    check-cast p1, Lcom/facebook/ads/redexgen/X/3f;

    .line 9725
    .local v2, "op":Lcom/facebook/ads/redexgen/X/3f;
    iget v1, p0, Lcom/facebook/ads/redexgen/X/3f;->A00:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/3f;->A00:I

    if-eq v1, v0, :cond_3

    .line 9726
    return v3

    .line 9727
    :cond_3
    const/16 v0, 0x8

    if-ne v1, v0, :cond_4

    iget v1, p0, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    sub-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 9728
    iget v1, p0, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    if-ne v1, v0, :cond_4

    iget v1, p0, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    if-ne v1, v0, :cond_4

    .line 9729
    return v2

    .line 9730
    :cond_4
    iget v1, p0, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    if-eq v1, v0, :cond_5

    .line 9731
    return v3

    .line 9732
    :cond_5
    iget v1, p0, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    if-eq v1, v0, :cond_6

    .line 9733
    return v3

    .line 9734
    :cond_6
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3f;->A03:Ljava/lang/Object;

    if-eqz v1, :cond_7

    .line 9735
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/3f;->A03:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 9736
    return v3

    .line 9737
    :cond_7
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/3f;->A03:Ljava/lang/Object;

    if-eqz v0, :cond_8

    .line 9738
    return v3

    .line 9739
    :cond_8
    return v2
.end method

.method public final hashCode()I
    .locals 2

    .line 9740
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3f;->A00:I

    .line 9741
    .local p0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    add-int/2addr v1, v0

    .line 9742
    .end local p0    # "result":I
    .local v0, "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    add-int/2addr v1, v0

    .line 9743
    .end local v0    # "result":I
    .restart local p0    # "result":I
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 9744
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x8

    const/4 v1, 0x1

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3f;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9745
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3f;->A00()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    const/4 v1, 0x3

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3f;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0xd

    const/4 v1, 0x2

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3f;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v1, 0x3

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3f;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3f;->A03:Ljava/lang/Object;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x9

    const/4 v1, 0x1

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3f;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9746
    return-object v0
.end method
