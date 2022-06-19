.class public final Lcom/facebook/ads/redexgen/X/Dg;
.super Ljava/lang/Exception;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/3c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecoderInitializationException"
.end annotation


# static fields
.field public static A04:[B

.field public static A05:[Ljava/lang/String;


# instance fields
.field public final A00:Ljava/lang/String;

.field public final A01:Ljava/lang/String;

.field public final A02:Ljava/lang/String;

.field public final A03:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Dg;->A04()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Dg;->A03()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/internal/exoplayer2/Format;Ljava/lang/Throwable;ZI)V
    .locals 4

    .line 28560
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x17

    const/16 v1, 0x16

    const/16 v0, 0x5f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dg;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x2d

    const/4 v1, 0x3

    const/4 v0, 0x4

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dg;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28561
    iget-object v0, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A0O:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A02:Ljava/lang/String;

    .line 28562
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/Dg;->A03:Z

    .line 28563
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A00:Ljava/lang/String;

    .line 28564
    invoke-static {p4}, Lcom/facebook/ads/redexgen/X/Dg;->A00(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A01:Ljava/lang/String;

    .line 28565
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/internal/exoplayer2/Format;Ljava/lang/Throwable;ZLjava/lang/String;)V
    .locals 4

    .line 28566
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x2

    const/16 v1, 0x15

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dg;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v1, 0x2

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dg;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28567
    iget-object v0, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A0O:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A02:Ljava/lang/String;

    .line 28568
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/Dg;->A03:Z

    .line 28569
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Dg;->A00:Ljava/lang/String;

    .line 28570
    sget v1, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_0

    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/Dg;->A02(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Dg;->A01:Ljava/lang/String;

    .line 28571
    return-void

    .line 28572
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A00(I)Ljava/lang/String;
    .locals 5

    .line 28573
    if-gez p0, :cond_0

    const/16 v2, 0x65

    const/4 v1, 0x4

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dg;->A01(III)Ljava/lang/String;

    move-result-object v4

    .line 28574
    .local p0, "sign":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x30

    const/16 v1, 0x35

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dg;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 28575
    :cond_0
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x5

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dg;->A01(III)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Dg;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x75

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 28576
    instance-of v0, p0, Landroid/media/MediaCodec$CodecException;

    if-eqz v0, :cond_1

    .line 28577
    sget-object v2, Lcom/facebook/ads/redexgen/X/Dg;->A05:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Dg;->A05:[Ljava/lang/String;

    const-string v1, "w9g6URUXcCUSkiWTFc8Dt"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    check-cast p0, Landroid/media/MediaCodec$CodecException;

    invoke-virtual {p0}, Landroid/media/MediaCodec$CodecException;->getDiagnosticInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 28578
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x69

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Dg;->A04:[B

    return-void

    :array_0
    .array-data 1
        0x65t
        0x69t
        0x20t
        0x1t
        0x7t
        0xbt
        0x0t
        0x1t
        0x16t
        0x44t
        0xdt
        0xat
        0xdt
        0x10t
        0x44t
        0x2t
        0x5t
        0xdt
        0x8t
        0x1t
        0x0t
        0x5et
        0x44t
        0x6et
        0x4ft
        0x49t
        0x45t
        0x4et
        0x4ft
        0x58t
        0xat
        0x43t
        0x44t
        0x43t
        0x5et
        0xat
        0x4ct
        0x4bt
        0x43t
        0x46t
        0x4ft
        0x4et
        0x10t
        0xat
        0x71t
        0x2ct
        0x5dt
        0x51t
        0x69t
        0x65t
        0x67t
        0x24t
        0x6dt
        0x65t
        0x65t
        0x6dt
        0x66t
        0x6ft
        0x24t
        0x6bt
        0x64t
        0x6et
        0x78t
        0x65t
        0x63t
        0x6et
        0x24t
        0x6ft
        0x72t
        0x65t
        0x7at
        0x66t
        0x6bt
        0x73t
        0x6ft
        0x78t
        0x24t
        0x47t
        0x6ft
        0x6et
        0x63t
        0x6bt
        0x49t
        0x65t
        0x6et
        0x6ft
        0x69t
        0x5et
        0x78t
        0x6bt
        0x69t
        0x61t
        0x58t
        0x6ft
        0x64t
        0x6et
        0x6ft
        0x78t
        0x6ft
        0x78t
        0x55t
        0x54t
        0x5ft
        0x5dt
        0x65t
    .end array-data
.end method

.method public static A04()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "XFHC"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "1wHKDHMTWlU379e1nfy7SD"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "q00JgcwSmJfVgBEo4quZ6Tvk7qKteKu9"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "edVdxcL6jrPIKAlsgMtrVJG0UTzSYSQS"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "I62Uh9BzBaZamEXyfVmX"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "sJhjUWk"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "sT5yyf2iLnosMS3H4Dk6"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "RFlJuncaAzVk"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Dg;->A05:[Ljava/lang/String;

    return-void
.end method
