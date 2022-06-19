.class public final Lcom/facebook/ads/redexgen/X/FU;
.super Lcom/facebook/ads/redexgen/X/Rw;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/0w;


# static fields
.field public static A0D:[B

.field public static A0E:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:Lcom/facebook/ads/redexgen/X/12;

.field public A02:Lcom/facebook/ads/redexgen/X/13;

.field public A03:Lcom/facebook/ads/redexgen/X/16;

.field public A04:Lcom/facebook/ads/redexgen/X/XJ;

.field public A05:Lcom/facebook/ads/redexgen/X/JJ;

.field public A06:Lcom/facebook/ads/redexgen/X/KK;

.field public A07:Lcom/facebook/ads/redexgen/X/OS;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field public A08:Ljava/lang/String;

.field public A09:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A0A:Ljava/lang/String;

.field public final A0B:Ljava/lang/String;

.field public final A0C:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/FU;->A08()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/FU;->A07()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32429
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rw;-><init>()V

    .line 32430
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/FU;->A0B:Ljava/lang/String;

    .line 32431
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/FU;->A0C:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/FU;)Lcom/facebook/ads/redexgen/X/12;
    .locals 0

    .line 32432
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/FU;->A01:Lcom/facebook/ads/redexgen/X/12;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/FU;)Lcom/facebook/ads/redexgen/X/XJ;
    .locals 0

    .line 32433
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/FU;->A04:Lcom/facebook/ads/redexgen/X/XJ;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/FU;Lcom/facebook/ads/redexgen/X/OS;)Lcom/facebook/ads/redexgen/X/OS;
    .locals 0

    .line 32434
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/FU;->A07:Lcom/facebook/ads/redexgen/X/OS;

    return-object p1
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/FU;->A0D:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x7e

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/FU;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 32435
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/FU;->A0C:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private A05()V
    .locals 3

    .line 32436
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FU;->A04:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2K;->A00(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/2K;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FU;->A02:Lcom/facebook/ads/redexgen/X/13;

    .line 32437
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/13;->A01()Landroid/content/IntentFilter;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2K;->A07(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 32438
    return-void
.end method

.method private A06()V
    .locals 2

    .line 32439
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FU;->A02:Lcom/facebook/ads/redexgen/X/13;

    if-eqz v0, :cond_0

    .line 32440
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FU;->A04:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2K;->A00(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/2K;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FU;->A02:Lcom/facebook/ads/redexgen/X/13;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2K;->A06(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32441
    :catch_0
    :cond_0
    return-void
.end method

.method public static A07()V
    .locals 1

    const/16 v0, 0xa3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/FU;->A0D:[B

    return-void

    :array_0
    .array-data 1
        0x38t
        0x34t
        0x36t
        0x36t
        0x30t
        0x39t
        0x30t
        0x27t
        0x3at
        0x38t
        0x30t
        0x21t
        0x30t
        0x27t
        0xat
        0x27t
        0x3at
        0x21t
        0x34t
        0x21t
        0x3ct
        0x3at
        0x3bt
        0x6et
        0x61t
        0x64t
        0x68t
        0x63t
        0x79t
        0x59t
        0x62t
        0x66t
        0x68t
        0x63t
        0x7t
        0xft
        0xet
        0x3t
        0xbt
        0x1et
        0x3t
        0x5t
        0x4t
        0x2et
        0xbt
        0x1et
        0xbt
        0x59t
        0x45t
        0x48t
        0x4at
        0x4ct
        0x44t
        0x4ct
        0x47t
        0x5dt
        0x60t
        0x4dt
        0xct
        0xet
        0x19t
        0x18t
        0x19t
        0x1at
        0x15t
        0x12t
        0x19t
        0x18t
        0x33t
        0xet
        0x15t
        0x19t
        0x12t
        0x8t
        0x1dt
        0x8t
        0x15t
        0x13t
        0x12t
        0x37t
        0x19t
        0x5t
        0x55t
        0x42t
        0x56t
        0x52t
        0x42t
        0x54t
        0x53t
        0x73t
        0x4et
        0x4at
        0x42t
        0x4t
        0x13t
        0x1t
        0x17t
        0x4t
        0x12t
        0x25t
        0x13t
        0x4t
        0x0t
        0x13t
        0x4t
        0x23t
        0x24t
        0x3at
        0x68t
        0x7ft
        0x6dt
        0x7bt
        0x68t
        0x7et
        0x7ft
        0x7et
        0x4ct
        0x73t
        0x7et
        0x7ft
        0x75t
        0x5bt
        0x7et
        0x5et
        0x7bt
        0x6et
        0x7bt
        0x58t
        0x6ft
        0x74t
        0x7et
        0x76t
        0x7ft
        0x19t
        0xet
        0x1ct
        0xat
        0x19t
        0xft
        0xet
        0xft
        0x34t
        0x1dt
        0x2t
        0xft
        0xet
        0x4t
        0x50t
        0x4bt
        0x4ct
        0x54t
        0x50t
        0x40t
        0x6ct
        0x41t
        0x7ft
        0x60t
        0x6ct
        0x7et
        0x5dt
        0x70t
        0x79t
        0x6ct
    .end array-data
.end method

.method public static A08()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "YJVWhBFSVFKs7NrWmWULGh"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "0GvTyPfIpVaCupDTXIuhVv"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "vKmpQ0k2zgunQxdAFsx7Wlk6dmYtSCUc"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "dqRYVPDeGy45RCRFCWIUPRHRtp9NBigI"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "NSweCua6lZ8ChPFZ3cKnaOBscLcsrWLc"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "HenZyTRrHhMHTWT00jKprDJGPW9d4C4V"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "lvvcgtkpn6JHhS0LrJ19j3FN0lJsZZOv"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "GmBDkEWrzwPugE8SLtTHysECIxUFQGpg"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/FU;->A0E:[Ljava/lang/String;

    return-void
.end method

.method private A09(Landroid/content/Intent;)V
    .locals 8

    .line 32442
    iget v4, p0, Lcom/facebook/ads/redexgen/X/Rw;->A00:I

    const/16 v2, 0x3a

    const/16 v1, 0x18

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/FU;->A03(III)Ljava/lang/String;

    move-result-object v3

    const/4 v0, -0x1

    if-eq v4, v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FU;->A04:Lcom/facebook/ads/redexgen/X/XJ;

    .line 32443
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v5, 0x0

    .line 32444
    const/4 v7, 0x1

    const/16 v4, 0x16

    sget-object v1, Lcom/facebook/ads/redexgen/X/FU;->A0E:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x69

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/FU;->A0E:[Ljava/lang/String;

    const-string v1, "ryaiaZaF8EzuUPZd67FeoIG9jUALGHZG"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "XITZtpYy2wf6QHmOozCOnY6Xlkm3ca51"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const/16 v0, 0x2b

    invoke-static {v7, v4, v0}, Lcom/facebook/ads/redexgen/X/FU;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_2

    .line 32445
    iget v4, p0, Lcom/facebook/ads/redexgen/X/Rw;->A00:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/FU;->A0E:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6d

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/FU;->A0E:[Ljava/lang/String;

    const-string v1, "mo2n49jFbf8CHvb7nubztA"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "3h0LYrxRFByrgEG7Z48zJG"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 32446
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FU;->A04:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A0e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 32447
    const/4 v0, 0x6

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 32448
    :cond_3
    :goto_0
    return-void
.end method

.method private A0A(Z)V
    .locals 4

    .line 32449
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FU;->A06:Lcom/facebook/ads/redexgen/X/KK;

    sget-object v0, Lcom/facebook/ads/redexgen/X/KK;->A0B:Lcom/facebook/ads/redexgen/X/KK;

    if-ne v1, v0, :cond_0

    .line 32450
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/FU;->A0C(Z)V

    .line 32451
    :goto_0
    return-void

    .line 32452
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/FU;->A06:Lcom/facebook/ads/redexgen/X/KK;

    sget-object v2, Lcom/facebook/ads/redexgen/X/FU;->A0E:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/FU;->A0E:[Ljava/lang/String;

    const-string v1, "1yOiFacRiwJanRzqDJ6A5hJ77lYfziAe"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "McEelBumOV7dKb1zb6BdvUT5HG6VvrgI"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    sget-object v0, Lcom/facebook/ads/redexgen/X/KK;->A0A:Lcom/facebook/ads/redexgen/X/KK;

    if-ne v3, v0, :cond_2

    .line 32453
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/FU;->A0B(Z)V

    goto :goto_0

    .line 32454
    :cond_2
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/FU;->A0C(Z)V

    goto :goto_0
.end method

.method private A0B(Z)V
    .locals 7

    .line 32455
    move-object v0, p0

    .line 32456
    .local p0, "adapter":Lcom/facebook/ads/redexgen/X/Rw;
    new-instance v6, Lcom/facebook/ads/redexgen/X/Rr;

    invoke-direct {v6, p0, v0}, Lcom/facebook/ads/redexgen/X/Rr;-><init>(Lcom/facebook/ads/redexgen/X/FU;Lcom/facebook/ads/redexgen/X/Rw;)V

    .line 32457
    .local p1, "mPlayablePreCacheListener":Lcom/facebook/ads/redexgen/X/1i;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FU;->A04:Lcom/facebook/ads/redexgen/X/XJ;

    new-instance v5, Lcom/facebook/ads/redexgen/X/7D;

    invoke-direct {v5, v0}, Lcom/facebook/ads/redexgen/X/7D;-><init>(Lcom/facebook/ads/redexgen/X/8D;)V

    .line 32458
    .local v0, "cacheManager":Lcom/facebook/ads/redexgen/X/7D;
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/FU;->A03:Lcom/facebook/ads/redexgen/X/16;

    const/16 v2, 0x85

    const/16 v1, 0xe

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/FU;->A03(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/1f;

    invoke-direct {v3, p0, v4, v0, v5}, Lcom/facebook/ads/redexgen/X/1f;-><init>(Lcom/facebook/ads/redexgen/X/0w;Lcom/facebook/ads/redexgen/X/16;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/7D;)V

    .line 32459
    .local v6, "cacheHelper":Lcom/facebook/ads/redexgen/X/1f;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/1f;->A09()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32460
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FU;->A03:Lcom/facebook/ads/redexgen/X/16;

    .line 32461
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0T()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FU;->A04:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A06()Lcom/facebook/ads/redexgen/X/JC;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/JJ;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/JJ;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JC;)V

    .line 32462
    .local v0, "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/JJ;
    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/7D;->A0Z(Lcom/facebook/ads/redexgen/X/JJ;)V

    .line 32463
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/1f;->A08()V

    .line 32464
    .end local v0    # "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/JJ;
    :goto_0
    return-void

    .line 32465
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FU;->A04:Lcom/facebook/ads/redexgen/X/XJ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FU;->A03:Lcom/facebook/ads/redexgen/X/16;

    invoke-static {v1, v0, p1, v6}, Lcom/facebook/ads/redexgen/X/1k;->A03(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/16;ZLcom/facebook/ads/redexgen/X/1i;)V

    goto :goto_0
.end method

.method private A0C(Z)V
    .locals 10

    .line 32466
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FU;->A04:Lcom/facebook/ads/redexgen/X/XJ;

    new-instance v3, Lcom/facebook/ads/redexgen/X/7D;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/7D;-><init>(Lcom/facebook/ads/redexgen/X/8D;)V

    .line 32467
    .local p0, "cacheManager":Lcom/facebook/ads/redexgen/X/7D;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FU;->A05:Lcom/facebook/ads/redexgen/X/JJ;

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/7D;->A0Z(Lcom/facebook/ads/redexgen/X/JJ;)V

    .line 32468
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/FU;->A03:Lcom/facebook/ads/redexgen/X/16;

    const/16 v2, 0x85

    const/16 v1, 0xe

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/FU;->A03(III)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/1f;

    invoke-direct {v1, p0, v4, v2, v3}, Lcom/facebook/ads/redexgen/X/1f;-><init>(Lcom/facebook/ads/redexgen/X/0w;Lcom/facebook/ads/redexgen/X/16;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/7D;)V

    .line 32469
    .local v6, "cacheHelper":Lcom/facebook/ads/redexgen/X/1f;
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/1f;->A09()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32470
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/1f;->A08()V

    .line 32471
    .end local v0
    .end local v1
    .end local v0
    :goto_0
    return-void

    .line 32472
    :cond_0
    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/FU;->A03:Lcom/facebook/ads/redexgen/X/16;

    check-cast v8, Lcom/facebook/ads/redexgen/X/S5;

    .line 32473
    .local v0, "adDataBundle":Lcom/facebook/ads/redexgen/X/S5;
    move-object v9, p0

    .line 32474
    .local v1, "adapter":Lcom/facebook/ads/redexgen/X/Rw;
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/16;->A0N()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0E()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A08()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32475
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FU;->A01:Lcom/facebook/ads/redexgen/X/12;

    sget-object v0, Lcom/facebook/ads/AdError;->INTERNAL_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v1, v9, v0}, Lcom/facebook/ads/redexgen/X/12;->ABY(Lcom/facebook/ads/redexgen/X/Rw;Lcom/facebook/ads/AdError;)V

    .line 32476
    return-void

    .line 32477
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FU;->A04:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-static {v0, v3, v8}, Lcom/facebook/ads/redexgen/X/1l;->A02(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/7D;Lcom/facebook/ads/redexgen/X/S5;)V

    .line 32478
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/16;->A0m()Z

    move-result v7

    .line 32479
    .local v0, "isDSL":Z
    new-instance v4, Lcom/facebook/ads/redexgen/X/Fc;

    move-object v5, p0

    move v6, p1

    invoke-direct/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/Fc;-><init>(Lcom/facebook/ads/redexgen/X/FU;ZZLcom/facebook/ads/redexgen/X/S5;Lcom/facebook/ads/redexgen/X/Rw;)V

    .line 32480
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/16;->A0Y()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/76;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/76;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 32481
    invoke-virtual {v3, v4, v0}, Lcom/facebook/ads/redexgen/X/7D;->A0S(Lcom/facebook/ads/redexgen/X/75;Lcom/facebook/ads/redexgen/X/76;)V

    goto :goto_0
.end method


# virtual methods
.method public final A0D()I
    .locals 4

    .line 32482
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FU;->A03:Lcom/facebook/ads/redexgen/X/16;

    if-nez v0, :cond_1

    .line 32483
    const/4 v3, -0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/FU;->A0E:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/FU;->A0E:[Ljava/lang/String;

    const-string v1, "zy8kAWNFspHhc9OUOOhBHMIK4AaCMilm"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return v3

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 32484
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0K()I

    move-result v0

    return v0
.end method

.method public final A0E()Z
    .locals 6

    .line 32485
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FU;->A0C:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 32486
    const/4 v0, 0x0

    return v0

    .line 32487
    :cond_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Rw;->A01:Lcom/facebook/ads/RewardData;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FU;->A0B:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FU;->A08:Ljava/lang/String;

    .line 32488
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/PA;->A03(Lcom/facebook/ads/RewardData;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 32489
    .local p0, "rewardUrl":Ljava/lang/String;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FU;->A03:Lcom/facebook/ads/redexgen/X/16;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rw;->A01:Lcom/facebook/ads/RewardData;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A0e(Lcom/facebook/ads/RewardData;)V

    .line 32490
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FU;->A03:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/16;->A0h(Ljava/lang/String;)V

    .line 32491
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FU;->A04:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Kp;->A04(Lcom/facebook/ads/redexgen/X/XJ;)Lcom/facebook/ads/internal/util/activity/AdActivityIntent;

    move-result-object v4

    .line 32492
    .local v0, "intent":Lcom/facebook/ads/internal/util/activity/AdActivityIntent;
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/FU;->A06:Lcom/facebook/ads/redexgen/X/KK;

    const/16 v2, 0x9b

    const/16 v1, 0x8

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/FU;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 32493
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/FU;->A03:Lcom/facebook/ads/redexgen/X/16;

    const/16 v2, 0x6c

    const/16 v1, 0x19

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/FU;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 32494
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/FU;->A0B:Ljava/lang/String;

    const/16 v2, 0x93

    const/16 v1, 0x8

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/FU;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32495
    if-eqz v5, :cond_1

    .line 32496
    const/16 v2, 0x5d

    const/16 v1, 0xf

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/FU;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v5}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32497
    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/FU;->A0A:Ljava/lang/String;

    const/16 v2, 0x2f

    const/16 v1, 0xb

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/FU;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32498
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/FU;->A00:J

    const/16 v5, 0x52

    const/16 v3, 0xb

    const/16 v0, 0x59

    invoke-static {v5, v3, v0}, Lcom/facebook/ads/redexgen/X/FU;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v1, v2}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 32499
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/FU;->A09:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 32500
    const/16 v2, 0x22

    const/16 v1, 0xd

    const/16 v0, 0x14

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/FU;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32501
    :cond_2
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/FU;->A09(Landroid/content/Intent;)V

    .line 32502
    invoke-virtual {v4}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->getFlags()I

    move-result v1

    const/high16 v0, 0x10000000

    or-int/2addr v1, v0

    invoke-virtual {v4, v1}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->setFlags(I)Landroid/content/Intent;

    .line 32503
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FU;->A03:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0T()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x17

    const/16 v1, 0xb

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/FU;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32504
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FU;->A04:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ks;->A04(Lcom/facebook/ads/redexgen/X/XJ;)V

    .line 32505
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FU;->A04:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/Kp;->A0A(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/internal/util/activity/AdActivityIntent;)V

    .line 32506
    const/4 v0, 0x1

    return v0
.end method

.method public final A0F(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/12;Lcom/facebook/ads/redexgen/X/1n;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 32507
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FU;->A0C:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 32508
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/FU;->A04:Lcom/facebook/ads/redexgen/X/XJ;

    .line 32509
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/FU;->A01:Lcom/facebook/ads/redexgen/X/12;

    .line 32510
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/1n;->A02()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/FU;->A0A:Ljava/lang/String;

    .line 32511
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/1n;->A00()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/FU;->A00:J

    .line 32512
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/FU;->A09:Ljava/lang/String;

    .line 32513
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/FU;->A0A:Ljava/lang/String;

    if-eqz v3, :cond_4

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/FU;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v4

    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/FU;->A08:Ljava/lang/String;

    .line 32514
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/1n;->A03()Lorg/json/JSONObject;

    move-result-object v1

    .line 32515
    .local p0, "dataObject":Lorg/json/JSONObject;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FU;->A04:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/S5;->A02(Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/XJ;)Lcom/facebook/ads/redexgen/X/S5;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/FU;->A03:Lcom/facebook/ads/redexgen/X/16;

    .line 32516
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FU;->A03:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0, p5}, Lcom/facebook/ads/redexgen/X/16;->A0f(Ljava/lang/String;)V

    .line 32517
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FU;->A03:Lcom/facebook/ads/redexgen/X/16;

    .line 32518
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/1n;->A01()Lcom/facebook/ads/redexgen/X/8x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8x;->A06()I

    move-result v0

    .line 32519
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A0d(I)V

    .line 32520
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FU;->A03:Lcom/facebook/ads/redexgen/X/16;

    .line 32521
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0T()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/8D;->A06()Lcom/facebook/ads/redexgen/X/JC;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/JJ;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/JJ;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JC;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/FU;->A05:Lcom/facebook/ads/redexgen/X/JJ;

    .line 32522
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FU;->A03:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0m()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32523
    sget-object v0, Lcom/facebook/ads/redexgen/X/KK;->A04:Lcom/facebook/ads/redexgen/X/KK;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/FU;->A06:Lcom/facebook/ads/redexgen/X/KK;

    .line 32524
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FU;->A03:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32525
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FU;->A04:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v4

    sget-object v3, Lcom/facebook/ads/redexgen/X/0c;->A04:Lcom/facebook/ads/redexgen/X/0c;

    sget-object v2, Lcom/facebook/ads/redexgen/X/FU;->A0E:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/FU;->A0E:[Ljava/lang/String;

    const-string v1, "T6UzDEu82kzY1KsvV3iHB7OkWnIxnMBs"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "PWXGgNcAlDXPEXP1mMx0dPQCA8p68UI5"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-interface {v4, v3}, Lcom/facebook/ads/redexgen/X/0R;->ADu(Lcom/facebook/ads/redexgen/X/0c;)V

    .line 32526
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/XJ;
    :goto_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FU;->A0B:Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/redexgen/X/13;

    invoke-direct {v0, v1, p0, p2}, Lcom/facebook/ads/redexgen/X/13;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Rw;Lcom/facebook/ads/redexgen/X/12;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/FU;->A02:Lcom/facebook/ads/redexgen/X/13;

    .line 32527
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/FU;->A05()V

    .line 32528
    invoke-direct {p0, p4}, Lcom/facebook/ads/redexgen/X/FU;->A0A(Z)V

    .line 32529
    return-void

    .line 32530
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FU;->A04:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/0c;->A06:Lcom/facebook/ads/redexgen/X/0c;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->ADu(Lcom/facebook/ads/redexgen/X/0c;)V

    goto :goto_1

    .line 32531
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FU;->A03:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0J()I

    move-result v1

    .line 32532
    .local p1, "experienceType":I
    if-eqz v1, :cond_3

    const/4 v0, 0x1

    if-eq v1, v0, :cond_2

    goto :goto_1

    .line 32533
    :cond_2
    sget-object v0, Lcom/facebook/ads/redexgen/X/KK;->A0A:Lcom/facebook/ads/redexgen/X/KK;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/FU;->A06:Lcom/facebook/ads/redexgen/X/KK;

    .line 32534
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FU;->A04:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/0c;->A08:Lcom/facebook/ads/redexgen/X/0c;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->ADu(Lcom/facebook/ads/redexgen/X/0c;)V

    .line 32535
    goto :goto_1

    .line 32536
    :cond_3
    sget-object v0, Lcom/facebook/ads/redexgen/X/KK;->A0B:Lcom/facebook/ads/redexgen/X/KK;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/FU;->A06:Lcom/facebook/ads/redexgen/X/KK;

    .line 32537
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/FU;->A04:Lcom/facebook/ads/redexgen/X/XJ;

    sget-object v2, Lcom/facebook/ads/redexgen/X/FU;->A0E:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/FU;->A0E:[Ljava/lang/String;

    const-string v1, "sE7A2oUzbi1vVIMuEE2CogviWDEosGc5"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "5NgD8lzbPLe7uQJdX4ST7JevLzoIctPR"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/0c;->A09:Lcom/facebook/ads/redexgen/X/0c;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->ADu(Lcom/facebook/ads/redexgen/X/0c;)V

    goto :goto_1

    .line 32538
    :cond_4
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x14

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/FU;->A03(III)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A5x()Ljava/lang/String;
    .locals 1

    .line 32539
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FU;->A03:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0T()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A9g()V
    .locals 2

    .line 32540
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FU;->A0C:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 32541
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FU;->A01:Lcom/facebook/ads/redexgen/X/12;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/12;->ABV(Lcom/facebook/ads/redexgen/X/Rw;)V

    .line 32542
    return-void
.end method

.method public final A9h()V
    .locals 2

    .line 32543
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FU;->A01:Lcom/facebook/ads/redexgen/X/12;

    sget-object v0, Lcom/facebook/ads/AdError;->CACHE_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/12;->ABY(Lcom/facebook/ads/redexgen/X/Rw;Lcom/facebook/ads/AdError;)V

    .line 32544
    return-void
.end method

.method public final onDestroy()V
    .locals 0

    .line 32545
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/FU;->A06()V

    .line 32546
    return-void
.end method
