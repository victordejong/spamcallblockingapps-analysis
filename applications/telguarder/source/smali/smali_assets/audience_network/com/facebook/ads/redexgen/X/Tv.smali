.class public final Lcom/facebook/ads/redexgen/X/Tv;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/HI;


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;

.field public static final A02:Lcom/facebook/ads/redexgen/X/HH;

.field public static final A03:Lcom/facebook/ads/redexgen/X/Tv;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 55457
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Tv;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Tv;->A01()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Tv;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Tv;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Tv;->A03:Lcom/facebook/ads/redexgen/X/Tv;

    .line 55458
    new-instance v0, Lcom/facebook/ads/redexgen/X/Tw;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Tw;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Tv;->A02:Lcom/facebook/ads/redexgen/X/HH;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 55459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/Tw;)V
    .locals 0

    .line 55460
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Tv;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Tv;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x11

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
    .locals 4

    const/16 v3, 0xc

    sget-object v2, Lcom/facebook/ads/redexgen/X/Tv;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Tv;->A01:[Ljava/lang/String;

    const-string v1, "yCQpjDpCkHcY6f2ZIiyaq2UFDcQu9Fhk"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "izlyNDrWvsIF44ZCFpAVC010CYfqAIh4"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Tv;->A00:[B

    return-void

    :array_0
    .array-data 1
        0xct
        0x3dt
        0x25t
        0x25t
        0x31t
        0x68t
        0x3bt
        0x27t
        0x3dt
        0x3at
        0x2bt
        0x2dt
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ZA"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "irbipCC00EbYocjAL5IX3fnqTJxz6Dh7"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "O8BcUkHYG"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "CMUQDY1UqcQD55Hv0Cw1Cua5sv2Jn7G"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "MeCHgAAdtkJVtsIuVplVtzk3ZzHcrI2C"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "9bFLWBf43kcYzsrXY9do9N8g1LdSmth8"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "DiQuLi0nzt8veeVi71a23IwqE6Vi"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "xK"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Tv;->A01:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A7T()Landroid/net/Uri;
    .locals 1

    .line 55461
    const/4 v0, 0x0

    return-object v0
.end method

.method public final ACC(Lcom/facebook/ads/redexgen/X/HM;)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55462
    const/4 v2, 0x0

    const/16 v1, 0xc

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Tv;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55463
    return-void
.end method

.method public final read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55464
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
