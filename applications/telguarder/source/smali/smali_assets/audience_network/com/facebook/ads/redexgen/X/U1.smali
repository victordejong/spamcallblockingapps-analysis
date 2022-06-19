.class public final Lcom/facebook/ads/redexgen/X/U1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/HI;


# static fields
.field public static A03:[B

.field public static A04:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/redexgen/X/HM;

.field public A02:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/U1;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/U1;->A01()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 55651
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/U1;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x4b

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x6a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/U1;->A03:[B

    return-void

    :array_0
    .array-data 1
        0x38t
        0x4et
        0x17t
        0x14t
        0x6t
        0x10t
        0x43t
        0x41t
        0xbt
        0x3ct
        0x3ct
        0x21t
        0x3ct
        0x6et
        0x39t
        0x26t
        0x27t
        0x22t
        0x2bt
        0x6et
        0x3et
        0x2ft
        0x3ct
        0x3dt
        0x27t
        0x20t
        0x29t
        0x6et
        0xct
        0x2ft
        0x3dt
        0x2bt
        0x78t
        0x7at
        0x6et
        0x2bt
        0x20t
        0x2dt
        0x21t
        0x2at
        0x2bt
        0x2at
        0x6et
        0x3dt
        0x3at
        0x3ct
        0x27t
        0x20t
        0x29t
        0x74t
        0x6et
        0x58t
        0x5et
        0x20t
        0x4ct
        0x5et
        0x4et
        0x44t
        0x44t
        0xdt
        0x36t
        0x3dt
        0x20t
        0x28t
        0x3dt
        0x3bt
        0x2ct
        0x3dt
        0x3ct
        0x78t
        0xdt
        0xat
        0x11t
        0x78t
        0x3et
        0x37t
        0x2at
        0x35t
        0x39t
        0x2ct
        0x62t
        0x78t
        0x26t
        0x1dt
        0x0t
        0x6t
        0x3t
        0x3t
        0x1ct
        0x1t
        0x7t
        0x16t
        0x17t
        0x53t
        0x0t
        0x10t
        0x1bt
        0x16t
        0x1et
        0x16t
        0x49t
        0x53t
        0x42t
        0x47t
        0x52t
        0x47t
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "vsucJ6sMI7NmnUYF7A"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "oMpR"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "HMvn8xKCs9jkgFP4JPwhuD9q9UYWiBg6"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "RQhUig2OMmYOoDOR8eBINyJqJOwET8Dp"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "TpsfU2rC7sqjSUdta3L9rlOINQRH3C9W"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "6jfAQg"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "8BJMdRg69nxaQa2F2fIYJ9REOkEPtuoy"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "qAM7J7djFokGz"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/U1;->A04:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A7T()Landroid/net/Uri;
    .locals 1

    .line 55652
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U1;->A01:Lcom/facebook/ads/redexgen/X/HM;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/HM;->A04:Landroid/net/Uri;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final ACC(Lcom/facebook/ads/redexgen/X/HM;)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55653
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/U1;->A01:Lcom/facebook/ads/redexgen/X/HM;

    .line 55654
    iget-object v4, p1, Lcom/facebook/ads/redexgen/X/HM;->A04:Landroid/net/Uri;

    .line 55655
    .local p0, "uri":Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    .line 55656
    .local p1, "scheme":Ljava/lang/String;
    const/16 v2, 0x66

    const/4 v1, 0x4

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/U1;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 55657
    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x5f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/U1;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0m(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 55658
    .local v4, "uriParts":[Ljava/lang/String;
    array-length v1, v2

    const/4 v0, 0x2

    if-ne v1, v0, :cond_3

    .line 55659
    const/4 v0, 0x1

    aget-object v4, v2, v0

    .line 55660
    .local v5, "dataString":Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v6, v2, v5

    const/4 v7, 0x1

    const/4 v3, 0x7

    sget-object v1, Lcom/facebook/ads/redexgen/X/U1;->A04:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xb

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/U1;->A04:[Ljava/lang/String;

    const-string v1, "xUdP0V68GwlYQbSbHFkcKOwJ62wt2NEB"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "2LjKZIM3SdexoLqxLEoH6g99PWWJsXZm"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const/16 v0, 0x3e

    invoke-static {v7, v3, v0}, Lcom/facebook/ads/redexgen/X/U1;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55661
    :try_start_0
    invoke-static {v4, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/U1;->A02:[B

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55662
    :catch_0
    move-exception v5

    .line 55663
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x8

    const/16 v1, 0x2b

    const/4 v0, 0x5

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/U1;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1, v5}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 55664
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    const/16 v6, 0x33

    const/16 v5, 0x8

    const/16 v3, 0x46

    sget-object v1, Lcom/facebook/ads/redexgen/X/U1;->A04:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/U1;->A04:[Ljava/lang/String;

    const-string v1, "YTQBaBtD2JGdRsAPm8jLZYt763I2n"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-static {v6, v5, v3}, Lcom/facebook/ads/redexgen/X/U1;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/U1;->A02:[B

    .line 55665
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U1;->A02:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/U1;->A04:[Ljava/lang/String;

    const-string v1, "Z65jNwJ9EJQfVh813CrYIQDXeioIZdtl"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-static {v6, v5, v3}, Lcom/facebook/ads/redexgen/X/U1;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/U1;->A02:[B

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 55666
    .end local v5    # "dataString":Ljava/lang/String;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x3b

    const/16 v1, 0x17

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/U1;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55667
    .end local v4    # "uriParts":[Ljava/lang/String;
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x52

    const/16 v1, 0x14

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/U1;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55668
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/U1;->A01:Lcom/facebook/ads/redexgen/X/HM;

    .line 55669
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/U1;->A02:[B

    .line 55670
    return-void
.end method

.method public final read([BII)I
    .locals 3

    .line 55671
    if-nez p3, :cond_0

    .line 55672
    const/4 v0, 0x0

    return v0

    .line 55673
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U1;->A02:[B

    array-length v1, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/U1;->A00:I

    sub-int/2addr v1, v0

    .line 55674
    .local p0, "remainingBytes":I
    if-nez v1, :cond_1

    .line 55675
    const/4 v0, -0x1

    return v0

    .line 55676
    :cond_1
    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 55677
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/U1;->A02:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/U1;->A00:I

    invoke-static {v1, v0, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55678
    iget v0, p0, Lcom/facebook/ads/redexgen/X/U1;->A00:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/U1;->A00:I

    .line 55679
    return v2
.end method
