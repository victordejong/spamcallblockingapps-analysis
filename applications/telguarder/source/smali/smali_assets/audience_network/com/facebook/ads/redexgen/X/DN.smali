.class public final Lcom/facebook/ads/redexgen/X/DN;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/V0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CsdBuffer"
.end annotation


# static fields
.field public static A04:[Ljava/lang/String;

.field public static final A05:[B


# instance fields
.field public A00:I

.field public A01:I

.field public A02:[B

.field public A03:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 26913
    invoke-static {}, Lcom/facebook/ads/redexgen/X/DN;->A00()V

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/DN;->A05:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 26914
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26915
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DN;->A02:[B

    .line 26916
    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "vLklGHhwNvM4oNf8HwuyblOqgVKdX6is"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "j8axqw7EtbUeKpwgbNzkGQ0aWtwtkbnb"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Fx7gu3byxmc542SFXIR1m"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "QVEhmLhfVfetQiYhTcoEeOFIpS7LHW5P"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "qdfBKv0GSvrIdiOjyWNln5TwkPocE9oK"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "bJxZB6HkymZymFZLZPVoCq0uz2GZObmN"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "bQ08eHC1tzQarR"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "i0u1b2EqTKyuc3d29HoUvW20e4Z0kzSq"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/DN;->A04:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A01()V
    .locals 1

    .line 26917
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DN;->A03:Z

    .line 26918
    iput v0, p0, Lcom/facebook/ads/redexgen/X/DN;->A00:I

    .line 26919
    iput v0, p0, Lcom/facebook/ads/redexgen/X/DN;->A01:I

    .line 26920
    return-void
.end method

.method public final A02([BII)V
    .locals 4

    .line 26921
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DN;->A03:Z

    if-nez v0, :cond_0

    .line 26922
    return-void

    .line 26923
    :cond_0
    sub-int/2addr p3, p2

    .line 26924
    .local p0, "readLength":I
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/DN;->A02:[B

    array-length v2, v3

    iget v1, p0, Lcom/facebook/ads/redexgen/X/DN;->A00:I

    add-int v0, v1, p3

    if-ge v2, v0, :cond_1

    .line 26925
    add-int/2addr v1, p3

    mul-int/lit8 v0, v1, 0x2

    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DN;->A02:[B

    .line 26926
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DN;->A02:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/DN;->A00:I

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26927
    iget v0, p0, Lcom/facebook/ads/redexgen/X/DN;->A00:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/DN;->A00:I

    .line 26928
    return-void
.end method

.method public final A03(II)Z
    .locals 6

    .line 26929
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DN;->A03:Z

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 26930
    iget v0, p0, Lcom/facebook/ads/redexgen/X/DN;->A00:I

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/DN;->A00:I

    .line 26931
    iget v0, p0, Lcom/facebook/ads/redexgen/X/DN;->A01:I

    if-nez v0, :cond_4

    const/16 v0, 0xb5

    if-ne p1, v0, :cond_4

    .line 26932
    iget v4, p0, Lcom/facebook/ads/redexgen/X/DN;->A00:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/DN;->A04:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/DN;->A04:[Ljava/lang/String;

    const-string v1, "U0jp54uZbtT0vMNhJ12ijSeBKyG01O1T"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    iput v4, p0, Lcom/facebook/ads/redexgen/X/DN;->A01:I

    .line 26933
    :cond_0
    :goto_0
    sget-object v1, Lcom/facebook/ads/redexgen/X/DN;->A05:[B

    array-length v0, v1

    invoke-virtual {p0, v1, v3, v0}, Lcom/facebook/ads/redexgen/X/DN;->A02([BII)V

    .line 26934
    return v3

    .line 26935
    :cond_1
    const/16 v5, 0xb3

    sget-object v2, Lcom/facebook/ads/redexgen/X/DN;->A04:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/DN;->A04:[Ljava/lang/String;

    const-string v1, "Gwo6Xs8oEjvPrIGoX8oUylFUljgmrcWV"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "9iZwyLMlyvSaOqh8Ci55b0bgsJfPYbEO"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-ne p1, v5, :cond_0

    .line 26936
    :goto_1
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/DN;->A03:Z

    goto :goto_0

    :cond_2
    if-ne p1, v5, :cond_0

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 26937
    :cond_4
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/DN;->A03:Z

    .line 26938
    return v4
.end method
