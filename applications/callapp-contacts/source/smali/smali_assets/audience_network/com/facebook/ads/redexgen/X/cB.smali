.class public final Lcom/facebook/ads/redexgen/X/cB;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/facebook/ads/redexgen/X/8B;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/cD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EventHandler"
.end annotation


# static fields
.field public static A02:[B


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/XJ;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/cD;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/cB;->A03()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/cD;Lcom/facebook/ads/redexgen/X/XJ;)V
    .locals 0

    .line 71675
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/cB;->A01:Lcom/facebook/ads/redexgen/X/cD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71676
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/cB;->A00:Lcom/facebook/ads/redexgen/X/XJ;

    .line 71677
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/cD;Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/c3;)V
    .locals 0

    .line 71678
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/cB;-><init>(Lcom/facebook/ads/redexgen/X/cD;Lcom/facebook/ads/redexgen/X/XJ;)V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/cB;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x3b

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A01()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 71679
    new-instance v1, Lcom/facebook/ads/redexgen/X/Nc;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/Nc;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A01:Lcom/facebook/ads/redexgen/X/cD;

    .line 71680
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0S(Lcom/facebook/ads/redexgen/X/cD;)Lcom/facebook/ads/redexgen/X/QE;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nc;->A04(Lcom/facebook/ads/redexgen/X/QE;)Lcom/facebook/ads/redexgen/X/Nc;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A01:Lcom/facebook/ads/redexgen/X/cD;

    .line 71681
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0Q(Lcom/facebook/ads/redexgen/X/cD;)Lcom/facebook/ads/redexgen/X/La;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nc;->A03(Lcom/facebook/ads/redexgen/X/La;)Lcom/facebook/ads/redexgen/X/Nc;

    move-result-object v0

    .line 71682
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nc;->A06()Ljava/util/Map;

    move-result-object v4

    .line 71683
    .local p0, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A01:Lcom/facebook/ads/redexgen/X/cD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0N(Lcom/facebook/ads/redexgen/X/cD;)Lcom/facebook/ads/redexgen/X/Jb;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71684
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A01:Lcom/facebook/ads/redexgen/X/cD;

    .line 71685
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0N(Lcom/facebook/ads/redexgen/X/cD;)Lcom/facebook/ads/redexgen/X/Jb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jb;->A04()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 71686
    const/16 v2, 0xc9

    const/4 v1, 0x3

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cB;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71687
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A01:Lcom/facebook/ads/redexgen/X/cD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0r(Lcom/facebook/ads/redexgen/X/cD;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71688
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A01:Lcom/facebook/ads/redexgen/X/cD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0r(Lcom/facebook/ads/redexgen/X/cD;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xc6

    const/4 v1, 0x3

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cB;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71689
    :cond_1
    return-object v4
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/cB;)Ljava/util/Map;
    .locals 0

    .line 71690
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/cB;->A01()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0xcc

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/cB;->A02:[B

    return-void

    :array_0
    .array-data 1
        0x2bt
        0xet
        0x4at
        0x9t
        0xbt
        0x4t
        0x4t
        0x5t
        0x1et
        0x4at
        0x8t
        0xft
        0x4at
        0x9t
        0x6t
        0x3t
        0x9t
        0x1t
        0xft
        0xet
        0x4at
        0x8t
        0xft
        0xct
        0x5t
        0x18t
        0xft
        0x4at
        0x3t
        0x1et
        0x4at
        0x3t
        0x19t
        0x4at
        0x1ct
        0x3t
        0xft
        0x1dt
        0xft
        0xet
        0x44t
        0x42t
        0x6dt
        0x68t
        0x62t
        0x6at
        0x72t
        0x21t
        0x69t
        0x60t
        0x71t
        0x71t
        0x64t
        0x6ft
        0x64t
        0x65t
        0x21t
        0x75t
        0x6et
        0x6et
        0x21t
        0x67t
        0x60t
        0x72t
        0x75t
        0x2ft
        0x14t
        0x10t
        0x13t
        0x27t
        0x36t
        0x3bt
        0x37t
        0x3ct
        0x31t
        0x37t
        0x1ct
        0x37t
        0x26t
        0x25t
        0x3dt
        0x20t
        0x39t
        0x38t
        0x19t
        0x56t
        0x2t
        0x19t
        0x3t
        0x15t
        0x1et
        0x56t
        0x12t
        0x17t
        0x2t
        0x17t
        0x56t
        0x4t
        0x13t
        0x15t
        0x19t
        0x4t
        0x12t
        0x13t
        0x12t
        0x5at
        0x56t
        0x6t
        0x1at
        0x13t
        0x17t
        0x5t
        0x13t
        0x56t
        0x13t
        0x18t
        0x5t
        0x3t
        0x4t
        0x13t
        0x56t
        0x2t
        0x19t
        0x3t
        0x15t
        0x1et
        0x56t
        0x13t
        0x0t
        0x13t
        0x18t
        0x2t
        0x5t
        0x56t
        0x4t
        0x13t
        0x17t
        0x15t
        0x1et
        0x56t
        0x2t
        0x1et
        0x13t
        0x56t
        0x17t
        0x12t
        0x56t
        0x20t
        0x1ft
        0x13t
        0x1t
        0x56t
        0x14t
        0xft
        0x56t
        0x4t
        0x13t
        0x2t
        0x3t
        0x4t
        0x18t
        0x1ft
        0x18t
        0x11t
        0x56t
        0x10t
        0x17t
        0x1at
        0x5t
        0x13t
        0x56t
        0x1ft
        0x10t
        0x56t
        0xft
        0x19t
        0x3t
        0x56t
        0x1ft
        0x18t
        0x2t
        0x13t
        0x4t
        0x15t
        0x13t
        0x6t
        0x2t
        0x56t
        0x2t
        0x1et
        0x13t
        0x56t
        0x13t
        0x0t
        0x13t
        0x18t
        0x2t
        0x58t
        0x21t
        0x27t
        0x3ct
        0x5et
        0x44t
        0x59t
    .end array-data
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/cB;Ljava/util/Map;)V
    .locals 0

    .line 71691
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/cB;->A05(Ljava/util/Map;)V

    return-void
.end method

.method private A05(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 71692
    .local v0, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A01:Lcom/facebook/ads/redexgen/X/cD;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/cD;->A0Y:Lcom/facebook/ads/redexgen/X/Rp;

    if-eqz v0, :cond_0

    .line 71693
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A01:Lcom/facebook/ads/redexgen/X/cD;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/cD;->A0Y:Lcom/facebook/ads/redexgen/X/Rp;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Rp;->A0b(Ljava/util/Map;)V

    .line 71694
    :cond_0
    return-void
.end method


# virtual methods
.method public final A5U()Lcom/facebook/ads/redexgen/X/XJ;
    .locals 1

    .line 71695
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A00:Lcom/facebook/ads/redexgen/X/XJ;

    return-object v0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 7

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KT;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v3, p0

    .line 71696
    .local p0, "this":Lcom/facebook/ads/redexgen/X/cB;
    .local v0, "v":Landroid/view/View;
    :try_start_0
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/cB;->A01:Lcom/facebook/ads/redexgen/X/cD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0Q(Lcom/facebook/ads/redexgen/X/cD;)Lcom/facebook/ads/redexgen/X/La;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/La;->A09()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x42

    const/16 v1, 0x11

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cB;->A00(III)Ljava/lang/String;

    move-result-object v4

    if-nez v5, :cond_1

    .line 71697
    :try_start_1
    const/16 v2, 0x53

    const/16 v1, 0x73

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cB;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71698
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/cB;
    :cond_1
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/cB;->A01:Lcom/facebook/ads/redexgen/X/cD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0G(Lcom/facebook/ads/redexgen/X/cD;)Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A0E(Landroid/content/Context;)I

    move-result v1

    .line 71699
    .local p1, "minimumElapsedTime":I
    if-ltz v1, :cond_3

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/cB;->A01:Lcom/facebook/ads/redexgen/X/cD;

    .line 71700
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0Q(Lcom/facebook/ads/redexgen/X/cD;)Lcom/facebook/ads/redexgen/X/La;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/La;->A04()J

    move-result-wide v5

    int-to-long v1, v1

    cmp-long v0, v5, v1

    if-gez v0, :cond_3

    .line 71701
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/cB;->A01:Lcom/facebook/ads/redexgen/X/cD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0Q(Lcom/facebook/ads/redexgen/X/cD;)Lcom/facebook/ads/redexgen/X/La;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/La;->A08()Z

    move-result v0

    if-nez v0, :cond_2

    .line 71702
    const/4 v2, 0x0

    const/16 v1, 0x29

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cB;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 71703
    :cond_2
    const/16 v2, 0x29

    const/16 v1, 0x19

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cB;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71704
    :goto_0
    return-void

    .line 71705
    :cond_3
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/cB;->A01:Lcom/facebook/ads/redexgen/X/cD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0Q(Lcom/facebook/ads/redexgen/X/cD;)Lcom/facebook/ads/redexgen/X/La;

    move-result-object v1

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/cB;->A01:Lcom/facebook/ads/redexgen/X/cD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0G(Lcom/facebook/ads/redexgen/X/cD;)Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/La;->A0A(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 71706
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/cB;->A01:Lcom/facebook/ads/redexgen/X/cD;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/cD;->A0Y:Lcom/facebook/ads/redexgen/X/Rp;

    if-eqz v0, :cond_4

    .line 71707
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/cB;->A01:Lcom/facebook/ads/redexgen/X/cD;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/cD;->A0Y:Lcom/facebook/ads/redexgen/X/Rp;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/cB;->A01()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Rp;->A0c(Ljava/util/Map;)V

    .line 71708
    :cond_4
    return-void

    .line 71709
    :cond_5
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/cB;->A01:Lcom/facebook/ads/redexgen/X/cD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0G(Lcom/facebook/ads/redexgen/X/cD;)Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A11(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 71710
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/cB;->A01:Lcom/facebook/ads/redexgen/X/cD;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/cD;->A0Y:Lcom/facebook/ads/redexgen/X/Rp;

    if-eqz v0, :cond_6

    .line 71711
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/cB;->A01:Lcom/facebook/ads/redexgen/X/cD;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/cD;->A0Y:Lcom/facebook/ads/redexgen/X/Rp;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/cB;->A01()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Rp;->A0f(Ljava/util/Map;)V

    .line 71712
    :cond_6
    new-instance v2, Lcom/facebook/ads/redexgen/X/JU;

    invoke-direct {v2, v3}, Lcom/facebook/ads/redexgen/X/JU;-><init>(Lcom/facebook/ads/redexgen/X/cB;)V

    new-instance v1, Lcom/facebook/ads/redexgen/X/JV;

    invoke-direct {v1, v3}, Lcom/facebook/ads/redexgen/X/JV;-><init>(Lcom/facebook/ads/redexgen/X/cB;)V

    .line 71713
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ks;->A00()Landroid/app/Activity;

    move-result-object v0

    .line 71714
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LB;->A00(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/Context;)V

    .line 71715
    return-void

    .line 71716
    :cond_7
    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/cB;->A01()Ljava/util/Map;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/cB;->A05(Ljava/util/Map;)V

    .line 71717
    return-void
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p1    # "minimumElapsedTime":I
    .end local v0    # "v":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/KT;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public final onLongClick(Landroid/view/View;)Z
    .locals 4

    .line 71718
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A01:Lcom/facebook/ads/redexgen/X/cD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A08(Lcom/facebook/ads/redexgen/X/cD;)Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A01:Lcom/facebook/ads/redexgen/X/cD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0R(Lcom/facebook/ads/redexgen/X/cD;)Lcom/facebook/ads/redexgen/X/Na;

    move-result-object v0

    if-nez v0, :cond_1

    .line 71719
    :cond_0
    return v3

    .line 71720
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A01:Lcom/facebook/ads/redexgen/X/cD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0R(Lcom/facebook/ads/redexgen/X/cD;)Lcom/facebook/ads/redexgen/X/Na;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A01:Lcom/facebook/ads/redexgen/X/cD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A08(Lcom/facebook/ads/redexgen/X/cD;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A01:Lcom/facebook/ads/redexgen/X/cD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A08(Lcom/facebook/ads/redexgen/X/cD;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {v2, v3, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Na;->setBounds(IIII)V

    .line 71721
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A01:Lcom/facebook/ads/redexgen/X/cD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0R(Lcom/facebook/ads/redexgen/X/cD;)Lcom/facebook/ads/redexgen/X/Na;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A01:Lcom/facebook/ads/redexgen/X/cD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0R(Lcom/facebook/ads/redexgen/X/cD;)Lcom/facebook/ads/redexgen/X/Na;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Na;->A0F()Z

    move-result v1

    const/4 v0, 0x1

    xor-int/2addr v1, v0

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/Na;->A0E(Z)V

    .line 71722
    return v0
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 71723
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A01:Lcom/facebook/ads/redexgen/X/cD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0Q(Lcom/facebook/ads/redexgen/X/cD;)Lcom/facebook/ads/redexgen/X/La;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A01:Lcom/facebook/ads/redexgen/X/cD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A08(Lcom/facebook/ads/redexgen/X/cD;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, p2, v0, p1}, Lcom/facebook/ads/redexgen/X/La;->A07(Landroid/view/MotionEvent;Landroid/view/View;Landroid/view/View;)V

    .line 71724
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A01:Lcom/facebook/ads/redexgen/X/cD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A07(Lcom/facebook/ads/redexgen/X/cD;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cB;->A01:Lcom/facebook/ads/redexgen/X/cD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A07(Lcom/facebook/ads/redexgen/X/cD;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
