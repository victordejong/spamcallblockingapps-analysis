.class public final Lcom/facebook/ads/redexgen/X/Ik;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;


# instance fields
.field public final A00:I

.field public final A01:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ik;->A03()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ik;->A02()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;I)V"
        }
    .end annotation

    .line 39042
    .local p1, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39043
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ik;->A01:Ljava/util/List;

    .line 39044
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Ik;->A00:I

    .line 39045
    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/IM;)Lcom/facebook/ads/redexgen/X/Ik;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation

    .line 39046
    const/16 v0, 0x15

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 39047
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    and-int/lit8 v12, v0, 0x3

    .line 39048
    .local p0, "lengthSizeMinusOne":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v10

    .line 39049
    .local v0, "numberOfArrays":I
    const/4 v9, 0x0

    .line 39050
    .local v0, "csdLength":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v5

    .line 39051
    .local v12, "csdStartPosition":I
    const/4 v4, 0x0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .local v10, "i":I
    :goto_0
    const/4 v8, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ik;->A03:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x5

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ik;->A03:[Ljava/lang/String;

    const-string v1, "TGY1ifO6LAlxmP"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-ge v4, v10, :cond_1

    .line 39052
    :try_start_1
    invoke-virtual {p0, v8}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 39053
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0J()I

    move-result v3

    .line 39054
    .local v9, "numberOfNalUnits":I
    const/4 v2, 0x0

    .local v5, "j":I
    :goto_1
    if-ge v2, v3, :cond_0

    .line 39055
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0J()I

    move-result v1

    .line 39056
    .local v4, "nalUnitLength":I
    add-int/lit8 v0, v1, 0x4

    add-int/2addr v9, v0

    .line 39057
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 39058
    .end local v4    # "nalUnitLength":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 39059
    .end local v9    # "numberOfNalUnits":I
    .end local v5    # "j":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 39060
    .end local v10    # "i":I
    :cond_1
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 39061
    new-array v7, v9, [B

    .line 39062
    .local v10, "buffer":[B
    const/4 v6, 0x0

    .line 39063
    .local v5, "bufferPosition":I
    const/4 v5, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v5, v10, :cond_3

    .line 39064
    invoke-virtual {p0, v8}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 39065
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0J()I

    move-result v4

    .line 39066
    .local v8, "numberOfNalUnits":I
    const/4 v3, 0x0

    .local v1, "j":I
    :goto_3
    if-ge v3, v4, :cond_2

    .line 39067
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0J()I

    move-result v2

    .line 39068
    .local v0, "nalUnitLength":I
    sget-object v11, Lcom/facebook/ads/redexgen/X/II;->A03:[B

    const/4 v1, 0x0

    sget-object v0, Lcom/facebook/ads/redexgen/X/II;->A03:[B

    array-length v0, v0

    invoke-static {v11, v1, v7, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39069
    sget-object v0, Lcom/facebook/ads/redexgen/X/II;->A03:[B

    array-length v0, v0

    add-int/2addr v6, v0

    .line 39070
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v0

    invoke-static {v1, v0, v7, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39071
    add-int/2addr v6, v2

    .line 39072
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 39073
    .end local v0    # "nalUnitLength":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 39074
    .end local v8    # "numberOfNalUnits":I
    .end local v1    # "j":I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 39075
    .end local v4    # "i":I
    :cond_3
    if-nez v9, :cond_4

    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 39076
    :goto_4
    add-int/lit8 v1, v12, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ik;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Ik;-><init>(Ljava/util/List;I)V

    return-object v0
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 39077
    .end local p0    # "lengthSizeMinusOne":I
    .end local v0
    .end local v0
    .end local v12    # "csdStartPosition":I
    .end local v10    # "buffer":[B
    .end local v9
    .end local v5    # "bufferPosition":I
    :catch_0
    move-exception v3

    .line 39078
    .local p0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const/4 v2, 0x0

    const/16 v1, 0x19

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ik;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ik;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x57

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

    const/16 v0, 0x19

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ik;->A02:[B

    return-void

    :array_0
    .array-data 1
        -0x4at
        -0x1dt
        -0x1dt
        -0x20t
        -0x1dt
        -0x6ft
        -0x1ft
        -0x2et
        -0x1dt
        -0x1ct
        -0x26t
        -0x21t
        -0x28t
        -0x6ft
        -0x47t
        -0x4at
        -0x39t
        -0x4ct
        -0x6ft
        -0x2ct
        -0x20t
        -0x21t
        -0x29t
        -0x26t
        -0x28t
    .end array-data
.end method

.method public static A03()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "JXLGv6DWCnoau8e8p5jktkydhr1X1Tjh"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "hrVIvbUemeqc7n0qfqu3gmBkyU6NzcRL"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "RlLjMz7ZoZ3hRS"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "le7do8NO1mQF3XF5W7CDYCEbqQN5lF"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "MhBS7loPR1rh61j"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "knGYgRNNgfCmRBP8uJ"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "vdVcvjfLqT2GD6gvh"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "D57JyvHv4MtAgKAMSnKrUmatgfeS4J6m"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ik;->A03:[Ljava/lang/String;

    return-void
.end method
