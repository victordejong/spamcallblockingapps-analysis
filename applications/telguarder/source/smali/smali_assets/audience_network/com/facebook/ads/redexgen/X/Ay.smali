.class public final Lcom/facebook/ads/redexgen/X/Ay;
.super Ljava/lang/Exception;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Az;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnhandledFormatException"
.end annotation


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ay;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ay;->A01()V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 4

    .line 22342
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1b

    const/16 v1, 0x12

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v1, 0x5

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    const/16 v1, 0x16

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 22343
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ay;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x4

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

    const/16 v0, 0x2d

    new-array v3, v0, [B

    fill-array-data v3, :array_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A01:[Ljava/lang/String;

    const-string v1, "GhHW2pTKIv09mTI8kSgPpfPSlrgPSHMP"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "L2WMTPY5ZYPgJGdPJgx1tlsZHtGGVRMb"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    sput-object v3, Lcom/facebook/ads/redexgen/X/Ay;->A00:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :array_0
    .array-data 1
        0x79t
        0x11t
        0x23t
        0x75t
        0x79t
        0x18t
        0x5bt
        0x50t
        0x59t
        0x56t
        0x56t
        0x5dt
        0x54t
        0x4bt
        0x18t
        0x51t
        0x56t
        0x18t
        0x5dt
        0x56t
        0x5bt
        0x57t
        0x5ct
        0x51t
        0x56t
        0x5ft
        0x18t
        0x2dt
        0x16t
        0x10t
        0x19t
        0x16t
        0x1ct
        0x14t
        0x1dt
        0x1ct
        0x58t
        0x1et
        0x17t
        0xat
        0x15t
        0x19t
        0xct
        0x42t
        0x58t
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "monyzAUZYQ2zq4toMhWNJ6FkNzpnB21a"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "gUmEbXK0pGF7DndA4qrH6kpWLYt1"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "tDG"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "VdkCvgkhY4JOdzwlVk2sUDjCHZ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "OJ5qAgfEdwbhSYYZQsXw1htu5rH8svnj"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "3BHE75XpoGeDDOO2n2stmszd9VmrHfTC"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "BxDrEGmlOH0jxZiPYXlHeOd8FGLY"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "FsBBIUbjrk0rW75b1ZVEmQunLshDelwO"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A01:[Ljava/lang/String;

    return-void
.end method
