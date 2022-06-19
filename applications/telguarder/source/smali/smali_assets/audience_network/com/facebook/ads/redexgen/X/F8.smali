.class public final Lcom/facebook/ads/redexgen/X/F8;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Be;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExtractorHolder"
.end annotation


# static fields
.field public static A03:[B


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/CG;

.field public final A01:Lcom/facebook/ads/redexgen/X/CI;

.field public final A02:[Lcom/facebook/ads/redexgen/X/CG;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/F8;->A01()V

    return-void
.end method

.method public constructor <init>([Lcom/facebook/ads/redexgen/X/CG;Lcom/facebook/ads/redexgen/X/CI;)V
    .locals 0

    .line 32398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32399
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/F8;->A02:[Lcom/facebook/ads/redexgen/X/CG;

    .line 32400
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/F8;->A01:Lcom/facebook/ads/redexgen/X/CI;

    .line 32401
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/F8;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0xb

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

    const/16 v0, 0x3a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/F8;->A03:[B

    return-void

    :array_0
    .array-data 1
        0x49t
        0x40t
        0x3t
        0xft
        0x15t
        0xct
        0x4t
        0x40t
        0x12t
        0x5t
        0x1t
        0x4t
        0x40t
        0x14t
        0x8t
        0x5t
        0x40t
        0x13t
        0x14t
        0x12t
        0x5t
        0x1t
        0xdt
        0x4et
        0x7ft
        0x5et
        0x5ft
        0x54t
        0x11t
        0x5et
        0x57t
        0x11t
        0x45t
        0x59t
        0x54t
        0x11t
        0x50t
        0x47t
        0x50t
        0x58t
        0x5dt
        0x50t
        0x53t
        0x5dt
        0x54t
        0x11t
        0x54t
        0x49t
        0x45t
        0x43t
        0x50t
        0x52t
        0x45t
        0x5et
        0x43t
        0x42t
        0x11t
        0x19t
    .end array-data
.end method


# virtual methods
.method public final A02(Lcom/facebook/ads/redexgen/X/CH;Landroid/net/Uri;)Lcom/facebook/ads/redexgen/X/CG;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 32402
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F8;->A00:Lcom/facebook/ads/redexgen/X/CG;

    if-eqz v0, :cond_0

    .line 32403
    return-object v0

    .line 32404
    :cond_0
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/F8;->A02:[Lcom/facebook/ads/redexgen/X/CG;

    array-length v3, v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, v4, v2

    .line 32405
    .local v0, "extractor":Lcom/facebook/ads/redexgen/X/CG;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/facebook/ads/redexgen/X/CG;->AE6(Lcom/facebook/ads/redexgen/X/CH;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32406
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/F8;->A00:Lcom/facebook/ads/redexgen/X/CG;

    goto :goto_1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32407
    :catch_0
    :cond_1
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->ADN()V

    .line 32408
    .end local v0    # "extractor":Lcom/facebook/ads/redexgen/X/CG;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 32409
    :catchall_0
    move-exception v0

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->ADN()V

    .line 32410
    throw v0

    .line 32411
    :goto_1
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->ADN()V

    .line 32412
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/F8;->A00:Lcom/facebook/ads/redexgen/X/CG;

    if-eqz v1, :cond_3

    .line 32413
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F8;->A01:Lcom/facebook/ads/redexgen/X/CI;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/CG;->A7s(Lcom/facebook/ads/redexgen/X/CI;)V

    .line 32414
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F8;->A00:Lcom/facebook/ads/redexgen/X/CG;

    return-object v0

    .line 32415
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x18

    const/16 v1, 0x22

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/F8;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F8;->A02:[Lcom/facebook/ads/redexgen/X/CG;

    .line 32416
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0S([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/16 v1, 0x18

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/F8;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/UK;

    invoke-direct {v0, v1, p2}, Lcom/facebook/ads/redexgen/X/UK;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    throw v0
.end method

.method public final A03()V
    .locals 1

    .line 32417
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F8;->A00:Lcom/facebook/ads/redexgen/X/CG;

    if-eqz v0, :cond_0

    .line 32418
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/F8;->A00:Lcom/facebook/ads/redexgen/X/CG;

    .line 32419
    :cond_0
    return-void
.end method
