.class public final Lcom/facebook/ads/redexgen/X/bf;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/0x;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/F0;->A00(Ljava/lang/Runnable;)Lcom/facebook/ads/redexgen/X/0x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A02:[B


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/F0;

.field public final synthetic A01:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/bf;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/F0;Ljava/lang/Runnable;)V
    .locals 0

    .line 69955
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bf;->A00:Lcom/facebook/ads/redexgen/X/F0;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/bf;->A01:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/bf;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x3a

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

    const/16 v0, 0x86

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/bf;->A02:[B

    return-void

    :array_0
    .array-data 1
        0x40t
        0x4et
        0x4ft
        0x4et
        0x42t
        0x16t
        0x40t
        0x44t
        0x4dt
        0x68t
        0x6dt
        0x7ct
        0x78t
        0x69t
        0x7et
        0x2ct
        0x65t
        0x7ft
        0x2ct
        0x62t
        0x79t
        0x60t
        0x60t
        0x2ct
        0x63t
        0x62t
        0x2ct
        0x60t
        0x63t
        0x6dt
        0x68t
        0x45t
        0x62t
        0x78t
        0x69t
        0x7et
        0x7ft
        0x78t
        0x65t
        0x78t
        0x65t
        0x6dt
        0x60t
        0x4dt
        0x68t
        0x3bt
        0x1ct
        0x6t
        0x17t
        0x0t
        0x1t
        0x6t
        0x1bt
        0x6t
        0x1bt
        0x13t
        0x1et
        0x52t
        0x1bt
        0x1ft
        0x2t
        0x0t
        0x17t
        0x1t
        0x1t
        0x1bt
        0x1dt
        0x1ct
        0x52t
        0x14t
        0x1bt
        0x0t
        0x17t
        0x16t
        0x3ft
        0x30t
        0x3at
        0x2ct
        0x31t
        0x37t
        0x3at
        0x70t
        0x37t
        0x30t
        0x2at
        0x3bt
        0x30t
        0x2at
        0x70t
        0x3ft
        0x3dt
        0x2at
        0x37t
        0x31t
        0x30t
        0x70t
        0x8t
        0x17t
        0x1bt
        0x9t
        0x65t
        0x74t
        0x6dt
        0x2ct
        0x2dt
        0xat
        0x2dt
        0x37t
        0x26t
        0x31t
        0x30t
        0x37t
        0x2at
        0x37t
        0x2at
        0x22t
        0x2ft
        0xft
        0x2ct
        0x24t
        0x24t
        0x2at
        0x2dt
        0x24t
        0xat
        0x2et
        0x33t
        0x31t
        0x26t
        0x30t
        0x30t
        0x2at
        0x2ct
        0x2dt
    .end array-data
.end method


# virtual methods
.method public final AAM(Lcom/facebook/ads/redexgen/X/cB;Ljava/lang/String;Z)V
    .locals 3

    .line 69956
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bf;->A00:Lcom/facebook/ads/redexgen/X/F0;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/bh;->A06:Lcom/facebook/ads/redexgen/X/0o;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0o;->A0C()V

    .line 69957
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 69958
    .local p0, "clickUrlDefined":Z
    if-eqz p3, :cond_0

    if-eqz v0, :cond_0

    .line 69959
    const/16 v2, 0x4a

    const/16 v1, 0x1a

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bf;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69960
    .local p1, "intent":Landroid/content/Intent;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 69961
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bf;->A00:Lcom/facebook/ads/redexgen/X/F0;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/bh;->A0B:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Kr;->A0C(Lcom/facebook/ads/redexgen/X/Wm;Landroid/content/Intent;)Z

    .line 69962
    .end local p1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public final AAN(Lcom/facebook/ads/redexgen/X/cB;)V
    .locals 1

    .line 69963
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bf;->A00:Lcom/facebook/ads/redexgen/X/F0;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/bh;->A06:Lcom/facebook/ads/redexgen/X/0o;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0o;->A02()V

    .line 69964
    return-void
.end method

.method public final AAO(Lcom/facebook/ads/redexgen/X/cB;)V
    .locals 1

    .line 69965
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bf;->A00:Lcom/facebook/ads/redexgen/X/F0;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/bh;->A06:Lcom/facebook/ads/redexgen/X/0o;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0o;->A05()V

    .line 69966
    return-void
.end method

.method public final AAP(Lcom/facebook/ads/redexgen/X/cB;)V
    .locals 6

    .line 69967
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bf;->A00:Lcom/facebook/ads/redexgen/X/F0;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/bh;->A00:Lcom/facebook/ads/redexgen/X/0n;

    if-eq p1, v0, :cond_0

    .line 69968
    return-void

    .line 69969
    :cond_0
    if-nez p1, :cond_1

    .line 69970
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bf;->A00:Lcom/facebook/ads/redexgen/X/F0;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/bh;->A0B:Lcom/facebook/ads/redexgen/X/Wm;

    .line 69971
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/8e;->A0M:I

    const/16 v2, 0x8

    const/16 v1, 0x25

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bf;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/String;)V

    .line 69972
    const/16 v2, 0x64

    const/4 v1, 0x3

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bf;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 69973
    const/16 v0, 0x7d4

    invoke-static {v0}, Lcom/facebook/ads/AdError;->internalError(I)Lcom/facebook/ads/AdError;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/bf;->AAQ(Lcom/facebook/ads/redexgen/X/cB;Lcom/facebook/ads/AdError;)V

    .line 69974
    return-void

    .line 69975
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bf;->A00:Lcom/facebook/ads/redexgen/X/F0;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bh;->A0E()Landroid/os/Handler;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bf;->A01:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 69976
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bf;->A00:Lcom/facebook/ads/redexgen/X/F0;

    iput-object p1, v0, Lcom/facebook/ads/redexgen/X/bh;->A01:Lcom/facebook/ads/redexgen/X/0n;

    .line 69977
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/F0;->A01(Lcom/facebook/ads/redexgen/X/F0;)V

    .line 69978
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bf;->A00:Lcom/facebook/ads/redexgen/X/F0;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/bh;->A06:Lcom/facebook/ads/redexgen/X/0o;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/0o;->A0F(Lcom/facebook/ads/redexgen/X/0n;)V

    .line 69979
    return-void
.end method

.method public final AAQ(Lcom/facebook/ads/redexgen/X/cB;Lcom/facebook/ads/AdError;)V
    .locals 4

    .line 69980
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bf;->A00:Lcom/facebook/ads/redexgen/X/F0;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/bh;->A00:Lcom/facebook/ads/redexgen/X/0n;

    if-eq p1, v0, :cond_0

    .line 69981
    return-void

    .line 69982
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bf;->A00:Lcom/facebook/ads/redexgen/X/F0;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bh;->A0E()Landroid/os/Handler;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bf;->A01:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 69983
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bf;->A00:Lcom/facebook/ads/redexgen/X/F0;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/bh;->A0M(Lcom/facebook/ads/redexgen/X/0n;)V

    .line 69984
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bf;->A00:Lcom/facebook/ads/redexgen/X/F0;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/bh;->A0B:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v2

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v1

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A4W(ILjava/lang/String;)V

    .line 69985
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bf;->A00:Lcom/facebook/ads/redexgen/X/F0;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/bh;->A06:Lcom/facebook/ads/redexgen/X/0o;

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v2

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Jn;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Jn;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/0o;->A0G(Lcom/facebook/ads/redexgen/X/Jn;)V

    .line 69986
    return-void
.end method

.method public final AAR(Lcom/facebook/ads/redexgen/X/cB;)V
    .locals 5

    const/16 v2, 0x67

    const/16 v1, 0x1f

    const/16 v0, 0x79

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bf;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x2d

    const/16 v1, 0x1d

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bf;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bf;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/K1;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69987
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bf;->A00:Lcom/facebook/ads/redexgen/X/F0;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/bh;->A06:Lcom/facebook/ads/redexgen/X/0o;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0o;->A0D()V

    .line 69988
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bf;->A00:Lcom/facebook/ads/redexgen/X/F0;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bh;->A0K()V

    .line 69989
    return-void
.end method

.method public final AAS()V
    .locals 1

    .line 69990
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bf;->A00:Lcom/facebook/ads/redexgen/X/F0;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/bh;->A06:Lcom/facebook/ads/redexgen/X/0o;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0o;->A08()V

    .line 69991
    return-void
.end method

.method public final AAT()V
    .locals 1

    .line 69992
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bf;->A00:Lcom/facebook/ads/redexgen/X/F0;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/bh;->A06:Lcom/facebook/ads/redexgen/X/0o;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0o;->A06()V

    .line 69993
    return-void
.end method

.method public final AAU()V
    .locals 1

    .line 69994
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bf;->A00:Lcom/facebook/ads/redexgen/X/F0;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/bh;->A06:Lcom/facebook/ads/redexgen/X/0o;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0o;->A07()V

    .line 69995
    return-void
.end method

.method public final onInterstitialActivityDestroyed()V
    .locals 1

    .line 69996
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bf;->A00:Lcom/facebook/ads/redexgen/X/F0;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/bh;->A06:Lcom/facebook/ads/redexgen/X/0o;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0o;->A00()V

    .line 69997
    return-void
.end method
