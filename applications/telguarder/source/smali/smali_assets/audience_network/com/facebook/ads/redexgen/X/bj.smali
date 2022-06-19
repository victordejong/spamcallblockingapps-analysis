.class public final Lcom/facebook/ads/redexgen/X/bj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/0v;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/F1;->A0N(Lcom/facebook/ads/redexgen/X/0n;Lcom/facebook/ads/redexgen/X/8w;Lcom/facebook/ads/redexgen/X/8u;Lcom/facebook/ads/redexgen/X/1n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/F1;

.field public final synthetic A01:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/bj;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/bj;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/F1;Ljava/lang/Runnable;)V
    .locals 0

    .line 70204
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bj;->A00:Lcom/facebook/ads/redexgen/X/F1;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/bj;->A01:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/bj;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x1a

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

    const/16 v3, 0x38

    sget-object v1, Lcom/facebook/ads/redexgen/X/bj;->A03:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/bj;->A03:[Ljava/lang/String;

    const-string v1, "ys6BOo7vQgNt5FkgcOi6heFpf0"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/bj;->A02:[B

    return-void

    :array_0
    .array-data 1
        0x32t
        0x62t
        0x33t
        0x31t
        0x34t
        0x60t
        0x61t
        0x65t
        0x57t
        0x74t
        0x7bt
        0x7bt
        0x70t
        0x67t
        0x35t
        0x7ct
        0x78t
        0x65t
        0x67t
        0x70t
        0x66t
        0x66t
        0x7ct
        0x7at
        0x7bt
        0x35t
        0x73t
        0x7ct
        0x67t
        0x70t
        0x71t
        0x6et
        0x6ft
        0x43t
        0x60t
        0x6ft
        0x6ft
        0x64t
        0x73t
        0x4dt
        0x6et
        0x66t
        0x66t
        0x68t
        0x6ft
        0x66t
        0x48t
        0x6ct
        0x71t
        0x73t
        0x64t
        0x72t
        0x72t
        0x68t
        0x6et
        0x6ft
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "CeghyXl"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "JEn0k3aWW8HVSigbJpnWoHNtk"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "3L8RROp0hlfOQj"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "hjshbeUr4v50WrwxdMoIiXK5VkzlsqaS"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "7w5bA4SsKLbpsNEpOCMElgsP3G1J"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "ZnK8xvEai07hCwSC95ixANrSdmD"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "97FqDagZRa53f8RmPxIOaHSbThhfr1tz"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "lXLAYqudYC9V4kWnKVRa4cdQrP3Hnw"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/bj;->A03:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A9a(Lcom/facebook/ads/redexgen/X/cC;)V
    .locals 1

    .line 70205
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bj;->A00:Lcom/facebook/ads/redexgen/X/F1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/F1;->A01(Lcom/facebook/ads/redexgen/X/F1;)Lcom/facebook/ads/redexgen/X/Dz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dz;->A0G()Lcom/facebook/ads/redexgen/X/cQ;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/cQ;->A3h()V

    .line 70206
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bj;->A00:Lcom/facebook/ads/redexgen/X/F1;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/bh;->A06:Lcom/facebook/ads/redexgen/X/0o;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0o;->A0C()V

    .line 70207
    return-void
.end method

.method public final A9b(Lcom/facebook/ads/redexgen/X/cC;Landroid/view/View;)V
    .locals 2

    .line 70208
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bj;->A00:Lcom/facebook/ads/redexgen/X/F1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/F1;->A01(Lcom/facebook/ads/redexgen/X/F1;)Lcom/facebook/ads/redexgen/X/Dz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dz;->A0G()Lcom/facebook/ads/redexgen/X/cQ;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bj;->A00:Lcom/facebook/ads/redexgen/X/F1;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/bh;->A00:Lcom/facebook/ads/redexgen/X/0n;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/cQ;->A3g(Z)V

    .line 70209
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bj;->A00:Lcom/facebook/ads/redexgen/X/F1;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/bh;->A00:Lcom/facebook/ads/redexgen/X/0n;

    if-eq p1, v0, :cond_1

    .line 70210
    return-void

    .line 70211
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 70212
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bj;->A00:Lcom/facebook/ads/redexgen/X/F1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bh;->A0E()Landroid/os/Handler;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bj;->A01:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 70213
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bj;->A00:Lcom/facebook/ads/redexgen/X/F1;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/bh;->A01:Lcom/facebook/ads/redexgen/X/0n;

    .line 70214
    .local p0, "tempAdapter":Lcom/facebook/ads/redexgen/X/0n;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bj;->A00:Lcom/facebook/ads/redexgen/X/F1;

    iput-object p1, v0, Lcom/facebook/ads/redexgen/X/bh;->A01:Lcom/facebook/ads/redexgen/X/0n;

    .line 70215
    invoke-static {v0, p2}, Lcom/facebook/ads/redexgen/X/F1;->A00(Lcom/facebook/ads/redexgen/X/F1;Landroid/view/View;)Landroid/view/View;

    .line 70216
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bj;->A00:Lcom/facebook/ads/redexgen/X/F1;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/bh;->A0C:Z

    if-nez v0, :cond_2

    .line 70217
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bj;->A00:Lcom/facebook/ads/redexgen/X/F1;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/bh;->A06:Lcom/facebook/ads/redexgen/X/0o;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/0o;->A0F(Lcom/facebook/ads/redexgen/X/0n;)V

    .line 70218
    :goto_1
    return-void

    .line 70219
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bj;->A00:Lcom/facebook/ads/redexgen/X/F1;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/bh;->A06:Lcom/facebook/ads/redexgen/X/0o;

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/0o;->A0E(Landroid/view/View;)V

    .line 70220
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bj;->A00:Lcom/facebook/ads/redexgen/X/F1;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/bh;->A0M(Lcom/facebook/ads/redexgen/X/0n;)V

    goto :goto_1
.end method

.method public final A9c(Lcom/facebook/ads/redexgen/X/cC;)V
    .locals 5

    const/16 v2, 0x1f

    const/16 v1, 0x19

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bj;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x8

    const/16 v1, 0x17

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bj;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bj;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/K1;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70221
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bj;->A00:Lcom/facebook/ads/redexgen/X/F1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/F1;->A01(Lcom/facebook/ads/redexgen/X/F1;)Lcom/facebook/ads/redexgen/X/Dz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dz;->A0G()Lcom/facebook/ads/redexgen/X/cQ;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/cQ;->A3j()V

    .line 70222
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bj;->A00:Lcom/facebook/ads/redexgen/X/F1;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/bh;->A06:Lcom/facebook/ads/redexgen/X/0o;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0o;->A0D()V

    .line 70223
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bj;->A00:Lcom/facebook/ads/redexgen/X/F1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bh;->A0K()V

    .line 70224
    return-void
.end method

.method public final AAX(Lcom/facebook/ads/redexgen/X/cC;Lcom/facebook/ads/redexgen/X/Jn;)V
    .locals 4

    .line 70225
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bj;->A00:Lcom/facebook/ads/redexgen/X/F1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/F1;->A01(Lcom/facebook/ads/redexgen/X/F1;)Lcom/facebook/ads/redexgen/X/Dz;

    move-result-object v0

    .line 70226
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dz;->A0G()Lcom/facebook/ads/redexgen/X/cQ;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bj;->A00:Lcom/facebook/ads/redexgen/X/F1;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/bh;->A00:Lcom/facebook/ads/redexgen/X/0n;

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    .line 70227
    :goto_0
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Jn;->A04()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v0

    .line 70228
    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cQ;->A3i(ZI)V

    .line 70229
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bj;->A00:Lcom/facebook/ads/redexgen/X/F1;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/bh;->A00:Lcom/facebook/ads/redexgen/X/0n;

    sget-object v1, Lcom/facebook/ads/redexgen/X/bj;->A03:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x74

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/bj;->A03:[Ljava/lang/String;

    const-string v1, "2DkNkoSz2eqZu1t7jHj4PcnD6UpcbWkc"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eq p1, v3, :cond_1

    .line 70230
    return-void

    .line 70231
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 70232
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bj;->A00:Lcom/facebook/ads/redexgen/X/F1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bh;->A0E()Landroid/os/Handler;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bj;->A01:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 70233
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bj;->A00:Lcom/facebook/ads/redexgen/X/F1;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/bh;->A0M(Lcom/facebook/ads/redexgen/X/0n;)V

    .line 70234
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bj;->A00:Lcom/facebook/ads/redexgen/X/F1;

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/bh;->AA6(Lcom/facebook/ads/redexgen/X/Jn;)V

    .line 70235
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
