.class public final Lcom/facebook/ads/redexgen/X/cB;
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

.field public A04:Lcom/facebook/ads/redexgen/X/bp;

.field public A05:Lcom/facebook/ads/redexgen/X/Wm;

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

    invoke-static {}, Lcom/facebook/ads/redexgen/X/cB;->A06()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/cB;->A05()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 70981
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70982
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A0A:Ljava/lang/String;

    return-void
.end method

.method private A00()I
    .locals 4

    .line 70983
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/cB;->A05:Lcom/facebook/ads/redexgen/X/Wm;

    .line 70984
    const/16 v2, 0xcd

    const/4 v1, 0x6

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cB;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Wm;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 70985
    .local p0, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v3

    .line 70986
    .local v3, "rotation":I
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/cB;->A02()Lcom/facebook/ads/redexgen/X/NY;

    move-result-object v2

    .line 70987
    .local v2, "adOrientation":Lcom/facebook/ads/redexgen/X/NY;
    sget-object v0, Lcom/facebook/ads/redexgen/X/NY;->A05:Lcom/facebook/ads/redexgen/X/NY;

    if-ne v2, v0, :cond_0

    .line 70988
    const/4 v3, -0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/cB;->A0C:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/cB;->A0C:[Ljava/lang/String;

    const-string v1, "b7o"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "Q7inAkPu5HYVeU"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return v3

    .line 70989
    :cond_0
    sget-object v1, Lcom/facebook/ads/redexgen/X/NY;->A03:Lcom/facebook/ads/redexgen/X/NY;

    const/4 v0, 0x2

    if-ne v2, v1, :cond_3

    .line 70990
    if-eq v3, v0, :cond_2

    const/4 v0, 0x3

    if-eq v3, v0, :cond_2

    .line 70991
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/cB;->A0C:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/cB;->A0C:[Ljava/lang/String;

    const-string v1, "bcp"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "BEZRNTMscmchpM"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return v3

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 70992
    :cond_2
    const/16 v0, 0x8

    return v0

    .line 70993
    :cond_3
    if-eq v3, v0, :cond_4

    .line 70994
    const/4 v0, 0x1

    return v0

    .line 70995
    :cond_4
    const/16 v0, 0x9

    return v0
.end method

.method private final A01()Lcom/facebook/ads/redexgen/X/KM;
    .locals 1

    .line 70996
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A04:Lcom/facebook/ads/redexgen/X/bp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bp;->A0C()Lcom/facebook/ads/redexgen/X/KM;

    move-result-object v0

    return-object v0
.end method

.method private A02()Lcom/facebook/ads/redexgen/X/NY;
    .locals 1

    .line 70997
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A04:Lcom/facebook/ads/redexgen/X/bp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bp;->A0D()Lcom/facebook/ads/redexgen/X/NY;

    move-result-object v0

    return-object v0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/cB;->A0B:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x54

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

    .line 70998
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A09:Z

    .line 70999
    return-void
.end method

.method public static A05()V
    .locals 1

    const/16 v0, 0xd3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/cB;->A0B:[B

    return-void

    :array_0
    .array-data 1
        -0x25t
        -0x7t
        0x6t
        -0x41t
        0xct
        -0x48t
        0xbt
        0xct
        -0x7t
        0xat
        0xct
        -0x48t
        -0x27t
        0xdt
        -0x4t
        0x1t
        -0x3t
        0x6t
        -0x5t
        -0x3t
        -0x1at
        -0x3t
        0xct
        0xft
        0x7t
        0xat
        0x3t
        -0x27t
        -0x5t
        0xct
        0x1t
        0xet
        0x1t
        0xct
        0x11t
        -0x3at
        -0x48t
        -0x1bt
        -0x7t
        0x3t
        -0x3t
        -0x48t
        0xbt
        0xdt
        0xat
        -0x3t
        -0x48t
        0xct
        0x0t
        -0x7t
        0xct
        -0x48t
        0x1t
        0xct
        -0x41t
        0xbt
        -0x48t
        0x1t
        0x6t
        -0x48t
        0x11t
        0x7t
        0xdt
        0xat
        -0x48t
        -0x27t
        0x6t
        -0x4t
        0xat
        0x7t
        0x1t
        -0x4t
        -0x1bt
        -0x7t
        0x6t
        0x1t
        -0x2t
        -0x3t
        0xbt
        0xct
        -0x3at
        0x10t
        0x5t
        0x4t
        -0x48t
        -0x2t
        0x1t
        0x4t
        -0x3t
        -0x3at
        -0x10t
        -0x14t
        -0x15t
        0x1ft
        0xet
        0x13t
        0xft
        0x18t
        0xdt
        0xft
        -0x8t
        0xft
        0x1et
        0x21t
        0x19t
        0x1ct
        0x15t
        -0x37t
        -0x30t
        -0x23t
        -0x32t
        -0x30t
        -0x2et
        -0x1dt
        -0x28t
        -0x1bt
        -0x28t
        -0x1dt
        -0x18t
        -0xbt
        -0x2t
        -0x5t
        -0x9t
        0x0t
        0x6t
        -0x1at
        0x1t
        -0x3t
        -0x9t
        0x0t
        0xdt
        0x5t
        0x4t
        0x9t
        0x1t
        0x14t
        0x9t
        0xft
        0xet
        -0x1ct
        0x1t
        0x14t
        0x1t
        -0x37t
        -0x3bt
        -0x46t
        -0x44t
        -0x42t
        -0x3at
        -0x42t
        -0x39t
        -0x33t
        -0x5et
        -0x43t
        -0x9t
        -0x7t
        -0x14t
        -0x15t
        -0x14t
        -0x13t
        -0x10t
        -0xbt
        -0x14t
        -0x15t
        -0x2at
        -0x7t
        -0x10t
        -0x14t
        -0xbt
        -0x5t
        -0x18t
        -0x5t
        -0x10t
        -0xat
        -0xbt
        -0x2et
        -0x14t
        0x0t
        -0x9t
        -0x16t
        -0xat
        -0x6t
        -0x16t
        -0x8t
        -0x7t
        -0x27t
        -0x12t
        -0xet
        -0x16t
        0x21t
        0x1at
        0x15t
        0x1dt
        0x21t
        0x11t
        -0xbt
        0x10t
        0xbt
        -0x2t
        -0x6t
        0xct
        -0x17t
        0xet
        0x5t
        -0x6t
        0x13t
        0x5t
        0xat
        0x0t
        0xbt
        0x13t
    .end array-data
.end method

.method public static A06()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Tri2"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "1D6RXHNY"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "CY2J"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "FG3HLf7FRck3Q4"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "aTw9XxKg19aD2PWH35UjlgQd"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "aN0Sboz7ddtAAnQUWG6qQ4oJRDDzSUBt"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "pWs"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "z"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/cB;->A0C:[Ljava/lang/String;

    return-void
.end method

.method private A07(Landroid/content/Intent;)V
    .locals 4

    .line 71000
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/cB;->A04:Lcom/facebook/ads/redexgen/X/bp;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/cB;->A01:Lcom/facebook/ads/RewardData;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cB;->A0A:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A06:Ljava/lang/String;

    .line 71001
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/P5;->A03(Lcom/facebook/ads/RewardData;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71002
    invoke-virtual {v3, p1, v2, v0}, Lcom/facebook/ads/redexgen/X/bp;->A0G(Landroid/content/Intent;Lcom/facebook/ads/RewardData;Ljava/lang/String;)V

    .line 71003
    return-void
.end method

.method private final A08(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/0x;Lcom/facebook/ads/redexgen/X/1n;Ljava/util/EnumSet;Ljava/lang/String;)V
    .locals 1
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Wm;",
            "Lcom/facebook/ads/redexgen/X/0x;",
            "Lcom/facebook/ads/redexgen/X/1n;",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 71004
    .local p5, "cacheFlags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/facebook/ads/CacheFlag;>;"
    new-instance v0, Lcom/facebook/ads/redexgen/X/bp;

    invoke-direct {v0, p1, p3, p0, p5}, Lcom/facebook/ads/redexgen/X/bp;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/1n;Lcom/facebook/ads/redexgen/X/1a;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A04:Lcom/facebook/ads/redexgen/X/bp;

    .line 71005
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A04:Lcom/facebook/ads/redexgen/X/bp;

    invoke-virtual {v0, p1, p4}, Lcom/facebook/ads/redexgen/X/bp;->A0H(Lcom/facebook/ads/redexgen/X/Wm;Ljava/util/EnumSet;)V

    .line 71006
    return-void
.end method

.method private A09(Lcom/facebook/ads/redexgen/X/KM;)V
    .locals 2

    .line 71007
    sget-object v0, Lcom/facebook/ads/redexgen/X/KM;->A06:Lcom/facebook/ads/redexgen/X/KM;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/KM;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71008
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A05:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/0c;->A04:Lcom/facebook/ads/redexgen/X/0c;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->ADv(Lcom/facebook/ads/redexgen/X/0c;)V

    .line 71009
    :cond_0
    :goto_0
    return-void

    .line 71010
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/KM;->A07:Lcom/facebook/ads/redexgen/X/KM;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/KM;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71011
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A05:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/0c;->A08:Lcom/facebook/ads/redexgen/X/0c;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->ADv(Lcom/facebook/ads/redexgen/X/0c;)V

    goto :goto_0

    .line 71012
    :cond_2
    sget-object v0, Lcom/facebook/ads/redexgen/X/KM;->A09:Lcom/facebook/ads/redexgen/X/KM;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/KM;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 71013
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A05:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/0c;->A0A:Lcom/facebook/ads/redexgen/X/0c;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->ADv(Lcom/facebook/ads/redexgen/X/0c;)V

    goto :goto_0

    .line 71014
    :cond_3
    sget-object v0, Lcom/facebook/ads/redexgen/X/KM;->A08:Lcom/facebook/ads/redexgen/X/KM;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/KM;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 71015
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A05:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/0c;->A09:Lcom/facebook/ads/redexgen/X/0c;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->ADv(Lcom/facebook/ads/redexgen/X/0c;)V

    goto :goto_0

    .line 71016
    :cond_4
    sget-object v0, Lcom/facebook/ads/redexgen/X/KM;->A03:Lcom/facebook/ads/redexgen/X/KM;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/KM;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71017
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A04:Lcom/facebook/ads/redexgen/X/bp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bp;->A0J()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 71018
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A05:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/0c;->A05:Lcom/facebook/ads/redexgen/X/0c;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->ADv(Lcom/facebook/ads/redexgen/X/0c;)V

    goto :goto_0

    .line 71019
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A04:Lcom/facebook/ads/redexgen/X/bp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bp;->A0I()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 71020
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A05:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/0c;->A07:Lcom/facebook/ads/redexgen/X/0c;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->ADv(Lcom/facebook/ads/redexgen/X/0c;)V

    goto :goto_0

    .line 71021
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A05:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/0c;->A06:Lcom/facebook/ads/redexgen/X/0c;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->ADv(Lcom/facebook/ads/redexgen/X/0c;)V

    goto :goto_0
.end method


# virtual methods
.method public final A0A(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/0x;Lcom/facebook/ads/redexgen/X/1n;Ljava/util/EnumSet;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/RewardData;)V
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
            "Lcom/facebook/ads/redexgen/X/Wm;",
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

    .line 71022
    .local p6, "cacheFlags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/facebook/ads/CacheFlag;>;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/cB;->A05:Lcom/facebook/ads/redexgen/X/Wm;

    .line 71023
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/cB;->A02:Lcom/facebook/ads/redexgen/X/0x;

    .line 71024
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/1n;->A02()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A08:Ljava/lang/String;

    .line 71025
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/cB;->A08:Ljava/lang/String;

    if-eqz v3, :cond_0

    const/16 v2, 0x6b

    const/4 v1, 0x1

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cB;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    aget-object v0, v1, v0

    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A06:Ljava/lang/String;

    .line 71026
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/1n;->A00()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A00:J

    .line 71027
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/cB;->A07:Ljava/lang/String;

    .line 71028
    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/cB;->A01:Lcom/facebook/ads/RewardData;

    .line 71029
    invoke-direct/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/cB;->A08(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/0x;Lcom/facebook/ads/redexgen/X/1n;Ljava/util/EnumSet;Ljava/lang/String;)V

    .line 71030
    return-void

    .line 71031
    :cond_0
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cB;->A03(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final A0B()Z
    .locals 8

    .line 71032
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A09:Z

    const/4 v7, 0x0

    if-nez v0, :cond_1

    .line 71033
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cB;->A02:Lcom/facebook/ads/redexgen/X/0x;

    if-eqz v1, :cond_0

    .line 71034
    sget-object v0, Lcom/facebook/ads/AdError;->SHOW_CALLED_BEFORE_LOAD_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/0x;->AAQ(Lcom/facebook/ads/redexgen/X/cB;Lcom/facebook/ads/AdError;)V

    .line 71035
    :cond_0
    return v7

    .line 71036
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A05:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Kr;->A04(Lcom/facebook/ads/redexgen/X/Wm;)Lcom/facebook/ads/internal/util/activity/AdActivityIntent;

    move-result-object v4

    .line 71037
    .local p0, "intent":Lcom/facebook/ads/internal/util/activity/AdActivityIntent;
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/cB;->A00()I

    move-result v3

    .line 71038
    const/16 v2, 0x9a

    const/16 v1, 0x18

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cB;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 71039
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/cB;->A0A:Ljava/lang/String;

    const/16 v2, 0xbd

    const/16 v1, 0x8

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cB;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71040
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/cB;->A08:Ljava/lang/String;

    const/16 v2, 0x8f

    const/16 v1, 0xb

    const/4 v0, 0x5

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cB;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71041
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/cB;->A00:J

    const/16 v5, 0xb2

    const/16 v3, 0xb

    const/16 v0, 0x31

    invoke-static {v5, v3, v0}, Lcom/facebook/ads/redexgen/X/cB;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v1, v2}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 71042
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/cB;->A01()Lcom/facebook/ads/redexgen/X/KM;

    move-result-object v3

    .line 71043
    .local v7, "viewType":Lcom/facebook/ads/redexgen/X/KM;
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/cB;->A09(Lcom/facebook/ads/redexgen/X/KM;)V

    .line 71044
    const/16 v2, 0xc5

    const/16 v1, 0x8

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cB;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 71045
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/cB;->A07:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 71046
    const/16 v2, 0x82

    const/16 v1, 0xd

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cB;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71047
    :cond_2
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/cB;->A07(Landroid/content/Intent;)V

    .line 71048
    const/high16 v0, 0x10000000

    invoke-virtual {v4, v0}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->addFlags(I)Landroid/content/Intent;

    .line 71049
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A04:Lcom/facebook/ads/redexgen/X/bp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bp;->A0E()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x77

    const/16 v1, 0xb

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cB;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71050
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A05:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-static {v0}, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A04(Lcom/facebook/ads/redexgen/X/Wm;)V

    .line 71051
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A05:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/Kr;->A0A(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/internal/util/activity/AdActivityIntent;)V

    .line 71052
    const/4 v0, 0x1

    return v0
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71053
    :catch_0
    move-exception v5

    .line 71054
    .local v1, "anfe":Landroid/content/ActivityNotFoundException;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A05:Lcom/facebook/ads/redexgen/X/Wm;

    .line 71055
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v6

    sget v4, Lcom/facebook/ads/redexgen/X/8e;->A05:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, v5}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/Throwable;)V

    .line 71056
    const/16 v2, 0x6c

    const/16 v1, 0xb

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cB;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 71057
    const/16 v2, 0x5a

    const/16 v1, 0x11

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cB;->A03(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x5a

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cB;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71058
    return v7
.end method

.method public final A5x()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 71059
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A04:Lcom/facebook/ads/redexgen/X/bp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bp;->A0E()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A6x()Lcom/facebook/ads/internal/protocol/AdPlacementType;
    .locals 1

    .line 71060
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->INTERSTITIAL:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    return-object v0
.end method

.method public final A9L(Lcom/facebook/ads/AdError;)V
    .locals 1

    .line 71061
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A02:Lcom/facebook/ads/redexgen/X/0x;

    if-eqz v0, :cond_0

    .line 71062
    invoke-interface {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/0x;->AAQ(Lcom/facebook/ads/redexgen/X/cB;Lcom/facebook/ads/AdError;)V

    .line 71063
    :cond_0
    return-void
.end method

.method public final A9M()V
    .locals 1

    .line 71064
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/cB;->A04()V

    .line 71065
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A02:Lcom/facebook/ads/redexgen/X/0x;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/0x;->AAP(Lcom/facebook/ads/redexgen/X/cB;)V

    .line 71066
    return-void
.end method

.method public final ACw()V
    .locals 4

    .line 71067
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/cB;->A05:Lcom/facebook/ads/redexgen/X/Wm;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/cB;->A0A:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cB;->A02:Lcom/facebook/ads/redexgen/X/0x;

    new-instance v0, Lcom/facebook/ads/redexgen/X/0y;

    invoke-direct {v0, v3, v2, p0, v1}, Lcom/facebook/ads/redexgen/X/0y;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/cB;Lcom/facebook/ads/redexgen/X/0x;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A03:Lcom/facebook/ads/redexgen/X/0y;

    .line 71068
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A03:Lcom/facebook/ads/redexgen/X/0y;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0y;->A03()V

    .line 71069
    return-void
.end method

.method public final AER()V
    .locals 1

    .line 71070
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A03:Lcom/facebook/ads/redexgen/X/0y;

    if-eqz v0, :cond_0

    .line 71071
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0y;->A04()V

    .line 71072
    :cond_0
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    .line 71073
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A04:Lcom/facebook/ads/redexgen/X/bp;

    if-eqz v0, :cond_0

    .line 71074
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bp;->A0F()V

    .line 71075
    :cond_0
    return-void
.end method
