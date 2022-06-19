.class public final Lcom/facebook/ads/redexgen/X/ab;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Ml;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Mj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Mj;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/ab;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/ab;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Mj;)V
    .locals 0

    .line 67967
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ab;->A00:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/ab;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x6f

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
    .locals 3

    const/16 v0, 0x35

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/ab;->A01:[B

    sget-object v2, Lcom/facebook/ads/redexgen/X/ab;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/ab;->A02:[Ljava/lang/String;

    const-string v1, "41BFLxMtpa8zSeOoPh8lyezFWRN0z1Os"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :array_0
    .array-data 1
        -0x1dt
        -0x11t
        -0x13t
        -0x52t
        -0x1at
        -0x1ft
        -0x1dt
        -0x1bt
        -0x1et
        -0x11t
        -0x11t
        -0x15t
        -0x52t
        -0x1ft
        -0x1ct
        -0xdt
        -0x52t
        -0x1ft
        -0x1ct
        -0xet
        -0x1bt
        -0x10t
        -0x11t
        -0xet
        -0xct
        -0x17t
        -0x12t
        -0x19t
        -0x52t
        -0x3at
        -0x37t
        -0x32t
        -0x37t
        -0x2dt
        -0x38t
        -0x21t
        -0x3ft
        -0x3ct
        -0x21t
        -0x2et
        -0x3bt
        -0x30t
        -0x31t
        -0x2et
        -0x2ct
        -0x37t
        -0x32t
        -0x39t
        -0x21t
        -0x3at
        -0x34t
        -0x31t
        -0x29t
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "nV"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "0i4Wqrqqd8V"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "SjjlSsHq4luZ"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "UY2G1G5tdkkQRCLDawUW8PMELrtkam"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "x8YzSsjyce"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "sMLSYBAewXVAxhh2DbXf8YHA5QSbjC"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Z41BjwW"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "WlPnbv1jMaDivlCQdRIz8mOz1GWjjHLQ"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/ab;->A02:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A43()V
    .locals 4

    .line 67968
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ab;->A00:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Mj;->A07(Lcom/facebook/ads/redexgen/X/Mj;)Lcom/facebook/ads/redexgen/X/M9;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67969
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ab;->A00:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Mj;->A07(Lcom/facebook/ads/redexgen/X/Mj;)Lcom/facebook/ads/redexgen/X/M9;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x35

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ab;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/M9;->A3t(Ljava/lang/String;)V

    .line 67970
    :cond_0
    return-void
.end method

.method public final A44()V
    .locals 2

    .line 67971
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ab;->A00:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mj;->A0L()V

    .line 67972
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ab;->A00:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Mj;->A08(Lcom/facebook/ads/redexgen/X/Mj;)Lcom/facebook/ads/redexgen/X/MA;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67973
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ab;->A00:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Mj;->A08(Lcom/facebook/ads/redexgen/X/Mj;)Lcom/facebook/ads/redexgen/X/MA;

    move-result-object v1

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/MA;->ABR(Z)V

    .line 67974
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ab;->A00:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Mj;->A0F(Lcom/facebook/ads/redexgen/X/Mj;)V

    .line 67975
    return-void
.end method

.method public final A7S()V
    .locals 4

    .line 67976
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ab;->A00:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Mj;->A05(Lcom/facebook/ads/redexgen/X/Mj;)Lcom/facebook/ads/redexgen/X/2B;

    move-result-object v0

    if-nez v0, :cond_0

    .line 67977
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ab;->A44()V

    .line 67978
    return-void

    .line 67979
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ab;->A00:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Mj;->A01(Lcom/facebook/ads/redexgen/X/Mj;)I

    .line 67980
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ab;->A00:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Mj;->A05(Lcom/facebook/ads/redexgen/X/Mj;)Lcom/facebook/ads/redexgen/X/2B;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2B;->A02()Lcom/facebook/ads/redexgen/X/2B;

    move-result-object v0

    if-nez v0, :cond_2

    .line 67981
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/ab;->A00:Lcom/facebook/ads/redexgen/X/Mj;

    sget-object v1, Lcom/facebook/ads/redexgen/X/ab;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x7

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/ab;->A02:[Ljava/lang/String;

    const-string v1, "M7aB9yPR9altU9X1FYnvgfaKEANBwcUB"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Mj;->A0E(Lcom/facebook/ads/redexgen/X/Mj;)V

    goto :goto_0

    .line 67982
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ab;->A00:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Mj;->A05(Lcom/facebook/ads/redexgen/X/Mj;)Lcom/facebook/ads/redexgen/X/2B;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2B;->A02()Lcom/facebook/ads/redexgen/X/2B;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Mj;->A0G(Lcom/facebook/ads/redexgen/X/Mj;Lcom/facebook/ads/redexgen/X/2B;)V

    .line 67983
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-lt v1, v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ab;->A00:Lcom/facebook/ads/redexgen/X/Mj;

    .line 67984
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Mj;->A06(Lcom/facebook/ads/redexgen/X/Mj;)Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A1T(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 67985
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/ab;->A00:Lcom/facebook/ads/redexgen/X/Mj;

    const/16 v1, 0x80

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Mj;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 67986
    :cond_3
    return-void
.end method

.method public final A8G()V
    .locals 4

    .line 67987
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ab;->A00:Lcom/facebook/ads/redexgen/X/Mj;

    .line 67988
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Mj;->A06(Lcom/facebook/ads/redexgen/X/Mj;)Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/XK;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/28;->A0C(Lcom/facebook/ads/redexgen/X/XK;)Ljava/lang/String;

    move-result-object v0

    .line 67989
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67990
    new-instance v3, Lcom/facebook/ads/redexgen/X/Ky;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/Ky;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ab;->A00:Lcom/facebook/ads/redexgen/X/Mj;

    .line 67991
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Mj;->A06(Lcom/facebook/ads/redexgen/X/Mj;)Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ab;->A00:Lcom/facebook/ads/redexgen/X/Mj;

    .line 67992
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Mj;->A06(Lcom/facebook/ads/redexgen/X/Mj;)Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/XK;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/28;->A0C(Lcom/facebook/ads/redexgen/X/XK;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ab;->A00:Lcom/facebook/ads/redexgen/X/Mj;

    .line 67993
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Mj;->A09(Lcom/facebook/ads/redexgen/X/Mj;)Ljava/lang/String;

    move-result-object v0

    .line 67994
    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ky;->A09(Lcom/facebook/ads/redexgen/X/Ky;Lcom/facebook/ads/redexgen/X/XJ;Landroid/net/Uri;Ljava/lang/String;)V

    .line 67995
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ab;->A00:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Mj;->A04(Lcom/facebook/ads/redexgen/X/Mj;)Lcom/facebook/ads/redexgen/X/2A;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2A;->A05()V

    .line 67996
    return-void
.end method

.method public final A8H()V
    .locals 4

    .line 67997
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ab;->A00:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mj;->A0L()V

    .line 67998
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ab;->A00:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Mj;->A08(Lcom/facebook/ads/redexgen/X/Mj;)Lcom/facebook/ads/redexgen/X/MA;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67999
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ab;->A00:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Mj;->A08(Lcom/facebook/ads/redexgen/X/Mj;)Lcom/facebook/ads/redexgen/X/MA;

    move-result-object v1

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/MA;->ABR(Z)V

    .line 68000
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ab;->A00:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Mj;->A06(Lcom/facebook/ads/redexgen/X/Mj;)Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/XK;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/28;->A06(Lcom/facebook/ads/redexgen/X/XK;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 68001
    new-instance v3, Lcom/facebook/ads/redexgen/X/Ky;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/Ky;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ab;->A00:Lcom/facebook/ads/redexgen/X/Mj;

    .line 68002
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Mj;->A06(Lcom/facebook/ads/redexgen/X/Mj;)Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ab;->A00:Lcom/facebook/ads/redexgen/X/Mj;

    .line 68003
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Mj;->A06(Lcom/facebook/ads/redexgen/X/Mj;)Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/XK;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/28;->A06(Lcom/facebook/ads/redexgen/X/XK;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ab;->A00:Lcom/facebook/ads/redexgen/X/Mj;

    .line 68004
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Mj;->A09(Lcom/facebook/ads/redexgen/X/Mj;)Ljava/lang/String;

    move-result-object v0

    .line 68005
    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ky;->A09(Lcom/facebook/ads/redexgen/X/Ky;Lcom/facebook/ads/redexgen/X/XJ;Landroid/net/Uri;Ljava/lang/String;)V

    .line 68006
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ab;->A00:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Mj;->A04(Lcom/facebook/ads/redexgen/X/Mj;)Lcom/facebook/ads/redexgen/X/2A;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2A;->A07()V

    .line 68007
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ab;->A00:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Mj;->A0F(Lcom/facebook/ads/redexgen/X/Mj;)V

    .line 68008
    return-void
.end method

.method public final AAp(Lcom/facebook/ads/redexgen/X/29;)V
    .locals 2

    .line 68009
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ab;->A00:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Mj;->A00(Lcom/facebook/ads/redexgen/X/Mj;)I

    .line 68010
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ab;->A00:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/Mj;->A03(Lcom/facebook/ads/redexgen/X/Mj;Lcom/facebook/ads/redexgen/X/29;)Lcom/facebook/ads/redexgen/X/29;

    .line 68011
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ab;->A00:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Mj;->A02(Lcom/facebook/ads/redexgen/X/Mj;)Lcom/facebook/ads/redexgen/X/29;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/29;->A03:Lcom/facebook/ads/redexgen/X/29;

    if-ne v1, v0, :cond_0

    .line 68012
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ab;->A00:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Mj;->A06(Lcom/facebook/ads/redexgen/X/Mj;)Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/XK;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/28;->A03(Lcom/facebook/ads/redexgen/X/XK;)Lcom/facebook/ads/redexgen/X/2B;

    move-result-object v1

    .line 68013
    .local p0, "menuItem":Lcom/facebook/ads/redexgen/X/2B;
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ab;->A00:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Mj;->A0G(Lcom/facebook/ads/redexgen/X/Mj;Lcom/facebook/ads/redexgen/X/2B;)V

    .line 68014
    return-void

    .line 68015
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ab;->A00:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Mj;->A06(Lcom/facebook/ads/redexgen/X/Mj;)Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/XK;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/28;->A04(Lcom/facebook/ads/redexgen/X/XK;)Lcom/facebook/ads/redexgen/X/2B;

    move-result-object v1

    goto :goto_0
.end method

.method public final AAy(Lcom/facebook/ads/redexgen/X/2B;)V
    .locals 2

    .line 68016
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ab;->A00:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Mj;->A00(Lcom/facebook/ads/redexgen/X/Mj;)I

    .line 68017
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ab;->A00:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Mj;->A04(Lcom/facebook/ads/redexgen/X/Mj;)Lcom/facebook/ads/redexgen/X/2A;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/2B;->A01()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2A;->A08(I)V

    .line 68018
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/2B;->A05()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68019
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ab;->A00:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/Mj;->A0H(Lcom/facebook/ads/redexgen/X/Mj;Lcom/facebook/ads/redexgen/X/2B;)V

    .line 68020
    :goto_0
    return-void

    .line 68021
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ab;->A00:Lcom/facebook/ads/redexgen/X/Mj;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/Mj;->A0G(Lcom/facebook/ads/redexgen/X/Mj;Lcom/facebook/ads/redexgen/X/2B;)V

    goto :goto_0
.end method
