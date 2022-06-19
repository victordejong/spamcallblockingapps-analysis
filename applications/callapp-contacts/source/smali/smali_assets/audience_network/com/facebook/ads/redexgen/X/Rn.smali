.class public final Lcom/facebook/ads/redexgen/X/Rn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/0n;
.implements Lcom/facebook/ads/redexgen/X/1a;


# static fields
.field public static A0B:[B

.field public static A0C:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:Lcom/facebook/ads/RewardData;

.field public A02:Lcom/facebook/ads/redexgen/X/0x;

.field public A03:Lcom/facebook/ads/redexgen/X/0y;

.field public A04:Lcom/facebook/ads/redexgen/X/S9;

.field public A05:Lcom/facebook/ads/redexgen/X/XJ;

.field public A06:Ljava/lang/String;

.field public A07:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A08:Ljava/lang/String;

.field public A09:Z

.field public final A0A:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Rn;->A06()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Rn;->A05()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51251
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rn;->A0A:Ljava/lang/String;

    return-void
.end method

.method private A00()I
    .locals 4

    .line 51252
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Rn;->A05:Lcom/facebook/ads/redexgen/X/XJ;

    .line 51253
    const/16 v2, 0xcd

    const/4 v1, 0x6

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rn;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/XJ;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 51254
    .local p0, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v3

    .line 51255
    .local v3, "rotation":I
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rn;->A02()Lcom/facebook/ads/redexgen/X/Nd;

    move-result-object v2

    .line 51256
    .local v2, "adOrientation":Lcom/facebook/ads/redexgen/X/Nd;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Nd;->A06:Lcom/facebook/ads/redexgen/X/Nd;

    if-ne v2, v0, :cond_0

    .line 51257
    const/4 v0, -0x1

    return v0

    .line 51258
    :cond_0
    sget-object v1, Lcom/facebook/ads/redexgen/X/Nd;->A04:Lcom/facebook/ads/redexgen/X/Nd;

    const/4 v0, 0x2

    if-ne v2, v1, :cond_3

    .line 51259
    if-eq v3, v0, :cond_1

    const/4 v0, 0x3

    if-eq v3, v0, :cond_1

    .line 51260
    const/4 v0, 0x0

    return v0

    .line 51261
    :cond_1
    const/16 v3, 0x8

    sget-object v1, Lcom/facebook/ads/redexgen/X/Rn;->A0C:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x67

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Rn;->A0C:[Ljava/lang/String;

    const-string v1, "WCZdwi0h9oyTFk4ywD5LtkOxTOpQ29Yc"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "4yy96Y2PoNFTEE84mLwUlYETryPZgGhE"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return v3

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 51262
    :cond_3
    if-eq v3, v0, :cond_4

    .line 51263
    const/4 v0, 0x1

    return v0

    .line 51264
    :cond_4
    const/16 v0, 0x9

    return v0
.end method

.method private final A01()Lcom/facebook/ads/redexgen/X/KK;
    .locals 1

    .line 51265
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rn;->A04:Lcom/facebook/ads/redexgen/X/S9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/S9;->A0C()Lcom/facebook/ads/redexgen/X/KK;

    move-result-object v0

    return-object v0
.end method

.method private A02()Lcom/facebook/ads/redexgen/X/Nd;
    .locals 1

    .line 51266
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rn;->A04:Lcom/facebook/ads/redexgen/X/S9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/S9;->A0D()Lcom/facebook/ads/redexgen/X/Nd;

    move-result-object v0

    return-object v0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Rn;->A0B:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A04()V
    .locals 1

    .line 51267
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rn;->A09:Z

    .line 51268
    return-void
.end method

.method public static A05()V
    .locals 4

    const/16 v0, 0xd3

    new-array v3, v0, [B

    fill-array-data v3, :array_0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Rn;->A0C:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x67

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Rn;->A0C:[Ljava/lang/String;

    const-string v1, "6qgGoSyjmuhDFT94hunOHzgd3UUS7LMQ"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "q1PjRK7gg6WFD8n4pAFO870HLaNMi7ir"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    sput-object v3, Lcom/facebook/ads/redexgen/X/Rn;->A0B:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :array_0
    .array-data 1
        0x4et
        0x6ct
        0x63t
        0x2at
        0x79t
        0x2dt
        0x7et
        0x79t
        0x6ct
        0x7ft
        0x79t
        0x2dt
        0x4ct
        0x78t
        0x69t
        0x64t
        0x68t
        0x63t
        0x6et
        0x68t
        0x43t
        0x68t
        0x79t
        0x7at
        0x62t
        0x7ft
        0x66t
        0x4ct
        0x6et
        0x79t
        0x64t
        0x7bt
        0x64t
        0x79t
        0x74t
        0x23t
        0x2dt
        0x40t
        0x6ct
        0x66t
        0x68t
        0x2dt
        0x7et
        0x78t
        0x7ft
        0x68t
        0x2dt
        0x79t
        0x65t
        0x6ct
        0x79t
        0x2dt
        0x64t
        0x79t
        0x2at
        0x7et
        0x2dt
        0x64t
        0x63t
        0x2dt
        0x74t
        0x62t
        0x78t
        0x7ft
        0x2dt
        0x4ct
        0x63t
        0x69t
        0x7ft
        0x62t
        0x64t
        0x69t
        0x40t
        0x6ct
        0x63t
        0x64t
        0x6bt
        0x68t
        0x7et
        0x79t
        0x23t
        0x75t
        0x60t
        0x61t
        0x2dt
        0x6bt
        0x64t
        0x61t
        0x68t
        0x23t
        0x49t
        0x4dt
        0x4et
        0x7at
        0x6bt
        0x66t
        0x6at
        0x61t
        0x6ct
        0x6at
        0x41t
        0x6at
        0x7bt
        0x78t
        0x60t
        0x7dt
        0x64t
        0x44t
        0x25t
        0x2at
        0x1bt
        0x25t
        0x27t
        0x30t
        0x2dt
        0x32t
        0x2dt
        0x30t
        0x3dt
        0x5dt
        0x52t
        0x57t
        0x5bt
        0x50t
        0x4at
        0x6at
        0x51t
        0x55t
        0x5bt
        0x50t
        0x11t
        0x19t
        0x18t
        0x15t
        0x1dt
        0x8t
        0x15t
        0x13t
        0x12t
        0x38t
        0x1dt
        0x8t
        0x1dt
        0x34t
        0x28t
        0x25t
        0x27t
        0x21t
        0x29t
        0x21t
        0x2at
        0x30t
        0xdt
        0x20t
        0x4t
        0x6t
        0x11t
        0x10t
        0x11t
        0x12t
        0x1dt
        0x1at
        0x11t
        0x10t
        0x3bt
        0x6t
        0x1dt
        0x11t
        0x1at
        0x0t
        0x15t
        0x0t
        0x1dt
        0x1bt
        0x1at
        0x3ft
        0x11t
        0xdt
        0x75t
        0x62t
        0x76t
        0x72t
        0x62t
        0x74t
        0x73t
        0x53t
        0x6et
        0x6at
        0x62t
        0x1dt
        0x6t
        0x1t
        0x19t
        0x1dt
        0xdt
        0x21t
        0xct
        0x26t
        0x39t
        0x35t
        0x27t
        0x4t
        0x29t
        0x20t
        0x35t
        0x50t
        0x4et
        0x49t
        0x43t
        0x48t
        0x50t
    .end array-data
.end method

.method public static A06()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "PgLDGrk3t3a26fQCrT3IpIrRB5PMNBKm"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "uls9HIPpriPjzjIXJVTR7HWmS4IMGzWu"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "f2YRmtND2fanruA3kJYGXgN9aGwgjawI"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "EZdssni07U2TMPMup9RmA63S0tAhTBNo"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "xilKUxawUAlWzUTJOedtCKHAHwNBDRxA"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "SxIuirRfQS0L7ik0LzQXw"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "dF8CYh"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "NQmOIXzIEfwTEqDrM9Z7TuMEUTKSiMNX"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Rn;->A0C:[Ljava/lang/String;

    return-void
.end method

.method private A07(Landroid/content/Intent;)V
    .locals 4

    .line 51269
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Rn;->A04:Lcom/facebook/ads/redexgen/X/S9;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Rn;->A01:Lcom/facebook/ads/RewardData;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rn;->A0A:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rn;->A06:Ljava/lang/String;

    .line 51270
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/PA;->A03(Lcom/facebook/ads/RewardData;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51271
    invoke-virtual {v3, p1, v2, v0}, Lcom/facebook/ads/redexgen/X/S9;->A0G(Landroid/content/Intent;Lcom/facebook/ads/RewardData;Ljava/lang/String;)V

    .line 51272
    return-void
.end method

.method private final A08(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/0x;Lcom/facebook/ads/redexgen/X/1n;Ljava/util/EnumSet;Ljava/lang/String;)V
    .locals 1
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/XJ;",
            "Lcom/facebook/ads/redexgen/X/0x;",
            "Lcom/facebook/ads/redexgen/X/1n;",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 51273
    .local p5, "cacheFlags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/facebook/ads/CacheFlag;>;"
    new-instance v0, Lcom/facebook/ads/redexgen/X/S9;

    invoke-direct {v0, p1, p3, p0, p5}, Lcom/facebook/ads/redexgen/X/S9;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/1n;Lcom/facebook/ads/redexgen/X/1a;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rn;->A04:Lcom/facebook/ads/redexgen/X/S9;

    .line 51274
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rn;->A04:Lcom/facebook/ads/redexgen/X/S9;

    invoke-virtual {v0, p1, p4}, Lcom/facebook/ads/redexgen/X/S9;->A0H(Lcom/facebook/ads/redexgen/X/XJ;Ljava/util/EnumSet;)V

    .line 51275
    return-void
.end method

.method private A09(Lcom/facebook/ads/redexgen/X/KK;)V
    .locals 4

    .line 51276
    sget-object v0, Lcom/facebook/ads/redexgen/X/KK;->A06:Lcom/facebook/ads/redexgen/X/KK;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/KK;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51277
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rn;->A05:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/0c;->A03:Lcom/facebook/ads/redexgen/X/0c;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->ADu(Lcom/facebook/ads/redexgen/X/0c;)V

    .line 51278
    :cond_0
    :goto_0
    return-void

    .line 51279
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/KK;->A07:Lcom/facebook/ads/redexgen/X/KK;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/KK;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51280
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rn;->A05:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/0c;->A07:Lcom/facebook/ads/redexgen/X/0c;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->ADu(Lcom/facebook/ads/redexgen/X/0c;)V

    goto :goto_0

    .line 51281
    :cond_2
    sget-object v0, Lcom/facebook/ads/redexgen/X/KK;->A09:Lcom/facebook/ads/redexgen/X/KK;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/KK;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 51282
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rn;->A05:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/0c;->A09:Lcom/facebook/ads/redexgen/X/0c;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->ADu(Lcom/facebook/ads/redexgen/X/0c;)V

    goto :goto_0

    .line 51283
    :cond_3
    sget-object v0, Lcom/facebook/ads/redexgen/X/KK;->A08:Lcom/facebook/ads/redexgen/X/KK;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/KK;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 51284
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rn;->A05:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/0c;->A08:Lcom/facebook/ads/redexgen/X/0c;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->ADu(Lcom/facebook/ads/redexgen/X/0c;)V

    goto :goto_0

    .line 51285
    :cond_4
    sget-object v0, Lcom/facebook/ads/redexgen/X/KK;->A03:Lcom/facebook/ads/redexgen/X/KK;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/KK;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51286
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rn;->A04:Lcom/facebook/ads/redexgen/X/S9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/S9;->A0J()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 51287
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rn;->A05:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Rn;->A0C:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/Rn;->A0C:[Ljava/lang/String;

    const-string v1, "SZ1DhKHJxqFOmux8c4F7iNiG5ZFRRvjL"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    sget-object v0, Lcom/facebook/ads/redexgen/X/0c;->A04:Lcom/facebook/ads/redexgen/X/0c;

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/0R;->ADu(Lcom/facebook/ads/redexgen/X/0c;)V

    goto :goto_0

    .line 51288
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rn;->A04:Lcom/facebook/ads/redexgen/X/S9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/S9;->A0I()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 51289
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rn;->A05:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/0c;->A06:Lcom/facebook/ads/redexgen/X/0c;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->ADu(Lcom/facebook/ads/redexgen/X/0c;)V

    goto/16 :goto_0

    .line 51290
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rn;->A05:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/0c;->A05:Lcom/facebook/ads/redexgen/X/0c;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->ADu(Lcom/facebook/ads/redexgen/X/0c;)V

    goto/16 :goto_0

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A0A(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/0x;Lcom/facebook/ads/redexgen/X/1n;Ljava/util/EnumSet;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/RewardData;)V
    .locals 4
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/facebook/ads/RewardData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/XJ;",
            "Lcom/facebook/ads/redexgen/X/0x;",
            "Lcom/facebook/ads/redexgen/X/1n;",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/RewardData;",
            ")V"
        }
    .end annotation

    .line 51291
    .local p6, "cacheFlags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/facebook/ads/CacheFlag;>;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Rn;->A05:Lcom/facebook/ads/redexgen/X/XJ;

    .line 51292
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Rn;->A02:Lcom/facebook/ads/redexgen/X/0x;

    .line 51293
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/1n;->A02()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rn;->A08:Ljava/lang/String;

    .line 51294
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Rn;->A08:Ljava/lang/String;

    if-eqz v3, :cond_0

    const/16 v2, 0x6b

    const/4 v1, 0x1

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rn;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    aget-object v0, v1, v0

    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rn;->A06:Ljava/lang/String;

    .line 51295
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/1n;->A00()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Rn;->A00:J

    .line 51296
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/Rn;->A07:Ljava/lang/String;

    .line 51297
    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/Rn;->A01:Lcom/facebook/ads/RewardData;

    .line 51298
    invoke-direct/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/Rn;->A08(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/0x;Lcom/facebook/ads/redexgen/X/1n;Ljava/util/EnumSet;Ljava/lang/String;)V

    .line 51299
    return-void

    .line 51300
    :cond_0
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x5

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rn;->A03(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final A0B()Z
    .locals 8

    .line 51301
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rn;->A09:Z

    const/4 v7, 0x0

    if-nez v0, :cond_1

    .line 51302
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rn;->A02:Lcom/facebook/ads/redexgen/X/0x;

    if-eqz v1, :cond_0

    .line 51303
    sget-object v0, Lcom/facebook/ads/AdError;->SHOW_CALLED_BEFORE_LOAD_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/0x;->AAR(Lcom/facebook/ads/redexgen/X/Rn;Lcom/facebook/ads/AdError;)V

    .line 51304
    :cond_0
    return v7

    .line 51305
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rn;->A05:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Kp;->A04(Lcom/facebook/ads/redexgen/X/XJ;)Lcom/facebook/ads/internal/util/activity/AdActivityIntent;

    move-result-object v4

    .line 51306
    .local p0, "intent":Lcom/facebook/ads/internal/util/activity/AdActivityIntent;
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rn;->A00()I

    move-result v3

    .line 51307
    const/16 v2, 0x9a

    const/16 v1, 0x18

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rn;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 51308
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Rn;->A0A:Ljava/lang/String;

    const/16 v2, 0xbd

    const/16 v1, 0x8

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rn;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51309
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Rn;->A08:Ljava/lang/String;

    const/16 v2, 0x8f

    const/16 v1, 0xb

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rn;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51310
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Rn;->A00:J

    const/16 v5, 0xb2

    const/16 v3, 0xb

    const/16 v0, 0xf

    invoke-static {v5, v3, v0}, Lcom/facebook/ads/redexgen/X/Rn;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v1, v2}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 51311
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rn;->A01()Lcom/facebook/ads/redexgen/X/KK;

    move-result-object v3

    .line 51312
    .local v7, "viewType":Lcom/facebook/ads/redexgen/X/KK;
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/Rn;->A09(Lcom/facebook/ads/redexgen/X/KK;)V

    .line 51313
    const/16 v2, 0xc5

    const/16 v1, 0x8

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rn;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 51314
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Rn;->A07:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 51315
    const/16 v2, 0x82

    const/16 v1, 0xd

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rn;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51316
    :cond_2
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/Rn;->A07(Landroid/content/Intent;)V

    .line 51317
    const/high16 v0, 0x10000000

    invoke-virtual {v4, v0}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->addFlags(I)Landroid/content/Intent;

    .line 51318
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rn;->A04:Lcom/facebook/ads/redexgen/X/S9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/S9;->A0E()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x77

    const/16 v1, 0xb

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rn;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51319
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rn;->A05:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ks;->A04(Lcom/facebook/ads/redexgen/X/XJ;)V

    .line 51320
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rn;->A05:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/Kp;->A0A(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/internal/util/activity/AdActivityIntent;)V

    .line 51321
    const/4 v0, 0x1

    return v0
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51322
    :catch_0
    move-exception v5

    .line 51323
    .local v1, "anfe":Landroid/content/ActivityNotFoundException;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rn;->A05:Lcom/facebook/ads/redexgen/X/XJ;

    .line 51324
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v6

    sget v4, Lcom/facebook/ads/redexgen/X/8e;->A05:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, v5}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/Throwable;)V

    .line 51325
    const/16 v2, 0x6c

    const/16 v1, 0xb

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rn;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8V(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 51326
    const/16 v2, 0x5a

    const/16 v1, 0x11

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rn;->A03(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x5a

    const/4 v0, 0x5

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rn;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51327
    return v7
.end method

.method public final A5x()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 51328
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rn;->A04:Lcom/facebook/ads/redexgen/X/S9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/S9;->A0E()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A6x()Lcom/facebook/ads/internal/protocol/AdPlacementType;
    .locals 1

    .line 51329
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->INTERSTITIAL:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    return-object v0
.end method

.method public final A9J(Lcom/facebook/ads/AdError;)V
    .locals 1

    .line 51330
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rn;->A02:Lcom/facebook/ads/redexgen/X/0x;

    if-eqz v0, :cond_0

    .line 51331
    invoke-interface {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/0x;->AAR(Lcom/facebook/ads/redexgen/X/Rn;Lcom/facebook/ads/AdError;)V

    .line 51332
    :cond_0
    return-void
.end method

.method public final A9K()V
    .locals 1

    .line 51333
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rn;->A04()V

    .line 51334
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rn;->A02:Lcom/facebook/ads/redexgen/X/0x;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/0x;->AAQ(Lcom/facebook/ads/redexgen/X/Rn;)V

    .line 51335
    return-void
.end method

.method public final ACw()V
    .locals 4

    .line 51336
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Rn;->A05:Lcom/facebook/ads/redexgen/X/XJ;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Rn;->A0A:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rn;->A02:Lcom/facebook/ads/redexgen/X/0x;

    new-instance v0, Lcom/facebook/ads/redexgen/X/0y;

    invoke-direct {v0, v3, v2, p0, v1}, Lcom/facebook/ads/redexgen/X/0y;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Rn;Lcom/facebook/ads/redexgen/X/0x;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rn;->A03:Lcom/facebook/ads/redexgen/X/0y;

    .line 51337
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rn;->A03:Lcom/facebook/ads/redexgen/X/0y;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0y;->A03()V

    .line 51338
    return-void
.end method

.method public final AEP()V
    .locals 1

    .line 51339
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rn;->A03:Lcom/facebook/ads/redexgen/X/0y;

    if-eqz v0, :cond_0

    .line 51340
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0y;->A04()V

    .line 51341
    :cond_0
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    .line 51342
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rn;->A04:Lcom/facebook/ads/redexgen/X/S9;

    if-eqz v0, :cond_0

    .line 51343
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/S9;->A0F()V

    .line 51344
    :cond_0
    return-void
.end method
