.class public final Lcom/facebook/ads/redexgen/X/Ne;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Nd;
    }
.end annotation


# static fields
.field public static A09:[B

.field public static A0A:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Nd;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A01:Z

.field public A02:Z

.field public final A03:Lcom/facebook/ads/redexgen/X/Wm;

.field public final A04:Lcom/facebook/ads/redexgen/X/JC;

.field public final A05:Lcom/facebook/ads/redexgen/X/Lc;

.field public final A06:Lcom/facebook/ads/redexgen/X/M7;

.field public final A07:Lcom/facebook/ads/redexgen/X/Q9;

.field public final A08:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ne;->A03()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ne;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Q9;Lcom/facebook/ads/redexgen/X/Lc;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/M7;)V
    .locals 1

    .line 45558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45559
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ne;->A01:Z

    .line 45560
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ne;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    .line 45561
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Ne;->A08:Ljava/lang/String;

    .line 45562
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Ne;->A07:Lcom/facebook/ads/redexgen/X/Q9;

    .line 45563
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Ne;->A05:Lcom/facebook/ads/redexgen/X/Lc;

    .line 45564
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/Ne;->A04:Lcom/facebook/ads/redexgen/X/JC;

    .line 45565
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/Ne;->A06:Lcom/facebook/ads/redexgen/X/M7;

    .line 45566
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Ne;)Lcom/facebook/ads/redexgen/X/JC;
    .locals 0

    .line 45567
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Ne;->A04:Lcom/facebook/ads/redexgen/X/JC;

    return-object p0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ne;->A09:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x13

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
    .locals 4

    const/16 v0, 0x40

    new-array v3, v0, [B

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ne;->A0A:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ne;->A0A:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x5

    aput-object v1, v2, v0

    fill-array-data v3, :array_0

    sput-object v3, Lcom/facebook/ads/redexgen/X/Ne;->A09:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :array_0
    .array-data 1
        0x77t
        -0x78t
        0x75t
        0x76t
        -0x57t
        -0x58t
        -0x58t
        -0x5dt
        -0x5et
        0x77t
        -0x60t
        -0x63t
        -0x69t
        -0x61t
        -0x80t
        -0x63t
        -0x59t
        -0x58t
        -0x67t
        -0x5et
        -0x67t
        -0x5at
        0x73t
        -0x60t
        -0x60t
        -0x63t
        -0x60t
        0x4et
        -0x6dt
        -0x5at
        -0x6dt
        -0x6ft
        -0x5dt
        -0x5et
        -0x69t
        -0x64t
        -0x6bt
        0x4et
        -0x71t
        -0x6ft
        -0x5et
        -0x69t
        -0x63t
        -0x64t
        -0x64t
        -0x37t
        -0x37t
        -0x3at
        -0x37t
        0x77t
        -0x32t
        -0x41t
        -0x40t
        -0x3dt
        -0x44t
        0x77t
        -0x3at
        -0x39t
        -0x44t
        -0x3bt
        -0x40t
        -0x3bt
        -0x42t
        0x77t
    .end array-data
.end method

.method public static A03()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "R0SbMgWAoC497HVFrz"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "HjDMjTQFKfQjEPdjddKMHVEmssyIO6xJ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "qLmiUd82g2mhrwqPXxjSPUm4NIZHyVr2"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "b8w5"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "5ahVLoWejnV8u5u0zxB2Y4aA1Z0H734m"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "82nB4Ww4zktBcOGVc7"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "fE0nEfPNcAkneFTlCeTsSM9yzZ1yQJUc"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "9xmO"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ne;->A0A:[Ljava/lang/String;

    return-void
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/Q9;Lcom/facebook/ads/redexgen/X/Lc;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/1J;Ljava/lang/String;)V
    .locals 7
    .param p1    # Lcom/facebook/ads/redexgen/X/Q9;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 45568
    invoke-virtual {p4}, Lcom/facebook/ads/redexgen/X/1J;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 45569
    .local v0, "uri":Landroid/net/Uri;
    new-instance v0, Lcom/facebook/ads/redexgen/X/NX;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/NX;-><init>()V

    .line 45570
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/NX;->A03(Lcom/facebook/ads/redexgen/X/Q9;)Lcom/facebook/ads/redexgen/X/NX;

    move-result-object v0

    .line 45571
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/NX;->A02(Lcom/facebook/ads/redexgen/X/Lc;)Lcom/facebook/ads/redexgen/X/NX;

    move-result-object v0

    .line 45572
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NX;->A05()Ljava/util/Map;

    move-result-object v4

    .line 45573
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p3

    move-object v2, p5

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/0g;->A01(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/JC;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;ZZ)Lcom/facebook/ads/redexgen/X/0f;

    move-result-object v0

    .line 45574
    .local p1, "adAction":Lcom/facebook/ads/redexgen/X/0f;
    if-eqz v0, :cond_0

    .line 45575
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0f;->A0A()Lcom/facebook/ads/redexgen/X/0e;

    .line 45576
    :cond_0
    return-void
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/Ne;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 45577
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Ne;->A07(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private A06(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 45578
    .local v1, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ne;->A04:Lcom/facebook/ads/redexgen/X/JC;

    invoke-interface {v0, p1, p3}, Lcom/facebook/ads/redexgen/X/JC;->A8t(Ljava/lang/String;Ljava/util/Map;)V

    .line 45579
    new-instance v2, Lcom/facebook/ads/redexgen/X/Nb;

    invoke-direct {v2, p0, p3, p1, p2}, Lcom/facebook/ads/redexgen/X/Nb;-><init>(Lcom/facebook/ads/redexgen/X/Ne;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/facebook/ads/redexgen/X/Nc;

    invoke-direct {v1, p0, p1, p3}, Lcom/facebook/ads/redexgen/X/Nc;-><init>(Lcom/facebook/ads/redexgen/X/Ne;Ljava/lang/String;Ljava/util/Map;)V

    .line 45580
    invoke-static {}, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A00()Landroid/app/Activity;

    move-result-object v0

    .line 45581
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LD;->A00(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/Context;)V

    .line 45582
    return-void
.end method

.method private A07(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 45583
    .local v1, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    const/16 v1, 0x16

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ne;->A01(III)Ljava/lang/String;

    move-result-object v4

    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 45584
    .local v2, "uri":Landroid/net/Uri;
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Ne;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Ne;->A04:Lcom/facebook/ads/redexgen/X/JC;

    new-instance v1, Lcom/facebook/ads/redexgen/X/NX;

    invoke-direct {v1, p3}, Lcom/facebook/ads/redexgen/X/NX;-><init>(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ne;->A07:Lcom/facebook/ads/redexgen/X/Q9;

    .line 45585
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NX;->A03(Lcom/facebook/ads/redexgen/X/Q9;)Lcom/facebook/ads/redexgen/X/NX;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ne;->A05:Lcom/facebook/ads/redexgen/X/Lc;

    .line 45586
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NX;->A02(Lcom/facebook/ads/redexgen/X/Lc;)Lcom/facebook/ads/redexgen/X/NX;

    move-result-object v0

    .line 45587
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NX;->A05()Ljava/util/Map;

    move-result-object v9

    iget-boolean v10, p0, Lcom/facebook/ads/redexgen/X/Ne;->A01:Z

    iget-boolean v11, p0, Lcom/facebook/ads/redexgen/X/Ne;->A02:Z

    .line 45588
    move-object v7, p1

    invoke-static/range {v5 .. v11}, Lcom/facebook/ads/redexgen/X/0g;->A01(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/JC;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;ZZ)Lcom/facebook/ads/redexgen/X/0f;

    move-result-object v0

    .line 45589
    .local v7, "adAction":Lcom/facebook/ads/redexgen/X/0f;
    if-eqz v0, :cond_0

    .line 45590
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0f;->A0D()V

    .line 45591
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ne;->A00:Lcom/facebook/ads/redexgen/X/Nd;

    if-eqz v0, :cond_1

    .line 45592
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ne;->A00:Lcom/facebook/ads/redexgen/X/Nd;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Nd;->A9q()V

    .line 45593
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ne;->A06:Lcom/facebook/ads/redexgen/X/M7;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ne;->A08:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/M7;->A3p(Ljava/lang/String;)V

    goto :goto_0
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 45594
    .end local v7    # "adAction":Lcom/facebook/ads/redexgen/X/0f;
    :catch_0
    move-exception v5

    .line 45595
    .local v7, "e":Landroid/content/ActivityNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2c

    const/16 v1, 0x14

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ne;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 45596
    :catch_1
    move-exception v3

    .line 45597
    .local v7, "ex":Ljava/lang/Exception;
    const/16 v2, 0x16

    const/16 v1, 0x16

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ne;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45598
    :goto_0
    return-void
.end method


# virtual methods
.method public final A08(Lcom/facebook/ads/redexgen/X/Nd;)V
    .locals 0

    .line 45599
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ne;->A00:Lcom/facebook/ads/redexgen/X/Nd;

    .line 45600
    return-void
.end method

.method public final A09(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 45601
    .local v1, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ne;->A04:Lcom/facebook/ads/redexgen/X/JC;

    new-instance v2, Lcom/facebook/ads/redexgen/X/JK;

    invoke-direct {v2, p1, v0}, Lcom/facebook/ads/redexgen/X/JK;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JC;)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/JJ;->A0I:Lcom/facebook/ads/redexgen/X/JJ;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JK;->A02(Lcom/facebook/ads/redexgen/X/JJ;Ljava/util/Map;)V

    .line 45602
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ne;->A05:Lcom/facebook/ads/redexgen/X/Lc;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ne;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Lc;->A0A(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45603
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ne;->A04:Lcom/facebook/ads/redexgen/X/JC;

    invoke-interface {v0, p1, p3}, Lcom/facebook/ads/redexgen/X/JC;->A8T(Ljava/lang/String;Ljava/util/Map;)V

    .line 45604
    :goto_0
    return-void

    .line 45605
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ne;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A12(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45606
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Ne;->A06(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 45607
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Ne;->A07(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public final A0A(Z)V
    .locals 0

    .line 45608
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Ne;->A02:Z

    .line 45609
    return-void
.end method

.method public final A0B(Z)V
    .locals 0

    .line 45610
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Ne;->A01:Z

    .line 45611
    return-void
.end method
