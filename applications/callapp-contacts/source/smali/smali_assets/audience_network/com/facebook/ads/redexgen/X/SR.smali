.class public final Lcom/facebook/ads/redexgen/X/SR;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/12;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/F2;->A00(Ljava/lang/Runnable;)Lcom/facebook/ads/redexgen/X/12;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/F2;

.field public final synthetic A01:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/SR;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/SR;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/F2;Ljava/lang/Runnable;)V
    .locals 0

    .line 52515
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SR;->A00:Lcom/facebook/ads/redexgen/X/F2;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/SR;->A01:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/SR;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x61

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

    const/16 v0, 0x48

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/SR;->A02:[B

    return-void

    :array_0
    .array-data 1
        0x50t
        0x2t
        0x57t
        0x0t
        0x5t
        0x53t
        0x53t
        0x70t
        0x47t
        0x55t
        0x43t
        0x50t
        0x46t
        0x47t
        0x46t
        0x2t
        0x74t
        0x4bt
        0x46t
        0x47t
        0x4dt
        0x2t
        0x4bt
        0x4ft
        0x52t
        0x50t
        0x47t
        0x51t
        0x51t
        0x4bt
        0x4dt
        0x4ct
        0x2t
        0x44t
        0x4bt
        0x50t
        0x47t
        0x46t
        0x46t
        0x47t
        0x7bt
        0x4ct
        0x5et
        0x48t
        0x5bt
        0x4dt
        0x4ct
        0x4dt
        0x7ft
        0x40t
        0x4dt
        0x4ct
        0x46t
        0x68t
        0x4dt
        0x65t
        0x46t
        0x4et
        0x4et
        0x40t
        0x47t
        0x4et
        0x60t
        0x44t
        0x59t
        0x5bt
        0x4ct
        0x5at
        0x5at
        0x40t
        0x46t
        0x47t
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "gOGPE1XGqnroAJihU7XGAfTAdWa21jWC"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Kcs30m2Uc1eFMAQARd2pOhOOSRswugkg"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "xkwB"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "vFLx4ryI8nKhSFQKGVnAMH5qObxMihWN"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "NnwKyO2XMzRH0BXfVduboZ9DAJ5a5svW"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "U3uRLxNZuwH"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "U9y6Wp3Jad2LD1"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "sOAhAPVwmiqriGnbgM61Uai8lTIQh97W"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/SR;->A03:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final ABS(Lcom/facebook/ads/redexgen/X/Rw;)V
    .locals 1

    .line 52516
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SR;->A00:Lcom/facebook/ads/redexgen/X/F2;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/SJ;->A07:Lcom/facebook/ads/redexgen/X/0o;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0o;->A05()V

    .line 52517
    return-void
.end method

.method public final ABT(Lcom/facebook/ads/redexgen/X/Rw;)V
    .locals 1

    .line 52518
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SR;->A00:Lcom/facebook/ads/redexgen/X/F2;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/SJ;->A07:Lcom/facebook/ads/redexgen/X/0o;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0o;->A06()V

    .line 52519
    return-void
.end method

.method public final ABU(Lcom/facebook/ads/redexgen/X/Rw;)V
    .locals 1

    .line 52520
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SR;->A00:Lcom/facebook/ads/redexgen/X/F2;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/SJ;->A07:Lcom/facebook/ads/redexgen/X/0o;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0o;->A0B()V

    .line 52521
    return-void
.end method

.method public final ABV(Lcom/facebook/ads/redexgen/X/Rw;)V
    .locals 2

    .line 52522
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SR;->A00:Lcom/facebook/ads/redexgen/X/F2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SJ;->A0G()Landroid/os/Handler;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SR;->A01:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 52523
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SR;->A00:Lcom/facebook/ads/redexgen/X/F2;

    iput-object p1, v0, Lcom/facebook/ads/redexgen/X/SJ;->A02:Lcom/facebook/ads/redexgen/X/0n;

    .line 52524
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/F2;->A04(Lcom/facebook/ads/redexgen/X/F2;)V

    .line 52525
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SR;->A00:Lcom/facebook/ads/redexgen/X/F2;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/SJ;->A07:Lcom/facebook/ads/redexgen/X/0o;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/0o;->A0E(Lcom/facebook/ads/redexgen/X/0n;)V

    .line 52526
    return-void
.end method

.method public final ABW(Lcom/facebook/ads/redexgen/X/Rw;)V
    .locals 5

    const/16 v2, 0x26

    const/16 v1, 0x22

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SR;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x7

    const/16 v1, 0x1f

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SR;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x7

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SR;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Jz;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52527
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SR;->A00:Lcom/facebook/ads/redexgen/X/F2;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/SJ;->A07:Lcom/facebook/ads/redexgen/X/0o;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0o;->A0C()V

    .line 52528
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SR;->A00:Lcom/facebook/ads/redexgen/X/F2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SJ;->A0M()V

    .line 52529
    return-void
.end method

.method public final ABX(Lcom/facebook/ads/redexgen/X/Rw;)V
    .locals 1

    .line 52530
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SR;->A00:Lcom/facebook/ads/redexgen/X/F2;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/SJ;->A07:Lcom/facebook/ads/redexgen/X/0o;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0o;->A07()V

    .line 52531
    return-void
.end method

.method public final ABY(Lcom/facebook/ads/redexgen/X/Rw;Lcom/facebook/ads/AdError;)V
    .locals 4

    .line 52532
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SR;->A00:Lcom/facebook/ads/redexgen/X/F2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SJ;->A0G()Landroid/os/Handler;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SR;->A01:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 52533
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SR;->A00:Lcom/facebook/ads/redexgen/X/F2;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/SJ;->A0C:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v2

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v1

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A4Z(ILjava/lang/String;)V

    .line 52534
    sget-object v0, Lcom/facebook/ads/AdError;->AD_PRESENTATION_ERROR:Lcom/facebook/ads/AdError;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SR;->A00:Lcom/facebook/ads/redexgen/X/F2;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/SJ;->A0C:Lcom/facebook/ads/redexgen/X/XJ;

    .line 52535
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A1B(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52536
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SR;->A00:Lcom/facebook/ads/redexgen/X/F2;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/SJ;->A07:Lcom/facebook/ads/redexgen/X/0o;

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->AD_PRESENTATION_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jl;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;)Lcom/facebook/ads/redexgen/X/Jl;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/0o;->A0F(Lcom/facebook/ads/redexgen/X/Jl;)V

    .line 52537
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SR;->A00:Lcom/facebook/ads/redexgen/X/F2;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/SJ;->A0P(Lcom/facebook/ads/redexgen/X/0n;)V

    .line 52538
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SR;->A00:Lcom/facebook/ads/redexgen/X/F2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SJ;->A0O()V

    .line 52539
    return-void

    .line 52540
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/SR;->A00:Lcom/facebook/ads/redexgen/X/F2;

    sget-object v1, Lcom/facebook/ads/redexgen/X/SR;->A03:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/SR;->A03:[Ljava/lang/String;

    const-string v1, "s57s"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/SJ;->A07:Lcom/facebook/ads/redexgen/X/0o;

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->INTERNAL_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jl;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;)Lcom/facebook/ads/redexgen/X/Jl;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/0o;->A0F(Lcom/facebook/ads/redexgen/X/Jl;)V

    goto :goto_0
.end method

.method public final onRewardedVideoActivityDestroyed()V
    .locals 1

    .line 52541
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SR;->A00:Lcom/facebook/ads/redexgen/X/F2;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/SJ;->A07:Lcom/facebook/ads/redexgen/X/0o;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0o;->A08()V

    .line 52542
    return-void
.end method

.method public final onRewardedVideoClosed()V
    .locals 1

    .line 52543
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SR;->A00:Lcom/facebook/ads/redexgen/X/F2;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/SJ;->A07:Lcom/facebook/ads/redexgen/X/0o;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0o;->A09()V

    .line 52544
    return-void
.end method
